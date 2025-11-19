uint64_t ATXHeroEntriesPbReadFrom(char *a1, void *a2)
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
        LOBYTE(v117) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v117 & 0x7F) << v5;
        if ((v117 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v14 <= 2)
        {
          if (v14 == 1)
          {
            LODWORD(v117) = 0;
            v39 = [a2 position] + 4;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 4, v40 <= objc_msgSend(a2, "length")))
            {
              v112 = [a2 data];
              [v112 getBytes:&v117 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v113 = v117;
            v114 = 184;
            goto LABEL_225;
          }

          if (v14 == 2)
          {
            LODWORD(v117) = 0;
            v37 = [a2 position] + 4;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 4, v38 <= objc_msgSend(a2, "length")))
            {
              v115 = [a2 data];
              [v115 getBytes:&v117 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v113 = v117;
            v114 = 188;
LABEL_225:
            *&a1[v114] = v113;
            goto LABEL_226;
          }
        }

        else
        {
          switch(v14)
          {
            case 3:
              if (v13 != 2)
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                while (1)
                {
                  LOBYTE(v117) = 0;
                  v91 = [a2 position] + 1;
                  if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
                  {
                    v93 = [a2 data];
                    [v93 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v90 |= (v117 & 0x7F) << v88;
                  if ((v117 & 0x80) == 0)
                  {
                    goto LABEL_186;
                  }

                  v88 += 7;
                  v11 = v89++ >= 9;
                  if (v11)
                  {
                    goto LABEL_187;
                  }
                }
              }

              v117 = 0;
              v118 = 0;
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
                  goto LABEL_144;
                }

                v57 = 0;
                v58 = 0;
                v59 = 0;
                while (1)
                {
                  v119 = 0;
                  v60 = [a2 position] + 1;
                  if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                  {
                    v62 = [a2 data];
                    [v62 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v59 |= (v119 & 0x7F) << v57;
                  if ((v119 & 0x80) == 0)
                  {
                    break;
                  }

                  v57 += 7;
                  v11 = v58++ >= 9;
                  if (v11)
                  {
                    goto LABEL_128;
                  }
                }

                [a2 hasError];
LABEL_128:
                PBRepeatedInt32Add();
              }

            case 4:
              if (v13 != 2)
              {
                v70 = 0;
                v71 = 0;
                v72 = 0;
                while (1)
                {
                  LOBYTE(v117) = 0;
                  v73 = [a2 position] + 1;
                  if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                  {
                    v75 = [a2 data];
                    [v75 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v72 |= (v117 & 0x7F) << v70;
                  if ((v117 & 0x80) == 0)
                  {
                    break;
                  }

                  v70 += 7;
                  v11 = v71++ >= 9;
                  if (v11)
                  {
                    goto LABEL_187;
                  }
                }

LABEL_186:
                [a2 hasError];
LABEL_187:
                PBRepeatedInt32Add();
                goto LABEL_226;
              }

              v117 = 0;
              v118 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v41 = [a2 position];
                if (v41 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v42 = 0;
                v43 = 0;
                v44 = 0;
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
                  v11 = v43++ >= 9;
                  if (v11)
                  {
                    goto LABEL_96;
                  }
                }

                [a2 hasError];
LABEL_96:
                PBRepeatedInt32Add();
              }

LABEL_144:
              PBReaderRecallMark();
              goto LABEL_226;
            case 5:
              if (v13 != 2)
              {
                v82 = 0;
                v83 = 0;
                v84 = 0;
                while (1)
                {
                  LOBYTE(v117) = 0;
                  v85 = [a2 position] + 1;
                  if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
                  {
                    v87 = [a2 data];
                    [v87 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v84 |= (v117 & 0x7F) << v82;
                  if ((v117 & 0x80) == 0)
                  {
                    goto LABEL_197;
                  }

                  v82 += 7;
                  v11 = v83++ >= 9;
                  if (v11)
                  {
                    goto LABEL_198;
                  }
                }
              }

              v117 = 0;
              v118 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v23 = [a2 position];
                if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  goto LABEL_144;
                }

                v24 = 0;
                v25 = 0;
                v26 = 0;
                while (1)
                {
                  v119 = 0;
                  v27 = [a2 position] + 1;
                  if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                  {
                    v29 = [a2 data];
                    [v29 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v26 |= (v119 & 0x7F) << v24;
                  if ((v119 & 0x80) == 0)
                  {
                    break;
                  }

                  v24 += 7;
                  v11 = v25++ >= 9;
                  if (v11)
                  {
                    goto LABEL_55;
                  }
                }

                [a2 hasError];
LABEL_55:
                PBRepeatedUInt32Add();
              }
          }
        }
      }

      else if (v14 > 9)
      {
        switch(v14)
        {
          case 0xA:
            v55 = PBReaderReadData();
            if (v55)
            {
              [a1 addUrlHash:v55];
            }

            goto LABEL_147;
          case 0xB:
            v55 = PBReaderReadString();
            if (v55)
            {
              [a1 addPoiCategory:v55];
            }

LABEL_147:

            goto LABEL_226;
          case 0xC:
            if (v13 != 2)
            {
              v100 = 0;
              v101 = 0;
              v102 = 0;
              while (1)
              {
                LOBYTE(v117) = 0;
                v103 = [a2 position] + 1;
                if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
                {
                  v105 = [a2 data];
                  [v105 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v102 |= (v117 & 0x7F) << v100;
                if ((v117 & 0x80) == 0)
                {
                  break;
                }

                v100 += 7;
                v11 = v101++ >= 9;
                if (v11)
                {
                  goto LABEL_218;
                }
              }

              [a2 hasError];
LABEL_218:
              PBRepeatedUInt64Add();
              goto LABEL_226;
            }

            v117 = 0;
            v118 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v30 = [a2 position];
              if (v30 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_144;
              }

              v31 = 0;
              v32 = 0;
              v33 = 0;
              while (1)
              {
                v119 = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v119 & 0x7F) << v31;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  goto LABEL_73;
                }
              }

              [a2 hasError];
LABEL_73:
              PBRepeatedUInt64Add();
            }
        }
      }

      else
      {
        switch(v14)
        {
          case 6:
            if (v13 != 2)
            {
              v106 = 0;
              v107 = 0;
              v108 = 0;
              while (1)
              {
                LOBYTE(v117) = 0;
                v109 = [a2 position] + 1;
                if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
                {
                  v111 = [a2 data];
                  [v111 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v108 |= (v117 & 0x7F) << v106;
                if ((v117 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                v11 = v107++ >= 9;
                if (v11)
                {
                  goto LABEL_220;
                }
              }

              [a2 hasError];
LABEL_220:
              PBRepeatedBOOLAdd();
              goto LABEL_226;
            }

            v117 = 0;
            v118 = 0;
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
                goto LABEL_144;
              }

              v64 = 0;
              v65 = 0;
              v66 = 0;
              while (1)
              {
                v119 = 0;
                v67 = [a2 position] + 1;
                if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
                {
                  v69 = [a2 data];
                  [v69 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v66 |= (v119 & 0x7F) << v64;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v11 = v65++ >= 9;
                if (v11)
                {
                  goto LABEL_143;
                }
              }

              [a2 hasError];
LABEL_143:
              PBRepeatedBOOLAdd();
            }

          case 8:
            if (v13 != 2)
            {
              v76 = 0;
              v77 = 0;
              v78 = 0;
              while (1)
              {
                LOBYTE(v117) = 0;
                v79 = [a2 position] + 1;
                if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
                {
                  v81 = [a2 data];
                  [v81 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v78 |= (v117 & 0x7F) << v76;
                if ((v117 & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                v11 = v77++ >= 9;
                if (v11)
                {
                  goto LABEL_198;
                }
              }

LABEL_197:
              [a2 hasError];
LABEL_198:
              PBRepeatedUInt32Add();
              goto LABEL_226;
            }

            v117 = 0;
            v118 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v48 = [a2 position];
              if (v48 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_144;
              }

              v49 = 0;
              v50 = 0;
              v51 = 0;
              while (1)
              {
                v119 = 0;
                v52 = [a2 position] + 1;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
                {
                  v54 = [a2 data];
                  [v54 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v51 |= (v119 & 0x7F) << v49;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v11 = v50++ >= 9;
                if (v11)
                {
                  goto LABEL_111;
                }
              }

              [a2 hasError];
LABEL_111:
              PBRepeatedUInt32Add();
            }

          case 9:
            if (v13 != 2)
            {
              v94 = 0;
              v95 = 0;
              v96 = 0;
              while (1)
              {
                LOBYTE(v117) = 0;
                v97 = [a2 position] + 1;
                if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
                {
                  v99 = [a2 data];
                  [v99 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v96 |= (v117 & 0x7F) << v94;
                if ((v117 & 0x80) == 0)
                {
                  goto LABEL_197;
                }

                v94 += 7;
                v11 = v95++ >= 9;
                if (v11)
                {
                  goto LABEL_198;
                }
              }
            }

            v117 = 0;
            v118 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v16 = [a2 position];
              if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_144;
              }

              v17 = 0;
              v18 = 0;
              v19 = 0;
              while (1)
              {
                v119 = 0;
                v20 = [a2 position] + 1;
                if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
                {
                  v22 = [a2 data];
                  [v22 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v19 |= (v119 & 0x7F) << v17;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v17 += 7;
                v11 = v18++ >= 9;
                if (v11)
                {
                  goto LABEL_36;
                }
              }

              [a2 hasError];
LABEL_36:
              PBRepeatedUInt32Add();
            }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_226:
      v116 = [a2 position];
    }

    while (v116 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_260C96F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id __atxlog_handle_default()
{
  if (__atxlog_handle_default_onceToken != -1)
  {
    __atxlog_handle_default_cold_1();
  }

  v1 = __atxlog_handle_default_log;

  return v1;
}

uint64_t ____atxlog_handle_default_block_invoke()
{
  __atxlog_handle_default_log = os_log_create("com.apple.duetexpertd.atx", "general");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_xpc()
{
  if (__atxlog_handle_xpc_onceToken != -1)
  {
    __atxlog_handle_xpc_cold_1();
  }

  v1 = __atxlog_handle_xpc_log;

  return v1;
}

uint64_t ____atxlog_handle_xpc_block_invoke()
{
  __atxlog_handle_xpc_log = os_log_create("com.apple.duetexpertd.atx", "xpc");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_heuristic()
{
  if (__atxlog_handle_heuristic_onceToken != -1)
  {
    __atxlog_handle_heuristic_cold_1();
  }

  v1 = __atxlog_handle_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_heuristic_block_invoke()
{
  __atxlog_handle_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notifications()
{
  if (__atxlog_handle_notifications_onceToken != -1)
  {
    __atxlog_handle_notifications_cold_1();
  }

  v1 = __atxlog_handle_notifications_log;

  return v1;
}

uint64_t ____atxlog_handle_notifications_block_invoke()
{
  __atxlog_handle_notifications_log = os_log_create("com.apple.duetexpertd.atx", "notifications");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_pmm()
{
  if (__atxlog_handle_pmm_onceToken != -1)
  {
    __atxlog_handle_pmm_cold_1();
  }

  v1 = __atxlog_handle_pmm_log;

  return v1;
}

uint64_t ____atxlog_handle_pmm_block_invoke()
{
  __atxlog_handle_pmm_log = os_log_create("com.apple.duetexpertd.mm", "GENERAL");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_dailyroutines()
{
  if (__atxlog_handle_dailyroutines_onceToken != -1)
  {
    __atxlog_handle_dailyroutines_cold_1();
  }

  v1 = __atxlog_handle_dailyroutines_log;

  return v1;
}

uint64_t ____atxlog_handle_dailyroutines_block_invoke()
{
  __atxlog_handle_dailyroutines_log = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_feedback()
{
  if (__atxlog_handle_feedback_onceToken != -1)
  {
    __atxlog_handle_feedback_cold_1();
  }

  v1 = __atxlog_handle_feedback_log;

  return v1;
}

uint64_t ____atxlog_handle_feedback_block_invoke()
{
  __atxlog_handle_feedback_log = os_log_create("com.apple.duetexpertd.atx", "feedback");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_modes()
{
  if (__atxlog_handle_modes_onceToken != -1)
  {
    __atxlog_handle_modes_cold_1();
  }

  v1 = __atxlog_handle_modes_log;

  return v1;
}

uint64_t ____atxlog_handle_modes_block_invoke()
{
  __atxlog_handle_modes_log = os_log_create("com.apple.duetexpertd.atx", "modes");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_hero()
{
  if (__atxlog_handle_hero_onceToken != -1)
  {
    __atxlog_handle_hero_cold_1();
  }

  v1 = __atxlog_handle_hero_log;

  return v1;
}

uint64_t ____atxlog_handle_hero_block_invoke()
{
  __atxlog_handle_hero_log = os_log_create("com.apple.duetexpertd.atx", "hero");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_deletions()
{
  if (__atxlog_handle_deletions_onceToken != -1)
  {
    __atxlog_handle_deletions_cold_1();
  }

  v1 = __atxlog_handle_deletions_log;

  return v1;
}

uint64_t ____atxlog_handle_deletions_block_invoke()
{
  __atxlog_handle_deletions_log = os_log_create("com.apple.duetexpertd.atx", "deletions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_gi()
{
  if (__atxlog_handle_gi_onceToken != -1)
  {
    __atxlog_handle_gi_cold_1();
  }

  v1 = __atxlog_handle_gi_log;

  return v1;
}

uint64_t ____atxlog_handle_gi_block_invoke()
{
  __atxlog_handle_gi_log = os_log_create("com.apple.duetexpertd.atx", "information");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_timeline()
{
  if (__atxlog_handle_timeline_onceToken != -1)
  {
    __atxlog_handle_timeline_cold_1();
  }

  v1 = __atxlog_handle_timeline_log;

  return v1;
}

uint64_t ____atxlog_handle_timeline_block_invoke()
{
  __atxlog_handle_timeline_log = os_log_create("com.apple.duetexpertd.atx", "timeline");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevant_shortcut()
{
  if (__atxlog_handle_relevant_shortcut_onceToken != -1)
  {
    __atxlog_handle_relevant_shortcut_cold_1();
  }

  v1 = __atxlog_handle_relevant_shortcut_log;

  return v1;
}

uint64_t ____atxlog_handle_relevant_shortcut_block_invoke()
{
  __atxlog_handle_relevant_shortcut_log = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevance_model()
{
  if (__atxlog_handle_relevance_model_onceToken != -1)
  {
    __atxlog_handle_relevance_model_cold_1();
  }

  v1 = __atxlog_handle_relevance_model_log;

  return v1;
}

uint64_t ____atxlog_handle_relevance_model_block_invoke()
{
  __atxlog_handle_relevance_model_log = os_log_create("com.apple.duetexpertd.atx", "relevance_model");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_watch()
{
  if (__atxlog_handle_watch_onceToken != -1)
  {
    __atxlog_handle_watch_cold_1();
  }

  v1 = __atxlog_handle_watch_log;

  return v1;
}

uint64_t ____atxlog_handle_watch_block_invoke()
{
  __atxlog_handle_watch_log = os_log_create("com.apple.duetexpertd.atx", "watch");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ui()
{
  if (__atxlog_handle_ui_onceToken != -1)
  {
    __atxlog_handle_ui_cold_1();
  }

  v1 = __atxlog_handle_ui_log;

  return v1;
}

uint64_t ____atxlog_handle_ui_block_invoke()
{
  __atxlog_handle_ui_log = os_log_create("com.apple.duetexpertd.atx", "UI");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending()
{
  if (__atxlog_handle_blending_onceToken != -1)
  {
    __atxlog_handle_blending_cold_1();
  }

  v1 = __atxlog_handle_blending_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_block_invoke()
{
  __atxlog_handle_blending_log = os_log_create("com.apple.duetexpertd.atx", "blending");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_internal_cache()
{
  if (__atxlog_handle_blending_internal_cache_onceToken != -1)
  {
    __atxlog_handle_blending_internal_cache_cold_1();
  }

  v1 = __atxlog_handle_blending_internal_cache_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_internal_cache_block_invoke()
{
  __atxlog_handle_blending_internal_cache_log = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_ecosystem()
{
  if (__atxlog_handle_blending_ecosystem_onceToken != -1)
  {
    __atxlog_handle_blending_ecosystem_cold_1();
  }

  v1 = __atxlog_handle_blending_ecosystem_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_ecosystem_block_invoke()
{
  __atxlog_handle_blending_ecosystem_log = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_home_screen()
{
  if (__atxlog_handle_home_screen_onceToken != -1)
  {
    __atxlog_handle_home_screen_cold_1();
  }

  v1 = __atxlog_handle_home_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_home_screen_block_invoke()
{
  __atxlog_handle_home_screen_log = os_log_create("com.apple.duetexpertd.atx", "homescreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_sleep_schedule()
{
  if (__atxlog_handle_sleep_schedule_onceToken != -1)
  {
    __atxlog_handle_sleep_schedule_cold_1();
  }

  v1 = __atxlog_handle_sleep_schedule_log;

  return v1;
}

uint64_t ____atxlog_handle_sleep_schedule_block_invoke()
{
  __atxlog_handle_sleep_schedule_log = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_lock_screen()
{
  if (__atxlog_handle_lock_screen_onceToken != -1)
  {
    __atxlog_handle_lock_screen_cold_1();
  }

  v1 = __atxlog_handle_lock_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_lock_screen_block_invoke()
{
  __atxlog_handle_lock_screen_log = os_log_create("com.apple.duetexpertd.atx", "lockscreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_anchor()
{
  if (__atxlog_handle_anchor_onceToken != -1)
  {
    __atxlog_handle_anchor_cold_1();
  }

  v1 = __atxlog_handle_anchor_log;

  return v1;
}

uint64_t ____atxlog_handle_anchor_block_invoke()
{
  __atxlog_handle_anchor_log = os_log_create("com.apple.duetexpertd.atx", "anchor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_prediction()
{
  if (__atxlog_handle_app_prediction_onceToken != -1)
  {
    __atxlog_handle_app_prediction_cold_1();
  }

  v1 = __atxlog_handle_app_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_app_prediction_block_invoke()
{
  __atxlog_handle_app_prediction_log = os_log_create("com.apple.duetexpertd.atx", "app_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_action_prediction()
{
  if (__atxlog_handle_action_prediction_onceToken != -1)
  {
    __atxlog_handle_action_prediction_cold_1();
  }

  v1 = __atxlog_handle_action_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_action_prediction_block_invoke()
{
  __atxlog_handle_action_prediction_log = os_log_create("com.apple.duetexpertd.atx", "action_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_library()
{
  if (__atxlog_handle_app_library_onceToken != -1)
  {
    __atxlog_handle_app_library_cold_1();
  }

  v1 = __atxlog_handle_app_library_log;

  return v1;
}

uint64_t ____atxlog_handle_app_library_block_invoke()
{
  __atxlog_handle_app_library_log = os_log_create("com.apple.duetexpertd.atx", "app_library");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_install()
{
  if (__atxlog_handle_app_install_onceToken != -1)
  {
    __atxlog_handle_app_install_cold_1();
  }

  v1 = __atxlog_handle_app_install_log;

  return v1;
}

uint64_t ____atxlog_handle_app_install_block_invoke()
{
  __atxlog_handle_app_install_log = os_log_create("com.apple.duetexpertd.atx", "app_install");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_backup()
{
  if (__atxlog_handle_backup_onceToken != -1)
  {
    __atxlog_handle_backup_cold_1();
  }

  v1 = __atxlog_handle_backup_log;

  return v1;
}

uint64_t ____atxlog_handle_backup_block_invoke()
{
  __atxlog_handle_backup_log = os_log_create("com.apple.duetexpertd.atx", "backup");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_metrics()
{
  if (__atxlog_handle_metrics_onceToken != -1)
  {
    __atxlog_handle_metrics_cold_1();
  }

  v1 = __atxlog_handle_metrics_log;

  return v1;
}

uint64_t ____atxlog_handle_metrics_block_invoke()
{
  __atxlog_handle_metrics_log = os_log_create("com.apple.duetexpertd.atx", "metrics");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_trial_assets()
{
  if (__atxlog_handle_trial_assets_onceToken != -1)
  {
    __atxlog_handle_trial_assets_cold_1();
  }

  v1 = __atxlog_handle_trial_assets_log;

  return v1;
}

uint64_t ____atxlog_handle_trial_assets_block_invoke()
{
  __atxlog_handle_trial_assets_log = os_log_create("com.apple.duetexpertd.atx", "trial_assets");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_management()
{
  if (__atxlog_handle_notification_management_onceToken != -1)
  {
    __atxlog_handle_notification_management_cold_1();
  }

  v1 = __atxlog_handle_notification_management_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_management_block_invoke()
{
  __atxlog_handle_notification_management_log = os_log_create("com.apple.duetexpertd.atx", "notification_management");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_actions()
{
  if (__atxlog_handle_contextual_actions_onceToken != -1)
  {
    __atxlog_handle_contextual_actions_cold_1();
  }

  v1 = __atxlog_handle_contextual_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_actions_block_invoke()
{
  __atxlog_handle_contextual_actions_log = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_intents_helper()
{
  if (__atxlog_handle_intents_helper_onceToken != -1)
  {
    __atxlog_handle_intents_helper_cold_1();
  }

  v1 = __atxlog_handle_intents_helper_log;

  return v1;
}

uint64_t ____atxlog_handle_intents_helper_block_invoke()
{
  __atxlog_handle_intents_helper_log = os_log_create("com.apple.duetexpertd.atx", "intents_helper");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_heuristic()
{
  if (__atxlog_handle_context_heuristic_onceToken != -1)
  {
    __atxlog_handle_context_heuristic_cold_1();
  }

  v1 = __atxlog_handle_context_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_context_heuristic_block_invoke()
{
  __atxlog_handle_context_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_zkw_hide()
{
  if (__atxlog_handle_zkw_hide_onceToken != -1)
  {
    __atxlog_handle_zkw_hide_cold_1();
  }

  v1 = __atxlog_handle_zkw_hide_log;

  return v1;
}

uint64_t ____atxlog_handle_zkw_hide_block_invoke()
{
  __atxlog_handle_zkw_hide_log = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_user_education_suggestions()
{
  if (__atxlog_handle_context_user_education_suggestions_onceToken != -1)
  {
    __atxlog_handle_context_user_education_suggestions_cold_1();
  }

  v1 = __atxlog_handle_context_user_education_suggestions_log;

  return v1;
}

uint64_t ____atxlog_handle_context_user_education_suggestions_block_invoke()
{
  __atxlog_handle_context_user_education_suggestions_log = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_time_intelligence()
{
  if (__atxlog_handle_time_intelligence_onceToken != -1)
  {
    __atxlog_handle_time_intelligence_cold_1();
  }

  v1 = __atxlog_handle_time_intelligence_log;

  return v1;
}

uint64_t ____atxlog_handle_time_intelligence_block_invoke()
{
  __atxlog_handle_time_intelligence_log = os_log_create("com.apple.duetexpertd.atx", "time");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_engine()
{
  if (__atxlog_handle_contextual_engine_onceToken != -1)
  {
    __atxlog_handle_contextual_engine_cold_1();
  }

  v1 = __atxlog_handle_contextual_engine_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_engine_block_invoke()
{
  __atxlog_handle_contextual_engine_log = os_log_create("com.apple.duetexpertd.atx", "contextualengine");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_usage_insights()
{
  if (__atxlog_handle_usage_insights_onceToken != -1)
  {
    __atxlog_handle_usage_insights_cold_1();
  }

  v1 = __atxlog_handle_usage_insights_log;

  return v1;
}

uint64_t ____atxlog_handle_usage_insights_block_invoke()
{
  __atxlog_handle_usage_insights_log = os_log_create("com.apple.duetexpertd.atx", "usage_insights");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_categorization()
{
  if (__atxlog_handle_notification_categorization_onceToken != -1)
  {
    __atxlog_handle_notification_categorization_cold_1();
  }

  v1 = __atxlog_handle_notification_categorization_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_categorization_block_invoke()
{
  __atxlog_handle_notification_categorization_log = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_settings_actions()
{
  if (__atxlog_handle_settings_actions_onceToken != -1)
  {
    __atxlog_handle_settings_actions_cold_1();
  }

  v1 = __atxlog_handle_settings_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_settings_actions_block_invoke()
{
  __atxlog_handle_settings_actions_log = os_log_create("com.apple.duetexpertd.atx", "settings_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_client_donations()
{
  if (__atxlog_handle_client_donations_onceToken != -1)
  {
    __atxlog_handle_client_donations_cold_1();
  }

  v1 = __atxlog_handle_client_donations_log;

  return v1;
}

uint64_t ____atxlog_handle_client_donations_block_invoke()
{
  __atxlog_handle_client_donations_log = os_log_create("com.apple.duetexpertd.atx", "client_donations");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_carPlay_widgets()
{
  if (__atxlog_handle_carPlay_widgets_onceToken != -1)
  {
    __atxlog_handle_carPlay_widgets_cold_1();
  }

  v1 = __atxlog_handle_carPlay_widgets_log;

  return v1;
}

uint64_t ____atxlog_handle_carPlay_widgets_block_invoke()
{
  __atxlog_handle_carPlay_widgets_log = os_log_create("com.apple.duetexpertd.atx", "carPlay");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_screen_entities()
{
  if (__atxlog_handle_screen_entities_onceToken != -1)
  {
    __atxlog_handle_screen_entities_cold_1();
  }

  v1 = __atxlog_handle_screen_entities_log;

  return v1;
}

uint64_t ____atxlog_handle_screen_entities_block_invoke()
{
  __atxlog_handle_screen_entities_log = os_log_create("com.apple.duetexpertd.atx", "screenEntities");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_document_predictor()
{
  if (__atxlog_handle_document_predictor_onceToken != -1)
  {
    __atxlog_handle_document_predictor_cold_1();
  }

  v1 = __atxlog_handle_document_predictor_log;

  return v1;
}

uint64_t ____atxlog_handle_document_predictor_block_invoke()
{
  __atxlog_handle_document_predictor_log = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ml_inference()
{
  if (__atxlog_handle_ml_inference_onceToken != -1)
  {
    __atxlog_handle_ml_inference_cold_1();
  }

  v1 = __atxlog_handle_ml_inference_log;

  return v1;
}

uint64_t ____atxlog_handle_ml_inference_block_invoke()
{
  __atxlog_handle_ml_inference_log = os_log_create("com.apple.duetexpertd.atx", "inference");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_menu_items()
{
  if (__atxlog_handle_menu_items_onceToken != -1)
  {
    __atxlog_handle_menu_items_cold_1();
  }

  v1 = __atxlog_handle_menu_items_log;

  return v1;
}

uint64_t ____atxlog_handle_menu_items_block_invoke()
{
  __atxlog_handle_menu_items_log = os_log_create("com.apple.duetexpertd.atx", "menuItems");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}