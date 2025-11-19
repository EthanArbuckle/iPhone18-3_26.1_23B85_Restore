uint64_t AWDWiFiMetricExtendedTrapInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v175) = 0;
          v8 = [a2 position] + 1;
          if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v7 |= (v175 & 0x7F) << v5;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v10 = v6++ >= 9;
          if (v10)
          {
            v11 = 0;
            goto LABEL_15;
          }
        }

        v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
        if (([a2 hasError] & 1) == 0)
        {
          v12 = v11 & 7;
          if (v12 != 4)
          {
            switch((v11 >> 3))
            {
              case 1u:
                v13 = 0;
                v14 = 0;
                v15 = 0;
                *(a1 + 348) |= 1u;
                while (1)
                {
                  LOBYTE(v175) = 0;
                  v16 = [a2 position] + 1;
                  if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v15 |= (v175 & 0x7F) << v13;
                  if ((v175 & 0x80) == 0)
                  {
                    break;
                  }

                  v13 += 7;
                  v10 = v14++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
LABEL_243:
                    *(a1 + 344) = v18;
                    goto LABEL_372;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v15;
                }

                goto LABEL_243;
              case 2u:
                if (v12 != 2)
                {
                  v144 = 0;
                  v145 = 0;
                  v146 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v147 = [a2 position] + 1;
                    if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v146 |= (v175 & 0x7F) << v144;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v144 += 7;
                    v10 = v145++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v68 = [a2 position];
                  if (v68 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v69 = 0;
                  v70 = 0;
                  v71 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v72 = [a2 position] + 1;
                    if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v71 |= (v177 & 0x7F) << v69;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v69 += 7;
                    v10 = v70++ >= 9;
                    if (v10)
                    {
                      goto LABEL_163;
                    }
                  }

                  [a2 hasError];
LABEL_163:
                  PBRepeatedUInt32Add();
                }

              case 3u:
                if (v12 != 2)
                {
                  v129 = 0;
                  v130 = 0;
                  v131 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v132 = [a2 position] + 1;
                    if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v131 |= (v175 & 0x7F) << v129;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v129 += 7;
                    v10 = v130++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v50 = [a2 position];
                  if (v50 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v51 = 0;
                  v52 = 0;
                  v53 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v54 = [a2 position] + 1;
                    if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v53 |= (v177 & 0x7F) << v51;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v51 += 7;
                    v10 = v52++ >= 9;
                    if (v10)
                    {
                      goto LABEL_116;
                    }
                  }

                  [a2 hasError];
LABEL_116:
                  PBRepeatedUInt32Add();
                }

              case 4u:
                if (v12 != 2)
                {
                  v134 = 0;
                  v135 = 0;
                  v136 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v137 = [a2 position] + 1;
                    if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v136 |= (v175 & 0x7F) << v134;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v134 += 7;
                    v10 = v135++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v56 = [a2 position];
                  if (v56 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v60 = [a2 position] + 1;
                    if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v59 |= (v177 & 0x7F) << v57;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v57 += 7;
                    v10 = v58++ >= 9;
                    if (v10)
                    {
                      goto LABEL_133;
                    }
                  }

                  [a2 hasError];
LABEL_133:
                  PBRepeatedUInt32Add();
                }

              case 5u:
                if (v12 != 2)
                {
                  v114 = 0;
                  v115 = 0;
                  v116 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v117 = [a2 position] + 1;
                    if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v116 |= (v175 & 0x7F) << v114;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v114 += 7;
                    v10 = v115++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v32 = [a2 position];
                  if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v33 = 0;
                  v34 = 0;
                  v35 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v36 = [a2 position] + 1;
                    if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v35 |= (v177 & 0x7F) << v33;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v33 += 7;
                    v10 = v34++ >= 9;
                    if (v10)
                    {
                      goto LABEL_71;
                    }
                  }

                  [a2 hasError];
LABEL_71:
                  PBRepeatedUInt32Add();
                }

              case 6u:
                if (v12 != 2)
                {
                  v149 = 0;
                  v150 = 0;
                  v151 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v152 = [a2 position] + 1;
                    if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v151 |= (v175 & 0x7F) << v149;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v149 += 7;
                    v10 = v150++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v74 = [a2 position];
                  if (v74 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v75 = 0;
                  v76 = 0;
                  v77 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v78 = [a2 position] + 1;
                    if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v77 |= (v177 & 0x7F) << v75;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v75 += 7;
                    v10 = v76++ >= 9;
                    if (v10)
                    {
                      goto LABEL_178;
                    }
                  }

                  [a2 hasError];
LABEL_178:
                  PBRepeatedUInt32Add();
                }

              case 7u:
                if (v12 != 2)
                {
                  v159 = 0;
                  v160 = 0;
                  v161 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v162 = [a2 position] + 1;
                    if (v162 >= [a2 position] && (v163 = objc_msgSend(a2, "position") + 1, v163 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v161 |= (v175 & 0x7F) << v159;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v159 += 7;
                    v10 = v160++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v86 = [a2 position];
                  if (v86 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v87 = 0;
                  v88 = 0;
                  v89 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v90 = [a2 position] + 1;
                    if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v89 |= (v177 & 0x7F) << v87;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v87 += 7;
                    v10 = v88++ >= 9;
                    if (v10)
                    {
                      goto LABEL_208;
                    }
                  }

                  [a2 hasError];
LABEL_208:
                  PBRepeatedUInt32Add();
                }

              case 8u:
                if (v12 != 2)
                {
                  v139 = 0;
                  v140 = 0;
                  v141 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v142 = [a2 position] + 1;
                    if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v141 |= (v175 & 0x7F) << v139;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v139 += 7;
                    v10 = v140++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v62 = [a2 position];
                  if (v62 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v63 = 0;
                  v64 = 0;
                  v65 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v66 = [a2 position] + 1;
                    if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v65 |= (v177 & 0x7F) << v63;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v63 += 7;
                    v10 = v64++ >= 9;
                    if (v10)
                    {
                      goto LABEL_148;
                    }
                  }

                  [a2 hasError];
LABEL_148:
                  PBRepeatedUInt32Add();
                }

              case 9u:
                if (v12 == 2)
                {
                  v175 = 0;
                  v176 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v98 = [a2 position];
                    if (v98 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    while (1)
                    {
                      v177 = 0;
                      v102 = [a2 position] + 1;
                      if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
                      {
                        [objc_msgSend(a2 "data")];
                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v101 |= (v177 & 0x7F) << v99;
                      if ((v177 & 0x80) == 0)
                      {
                        break;
                      }

                      v99 += 7;
                      v10 = v100++ >= 9;
                      if (v10)
                      {
                        goto LABEL_238;
                      }
                    }

                    [a2 hasError];
LABEL_238:
                    PBRepeatedUInt32Add();
                  }

LABEL_239:
                  PBReaderRecallMark();
                }

                else
                {
                  v169 = 0;
                  v170 = 0;
                  v171 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v172 = [a2 position] + 1;
                    if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v171 |= (v175 & 0x7F) << v169;
                    if ((v175 & 0x80) == 0)
                    {
                      break;
                    }

                    v169 += 7;
                    v10 = v170++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }

LABEL_370:
                  [a2 hasError];
LABEL_371:
                  PBRepeatedUInt32Add();
                }

LABEL_372:
                v174 = [a2 position];
                if (v174 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              case 0xAu:
                if (v12 != 2)
                {
                  v124 = 0;
                  v125 = 0;
                  v126 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v127 = [a2 position] + 1;
                    if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v126 |= (v175 & 0x7F) << v124;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v124 += 7;
                    v10 = v125++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v44 = [a2 position];
                  if (v44 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v45 = 0;
                  v46 = 0;
                  v47 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v48 = [a2 position] + 1;
                    if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v47 |= (v177 & 0x7F) << v45;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v45 += 7;
                    v10 = v46++ >= 9;
                    if (v10)
                    {
                      goto LABEL_101;
                    }
                  }

                  [a2 hasError];
LABEL_101:
                  PBRepeatedUInt32Add();
                }

              case 0xBu:
                if (v12 != 2)
                {
                  v164 = 0;
                  v165 = 0;
                  v166 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v167 = [a2 position] + 1;
                    if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v166 |= (v175 & 0x7F) << v164;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v164 += 7;
                    v10 = v165++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v92 = [a2 position];
                  if (v92 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v93 = 0;
                  v94 = 0;
                  v95 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v96 = [a2 position] + 1;
                    if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v95 |= (v177 & 0x7F) << v93;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v93 += 7;
                    v10 = v94++ >= 9;
                    if (v10)
                    {
                      goto LABEL_223;
                    }
                  }

                  [a2 hasError];
LABEL_223:
                  PBRepeatedUInt32Add();
                }

              case 0xCu:
                if (v12 != 2)
                {
                  v109 = 0;
                  v110 = 0;
                  v111 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v112 = [a2 position] + 1;
                    if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v111 |= (v175 & 0x7F) << v109;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v109 += 7;
                    v10 = v110++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v26 = [a2 position];
                  if (v26 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v27 = 0;
                  v28 = 0;
                  v29 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v30 = [a2 position] + 1;
                    if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v29 |= (v177 & 0x7F) << v27;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v27 += 7;
                    v10 = v28++ >= 9;
                    if (v10)
                    {
                      goto LABEL_56;
                    }
                  }

                  [a2 hasError];
LABEL_56:
                  PBRepeatedUInt32Add();
                }

              case 0xDu:
                if (v12 != 2)
                {
                  v119 = 0;
                  v120 = 0;
                  v121 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v122 = [a2 position] + 1;
                    if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v121 |= (v175 & 0x7F) << v119;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v119 += 7;
                    v10 = v120++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v38 = [a2 position];
                  if (v38 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v39 = 0;
                  v40 = 0;
                  v41 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v42 = [a2 position] + 1;
                    if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v41 |= (v177 & 0x7F) << v39;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v39 += 7;
                    v10 = v40++ >= 9;
                    if (v10)
                    {
                      goto LABEL_86;
                    }
                  }

                  [a2 hasError];
LABEL_86:
                  PBRepeatedUInt32Add();
                }

              case 0xEu:
                if (v12 != 2)
                {
                  v154 = 0;
                  v155 = 0;
                  v156 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v157 = [a2 position] + 1;
                    if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v156 |= (v175 & 0x7F) << v154;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v154 += 7;
                    v10 = v155++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v80 = [a2 position];
                  if (v80 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v81 = 0;
                  v82 = 0;
                  v83 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v84 = [a2 position] + 1;
                    if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v83 |= (v177 & 0x7F) << v81;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v81 += 7;
                    v10 = v82++ >= 9;
                    if (v10)
                    {
                      goto LABEL_193;
                    }
                  }

                  [a2 hasError];
LABEL_193:
                  PBRepeatedUInt32Add();
                }

              case 0xFu:
                if (v12 != 2)
                {
                  v104 = 0;
                  v105 = 0;
                  v106 = 0;
                  while (1)
                  {
                    LOBYTE(v175) = 0;
                    v107 = [a2 position] + 1;
                    if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v106 |= (v175 & 0x7F) << v104;
                    if ((v175 & 0x80) == 0)
                    {
                      goto LABEL_370;
                    }

                    v104 += 7;
                    v10 = v105++ >= 9;
                    if (v10)
                    {
                      goto LABEL_371;
                    }
                  }
                }

                v175 = 0;
                v176 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v20 = [a2 position];
                  if (v20 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_239;
                  }

                  v21 = 0;
                  v22 = 0;
                  v23 = 0;
                  while (1)
                  {
                    v177 = 0;
                    v24 = [a2 position] + 1;
                    if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v23 |= (v177 & 0x7F) << v21;
                    if ((v177 & 0x80) == 0)
                    {
                      break;
                    }

                    v21 += 7;
                    v10 = v22++ >= 9;
                    if (v10)
                    {
                      goto LABEL_41;
                    }
                  }

                  [a2 hasError];
LABEL_41:
                  PBRepeatedUInt32Add();
                }

              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_372;
                }

                return 0;
            }
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricHotspotTransportTypeReadFrom(uint64_t a1, void *a2)
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
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
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
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 2)
      {
        break;
      }

      if (v12 == 3)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v39 = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v39 & 0x7F) << v31;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v10 = v32++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v33;
        }

LABEL_75:
        v36 = 20;
LABEL_76:
        *(a1 + v36) = v18;
        goto LABEL_77;
      }

      if (v12 != 4)
      {
LABEL_40:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_77;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        v42 = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v21 |= (v42 & 0x7F) << v19;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v10 = v20++ >= 9;
        if (v10)
        {
          v24 = 0;
          goto LABEL_67;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v21;
      }

LABEL_67:
      *(a1 + 8) = v24;
LABEL_77:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(a1 + 28) |= 8u;
      while (1)
      {
        v41 = 0;
        v29 = [a2 position] + 1;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v28 |= (v41 & 0x7F) << v26;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v10 = v27++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v28;
      }

LABEL_71:
      v36 = 24;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_40;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v40 = 0;
        v16 = [a2 position] + 1;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v40 & 0x7F) << v13;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v10 = v14++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v15;
      }

LABEL_63:
      v36 = 16;
    }

    goto LABEL_76;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricIPv4DHCPLatencyReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 2)
      {
        break;
      }

      if (v12 == 3)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v43 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v43 & 0x7F) << v20;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v10 = v21++ >= 9;
          if (v10)
          {
            v25 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v22;
        }

LABEL_65:
        *(a1 + 8) = v25;
        goto LABEL_79;
      }

      if (v12 == 4)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          v40 = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v40 & 0x7F) << v26;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v10 = v27++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_69;
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

LABEL_69:
        v37 = 20;
LABEL_78:
        *(a1 + v37) = v19;
        goto LABEL_79;
      }

      if (v12 != 5)
      {
        goto LABEL_60;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_79:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v42 = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v42 & 0x7F) << v31;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v10 = v32++ >= 9;
        if (v10)
        {
          v19 = 0;
          goto LABEL_73;
        }
      }

      if ([a2 hasError])
      {
        v19 = 0;
      }

      else
      {
        v19 = v33;
      }

LABEL_73:
      v37 = 16;
    }

    else
    {
      if (v12 != 2)
      {
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_79;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 8u;
      while (1)
      {
        v41 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v41 & 0x7F) << v14;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v10 = v15++ >= 9;
        if (v10)
        {
          v19 = 0;
          goto LABEL_77;
        }
      }

      if ([a2 hasError])
      {
        v19 = 0;
      }

      else
      {
        v19 = v16;
      }

LABEL_77:
      v37 = 32;
    }

    goto LABEL_78;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricInterfaceStatsReadFrom(uint64_t a1, void *a2)
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
        v97 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v97 & 0x7F) << v5;
        if ((v97 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 76) |= 1u;
          while (1)
          {
            v97 = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v97 & 0x7F) << v12;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_203:
              *(a1 + 8) = v17;
              goto LABEL_229;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          goto LABEL_203;
        case 2u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 76) |= 0x80u;
          while (1)
          {
            v97 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v97 & 0x7F) << v64;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v10 = v65++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_207;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v66;
          }

LABEL_207:
          v95 = 40;
          goto LABEL_228;
        case 3u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 76) |= 0x2000u;
          while (1)
          {
            v97 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v97 & 0x7F) << v44;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_187;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v46;
          }

LABEL_187:
          v95 = 64;
          goto LABEL_228;
        case 4u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 76) |= 0x1000u;
          while (1)
          {
            v97 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v97 & 0x7F) << v54;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_195;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v56;
          }

LABEL_195:
          v95 = 60;
          goto LABEL_228;
        case 5u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 76) |= 0x400u;
          while (1)
          {
            v97 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v97 & 0x7F) << v29;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_175;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v31;
          }

LABEL_175:
          v95 = 52;
          goto LABEL_228;
        case 6u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            v97 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v97 & 0x7F) << v69;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v10 = v70++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_211;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v71;
          }

LABEL_211:
          v95 = 20;
          goto LABEL_228;
        case 7u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 76) |= 0x100u;
          while (1)
          {
            v97 = 0;
            v82 = [a2 position] + 1;
            if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v81 |= (v97 & 0x7F) << v79;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v10 = v80++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_219;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v81;
          }

LABEL_219:
          v95 = 44;
          goto LABEL_228;
        case 8u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 76) |= 0x4000u;
          while (1)
          {
            v97 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
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
            v10 = v60++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v61;
          }

LABEL_199:
          v95 = 68;
          goto LABEL_228;
        case 9u:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          *(a1 + 76) |= 0x8000u;
          while (1)
          {
            v97 = 0;
            v92 = [a2 position] + 1;
            if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v91 |= (v97 & 0x7F) << v89;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v10 = v90++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_227;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v91;
          }

LABEL_227:
          v95 = 72;
          goto LABEL_228;
        case 0xAu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 76) |= 0x800u;
          while (1)
          {
            v97 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v97 & 0x7F) << v39;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_183;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v41;
          }

LABEL_183:
          v95 = 56;
          goto LABEL_228;
        case 0xBu:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            v97 = 0;
            v87 = [a2 position] + 1;
            if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v86 |= (v97 & 0x7F) << v84;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v10 = v85++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_223;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v86;
          }

LABEL_223:
          v95 = 24;
          goto LABEL_228;
        case 0xCu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 76) |= 0x40u;
          while (1)
          {
            v97 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v97 & 0x7F) << v24;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_171;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v26;
          }

LABEL_171:
          v95 = 36;
          goto LABEL_228;
        case 0xDu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 76) |= 0x200u;
          while (1)
          {
            v97 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v97 & 0x7F) << v34;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v36;
          }

LABEL_179:
          v95 = 48;
          goto LABEL_228;
        case 0xEu:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            v97 = 0;
            v77 = [a2 position] + 1;
            if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v76 |= (v97 & 0x7F) << v74;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v10 = v75++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_215;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v76;
          }

LABEL_215:
          v95 = 16;
          goto LABEL_228;
        case 0xFu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 76) |= 0x20u;
          while (1)
          {
            v97 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v97 & 0x7F) << v18;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_167;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

LABEL_167:
          v95 = 32;
          goto LABEL_228;
        case 0x10u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 76) |= 0x10u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_229;
      }

      while (1)
      {
        v97 = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v97 & 0x7F) << v49;
        if ((v97 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v10 = v50++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_191;
        }
      }

      v23 = [a2 hasError] ? 0 : v51;
LABEL_191:
      v95 = 28;
LABEL_228:
      *(a1 + v95) = v23;
LABEL_229:
      v96 = [a2 position];
    }

    while (v96 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricJoinTimeoutReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v77) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v77 & 0x7F) << v5;
        if ((v77 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 & 7;
      if (v12 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v11 >> 3;
      if ((v11 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            if (v12 != 2)
            {
              v51 = 0;
              v52 = 0;
              v53 = 0;
              while (1)
              {
                LOBYTE(v77) = 0;
                v54 = [a2 position] + 1;
                if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v53 |= (v77 & 0x7F) << v51;
                if ((v77 & 0x80) == 0)
                {
                  goto LABEL_160;
                }

                v51 += 7;
                v10 = v52++ >= 9;
                if (v10)
                {
                  goto LABEL_161;
                }
              }
            }

            v77 = 0;
            v78 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v33 = [a2 position];
              if (v33 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v34 = 0;
              v35 = 0;
              v36 = 0;
              while (1)
              {
                v79 = 0;
                v37 = [a2 position] + 1;
                if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v36 |= (v79 & 0x7F) << v34;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v34 += 7;
                v10 = v35++ >= 9;
                if (v10)
                {
                  goto LABEL_77;
                }
              }

              [a2 hasError];
LABEL_77:
              PBRepeatedUInt32Add();
            }

LABEL_110:
            PBReaderRecallMark();
            goto LABEL_162;
          case 5:
            if (v12 != 2)
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              while (1)
              {
                LOBYTE(v77) = 0;
                v74 = [a2 position] + 1;
                if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v73 |= (v77 & 0x7F) << v71;
                if ((v77 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                v10 = v72++ >= 9;
                if (v10)
                {
                  goto LABEL_161;
                }
              }

LABEL_160:
              [a2 hasError];
LABEL_161:
              PBRepeatedUInt32Add();
              goto LABEL_162;
            }

            v77 = 0;
            v78 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v45 = [a2 position];
              if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_110;
              }

              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                v79 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v79 & 0x7F) << v46;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v10 = v47++ >= 9;
                if (v10)
                {
                  goto LABEL_109;
                }
              }

              [a2 hasError];
LABEL_109:
              PBRepeatedUInt32Add();
            }

          case 6:
            if (v12 != 2)
            {
              v61 = 0;
              v62 = 0;
              v63 = 0;
              while (1)
              {
                LOBYTE(v77) = 0;
                v64 = [a2 position] + 1;
                if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 |= (v77 & 0x7F) << v61;
                if ((v77 & 0x80) == 0)
                {
                  goto LABEL_160;
                }

                v61 += 7;
                v10 = v62++ >= 9;
                if (v10)
                {
                  goto LABEL_161;
                }
              }
            }

            v77 = 0;
            v78 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v21 = [a2 position];
              if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_110;
              }

              v22 = 0;
              v23 = 0;
              v24 = 0;
              while (1)
              {
                v79 = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v79 & 0x7F) << v22;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v10 = v23++ >= 9;
                if (v10)
                {
                  goto LABEL_53;
                }
              }

              [a2 hasError];
LABEL_53:
              PBRepeatedUInt32Add();
            }
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 132) |= 1u;
            while (1)
            {
              LOBYTE(v77) = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
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
              v10 = v28++ >= 9;
              if (v10)
              {
                v32 = 0;
                goto LABEL_114;
              }
            }

            if ([a2 hasError])
            {
              v32 = 0;
            }

            else
            {
              v32 = v29;
            }

LABEL_114:
            *(a1 + 128) = v32;
            goto LABEL_162;
          case 2:
            if (v12 != 2)
            {
              v66 = 0;
              v67 = 0;
              v68 = 0;
              while (1)
              {
                LOBYTE(v77) = 0;
                v69 = [a2 position] + 1;
                if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v68 |= (v77 & 0x7F) << v66;
                if ((v77 & 0x80) == 0)
                {
                  goto LABEL_160;
                }

                v66 += 7;
                v10 = v67++ >= 9;
                if (v10)
                {
                  goto LABEL_161;
                }
              }
            }

            v77 = 0;
            v78 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v39 = [a2 position];
              if (v39 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_110;
              }

              v40 = 0;
              v41 = 0;
              v42 = 0;
              while (1)
              {
                v79 = 0;
                v43 = [a2 position] + 1;
                if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v42 |= (v79 & 0x7F) << v40;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v10 = v41++ >= 9;
                if (v10)
                {
                  goto LABEL_94;
                }
              }

              [a2 hasError];
LABEL_94:
              PBRepeatedUInt32Add();
            }

          case 3:
            if (v12 != 2)
            {
              v56 = 0;
              v57 = 0;
              v58 = 0;
              while (1)
              {
                LOBYTE(v77) = 0;
                v59 = [a2 position] + 1;
                if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v58 |= (v77 & 0x7F) << v56;
                if ((v77 & 0x80) == 0)
                {
                  goto LABEL_160;
                }

                v56 += 7;
                v10 = v57++ >= 9;
                if (v10)
                {
                  goto LABEL_161;
                }
              }
            }

            v77 = 0;
            v78 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v15 = [a2 position];
              if (v15 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_110;
              }

              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                v79 = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v79 & 0x7F) << v16;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v10 = v17++ >= 9;
                if (v10)
                {
                  goto LABEL_35;
                }
              }

              [a2 hasError];
LABEL_35:
              PBRepeatedUInt32Add();
            }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_162:
      v76 = [a2 position];
    }

    while (v76 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricLinkChangeDataReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (1)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v247) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v247 & 0x7F) << v6;
      if ((v247 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v11 = v7++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if ([a2 hasError])
    {
      break;
    }

    v13 = v12 & 7;
    if (v13 == 4)
    {
      break;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 436) |= 2u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v247 & 0x7F) << v14;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_425:
            *(a1 + 184) = v19;
            goto LABEL_483;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v16;
        }

        goto LABEL_425;
      case 2u:
        if (v13 != 2)
        {
          v232 = 0;
          v233 = 0;
          v234 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v235 = [a2 position] + 1;
            if (v235 >= [a2 position] && (v236 = objc_msgSend(a2, "position") + 1, v236 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v234 |= (v247 & 0x7F) << v232;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_547;
            }

            v232 += 7;
            v11 = v233++ >= 9;
            if (v11)
            {
              goto LABEL_548;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v127 = [a2 position];
          if (v127 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_367;
          }

          v128 = 0;
          v129 = 0;
          v130 = 0;
          while (1)
          {
            v249 = 0;
            v131 = [a2 position] + 1;
            if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v130 |= (v249 & 0x7F) << v128;
            if ((v249 & 0x80) == 0)
            {
              break;
            }

            v128 += 7;
            v11 = v129++ >= 9;
            if (v11)
            {
              goto LABEL_232;
            }
          }

          [a2 hasError];
LABEL_232:
          PBRepeatedInt32Add();
        }

      case 3u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 436) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v247 & 0x7F) << v95;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            LOBYTE(v82) = 0;
            goto LABEL_408;
          }
        }

        v82 = (v97 != 0) & ~[a2 hasError];
LABEL_408:
        v211 = 433;
        goto LABEL_409;
      case 4u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 436) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v247 & 0x7F) << v77;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            LOBYTE(v82) = 0;
            goto LABEL_406;
          }
        }

        v82 = (v79 != 0) & ~[a2 hasError];
LABEL_406:
        v211 = 432;
LABEL_409:
        *(a1 + v211) = v82;
        goto LABEL_483;
      case 5u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 436) |= 0x40000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v247 & 0x7F) << v122;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_433;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v124;
        }

LABEL_433:
        v210 = 320;
        goto LABEL_482;
      case 6u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 436) |= 0x200000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v247 & 0x7F) << v148;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v11 = v149++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_449;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v150;
        }

LABEL_449:
        v210 = 332;
        goto LABEL_482;
      case 7u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 436) |= 0x10u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v247 & 0x7F) << v63;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_404;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v65;
        }

LABEL_404:
        v210 = 200;
        goto LABEL_482;
      case 8u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 436) |= 0x80u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v247 & 0x7F) << v170;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v11 = v171++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_461;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v172;
        }

LABEL_461:
        v210 = 212;
        goto LABEL_482;
      case 9u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 436) |= 0x20000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v247 & 0x7F) << v58;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_400;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v60;
        }

LABEL_400:
        v210 = 304;
        goto LABEL_482;
      case 0xAu:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(a1 + 436) |= 0x200u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v178 = [a2 position] + 1;
          if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v177 |= (v247 & 0x7F) << v175;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v11 = v176++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_465;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v177;
        }

LABEL_465:
        v210 = 228;
        goto LABEL_482;
      case 0xBu:
        Data = PBReaderReadData();

        v21 = Data;
        v22 = 296;
        goto LABEL_369;
      case 0x10u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 436) |= 0x100000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v247 & 0x7F) << v115;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v11 = v116++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_429;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v117;
        }

LABEL_429:
        v210 = 328;
        goto LABEL_482;
      case 0x11u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 436) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v247 & 0x7F) << v105;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_417;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v107;
        }

LABEL_417:
        v210 = 352;
        goto LABEL_482;
      case 0x12u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 436) |= 0x10000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v247 & 0x7F) << v52;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_396;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v54;
        }

LABEL_396:
        v210 = 288;
        goto LABEL_482;
      case 0x13u:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 436) |= 0x400000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v163 = [a2 position] + 1;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v162 |= (v247 & 0x7F) << v160;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v11 = v161++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_453;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v162;
        }

LABEL_453:
        v210 = 336;
        goto LABEL_482;
      case 0x14u:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 436) |= 4u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v168 = [a2 position] + 1;
          if (v168 >= [a2 position] && (v169 = objc_msgSend(a2, "position") + 1, v169 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v167 |= (v247 & 0x7F) << v165;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v11 = v166++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_457;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v167;
        }

LABEL_457:
        v210 = 192;
        goto LABEL_482;
      case 0x15u:
        v187 = 0;
        v188 = 0;
        v189 = 0;
        *(a1 + 436) |= 8u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v190 = [a2 position] + 1;
          if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v189 |= (v247 & 0x7F) << v187;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v187 += 7;
          v11 = v188++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_473;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v189;
        }

LABEL_473:
        v210 = 196;
        goto LABEL_482;
      case 0x16u:
        v182 = 0;
        v183 = 0;
        v184 = 0;
        *(a1 + 436) |= 0x100u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v184 |= (v247 & 0x7F) << v182;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v11 = v183++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_469;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v184;
        }

LABEL_469:
        v210 = 224;
        goto LABEL_482;
      case 0x20u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 436) |= 0x4000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v247 & 0x7F) << v41;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_388;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v43;
        }

LABEL_388:
        v210 = 248;
        goto LABEL_482;
      case 0x21u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 436) |= 0x2000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v247 & 0x7F) << v110;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v11 = v111++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_421;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v112;
        }

LABEL_421:
        v210 = 244;
        goto LABEL_482;
      case 0x22u:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        *(a1 + 436) |= 0x8000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v196 = [a2 position] + 1;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v195 |= (v247 & 0x7F) << v193;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v11 = v194++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_477;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v195;
        }

LABEL_477:
        v210 = 264;
        goto LABEL_482;
      case 0x23u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 436) |= 0x800u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v247 & 0x7F) << v47;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v11 = v48++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_392;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v49;
        }

LABEL_392:
        v210 = 236;
        goto LABEL_482;
      case 0x24u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 436) |= 0x1000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v247 & 0x7F) << v100;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_413;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v102;
        }

LABEL_413:
        v210 = 240;
        goto LABEL_482;
      case 0x25u:
        v68 = PBReaderReadData();

        v21 = v68;
        v22 = 256;
        goto LABEL_369;
      case 0x30u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(a1 + 436) |= 0x800000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v141 = [a2 position] + 1;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v140 |= (v247 & 0x7F) << v138;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v11 = v139++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_441;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v140;
        }

LABEL_441:
        v210 = 340;
        goto LABEL_482;
      case 0x31u:
        v57 = PBReaderReadData();

        v21 = v57;
        v22 = 344;
        goto LABEL_369;
      case 0x32u:
        if (v13 != 2)
        {
          v212 = 0;
          v213 = 0;
          v214 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v215 = [a2 position] + 1;
            if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v214 |= (v247 & 0x7F) << v212;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_547;
            }

            v212 += 7;
            v11 = v213++ >= 9;
            if (v11)
            {
              goto LABEL_548;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v34 = [a2 position];
          if (v34 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_367;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            v249 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v249 & 0x7F) << v35;
            if ((v249 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              goto LABEL_56;
            }
          }

          [a2 hasError];
LABEL_56:
          PBRepeatedInt32Add();
        }

      case 0x33u:
        if (v13 == 2)
        {
          v247 = 0;
          v248 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v198 = [a2 position];
            if (v198 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v199 = 0;
            v200 = 0;
            v201 = 0;
            while (1)
            {
              v249 = 0;
              v202 = [a2 position] + 1;
              if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v201 |= (v249 & 0x7F) << v199;
              if ((v249 & 0x80) == 0)
              {
                break;
              }

              v199 += 7;
              v11 = v200++ >= 9;
              if (v11)
              {
                goto LABEL_366;
              }
            }

            [a2 hasError];
LABEL_366:
            PBRepeatedInt32Add();
          }

LABEL_367:
          PBReaderRecallMark();
        }

        else
        {
          v242 = 0;
          v243 = 0;
          v244 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v245 = [a2 position] + 1;
            if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 1, v246 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v244 |= (v247 & 0x7F) << v242;
            if ((v247 & 0x80) == 0)
            {
              break;
            }

            v242 += 7;
            v11 = v243++ >= 9;
            if (v11)
            {
              goto LABEL_548;
            }
          }

LABEL_547:
          [a2 hasError];
LABEL_548:
          PBRepeatedInt32Add();
        }

LABEL_483:
        v4 = a2;
        break;
      case 0x34u:
        if (v13 != 2)
        {
          v217 = 0;
          v218 = 0;
          v219 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v220 = [a2 position] + 1;
            if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v219 |= (v247 & 0x7F) << v217;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_547;
            }

            v217 += 7;
            v11 = v218++ >= 9;
            if (v11)
            {
              goto LABEL_548;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v71 = [a2 position];
          if (v71 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_367;
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
          while (1)
          {
            v249 = 0;
            v75 = [a2 position] + 1;
            if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
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
            v11 = v73++ >= 9;
            if (v11)
            {
              goto LABEL_122;
            }
          }

          [a2 hasError];
LABEL_122:
          PBRepeatedInt32Add();
        }

      case 0x35u:
        if (v13 != 2)
        {
          v222 = 0;
          v223 = 0;
          v224 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v225 = [a2 position] + 1;
            if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 1, v226 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v224 |= (v247 & 0x7F) << v222;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_547;
            }

            v222 += 7;
            v11 = v223++ >= 9;
            if (v11)
            {
              goto LABEL_548;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v83 = [a2 position];
          if (v83 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_367;
          }

          v84 = 0;
          v85 = 0;
          v86 = 0;
          while (1)
          {
            v249 = 0;
            v87 = [a2 position] + 1;
            if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v86 |= (v249 & 0x7F) << v84;
            if ((v249 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v11 = v85++ >= 9;
            if (v11)
            {
              goto LABEL_146;
            }
          }

          [a2 hasError];
LABEL_146:
          PBRepeatedInt32Add();
        }

      case 0x36u:
        if (v13 != 2)
        {
          v237 = 0;
          v238 = 0;
          v239 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v240 = [a2 position] + 1;
            if (v240 >= [a2 position] && (v241 = objc_msgSend(a2, "position") + 1, v241 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v239 |= (v247 & 0x7F) << v237;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_547;
            }

            v237 += 7;
            v11 = v238++ >= 9;
            if (v11)
            {
              goto LABEL_548;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v154 = [a2 position];
          if (v154 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_367;
          }

          v155 = 0;
          v156 = 0;
          v157 = 0;
          while (1)
          {
            v249 = 0;
            v158 = [a2 position] + 1;
            if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
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
            v11 = v156++ >= 9;
            if (v11)
            {
              goto LABEL_284;
            }
          }

          [a2 hasError];
LABEL_284:
          PBRepeatedInt32Add();
        }

      case 0x37u:
        if (v13 != 2)
        {
          v227 = 0;
          v228 = 0;
          v229 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v230 = [a2 position] + 1;
            if (v230 >= [a2 position] && (v231 = objc_msgSend(a2, "position") + 1, v231 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v229 |= (v247 & 0x7F) << v227;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_547;
            }

            v227 += 7;
            v11 = v228++ >= 9;
            if (v11)
            {
              goto LABEL_548;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v89 = [a2 position];
          if (v89 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_367;
          }

          v90 = 0;
          v91 = 0;
          v92 = 0;
          while (1)
          {
            v249 = 0;
            v93 = [a2 position] + 1;
            if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v92 |= (v249 & 0x7F) << v90;
            if ((v249 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v11 = v91++ >= 9;
            if (v11)
            {
              goto LABEL_161;
            }
          }

          [a2 hasError];
LABEL_161:
          PBRepeatedInt32Add();
        }

      case 0x38u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 436) |= 0x400u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v247 & 0x7F) << v24;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_384;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v26;
        }

LABEL_384:
        v210 = 232;
        goto LABEL_482;
      case 0x39u:
        String = PBReaderReadString();

        v21 = String;
        v22 = 272;
        goto LABEL_369;
      case 0x3Au:
        *(a1 + 436) |= 1u;
        v247 = 0;
        v180 = [a2 position] + 8;
        if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 8, v181 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 176) = v247;
        goto LABEL_483;
      case 0x3Bu:
        v204 = PBReaderReadString();

        v21 = v204;
        v22 = 424;
        goto LABEL_369;
      case 0x3Cu:
        v32 = PBReaderReadString();

        v21 = v32;
        v22 = 384;
        goto LABEL_369;
      case 0x3Du:
        v153 = PBReaderReadString();

        v21 = v153;
        v22 = 392;
        goto LABEL_369;
      case 0x3Eu:
        v31 = PBReaderReadString();

        v21 = v31;
        v22 = 400;
        goto LABEL_369;
      case 0x3Fu:
        v30 = PBReaderReadString();

        v21 = v30;
        v22 = 216;
        goto LABEL_369;
      case 0x40u:
        v69 = PBReaderReadString();

        v21 = v69;
        v22 = 408;
        goto LABEL_369;
      case 0x41u:
        v120 = PBReaderReadString();

        v21 = v120;
        v22 = 416;
        goto LABEL_369;
      case 0x42u:
        v192 = PBReaderReadString();

        v21 = v192;
        v22 = 376;
        goto LABEL_369;
      case 0x43u:
        v20 = PBReaderReadString();

        v21 = v20;
        v22 = 368;
        goto LABEL_369;
      case 0x44u:
        v40 = PBReaderReadString();

        v21 = v40;
        v22 = 360;
        goto LABEL_369;
      case 0x45u:
        v121 = PBReaderReadString();

        v21 = v121;
        v22 = 280;
        goto LABEL_369;
      case 0x46u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 436) |= 0x80000u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v247 & 0x7F) << v143;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v11 = v144++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_445;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v145;
        }

LABEL_445:
        v210 = 324;
        goto LABEL_482;
      case 0x47u:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        *(a1 + 436) |= 0x20u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v208 = [a2 position] + 1;
          if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v207 |= (v247 & 0x7F) << v205;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v205 += 7;
          v11 = v206++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_481;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v207;
        }

LABEL_481:
        v210 = 204;
        goto LABEL_482;
      case 0x48u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 436) |= 0x40u;
        while (1)
        {
          LOBYTE(v247) = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v247 & 0x7F) << v133;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v11 = v134++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_437;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v135;
        }

LABEL_437:
        v210 = 208;
LABEL_482:
        *(a1 + v210) = v29;
        goto LABEL_483;
      case 0x49u:
        v23 = PBReaderReadString();

        v21 = v23;
        v22 = 312;
LABEL_369:
        *(a1 + v22) = v21;
        goto LABEL_483;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_483;
        }

        return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricNetworkPrefsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v94[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v94[0] & 0x7F) << v5;
        if ((v94[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 80) |= 0x4000u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v94[0] & 0x7F) << v12;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              LOBYTE(v17) = 0;
LABEL_191:
              *(a1 + 76) = v17;
              goto LABEL_217;
            }
          }

          v17 = (v14 != 0) & ~[a2 hasError];
          goto LABEL_191;
        case 2u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 80) |= 8u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v94[0] & 0x7F) << v61;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_195;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v63;
          }

LABEL_195:
          v92 = 24;
          goto LABEL_216;
        case 3u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 80) |= 0x10u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v94[0] & 0x7F) << v41;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_177;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v43;
          }

LABEL_177:
          v92 = 28;
          goto LABEL_216;
        case 4u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v94[0] & 0x7F) << v51;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_185;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v53;
          }

LABEL_185:
          v92 = 16;
          goto LABEL_216;
        case 5u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 80) |= 0x400u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v94[0] & 0x7F) << v29;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v31;
          }

LABEL_169:
          v92 = 60;
          goto LABEL_216;
        case 6u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 80) |= 0x20u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v94[0] & 0x7F) << v66;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v68;
          }

LABEL_199:
          v92 = 32;
          goto LABEL_216;
        case 7u:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 80) |= 4u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v94[0] & 0x7F) << v76;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v10 = v77++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_207;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v78;
          }

LABEL_207:
          v92 = 20;
          goto LABEL_216;
        case 8u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 80) |= 0x800u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v94[0] & 0x7F) << v56;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_189;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v58;
          }

LABEL_189:
          v92 = 64;
          goto LABEL_216;
        case 9u:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *(a1 + 80) |= 0x100u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v90 = [a2 position] + 1;
            if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v89 |= (v94[0] & 0x7F) << v87;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v10 = v88++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_215;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v89;
          }

LABEL_215:
          v92 = 44;
          goto LABEL_216;
        case 0xAu:
          v39 = objc_alloc_init(AWDWifiMostUsedNetworks);
          [a1 addMostUsedNetworks:v39];

          v94[0] = 0;
          v94[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWifiMostUsedNetworksReadFrom(v39, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_217;
        case 0xBu:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v94[0] & 0x7F) << v81;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v10 = v82++ >= 9;
            if (v10)
            {
              v86 = 0;
              goto LABEL_211;
            }
          }

          if ([a2 hasError])
          {
            v86 = 0;
          }

          else
          {
            v86 = v83;
          }

LABEL_211:
          *(a1 + 8) = v86;
          goto LABEL_217;
        case 0xCu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 80) |= 0x80u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v94[0] & 0x7F) << v24;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_165;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v26;
          }

LABEL_165:
          v92 = 40;
          goto LABEL_216;
        case 0xDu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 80) |= 0x1000u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v94[0] & 0x7F) << v34;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_173;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v36;
          }

LABEL_173:
          v92 = 68;
          goto LABEL_216;
        case 0xEu:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 80) |= 0x2000u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v94[0] & 0x7F) << v71;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v10 = v72++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_203;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v73;
          }

LABEL_203:
          v92 = 72;
          goto LABEL_216;
        case 0xFu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 80) |= 0x40u;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v94[0] & 0x7F) << v18;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

LABEL_161:
          v92 = 36;
          goto LABEL_216;
        case 0x10u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 80) |= 0x200u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_217;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v94[0]) = 0;
        v49 = [a2 position] + 1;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v48 |= (v94[0] & 0x7F) << v46;
        if ((v94[0] & 0x80) == 0)
        {
          break;
        }

        v46 += 7;
        v10 = v47++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_181;
        }
      }

      v23 = [a2 hasError] ? 0 : v48;
LABEL_181:
      v92 = 56;
LABEL_216:
      *(a1 + v92) = v23;
LABEL_217:
      v93 = [a2 position];
    }

    while (v93 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricRssiHistoryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v105) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v105 & 0x7F) << v5;
        if ((v105 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 & 7;
      if (v12 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            if (v12 != 2)
            {
              v84 = 0;
              v85 = 0;
              v86 = 0;
              while (1)
              {
                LOBYTE(v105) = 0;
                v87 = [a2 position] + 1;
                if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v86 |= (v105 & 0x7F) << v84;
                if ((v105 & 0x80) == 0)
                {
                  goto LABEL_226;
                }

                v84 += 7;
                v10 = v85++ >= 9;
                if (v10)
                {
                  goto LABEL_227;
                }
              }
            }

            v105 = 0;
            v106 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v45 = [a2 position];
              if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                v107 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v107 & 0x7F) << v46;
                if ((v107 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v10 = v47++ >= 9;
                if (v10)
                {
                  goto LABEL_106;
                }
              }

              [a2 hasError];
LABEL_106:
              PBRepeatedInt32Add();
            }

LABEL_152:
            PBReaderRecallMark();
            goto LABEL_228;
          }

          if (v13 == 4)
          {
            if (v12 != 2)
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              while (1)
              {
                LOBYTE(v105) = 0;
                v77 = [a2 position] + 1;
                if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v76 |= (v105 & 0x7F) << v74;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                v10 = v75++ >= 9;
                if (v10)
                {
                  goto LABEL_227;
                }
              }

LABEL_226:
              [a2 hasError];
LABEL_227:
              PBRepeatedInt32Add();
              goto LABEL_228;
            }

            v105 = 0;
            v106 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v27 = [a2 position];
              if (v27 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_152;
              }

              v28 = 0;
              v29 = 0;
              v30 = 0;
              while (1)
              {
                v107 = 0;
                v31 = [a2 position] + 1;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v30 |= (v107 & 0x7F) << v28;
                if ((v107 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v10 = v29++ >= 9;
                if (v10)
                {
                  goto LABEL_65;
                }
              }

              [a2 hasError];
LABEL_65:
              PBRepeatedInt32Add();
            }
          }
        }

        else
        {
          if (v13 == 1)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 188) |= 1u;
            while (1)
            {
              LOBYTE(v105) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v105 & 0x7F) << v39;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v10 = v40++ >= 9;
              if (v10)
              {
                v44 = 0;
                goto LABEL_158;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v41;
            }

LABEL_158:
            *(a1 + 176) = v44;
            goto LABEL_228;
          }

          if (v13 == 2)
          {
            if (v12 != 2)
            {
              v69 = 0;
              v70 = 0;
              v71 = 0;
              while (1)
              {
                LOBYTE(v105) = 0;
                v72 = [a2 position] + 1;
                if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v71 |= (v105 & 0x7F) << v69;
                if ((v105 & 0x80) == 0)
                {
                  goto LABEL_226;
                }

                v69 += 7;
                v10 = v70++ >= 9;
                if (v10)
                {
                  goto LABEL_227;
                }
              }
            }

            v105 = 0;
            v106 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v21 = [a2 position];
              if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_152;
              }

              v22 = 0;
              v23 = 0;
              v24 = 0;
              while (1)
              {
                v107 = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v107 & 0x7F) << v22;
                if ((v107 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v10 = v23++ >= 9;
                if (v10)
                {
                  goto LABEL_48;
                }
              }

              [a2 hasError];
LABEL_48:
              PBRepeatedInt32Add();
            }
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          if (v12 != 2)
          {
            v94 = 0;
            v95 = 0;
            v96 = 0;
            while (1)
            {
              LOBYTE(v105) = 0;
              v97 = [a2 position] + 1;
              if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v96 |= (v105 & 0x7F) << v94;
              if ((v105 & 0x80) == 0)
              {
                goto LABEL_226;
              }

              v94 += 7;
              v10 = v95++ >= 9;
              if (v10)
              {
                goto LABEL_227;
              }
            }
          }

          v105 = 0;
          v106 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v57 = [a2 position];
            if (v57 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_152;
            }

            v58 = 0;
            v59 = 0;
            v60 = 0;
            while (1)
            {
              v107 = 0;
              v61 = [a2 position] + 1;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v60 |= (v107 & 0x7F) << v58;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v10 = v59++ >= 9;
              if (v10)
              {
                goto LABEL_136;
              }
            }

            [a2 hasError];
LABEL_136:
            PBRepeatedInt32Add();
          }
        }

        if (v13 == 6)
        {
          if (v12 != 2)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            while (1)
            {
              LOBYTE(v105) = 0;
              v82 = [a2 position] + 1;
              if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v81 |= (v105 & 0x7F) << v79;
              if ((v105 & 0x80) == 0)
              {
                goto LABEL_226;
              }

              v79 += 7;
              v10 = v80++ >= 9;
              if (v10)
              {
                goto LABEL_227;
              }
            }
          }

          v105 = 0;
          v106 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v33 = [a2 position];
            if (v33 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_152;
            }

            v34 = 0;
            v35 = 0;
            v36 = 0;
            while (1)
            {
              v107 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v107 & 0x7F) << v34;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v10 = v35++ >= 9;
              if (v10)
              {
                goto LABEL_82;
              }
            }

            [a2 hasError];
LABEL_82:
            PBRepeatedInt32Add();
          }
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            if (v12 != 2)
            {
              v89 = 0;
              v90 = 0;
              v91 = 0;
              while (1)
              {
                LOBYTE(v105) = 0;
                v92 = [a2 position] + 1;
                if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v91 |= (v105 & 0x7F) << v89;
                if ((v105 & 0x80) == 0)
                {
                  goto LABEL_226;
                }

                v89 += 7;
                v10 = v90++ >= 9;
                if (v10)
                {
                  goto LABEL_227;
                }
              }
            }

            v105 = 0;
            v106 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v51 = [a2 position];
              if (v51 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_152;
              }

              v52 = 0;
              v53 = 0;
              v54 = 0;
              while (1)
              {
                v107 = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v107 & 0x7F) << v52;
                if ((v107 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v10 = v53++ >= 9;
                if (v10)
                {
                  goto LABEL_121;
                }
              }

              [a2 hasError];
LABEL_121:
              PBRepeatedInt32Add();
            }

          case 8:
            if (v12 != 2)
            {
              v99 = 0;
              v100 = 0;
              v101 = 0;
              while (1)
              {
                LOBYTE(v105) = 0;
                v102 = [a2 position] + 1;
                if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v101 |= (v105 & 0x7F) << v99;
                if ((v105 & 0x80) == 0)
                {
                  goto LABEL_226;
                }

                v99 += 7;
                v10 = v100++ >= 9;
                if (v10)
                {
                  goto LABEL_227;
                }
              }
            }

            v105 = 0;
            v106 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v63 = [a2 position];
              if (v63 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_152;
              }

              v64 = 0;
              v65 = 0;
              v66 = 0;
              while (1)
              {
                v107 = 0;
                v67 = [a2 position] + 1;
                if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
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
                v10 = v65++ >= 9;
                if (v10)
                {
                  goto LABEL_151;
                }
              }

              [a2 hasError];
LABEL_151:
              PBRepeatedInt32Add();
            }

          case 9:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 188) |= 2u;
            while (1)
            {
              LOBYTE(v105) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v105 & 0x7F) << v14;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v10 = v15++ >= 9;
              if (v10)
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
              v19 = v16;
            }

LABEL_162:
            *(a1 + 184) = v19;
            goto LABEL_228;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_228:
      v104 = [a2 position];
    }

    while (v104 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricScanStatsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v21[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
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
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = objc_alloc_init(AWDScanStatsPerSlice);
        [a1 addScanStats:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDScanStatsPerSliceReadFrom(v18, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v21[0] & 0x7F) << v12;
          if ((v21[0] & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

LABEL_36:
        *(a1 + 8) = v17;
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

uint64_t AWDWiFiMetricWiFiStatsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v21[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
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
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = objc_alloc_init(AWDWifiStats);

        *(a1 + 16) = v18;
        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWifiStatsReadFrom(v18, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v21[0] & 0x7F) << v12;
          if ((v21[0] & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

LABEL_36:
        *(a1 + 8) = v17;
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

uint64_t AWDWiFiMetricWowStateReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v28 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v28 & 0x7F) << v18;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v10 = v19++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_44;
          }
        }

        v23 = (v20 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 16) = v23;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v27 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v27 & 0x7F) << v12;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_42;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_42:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsAssociationHistoryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v21[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
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
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = objc_alloc_init(AWDWiFiMetricsManagerAssociationEvent);
        [a1 addAssociationEvents:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiMetricsManagerAssociationEventReadFrom(v18, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v21[0] & 0x7F) << v12;
          if ((v21[0] & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

LABEL_36:
        *(a1 + 8) = v17;
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

uint64_t AWDWiFiMetricsAutoJoinNwExclusionReadFrom(uint64_t a1, void *a2)
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
        v31 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
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
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v32 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v32 & 0x7F) << v25;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v18 = v26++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDWiFiMetricsAutoJoinNwExclusion__usageRank;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDWiFiMetricsAutoJoinNwExclusion__usageRank;
        goto LABEL_52;
      }

      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v33 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v33 & 0x7F) << v13;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v18 = v14++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDWiFiMetricsAutoJoinNwExclusion__reasonCode;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDWiFiMetricsAutoJoinNwExclusion__reasonCode;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = 0;
    v22 = 0;
    v15 = 0;
    *(a1 + 20) |= 2u;
    while (1)
    {
      v34 = 0;
      v23 = [a2 position] + 1;
      if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v34 & 0x7F) << v21;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v18 = v22++ > 8;
      if (v18)
      {
        v19 = 0;
        v20 = &OBJC_IVAR___AWDWiFiMetricsAutoJoinNwExclusion__rssi;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDWiFiMetricsAutoJoinNwExclusion__rssi;
LABEL_52:
    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

LABEL_55:
    *(a1 + *v20) = v19;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsHealthUIEventReadFrom(uint64_t a1, void *a2)
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
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
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
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v35 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v35 & 0x7F) << v27;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_63;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

LABEL_63:
          v32 = 8;
          goto LABEL_64;
        }

        if (v12 != 4)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_65;
        }

        String = PBReaderReadString();

        *(a1 + 32) = String;
      }

      else
      {
        if (v12 == 1)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v36 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v36 & 0x7F) << v21;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v10 = v22++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v23;
          }

LABEL_59:
          v32 = 16;
LABEL_64:
          *(a1 + v32) = v26;
          goto LABEL_65;
        }

        if (v12 != 2)
        {
          goto LABEL_32;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v37 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v37 & 0x7F) << v13;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_55:
        *(a1 + 24) = v18;
      }

LABEL_65:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsKnownNetworksEventReadFrom(uint64_t a1, void *a2)
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
        v62 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 5)
      {
        if (v12 <= 7)
        {
          if (v12 == 6)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              v66 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v66 & 0x7F) << v34;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v10 = v35++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_122;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v36;
            }

LABEL_122:
            v60 = 24;
          }

          else
          {
            if (v12 != 7)
            {
LABEL_105:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_140;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 64) |= 0x80u;
            while (1)
            {
              v65 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v65 & 0x7F) << v23;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v10 = v24++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_114;
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

LABEL_114:
            v60 = 60;
          }

          goto LABEL_139;
        }

        if (v12 == 8)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            v64 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v64 & 0x7F) << v44;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_130;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v46;
          }

LABEL_130:
          v60 = 56;
          goto LABEL_139;
        }

        if (v12 == 9)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v70 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v70 & 0x7F) << v54;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_138;
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

LABEL_138:
          v60 = 32;
          goto LABEL_139;
        }

        if (v12 != 10)
        {
          goto LABEL_105;
        }

        String = PBReaderReadString();

        v14 = String;
        v15 = 16;
      }

      else
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v63 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v63 & 0x7F) << v28;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v10 = v29++ >= 9;
              if (v10)
              {
                v33 = 0;
                goto LABEL_118;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v30;
            }

LABEL_118:
            *(a1 + 8) = v33;
            goto LABEL_140;
          }

          if (v12 != 2)
          {
            goto LABEL_105;
          }

          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v69 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v69 & 0x7F) << v17;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v10 = v18++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v19;
          }

LABEL_110:
          v60 = 28;
          goto LABEL_139;
        }

        if (v12 == 3)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v68 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v68 & 0x7F) << v39;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_126;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v41;
          }

LABEL_126:
          v60 = 40;
          goto LABEL_139;
        }

        if (v12 == 4)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v67 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v67 & 0x7F) << v49;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v10 = v50++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_134;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v51;
          }

LABEL_134:
          v60 = 36;
LABEL_139:
          *(a1 + v60) = v22;
          goto LABEL_140;
        }

        if (v12 != 5)
        {
          goto LABEL_105;
        }

        Data = PBReaderReadData();

        v14 = Data;
        v15 = 48;
      }

      *(a1 + v15) = v14;
LABEL_140:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerAssociationEventReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v28[0] & 0x7F) << v21;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v10 = v22++ >= 9;
          if (v10)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v23;
        }

LABEL_46:
        *(a1 + 24) = v26;
      }

      else if (v12 == 2)
      {
        v19 = objc_alloc_init(AWDWiFiMetricsManagerEvent);

        *(a1 + 16) = v19;
        v28[0] = 0;
        v28[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiMetricsManagerEventReadFrom(v19, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v28[0] & 0x7F) << v13;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_50:
        *(a1 + 8) = v18;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerAutoJoinCumulativeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v86) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v86 & 0x7F) << v5;
        if ((v86 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 & 7;
      if (v12 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v11 >> 3;
      if ((v11 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v86 & 0x7F) << v37;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v10 = v38++ >= 9;
              if (v10)
              {
                v42 = 0;
                goto LABEL_148;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v39;
            }

LABEL_148:
            *(a1 + 56) = v42;
            goto LABEL_182;
          }

          if (v13 == 2)
          {
            if (v12 != 2)
            {
              v76 = 0;
              v77 = 0;
              v78 = 0;
              while (1)
              {
                LOBYTE(v86) = 0;
                v79 = [a2 position] + 1;
                if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v78 |= (v86 & 0x7F) << v76;
                if ((v86 & 0x80) == 0)
                {
                  goto LABEL_202;
                }

                v76 += 7;
                v10 = v77++ >= 9;
                if (v10)
                {
                  goto LABEL_203;
                }
              }
            }

            v86 = 0;
            v87 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v31 = [a2 position];
              if (v31 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_144;
              }

              v32 = 0;
              v33 = 0;
              v34 = 0;
              while (1)
              {
                v88 = 0;
                v35 = [a2 position] + 1;
                if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v34 |= (v88 & 0x7F) << v32;
                if ((v88 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v10 = v33++ >= 9;
                if (v10)
                {
                  goto LABEL_72;
                }
              }

              [a2 hasError];
LABEL_72:
              PBRepeatedUInt32Add();
            }
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              if (v12 != 2)
              {
                v81 = 0;
                v82 = 0;
                v83 = 0;
                while (1)
                {
                  LOBYTE(v86) = 0;
                  v84 = [a2 position] + 1;
                  if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v83 |= (v86 & 0x7F) << v81;
                  if ((v86 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  v10 = v82++ >= 9;
                  if (v10)
                  {
                    goto LABEL_203;
                  }
                }

LABEL_202:
                [a2 hasError];
LABEL_203:
                PBRepeatedUInt32Add();
                goto LABEL_182;
              }

              v86 = 0;
              v87 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v58 = [a2 position];
                if (v58 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v59 = 0;
                v60 = 0;
                v61 = 0;
                while (1)
                {
                  v88 = 0;
                  v62 = [a2 position] + 1;
                  if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v61 |= (v88 & 0x7F) << v59;
                  if ((v88 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  v10 = v60++ >= 9;
                  if (v10)
                  {
                    goto LABEL_123;
                  }
                }

                [a2 hasError];
LABEL_123:
                PBRepeatedUInt32Add();
              }

LABEL_144:
              PBReaderRecallMark();
              goto LABEL_182;
            case 4:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 96) |= 0x100u;
              while (1)
              {
                LOBYTE(v86) = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
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
                v10 = v44++ >= 9;
                if (v10)
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
                v19 = v45;
              }

LABEL_152:
              v74 = 92;
              goto LABEL_181;
            case 5:
              v20 = 0;
              v21 = 0;
              v22 = 0;
              *(a1 + 96) |= 2u;
              while (1)
              {
                LOBYTE(v86) = 0;
                v23 = [a2 position] + 1;
                if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v22 |= (v86 & 0x7F) << v20;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v20 += 7;
                v10 = v21++ >= 9;
                if (v10)
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
                v19 = v22;
              }

LABEL_164:
              v74 = 64;
              goto LABEL_181;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v69 = 0;
            v70 = 0;
            v71 = 0;
            *(a1 + 96) |= 0x20u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v72 = [a2 position] + 1;
              if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v71 |= (v86 & 0x7F) << v69;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              v10 = v70++ >= 9;
              if (v10)
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
              v19 = v71;
            }

LABEL_180:
            v74 = 80;
            goto LABEL_181;
          case 0xA:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 96) |= 8u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v86 & 0x7F) << v53;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v10 = v54++ >= 9;
              if (v10)
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
              v19 = v55;
            }

LABEL_160:
            v74 = 72;
            goto LABEL_181;
          case 0xB:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 96) |= 0x10u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v86 & 0x7F) << v25;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
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
              v19 = v27;
            }

LABEL_172:
            v74 = 76;
            goto LABEL_181;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 96) |= 4u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v86 & 0x7F) << v64;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v10 = v65++ >= 9;
              if (v10)
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
              v19 = v66;
            }

LABEL_176:
            v74 = 68;
            goto LABEL_181;
          case 7:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 96) |= 0x40u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v86 & 0x7F) << v48;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v10 = v49++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_156;
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

LABEL_156:
            v74 = 84;
            goto LABEL_181;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 96) |= 0x80u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v86 & 0x7F) << v14;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v10 = v15++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_168;
              }
            }

            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v16;
            }

LABEL_168:
            v74 = 88;
LABEL_181:
            *(a1 + v74) = v19;
            goto LABEL_182;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_182:
      v75 = [a2 position];
    }

    while (v75 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerAutoJoinRecordReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
    v6 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
    v7 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
    v8 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        while (1)
        {
          LOBYTE(v137) = 0;
          v12 = [a2 position] + 1;
          if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v11 |= (v137 & 0x7F) << v9;
          if ((v137 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          v14 = v10++ >= 9;
          if (v14)
          {
            v15 = 0;
            goto LABEL_16;
          }
        }

        v15 = [a2 hasError] ? 0 : v11;
LABEL_16:
        if (([a2 hasError] & 1) == 0 && (v15 & 7) != 4)
        {
          switch((v15 >> 3))
          {
            case 1u:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *&a1[v5[751]] |= 8u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v137 & 0x7F) << v16;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v14 = v17++ >= 9;
                if (v14)
                {
                  v21 = 0;
LABEL_258:
                  v127 = v6[752];
                  goto LABEL_263;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v18;
              }

              goto LABEL_258;
            case 2u:
              v75 = 0;
              v76 = 0;
              v77 = 0;
              *&a1[v5[751]] |= 1u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v78 = [a2 position] + 1;
                if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v77 |= (v137 & 0x7F) << v75;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v75 += 7;
                v14 = v76++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_262;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v77;
              }

LABEL_262:
              v127 = v7[753];
              goto LABEL_263;
            case 3u:
              v53 = 0;
              v54 = 0;
              v55 = 0;
              *&a1[v5[751]] |= 2u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v56 = [a2 position] + 1;
                if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v55 |= (v137 & 0x7F) << v53;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v14 = v54++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_246;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v55;
              }

LABEL_246:
              v127 = v8[754];
              goto LABEL_263;
            case 4u:
              v63 = 0;
              v64 = 0;
              v65 = 0;
              *&a1[v5[751]] |= 0x10u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v66 = [a2 position] + 1;
                if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v65 |= (v137 & 0x7F) << v63;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v14 = v64++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_254;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v65;
              }

LABEL_254:
              v127 = 64;
              goto LABEL_263;
            case 5u:
              v38 = 0;
              v39 = 0;
              v40 = 0;
              *&a1[v5[751]] |= 4u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v137 & 0x7F) << v38;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v14 = v39++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_234;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v40;
              }

LABEL_234:
              v127 = 48;
LABEL_263:
              *&a1[v127] = v21;
              goto LABEL_301;
            case 6u:
              v86 = 0;
              v87 = 0;
              v88 = 0;
              *&a1[v5[751]] |= 0x80000u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v89 = [a2 position] + 1;
                if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v88 |= (v137 & 0x7F) << v86;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v86 += 7;
                v14 = v87++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_271;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v88;
              }

LABEL_271:
              v126 = 140;
              goto LABEL_300;
            case 7u:
              v101 = 0;
              v102 = 0;
              v103 = 0;
              *&a1[v5[751]] |= 0x8000u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v104 = [a2 position] + 1;
                if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v103 |= (v137 & 0x7F) << v101;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v101 += 7;
                v14 = v102++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_283;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v103;
              }

LABEL_283:
              v126 = 124;
              goto LABEL_300;
            case 8u:
              if ((v15 & 7) == 2)
              {
                v137 = 0;
                v138 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v69 = [a2 position];
                  if (v69 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v70 = 0;
                  v71 = 0;
                  v72 = 0;
                  while (1)
                  {
                    v139 = 0;
                    v73 = [a2 position] + 1;
                    if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v72 |= (v139 & 0x7F) << v70;
                    if ((v139 & 0x80) == 0)
                    {
                      break;
                    }

                    v70 += 7;
                    v14 = v71++ >= 9;
                    if (v14)
                    {
                      goto LABEL_123;
                    }
                  }

                  [a2 hasError];
LABEL_123:
                  PBRepeatedUInt32Add();
                }

LABEL_144:
                PBReaderRecallMark();
              }

              else
              {
                v129 = v8;
                v130 = v7;
                v131 = v6;
                v132 = 0;
                v133 = 0;
                v134 = 0;
                while (1)
                {
                  LOBYTE(v137) = 0;
                  v135 = [a2 position] + 1;
                  if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v134 |= (v137 & 0x7F) << v132;
                  if ((v137 & 0x80) == 0)
                  {
                    break;
                  }

                  v132 += 7;
                  v14 = v133++ >= 9;
                  if (v14)
                  {
                    goto LABEL_313;
                  }
                }

                [a2 hasError];
LABEL_313:
                PBRepeatedUInt32Add();
                v6 = v131;
                v7 = v130;
                v8 = v129;
                v5 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
              }

LABEL_301:
              v128 = [a2 position];
              if (v128 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              continue;
            case 9u:
              v116 = 0;
              v117 = 0;
              v118 = 0;
              *&a1[v5[751]] |= 0x40000u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v119 = [a2 position] + 1;
                if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v118 |= (v137 & 0x7F) << v116;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v116 += 7;
                v14 = v117++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_295;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v118;
              }

LABEL_295:
              v126 = 136;
              goto LABEL_300;
            case 0xAu:
              v48 = 0;
              v49 = 0;
              v50 = 0;
              *&a1[v5[751]] |= 0x800u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v51 = [a2 position] + 1;
                if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v50 |= (v137 & 0x7F) << v48;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v14 = v49++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_242;
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

LABEL_242:
              v126 = 96;
              goto LABEL_300;
            case 0xBu:
              v111 = 0;
              v112 = 0;
              v113 = 0;
              *&a1[v5[751]] |= 0x4000u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v114 = [a2 position] + 1;
                if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v113 |= (v137 & 0x7F) << v111;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v111 += 7;
                v14 = v112++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_291;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v113;
              }

LABEL_291:
              v126 = 120;
              goto LABEL_300;
            case 0xCu:
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *&a1[v5[751]] |= 0x2000u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v137 & 0x7F) << v33;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v14 = v34++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_230;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v35;
              }

LABEL_230:
              v126 = 116;
              goto LABEL_300;
            case 0xDu:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *&a1[v5[751]] |= 0x20000u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v137 & 0x7F) << v43;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v14 = v44++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_238;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v45;
              }

LABEL_238:
              v126 = 132;
              goto LABEL_300;
            case 0xEu:
              v96 = 0;
              v97 = 0;
              v98 = 0;
              *&a1[v5[751]] |= 0x200u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v99 = [a2 position] + 1;
                if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v98 |= (v137 & 0x7F) << v96;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v96 += 7;
                v14 = v97++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_279;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v98;
              }

LABEL_279:
              v126 = 88;
              goto LABEL_300;
            case 0xFu:
              v28 = 0;
              v29 = 0;
              v30 = 0;
              *&a1[v5[751]] |= 0x400u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v31 = [a2 position] + 1;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v30 |= (v137 & 0x7F) << v28;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v14 = v29++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_226;
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

LABEL_226:
              v126 = 92;
              goto LABEL_300;
            case 0x10u:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *&a1[v5[751]] |= 0x10000u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v137 & 0x7F) << v58;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v14 = v59++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_250;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v60;
              }

LABEL_250:
              v126 = 128;
              goto LABEL_300;
            case 0x11u:
              v22 = 0;
              v23 = 0;
              v24 = 0;
              *&a1[v5[751]] |= 0x100u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v137 & 0x7F) << v22;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v14 = v23++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_222;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v24;
              }

LABEL_222:
              v126 = 84;
              goto LABEL_300;
            case 0x12u:
              v80 = 0;
              v81 = 0;
              v82 = 0;
              *&a1[v5[751]] |= 0x40u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v83 = [a2 position] + 1;
                if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v82 |= (v137 & 0x7F) << v80;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                v14 = v81++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_267;
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

LABEL_267:
              v126 = 76;
              goto LABEL_300;
            case 0x13u:
              v106 = 0;
              v107 = 0;
              v108 = 0;
              *&a1[v5[751]] |= 0x80u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v109 = [a2 position] + 1;
                if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v108 |= (v137 & 0x7F) << v106;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                v14 = v107++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_287;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v108;
              }

LABEL_287:
              v126 = 80;
              goto LABEL_300;
            case 0x14u:
              v121 = 0;
              v122 = 0;
              v123 = 0;
              *&a1[v5[751]] |= 0x1000u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v124 = [a2 position] + 1;
                if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v123 |= (v137 & 0x7F) << v121;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v121 += 7;
                v14 = v122++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_299;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v123;
              }

LABEL_299:
              v126 = 112;
              goto LABEL_300;
            case 0x15u:
              v85 = objc_alloc_init(AWDWiFiMetricsAutoJoinNwExclusion);
              [a1 addNetworksExcludedFromAJDueToThresholds:v85];

              v137 = 0;
              v138 = 0;
              result = PBReaderPlaceMark();
              if (result)
              {
                result = AWDWiFiMetricsAutoJoinNwExclusionReadFrom(v85, a2);
                if (result)
                {
                  goto LABEL_144;
                }
              }

              return result;
            case 0x16u:
              v91 = 0;
              v92 = 0;
              v93 = 0;
              *&a1[v5[751]] |= 0x20u;
              while (1)
              {
                LOBYTE(v137) = 0;
                v94 = [a2 position] + 1;
                if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v93 |= (v137 & 0x7F) << v91;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                v14 = v92++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_275;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v93;
              }

LABEL_275:
              v126 = 72;
LABEL_300:
              *&a1[v126] = v27;
              goto LABEL_301;
            default:
              if (PBReaderSkipValueWithTag())
              {
                goto LABEL_301;
              }

              return 0;
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}