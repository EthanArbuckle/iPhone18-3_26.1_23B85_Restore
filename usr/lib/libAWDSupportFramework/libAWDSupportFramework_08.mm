uint64_t AWDLibnetcoreTCPConnectionReportReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 76) |= 8u;
            while (1)
            {
              LOBYTE(v45) = 0;
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

              v33 |= (v45 & 0x7F) << v31;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v10 = v32++ >= 9;
              if (v10)
              {
                LOBYTE(v36) = 0;
                goto LABEL_87;
              }
            }

            v36 = (v33 != 0) & ~[a2 hasError];
LABEL_87:
            *(a1 + 72) = v36;
            goto LABEL_93;
          }

          if (v12 == 4)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 76) |= 4u;
            while (1)
            {
              LOBYTE(v45) = 0;
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

              v19 |= (v45 & 0x7F) << v17;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v10 = v18++ >= 9;
              if (v10)
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
              v22 = v19;
            }

LABEL_81:
            *(a1 + 56) = v22;
            goto LABEL_93;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              LOBYTE(v45) = 0;
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

              v27 |= (v45 & 0x7F) << v25;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                v30 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v27;
            }

LABEL_85:
            v43 = 16;
            goto LABEL_92;
          }

          if (v12 == 2)
          {
            String = PBReaderReadString();

            v14 = String;
            v15 = 32;
            goto LABEL_27;
          }
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v42 = objc_alloc_init(AWDLibnetcoreConnectionStatisticsReport);

          *(a1 + 48) = v42;
          goto LABEL_73;
        }

        if (v12 == 6)
        {
          v23 = objc_alloc_init(AWDLibnetcoreCellularFallbackReport);

          *(a1 + 24) = v23;
          v45 = 0;
          v46 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDLibnetcoreCellularFallbackReportReadFrom(v23, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_75;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 76) |= 1u;
            while (1)
            {
              LOBYTE(v45) = 0;
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

              v39 |= (v45 & 0x7F) << v37;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v10 = v38++ >= 9;
              if (v10)
              {
                v30 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v39;
            }

LABEL_91:
            v43 = 8;
LABEL_92:
            *(a1 + v43) = v30;
            goto LABEL_93;
          case 8:
            v42 = objc_alloc_init(AWDLibnetcoreConnectionStatisticsReport);
            [a1 addConnectionAttemptStatisticsReports:v42];

LABEL_73:
            v45 = 0;
            v46 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDLibnetcoreConnectionStatisticsReportReadFrom(v42, a2);
            if (!result)
            {
              return result;
            }

LABEL_75:
            PBReaderRecallMark();
            goto LABEL_93;
          case 9:
            v13 = PBReaderReadString();

            v14 = v13;
            v15 = 64;
LABEL_27:
            *(a1 + v15) = v14;
            goto LABEL_93;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_93:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLibnetcoreTCPECNInterfaceStatsReportReadFrom(uint64_t a1, void *a2)
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
      v214 = 0;
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

      v8 |= (v214 & 0x7F) << v6;
      if ((v214 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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
        *(a1 + 400) |= 1uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v13;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v13 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__interfaceType;
          v20 = v14++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__interfaceType;
        goto LABEL_511;
      case 2u:
        v113 = 0;
        v114 = 0;
        v15 = 0;
        *(a1 + 400) |= 2uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v113;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v113 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__ipProtocol;
          v20 = v114++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__ipProtocol;
        goto LABEL_511;
      case 3u:
        v97 = 0;
        v98 = 0;
        v15 = 0;
        *(a1 + 400) |= 4uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v97;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v97 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntClientSetup;
          v20 = v98++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntClientSetup;
        goto LABEL_511;
      case 4u:
        v105 = 0;
        v106 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x80000000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v105;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v105 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntServerSetup;
          v20 = v106++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntServerSetup;
        goto LABEL_511;
      case 5u:
        v73 = 0;
        v74 = 0;
        v15 = 0;
        *(a1 + 400) |= 8uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v73;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v73 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntClientSuccess;
          v20 = v74++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntClientSuccess;
        goto LABEL_511;
      case 6u:
        v133 = 0;
        v134 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x100000000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v133;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v133 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntServerSuccess;
          v20 = v134++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntServerSuccess;
        goto LABEL_511;
      case 7u:
        v145 = 0;
        v146 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x8000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v145;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v145 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntNotSupportedPeer;
          v20 = v146++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntNotSupportedPeer;
        goto LABEL_511;
      case 8u:
        v109 = 0;
        v110 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x400000000000uLL;
        while (1)
        {
          v214 = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v109;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v109 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntSynLost;
          v20 = v110++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntSynLost;
        goto LABEL_511;
      case 9u:
        v157 = 0;
        v158 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x200000000000uLL;
        while (1)
        {
          v214 = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v157;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v157 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntSynAckLost;
          v20 = v158++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntSynAckLost;
        goto LABEL_511;
      case 0xAu:
        v85 = 0;
        v86 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x8000000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v85;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v85 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntRecvCE;
          v20 = v86++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntRecvCE;
        goto LABEL_511;
      case 0xBu:
        v153 = 0;
        v154 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x10000000000uLL;
        while (1)
        {
          v214 = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v153;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v153 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntRecvECE;
          v20 = v154++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntRecvECE;
        goto LABEL_511;
      case 0xCu:
        v69 = 0;
        v70 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x40000000000uLL;
        while (1)
        {
          v214 = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v69;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v69 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntSentECE;
          v20 = v70++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntSentECE;
        goto LABEL_511;
      case 0xDu:
        v81 = 0;
        v82 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x80uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v81;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v81 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnRecvCE;
          v20 = v82++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnRecvCE;
        goto LABEL_511;
      case 0xEu:
        v141 = 0;
        v142 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x100uLL;
        while (1)
        {
          v214 = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v141;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v141 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnRecvECE;
          v20 = v142++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnRecvECE;
        goto LABEL_511;
      case 0xFu:
        v57 = 0;
        v58 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x40uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v57;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v57 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnPLNoCE;
          v20 = v58++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnPLNoCE;
        goto LABEL_511;
      case 0x10u:
        v101 = 0;
        v102 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x20uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v101;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v101 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnPLCE;
          v20 = v102++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnPLCE;
        goto LABEL_511;
      case 0x11u:
        v49 = 0;
        v50 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x10uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v49;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v49 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnNoPLCE;
          v20 = v50++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntConnNoPLCE;
        goto LABEL_511;
      case 0x12u:
        v121 = 0;
        v122 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x4000uLL;
        while (1)
        {
          v214 = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v121;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v121 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackSynLoss;
          v20 = v122++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackSynLoss;
        goto LABEL_511;
      case 0x13u:
        v149 = 0;
        v150 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x1000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v149;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v149 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackReorder;
          v20 = v150++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackReorder;
        goto LABEL_511;
      case 0x14u:
        v181 = 0;
        v182 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x200uLL;
        while (1)
        {
          v214 = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v181;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v181 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackCE;
          v20 = v182++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackCE;
        goto LABEL_511;
      case 0x15u:
        v129 = 0;
        v130 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x10000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v129;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v129 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnAvgRTT;
          v20 = v130++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnAvgRTT;
        goto LABEL_511;
      case 0x16u:
        v137 = 0;
        v138 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x100000000uLL;
        while (1)
        {
          v214 = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v137;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v137 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnRTTVar;
          v20 = v138++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnRTTVar;
        goto LABEL_511;
      case 0x17u:
        v173 = 0;
        v174 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x80000000uLL;
        while (1)
        {
          v214 = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v173;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v173 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnOOBPer;
          v20 = v174++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnOOBPer;
        goto LABEL_511;
      case 0x18u:
        v189 = 0;
        v190 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x400000000uLL;
        while (1)
        {
          v214 = 0;
          v191 = [a2 position] + 1;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v189;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v189 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnSACKE;
          v20 = v190++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnSACKE;
        goto LABEL_511;
      case 0x19u:
        v93 = 0;
        v94 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x200000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v93;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v93 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnReorderPer;
          v20 = v94++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnReorderPer;
        goto LABEL_511;
      case 0x1Au:
        v89 = 0;
        v90 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x20000000000uLL;
        while (1)
        {
          v214 = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v89;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v89 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntRxmtPer;
          v20 = v90++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntRxmtPer;
        goto LABEL_511;
      case 0x1Bu:
        v205 = 0;
        v206 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x10000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v205;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v205 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffAvgRTT;
          v20 = v206++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffAvgRTT;
        goto LABEL_511;
      case 0x1Cu:
        v41 = 0;
        v42 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x100000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v41;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v41 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffRTTVar;
          v20 = v42++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffRTTVar;
        goto LABEL_511;
      case 0x1Du:
        v193 = 0;
        v194 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x80000uLL;
        while (1)
        {
          v214 = 0;
          v195 = [a2 position] + 1;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v193;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v193 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffOOBPer;
          v20 = v194++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffOOBPer;
        goto LABEL_511;
      case 0x1Eu:
        v197 = 0;
        v198 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x800000uLL;
        while (1)
        {
          v214 = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v197;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v197 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffSACKE;
          v20 = v198++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffSACKE;
        goto LABEL_511;
      case 0x1Fu:
        v161 = 0;
        v162 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x200000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v161;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v161 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffReorderPer;
          v20 = v162++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffReorderPer;
        goto LABEL_511;
      case 0x20u:
        v117 = 0;
        v118 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x400000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v117;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v117 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffRxmtPer;
          v20 = v118++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffRxmtPer;
        goto LABEL_511;
      case 0x21u:
        v165 = 0;
        v166 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x4000000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v165;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v165 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnTotalTxPkts;
          v20 = v166++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnTotalTxPkts;
        goto LABEL_511;
      case 0x22u:
        v61 = 0;
        v62 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x2000000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v61;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v61 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnTotalRxmtPkts;
          v20 = v62++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnTotalRxmtPkts;
        goto LABEL_511;
      case 0x23u:
        v45 = 0;
        v46 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x1000000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v45;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v45 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnTotalRxPkts;
          v20 = v46++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnTotalRxPkts;
        goto LABEL_511;
      case 0x24u:
        v33 = 0;
        v34 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x800000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v33;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v33 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnTotalOOPkts;
          v20 = v34++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnTotalOOPkts;
        goto LABEL_511;
      case 0x25u:
        v37 = 0;
        v38 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x20000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v37;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v37 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnDropRst;
          v20 = v38++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnDropRst;
        goto LABEL_511;
      case 0x26u:
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x40000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v25;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v25 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnDropRxmt;
          v20 = v26++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOnDropRxmt;
        goto LABEL_511;
      case 0x27u:
        v201 = 0;
        v202 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x8000000uLL;
        while (1)
        {
          v214 = 0;
          v203 = [a2 position] + 1;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v201;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v201 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffTotalTxPkts;
          v20 = v202++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffTotalTxPkts;
        goto LABEL_511;
      case 0x28u:
        v177 = 0;
        v178 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x4000000uLL;
        while (1)
        {
          v214 = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v177;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v177 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffTotalRxmtPkts;
          v20 = v178++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffTotalRxmtPkts;
        goto LABEL_511;
      case 0x29u:
        v77 = 0;
        v78 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x2000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v77;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v77 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffTotalRxPkts;
          v20 = v78++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffTotalRxPkts;
        goto LABEL_511;
      case 0x2Au:
        v125 = 0;
        v126 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x1000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v125;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v125 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffTotalOOPkts;
          v20 = v126++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffTotalOOPkts;
        goto LABEL_511;
      case 0x2Bu:
        v185 = 0;
        v186 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x20000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v185;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v185 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffDropRst;
          v20 = v186++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffDropRst;
        goto LABEL_511;
      case 0x2Cu:
        v21 = 0;
        v22 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x40000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v21;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v21 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffDropRxmt;
          v20 = v22++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntOffDropRxmt;
        goto LABEL_511;
      case 0x2Du:
        v53 = 0;
        v54 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x800000000000uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v53;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v53 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntTotalConnections;
          v20 = v54++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntTotalConnections;
        goto LABEL_511;
      case 0x2Eu:
        v169 = 0;
        v170 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x1000000000000uLL;
        while (1)
        {
          v214 = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v169;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v169 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpUnsentDataAtSleepCnt;
          v20 = v170++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpUnsentDataAtSleepCnt;
        goto LABEL_511;
      case 0x2Fu:
        v209 = 0;
        v210 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x400uLL;
        while (1)
        {
          v214 = 0;
          v211 = [a2 position] + 1;
          if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v214 & 0x7F) << v209;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v209 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackDropRst;
          v20 = v210++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackDropRst;
        goto LABEL_511;
      case 0x30u:
        v29 = 0;
        v30 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x800uLL;
        while (1)
        {
          v214 = 0;
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

          v15 |= (v214 & 0x7F) << v29;
          if ((v214 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v29 += 7;
          v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackDropRxmt;
          v20 = v30++ > 8;
          if (v20)
          {
            goto LABEL_514;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackDropRxmt;
        goto LABEL_511;
      case 0x31u:
        v65 = 0;
        v66 = 0;
        v15 = 0;
        *(a1 + 400) |= 0x2000uLL;
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
      v214 = 0;
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

      v15 |= (v214 & 0x7F) << v65;
      if ((v214 & 0x80) == 0)
      {
        break;
      }

      v18 = 0;
      v65 += 7;
      v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackSYNRst;
      v20 = v66++ > 8;
      if (v20)
      {
        goto LABEL_514;
      }
    }

    v19 = &OBJC_IVAR___AWDLibnetcoreTCPECNInterfaceStatsReport__tcpECNIntFallbackSYNRst;
LABEL_511:
    if ([a2 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

LABEL_514:
    *(a1 + *v19) = v18;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLibnetcoreTCPECNStatsReportReadFrom(uint64_t a1, void *a2)
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
        v118 = 0;
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

        v7 |= (v118 & 0x7F) << v5;
        if ((v118 & 0x80) == 0)
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
          *(a1 + 156) |= 0x40000u;
          while (1)
          {
            v118 = 0;
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

            v14 |= (v118 & 0x7F) << v12;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              LOBYTE(v17) = 0;
LABEL_241:
              v116 = 152;
              goto LABEL_244;
            }
          }

          v17 = (v14 != 0) & ~[a2 hasError];
          goto LABEL_241;
        case 2u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 156) |= 0x80000u;
          while (1)
          {
            v118 = 0;
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

            v71 |= (v118 & 0x7F) << v69;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v10 = v70++ >= 9;
            if (v10)
            {
              LOBYTE(v17) = 0;
              goto LABEL_243;
            }
          }

          v17 = (v71 != 0) & ~[a2 hasError];
LABEL_243:
          v116 = 153;
LABEL_244:
          *(a1 + v116) = v17;
          goto LABEL_278;
        case 3u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 156) |= 1u;
          while (1)
          {
            v118 = 0;
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

            v51 |= (v118 & 0x7F) << v49;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v10 = v50++ >= 9;
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
            v23 = v51;
          }

LABEL_227:
          v115 = 8;
          goto LABEL_277;
        case 4u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 156) |= 0x4000u;
          while (1)
          {
            v118 = 0;
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

            v61 |= (v118 & 0x7F) << v59;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v10 = v60++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_235;
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

LABEL_235:
          v115 = 120;
          goto LABEL_277;
        case 5u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 156) |= 2u;
          while (1)
          {
            v118 = 0;
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

            v36 |= (v118 & 0x7F) << v34;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
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
            v23 = v36;
          }

LABEL_215:
          v115 = 16;
          goto LABEL_277;
        case 6u:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 156) |= 0x8000u;
          while (1)
          {
            v118 = 0;
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

            v82 |= (v118 & 0x7F) << v80;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v10 = v81++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_252;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v82;
          }

LABEL_252:
          v115 = 128;
          goto LABEL_277;
        case 7u:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 156) |= 0x400u;
          while (1)
          {
            v118 = 0;
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

            v92 |= (v118 & 0x7F) << v90;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v10 = v91++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_260;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v92;
          }

LABEL_260:
          v115 = 88;
          goto LABEL_277;
        case 8u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 156) |= 0x20000u;
          while (1)
          {
            v118 = 0;
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

            v66 |= (v118 & 0x7F) << v64;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v10 = v65++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_239;
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

LABEL_239:
          v115 = 144;
          goto LABEL_277;
        case 9u:
          v105 = 0;
          v106 = 0;
          v107 = 0;
          *(a1 + 156) |= 0x10000u;
          while (1)
          {
            v118 = 0;
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

            v107 |= (v118 & 0x7F) << v105;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v105 += 7;
            v10 = v106++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_272;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v107;
          }

LABEL_272:
          v115 = 136;
          goto LABEL_277;
        case 0xAu:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 156) |= 0x800u;
          while (1)
          {
            v118 = 0;
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

            v46 |= (v118 & 0x7F) << v44;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
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
            v23 = v46;
          }

LABEL_223:
          v115 = 96;
          goto LABEL_277;
        case 0xBu:
          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 156) |= 0x1000u;
          while (1)
          {
            v118 = 0;
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

            v102 |= (v118 & 0x7F) << v100;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v10 = v101++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_268;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v102;
          }

LABEL_268:
          v115 = 104;
          goto LABEL_277;
        case 0xCu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 156) |= 0x2000u;
          while (1)
          {
            v118 = 0;
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

            v31 |= (v118 & 0x7F) << v29;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
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
            v23 = v31;
          }

LABEL_211:
          v115 = 112;
          goto LABEL_277;
        case 0xDu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 156) |= 0x20u;
          while (1)
          {
            v118 = 0;
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

            v41 |= (v118 & 0x7F) << v39;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
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
            v23 = v41;
          }

LABEL_219:
          v115 = 48;
          goto LABEL_277;
        case 0xEu:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 156) |= 0x40u;
          while (1)
          {
            v118 = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v118 & 0x7F) << v85;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v10 = v86++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_256;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v87;
          }

LABEL_256:
          v115 = 56;
          goto LABEL_277;
        case 0xFu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 156) |= 0x10u;
          while (1)
          {
            v118 = 0;
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

            v26 |= (v118 & 0x7F) << v24;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
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
            v23 = v26;
          }

LABEL_207:
          v115 = 40;
          goto LABEL_277;
        case 0x10u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 156) |= 8u;
          while (1)
          {
            v118 = 0;
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

            v56 |= (v118 & 0x7F) << v54;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_231;
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

LABEL_231:
          v115 = 32;
          goto LABEL_277;
        case 0x11u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 156) |= 4u;
          while (1)
          {
            v118 = 0;
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

            v20 |= (v118 & 0x7F) << v18;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
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
            v23 = v20;
          }

LABEL_203:
          v115 = 24;
          goto LABEL_277;
        case 0x12u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 156) |= 0x200u;
          while (1)
          {
            v118 = 0;
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

            v76 |= (v118 & 0x7F) << v74;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v10 = v75++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_248;
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

LABEL_248:
          v115 = 80;
          goto LABEL_277;
        case 0x13u:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 156) |= 0x100u;
          while (1)
          {
            v118 = 0;
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

            v97 |= (v118 & 0x7F) << v95;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v10 = v96++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_264;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v97;
          }

LABEL_264:
          v115 = 72;
          goto LABEL_277;
        case 0x14u:
          v110 = 0;
          v111 = 0;
          v112 = 0;
          *(a1 + 156) |= 0x80u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_278;
      }

      while (1)
      {
        v118 = 0;
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

        v112 |= (v118 & 0x7F) << v110;
        if ((v118 & 0x80) == 0)
        {
          break;
        }

        v110 += 7;
        v10 = v111++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_276;
        }
      }

      v23 = [a2 hasError] ? 0 : v112;
LABEL_276:
      v115 = 64;
LABEL_277:
      *(a1 + v115) = v23;
LABEL_278:
      v117 = [a2 position];
    }

    while (v117 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLibnetcoreTCPKernelStatsReadFrom(uint64_t a1, void *a2)
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
        v63 = 0;
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

        v7 |= (v63 & 0x7F) << v5;
        if ((v63 & 0x80) == 0)
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
      if ((v11 >> 3) <= 5)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v33 = 0;
            v34 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x400u;
            while (1)
            {
              v74 = 0;
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

              v15 |= (v74 & 0x7F) << v33;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v18 = v34++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__timestamp;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__timestamp;
            goto LABEL_143;
          }

          if (v12 == 2)
          {
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 96) |= 8u;
            while (1)
            {
              v73 = 0;
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

              v15 |= (v73 & 0x7F) << v29;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieReq;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieReq;
LABEL_143:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_146:
            *(a1 + *v20) = v19;
            goto LABEL_147;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v49 = 0;
              v50 = 0;
              v15 = 0;
              *(a1 + 96) |= 4u;
              while (1)
              {
                v72 = 0;
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

                v15 |= (v72 & 0x7F) << v49;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v18 = v50++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieRcv;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieRcv;
              goto LABEL_143;
            case 4:
              v37 = 0;
              v38 = 0;
              v15 = 0;
              *(a1 + 96) |= 0x40u;
              while (1)
              {
                v71 = 0;
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

                v15 |= (v71 & 0x7F) << v37;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v18 = v38++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoFallback;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoFallback;
              goto LABEL_143;
            case 5:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 96) |= 0x200u;
              while (1)
              {
                v70 = 0;
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

                v15 |= (v70 & 0x7F) << v21;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v18 = v22++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoSynDataSent;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoSynDataSent;
              goto LABEL_143;
          }
        }
      }

      else if (v12 > 8)
      {
        switch(v12)
        {
          case 9:
            v57 = 0;
            v58 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x20u;
            while (1)
            {
              v66 = 0;
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

              v15 |= (v66 & 0x7F) << v57;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v18 = v58++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieSent;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieSent;
            goto LABEL_143;
          case 0xA:
            v45 = 0;
            v46 = 0;
            v15 = 0;
            *(a1 + 96) |= 2u;
            while (1)
            {
              v65 = 0;
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

              v15 |= (v65 & 0x7F) << v45;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v18 = v46++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieInvalid;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieInvalid;
            goto LABEL_143;
          case 0xB:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              v64 = 0;
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

              v15 |= (v64 & 0x7F) << v25;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v18 = v26++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoBlackholed;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoBlackholed;
            goto LABEL_143;
        }
      }

      else
      {
        switch(v12)
        {
          case 6:
            v53 = 0;
            v54 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x80u;
            while (1)
            {
              v69 = 0;
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

              v15 |= (v69 & 0x7F) << v53;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v18 = v54++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoSynDataAcked;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoSynDataAcked;
            goto LABEL_143;
          case 7:
            v41 = 0;
            v42 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x100u;
            while (1)
            {
              v68 = 0;
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

              v15 |= (v68 & 0x7F) << v41;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v18 = v42++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoSynDataRcv;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoSynDataRcv;
            goto LABEL_143;
          case 8:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x10u;
            while (1)
            {
              v67 = 0;
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

              v15 |= (v67 & 0x7F) << v13;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieReqRcv;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPKernelStats__numTfoCookieReqRcv;
            goto LABEL_143;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_147:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLibnetcoreTCPStatsReportReadFrom(uint64_t a1, void *a2)
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
        v51 = 0;
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

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
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
      if ((v11 >> 3) > 4)
      {
        if (v12 > 6)
        {
          if (v12 == 7)
          {
            v45 = 0;
            v46 = 0;
            v15 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              v53 = 0;
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

              v15 |= (v53 & 0x7F) << v45;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v18 = v46++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpConnectionAttempts;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpConnectionAttempts;
            goto LABEL_110;
          }

          if (v12 == 8)
          {
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v52 = 0;
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

              v15 |= (v52 & 0x7F) << v29;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpConnectionAccepts;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpConnectionAccepts;
LABEL_110:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_113:
            *(a1 + *v20) = v19;
            goto LABEL_114;
          }
        }

        else
        {
          if (v12 == 5)
          {
            v37 = 0;
            v38 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x80u;
            while (1)
            {
              v55 = 0;
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

              v15 |= (v55 & 0x7F) << v37;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v18 = v38++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpSendTLRTO;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpSendTLRTO;
            goto LABEL_110;
          }

          if (v12 == 6)
          {
            v21 = 0;
            v22 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x40u;
            while (1)
            {
              v54 = 0;
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

              v15 |= (v54 & 0x7F) << v21;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v18 = v22++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpSendReorderRate;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpSendReorderRate;
            goto LABEL_110;
          }
        }
      }

      else if (v12 > 2)
      {
        if (v12 == 3)
        {
          v41 = 0;
          v42 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x20u;
          while (1)
          {
            v57 = 0;
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

            v15 |= (v57 & 0x7F) << v41;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v18 = v42++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpSendPLR;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpSendPLR;
          goto LABEL_110;
        }

        if (v12 == 4)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x10u;
          while (1)
          {
            v56 = 0;
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

            v15 |= (v56 & 0x7F) << v25;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v18 = v26++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpRecvPLR;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpRecvPLR;
          goto LABEL_110;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v33 = 0;
          v34 = 0;
          v15 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            v59 = 0;
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

            v15 |= (v59 & 0x7F) << v33;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v18 = v34++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpIPv4AvgRTT;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpIPv4AvgRTT;
          goto LABEL_110;
        }

        if (v12 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            v58 = 0;
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

            v15 |= (v58 & 0x7F) << v13;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v18 = v14++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpIPv6AvgRTT;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreTCPStatsReport__tcpIPv6AvgRTT;
          goto LABEL_110;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_114:
      v49 = [a2 position];
    }

    while (v49 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLibnetcoreTCPTFOStatsReportReadFrom(uint64_t a1, void *a2)
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
        v59 = 0;
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

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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
      if ((v11 >> 3) > 5)
      {
        if (v12 <= 7)
        {
          if (v12 == 6)
          {
            v37 = 0;
            v38 = 0;
            v15 = 0;
            *(a1 + 88) |= 0x100u;
            while (1)
            {
              v64 = 0;
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

              v15 |= (v64 & 0x7F) << v37;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v18 = v38++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoSynDataRcv;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoSynDataRcv;
            goto LABEL_132;
          }

          if (v12 == 7)
          {
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 88) |= 0x10u;
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

              v15 |= (v63 & 0x7F) << v29;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieReqRcv;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieReqRcv;
LABEL_132:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_135:
            *(a1 + *v20) = v19;
            goto LABEL_136;
          }
        }

        else
        {
          switch(v12)
          {
            case 8:
              v45 = 0;
              v46 = 0;
              v15 = 0;
              *(a1 + 88) |= 0x20u;
              while (1)
              {
                v62 = 0;
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

                v15 |= (v62 & 0x7F) << v45;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v18 = v46++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieSent;
                  goto LABEL_135;
                }
              }

              v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieSent;
              goto LABEL_132;
            case 9:
              v53 = 0;
              v54 = 0;
              v15 = 0;
              *(a1 + 88) |= 2u;
              while (1)
              {
                v61 = 0;
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

                v15 |= (v61 & 0x7F) << v53;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v18 = v54++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieInvalid;
                  goto LABEL_135;
                }
              }

              v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieInvalid;
              goto LABEL_132;
            case 0xA:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 88) |= 1u;
              while (1)
              {
                v60 = 0;
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

                v15 |= (v60 & 0x7F) << v21;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v18 = v22++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoBlackholed;
                  goto LABEL_135;
                }
              }

              v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoBlackholed;
              goto LABEL_132;
          }
        }
      }

      else if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v33 = 0;
          v34 = 0;
          v15 = 0;
          *(a1 + 88) |= 8u;
          while (1)
          {
            v69 = 0;
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

            v15 |= (v69 & 0x7F) << v33;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v18 = v34++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieReq;
              goto LABEL_135;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieReq;
          goto LABEL_132;
        }

        if (v12 == 2)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          *(a1 + 88) |= 4u;
          while (1)
          {
            v68 = 0;
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

            v15 |= (v68 & 0x7F) << v25;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v18 = v26++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieRcv;
              goto LABEL_135;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoCookieRcv;
          goto LABEL_132;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v41 = 0;
            v42 = 0;
            v15 = 0;
            *(a1 + 88) |= 0x40u;
            while (1)
            {
              v67 = 0;
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

              v15 |= (v67 & 0x7F) << v41;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v18 = v42++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoFallback;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoFallback;
            goto LABEL_132;
          case 4:
            v49 = 0;
            v50 = 0;
            v15 = 0;
            *(a1 + 88) |= 0x200u;
            while (1)
            {
              v66 = 0;
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

              v15 |= (v66 & 0x7F) << v49;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v18 = v50++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoSynDataSent;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoSynDataSent;
            goto LABEL_132;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 88) |= 0x80u;
            while (1)
            {
              v65 = 0;
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

              v15 |= (v65 & 0x7F) << v13;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoSynDataAcked;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreTCPTFOStatsReport__numTfoSynDataAcked;
            goto LABEL_132;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_136:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMPTCPConnectionInterfaceReportReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v62[0]) = 0;
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

        v7 |= (v62[0] & 0x7F) << v5;
        if ((v62[0] & 0x80) == 0)
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
      if ((v11 >> 3) > 4)
      {
        if (v12 > 6)
        {
          if (v12 == 7)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 76) |= 8u;
            while (1)
            {
              LOBYTE(v62[0]) = 0;
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

              v51 |= (v62[0] & 0x7F) << v49;
              if ((v62[0] & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v10 = v50++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_111;
              }
            }

            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v51;
            }

LABEL_111:
            v55 = 64;
            goto LABEL_116;
          }

          if (v12 == 8)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *(a1 + 76) |= 0x20u;
            while (1)
            {
              LOBYTE(v62[0]) = 0;
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

              v28 |= (v62[0] & 0x7F) << v26;
              if ((v62[0] & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v10 = v27++ >= 9;
              if (v10)
              {
                LOBYTE(v31) = 0;
                goto LABEL_123;
              }
            }

            v31 = (v28 != 0) & ~[a2 hasError];
LABEL_123:
            *(a1 + 72) = v31;
            goto LABEL_136;
          }
        }

        else
        {
          if (v12 == 5)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              LOBYTE(v62[0]) = 0;
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

              v39 |= (v62[0] & 0x7F) << v37;
              if ((v62[0] & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v10 = v38++ >= 9;
              if (v10)
              {
                v25 = 0;
                goto LABEL_107;
              }
            }

            if ([a2 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v39;
            }

LABEL_107:
            v54 = 40;
            goto LABEL_121;
          }

          if (v12 == 6)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 76) |= 0x10u;
            while (1)
            {
              LOBYTE(v62[0]) = 0;
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

              v16 |= (v62[0] & 0x7F) << v14;
              if ((v62[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v10 = v15++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_115;
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

LABEL_115:
            v55 = 68;
LABEL_116:
            *(a1 + v55) = v19;
            goto LABEL_136;
          }
        }
      }

      else if (v12 > 2)
      {
        if (v12 == 3)
        {
          if ((v11 & 7) == 2)
          {
            v62[0] = 0;
            v62[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v43 = [a2 position];
              if (v43 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v44 = 0;
              v45 = 0;
              v46 = 0;
              while (1)
              {
                v63 = 0;
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

                v46 |= (v63 & 0x7F) << v44;
                if ((v63 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v10 = v45++ >= 9;
                if (v10)
                {
                  goto LABEL_88;
                }
              }

              [a2 hasError];
LABEL_88:
              PBRepeatedInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            while (1)
            {
              LOBYTE(v62[0]) = 0;
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

              v58 |= (v62[0] & 0x7F) << v56;
              if ((v62[0] & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v10 = v57++ >= 9;
              if (v10)
              {
                goto LABEL_135;
              }
            }

            [a2 hasError];
LABEL_135:
            PBRepeatedInt32Add();
          }

          goto LABEL_136;
        }

        if (v12 == 4)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 76) |= 1u;
          while (1)
          {
            LOBYTE(v62[0]) = 0;
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

            v22 |= (v62[0] & 0x7F) << v20;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_120;
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

LABEL_120:
          v54 = 32;
          goto LABEL_121;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            LOBYTE(v62[0]) = 0;
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

            v34 |= (v62[0] & 0x7F) << v32;
            if ((v62[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_103;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v34;
          }

LABEL_103:
          v54 = 48;
LABEL_121:
          *(a1 + v54) = v25;
          goto LABEL_136;
        }

        if (v12 == 2)
        {
          String = PBReaderReadString();

          *(a1 + 56) = String;
          goto LABEL_136;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_136:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMPTCPConnectionReportReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v91) = 0;
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

        v7 |= (v91 & 0x7F) << v5;
        if ((v91 & 0x80) == 0)
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
          *(a1 + 104) |= 4u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v14 |= (v91 & 0x7F) << v12;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_164:
              *(a1 + 24) = v17;
              goto LABEL_186;
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

          goto LABEL_164;
        case 2u:
          String = PBReaderReadString();

          v45 = String;
          v46 = 32;
          goto LABEL_92;
        case 3u:
          v44 = PBReaderReadString();

          v45 = v44;
          v46 = 48;
LABEL_92:
          *(a1 + v46) = v45;
          goto LABEL_186;
        case 4u:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 104) |= 0x400u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v54 |= (v91 & 0x7F) << v52;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v10 = v53++ >= 9;
            if (v10)
            {
              LOBYTE(v27) = 0;
              goto LABEL_160;
            }
          }

          v27 = (v54 != 0) & ~[a2 hasError];
LABEL_160:
          v86 = 98;
          goto LABEL_175;
        case 5u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 104) |= 8u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v30 |= (v91 & 0x7F) << v28;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_148;
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

LABEL_148:
          v87 = 40;
          goto LABEL_180;
        case 6u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 104) |= 0x800u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v63 |= (v91 & 0x7F) << v61;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
            if (v10)
            {
              LOBYTE(v27) = 0;
              goto LABEL_166;
            }
          }

          v27 = (v63 != 0) & ~[a2 hasError];
LABEL_166:
          v86 = 99;
          goto LABEL_175;
        case 7u:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 104) |= 0x100u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v73 |= (v91 & 0x7F) << v71;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v10 = v72++ >= 9;
            if (v10)
            {
              LOBYTE(v27) = 0;
              goto LABEL_172;
            }
          }

          v27 = (v73 != 0) & ~[a2 hasError];
LABEL_172:
          v86 = 96;
          goto LABEL_175;
        case 8u:
          *(a1 + 104) |= 1u;
          v91 = 0;
          v57 = [a2 position] + 8;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 8, v58 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v88 = v91;
          v89 = 8;
          goto LABEL_185;
        case 9u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 104) |= 0x10u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v83 |= (v91 & 0x7F) << v81;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v10 = v82++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v83;
          }

LABEL_179:
          v87 = 56;
          goto LABEL_180;
        case 0xAu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 104) |= 0x200u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v41 |= (v91 & 0x7F) << v39;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              LOBYTE(v27) = 0;
              goto LABEL_154;
            }
          }

          v27 = (v41 != 0) & ~[a2 hasError];
LABEL_154:
          v86 = 97;
          goto LABEL_175;
        case 0xBu:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 104) |= 0x1000u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v78 |= (v91 & 0x7F) << v76;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v10 = v77++ >= 9;
            if (v10)
            {
              LOBYTE(v27) = 0;
              goto LABEL_174;
            }
          }

          v27 = (v78 != 0) & ~[a2 hasError];
LABEL_174:
          v86 = 100;
          goto LABEL_175;
        case 0xCu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 104) |= 0x2000u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v24 |= (v91 & 0x7F) << v22;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v10 = v23++ >= 9;
            if (v10)
            {
              LOBYTE(v27) = 0;
              goto LABEL_144;
            }
          }

          v27 = (v24 != 0) & ~[a2 hasError];
LABEL_144:
          v86 = 101;
LABEL_175:
          *(a1 + v86) = v27;
          goto LABEL_186;
        case 0xDu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 104) |= 0x20u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v36 |= (v91 & 0x7F) << v34;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_152;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v36;
          }

LABEL_152:
          v87 = 72;
          goto LABEL_180;
        case 0xEu:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 104) |= 0x40u;
          while (1)
          {
            LOBYTE(v91) = 0;
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

            v68 |= (v91 & 0x7F) << v66;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_170;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v68;
          }

LABEL_170:
          v87 = 76;
          goto LABEL_180;
        case 0xFu:
          *(a1 + 104) |= 2u;
          v91 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v88 = v91;
          v89 = 16;
LABEL_185:
          *(a1 + v89) = v88;
          goto LABEL_186;
        case 0x10u:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 104) |= 0x80u;
          break;
        case 0x11u:
          v18 = objc_alloc_init(AWDMPTCPConnectionInterfaceReport);
          [a1 addInterfaceReports:v18];

          v91 = 0;
          v92 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDMPTCPConnectionInterfaceReportReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_95;
        case 0x12u:
          v60 = objc_alloc_init(AWDMPTCPSubflowSwitchingReport);
          [a1 addSubflowSwitchingReports:v60];

          v91 = 0;
          v92 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDMPTCPSubflowSwitchingReportReadFrom(v60, a2);
          if (!result)
          {
            return result;
          }

LABEL_95:
          PBReaderRecallMark();
          goto LABEL_186;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_186;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v91) = 0;
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

        v49 |= (v91 & 0x7F) << v47;
        if ((v91 & 0x80) == 0)
        {
          break;
        }

        v47 += 7;
        v10 = v48++ >= 9;
        if (v10)
        {
          v33 = 0;
          goto LABEL_158;
        }
      }

      v33 = [a2 hasError] ? 0 : v49;
LABEL_158:
      v87 = 80;
LABEL_180:
      *(a1 + v87) = v33;
LABEL_186:
      v90 = [a2 position];
    }

    while (v90 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMPTCPSubflowSwitchingReportReadFrom(uint64_t a1, void *a2)
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
        String = PBReaderReadString();

        v14 = String;
        v15 = 32;
LABEL_44:
        *(a1 + v15) = v14;
        goto LABEL_53;
      }

      if (v12 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_53;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        v33 = 0;
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

        v18 |= (v33 & 0x7F) << v16;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v10 = v17++ >= 9;
        if (v10)
        {
          v21 = 0;
          goto LABEL_48;
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

LABEL_48:
      *(a1 + 16) = v21;
LABEL_53:
      v30 = [a2 position];
      if (v30 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v32 = 0;
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

        v25 |= (v32 & 0x7F) << v23;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v10 = v24++ >= 9;
        if (v10)
        {
          v28 = 0;
          goto LABEL_52;
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

LABEL_52:
      *(a1 + 8) = v28;
      goto LABEL_53;
    }

    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v13 = PBReaderReadString();

    v14 = v13;
    v15 = 24;
    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNWAPIUsageReadFrom(uint64_t a1, void *a2)
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
      v232 = 0;
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

      v8 |= (v232 & 0x7F) << v6;
      if ((v232 & 0x80) == 0)
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
        *(a1 + 348) |= 0x10000000000uLL;
        while (1)
        {
          v232 = 0;
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

          v15 |= (v232 & 0x7F) << v13;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_487:
            v231 = 328;
            goto LABEL_578;
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

        goto LABEL_487;
      case 2u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 348) |= 1uLL;
        while (1)
        {
          v232 = 0;
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

          v116 |= (v232 & 0x7F) << v114;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v11 = v115++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_491;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v116;
        }

LABEL_491:
        v231 = 8;
        goto LABEL_578;
      case 3u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 348) |= 2uLL;
        while (1)
        {
          v232 = 0;
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

          v96 |= (v232 & 0x7F) << v94;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v11 = v95++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_471;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v96;
        }

LABEL_471:
        v231 = 16;
        goto LABEL_578;
      case 4u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 348) |= 0x10uLL;
        while (1)
        {
          v232 = 0;
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

          v106 |= (v232 & 0x7F) << v104;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v11 = v105++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_479;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v106;
        }

LABEL_479:
        v231 = 40;
        goto LABEL_578;
      case 5u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 348) |= 0x20uLL;
        while (1)
        {
          v232 = 0;
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

          v66 |= (v232 & 0x7F) << v64;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_447;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v66;
        }

LABEL_447:
        v231 = 48;
        goto LABEL_578;
      case 6u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 348) |= 0x1000000uLL;
        while (1)
        {
          v232 = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v232 & 0x7F) << v140;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v11 = v141++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_509;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v142;
        }

LABEL_509:
        v231 = 200;
        goto LABEL_578;
      case 7u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 348) |= 0x2000000uLL;
        while (1)
        {
          v232 = 0;
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

          v157 |= (v232 & 0x7F) << v155;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v11 = v156++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_521;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v157;
        }

LABEL_521:
        v231 = 208;
        goto LABEL_578;
      case 8u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 348) |= 0x1000uLL;
        while (1)
        {
          v232 = 0;
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

          v111 |= (v232 & 0x7F) << v109;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v11 = v110++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_483;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v111;
        }

LABEL_483:
        v231 = 104;
        goto LABEL_578;
      case 9u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 348) |= 0x2000uLL;
        while (1)
        {
          v232 = 0;
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

          v172 |= (v232 & 0x7F) << v170;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v11 = v171++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_533;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v172;
        }

LABEL_533:
        v231 = 112;
        goto LABEL_578;
      case 0xAu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 348) |= 0x4000uLL;
        while (1)
        {
          v232 = 0;
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

          v81 |= (v232 & 0x7F) << v79;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v11 = v80++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_459;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v81;
        }

LABEL_459:
        v231 = 120;
        goto LABEL_578;
      case 0xBu:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 348) |= 0x10000000uLL;
        while (1)
        {
          v232 = 0;
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

          v167 |= (v232 & 0x7F) << v165;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v11 = v166++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_529;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v167;
        }

LABEL_529:
        v231 = 232;
        goto LABEL_578;
      case 0xCu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 348) |= 0x40000uLL;
        while (1)
        {
          v232 = 0;
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

          v61 |= (v232 & 0x7F) << v59;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v11 = v60++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_443;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v61;
        }

LABEL_443:
        v231 = 152;
        goto LABEL_578;
      case 0xDu:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 348) |= 0x400000uLL;
        while (1)
        {
          v232 = 0;
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

          v76 |= (v232 & 0x7F) << v74;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_455;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v76;
        }

LABEL_455:
        v231 = 184;
        goto LABEL_578;
      case 0xEu:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 348) |= 0x8000uLL;
        while (1)
        {
          v232 = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v232 & 0x7F) << v150;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v11 = v151++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_517;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v152;
        }

LABEL_517:
        v231 = 128;
        goto LABEL_578;
      case 0xFu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 348) |= 0x10000uLL;
        while (1)
        {
          v232 = 0;
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

          v51 |= (v232 & 0x7F) << v49;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_435;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v51;
        }

LABEL_435:
        v231 = 136;
        goto LABEL_578;
      case 0x10u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 348) |= 0x800000uLL;
        while (1)
        {
          v232 = 0;
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

          v101 |= (v232 & 0x7F) << v99;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v11 = v100++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_475;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v101;
        }

LABEL_475:
        v231 = 192;
        goto LABEL_578;
      case 0x11u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 348) |= 0x80000uLL;
        while (1)
        {
          v232 = 0;
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

          v46 |= (v232 & 0x7F) << v44;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_431;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v46;
        }

LABEL_431:
        v231 = 160;
        goto LABEL_578;
      case 0x12u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 348) |= 0x20000uLL;
        while (1)
        {
          v232 = 0;
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

          v126 |= (v232 & 0x7F) << v124;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v11 = v125++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_499;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v126;
        }

LABEL_499:
        v231 = 144;
        goto LABEL_578;
      case 0x13u:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 348) |= 0x100000uLL;
        while (1)
        {
          v232 = 0;
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

          v162 |= (v232 & 0x7F) << v160;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v11 = v161++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_525;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v162;
        }

LABEL_525:
        v231 = 168;
        goto LABEL_578;
      case 0x14u:
        v195 = 0;
        v196 = 0;
        v197 = 0;
        *(a1 + 348) |= 0x200000uLL;
        while (1)
        {
          v232 = 0;
          v198 = [a2 position] + 1;
          if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 1, v199 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v197 |= (v232 & 0x7F) << v195;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v195 += 7;
          v11 = v196++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_553;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v197;
        }

LABEL_553:
        v231 = 176;
        goto LABEL_578;
      case 0x15u:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        *(a1 + 348) |= 0x4000000000uLL;
        while (1)
        {
          v232 = 0;
          v138 = [a2 position] + 1;
          if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v137 |= (v232 & 0x7F) << v135;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v11 = v136++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_505;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v137;
        }

LABEL_505:
        v231 = 312;
        goto LABEL_578;
      case 0x16u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 348) |= 0x400000000uLL;
        while (1)
        {
          v232 = 0;
          v148 = [a2 position] + 1;
          if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v147 |= (v232 & 0x7F) << v145;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v11 = v146++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_513;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v147;
        }

LABEL_513:
        v231 = 280;
        goto LABEL_578;
      case 0x17u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 348) |= 0x800000000uLL;
        while (1)
        {
          v232 = 0;
          v188 = [a2 position] + 1;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v187 |= (v232 & 0x7F) << v185;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v11 = v186++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_545;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v187;
        }

LABEL_545:
        v231 = 288;
        goto LABEL_578;
      case 0x18u:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        *(a1 + 348) |= 0x1000000000uLL;
        while (1)
        {
          v232 = 0;
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

          v207 |= (v232 & 0x7F) << v205;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v205 += 7;
          v11 = v206++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_561;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v207;
        }

LABEL_561:
        v231 = 296;
        goto LABEL_578;
      case 0x19u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 348) |= 0x2000000000uLL;
        while (1)
        {
          v232 = 0;
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

          v91 |= (v232 & 0x7F) << v89;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v11 = v90++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_467;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v91;
        }

LABEL_467:
        v231 = 304;
        goto LABEL_578;
      case 0x1Au:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 348) |= 0x200000000uLL;
        while (1)
        {
          v232 = 0;
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

          v86 |= (v232 & 0x7F) << v84;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v11 = v85++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_463;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v86;
        }

LABEL_463:
        v231 = 272;
        goto LABEL_578;
      case 0x1Bu:
        v225 = 0;
        v226 = 0;
        v227 = 0;
        *(a1 + 348) |= 0x20000000uLL;
        while (1)
        {
          v232 = 0;
          v228 = [a2 position] + 1;
          if (v228 >= [a2 position] && (v229 = objc_msgSend(a2, "position") + 1, v229 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v227 |= (v232 & 0x7F) << v225;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v225 += 7;
          v11 = v226++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_577;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v227;
        }

LABEL_577:
        v231 = 240;
        goto LABEL_578;
      case 0x1Cu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 348) |= 0x40000000uLL;
        while (1)
        {
          v232 = 0;
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

          v36 |= (v232 & 0x7F) << v34;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_423;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v36;
        }

LABEL_423:
        v231 = 248;
        goto LABEL_578;
      case 0x1Du:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        *(a1 + 348) |= 0x80000000uLL;
        while (1)
        {
          v232 = 0;
          v213 = [a2 position] + 1;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 1, v214 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v212 |= (v232 & 0x7F) << v210;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v11 = v211++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_565;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v212;
        }

LABEL_565:
        v231 = 256;
        goto LABEL_578;
      case 0x1Eu:
        v215 = 0;
        v216 = 0;
        v217 = 0;
        *(a1 + 348) |= 0x100000000uLL;
        while (1)
        {
          v232 = 0;
          v218 = [a2 position] + 1;
          if (v218 >= [a2 position] && (v219 = objc_msgSend(a2, "position") + 1, v219 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v217 |= (v232 & 0x7F) << v215;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v215 += 7;
          v11 = v216++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_569;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v217;
        }

LABEL_569:
        v231 = 264;
        goto LABEL_578;
      case 0x1Fu:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(a1 + 348) |= 0x4000000uLL;
        while (1)
        {
          v232 = 0;
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

          v177 |= (v232 & 0x7F) << v175;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v11 = v176++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_537;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v177;
        }

LABEL_537:
        v231 = 216;
        goto LABEL_578;
      case 0x20u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 348) |= 0x8000000uLL;
        while (1)
        {
          v232 = 0;
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

          v121 |= (v232 & 0x7F) << v119;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v11 = v120++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_495;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v121;
        }

LABEL_495:
        v231 = 224;
        goto LABEL_578;
      case 0x21u:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(a1 + 348) |= 0x200uLL;
        while (1)
        {
          v232 = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (v232 & 0x7F) << v180;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v11 = v181++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_541;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v182;
        }

LABEL_541:
        v231 = 80;
        goto LABEL_578;
      case 0x22u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 348) |= 0x100uLL;
        while (1)
        {
          v232 = 0;
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

          v56 |= (v232 & 0x7F) << v54;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_439;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v56;
        }

LABEL_439:
        v231 = 72;
        goto LABEL_578;
      case 0x23u:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 348) |= 0x80uLL;
        while (1)
        {
          v232 = 0;
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

          v41 |= (v232 & 0x7F) << v39;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_427;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v41;
        }

LABEL_427:
        v231 = 64;
        goto LABEL_578;
      case 0x24u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 348) |= 0x40uLL;
        while (1)
        {
          v232 = 0;
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

          v26 |= (v232 & 0x7F) << v24;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_415;
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

LABEL_415:
        v231 = 56;
        goto LABEL_578;
      case 0x25u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 348) |= 4uLL;
        while (1)
        {
          v232 = 0;
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

          v31 |= (v232 & 0x7F) << v29;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_419;
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

LABEL_419:
        v231 = 24;
        goto LABEL_578;
      case 0x26u:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 348) |= 8uLL;
        while (1)
        {
          v232 = 0;
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

          v21 |= (v232 & 0x7F) << v19;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_411;
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

LABEL_411:
        v231 = 32;
        goto LABEL_578;
      case 0x27u:
        v220 = 0;
        v221 = 0;
        v222 = 0;
        *(a1 + 348) |= 0x400uLL;
        while (1)
        {
          v232 = 0;
          v223 = [a2 position] + 1;
          if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 1, v224 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v222 |= (v232 & 0x7F) << v220;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v220 += 7;
          v11 = v221++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_573;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v222;
        }

LABEL_573:
        v231 = 88;
        goto LABEL_578;
      case 0x28u:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        *(a1 + 348) |= 0x800uLL;
        while (1)
        {
          v232 = 0;
          v193 = [a2 position] + 1;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v192 |= (v232 & 0x7F) << v190;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v11 = v191++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_549;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v192;
        }

LABEL_549:
        v231 = 96;
        goto LABEL_578;
      case 0x29u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 348) |= 0x20000000000uLL;
        while (1)
        {
          v232 = 0;
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

          v71 |= (v232 & 0x7F) << v69;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_451;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v71;
        }

LABEL_451:
        v231 = 336;
        goto LABEL_578;
      case 0x2Au:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 348) |= 0x40000000000uLL;
        while (1)
        {
          v232 = 0;
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

          v131 |= (v232 & 0x7F) << v129;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v11 = v130++ >= 9;
          if (v11)
          {
            LOBYTE(v134) = 0;
            goto LABEL_501;
          }
        }

        v134 = (v131 != 0) & ~[a2 hasError];
LABEL_501:
        *(a1 + 344) = v134;
        continue;
      case 0x2Bu:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        *(a1 + 348) |= 0x8000000000uLL;
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
      v232 = 0;
      v203 = [a2 position] + 1;
      if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v202 |= (v232 & 0x7F) << v200;
      if ((v232 & 0x80) == 0)
      {
        break;
      }

      v200 += 7;
      v11 = v201++ >= 9;
      if (v11)
      {
        v18 = 0;
        goto LABEL_557;
      }
    }

    if ([a2 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v202;
    }

LABEL_557:
    v231 = 320;
LABEL_578:
    *(a1 + v231) = v18;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNWAccumulatorReadFrom(id *a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
        v13 = objc_alloc_init(AWDNWDurationAccumulation);
        [a1 addDurations:v13];

        v16[0] = 0;
        v16[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDNWDurationAccumulationReadFrom(&v13->super.super.isa, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        String = PBReaderReadString();

        a1[2] = String;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNWActivityReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v50) = 0;
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

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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
            *(a1 + 84) |= 0x10u;
            while (1)
            {
              LOBYTE(v50) = 0;
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

              v36 |= (v50 & 0x7F) << v34;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v10 = v35++ >= 9;
              if (v10)
              {
                LOBYTE(v39) = 0;
                goto LABEL_96;
              }
            }

            v39 = (v36 != 0) & ~[a2 hasError];
LABEL_96:
            *(a1 + 80) = v39;
            goto LABEL_106;
          }

          if (v12 == 7)
          {
            v27 = objc_alloc_init(AWDNWL2Report);

            *(a1 + 64) = v27;
            v50 = 0;
            v51 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDNWL2ReportReadFrom(v27, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_81;
          }
        }

        else
        {
          switch(v12)
          {
            case 8:
              v45 = objc_alloc_init(AWDNWDeviceReport);

              *(a1 + 56) = v45;
              v50 = 0;
              v51 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDNWDeviceReportReadFrom(v45, a2);
              if (!result)
              {
                return result;
              }

LABEL_81:
              PBReaderRecallMark();
              goto LABEL_106;
            case 9:
              String = PBReaderReadString();

              v14 = String;
              v15 = 48;
              goto LABEL_84;
            case 0xA:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 84) |= 4u;
              while (1)
              {
                LOBYTE(v50) = 0;
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

                v18 |= (v50 & 0x7F) << v16;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v10 = v17++ >= 9;
                if (v10)
                {
                  v21 = 0;
                  goto LABEL_104;
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

LABEL_104:
              v48 = 24;
              goto LABEL_105;
          }
        }
      }

      else if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            LOBYTE(v50) = 0;
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

            v31 |= (v50 & 0x7F) << v29;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_94;
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

LABEL_94:
          v48 = 32;
          goto LABEL_105;
        }

        if (v12 == 2)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            LOBYTE(v50) = 0;
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

            v24 |= (v50 & 0x7F) << v22;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v10 = v23++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_90;
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

LABEL_90:
          v48 = 8;
          goto LABEL_105;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 84) |= 2u;
            while (1)
            {
              LOBYTE(v50) = 0;
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

              v42 |= (v50 & 0x7F) << v40;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v10 = v41++ >= 9;
              if (v10)
              {
                v21 = 0;
                goto LABEL_100;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v42;
            }

LABEL_100:
            v48 = 16;
LABEL_105:
            *(a1 + v48) = v21;
            goto LABEL_106;
          case 4:
            v46 = PBReaderReadString();

            v14 = v46;
            v15 = 40;
            goto LABEL_84;
          case 5:
            v13 = PBReaderReadString();

            v14 = v13;
            v15 = 72;
LABEL_84:
            *(a1 + v15) = v14;
            goto LABEL_106;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_106:
      v49 = [a2 position];
    }

    while (v49 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNWActivityEmptyTriggerReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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

      if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v21 = 0;
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

          v14 |= (v21 & 0x7F) << v12;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_32;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_32:
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

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNWActivityEpilogueReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              LOBYTE(v52) = 0;
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

              v35 |= (v52 & 0x7F) << v33;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v10 = v34++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_105;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v35;
            }

LABEL_105:
            v49 = 8;
            goto LABEL_106;
          }

          if (v12 == 4)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              LOBYTE(v52) = 0;
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

              v23 |= (v52 & 0x7F) << v21;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_97;
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

LABEL_97:
            v49 = 16;
            goto LABEL_106;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              LOBYTE(v52) = 0;
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

              v30 |= (v52 & 0x7F) << v28;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v10 = v29++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_101;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v30;
            }

LABEL_101:
            v49 = 24;
LABEL_106:
            *(a1 + v49) = v26;
            goto LABEL_120;
          }

          if (v12 == 2)
          {
            v19 = objc_alloc_init(AWDNWActivity);

            *(a1 + 32) = v19;
            v52 = 0;
            v53 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDNWActivityReadFrom(v19, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_73;
          }
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            LOBYTE(v52) = 0;
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

            v41 |= (v52 & 0x7F) << v39;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
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
            v18 = v41;
          }

LABEL_110:
          v50 = 40;
          goto LABEL_119;
        }

        if (v12 == 6)
        {
          v27 = objc_alloc_init(AWDNWL2Report);

          *(a1 + 56) = v27;
          v52 = 0;
          v53 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDNWL2ReportReadFrom(v27, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_73;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v38 = objc_alloc_init(AWDNWDeviceReport);

            *(a1 + 48) = v38;
            v52 = 0;
            v53 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDNWDeviceReportReadFrom(v38, a2);
            if (!result)
            {
              return result;
            }

LABEL_73:
            PBReaderRecallMark();
            goto LABEL_120;
          case 0x14:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 72) |= 0x20u;
            while (1)
            {
              LOBYTE(v52) = 0;
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

              v46 |= (v52 & 0x7F) << v44;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v10 = v45++ >= 9;
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
              v18 = v46;
            }

LABEL_118:
            v50 = 68;
            goto LABEL_119;
          case 0x15:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x10u;
            while (1)
            {
              LOBYTE(v52) = 0;
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

              v15 |= (v52 & 0x7F) << v13;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
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
              v18 = v15;
            }

LABEL_114:
            v50 = 64;
LABEL_119:
            *(a1 + v50) = v18;
            goto LABEL_120;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_120:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNWConnectionReportReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v384) = 0;
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

      v7 |= (v384 & 0x7F) << v5;
      if ((v384 & 0x80) == 0)
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

    switch((v11 >> 3))
    {
      case 1u:
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 424) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v14 |= (v384 & 0x7F) << v12;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
LABEL_789:
            v381 = 264;
            goto LABEL_909;
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

        goto LABEL_789;
      case 2u:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        *(a1 + 432) |= 0x10u;
        while (1)
        {
          LOBYTE(v384) = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v384 & 0x7F) << v196;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v10 = v197++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_791;
          }
        }

        v23 = (v198 != 0) & ~[a2 hasError];
LABEL_791:
        v380 = 420;
        goto LABEL_912;
      case 3u:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(a1 + 424) |= 0x4000000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v177 |= (v384 & 0x7F) << v175;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v10 = v176++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_777;
          }
        }

        v23 = (v177 != 0) & ~[a2 hasError];
LABEL_777:
        v380 = 414;
        goto LABEL_912;
      case 4u:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(a1 + 424) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v188 |= (v384 & 0x7F) << v186;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v10 = v187++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_783;
          }
        }

        v23 = (v188 != 0) & ~[a2 hasError];
LABEL_783:
        v380 = 400;
        goto LABEL_912;
      case 5u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 424) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v141 |= (v384 & 0x7F) << v139;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v10 = v140++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_753;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v141;
        }

LABEL_753:
        v382 = 396;
        goto LABEL_904;
      case 6u:
        v227 = 0;
        v228 = 0;
        v229 = 0;
        *(a1 + 424) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v229 |= (v384 & 0x7F) << v227;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v227 += 7;
          v10 = v228++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_813;
          }
        }

        v23 = (v229 != 0) & ~[a2 hasError];
LABEL_813:
        v380 = 401;
        goto LABEL_912;
      case 7u:
        v248 = 0;
        v249 = 0;
        v250 = 0;
        *(a1 + 432) |= 0x40u;
        while (1)
        {
          LOBYTE(v384) = 0;
          v251 = [a2 position] + 1;
          if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 1, v252 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v250 |= (v384 & 0x7F) << v248;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v248 += 7;
          v10 = v249++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_825;
          }
        }

        v23 = (v250 != 0) & ~[a2 hasError];
LABEL_825:
        v380 = 422;
        goto LABEL_912;
      case 8u:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        *(a1 + 432) |= 0x20u;
        while (1)
        {
          LOBYTE(v384) = 0;
          v194 = [a2 position] + 1;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v193 |= (v384 & 0x7F) << v191;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v10 = v192++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_785;
          }
        }

        v23 = (v193 != 0) & ~[a2 hasError];
LABEL_785:
        v380 = 421;
        goto LABEL_912;
      case 9u:
        v263 = 0;
        v264 = 0;
        v265 = 0;
        *(a1 + 424) |= 0x800000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v266 = [a2 position] + 1;
          if (v266 >= [a2 position] && (v267 = objc_msgSend(a2, "position") + 1, v267 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v265 |= (v384 & 0x7F) << v263;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v263 += 7;
          v10 = v264++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_833;
          }
        }

        v23 = (v265 != 0) & ~[a2 hasError];
LABEL_833:
        v380 = 411;
        goto LABEL_912;
      case 0xAu:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 432) |= 2u;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v162 |= (v384 & 0x7F) << v160;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v10 = v161++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_767;
          }
        }

        v23 = (v162 != 0) & ~[a2 hasError];
LABEL_767:
        v380 = 417;
        goto LABEL_912;
      case 0xBu:
        v258 = 0;
        v259 = 0;
        v260 = 0;
        *(a1 + 424) |= 0x8000000000000000;
        while (1)
        {
          LOBYTE(v384) = 0;
          v261 = [a2 position] + 1;
          if (v261 >= [a2 position] && (v262 = objc_msgSend(a2, "position") + 1, v262 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v260 |= (v384 & 0x7F) << v258;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v258 += 7;
          v10 = v259++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_831;
          }
        }

        v23 = (v260 != 0) & ~[a2 hasError];
LABEL_831:
        v380 = 415;
        goto LABEL_912;
      case 0xCu:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 424) |= 0x100000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v131 |= (v384 & 0x7F) << v129;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v10 = v130++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_745;
          }
        }

        v23 = (v131 != 0) & ~[a2 hasError];
LABEL_745:
        v380 = 408;
        goto LABEL_912;
      case 0xDu:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 424) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v157 |= (v384 & 0x7F) << v155;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v10 = v156++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_765;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v157;
        }

LABEL_765:
        v381 = 280;
        goto LABEL_909;
      case 0xEu:
        v243 = 0;
        v244 = 0;
        v245 = 0;
        *(a1 + 424) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v246 = [a2 position] + 1;
          if (v246 >= [a2 position] && (v247 = objc_msgSend(a2, "position") + 1, v247 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v245 |= (v384 & 0x7F) << v243;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v243 += 7;
          v10 = v244++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_823;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v245;
        }

LABEL_823:
        v382 = 360;
        goto LABEL_904;
      case 0xFu:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 424) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v111 |= (v384 & 0x7F) << v109;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v10 = v110++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_731;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v111;
        }

LABEL_731:
        v381 = 208;
        goto LABEL_909;
      case 0x10u:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(a1 + 424) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (v384 & 0x7F) << v180;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v10 = v181++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_781;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v182;
        }

LABEL_781:
        v381 = 232;
        goto LABEL_909;
      case 0x11u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 424) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v96 |= (v384 & 0x7F) << v94;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v10 = v95++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_721;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v96;
        }

LABEL_721:
        v381 = 216;
        goto LABEL_909;
      case 0x12u:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        *(a1 + 424) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v384 & 0x7F) << v206;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v10 = v207++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_799;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v208;
        }

LABEL_799:
        v381 = 88;
        goto LABEL_909;
      case 0x13u:
        v253 = 0;
        v254 = 0;
        v255 = 0;
        *(a1 + 424) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v256 = [a2 position] + 1;
          if (v256 >= [a2 position] && (v257 = objc_msgSend(a2, "position") + 1, v257 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v255 |= (v384 & 0x7F) << v253;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v253 += 7;
          v10 = v254++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_829;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v255;
        }

LABEL_829:
        v381 = 272;
        goto LABEL_909;
      case 0x14u:
        v293 = 0;
        v294 = 0;
        v295 = 0;
        *(a1 + 424) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v296 = [a2 position] + 1;
          if (v296 >= [a2 position] && (v297 = objc_msgSend(a2, "position") + 1, v297 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v295 |= (v384 & 0x7F) << v293;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v293 += 7;
          v10 = v294++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_853;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v295;
        }

LABEL_853:
        v381 = 96;
        goto LABEL_909;
      case 0x15u:
        v217 = 0;
        v218 = 0;
        v219 = 0;
        *(a1 + 424) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v219 |= (v384 & 0x7F) << v217;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v217 += 7;
          v10 = v218++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_807;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v219;
        }

LABEL_807:
        v381 = 104;
        goto LABEL_909;
      case 0x16u:
        v238 = 0;
        v239 = 0;
        v240 = 0;
        *(a1 + 424) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v241 = [a2 position] + 1;
          if (v241 >= [a2 position] && (v242 = objc_msgSend(a2, "position") + 1, v242 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v240 |= (v384 & 0x7F) << v238;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v238 += 7;
          v10 = v239++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_819;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v240;
        }

LABEL_819:
        v381 = 120;
        goto LABEL_909;
      case 0x17u:
        v283 = 0;
        v284 = 0;
        v285 = 0;
        *(a1 + 424) |= 0x2000000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v286 = [a2 position] + 1;
          if (v286 >= [a2 position] && (v287 = objc_msgSend(a2, "position") + 1, v287 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v285 |= (v384 & 0x7F) << v283;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v283 += 7;
          v10 = v284++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_847;
          }
        }

        v23 = (v285 != 0) & ~[a2 hasError];
LABEL_847:
        v380 = 413;
        goto LABEL_912;
      case 0x18u:
        v313 = 0;
        v314 = 0;
        v315 = 0;
        *(a1 + 424) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v316 = [a2 position] + 1;
          if (v316 >= [a2 position] && (v317 = objc_msgSend(a2, "position") + 1, v317 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v315 |= (v384 & 0x7F) << v313;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v313 += 7;
          v10 = v314++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_869;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v315;
        }

LABEL_869:
        v382 = 364;
        goto LABEL_904;
      case 0x19u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 424) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v172 |= (v384 & 0x7F) << v170;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v10 = v171++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_775;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v172;
        }

LABEL_775:
        v382 = 312;
        goto LABEL_904;
      case 0x1Au:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 424) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v167 |= (v384 & 0x7F) << v165;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v10 = v166++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_771;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v167;
        }

LABEL_771:
        v381 = 56;
        goto LABEL_909;
      case 0x1Bu:
        v333 = 0;
        v334 = 0;
        v335 = 0;
        *(a1 + 424) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v336 = [a2 position] + 1;
          if (v336 >= [a2 position] && (v337 = objc_msgSend(a2, "position") + 1, v337 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v335 |= (v384 & 0x7F) << v333;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v333 += 7;
          v10 = v334++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_883;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v335;
        }

LABEL_883:
        v382 = 316;
        goto LABEL_904;
      case 0x1Cu:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 424) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v86 |= (v384 & 0x7F) << v84;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v10 = v85++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_715;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v86;
        }

LABEL_715:
        v381 = 64;
        goto LABEL_909;
      case 0x1Du:
        v318 = 0;
        v319 = 0;
        v320 = 0;
        *(a1 + 424) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v321 = [a2 position] + 1;
          if (v321 >= [a2 position] && (v322 = objc_msgSend(a2, "position") + 1, v322 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v320 |= (v384 & 0x7F) << v318;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v318 += 7;
          v10 = v319++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_873;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v320;
        }

LABEL_873:
        v381 = 80;
        goto LABEL_909;
      case 0x1Eu:
        v323 = 0;
        v324 = 0;
        v325 = 0;
        *(a1 + 424) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v326 = [a2 position] + 1;
          if (v326 >= [a2 position] && (v327 = objc_msgSend(a2, "position") + 1, v327 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v325 |= (v384 & 0x7F) << v323;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v323 += 7;
          v10 = v324++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_877;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v325;
        }

LABEL_877:
        v382 = 320;
        goto LABEL_904;
      case 0x1Fu:
        v268 = 0;
        v269 = 0;
        v270 = 0;
        *(a1 + 424) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v271 = [a2 position] + 1;
          if (v271 >= [a2 position] && (v272 = objc_msgSend(a2, "position") + 1, v272 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v270 |= (v384 & 0x7F) << v268;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v268 += 7;
          v10 = v269++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_837;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v270;
        }

LABEL_837:
        v382 = 300;
        goto LABEL_904;
      case 0x20u:
        v201 = 0;
        v202 = 0;
        v203 = 0;
        *(a1 + 424) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v204 = [a2 position] + 1;
          if (v204 >= [a2 position] && (v205 = objc_msgSend(a2, "position") + 1, v205 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v203 |= (v384 & 0x7F) << v201;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v201 += 7;
          v10 = v202++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_795;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v203;
        }

LABEL_795:
        v382 = 296;
        goto LABEL_904;
      case 0x21u:
        v273 = 0;
        v274 = 0;
        v275 = 0;
        *(a1 + 424) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v276 = [a2 position] + 1;
          if (v276 >= [a2 position] && (v277 = objc_msgSend(a2, "position") + 1, v277 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v275 |= (v384 & 0x7F) << v273;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v273 += 7;
          v10 = v274++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_841;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v275;
        }

LABEL_841:
        v382 = 388;
        goto LABEL_904;
      case 0x22u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 424) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v116 |= (v384 & 0x7F) << v114;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v10 = v115++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_735;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v116;
        }

LABEL_735:
        v382 = 384;
        goto LABEL_904;
      case 0x23u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 424) |= 0x8000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v91 |= (v384 & 0x7F) << v89;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v10 = v90++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_717;
          }
        }

        v23 = (v91 != 0) & ~[a2 hasError];
LABEL_717:
        v380 = 403;
        goto LABEL_912;
      case 0x24u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 424) |= 0x10000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v71 |= (v384 & 0x7F) << v69;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v10 = v70++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_705;
          }
        }

        v23 = (v71 != 0) & ~[a2 hasError];
LABEL_705:
        v380 = 404;
        goto LABEL_912;
      case 0x25u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 424) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v76 |= (v384 & 0x7F) << v74;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v10 = v75++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_709;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v76;
        }

LABEL_709:
        v381 = 112;
        goto LABEL_909;
      case 0x26u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 424) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v45 |= (v384 & 0x7F) << v43;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v10 = v44++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_687;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v45;
        }

LABEL_687:
        v381 = 128;
        goto LABEL_909;
      case 0x27u:
        v328 = 0;
        v329 = 0;
        v330 = 0;
        *(a1 + 432) |= 8u;
        while (1)
        {
          LOBYTE(v384) = 0;
          v331 = [a2 position] + 1;
          if (v331 >= [a2 position] && (v332 = objc_msgSend(a2, "position") + 1, v332 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v330 |= (v384 & 0x7F) << v328;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v328 += 7;
          v10 = v329++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_879;
          }
        }

        v23 = (v330 != 0) & ~[a2 hasError];
LABEL_879:
        v380 = 419;
        goto LABEL_912;
      case 0x28u:
        v288 = 0;
        v289 = 0;
        v290 = 0;
        *(a1 + 424) |= 0x1000000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v291 = [a2 position] + 1;
          if (v291 >= [a2 position] && (v292 = objc_msgSend(a2, "position") + 1, v292 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v290 |= (v384 & 0x7F) << v288;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v288 += 7;
          v10 = v289++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_849;
          }
        }

        v23 = (v290 != 0) & ~[a2 hasError];
LABEL_849:
        v380 = 412;
        goto LABEL_912;
      case 0x29u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 424) |= 4uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v146 |= (v384 & 0x7F) << v144;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v10 = v145++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_757;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v146;
        }

LABEL_757:
        v381 = 24;
        goto LABEL_909;
      case 0x2Au:
        v211 = 0;
        v212 = 0;
        v213 = 0;
        *(a1 + 424) |= 8uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v214 = [a2 position] + 1;
          if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v213 |= (v384 & 0x7F) << v211;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          v10 = v212++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_803;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v213;
        }

LABEL_803:
        v381 = 32;
        goto LABEL_909;
      case 0x2Bu:
        v303 = 0;
        v304 = 0;
        v305 = 0;
        *(a1 + 424) |= 2uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v306 = [a2 position] + 1;
          if (v306 >= [a2 position] && (v307 = objc_msgSend(a2, "position") + 1, v307 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v305 |= (v384 & 0x7F) << v303;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v303 += 7;
          v10 = v304++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_861;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v305;
        }

LABEL_861:
        v381 = 16;
        goto LABEL_909;
      case 0x2Cu:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 424) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v34 |= (v384 & 0x7F) << v32;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v10 = v33++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_681;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v34;
        }

LABEL_681:
        v381 = 40;
        goto LABEL_909;
      case 0x2Du:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 424) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v106 |= (v384 & 0x7F) << v104;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v10 = v105++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_727;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v106;
        }

LABEL_727:
        v381 = 48;
        goto LABEL_909;
      case 0x2Eu:
        v278 = 0;
        v279 = 0;
        v280 = 0;
        *(a1 + 424) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v281 = [a2 position] + 1;
          if (v281 >= [a2 position] && (v282 = objc_msgSend(a2, "position") + 1, v282 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v280 |= (v384 & 0x7F) << v278;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v278 += 7;
          v10 = v279++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_845;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v280;
        }

LABEL_845:
        v381 = 192;
        goto LABEL_909;
      case 0x2Fu:
        v354 = 0;
        v355 = 0;
        v356 = 0;
        *(a1 + 424) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v357 = [a2 position] + 1;
          if (v357 >= [a2 position] && (v358 = objc_msgSend(a2, "position") + 1, v358 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v356 |= (v384 & 0x7F) << v354;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v354 += 7;
          v10 = v355++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_895;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v356;
        }

LABEL_895:
        v381 = 200;
        goto LABEL_909;
      case 0x30u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 424) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v55 |= (v384 & 0x7F) << v53;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v10 = v54++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_695;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v55;
        }

LABEL_695:
        v381 = 72;
        goto LABEL_909;
      case 0x31u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 424) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v121 |= (v384 & 0x7F) << v119;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v10 = v120++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_739;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v121;
        }

LABEL_739:
        v381 = 248;
        goto LABEL_909;
      case 0x32u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 424) |= 1uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v136 |= (v384 & 0x7F) << v134;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v10 = v135++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_749;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v136;
        }

LABEL_749:
        v381 = 8;
        goto LABEL_909;
      case 0x33u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 424) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v29 |= (v384 & 0x7F) << v27;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v10 = v28++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_677;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v29;
        }

LABEL_677:
        v381 = 224;
        goto LABEL_909;
      case 0x34u:
        v369 = 0;
        v370 = 0;
        v371 = 0;
        *(a1 + 424) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v372 = [a2 position] + 1;
          if (v372 >= [a2 position] && (v373 = objc_msgSend(a2, "position") + 1, v373 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v371 |= (v384 & 0x7F) << v369;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v369 += 7;
          v10 = v370++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_908;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v371;
        }

LABEL_908:
        v381 = 256;
        goto LABEL_909;
      case 0x35u:
        v349 = 0;
        v350 = 0;
        v351 = 0;
        *(a1 + 432) |= 1u;
        while (1)
        {
          LOBYTE(v384) = 0;
          v352 = [a2 position] + 1;
          if (v352 >= [a2 position] && (v353 = objc_msgSend(a2, "position") + 1, v353 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v351 |= (v384 & 0x7F) << v349;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v349 += 7;
          v10 = v350++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_891;
          }
        }

        v23 = (v351 != 0) & ~[a2 hasError];
LABEL_891:
        v380 = 416;
        goto LABEL_912;
      case 0x36u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 424) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v50 |= (v384 & 0x7F) << v48;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v10 = v49++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_691;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v50;
        }

LABEL_691:
        v381 = 184;
        goto LABEL_909;
      case 0x37u:
        v338 = 0;
        v339 = 0;
        v340 = 0;
        *(a1 + 424) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v341 = [a2 position] + 1;
          if (v341 >= [a2 position] && (v342 = objc_msgSend(a2, "position") + 1, v342 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v340 |= (v384 & 0x7F) << v338;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v338 += 7;
          v10 = v339++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_885;
          }
        }

        v23 = (v340 != 0) & ~[a2 hasError];
LABEL_885:
        v380 = 402;
        goto LABEL_912;
      case 0x38u:
        v344 = 0;
        v345 = 0;
        v346 = 0;
        *(a1 + 424) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v347 = [a2 position] + 1;
          if (v347 >= [a2 position] && (v348 = objc_msgSend(a2, "position") + 1, v348 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v346 |= (v384 & 0x7F) << v344;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v344 += 7;
          v10 = v345++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_889;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v346;
        }

LABEL_889:
        v381 = 136;
        goto LABEL_909;
      case 0x39u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 424) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v60 |= (v384 & 0x7F) << v58;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v10 = v59++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_699;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v60;
        }

LABEL_699:
        v381 = 160;
        goto LABEL_909;
      case 0x3Au:
        v298 = 0;
        v299 = 0;
        v300 = 0;
        *(a1 + 424) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v301 = [a2 position] + 1;
          if (v301 >= [a2 position] && (v302 = objc_msgSend(a2, "position") + 1, v302 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v300 |= (v384 & 0x7F) << v298;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v298 += 7;
          v10 = v299++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_857;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v300;
        }

LABEL_857:
        v381 = 152;
        goto LABEL_909;
      case 0x3Bu:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 424) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v126 |= (v384 & 0x7F) << v124;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v10 = v125++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_743;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v126;
        }

LABEL_743:
        v381 = 176;
        goto LABEL_909;
      case 0x3Cu:
        v308 = 0;
        v309 = 0;
        v310 = 0;
        *(a1 + 424) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v311 = [a2 position] + 1;
          if (v311 >= [a2 position] && (v312 = objc_msgSend(a2, "position") + 1, v312 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v310 |= (v384 & 0x7F) << v308;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v308 += 7;
          v10 = v309++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_865;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v310;
        }

LABEL_865:
        v381 = 144;
        goto LABEL_909;
      case 0x3Du:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 424) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v151 |= (v384 & 0x7F) << v149;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v10 = v150++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_761;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v151;
        }

LABEL_761:
        v381 = 168;
        goto LABEL_909;
      case 0x3Eu:
        v222 = 0;
        v223 = 0;
        v224 = 0;
        *(a1 + 424) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v224 |= (v384 & 0x7F) << v222;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v222 += 7;
          v10 = v223++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_811;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v224;
        }

LABEL_811:
        v381 = 240;
LABEL_909:
        *(a1 + v381) = v17;
        goto LABEL_913;
      case 0x3Fu:
        v233 = 0;
        v234 = 0;
        v235 = 0;
        *(a1 + 424) |= 0x20000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v236 = [a2 position] + 1;
          if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v235 |= (v384 & 0x7F) << v233;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v10 = v234++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_815;
          }
        }

        v23 = (v235 != 0) & ~[a2 hasError];
LABEL_815:
        v380 = 405;
        goto LABEL_912;
      case 0x40u:
        String = PBReaderReadString();

        v25 = String;
        v26 = 376;
        goto LABEL_405;
      case 0x41u:
        v154 = PBReaderReadString();
        if (v154)
        {
          [a1 addActivities:v154];
        }

        goto LABEL_913;
      case 0x42u:
        v232 = PBReaderReadString();

        v25 = v232;
        v26 = 328;
        goto LABEL_405;
      case 0x43u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 432) |= 4u;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v39 |= (v384 & 0x7F) << v37;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v10 = v38++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_683;
          }
        }

        v23 = (v39 != 0) & ~[a2 hasError];
LABEL_683:
        v380 = 418;
        goto LABEL_912;
      case 0x44u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 424) |= 0x80000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v101 |= (v384 & 0x7F) << v99;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v10 = v100++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_723;
          }
        }

        v23 = (v101 != 0) & ~[a2 hasError];
LABEL_723:
        v380 = 407;
        goto LABEL_912;
      case 0x45u:
        v375 = 0;
        v376 = 0;
        v377 = 0;
        *(a1 + 424) |= 0x40000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v378 = [a2 position] + 1;
          if (v378 >= [a2 position] && (v379 = objc_msgSend(a2, "position") + 1, v379 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v377 |= (v384 & 0x7F) << v375;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v375 += 7;
          v10 = v376++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_911;
          }
        }

        v23 = (v377 != 0) & ~[a2 hasError];
LABEL_911:
        v380 = 406;
        goto LABEL_912;
      case 0x46u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 424) |= 0x400000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v81 |= (v384 & 0x7F) << v79;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v10 = v80++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_711;
          }
        }

        v23 = (v81 != 0) & ~[a2 hasError];
LABEL_711:
        v380 = 410;
        goto LABEL_912;
      case 0x47u:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 424) |= 0x200000000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v20 |= (v384 & 0x7F) << v18;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v10 = v19++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_673;
          }
        }

        v23 = (v20 != 0) & ~[a2 hasError];
LABEL_673:
        v380 = 409;
LABEL_912:
        *(a1 + v380) = v23;
        goto LABEL_913;
      case 0x48u:
        v42 = objc_alloc_init(AWDNWL2Report);

        *(a1 + 368) = v42;
        v384 = 0;
        v385 = 0;
        if (!PBReaderPlaceMark() || (AWDNWL2ReportReadFrom(v42, a2) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_606;
      case 0x49u:
        v343 = objc_alloc_init(AWDNWDeviceReport);

        *(a1 + 336) = v343;
        v384 = 0;
        v385 = 0;
        if (PBReaderPlaceMark() && (AWDNWDeviceReportReadFrom(v343, a2) & 1) != 0)
        {
LABEL_606:
          PBReaderRecallMark();
LABEL_913:
          v383 = [a2 position];
          if (v383 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0x4Au:
        v359 = 0;
        v360 = 0;
        v361 = 0;
        *(a1 + 424) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v362 = [a2 position] + 1;
          if (v362 >= [a2 position] && (v363 = objc_msgSend(a2, "position") + 1, v363 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v361 |= (v384 & 0x7F) << v359;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v359 += 7;
          v10 = v360++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_899;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v361;
        }

LABEL_899:
        v382 = 392;
        goto LABEL_904;
      case 0x4Bu:
        v364 = 0;
        v365 = 0;
        v366 = 0;
        *(a1 + 424) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
          v367 = [a2 position] + 1;
          if (v367 >= [a2 position] && (v368 = objc_msgSend(a2, "position") + 1, v368 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v366 |= (v384 & 0x7F) << v364;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v364 += 7;
          v10 = v365++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_903;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v366;
        }

LABEL_903:
        v382 = 344;
        goto LABEL_904;
      case 0x4Cu:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 424) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v384) = 0;
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

          v65 |= (v384 & 0x7F) << v63;
          if ((v384 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v10 = v64++ >= 9;
          if (v10)
          {
            v68 = 0;
            goto LABEL_703;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v65;
        }

LABEL_703:
        v382 = 348;
LABEL_904:
        *(a1 + v382) = v68;
        goto LABEL_913;
      case 0x4Du:
        v216 = PBReaderReadString();

        v25 = v216;
        v26 = 304;
        goto LABEL_405;
      case 0x4Eu:
        v24 = PBReaderReadString();

        v25 = v24;
        v26 = 352;
LABEL_405:
        *(a1 + v26) = v25;
        goto LABEL_913;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_913;
    }
  }
}