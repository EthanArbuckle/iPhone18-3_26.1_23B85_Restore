uint64_t AWDWiFiMetricsManagerAutoJoinSessionReadFrom(uint64_t a1, void *a2)
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
        v18 = objc_alloc_init(AWDWiFiMetricsManagerAutoJoinRecord);
        [a1 addRecords:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiMetricsManagerAutoJoinRecordReadFrom(v18, a2);
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

uint64_t AWDWiFiMetricsManagerAwdlUsageReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v242) = 0;
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

      v8 |= (v242 & 0x7F) << v6;
      if ((v242 & 0x80) == 0)
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
        *(a1 + 240) |= 4uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v15 |= (v242 & 0x7F) << v13;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_510:
            v240 = 24;
            goto LABEL_523;
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

        goto LABEL_510;
      case 2u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 240) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v121 |= (v242 & 0x7F) << v119;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v11 = v120++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_514;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v121;
        }

LABEL_514:
        v241 = 216;
        goto LABEL_608;
      case 3u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 240) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v101 |= (v242 & 0x7F) << v99;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v11 = v100++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_494;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v101;
        }

LABEL_494:
        v241 = 200;
        goto LABEL_608;
      case 4u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 240) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v111 |= (v242 & 0x7F) << v109;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v11 = v110++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_502;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v111;
        }

LABEL_502:
        v241 = 188;
        goto LABEL_608;
      case 5u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 240) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v71 |= (v242 & 0x7F) << v69;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_470;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v71;
        }

LABEL_470:
        v241 = 184;
        goto LABEL_608;
      case 6u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 240) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v146 |= (v242 & 0x7F) << v144;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v11 = v145++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_535;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v146;
        }

LABEL_535:
        v241 = 84;
        goto LABEL_608;
      case 7u:
        v159 = 0;
        v160 = 0;
        v161 = 0;
        *(a1 + 240) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v161 |= (v242 & 0x7F) << v159;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v159 += 7;
          v11 = v160++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_547;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v161;
        }

LABEL_547:
        v241 = 88;
        goto LABEL_608;
      case 8u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 240) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v116 |= (v242 & 0x7F) << v114;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v11 = v115++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_506;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v116;
        }

LABEL_506:
        v241 = 92;
        goto LABEL_608;
      case 9u:
        v174 = 0;
        v175 = 0;
        v176 = 0;
        *(a1 + 240) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v177 = [a2 position] + 1;
          if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v176 |= (v242 & 0x7F) << v174;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v174 += 7;
          v11 = v175++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_559;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v176;
        }

LABEL_559:
        v241 = 80;
        goto LABEL_608;
      case 0xAu:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 240) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v86 |= (v242 & 0x7F) << v84;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v11 = v85++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_482;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v86;
        }

LABEL_482:
        v241 = 136;
        goto LABEL_608;
      case 0xBu:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        *(a1 + 240) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v171 |= (v242 & 0x7F) << v169;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v11 = v170++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_555;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v171;
        }

LABEL_555:
        v241 = 152;
        goto LABEL_608;
      case 0xCu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 240) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v66 |= (v242 & 0x7F) << v64;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_466;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v66;
        }

LABEL_466:
        v241 = 156;
        goto LABEL_608;
      case 0xDu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 240) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v81 |= (v242 & 0x7F) << v79;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v11 = v80++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_478;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v81;
        }

LABEL_478:
        v241 = 160;
        goto LABEL_608;
      case 0xEu:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 240) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v156 |= (v242 & 0x7F) << v154;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v11 = v155++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_543;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v156;
        }

LABEL_543:
        v241 = 48;
        goto LABEL_608;
      case 0xFu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 240) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v51 |= (v242 & 0x7F) << v49;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_454;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v51;
        }

LABEL_454:
        v241 = 52;
        goto LABEL_608;
      case 0x10u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 240) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v106 |= (v242 & 0x7F) << v104;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v11 = v105++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_498;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v106;
        }

LABEL_498:
        v241 = 208;
        goto LABEL_608;
      case 0x11u:
        v43 = objc_alloc_init(AWDWifiAwdlStateInfo);
        [a1 addStates:v43];

        v242 = 0;
        v243 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWifiAwdlStateInfoReadFrom(v43, a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_419;
      case 0x12u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 240) |= 1uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v131 |= (v242 & 0x7F) << v129;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v11 = v130++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_522;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v131;
        }

LABEL_522:
        v240 = 8;
        goto LABEL_523;
      case 0x13u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 240) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v166 |= (v242 & 0x7F) << v164;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v11 = v165++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_551;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v166;
        }

LABEL_551:
        v241 = 60;
        goto LABEL_608;
      case 0x14u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        *(a1 + 240) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v207 = [a2 position] + 1;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v206 |= (v242 & 0x7F) << v204;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v11 = v205++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_583;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v206;
        }

LABEL_583:
        v241 = 56;
        goto LABEL_608;
      case 0x15u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 240) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v141 |= (v242 & 0x7F) << v139;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v11 = v140++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_531;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v141;
        }

LABEL_531:
        v241 = 68;
        goto LABEL_608;
      case 0x16u:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 240) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v151 |= (v242 & 0x7F) << v149;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v11 = v150++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_539;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v151;
        }

LABEL_539:
        v241 = 64;
        goto LABEL_608;
      case 0x17u:
        v194 = 0;
        v195 = 0;
        v196 = 0;
        *(a1 + 240) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v197 = [a2 position] + 1;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v196 |= (v242 & 0x7F) << v194;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v194 += 7;
          v11 = v195++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_575;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v196;
        }

LABEL_575:
        v241 = 36;
        goto LABEL_608;
      case 0x18u:
        v214 = 0;
        v215 = 0;
        v216 = 0;
        *(a1 + 240) |= 8uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v217 = [a2 position] + 1;
          if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 1, v218 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v216 |= (v242 & 0x7F) << v214;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v214 += 7;
          v11 = v215++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_591;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v216;
        }

LABEL_591:
        v241 = 32;
        goto LABEL_608;
      case 0x19u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 240) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v96 |= (v242 & 0x7F) << v94;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v11 = v95++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_490;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v96;
        }

LABEL_490:
        v241 = 44;
        goto LABEL_608;
      case 0x1Au:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 240) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v91 |= (v242 & 0x7F) << v89;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v11 = v90++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_486;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v91;
        }

LABEL_486:
        v241 = 40;
        goto LABEL_608;
      case 0x1Bu:
        v234 = objc_alloc_init(AWDWifiAwdlServiceRecord);
        [a1 addServices:v234];

        v242 = 0;
        v243 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
          result = AWDWifiAwdlServiceRecordReadFrom(v234, a2);
          if (result)
          {
            goto LABEL_419;
          }
        }

        return result;
      case 0x1Cu:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 240) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v35 |= (v242 & 0x7F) << v33;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_442;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v35;
        }

LABEL_442:
        v241 = 100;
        goto LABEL_608;
      case 0x1Du:
        v219 = 0;
        v220 = 0;
        v221 = 0;
        *(a1 + 240) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v222 = [a2 position] + 1;
          if (v222 >= [a2 position] && (v223 = objc_msgSend(a2, "position") + 1, v223 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v221 |= (v242 & 0x7F) << v219;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v219 += 7;
          v11 = v220++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_595;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v221;
        }

LABEL_595:
        v241 = 76;
        goto LABEL_608;
      case 0x1Eu:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        *(a1 + 240) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v242 & 0x7F) << v224;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v11 = v225++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_599;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v226;
        }

LABEL_599:
        v241 = 124;
        goto LABEL_608;
      case 0x1Fu:
        v179 = 0;
        v180 = 0;
        v181 = 0;
        *(a1 + 240) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v182 = [a2 position] + 1;
          if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v181 |= (v242 & 0x7F) << v179;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v179 += 7;
          v11 = v180++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_563;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v181;
        }

LABEL_563:
        v241 = 120;
        goto LABEL_608;
      case 0x20u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 240) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v126 |= (v242 & 0x7F) << v124;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v11 = v125++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_518;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v126;
        }

LABEL_518:
        v241 = 132;
        goto LABEL_608;
      case 0x21u:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        *(a1 + 240) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (v242 & 0x7F) << v184;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v11 = v185++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_567;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v186;
        }

LABEL_567:
        v241 = 128;
        goto LABEL_608;
      case 0x22u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 240) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v56 |= (v242 & 0x7F) << v54;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_458;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v56;
        }

LABEL_458:
        v241 = 112;
        goto LABEL_608;
      case 0x23u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 240) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v40 |= (v242 & 0x7F) << v38;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_446;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v40;
        }

LABEL_446:
        v241 = 116;
        goto LABEL_608;
      case 0x24u:
        v32 = objc_alloc_init(AWDWifiAwdlHistogramBin);
        [a1 addHopCountHistogram:v32];
        goto LABEL_51;
      case 0x25u:
        v32 = objc_alloc_init(AWDWifiAwdlHistogramBin);
        [a1 addParentRssiHistogram:v32];
LABEL_51:

        v242 = 0;
        v243 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWifiAwdlHistogramBinReadFrom(v32, a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_419;
      case 0x26u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 240) |= 2uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v23 |= (v242 & 0x7F) << v21;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_434;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v23;
        }

LABEL_434:
        v240 = 16;
LABEL_523:
        *(a1 + v240) = v18;
        continue;
      case 0x27u:
        v229 = 0;
        v230 = 0;
        v231 = 0;
        *(a1 + 240) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v232 = [a2 position] + 1;
          if (v232 >= [a2 position] && (v233 = objc_msgSend(a2, "position") + 1, v233 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v231 |= (v242 & 0x7F) << v229;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v229 += 7;
          v11 = v230++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_603;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v231;
        }

LABEL_603:
        v241 = 164;
        goto LABEL_608;
      case 0x28u:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        *(a1 + 240) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v201 |= (v242 & 0x7F) << v199;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v199 += 7;
          v11 = v200++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_579;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v201;
        }

LABEL_579:
        v241 = 168;
        goto LABEL_608;
      case 0x29u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 240) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v76 |= (v242 & 0x7F) << v74;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_474;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v76;
        }

LABEL_474:
        v241 = 172;
        goto LABEL_608;
      case 0x2Au:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 240) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v136 |= (v242 & 0x7F) << v134;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v11 = v135++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_527;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v136;
        }

LABEL_527:
        v241 = 176;
        goto LABEL_608;
      case 0x2Bu:
        v209 = 0;
        v210 = 0;
        v211 = 0;
        *(a1 + 240) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v212 = [a2 position] + 1;
          if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v211 |= (v242 & 0x7F) << v209;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v11 = v210++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_587;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v211;
        }

LABEL_587:
        v241 = 180;
        goto LABEL_608;
      case 0x2Cu:
        v19 = objc_alloc_init(AWDWifiAwdlD2dMigrationStats);

        *(a1 + 104) = v19;
        v242 = 0;
        v243 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWifiAwdlD2dMigrationStatsReadFrom(v19, a2);
        if (!result)
        {
          return result;
        }

LABEL_419:
        PBReaderRecallMark();
        continue;
      case 0x2Du:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 240) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v46 |= (v242 & 0x7F) << v44;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_450;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v46;
        }

LABEL_450:
        v241 = 220;
        goto LABEL_608;
      case 0x2Eu:
        v189 = 0;
        v190 = 0;
        v191 = 0;
        *(a1 + 240) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v192 = [a2 position] + 1;
          if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 1, v193 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v191 |= (v242 & 0x7F) << v189;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v189 += 7;
          v11 = v190++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_571;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v191;
        }

LABEL_571:
        v241 = 204;
        goto LABEL_608;
      case 0x2Fu:
        v235 = 0;
        v236 = 0;
        v237 = 0;
        *(a1 + 240) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
          v238 = [a2 position] + 1;
          if (v238 >= [a2 position] && (v239 = objc_msgSend(a2, "position") + 1, v239 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v237 |= (v242 & 0x7F) << v235;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v235 += 7;
          v11 = v236++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_607;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v237;
        }

LABEL_607:
        v241 = 96;
        goto LABEL_608;
      case 0x30u:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 240) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v242) = 0;
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

          v28 |= (v242 & 0x7F) << v26;
          if ((v242 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_438;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v28;
        }

LABEL_438:
        v241 = 212;
        goto LABEL_608;
      case 0x31u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 240) |= 0x2000uLL;
        break;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        return 0;
    }

    while (1)
    {
      LOBYTE(v242) = 0;
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

      v61 |= (v242 & 0x7F) << v59;
      if ((v242 & 0x80) == 0)
      {
        break;
      }

      v59 += 7;
      v11 = v60++ >= 9;
      if (v11)
      {
        v31 = 0;
        goto LABEL_462;
      }
    }

    if ([a2 hasError])
    {
      v31 = 0;
    }

    else
    {
      v31 = v61;
    }

LABEL_462:
    v241 = 72;
LABEL_608:
    *(a1 + v241) = v31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerBGScanBlacklistedNetworksReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
        v20 = objc_alloc_init(AWDWiFiMetricsManagerBlacklistedNetworkInfo);
        [a1 addBlacklistingHistory:v20];

        v23[0] = 0;
        v23[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiMetricsManagerBlacklistedNetworkInfoReadFrom(v20, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if (v12 == 2)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
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

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_38;
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

LABEL_38:
        *(a1 + 8) = v18;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerBTCoexModeChangeReadFrom(uint64_t a1, void *a2)
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
        v68 = 0;
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

        v7 |= (v68 & 0x7F) << v5;
        if ((v68 & 0x80) == 0)
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
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 52) |= 0x100u;
            while (1)
            {
              v73 = 0;
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

              v42 |= (v73 & 0x7F) << v40;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v10 = v41++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_137;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v42;
            }

LABEL_137:
            v66 = 44;
          }

          else
          {
            if (v12 != 7)
            {
LABEL_120:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_163;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 52) |= 0x80u;
            while (1)
            {
              v72 = 0;
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

              v31 |= (v72 & 0x7F) << v29;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v10 = v30++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_129;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v31;
            }

LABEL_129:
            v66 = 40;
          }
        }

        else
        {
          switch(v12)
          {
            case 8:
              v50 = 0;
              v51 = 0;
              v52 = 0;
              *(a1 + 52) |= 0x200u;
              while (1)
              {
                v71 = 0;
                v53 = [a2 position] + 1;
                if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v52 |= (v71 & 0x7F) << v50;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v10 = v51++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_145;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v52;
              }

LABEL_145:
              v66 = 48;
              break;
            case 9:
              v60 = 0;
              v61 = 0;
              v62 = 0;
              *(a1 + 52) |= 4u;
              while (1)
              {
                v70 = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v62 |= (v70 & 0x7F) << v60;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v60 += 7;
                v10 = v61++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_161;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v62;
              }

LABEL_161:
              v66 = 20;
              break;
            case 0xA:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 52) |= 0x20u;
              while (1)
              {
                v78 = 0;
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

                v21 |= (v78 & 0x7F) << v19;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v10 = v20++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_153;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v21;
              }

LABEL_153:
              v66 = 32;
              break;
            default:
              goto LABEL_120;
          }
        }
      }

      else if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 52) |= 1u;
          while (1)
          {
            v69 = 0;
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

            v36 |= (v69 & 0x7F) << v34;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v39 = 0;
              goto LABEL_133;
            }
          }

          if ([a2 hasError])
          {
            v39 = 0;
          }

          else
          {
            v39 = v36;
          }

LABEL_133:
          *(a1 + 8) = v39;
          goto LABEL_163;
        }

        if (v12 != 2)
        {
          goto LABEL_120;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 52) |= 8u;
        while (1)
        {
          v77 = 0;
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

          v26 |= (v77 & 0x7F) << v24;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_125;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v26;
        }

LABEL_125:
        v66 = 24;
      }

      else
      {
        switch(v12)
        {
          case 3:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v76 = 0;
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

              v47 |= (v76 & 0x7F) << v45;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v10 = v46++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_141;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v47;
            }

LABEL_141:
            v66 = 16;
            break;
          case 4:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              v75 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v75 & 0x7F) << v55;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v10 = v56++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_157;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v57;
            }

LABEL_157:
            v66 = 28;
            break;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 52) |= 0x40u;
            while (1)
            {
              v74 = 0;
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

              v15 |= (v74 & 0x7F) << v13;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_149;
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

LABEL_149:
            v66 = 36;
            break;
          default:
            goto LABEL_120;
        }
      }

      *(a1 + v66) = v18;
LABEL_163:
      v67 = [a2 position];
    }

    while (v67 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerBTCoexStatsReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v191) = 0;
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

      v8 |= (v191 & 0x7F) << v6;
      if ((v191 & 0x80) == 0)
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
        *(a1 + 360) |= 0x8000000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v16 |= (v191 & 0x7F) << v14;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_391:
            v180 = 272;
            goto LABEL_452;
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

        goto LABEL_391;
      case 2u:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 360) |= 2u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v191 & 0x7F) << v92;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_395;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v94;
        }

LABEL_395:
        v180 = 64;
        goto LABEL_452;
      case 3u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 360) |= 1u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v79 |= (v191 & 0x7F) << v77;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_379;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v79;
        }

LABEL_379:
        v180 = 56;
        goto LABEL_452;
      case 4u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 360) |= 0x20000000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v89 |= (v191 & 0x7F) << v87;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v11 = v88++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_387;
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

LABEL_387:
        v180 = 288;
        goto LABEL_452;
      case 5u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 360) |= 0x80u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v191 & 0x7F) << v62;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_367;
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

LABEL_367:
        v180 = 112;
        goto LABEL_452;
      case 6u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 360) |= 0x20u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v191 & 0x7F) << v112;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_411;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v114;
        }

LABEL_411:
        v180 = 96;
        goto LABEL_452;
      case 7u:
        v60 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v61 = 296;
        goto LABEL_225;
      case 8u:
        v60 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v61 = 304;
        goto LABEL_225;
      case 9u:
        v60 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v61 = 320;
        goto LABEL_225;
      case 0xAu:
        v60 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v61 = 312;
        goto LABEL_225;
      case 0xBu:
        v60 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v61 = 336;
        goto LABEL_225;
      case 0xCu:
        v60 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v61 = 328;
        goto LABEL_225;
      case 0xDu:
        v60 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v61 = 352;
        goto LABEL_225;
      case 0xEu:
        v60 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v61 = 344;
LABEL_225:
        *(a1 + v61) = v60;
        v191 = 0;
        v192 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
          result = AWDWiFiMetricsManagerStateMachineReadFrom(v60, a2);
          if (result)
          {
            goto LABEL_227;
          }
        }

        return result;
      case 0xFu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 360) |= 0x200u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v191 & 0x7F) << v50;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_359;
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

LABEL_359:
        v180 = 128;
        goto LABEL_452;
      case 0x10u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 360) |= 0x80000u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v191 & 0x7F) << v82;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v11 = v83++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_383;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v84;
        }

LABEL_383:
        v180 = 208;
        goto LABEL_452;
      case 0x11u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 360) |= 0x200000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v47 |= (v191 & 0x7F) << v45;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_355;
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

LABEL_355:
        v180 = 224;
        goto LABEL_452;
      case 0x12u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 360) |= 0x100u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v191 & 0x7F) << v102;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v11 = v103++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_403;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v104;
        }

LABEL_403:
        v180 = 120;
        goto LABEL_452;
      case 0x13u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 360) |= 0x100000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v124 |= (v191 & 0x7F) << v122;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_419;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v124;
        }

LABEL_419:
        v180 = 216;
        goto LABEL_452;
      case 0x14u:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 360) |= 0x40000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v151 |= (v191 & 0x7F) << v149;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v11 = v150++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_435;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v151;
        }

LABEL_435:
        v180 = 200;
        goto LABEL_452;
      case 0x15u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 360) |= 0x2000u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v191 & 0x7F) << v107;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_407;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v109;
        }

LABEL_407:
        v180 = 160;
        goto LABEL_452;
      case 0x16u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 360) |= 0x20000u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v191 & 0x7F) << v117;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_415;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v119;
        }

LABEL_415:
        v180 = 192;
        goto LABEL_452;
      case 0x17u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 360) |= 0x1000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v141 |= (v191 & 0x7F) << v139;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v11 = v140++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_427;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v141;
        }

LABEL_427:
        v180 = 152;
        goto LABEL_452;
      case 0x18u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 360) |= 0x400u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v156 |= (v191 & 0x7F) << v154;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v11 = v155++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_439;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v156;
        }

LABEL_439:
        v180 = 136;
        goto LABEL_452;
      case 0x19u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 360) |= 0x8000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v74 |= (v191 & 0x7F) << v72;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_375;
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

LABEL_375:
        v180 = 176;
        goto LABEL_452;
      case 0x1Au:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 360) |= 0x800u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v191 & 0x7F) << v67;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_371;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v69;
        }

LABEL_371:
        v180 = 144;
        goto LABEL_452;
      case 0x1Bu:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(a1 + 360) |= 0x4000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v177 |= (v191 & 0x7F) << v175;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v11 = v176++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_451;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v177;
        }

LABEL_451:
        v180 = 168;
        goto LABEL_452;
      case 0x1Cu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 360) |= 0x10000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v37 |= (v191 & 0x7F) << v35;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_347;
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

LABEL_347:
        v180 = 184;
        goto LABEL_452;
      case 0x1Du:
        v159 = 0;
        v160 = 0;
        v161 = 0;
        *(a1 + 360) |= 4u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v161 |= (v191 & 0x7F) << v159;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v159 += 7;
          v11 = v160++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_443;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v161;
        }

LABEL_443:
        v180 = 72;
        goto LABEL_452;
      case 0x1Eu:
        if (v13 == 2)
        {
          v191 = 0;
          v192 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v164 = [a2 position];
            if (v164 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v165 = 0;
            v166 = 0;
            v167 = 0;
            while (1)
            {
              v193 = 0;
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

              v167 |= (v193 & 0x7F) << v165;
              if ((v193 & 0x80) == 0)
              {
                break;
              }

              v165 += 7;
              v11 = v166++ >= 9;
              if (v11)
              {
                goto LABEL_311;
              }
            }

            [a2 hasError];
LABEL_311:
            PBRepeatedUInt64Add();
          }

LABEL_227:
          PBReaderRecallMark();
        }

        else
        {
          v186 = 0;
          v187 = 0;
          v188 = 0;
          while (1)
          {
            LOBYTE(v191) = 0;
            v189 = [a2 position] + 1;
            if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v188 |= (v191 & 0x7F) << v186;
            if ((v191 & 0x80) == 0)
            {
              break;
            }

            v186 += 7;
            v11 = v187++ >= 9;
            if (v11)
            {
              goto LABEL_473;
            }
          }

LABEL_472:
          [a2 hasError];
LABEL_473:
          PBRepeatedUInt64Add();
        }

LABEL_453:
        v4 = a2;
        break;
      case 0x1Fu:
        if (v13 != 2)
        {
          v181 = 0;
          v182 = 0;
          v183 = 0;
          while (1)
          {
            LOBYTE(v191) = 0;
            v184 = [a2 position] + 1;
            if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v183 |= (v191 & 0x7F) << v181;
            if ((v191 & 0x80) == 0)
            {
              goto LABEL_472;
            }

            v181 += 7;
            v11 = v182++ >= 9;
            if (v11)
            {
              goto LABEL_473;
            }
          }
        }

        v191 = 0;
        v192 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v128 = [a2 position];
          if (v128 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_227;
          }

          v129 = 0;
          v130 = 0;
          v131 = 0;
          while (1)
          {
            v193 = 0;
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

            v131 |= (v193 & 0x7F) << v129;
            if ((v193 & 0x80) == 0)
            {
              break;
            }

            v129 += 7;
            v11 = v130++ >= 9;
            if (v11)
            {
              goto LABEL_242;
            }
          }

          [a2 hasError];
LABEL_242:
          PBRepeatedUInt64Add();
        }

      case 0x20u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 360) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v191 & 0x7F) << v97;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v11 = v98++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_399;
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

LABEL_399:
        v180 = 264;
        goto LABEL_452;
      case 0x21u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 360) |= 0x400000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v136 |= (v191 & 0x7F) << v134;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v11 = v135++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_423;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v136;
        }

LABEL_423:
        v180 = 232;
        goto LABEL_452;
      case 0x22u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 360) |= 8u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v191 & 0x7F) << v55;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_363;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v57;
        }

LABEL_363:
        v180 = 80;
        goto LABEL_452;
      case 0x23u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 360) |= 0x800000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v42 |= (v191 & 0x7F) << v40;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_351;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v42;
        }

LABEL_351:
        v180 = 240;
        goto LABEL_452;
      case 0x24u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 360) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v27 |= (v191 & 0x7F) << v25;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_339;
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

LABEL_339:
        v180 = 248;
        goto LABEL_452;
      case 0x25u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 360) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v191) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v191 & 0x7F) << v30;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_343;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v32;
        }

LABEL_343:
        v180 = 256;
        goto LABEL_452;
      case 0x26u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 360) |= 0x10u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v22 |= (v191 & 0x7F) << v20;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_335;
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

LABEL_335:
        v180 = 88;
        goto LABEL_452;
      case 0x27u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 360) |= 0x40u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v172 |= (v191 & 0x7F) << v170;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v11 = v171++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_447;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v172;
        }

LABEL_447:
        v180 = 104;
        goto LABEL_452;
      case 0x28u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 360) |= 0x10000000u;
        while (1)
        {
          LOBYTE(v191) = 0;
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

          v146 |= (v191 & 0x7F) << v144;
          if ((v191 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v11 = v145++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_431;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v146;
        }

LABEL_431:
        v180 = 280;
LABEL_452:
        *(a1 + v180) = v19;
        goto LABEL_453;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_453;
        }

        return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerBlacklistedNetworkInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v29[0]) = 0;
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

        v7 |= (v29[0] & 0x7F) << v5;
        if ((v29[0] & 0x80) == 0)
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
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
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

            v24 |= (v29[0] & 0x7F) << v22;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v10 = v23++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v24;
          }

LABEL_53:
          v27 = 20;
          goto LABEL_54;
        }

        if (v12 == 4)
        {
          v19 = objc_alloc_init(AWDWiFiMetricsManagerBlacklistingInstanceInfo);
          [a1 addBlacklistingRecord:v19];

          v29[0] = 0;
          v29[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiMetricsManagerBlacklistingInstanceInfoReadFrom(v19, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_55;
        }
      }

      else
      {
        if (v12 == 1)
        {
          String = PBReaderReadString();

          *(a1 + 24) = String;
          goto LABEL_55;
        }

        if (v12 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
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

            v15 |= (v29[0] & 0x7F) << v13;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_49;
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

LABEL_49:
          v27 = 16;
LABEL_54:
          *(a1 + v27) = v18;
          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerBlacklistingInstanceInfoReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
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

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
      if ((v11 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v34 = 0;
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

          v27 |= (v34 & 0x7F) << v25;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v27;
        }

LABEL_56:
        v31 = 20;
      }

      else
      {
        if (v12 == 2)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v36 = 0;
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

            v21 |= (v36 & 0x7F) << v19;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_52;
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

LABEL_52:
          *(a1 + 8) = v24;
          goto LABEL_62;
        }

        if (v12 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_62;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v35 = 0;
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

          v15 |= (v35 & 0x7F) << v13;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_60;
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

LABEL_60:
        v31 = 16;
      }

      *(a1 + v31) = v18;
LABEL_62:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerChipCountersReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30) = 0;
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

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
      if ((v11 >> 3) <= 5)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              LOBYTE(v30) = 0;
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

              v19 |= (v30 & 0x7F) << v17;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v10 = v18++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_75;
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

LABEL_75:
            *(a1 + 8) = v22;
            goto LABEL_68;
          }

          if (v12 == 2)
          {
            v16 = objc_alloc_init(AWDWiFiMetricsManagerFrameCounterStats);

            *(a1 + 24) = v16;
LABEL_39:
            v30 = 0;
            v31 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiMetricsManagerFrameCounterStatsReadFrom(v16, a2);
            if (!result)
            {
              return result;
            }

LABEL_67:
            PBReaderRecallMark();
            goto LABEL_68;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v27 = objc_alloc_init(AWDChipCountersTx);

              *(a1 + 80) = v27;
              v30 = 0;
              v31 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDChipCountersTxReadFrom(v27, a2);
              if (!result)
              {
                return result;
              }

              goto LABEL_67;
            case 4:
              v23 = objc_alloc_init(AWDChipErrorCountersTx);

              *(a1 + 72) = v23;
              v30 = 0;
              v31 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDChipErrorCountersTxReadFrom(v23, a2);
              if (!result)
              {
                return result;
              }

              goto LABEL_67;
            case 5:
              v15 = objc_alloc_init(AWDChipCountersRx);

              *(a1 + 40) = v15;
              v30 = 0;
              v31 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDChipCountersRxReadFrom(v15, a2);
              if (!result)
              {
                return result;
              }

              goto LABEL_67;
          }
        }
      }

      else if (v12 > 8)
      {
        switch(v12)
        {
          case 9:
            v25 = objc_alloc_init(AWDWPA2Counters);

            v26 = 88;
            goto LABEL_65;
          case 0xA:
            v25 = objc_alloc_init(AWDWPA2Counters);

            v26 = 32;
LABEL_65:
            *(a1 + v26) = v25;
            v30 = 0;
            v31 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWPA2CountersReadFrom(v25, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_67;
          case 0xB:
            v16 = objc_alloc_init(AWDWiFiMetricsManagerFrameCounterStats);
            [a1 addFrameCounterPerInterface:v16];

            goto LABEL_39;
        }
      }

      else
      {
        switch(v12)
        {
          case 6:
            v28 = objc_alloc_init(AWDMacCountersRxErrors);

            *(a1 + 56) = v28;
            v30 = 0;
            v31 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDMacCountersRxErrorsReadFrom(v28, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_67;
          case 7:
            v24 = objc_alloc_init(AWDMacCountersRx);

            *(a1 + 48) = v24;
            v30 = 0;
            v31 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDMacCountersRxReadFrom(v24, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_67;
          case 8:
            v13 = objc_alloc_init(AWDRxPhyErrors);

            *(a1 + 64) = v13;
            v30 = 0;
            v31 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDRxPhyErrorsReadFrom(v13, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_67;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerChipMemoryReadFrom(uint64_t a1, void *a2)
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
        v53 = 0;
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

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
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
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v54 = 0;
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

              v31 |= (v54 & 0x7F) << v29;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v10 = v30++ >= 9;
              if (v10)
              {
                v34 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v34 = 0;
            }

            else
            {
              v34 = v31;
            }

LABEL_94:
            *(a1 + 8) = v34;
            goto LABEL_120;
          case 2:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 40) |= 0x10u;
            while (1)
            {
              v60 = 0;
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

              v48 |= (v60 & 0x7F) << v46;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v10 = v47++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_118;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v48;
            }

LABEL_118:
            v51 = 28;
            break;
          case 3:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 40) |= 0x40u;
            while (1)
            {
              v59 = 0;
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

              v21 |= (v59 & 0x7F) << v19;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_114;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v21;
            }

LABEL_114:
            v51 = 36;
            break;
          default:
            goto LABEL_62;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            v56 = 0;
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

            v43 |= (v56 & 0x7F) << v41;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v43;
          }

LABEL_102:
          v51 = 24;
        }

        else
        {
          if (v12 != 7)
          {
LABEL_62:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v55 = 0;
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

            v26 |= (v55 & 0x7F) << v24;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v26;
          }

LABEL_110:
          v51 = 20;
        }
      }

      else if (v12 == 4)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 40) |= 0x20u;
        while (1)
        {
          v58 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v58 & 0x7F) << v36;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v10 = v37++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v38;
        }

LABEL_98:
        v51 = 32;
      }

      else
      {
        if (v12 != 5)
        {
          goto LABEL_62;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v57 = 0;
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

          v15 |= (v57 & 0x7F) << v13;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_106;
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

LABEL_106:
        v51 = 16;
      }

      *(a1 + v51) = v18;
LABEL_120:
      v52 = [a2 position];
    }

    while (v52 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerDeviceCountReadFrom(uint64_t a1, void *a2)
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
        v41 = 0;
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

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
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
              v36 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v33;
          }

LABEL_71:
          *(a1 + 16) = v36;
          goto LABEL_83;
        }

        if (v12 != 2)
        {
LABEL_62:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_83;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          v45 = 0;
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

          v21 |= (v45 & 0x7F) << v19;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }

LABEL_79:
        v38 = 24;
      }

      else
      {
        switch(v12)
        {
          case 3:
            *(a1 + 36) |= 1u;
            v40 = 0;
            v24 = [a2 position] + 8;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v40;
            goto LABEL_83;
          case 5:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v44 = 0;
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

              v28 |= (v44 & 0x7F) << v26;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v10 = v27++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_67;
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

LABEL_67:
            v38 = 32;
            break;
          case 7:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v43 = 0;
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

              v15 |= (v43 & 0x7F) << v13;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
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
              v18 = v15;
            }

LABEL_75:
            v38 = 28;
            break;
          default:
            goto LABEL_62;
        }
      }

      *(a1 + v38) = v18;
LABEL_83:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerEventReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
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

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
      if ((v11 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v35 = 0;
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

          v27 |= (v35 & 0x7F) << v25;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_56:
        v31 = 16;
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 == 1)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v34 = 0;
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

              v15 |= (v34 & 0x7F) << v13;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_61;
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

LABEL_61:
            *(a1 + 8) = v18;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v36 = 0;
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

          v21 |= (v36 & 0x7F) << v19;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_52;
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

LABEL_52:
        v31 = 20;
      }

      *(a1 + v31) = v24;
LABEL_62:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerFrameCounterStatsReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
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

              v21 |= (v27 & 0x7F) << v19;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
              if (v10)
              {
                v24 = 0;
                goto LABEL_57;
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

LABEL_57:
            *(a1 + 8) = v24;
            goto LABEL_52;
          case 2:
            v15 = objc_alloc_init(AWDControlFrames);

            v16 = 16;
LABEL_49:
            *(a1 + v16) = v15;
            v27 = 0;
            v28 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDControlFramesReadFrom(v15, a2);
            if (!result)
            {
              return result;
            }

LABEL_51:
            PBReaderRecallMark();
            goto LABEL_52;
          case 3:
            v15 = objc_alloc_init(AWDControlFrames);

            v16 = 40;
            goto LABEL_49;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v17 = objc_alloc_init(AWDManagementFrames);

          v18 = 32;
          goto LABEL_45;
        }

        if (v12 == 7)
        {
          v17 = objc_alloc_init(AWDManagementFrames);

          v18 = 56;
LABEL_45:
          *(a1 + v18) = v17;
          v27 = 0;
          v28 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDManagementFramesReadFrom(v17, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v13 = objc_alloc_init(AWDDataFrames);

          v14 = 24;
          goto LABEL_41;
        }

        if (v12 == 5)
        {
          v13 = objc_alloc_init(AWDDataFrames);

          v14 = 48;
LABEL_41:
          *(a1 + v14) = v13;
          v27 = 0;
          v28 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDDataFramesReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerInfraInterfaceReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v125[0]) = 0;
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

      v8 |= (v125[0] & 0x7F) << v6;
      if ((v125[0] & 0x80) == 0)
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
        *(a1 + 432) |= 4u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v15 |= (v125[0] & 0x7F) << v13;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_302:
            v123 = 24;
            goto LABEL_332;
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

        goto LABEL_302;
      case 2u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 432) |= 2u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v89 |= (v125[0] & 0x7F) << v87;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v11 = v88++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_306;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v89;
        }

LABEL_306:
        v123 = 16;
        goto LABEL_332;
      case 3u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 432) |= 0x100u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v125[0] & 0x7F) << v67;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_286;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v69;
        }

LABEL_286:
        v123 = 72;
        goto LABEL_332;
      case 4u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 432) |= 0x200u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v79 |= (v125[0] & 0x7F) << v77;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_294;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v79;
        }

LABEL_294:
        v123 = 80;
        goto LABEL_332;
      case 5u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 432) |= 0x400u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v49 |= (v125[0] & 0x7F) << v47;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v11 = v48++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_270;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v49;
        }

LABEL_270:
        v123 = 88;
        goto LABEL_332;
      case 6u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 432) |= 0x800u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v125[0] & 0x7F) << v97;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v11 = v98++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v99;
        }

LABEL_314:
        v123 = 96;
        goto LABEL_332;
      case 7u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 432) |= 0x1000u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v125[0] & 0x7F) << v107;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_323;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v109;
        }

LABEL_323:
        v123 = 104;
        goto LABEL_332;
      case 8u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 432) |= 1u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v125[0] & 0x7F) << v82;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v11 = v83++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_298;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v84;
        }

LABEL_298:
        v123 = 8;
        goto LABEL_332;
      case 9u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 432) |= 8u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v125[0] & 0x7F) << v117;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_331;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v119;
        }

LABEL_331:
        v123 = 32;
        goto LABEL_332;
      case 0xAu:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 432) |= 0x10u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v59 |= (v125[0] & 0x7F) << v57;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_278;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v59;
        }

LABEL_278:
        v123 = 40;
        goto LABEL_332;
      case 0xBu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 432) |= 0x20u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v125[0] & 0x7F) << v112;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_327;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v114;
        }

LABEL_327:
        v123 = 48;
        goto LABEL_332;
      case 0xCu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 432) |= 0x40u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v125[0] & 0x7F) << v42;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_266;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v44;
        }

LABEL_266:
        v123 = 56;
        goto LABEL_332;
      case 0xDu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 432) |= 0x80u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v54 |= (v125[0] & 0x7F) << v52;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_274;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v54;
        }

LABEL_274:
        v123 = 64;
LABEL_332:
        *(a1 + v123) = v18;
        continue;
      case 0xEu:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 432) |= 0x80000u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v125[0] & 0x7F) << v102;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v11 = v103++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_318;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v104;
        }

LABEL_318:
        v122 = 380;
        goto LABEL_319;
      case 0xFu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 432) |= 0x10000u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v39 |= (v125[0] & 0x7F) << v37;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_262;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v39;
        }

LABEL_262:
        v122 = 240;
        goto LABEL_319;
      case 0x10u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 432) |= 0x4000u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v74 |= (v125[0] & 0x7F) << v72;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_290;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v74;
        }

LABEL_290:
        v122 = 232;
        goto LABEL_319;
      case 0x11u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 432) |= 0x8000u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v29 |= (v125[0] & 0x7F) << v27;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_254;
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

LABEL_254:
        v122 = 236;
        goto LABEL_319;
      case 0x12u:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 432) |= 0x20000u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v125[0] & 0x7F) << v92;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_310;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v94;
        }

LABEL_310:
        v122 = 296;
        goto LABEL_319;
      case 0x13u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 248;
        goto LABEL_244;
      case 0x14u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 288;
        goto LABEL_244;
      case 0x15u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 264;
        goto LABEL_244;
      case 0x16u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 272;
        goto LABEL_244;
      case 0x17u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 280;
        goto LABEL_244;
      case 0x18u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 256;
        goto LABEL_244;
      case 0x19u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 432) |= 0x40000u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v125[0] & 0x7F) << v62;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_282;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v64;
        }

LABEL_282:
        v122 = 376;
        goto LABEL_319;
      case 0x1Au:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 304;
        goto LABEL_244;
      case 0x1Bu:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 320;
        goto LABEL_244;
      case 0x1Cu:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 328;
        goto LABEL_244;
      case 0x1Du:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 336;
        goto LABEL_244;
      case 0x1Eu:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 344;
        goto LABEL_244;
      case 0x1Fu:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 352;
        goto LABEL_244;
      case 0x20u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 360;
        goto LABEL_244;
      case 0x21u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 368;
        goto LABEL_244;
      case 0x22u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 312;
        goto LABEL_244;
      case 0x23u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 432) |= 0x2000u;
        while (1)
        {
          LOBYTE(v125[0]) = 0;
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

          v23 |= (v125[0] & 0x7F) << v21;
          if ((v125[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_250;
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

LABEL_250:
        v122 = 152;
        goto LABEL_319;
      case 0x24u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 160;
        goto LABEL_244;
      case 0x25u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 176;
        goto LABEL_244;
      case 0x26u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 184;
        goto LABEL_244;
      case 0x27u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 192;
        goto LABEL_244;
      case 0x28u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 200;
        goto LABEL_244;
      case 0x29u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 208;
        goto LABEL_244;
      case 0x2Au:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 216;
        goto LABEL_244;
      case 0x2Bu:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 224;
        goto LABEL_244;
      case 0x2Cu:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 168;
        goto LABEL_244;
      case 0x2Du:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 432) |= 0x100000u;
        break;
      case 0x2Eu:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 408;
        goto LABEL_244;
      case 0x2Fu:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 424;
        goto LABEL_244;
      case 0x30u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 392;
        goto LABEL_244;
      case 0x31u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 416;
        goto LABEL_244;
      case 0x32u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 400;
        goto LABEL_244;
      case 0x33u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 144;
        goto LABEL_244;
      case 0x34u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 112;
        goto LABEL_244;
      case 0x35u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 120;
        goto LABEL_244;
      case 0x36u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 136;
        goto LABEL_244;
      case 0x37u:
        v19 = objc_alloc_init(AWDWiFiMetricsManagerStateMachine);

        v20 = 128;
LABEL_244:
        *(a1 + v20) = v19;
        v125[0] = 0;
        v125[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiMetricsManagerStateMachineReadFrom(v19, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        return 0;
    }

    while (1)
    {
      LOBYTE(v125[0]) = 0;
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

      v34 |= (v125[0] & 0x7F) << v32;
      if ((v125[0] & 0x80) == 0)
      {
        break;
      }

      v32 += 7;
      v11 = v33++ >= 9;
      if (v11)
      {
        v26 = 0;
        goto LABEL_258;
      }
    }

    if ([a2 hasError])
    {
      v26 = 0;
    }

    else
    {
      v26 = v34;
    }

LABEL_258:
    v122 = 384;
LABEL_319:
    *(a1 + v122) = v26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerLastSSIDInfoReadFrom(uint64_t a1, void *a2)
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
        v25 = 0;
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

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
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
      if ((v11 >> 3) == 3)
      {
        Data = PBReaderReadData();

        v20 = Data;
        v21 = 24;
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 == 1)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v26 = 0;
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

              v15 |= (v26 & 0x7F) << v13;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_37;
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

LABEL_37:
            *(a1 + 8) = v18;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v19 = PBReaderReadData();

        v20 = v19;
        v21 = 16;
      }

      *(a1 + v21) = v20;
LABEL_38:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerLeakyAPStatsReadFrom(uint64_t a1, void *a2)
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
        v42 = 0;
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

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        if (v12 != 4)
        {
          if (v12 == 5)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              v46 = 0;
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

              v36 |= (v46 & 0x7F) << v34;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v10 = v35++ >= 9;
              if (v10)
              {
                v39 = 0;
                goto LABEL_81;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v36;
            }

LABEL_81:
            *(a1 + 32) = v39;
            goto LABEL_82;
          }

          if (v12 != 6)
          {
LABEL_45:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_82;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            v43 = 0;
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

            v18 |= (v43 & 0x7F) << v16;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v10 = v17++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_72;
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

LABEL_72:
          v40 = 8;
          goto LABEL_77;
        }

        Data = PBReaderReadData();

        v14 = Data;
        v15 = 40;
      }

      else
      {
        if (v12 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v45 = 0;
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

            v24 |= (v45 & 0x7F) << v22;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v10 = v23++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_68;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_68:
          v40 = 16;
          goto LABEL_77;
        }

        if (v12 == 2)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            v44 = 0;
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

            v31 |= (v44 & 0x7F) << v29;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_76;
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

LABEL_76:
          v40 = 24;
LABEL_77:
          *(a1 + v40) = v21;
          goto LABEL_82;
        }

        if (v12 != 3)
        {
          goto LABEL_45;
        }

        v13 = PBReaderReadData();

        v14 = v13;
        v15 = 48;
      }

      *(a1 + v15) = v14;
LABEL_82:
      v41 = [a2 position];
    }

    while (v41 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerLinkQualityStatsReadFrom(uint64_t a1, void *a2)
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
        v18 = objc_alloc_init(AWDWifiLinkQualityRecord);
        [a1 addStatRecord:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWifiLinkQualityRecordReadFrom(v18, a2);
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

uint64_t AWDWiFiMetricsManagerNetworkTransitionCumulativeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
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

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
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
        if ((v11 & 7) == 2)
        {
          v38[0] = 0;
          v38[1] = 0;
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
              break;
            }

            v27 = 0;
            v28 = 0;
            v29 = 0;
            while (1)
            {
              v39 = 0;
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

              v29 |= (v39 & 0x7F) << v27;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v10 = v28++ >= 9;
              if (v10)
              {
                goto LABEL_52;
              }
            }

            [a2 hasError];
LABEL_52:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
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

            v34 |= (v38[0] & 0x7F) << v32;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
            if (v10)
            {
              goto LABEL_74;
            }
          }

          [a2 hasError];
LABEL_74:
          PBRepeatedUInt32Add();
        }
      }

      else if (v12 == 2)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
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

          v21 |= (v38[0] & 0x7F) << v19;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_58;
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

LABEL_58:
        *(a1 + 40) = v24;
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
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

          v15 |= (v38[0] & 0x7F) << v13;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_62;
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

LABEL_62:
        *(a1 + 32) = v18;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerNetworkTransitionRecordReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
    v6 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
    v7 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
    v8 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v72[0]) = 0;
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

        v11 |= (v72[0] & 0x7F) << v9;
        if ((v72[0] & 0x80) == 0)
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
      if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 4)
      {
        if (v16 > 6)
        {
          if (v16 == 7)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + v5[1004]) |= 0x40u;
            while (1)
            {
              LOBYTE(v72[0]) = 0;
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

              v58 |= (v72[0] & 0x7F) << v56;
              if ((v72[0] & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v14 = v57++ >= 9;
              if (v14)
              {
                v28 = 0;
                goto LABEL_124;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v58;
            }

LABEL_124:
            v62 = 72;
            goto LABEL_133;
          }

          if (v16 == 8)
          {
            if ((v15 & 7) == 2)
            {
              v72[0] = 0;
              v72[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v35 = [a2 position];
                if (v35 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v36 = 0;
                v37 = 0;
                v38 = 0;
                while (1)
                {
                  v73 = 0;
                  v39 = [a2 position] + 1;
                  if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
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
                  v14 = v37++ >= 9;
                  if (v14)
                  {
                    goto LABEL_70;
                  }
                }

                [a2 hasError];
LABEL_70:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v64 = v8;
              v65 = v7;
              v66 = v6;
              v67 = 0;
              v68 = 0;
              v69 = 0;
              while (1)
              {
                LOBYTE(v72[0]) = 0;
                v70 = [a2 position] + 1;
                if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v69 |= (v72[0] & 0x7F) << v67;
                if ((v72[0] & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v14 = v68++ >= 9;
                if (v14)
                {
                  goto LABEL_152;
                }
              }

              [a2 hasError];
LABEL_152:
              PBRepeatedUInt32Add();
              v6 = v66;
              v7 = v65;
              v8 = v64;
              v5 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
            }

            goto LABEL_139;
          }
        }

        else
        {
          if (v16 == 5)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + v5[1004]) |= 0x20u;
            while (1)
            {
              LOBYTE(v72[0]) = 0;
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

              v48 |= (v72[0] & 0x7F) << v46;
              if ((v72[0] & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v14 = v47++ >= 9;
              if (v14)
              {
                v28 = 0;
                goto LABEL_116;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v48;
            }

LABEL_116:
            v62 = 68;
            goto LABEL_133;
          }

          if (v16 == 6)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + v5[1004]) |= 0x10u;
            while (1)
            {
              LOBYTE(v72[0]) = 0;
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

              v25 |= (v72[0] & 0x7F) << v23;
              if ((v72[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v14 = v24++ >= 9;
              if (v14)
              {
                v28 = 0;
                goto LABEL_132;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v25;
            }

LABEL_132:
            v62 = 64;
LABEL_133:
            *(a1 + v62) = v28;
            goto LABEL_139;
          }
        }
      }

      else if (v16 > 2)
      {
        if (v16 == 3)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + v5[1004]) |= 2u;
          while (1)
          {
            LOBYTE(v72[0]) = 0;
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

            v53 |= (v72[0] & 0x7F) << v51;
            if ((v72[0] & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v14 = v52++ >= 9;
            if (v14)
            {
              v22 = 0;
              goto LABEL_120;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v53;
          }

LABEL_120:
          v61 = v8[1007];
          goto LABEL_138;
        }

        if (v16 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + v5[1004]) |= 4u;
          while (1)
          {
            LOBYTE(v72[0]) = 0;
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

            v31 |= (v72[0] & 0x7F) << v29;
            if ((v72[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v14 = v30++ >= 9;
            if (v14)
            {
              v22 = 0;
              goto LABEL_137;
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

LABEL_137:
          v61 = 48;
          goto LABEL_138;
        }
      }

      else
      {
        if (v16 == 1)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + v5[1004]) |= 8u;
          while (1)
          {
            LOBYTE(v72[0]) = 0;
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

            v43 |= (v72[0] & 0x7F) << v41;
            if ((v72[0] & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v14 = v42++ >= 9;
            if (v14)
            {
              v22 = 0;
              goto LABEL_112;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v43;
          }

LABEL_112:
          v61 = v6[1005];
          goto LABEL_138;
        }

        if (v16 == 2)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + v5[1004]) |= 1u;
          while (1)
          {
            LOBYTE(v72[0]) = 0;
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

            v19 |= (v72[0] & 0x7F) << v17;
            if ((v72[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v14 = v18++ >= 9;
            if (v14)
            {
              v22 = 0;
              goto LABEL_128;
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

LABEL_128:
          v61 = v7[1006];
LABEL_138:
          *(a1 + v61) = v22;
          goto LABEL_139;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_139:
      v63 = [a2 position];
    }

    while (v63 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerNetworkTransitionSessionReadFrom(uint64_t a1, void *a2)
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
        v18 = objc_alloc_init(AWDWiFiMetricsManagerNetworkTransitionRecord);
        [a1 addRecords:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiMetricsManagerNetworkTransitionRecordReadFrom(v18, a2);
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

uint64_t AWDWiFiMetricsManagerOneStatsAssociationInfoReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
        if (v12 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
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

            v19 |= (v24 & 0x7F) << v17;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v10 = v18++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_48;
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

LABEL_48:
          *(a1 + 8) = v22;
          goto LABEL_49;
        }

        if (v12 == 2)
        {
          v13 = objc_alloc_init(AWDWiFiMetricsManagerChipCounters);

          *(a1 + 32) = v13;
LABEL_25:
          v24 = 0;
          v25 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiMetricsManagerChipCountersReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

LABEL_33:
          PBReaderRecallMark();
          goto LABEL_49;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v15 = objc_alloc_init(AWDWiFiMetricsManagerBTCoexStats);

            *(a1 + 24) = v15;
            v24 = 0;
            v25 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiMetricsManagerBTCoexStatsReadFrom(v15, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_33;
          case 4:
            v16 = objc_alloc_init(AWDWiFiMetricsManagerBTCoexModeChange);

            *(a1 + 16) = v16;
            v24 = 0;
            v25 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiMetricsManagerBTCoexModeChangeReadFrom(v16, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_33;
          case 5:
            v13 = objc_alloc_init(AWDWiFiMetricsManagerChipCounters);
            [a1 addChipCountersPerSlice:v13];

            goto LABEL_25;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}