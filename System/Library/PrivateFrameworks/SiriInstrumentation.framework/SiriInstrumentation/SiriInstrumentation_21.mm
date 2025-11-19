uint64_t INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignalsReadFrom(void *a1, void *a2)
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
      LOBYTE(v104) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v104 & 0x7F) << v6;
      if ((v104 & 0x80) == 0)
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
        v104 = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v102 = [a2 data];
          [v102 getBytes:&v104 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v16) = v104;
        [a1 setAppContactAffinityScoreForMessages:v16];
        continue;
      case 2u:
        v104 = 0;
        v62 = [a2 position] + 4;
        if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 4, v63 <= objc_msgSend(a2, "length")))
        {
          v103 = [a2 data];
          [v103 getBytes:&v104 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v64) = v104;
        [a1 setAppContactAffinityScoreForMessagesUsingSiri:v64];
        continue;
      case 3u:
        v104 = 0;
        v45 = [a2 position] + 4;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 4, v46 <= objc_msgSend(a2, "length")))
        {
          v101 = [a2 data];
          [v101 getBytes:&v104 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v47) = v104;
        [a1 setAppContactAffinityScoreForMessagesReceived:v47];
        continue;
      case 4u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v104 & 0x7F) << v48;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v54 = 0;
            goto LABEL_148;
          }
        }

        if ([a2 hasError])
        {
          v54 = 0;
        }

        else
        {
          v54 = v50;
        }

LABEL_148:
        [a1 setAppContactFreqForMessages2Min:v54];
        continue;
      case 5u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v104 & 0x7F) << v24;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v30 = 0;
            goto LABEL_136;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_136:
        [a1 setAppContactFreqForMessages10Min:v30];
        continue;
      case 6u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v104 & 0x7F) << v65;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            v71 = 0;
            goto LABEL_156;
          }
        }

        if ([a2 hasError])
        {
          v71 = 0;
        }

        else
        {
          v71 = v67;
        }

LABEL_156:
        [a1 setAppContactFreqForMessages1Hr:v71];
        continue;
      case 7u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v104 & 0x7F) << v79;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            v85 = 0;
            goto LABEL_164;
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

LABEL_164:
        [a1 setAppContactFreqForMessages6Hr:v85];
        continue;
      case 8u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v104 & 0x7F) << v55;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            v61 = 0;
            goto LABEL_152;
          }
        }

        if ([a2 hasError])
        {
          v61 = 0;
        }

        else
        {
          v61 = v57;
        }

LABEL_152:
        [a1 setAppContactFreqForMessages1Day:v61];
        continue;
      case 9u:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v95 |= (v104 & 0x7F) << v93;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v12 = v94++ >= 9;
          if (v12)
          {
            v99 = 0;
            goto LABEL_172;
          }
        }

        if ([a2 hasError])
        {
          v99 = 0;
        }

        else
        {
          v99 = v95;
        }

LABEL_172:
        [a1 setAppContactFreqForMessages7Day:v99];
        continue;
      case 0xAu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v104 & 0x7F) << v38;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v44 = 0;
            goto LABEL_144;
          }
        }

        if ([a2 hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v40;
        }

LABEL_144:
        [a1 setAppContactFreqForMessages28Day:v44];
        continue;
      case 0xBu:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v104 & 0x7F) << v86;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v12 = v87++ >= 9;
          if (v12)
          {
            v92 = 0;
            goto LABEL_168;
          }
        }

        if ([a2 hasError])
        {
          v92 = 0;
        }

        else
        {
          v92 = v88;
        }

LABEL_168:
        [a1 setAppContactFreqForMessagesInf:v92];
        continue;
      case 0xCu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v104 & 0x7F) << v17;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_132;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_132:
        [a1 setAppContactFreqForMessages:v23];
        continue;
      case 0xDu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v104 & 0x7F) << v31;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_140;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_140:
        [a1 setAppContactFreqForMessagesUsingSiri:v37];
        continue;
      case 0xEu:
        v72 = 0;
        v73 = 0;
        v74 = 0;
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
      LOBYTE(v104) = 0;
      v75 = [a2 position] + 1;
      if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
      {
        v77 = [a2 data];
        [v77 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v74 |= (v104 & 0x7F) << v72;
      if ((v104 & 0x80) == 0)
      {
        break;
      }

      v72 += 7;
      v12 = v73++ >= 9;
      if (v12)
      {
        v78 = 0;
        goto LABEL_160;
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

LABEL_160:
    [a1 setAppContactFreqForMessagesHaptic:v78];
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignalsReadFrom(void *a1, void *a2)
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
      LOBYTE(v104) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v104 & 0x7F) << v6;
      if ((v104 & 0x80) == 0)
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
        v104 = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v102 = [a2 data];
          [v102 getBytes:&v104 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v16) = v104;
        [a1 setAppContactAffinityScoreForPhoneCall:v16];
        continue;
      case 2u:
        v104 = 0;
        v62 = [a2 position] + 4;
        if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 4, v63 <= objc_msgSend(a2, "length")))
        {
          v103 = [a2 data];
          [v103 getBytes:&v104 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v64) = v104;
        [a1 setAppContactAffinityScoreForPhoneCallUsingSiri:v64];
        continue;
      case 3u:
        v104 = 0;
        v45 = [a2 position] + 4;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 4, v46 <= objc_msgSend(a2, "length")))
        {
          v101 = [a2 data];
          [v101 getBytes:&v104 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v47) = v104;
        [a1 setAppContactAffinityScoreForPhoneCallReceived:v47];
        continue;
      case 4u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v104 & 0x7F) << v48;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v54 = 0;
            goto LABEL_148;
          }
        }

        if ([a2 hasError])
        {
          v54 = 0;
        }

        else
        {
          v54 = v50;
        }

LABEL_148:
        [a1 setAppContactFreqForPhoneCall2Min:v54];
        continue;
      case 5u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v104 & 0x7F) << v24;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v30 = 0;
            goto LABEL_136;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_136:
        [a1 setAppContactFreqForPhoneCall10Min:v30];
        continue;
      case 6u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v104 & 0x7F) << v65;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            v71 = 0;
            goto LABEL_156;
          }
        }

        if ([a2 hasError])
        {
          v71 = 0;
        }

        else
        {
          v71 = v67;
        }

LABEL_156:
        [a1 setAppContactFreqForPhoneCall1Hr:v71];
        continue;
      case 7u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v104 & 0x7F) << v79;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            v85 = 0;
            goto LABEL_164;
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

LABEL_164:
        [a1 setAppContactFreqForPhoneCall6Hr:v85];
        continue;
      case 8u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v104 & 0x7F) << v55;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            v61 = 0;
            goto LABEL_152;
          }
        }

        if ([a2 hasError])
        {
          v61 = 0;
        }

        else
        {
          v61 = v57;
        }

LABEL_152:
        [a1 setAppContactFreqForPhoneCall1Day:v61];
        continue;
      case 9u:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v95 |= (v104 & 0x7F) << v93;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v12 = v94++ >= 9;
          if (v12)
          {
            v99 = 0;
            goto LABEL_172;
          }
        }

        if ([a2 hasError])
        {
          v99 = 0;
        }

        else
        {
          v99 = v95;
        }

LABEL_172:
        [a1 setAppContactFreqForPhoneCall7Day:v99];
        continue;
      case 0xAu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v104 & 0x7F) << v38;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v44 = 0;
            goto LABEL_144;
          }
        }

        if ([a2 hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v40;
        }

LABEL_144:
        [a1 setAppContactFreqForPhoneCall28Day:v44];
        continue;
      case 0xBu:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v104 & 0x7F) << v86;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v12 = v87++ >= 9;
          if (v12)
          {
            v92 = 0;
            goto LABEL_168;
          }
        }

        if ([a2 hasError])
        {
          v92 = 0;
        }

        else
        {
          v92 = v88;
        }

LABEL_168:
        [a1 setAppContactFreqForPhoneCallInf:v92];
        continue;
      case 0xCu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v104 & 0x7F) << v17;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_132;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_132:
        [a1 setAppContactFreqForPhoneCall:v23];
        continue;
      case 0xDu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          LOBYTE(v104) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v104 & 0x7F) << v31;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_140;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_140:
        [a1 setAppContactFreqForPhoneCallUsingSiri:v37];
        continue;
      case 0xEu:
        v72 = 0;
        v73 = 0;
        v74 = 0;
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
      LOBYTE(v104) = 0;
      v75 = [a2 position] + 1;
      if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
      {
        v77 = [a2 data];
        [v77 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v74 |= (v104 & 0x7F) << v72;
      if ((v104 & 0x80) == 0)
      {
        break;
      }

      v72 += 7;
      v12 = v73++ >= 9;
      if (v12)
      {
        v78 = 0;
        goto LABEL_160;
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

LABEL_160:
    [a1 setAppContactFreqForPhoneCallHaptic:v78];
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignalsReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignalsReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setContactDependentMessageSignals:v13];
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

    v13 = objc_alloc_init(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignalsReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setContactDependentPhoneCallSignals:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEConfirmationPromptContextReadFrom(void *a1, void *a2)
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
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setAnonymizedEntityPresented:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
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
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
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

LABEL_35:
      [a1 setResolution:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEContactReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addAnonymizedHandleValues:v14];
      }

      goto LABEL_23;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setAnonymizedContactIdentifier:v14];
LABEL_23:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t INFERENCESchemaINFERENCEContactCandidatesInfoGeneratedReadFrom(void *a1, void *a2)
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
                goto LABEL_61;
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

LABEL_61:
            [a1 setOntologySource:v28];
            goto LABEL_64;
          case 5:
            v14 = objc_alloc_init(INFERENCESchemaINFERENCECandidateInfo);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECandidateInfoReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addCandidates:v14];
            }

            goto LABEL_57;
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
                goto LABEL_63;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_63:
            [a1 setIsEntityCandidateRetrievalEnabled:v21];
            goto LABEL_64;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setOriginalResolutionContextId:v14];
            goto LABEL_57;
          case 2:
            v14 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setQueryId:v14];
            goto LABEL_57;
          case 3:
            v14 = objc_alloc_init(INFERENCESchemaINFERENCEContactQueryMetadata);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEContactQueryMetadataReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setContactQueryMetadata:v14];
LABEL_57:

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

uint64_t INFERENCESchemaINFERENCEContactFeatureSetReadFrom(void *a1, void *a2)
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
      LOBYTE(v199) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v199 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v199 & 0x7F) << v6;
      if ((v199 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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
        v199 = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v174 = [a2 data];
          [v174 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v16) = v199;
        [a1 setIsRecent:v16];
        goto LABEL_251;
      case 2u:
        v199 = 0;
        v80 = [a2 position] + 4;
        if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 4, v81 <= objc_msgSend(a2, "length")))
        {
          v175 = [a2 data];
          [v175 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v82) = v199;
        [a1 setIsRecentInSameDomain:v82];
        goto LABEL_251;
      case 3u:
        v199 = 0;
        v68 = [a2 position] + 4;
        if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 4, v69 <= objc_msgSend(a2, "length")))
        {
          v170 = [a2 data];
          [v170 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v70) = v199;
        [a1 setIsRecentInSiriRequest:v70];
        goto LABEL_251;
      case 4u:
        v199 = 0;
        v74 = [a2 position] + 4;
        if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 4, v75 <= objc_msgSend(a2, "length")))
        {
          v172 = [a2 data];
          [v172 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v76) = v199;
        [a1 setIsRecentlyCorrected:v76];
        goto LABEL_251;
      case 5u:
        v199 = 0;
        v50 = [a2 position] + 4;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 4, v51 <= objc_msgSend(a2, "length")))
        {
          v164 = [a2 data];
          [v164 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v52) = v199;
        [a1 setRecencyRank:v52];
        goto LABEL_251;
      case 6u:
        v199 = 0;
        v95 = [a2 position] + 4;
        if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 4, v96 <= objc_msgSend(a2, "length")))
        {
          v180 = [a2 data];
          [v180 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v97) = v199;
        [a1 setRecencyRankInSameDomain:v97];
        goto LABEL_251;
      case 7u:
        v199 = 0;
        v104 = [a2 position] + 4;
        if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 4, v105 <= objc_msgSend(a2, "length")))
        {
          v183 = [a2 data];
          [v183 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v106) = v199;
        [a1 setRecencyRankInSiriRequest:v106];
        goto LABEL_251;
      case 8u:
        v199 = 0;
        v77 = [a2 position] + 4;
        if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 4, v78 <= objc_msgSend(a2, "length")))
        {
          v173 = [a2 data];
          [v173 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v79) = v199;
        [a1 setIsHighQualityRequestMatch:v79];
        goto LABEL_251;
      case 9u:
        v199 = 0;
        v113 = [a2 position] + 4;
        if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 4, v114 <= objc_msgSend(a2, "length")))
        {
          v186 = [a2 data];
          [v186 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v115) = v199;
        [a1 setIsFavorite:v115];
        goto LABEL_251;
      case 0xAu:
        v199 = 0;
        v59 = [a2 position] + 4;
        if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 4, v60 <= objc_msgSend(a2, "length")))
        {
          v167 = [a2 data];
          [v167 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v61) = v199;
        [a1 setIsMeCardRelation:v61];
        goto LABEL_251;
      case 0xBu:
        v199 = 0;
        v110 = [a2 position] + 4;
        if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 4, v111 <= objc_msgSend(a2, "length")))
        {
          v185 = [a2 data];
          [v185 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v112) = v199;
        [a1 setIsWeakOrganizationMatch:v112];
        goto LABEL_251;
      case 0xCu:
        v199 = 0;
        v47 = [a2 position] + 4;
        if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 4, v48 <= objc_msgSend(a2, "length")))
        {
          v163 = [a2 data];
          [v163 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v49) = v199;
        [a1 setSpeechAlternativeRanksGivenNameRank:v49];
        goto LABEL_251;
      case 0xDu:
        v199 = 0;
        v56 = [a2 position] + 4;
        if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 4, v57 <= objc_msgSend(a2, "length")))
        {
          v166 = [a2 data];
          [v166 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v58) = v199;
        [a1 setSpeechAlternativeRanksMiddleNameRank:v58];
        goto LABEL_251;
      case 0xEu:
        v199 = 0;
        v101 = [a2 position] + 4;
        if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 4, v102 <= objc_msgSend(a2, "length")))
        {
          v182 = [a2 data];
          [v182 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v103) = v199;
        [a1 setSpeechAlternativeRanksFamilyNameRank:v103];
        goto LABEL_251;
      case 0xFu:
        v199 = 0;
        v41 = [a2 position] + 4;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 4, v42 <= objc_msgSend(a2, "length")))
        {
          v161 = [a2 data];
          [v161 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v43) = v199;
        [a1 setFreqAnyGroup0MinTo2Min:v43];
        goto LABEL_251;
      case 0x10u:
        v199 = 0;
        v71 = [a2 position] + 4;
        if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 4, v72 <= objc_msgSend(a2, "length")))
        {
          v171 = [a2 data];
          [v171 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v73) = v199;
        [a1 setFreqAnyGroup2MinTo10Min:v73];
        goto LABEL_251;
      case 0x11u:
        v199 = 0;
        v35 = [a2 position] + 4;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 4, v36 <= objc_msgSend(a2, "length")))
        {
          v159 = [a2 data];
          [v159 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v37) = v199;
        [a1 setFreqAnyGroup10MinTo1Hr:v37];
        goto LABEL_251;
      case 0x12u:
        v199 = 0;
        v86 = [a2 position] + 4;
        if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 4, v87 <= objc_msgSend(a2, "length")))
        {
          v177 = [a2 data];
          [v177 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v88) = v199;
        [a1 setFreqAnyGroup1HrTo6Hr:v88];
        goto LABEL_251;
      case 0x13u:
        v199 = 0;
        v107 = [a2 position] + 4;
        if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 4, v108 <= objc_msgSend(a2, "length")))
        {
          v184 = [a2 data];
          [v184 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v109) = v199;
        [a1 setFreqAnyGroup6HrTo1Day:v109];
        goto LABEL_251;
      case 0x14u:
        v199 = 0;
        v131 = [a2 position] + 4;
        if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 4, v132 <= objc_msgSend(a2, "length")))
        {
          v192 = [a2 data];
          [v192 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v133) = v199;
        [a1 setFreqAnyGroup1DayTo7Day:v133];
        goto LABEL_251;
      case 0x15u:
        v199 = 0;
        v92 = [a2 position] + 4;
        if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 4, v93 <= objc_msgSend(a2, "length")))
        {
          v179 = [a2 data];
          [v179 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v94) = v199;
        [a1 setFreqAnyGroup7DayTo28Day:v94];
        goto LABEL_251;
      case 0x16u:
        v199 = 0;
        v98 = [a2 position] + 4;
        if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 4, v99 <= objc_msgSend(a2, "length")))
        {
          v181 = [a2 data];
          [v181 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v100) = v199;
        [a1 setFreqAnyGroup28DayToInf:v100];
        goto LABEL_251;
      case 0x17u:
        v199 = 0;
        v125 = [a2 position] + 4;
        if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 4, v126 <= objc_msgSend(a2, "length")))
        {
          v190 = [a2 data];
          [v190 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v127) = v199;
        [a1 setFreqSameGroup0MinTo2Min:v127];
        goto LABEL_251;
      case 0x18u:
        v199 = 0;
        v137 = [a2 position] + 4;
        if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 4, v138 <= objc_msgSend(a2, "length")))
        {
          v194 = [a2 data];
          [v194 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v139) = v199;
        [a1 setFreqSameGroup2MinTo10Min:v139];
        goto LABEL_251;
      case 0x19u:
        v199 = 0;
        v65 = [a2 position] + 4;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 4, v66 <= objc_msgSend(a2, "length")))
        {
          v169 = [a2 data];
          [v169 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v67) = v199;
        [a1 setFreqSameGroup10MinTo1Hr:v67];
        goto LABEL_251;
      case 0x1Au:
        v199 = 0;
        v62 = [a2 position] + 4;
        if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 4, v63 <= objc_msgSend(a2, "length")))
        {
          v168 = [a2 data];
          [v168 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v64) = v199;
        [a1 setFreqSameGroup1HrTo6Hr:v64];
        goto LABEL_251;
      case 0x1Bu:
        v199 = 0;
        v149 = [a2 position] + 4;
        if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 4, v150 <= objc_msgSend(a2, "length")))
        {
          v198 = [a2 data];
          [v198 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v151) = v199;
        [a1 setFreqSameGroup6HrTo1Day:v151];
        goto LABEL_251;
      case 0x1Cu:
        v199 = 0;
        v29 = [a2 position] + 4;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
        {
          v157 = [a2 data];
          [v157 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v31) = v199;
        [a1 setFreqSameGroup1DayTo7Day:v31];
        goto LABEL_251;
      case 0x1Du:
        v199 = 0;
        v140 = [a2 position] + 4;
        if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 4, v141 <= objc_msgSend(a2, "length")))
        {
          v195 = [a2 data];
          [v195 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v142) = v199;
        [a1 setFreqSameGroup7DayTo28Day:v142];
        goto LABEL_251;
      case 0x1Eu:
        v199 = 0;
        v143 = [a2 position] + 4;
        if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 4, v144 <= objc_msgSend(a2, "length")))
        {
          v196 = [a2 data];
          [v196 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v145) = v199;
        [a1 setFreqSameGroup28DayToInf:v145];
        goto LABEL_251;
      case 0x1Fu:
        v199 = 0;
        v116 = [a2 position] + 4;
        if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 4, v117 <= objc_msgSend(a2, "length")))
        {
          v187 = [a2 data];
          [v187 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v118) = v199;
        [a1 setIsSuggested:v118];
        goto LABEL_251;
      case 0x20u:
        v199 = 0;
        v83 = [a2 position] + 4;
        if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 4, v84 <= objc_msgSend(a2, "length")))
        {
          v176 = [a2 data];
          [v176 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v85) = v199;
        [a1 setIsHypocorism:v85];
        goto LABEL_251;
      case 0x21u:
        v199 = 0;
        v119 = [a2 position] + 4;
        if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 4, v120 <= objc_msgSend(a2, "length")))
        {
          v188 = [a2 data];
          [v188 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v121) = v199;
        [a1 setHasSuggestedProperties:v121];
        goto LABEL_251;
      case 0x22u:
        v199 = 0;
        v44 = [a2 position] + 4;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 4, v45 <= objc_msgSend(a2, "length")))
        {
          v162 = [a2 data];
          [v162 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v46) = v199;
        [a1 setIsPartialNameMatch:v46];
        goto LABEL_251;
      case 0x23u:
        v199 = 0;
        v32 = [a2 position] + 4;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 4, v33 <= objc_msgSend(a2, "length")))
        {
          v158 = [a2 data];
          [v158 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v34) = v199;
        [a1 setNumPrimaryTokens:v34];
        goto LABEL_251;
      case 0x24u:
        v199 = 0;
        v23 = [a2 position] + 4;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 4, v24 <= objc_msgSend(a2, "length")))
        {
          v155 = [a2 data];
          [v155 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v25) = v199;
        [a1 setAllQueryMatched:v25];
        goto LABEL_251;
      case 0x25u:
        v199 = 0;
        v26 = [a2 position] + 4;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 4, v27 <= objc_msgSend(a2, "length")))
        {
          v156 = [a2 data];
          [v156 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v28) = v199;
        [a1 setAllPrimaryNameTokensAreInQuery:v28];
        goto LABEL_251;
      case 0x26u:
        v199 = 0;
        v20 = [a2 position] + 4;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
        {
          v154 = [a2 data];
          [v154 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v22) = v199;
        [a1 setIsGivenNameMatch:v22];
        goto LABEL_251;
      case 0x27u:
        v199 = 0;
        v146 = [a2 position] + 4;
        if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 4, v147 <= objc_msgSend(a2, "length")))
        {
          v197 = [a2 data];
          [v197 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v148) = v199;
        [a1 setIsMiddleNameMatch:v148];
        goto LABEL_251;
      case 0x28u:
        v199 = 0;
        v128 = [a2 position] + 4;
        if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 4, v129 <= objc_msgSend(a2, "length")))
        {
          v191 = [a2 data];
          [v191 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v130) = v199;
        [a1 setIsFamilyNameMatch:v130];
        goto LABEL_251;
      case 0x29u:
        v199 = 0;
        v53 = [a2 position] + 4;
        if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 4, v54 <= objc_msgSend(a2, "length")))
        {
          v165 = [a2 data];
          [v165 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v55) = v199;
        [a1 setIsOrganizationNameMatch:v55];
        goto LABEL_251;
      case 0x2Au:
        v199 = 0;
        v89 = [a2 position] + 4;
        if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 4, v90 <= objc_msgSend(a2, "length")))
        {
          v178 = [a2 data];
          [v178 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v91) = v199;
        [a1 setIsNicknameMatch:v91];
        goto LABEL_251;
      case 0x2Bu:
        v199 = 0;
        v134 = [a2 position] + 4;
        if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 4, v135 <= objc_msgSend(a2, "length")))
        {
          v193 = [a2 data];
          [v193 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v136) = v199;
        [a1 setIsNamePrefixMatch:v136];
        goto LABEL_251;
      case 0x2Cu:
        v199 = 0;
        v17 = [a2 position] + 4;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
        {
          v153 = [a2 data];
          [v153 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v19) = v199;
        [a1 setIsNameSuffixMatch:v19];
        goto LABEL_251;
      case 0x2Du:
        v199 = 0;
        v38 = [a2 position] + 4;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 4, v39 <= objc_msgSend(a2, "length")))
        {
          v160 = [a2 data];
          [v160 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v40) = v199;
        [a1 setAllHandlesMatched:v40];
        goto LABEL_251;
      case 0x2Eu:
        v199 = 0;
        v122 = [a2 position] + 4;
        if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 4, v123 <= objc_msgSend(a2, "length")))
        {
          v189 = [a2 data];
          [v189 getBytes:&v199 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v124) = v199;
        [a1 setIsRelationAlias:v124];
        goto LABEL_251;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

LABEL_251:
        v4 = a2;
        break;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEContactHandleSignalSetReadFrom(void *a1, void *a2)
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
        LOBYTE(v94[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

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
        break;
      }

      if (v13 <= 3)
      {
        switch(v13)
        {
          case 1:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v94[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v94[0] & 0x7F) << v36;
              if ((v94[0] & 0x80) == 0)
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

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_143:
            [a1 setIsSuggestedHandle:v42];
            goto LABEL_158;
          case 2:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              LOBYTE(v94[0]) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v94[0] & 0x7F) << v64;
              if ((v94[0] & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v70 = 0;
                goto LABEL_151;
              }
            }

            v70 = (v66 != 0) & ~[a2 hasError];
LABEL_151:
            [a1 setIsFavorite:v70];
            goto LABEL_158;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v94[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v94[0] & 0x7F) << v14;
              if ((v94[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_137;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_137:
            [a1 setIsQueryExactMatch:v20];
            goto LABEL_158;
        }

        goto LABEL_134;
      }

      if (v13 == 4)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        while (1)
        {
          LOBYTE(v94[0]) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v94[0] & 0x7F) << v50;
          if ((v94[0] & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v56 = 0;
            goto LABEL_147;
          }
        }

        v56 = (v52 != 0) & ~[a2 hasError];
LABEL_147:
        [a1 setIsQueryMatch:v56];
        goto LABEL_158;
      }

      if (v13 == 5)
      {
        v78 = 0;
        v79 = 0;
        v80 = 0;
        while (1)
        {
          LOBYTE(v94[0]) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v94[0] & 0x7F) << v78;
          if ((v94[0] & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v11 = v79++ >= 9;
          if (v11)
          {
            v84 = 0;
            goto LABEL_155;
          }
        }

        v84 = (v80 != 0) & ~[a2 hasError];
LABEL_155:
        [a1 setIsPartialQueryValueMatch:v84];
        goto LABEL_158;
      }

      if (v13 != 6)
      {
        goto LABEL_134;
      }

      v28 = objc_alloc_init(INFERENCESchemaINFERENCEPrivatizedHistoryStats);
      v94[0] = 0;
      v94[1] = 0;
      if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEPrivatizedHistoryStatsReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setHistoryStats:v28];

LABEL_158:
      v92 = [a2 position];
      if (v92 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 9)
    {
      switch(v13)
      {
        case 0xA:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v94[0] & 0x7F) << v57;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v63 = 0;
              goto LABEL_149;
            }
          }

          v63 = (v59 != 0) & ~[a2 hasError];
LABEL_149:
          [a1 setIsAllowedType:v63];
          goto LABEL_158;
        case 0xB:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              v90 = [a2 data];
              [v90 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v94[0] & 0x7F) << v85;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v11 = v86++ >= 9;
            if (v11)
            {
              v91 = 0;
              goto LABEL_157;
            }
          }

          v91 = (v87 != 0) & ~[a2 hasError];
LABEL_157:
          [a1 setIsFaceTimeable:v91];
          goto LABEL_158;
        case 0xC:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

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
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_141;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_141:
          [a1 setIsNotFaceTimeable:v35];
          goto LABEL_158;
      }
    }

    else
    {
      switch(v13)
      {
        case 7:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v94[0] & 0x7F) << v43;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v49 = 0;
              goto LABEL_145;
            }
          }

          v49 = (v45 != 0) & ~[a2 hasError];
LABEL_145:
          [a1 setIsRecentInAnyGroup:v49];
          goto LABEL_158;
        case 8:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

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
            v11 = v72++ >= 9;
            if (v11)
            {
              v77 = 0;
              goto LABEL_153;
            }
          }

          v77 = (v73 != 0) & ~[a2 hasError];
LABEL_153:
          [a1 setIsRecentInSameGroup:v77];
          goto LABEL_158;
        case 9:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v94[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v94[0] & 0x7F) << v21;
            if ((v94[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_139;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_139:
          [a1 setIsPreferredType:v27];
          goto LABEL_158;
      }
    }

LABEL_134:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_158;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEContactMatchReadFrom(void *a1, void *a2)
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
        LOBYTE(v28) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
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
            v14 = objc_alloc_init(INFERENCESchemaINFERENCEContactFeatureSet);
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEContactFeatureSetReadFrom(v14, a2))
            {
LABEL_58:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setFeatureSet:v14];
            goto LABEL_47;
          case 5:
            LODWORD(v28) = 0;
            v22 = [a2 position] + 4;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v28 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            LODWORD(v24) = v28;
            [a1 setScore:v24];
            goto LABEL_55;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v28) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v28 & 0x7F) << v15;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_52;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_52:
            [a1 setIsShownToUser:v21];
            goto LABEL_55;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(INFERENCESchemaINFERENCEContact);
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEContactReadFrom(v14, a2))
            {
              goto LABEL_58;
            }

            PBReaderRecallMark();
            [a1 setContactValue:v14];
            goto LABEL_47;
          case 2:
            v14 = objc_alloc_init(INFERENCESchemaINFERENCEContactSignalSet);
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEContactSignalSetReadFrom(v14, a2))
            {
              goto LABEL_58;
            }

            PBReaderRecallMark();
            [a1 setContactSignalSet:v14];
            goto LABEL_47;
          case 3:
            v14 = objc_alloc_init(INFERENCESchemaINFERENCEBackgroundContactSignalSet);
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEBackgroundContactSignalSetReadFrom(v14, a2))
            {
              goto LABEL_58;
            }

            PBReaderRecallMark();
            [a1 setBackgroundSignalSet:v14];
LABEL_47:

            goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEContactQueryMetadataReadFrom(void *a1, void *a2)
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
      v65 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v65 & 0x7F) << v6;
      if ((v65 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 3)
    {
      switch(v14)
      {
        case 1:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v72 = 0;
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
              goto LABEL_93;
            }
          }

          v42 = (v38 != 0) & ~[a2 hasError];
LABEL_93:
          [a1 setHasName:v42];
          continue;
        case 2:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          while (1)
          {
            v71 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v71 & 0x7F) << v58;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v12 = v59++ >= 9;
            if (v12)
            {
              v64 = 0;
              goto LABEL_105;
            }
          }

          v64 = (v60 != 0) & ~[a2 hasError];
LABEL_105:
          [a1 setHasRelationship:v64];
          continue;
        case 3:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v70 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v70 & 0x7F) << v22;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_103;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_103:
          [a1 setHasHandleLabel:v28];
          continue;
      }
    }

    else if (v14 > 5)
    {
      if (v14 == 6)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (1)
        {
          v67 = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v67 & 0x7F) << v51;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            v57 = 0;
            goto LABEL_97;
          }
        }

        v57 = (v53 != 0) & ~[a2 hasError];
LABEL_97:
        [a1 setHasContactId:v57];
        continue;
      }

      if (v14 == 7)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v66 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v66 & 0x7F) << v29;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_101;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_101:
        [a1 setIsEmergencyQuery:v35];
        continue;
      }
    }

    else
    {
      if (v14 == 4)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v69 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v69 & 0x7F) << v44;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_95;
          }
        }

        v50 = (v46 != 0) & ~[a2 hasError];
LABEL_95:
        [a1 setHasHandleValue:v50];
        continue;
      }

      if (v14 == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v68 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v68 & 0x7F) << v15;
          if ((v68 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_99;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_99:
        [a1 setHasMeReference:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEContactResolverConfigReadFrom(void *a1, void *a2)
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
      v45 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v45 & 0x7F) << v6;
      if ((v45 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 2)
    {
      if (v14 == 1)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v46 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v46 & 0x7F) << v37;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v43 = 0;
            goto LABEL_70;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_70:
        [a1 setIsSearchingFirstPartyContacts:v43];
        continue;
      }

      if (v14 == 2)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v49 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v49 & 0x7F) << v22;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_78;
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

LABEL_78:
        [a1 setContactSearchSuggestedType:v28];
        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v48 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v48 & 0x7F) << v29;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_68;
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

LABEL_68:
          [a1 setDomainsToSearchForHistory:v35];
          continue;
        case 5:
          v36 = PBReaderReadString();
          if (v36)
          {
            [a1 addAppBundleIds:v36];
          }

          continue;
        case 4:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v47 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v47 & 0x7F) << v15;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_74;
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

LABEL_74:
          [a1 setActionType:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEContactSignalSetReadFrom(void *a1, void *a2)
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
      LOBYTE(v287) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v287 & 0x7F) << v6;
      if ((v287 & 0x80) == 0)
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
        v14 = objc_alloc_init(INFERENCESchemaINFERENCESpeechAlternativeRanks);
        v287 = 0;
        v288 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCESpeechAlternativeRanksReadFrom(v14, a2))
        {
          goto LABEL_473;
        }

        PBReaderRecallMark();
        [a1 setSpeechAlternativeRanks:v14];
        goto LABEL_306;
      case 2u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v287 & 0x7F) << v140;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            v146 = 0;
            goto LABEL_420;
          }
        }

        v146 = (v142 != 0) & ~[a2 hasError];
LABEL_420:
        [a1 setIsQueryStrippedOfTitles:v146];
        goto LABEL_307;
      case 3u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v287 & 0x7F) << v112;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v118 = 0;
            goto LABEL_412;
          }
        }

        v118 = (v114 != 0) & ~[a2 hasError];
LABEL_412:
        [a1 setIsSuggestedContact:v118];
        goto LABEL_307;
      case 4u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v287 & 0x7F) << v126;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            v132 = 0;
            goto LABEL_416;
          }
        }

        v132 = (v128 != 0) & ~[a2 hasError];
LABEL_416:
        [a1 setAreAllQueryTokensInContact:v132];
        goto LABEL_307;
      case 5u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v287 & 0x7F) << v74;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v80 = 0;
            goto LABEL_402;
          }
        }

        v80 = (v76 != 0) & ~[a2 hasError];
LABEL_402:
        [a1 setAreAllPrimaryContactTokensInQuery:v80];
        goto LABEL_307;
      case 6u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v287 & 0x7F) << v161;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            v167 = 0;
            goto LABEL_428;
          }
        }

        v167 = (v163 != 0) & ~[a2 hasError];
LABEL_428:
        [a1 setIsHypocorism:v167];
        goto LABEL_307;
      case 7u:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v178 = [a2 position] + 1;
          if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
          {
            v180 = [a2 data];
            [v180 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v177 |= (v287 & 0x7F) << v175;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v12 = v176++ >= 9;
          if (v12)
          {
            v181 = 0;
            goto LABEL_432;
          }
        }

        v181 = (v177 != 0) & ~[a2 hasError];
LABEL_432:
        [a1 setHasSuggestedProperties:v181];
        goto LABEL_307;
      case 8u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v287 & 0x7F) << v133;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v139 = 0;
            goto LABEL_418;
          }
        }

        v139 = (v135 != 0) & ~[a2 hasError];
LABEL_418:
        [a1 setIsPartialNameMatch:v139];
        goto LABEL_307;
      case 9u:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            v201 = [a2 data];
            [v201 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v287 & 0x7F) << v196;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v12 = v197++ >= 9;
          if (v12)
          {
            v202 = 0;
            goto LABEL_440;
          }
        }

        v202 = (v198 != 0) & ~[a2 hasError];
LABEL_440:
        [a1 setIsFromStandardSearch:v202];
        goto LABEL_307;
      case 0xAu:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v287 & 0x7F) << v91;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_406;
          }
        }

        v97 = (v93 != 0) & ~[a2 hasError];
LABEL_406:
        [a1 setIsFromNLXSearch:v97];
        goto LABEL_307;
      case 0xBu:
        v189 = 0;
        v190 = 0;
        v191 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v192 = [a2 position] + 1;
          if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 1, v193 <= objc_msgSend(a2, "length")))
          {
            v194 = [a2 data];
            [v194 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v191 |= (v287 & 0x7F) << v189;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v189 += 7;
          v12 = v190++ >= 9;
          if (v12)
          {
            v195 = 0;
            goto LABEL_438;
          }
        }

        v195 = (v191 != 0) & ~[a2 hasError];
LABEL_438:
        [a1 setIsFromSRRSearch:v195];
        goto LABEL_307;
      case 0xCu:
        LODWORD(v287) = 0;
        v71 = [a2 position] + 4;
        if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 4, v72 <= objc_msgSend(a2, "length")))
        {
          v283 = [a2 data];
          [v283 getBytes:&v287 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v73) = v287;
        [a1 setNlxScore:v73];
        goto LABEL_307;
      case 0xDu:
        LODWORD(v287) = 0;
        v88 = [a2 position] + 4;
        if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 4, v89 <= objc_msgSend(a2, "length")))
        {
          v284 = [a2 data];
          [v284 getBytes:&v287 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v90) = v287;
        [a1 setSrrScore:v90];
        goto LABEL_307;
      case 0xEu:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            v173 = [a2 data];
            [v173 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v170 |= (v287 & 0x7F) << v168;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v12 = v169++ >= 9;
          if (v12)
          {
            v174 = 0;
            goto LABEL_430;
          }
        }

        v174 = (v170 != 0) & ~[a2 hasError];
LABEL_430:
        [a1 setIsRecent:v174];
        goto LABEL_307;
      case 0xFu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v287 & 0x7F) << v64;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v70 = 0;
            goto LABEL_400;
          }
        }

        v70 = (v66 != 0) & ~[a2 hasError];
LABEL_400:
        [a1 setIsRecentInSameDomain:v70];
        goto LABEL_307;
      case 0x10u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v287 & 0x7F) << v119;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v125 = 0;
            goto LABEL_414;
          }
        }

        v125 = (v121 != 0) & ~[a2 hasError];
LABEL_414:
        [a1 setIsRecentInSiriRequest:v125];
        goto LABEL_307;
      case 0x11u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v287 & 0x7F) << v50;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v56 = 0;
            goto LABEL_396;
          }
        }

        v56 = (v52 != 0) & ~[a2 hasError];
LABEL_396:
        [a1 setIsRecentlyCorrected:v56];
        goto LABEL_307;
      case 0x12u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v287 & 0x7F) << v154;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v160 = 0;
            goto LABEL_426;
          }
        }

        if ([a2 hasError])
        {
          v160 = 0;
        }

        else
        {
          v160 = v156;
        }

LABEL_426:
        [a1 setRecencyRank:v160];
        goto LABEL_307;
      case 0x13u:
        v182 = 0;
        v183 = 0;
        v184 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v184 |= (v287 & 0x7F) << v182;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v12 = v183++ >= 9;
          if (v12)
          {
            v188 = 0;
            goto LABEL_436;
          }
        }

        if ([a2 hasError])
        {
          v188 = 0;
        }

        else
        {
          v188 = v184;
        }

LABEL_436:
        [a1 setRecencyRankInSameDomain:v188];
        goto LABEL_307;
      case 0x14u:
        v231 = 0;
        v232 = 0;
        v233 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v234 = [a2 position] + 1;
          if (v234 >= [a2 position] && (v235 = objc_msgSend(a2, "position") + 1, v235 <= objc_msgSend(a2, "length")))
          {
            v236 = [a2 data];
            [v236 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v233 |= (v287 & 0x7F) << v231;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v231 += 7;
          v12 = v232++ >= 9;
          if (v12)
          {
            v237 = 0;
            goto LABEL_452;
          }
        }

        if ([a2 hasError])
        {
          v237 = 0;
        }

        else
        {
          v237 = v233;
        }

LABEL_452:
        [a1 setRecencyRankInSiriRequest:v237];
        goto LABEL_307;
      case 0x15u:
        v14 = objc_alloc_init(INFERENCESchemaINFERENCEPrivatizedHistoryStats);
        v287 = 0;
        v288 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEPrivatizedHistoryStatsReadFrom(v14, a2))
        {
          goto LABEL_473;
        }

        PBReaderRecallMark();
        [a1 setHistoryStats:v14];
        goto LABEL_306;
      case 0x16u:
        v14 = objc_alloc_init(INFERENCESchemaINFERENCEPrivatizedHistoryStats);
        v287 = 0;
        v288 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEPrivatizedHistoryStatsReadFrom(v14, a2))
        {
          goto LABEL_473;
        }

        PBReaderRecallMark();
        [a1 setHistoryStatsInSameDomain:v14];
        goto LABEL_306;
      case 0x17u:
        v14 = objc_alloc_init(INFERENCESchemaINFERENCEPrivatizedHistoryStats);
        v287 = 0;
        v288 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEPrivatizedHistoryStatsReadFrom(v14, a2))
        {
          goto LABEL_473;
        }

        PBReaderRecallMark();
        [a1 setHistoryStatsInSiriRequests:v14];
        goto LABEL_306;
      case 0x18u:
        v245 = 0;
        v246 = 0;
        v247 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v248 = [a2 position] + 1;
          if (v248 >= [a2 position] && (v249 = objc_msgSend(a2, "position") + 1, v249 <= objc_msgSend(a2, "length")))
          {
            v250 = [a2 data];
            [v250 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v247 |= (v287 & 0x7F) << v245;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v245 += 7;
          v12 = v246++ >= 9;
          if (v12)
          {
            v251 = 0;
            goto LABEL_456;
          }
        }

        v251 = (v247 != 0) & ~[a2 hasError];
LABEL_456:
        [a1 setIsMeCard:v251];
        goto LABEL_307;
      case 0x19u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v287 & 0x7F) << v105;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_410;
          }
        }

        v111 = (v107 != 0) & ~[a2 hasError];
LABEL_410:
        [a1 setIsMeCardRelation:v111];
        goto LABEL_307;
      case 0x1Au:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v287 & 0x7F) << v98;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_408;
          }
        }

        v104 = (v100 != 0) & ~[a2 hasError];
LABEL_408:
        [a1 setIsMeCardRelationExactMatch:v104];
        goto LABEL_307;
      case 0x1Bu:
        v269 = 0;
        v270 = 0;
        v271 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v272 = [a2 position] + 1;
          if (v272 >= [a2 position] && (v273 = objc_msgSend(a2, "position") + 1, v273 <= objc_msgSend(a2, "length")))
          {
            v274 = [a2 data];
            [v274 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v271 |= (v287 & 0x7F) << v269;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v269 += 7;
          v12 = v270++ >= 9;
          if (v12)
          {
            v275 = 0;
            goto LABEL_462;
          }
        }

        v275 = (v271 != 0) & ~[a2 hasError];
LABEL_462:
        [a1 setIsRelationAlias:v275];
        goto LABEL_307;
      case 0x1Cu:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v287 & 0x7F) << v43;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_394;
          }
        }

        v49 = (v45 != 0) & ~[a2 hasError];
LABEL_394:
        [a1 setAreQueryDiacriticsRemoved:v49];
        goto LABEL_307;
      case 0x1Du:
        v252 = 0;
        v253 = 0;
        v254 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v255 = [a2 position] + 1;
          if (v255 >= [a2 position] && (v256 = objc_msgSend(a2, "position") + 1, v256 <= objc_msgSend(a2, "length")))
          {
            v257 = [a2 data];
            [v257 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v254 |= (v287 & 0x7F) << v252;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v252 += 7;
          v12 = v253++ >= 9;
          if (v12)
          {
            v258 = 0;
            goto LABEL_458;
          }
        }

        v258 = (v254 != 0) & ~[a2 hasError];
LABEL_458:
        [a1 setIsQueryNameDerivedFromRelationshipLabel:v258];
        goto LABEL_307;
      case 0x1Eu:
        v259 = 0;
        v260 = 0;
        v261 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v262 = [a2 position] + 1;
          if (v262 >= [a2 position] && (v263 = objc_msgSend(a2, "position") + 1, v263 <= objc_msgSend(a2, "length")))
          {
            v264 = [a2 data];
            [v264 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v261 |= (v287 & 0x7F) << v259;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v259 += 7;
          v12 = v260++ >= 9;
          if (v12)
          {
            v265 = 0;
            goto LABEL_460;
          }
        }

        v265 = (v261 != 0) & ~[a2 hasError];
LABEL_460:
        [a1 setIsQueryRelationshipLabelDerivedFromName:v265];
        goto LABEL_307;
      case 0x1Fu:
        v203 = 0;
        v204 = 0;
        v205 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v206 = [a2 position] + 1;
          if (v206 >= [a2 position] && (v207 = objc_msgSend(a2, "position") + 1, v207 <= objc_msgSend(a2, "length")))
          {
            v208 = [a2 data];
            [v208 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v205 |= (v287 & 0x7F) << v203;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v203 += 7;
          v12 = v204++ >= 9;
          if (v12)
          {
            v209 = 0;
            goto LABEL_442;
          }
        }

        v209 = (v205 != 0) & ~[a2 hasError];
LABEL_442:
        [a1 setIsThirdPartyMatch:v209];
        goto LABEL_307;
      case 0x20u:
        v147 = 0;
        v148 = 0;
        v149 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v150 = [a2 position] + 1;
          if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
          {
            v152 = [a2 data];
            [v152 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v149 |= (v287 & 0x7F) << v147;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v147 += 7;
          v12 = v148++ >= 9;
          if (v12)
          {
            v153 = 0;
            goto LABEL_422;
          }
        }

        v153 = (v149 != 0) & ~[a2 hasError];
LABEL_422:
        [a1 setIsFavorite:v153];
        goto LABEL_307;
      case 0x21u:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v213 = [a2 position] + 1;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 1, v214 <= objc_msgSend(a2, "length")))
          {
            v215 = [a2 data];
            [v215 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v212 |= (v287 & 0x7F) << v210;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v12 = v211++ >= 9;
          if (v12)
          {
            v216 = 0;
            goto LABEL_444;
          }
        }

        v216 = (v212 != 0) & ~[a2 hasError];
LABEL_444:
        [a1 setIsTransliterated:v216];
        goto LABEL_307;
      case 0x22u:
        v14 = objc_alloc_init(INFERENCESchemaINFERENCERequestMatchSignalSet);
        v287 = 0;
        v288 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCERequestMatchSignalSetReadFrom(v14, a2))
        {
          goto LABEL_473;
        }

        PBReaderRecallMark();
        [a1 setRequestMatchSignalSet:v14];
        goto LABEL_306;
      case 0x23u:
        v14 = objc_alloc_init(INFERENCESchemaINFERENCEContactHandleSignalSet);
        v287 = 0;
        v288 = 0;
        if (PBReaderPlaceMark() && INFERENCESchemaINFERENCEContactHandleSignalSetReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          if (v14)
          {
            [a1 addHandlesWithPrivacySignalSets:v14];
          }

LABEL_306:

LABEL_307:
          v4 = a2;
          continue;
        }

LABEL_473:

        return 0;
      case 0x24u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v287 & 0x7F) << v29;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_390;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_390:
        [a1 setHasHandleWithPreferredType:v35];
        goto LABEL_307;
      case 0x25u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v287 & 0x7F) << v36;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_392;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_392:
        [a1 setHasHandleWithAllowedType:v42];
        goto LABEL_307;
      case 0x26u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v287 & 0x7F) << v22;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_388;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_388:
        [a1 setIsCommunalRequest:v28];
        goto LABEL_307;
      case 0x27u:
        LODWORD(v287) = 0;
        v266 = [a2 position] + 4;
        if (v266 >= [a2 position] && (v267 = objc_msgSend(a2, "position") + 4, v267 <= objc_msgSend(a2, "length")))
        {
          v285 = [a2 data];
          [v285 getBytes:&v287 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v268) = v287;
        [a1 setFractionOfCommunalDevicesMatchingCandidate:v268];
        goto LABEL_307;
      case 0x28u:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            v229 = [a2 data];
            [v229 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v287 & 0x7F) << v224;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v12 = v225++ >= 9;
          if (v12)
          {
            v230 = 0;
            goto LABEL_448;
          }
        }

        v230 = (v226 != 0) & ~[a2 hasError];
LABEL_448:
        [a1 setIsPlusSignal:v230];
        goto LABEL_307;
      case 0x29u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (v287 & 0x7F) << v81;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v12 = v82++ >= 9;
          if (v12)
          {
            v87 = 0;
            goto LABEL_404;
          }
        }

        v87 = (v83 != 0) & ~[a2 hasError];
LABEL_404:
        [a1 setIsOnlyCandidate:v87];
        goto LABEL_307;
      case 0x2Au:
        v14 = PBReaderReadString();
        [a1 setThirdPartyAppBundleId:v14];
        goto LABEL_306;
      case 0x2Bu:
        v238 = 0;
        v239 = 0;
        v240 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v241 = [a2 position] + 1;
          if (v241 >= [a2 position] && (v242 = objc_msgSend(a2, "position") + 1, v242 <= objc_msgSend(a2, "length")))
          {
            v243 = [a2 data];
            [v243 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v240 |= (v287 & 0x7F) << v238;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v238 += 7;
          v12 = v239++ >= 9;
          if (v12)
          {
            v244 = 0;
            goto LABEL_454;
          }
        }

        v244 = (v240 != 0) & ~[a2 hasError];
LABEL_454:
        [a1 setIsQueryNormalized:v244];
        goto LABEL_307;
      case 0x2Cu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v287 & 0x7F) << v15;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_386;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_386:
        [a1 setIsQueryStrippedOfPunctuation:v21];
        goto LABEL_307;
      case 0x2Du:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v287 & 0x7F) << v57;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            v63 = 0;
            goto LABEL_398;
          }
        }

        v63 = (v59 != 0) & ~[a2 hasError];
LABEL_398:
        [a1 setIsQueryStrippedOfWhitespace:v63];
        goto LABEL_307;
      case 0x2Eu:
        v217 = 0;
        v218 = 0;
        v219 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v220 = [a2 position] + 1;
          if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
          {
            v222 = [a2 data];
            [v222 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v219 |= (v287 & 0x7F) << v217;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v217 += 7;
          v12 = v218++ >= 9;
          if (v12)
          {
            v223 = 0;
            goto LABEL_446;
          }
        }

        v223 = (v219 != 0) & ~[a2 hasError];
LABEL_446:
        [a1 setIsQueryStrippedOfSymbols:v223];
        goto LABEL_307;
      case 0x2Fu:
        v276 = 0;
        v277 = 0;
        v278 = 0;
        while (1)
        {
          LOBYTE(v287) = 0;
          v279 = [a2 position] + 1;
          if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 1, v280 <= objc_msgSend(a2, "length")))
          {
            v281 = [a2 data];
            [v281 getBytes:&v287 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v278 |= (v287 & 0x7F) << v276;
          if ((v287 & 0x80) == 0)
          {
            break;
          }

          v276 += 7;
          v12 = v277++ >= 9;
          if (v12)
          {
            v282 = 0;
            goto LABEL_464;
          }
        }

        v282 = (v278 != 0) & ~[a2 hasError];
LABEL_464:
        [a1 setIsAsrE3Signal:v282];
        goto LABEL_307;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_307;
    }
  }
}

uint64_t INFERENCESchemaINFERENCECRRTrainingSampleCollectedReadFrom(void *a1, void *a2)
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
      LOBYTE(v65) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v65 & 0x7F) << v5;
      if ((v65 & 0x80) == 0)
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
        [a1 setIntentTypeName:v13];
        goto LABEL_104;
      case 2u:
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEContactResolverConfig);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEContactResolverConfigReadFrom(v13, a2))
        {
          goto LABEL_131;
        }

        PBReaderRecallMark();
        [a1 setResolverConfig:v13];
        goto LABEL_104;
      case 3u:
        v13 = objc_alloc_init(INFERENCESchemaINFERENCETrialEnrollment);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCETrialEnrollmentReadFrom(v13, a2))
        {
          goto LABEL_131;
        }

        PBReaderRecallMark();
        [a1 setTrialEnrollment:v13];
        goto LABEL_104;
      case 4u:
        v13 = PBReaderReadString();
        [a1 setModelVersion:v13];
        goto LABEL_104;
      case 5u:
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEContactMatch);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEContactMatchReadFrom(v13, a2))
        {
          goto LABEL_131;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addMatches:v13];
        }

        goto LABEL_104;
      case 6u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
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
            v41 = 0;
            goto LABEL_120;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_120:
        [a1 setResolutionState:v41];
        goto LABEL_105;
      case 7u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v65 & 0x7F) << v49;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_126;
          }
        }

        if ([a2 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_126:
        [a1 setResolutionType:v55];
        goto LABEL_105;
      case 8u:
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEPromptContext);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEPromptContextReadFrom(v13, a2))
        {
          goto LABEL_131;
        }

        PBReaderRecallMark();
        [a1 setForcePrompt:v13];
        goto LABEL_104;
      case 9u:
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addAnonymizedContactIdentifiers:v13];
        }

        goto LABEL_104;
      case 0xAu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v65 & 0x7F) << v28;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_116;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_116:
        [a1 setIsInteractionExecuted:v34];
        goto LABEL_105;
      case 0xBu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v65 & 0x7F) << v56;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v62 = 0;
            goto LABEL_128;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_128:
        [a1 setIsInteractionSuccess:v62];
        goto LABEL_105;
      case 0xCu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v65 & 0x7F) << v21;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_114;
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

LABEL_114:
        [a1 setInteractionDurationInSecBucket:v27];
        goto LABEL_105;
      case 0xDu:
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEPotentialRetryContactInteractionContextReadFrom(v13, a2))
        {
          goto LABEL_131;
        }

        PBReaderRecallMark();
        [a1 setInteractionContext:v13];
        goto LABEL_104;
      case 0xEu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v65 & 0x7F) << v42;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_122;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_122:
        [a1 setIsPlusContactSuggesterEnabled:v48];
        goto LABEL_105;
      case 0xFu:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v65 & 0x7F) << v14;
          if ((v65 & 0x80) == 0)
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
        [a1 setIsEntityCandidateRetrievalEnabled:v20];
        goto LABEL_105;
      case 0x10u:
        v13 = objc_alloc_init(SISchemaUUID);
        v65 = 0;
        v66 = 0;
        if (PBReaderPlaceMark() && SISchemaUUIDReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setCrrCommsAppSelectionJointId:v13];
LABEL_104:

LABEL_105:
          v63 = [a2 position];
          if (v63 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_131:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_105;
    }
  }
}

uint64_t INFERENCESchemaINFERENCEDisambiguationPromptContextReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setAnonymizedEntitySelected:v14];
LABEL_23:

      continue;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addAnonymizedEntitiesPresented:v14];
      }

      goto LABEL_23;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t INFERENCESchemaINFERENCEEuclidDebugMetricsReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 8)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
LABEL_97:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addMatchedTemplateIds:v14];
            }

            goto LABEL_77;
          }

          if (v13 == 7)
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
                goto LABEL_93;
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

LABEL_93:
            [a1 setNumRowsVectorDb:v35];
            goto LABEL_94;
          }
        }

        else
        {
          if (v13 == 5)
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
                goto LABEL_81;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_81:
            [a1 setIsLmePresent:v42];
            goto LABEL_94;
          }

          if (v13 == 6)
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
                goto LABEL_85;
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

LABEL_85:
            [a1 addTokenWiseAsrConfidence:v21];
            goto LABEL_94;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(INFERENCESchemaINFERENCEEuclidTrialParameters);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEEuclidTrialParametersReadFrom(v14, a2))
          {
            goto LABEL_97;
          }

          PBReaderRecallMark();
          [a1 setEuclidTrialParameters:v14];
          goto LABEL_77;
        }

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
              goto LABEL_89;
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

LABEL_89:
          [a1 addEuclidEntityTypeMatched:v28];
          goto LABEL_94;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_97;
          }

          PBReaderRecallMark();
          [a1 setTemplateId:v14];
          goto LABEL_77;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(INFERENCESchemaINFERENCEEuclidScoreStatistics);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEEuclidScoreStatisticsReadFrom(v14, a2))
          {
            goto LABEL_97;
          }

          PBReaderRecallMark();
          [a1 setEuclidScoreStatistics:v14];
LABEL_77:

          goto LABEL_94;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_94:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEEuclidScoreStatisticsReadFrom(void *a1, void *a2)
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
      LOBYTE(v32) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v32 & 0x7F) << v6;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v32 = 0;
        v25 = [a2 position] + 4;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v27) = v32;
        [a1 setMedianScore:v27];
        continue;
      }

      if (v14 == 4)
      {
        v32 = 0;
        v18 = [a2 position] + 4;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v20) = v32;
        [a1 setMeanScore:v20];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v32 = 0;
        v22 = [a2 position] + 4;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v24) = v32;
        [a1 setMinScore:v24];
        continue;
      }

      if (v14 == 2)
      {
        v32 = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v17) = v32;
        [a1 setMaxScore:v17];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEEuclidServiceMetricsReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v30 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v30 & 0x7F) << v21;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_45;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_45:
      [a1 setIsAsrE3Invoked:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v31 = 0;
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
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
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

LABEL_43:
      [a1 setNumEuclidCandidates:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEEuclidTrialParametersReadFrom(void *a1, void *a2)
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
      v27 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v27 & 0x7F) << v6;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 3)
    {
      v25 = 0;
      v19 = [a2 position] + 4;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
      {
        v24 = [a2 data];
        [v24 getBytes:&v25 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v21) = v25;
      [a1 setEuclidAsrConfidenceThreshold:v21];
    }

    else if (v14 == 2)
    {
      v26 = 0;
      v16 = [a2 position] + 4;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
      {
        v23 = [a2 data];
        [v23 getBytes:&v26 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v18) = v26;
      [a1 setEuclidScoreThreshold:v18];
    }

    else if (v14 == 1)
    {
      v15 = PBReaderReadString();
      [a1 setEuclidModelVersion:v15];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCELongRunningTaskInfoReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 setDurationInMs:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGeneratedReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEMusicTrainingIndependentSignals);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEMusicTrainingIndependentSignalsReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setInferenceMusicTrainingIndependentSignals:v13];
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

    v13 = objc_alloc_init(INFERENCESchemaINFERENCEMusicTrainingDependentSignals);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEMusicTrainingDependentSignalsReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addInferenceMusicTrainingDependentSignals:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEMusicTrainingDependentSignalsReadFrom(void *a1, void *a2)
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
      LOBYTE(v446) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v446) & 0x7F) << v6;
      if ((LOBYTE(v446) & 0x80) == 0)
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
        while (1)
        {
          LOBYTE(v446) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v446) & 0x7F) << v14;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_651:
            [a1 setIsClientForegroundActiveBundle:v20];
            goto LABEL_764;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
        goto LABEL_651;
      case 2u:
        v446 = 0.0;
        v265 = [a2 position] + 8;
        if (v265 >= [a2 position] && (v266 = objc_msgSend(a2, "position") + 8, v266 <= objc_msgSend(a2, "length")))
        {
          v436 = [a2 data];
          [v436 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setCompoundActiveBundleScore:v446];
        continue;
      case 3u:
        v446 = 0.0;
        v240 = [a2 position] + 8;
        if (v240 >= [a2 position] && (v241 = objc_msgSend(a2, "position") + 8, v241 <= objc_msgSend(a2, "length")))
        {
          v434 = [a2 data];
          [v434 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setCompoundMediaTypeBundleScore:v446];
        continue;
      case 4u:
        v446 = 0.0;
        v283 = [a2 position] + 8;
        if (v283 >= [a2 position] && (v284 = objc_msgSend(a2, "position") + 8, v284 <= objc_msgSend(a2, "length")))
        {
          v438 = [a2 data];
          [v438 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setEntitySearchBundleRecencyS:v446];
        continue;
      case 5u:
        v446 = 0.0;
        v210 = [a2 position] + 8;
        if (v210 >= [a2 position] && (v211 = objc_msgSend(a2, "position") + 8, v211 <= objc_msgSend(a2, "length")))
        {
          v433 = [a2 data];
          [v433 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setEntitySearchBundleScore:v446];
        continue;
      case 6u:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v176 = [a2 position] + 1;
          if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
          {
            v178 = [a2 data];
            [v178 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v175 |= (LOBYTE(v446) & 0x7F) << v173;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v173 += 7;
          v12 = v174++ >= 9;
          if (v12)
          {
            v179 = 0;
            goto LABEL_621;
          }
        }

        v179 = (v175 != 0) & ~[a2 hasError];
LABEL_621:
        [a1 setIsForegroundBundle:v179];
        continue;
      case 8u:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            v185 = [a2 data];
            [v185 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (LOBYTE(v446) & 0x7F) << v180;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v12 = v181++ >= 9;
          if (v12)
          {
            v186 = 0;
            goto LABEL_623;
          }
        }

        v186 = (v182 != 0) & ~[a2 hasError];
LABEL_623:
        [a1 setIsNowPlayingBundle:v186];
        continue;
      case 9u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (LOBYTE(v446) & 0x7F) << v148;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v154 = 0;
            goto LABEL_613;
          }
        }

        if ([a2 hasError])
        {
          v154 = 0;
        }

        else
        {
          v154 = v150;
        }

LABEL_613:
        [a1 setNowPlayingBundleCount:v154];
        continue;
      case 0xAu:
        v446 = 0.0;
        v171 = [a2 position] + 8;
        if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 8, v172 <= objc_msgSend(a2, "length")))
        {
          v431 = [a2 data];
          [v431 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setNowPlayingBundleRecencyS:v446];
        continue;
      case 0xBu:
        v446 = 0.0;
        v116 = [a2 position] + 8;
        if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 8, v117 <= objc_msgSend(a2, "length")))
        {
          v428 = [a2 data];
          [v428 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setNowPlayingBundleScore:v446];
        continue;
      case 0xCu:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (LOBYTE(v446) & 0x7F) << v157;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v163 = 0;
            goto LABEL_615;
          }
        }

        v163 = (v159 != 0) & ~[a2 hasError];
LABEL_615:
        [a1 setIsNowPlayingLastBundle:v163];
        continue;
      case 0xDu:
        v226 = 0;
        v227 = 0;
        v228 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v229 = [a2 position] + 1;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
          {
            v231 = [a2 data];
            [v231 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v228 |= (LOBYTE(v446) & 0x7F) << v226;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v226 += 7;
          v12 = v227++ >= 9;
          if (v12)
          {
            v232 = 0;
            goto LABEL_645;
          }
        }

        if ([a2 hasError])
        {
          v232 = 0;
        }

        else
        {
          v232 = v228;
        }

LABEL_645:
        [a1 setNowPlayingUsage1Day:v232];
        continue;
      case 0xEu:
        v212 = 0;
        v213 = 0;
        v214 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v214 |= (LOBYTE(v446) & 0x7F) << v212;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v212 += 7;
          v12 = v213++ >= 9;
          if (v12)
          {
            v218 = 0;
            goto LABEL_639;
          }
        }

        if ([a2 hasError])
        {
          v218 = 0;
        }

        else
        {
          v218 = v214;
        }

LABEL_639:
        [a1 setNowPlayingUsage7Days:v218];
        continue;
      case 0xFu:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (LOBYTE(v446) & 0x7F) << v127;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v133 = 0;
            goto LABEL_601;
          }
        }

        if ([a2 hasError])
        {
          v133 = 0;
        }

        else
        {
          v133 = v129;
        }

LABEL_601:
        [a1 setNowPlayingUsage14Days:v133];
        continue;
      case 0x10u:
        v285 = 0;
        v286 = 0;
        v287 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v288 = [a2 position] + 1;
          if (v288 >= [a2 position] && (v289 = objc_msgSend(a2, "position") + 1, v289 <= objc_msgSend(a2, "length")))
          {
            v290 = [a2 data];
            [v290 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v287 |= (LOBYTE(v446) & 0x7F) << v285;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v285 += 7;
          v12 = v286++ >= 9;
          if (v12)
          {
            v291 = 0;
            goto LABEL_667;
          }
        }

        v291 = (v287 != 0) & ~[a2 hasError];
LABEL_667:
        [a1 setIsRawLastNowPlayingCoreDuet:v291];
        continue;
      case 0x11u:
        v292 = 0;
        v293 = 0;
        v294 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v295 = [a2 position] + 1;
          if (v295 >= [a2 position] && (v296 = objc_msgSend(a2, "position") + 1, v296 <= objc_msgSend(a2, "length")))
          {
            v297 = [a2 data];
            [v297 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v294 |= (LOBYTE(v446) & 0x7F) << v292;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v292 += 7;
          v12 = v293++ >= 9;
          if (v12)
          {
            v298 = 0;
            goto LABEL_669;
          }
        }

        v298 = (v294 != 0) & ~[a2 hasError];
LABEL_669:
        [a1 setIsRawMediaCategoryAudiobookSignal:v298];
        continue;
      case 0x12u:
        v315 = 0;
        v316 = 0;
        v317 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v318 = [a2 position] + 1;
          if (v318 >= [a2 position] && (v319 = objc_msgSend(a2, "position") + 1, v319 <= objc_msgSend(a2, "length")))
          {
            v320 = [a2 data];
            [v320 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v317 |= (LOBYTE(v446) & 0x7F) << v315;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v315 += 7;
          v12 = v316++ >= 9;
          if (v12)
          {
            v321 = 0;
            goto LABEL_677;
          }
        }

        v321 = (v317 != 0) & ~[a2 hasError];
LABEL_677:
        [a1 setIsRawMediaCategoryMusicSignal:v321];
        continue;
      case 0x13u:
        v301 = 0;
        v302 = 0;
        v303 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v304 = [a2 position] + 1;
          if (v304 >= [a2 position] && (v305 = objc_msgSend(a2, "position") + 1, v305 <= objc_msgSend(a2, "length")))
          {
            v306 = [a2 data];
            [v306 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v303 |= (LOBYTE(v446) & 0x7F) << v301;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v301 += 7;
          v12 = v302++ >= 9;
          if (v12)
          {
            v307 = 0;
            goto LABEL_671;
          }
        }

        v307 = (v303 != 0) & ~[a2 hasError];
LABEL_671:
        [a1 setIsRawMediaCategoryPodcastSignal:v307];
        continue;
      case 0x14u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (LOBYTE(v446) & 0x7F) << v102;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            v108 = 0;
            goto LABEL_591;
          }
        }

        v108 = (v104 != 0) & ~[a2 hasError];
LABEL_591:
        [a1 setIsRawMediaCategoryRadioSignal:v108];
        continue;
      case 0x15u:
        v219 = 0;
        v220 = 0;
        v221 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v222 = [a2 position] + 1;
          if (v222 >= [a2 position] && (v223 = objc_msgSend(a2, "position") + 1, v223 <= objc_msgSend(a2, "length")))
          {
            v224 = [a2 data];
            [v224 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v221 |= (LOBYTE(v446) & 0x7F) << v219;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v219 += 7;
          v12 = v220++ >= 9;
          if (v12)
          {
            v225 = 0;
            goto LABEL_641;
          }
        }

        v225 = (v221 != 0) & ~[a2 hasError];
LABEL_641:
        [a1 setIsRawMediaCategoryVideoSignal:v225];
        continue;
      case 0x16u:
        v352 = 0;
        v353 = 0;
        v354 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v355 = [a2 position] + 1;
          if (v355 >= [a2 position] && (v356 = objc_msgSend(a2, "position") + 1, v356 <= objc_msgSend(a2, "length")))
          {
            v357 = [a2 data];
            [v357 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v354 |= (LOBYTE(v446) & 0x7F) << v352;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v352 += 7;
          v12 = v353++ >= 9;
          if (v12)
          {
            v358 = 0;
            goto LABEL_695;
          }
        }

        if ([a2 hasError])
        {
          v358 = 0;
        }

        else
        {
          v358 = v354;
        }

LABEL_695:
        [a1 setRawMediaTypeUsageSignalBook:v358];
        continue;
      case 0x17u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (LOBYTE(v446) & 0x7F) << v120;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            v126 = 0;
            goto LABEL_597;
          }
        }

        if ([a2 hasError])
        {
          v126 = 0;
        }

        else
        {
          v126 = v122;
        }

LABEL_597:
        [a1 setRawMediaTypeUsageSignalMusic:v126];
        continue;
      case 0x18u:
        v203 = 0;
        v204 = 0;
        v205 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v206 = [a2 position] + 1;
          if (v206 >= [a2 position] && (v207 = objc_msgSend(a2, "position") + 1, v207 <= objc_msgSend(a2, "length")))
          {
            v208 = [a2 data];
            [v208 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v205 |= (LOBYTE(v446) & 0x7F) << v203;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v203 += 7;
          v12 = v204++ >= 9;
          if (v12)
          {
            v209 = 0;
            goto LABEL_635;
          }
        }

        if ([a2 hasError])
        {
          v209 = 0;
        }

        else
        {
          v209 = v205;
        }

LABEL_635:
        [a1 setRawMediaTypeUsageSignalPodcast:v209];
        continue;
      case 0x19u:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v144 = [a2 position] + 1;
          if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
          {
            v146 = [a2 data];
            [v146 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v143 |= (LOBYTE(v446) & 0x7F) << v141;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v12 = v142++ >= 9;
          if (v12)
          {
            v147 = 0;
            goto LABEL_609;
          }
        }

        if ([a2 hasError])
        {
          v147 = 0;
        }

        else
        {
          v147 = v143;
        }

LABEL_609:
        [a1 setRawMediaTypeUsageSignalVideo:v147];
        continue;
      case 0x1Bu:
        v256 = 0;
        v257 = 0;
        v258 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v259 = [a2 position] + 1;
          if (v259 >= [a2 position] && (v260 = objc_msgSend(a2, "position") + 1, v260 <= objc_msgSend(a2, "length")))
          {
            v261 = [a2 data];
            [v261 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v258 |= (LOBYTE(v446) & 0x7F) << v256;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v256 += 7;
          v12 = v257++ >= 9;
          if (v12)
          {
            v262 = 0;
            goto LABEL_659;
          }
        }

        if ([a2 hasError])
        {
          v262 = 0;
        }

        else
        {
          v262 = v258;
        }

LABEL_659:
        [a1 setRawNowPlayingCountCoreDuet10Min:v262];
        continue;
      case 0x1Cu:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (LOBYTE(v446) & 0x7F) << v134;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            v140 = 0;
            goto LABEL_605;
          }
        }

        if ([a2 hasError])
        {
          v140 = 0;
        }

        else
        {
          v140 = v136;
        }

LABEL_605:
        [a1 setRawNowPlayingCountCoreDuet1Day:v140];
        continue;
      case 0x1Du:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (LOBYTE(v446) & 0x7F) << v88;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v94 = 0;
            goto LABEL_587;
          }
        }

        if ([a2 hasError])
        {
          v94 = 0;
        }

        else
        {
          v94 = v90;
        }

LABEL_587:
        [a1 setRawNowPlayingCountCoreDuet1Hr:v94];
        continue;
      case 0x1Eu:
        v374 = 0;
        v375 = 0;
        v376 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v377 = [a2 position] + 1;
          if (v377 >= [a2 position] && (v378 = objc_msgSend(a2, "position") + 1, v378 <= objc_msgSend(a2, "length")))
          {
            v379 = [a2 data];
            [v379 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v376 |= (LOBYTE(v446) & 0x7F) << v374;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v374 += 7;
          v12 = v375++ >= 9;
          if (v12)
          {
            v380 = 0;
            goto LABEL_705;
          }
        }

        if ([a2 hasError])
        {
          v380 = 0;
        }

        else
        {
          v380 = v376;
        }

LABEL_705:
        [a1 setRawNowPlayingCountCoreDuet28Day:v380];
        continue;
      case 0x1Fu:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (LOBYTE(v446) & 0x7F) << v164;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            v170 = 0;
            goto LABEL_619;
          }
        }

        if ([a2 hasError])
        {
          v170 = 0;
        }

        else
        {
          v170 = v166;
        }

LABEL_619:
        [a1 setRawNowPlayingCountCoreDuet2Min:v170];
        continue;
      case 0x20u:
        v189 = 0;
        v190 = 0;
        v191 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v192 = [a2 position] + 1;
          if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 1, v193 <= objc_msgSend(a2, "length")))
          {
            v194 = [a2 data];
            [v194 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v191 |= (LOBYTE(v446) & 0x7F) << v189;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v189 += 7;
          v12 = v190++ >= 9;
          if (v12)
          {
            v195 = 0;
            goto LABEL_627;
          }
        }

        if ([a2 hasError])
        {
          v195 = 0;
        }

        else
        {
          v195 = v191;
        }

LABEL_627:
        [a1 setRawNowPlayingCountCoreDuet6Hr:v195];
        continue;
      case 0x21u:
        v276 = 0;
        v277 = 0;
        v278 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v279 = [a2 position] + 1;
          if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 1, v280 <= objc_msgSend(a2, "length")))
          {
            v281 = [a2 data];
            [v281 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v278 |= (LOBYTE(v446) & 0x7F) << v276;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v276 += 7;
          v12 = v277++ >= 9;
          if (v12)
          {
            v282 = 0;
            goto LABEL_665;
          }
        }

        if ([a2 hasError])
        {
          v282 = 0;
        }

        else
        {
          v282 = v278;
        }

LABEL_665:
        [a1 setRawNowPlayingCountCoreDuet7Day:v282];
        continue;
      case 0x22u:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            v201 = [a2 data];
            [v201 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (LOBYTE(v446) & 0x7F) << v196;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v12 = v197++ >= 9;
          if (v12)
          {
            v202 = 0;
            goto LABEL_631;
          }
        }

        if ([a2 hasError])
        {
          v202 = 0;
        }

        else
        {
          v202 = v198;
        }

LABEL_631:
        [a1 setRawNowPlayingRecencyCD:v202];
        continue;
      case 0x23u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (LOBYTE(v446) & 0x7F) << v60;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            v66 = 0;
            goto LABEL_577;
          }
        }

        if ([a2 hasError])
        {
          v66 = 0;
        }

        else
        {
          v66 = v62;
        }

LABEL_577:
        [a1 setRawEntitySearchRecency:v66];
        continue;
      case 0x24u:
        v446 = 0.0;
        v118 = [a2 position] + 8;
        if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 8, v119 <= objc_msgSend(a2, "length")))
        {
          v429 = [a2 data];
          [v429 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScoreBooks:v446];
        continue;
      case 0x25u:
        v446 = 0.0;
        v299 = [a2 position] + 8;
        if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 8, v300 <= objc_msgSend(a2, "length")))
        {
          v439 = [a2 data];
          [v439 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScoreMusic:v446];
        continue;
      case 0x26u:
        v446 = 0.0;
        v388 = [a2 position] + 8;
        if (v388 >= [a2 position] && (v389 = objc_msgSend(a2, "position") + 8, v389 <= objc_msgSend(a2, "length")))
        {
          v441 = [a2 data];
          [v441 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScorePodcasts:v446];
        continue;
      case 0x27u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (LOBYTE(v446) & 0x7F) << v81;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v12 = v82++ >= 9;
          if (v12)
          {
            v87 = 0;
            goto LABEL_583;
          }
        }

        v87 = (v83 != 0) & ~[a2 hasError];
LABEL_583:
        [a1 setIsAppFirstParty:v87];
        continue;
      case 0x28u:
        v267 = 0;
        v268 = 0;
        v269 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v270 = [a2 position] + 1;
          if (v270 >= [a2 position] && (v271 = objc_msgSend(a2, "position") + 1, v271 <= objc_msgSend(a2, "length")))
          {
            v272 = [a2 data];
            [v272 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v269 |= (LOBYTE(v446) & 0x7F) << v267;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v267 += 7;
          v12 = v268++ >= 9;
          if (v12)
          {
            v273 = 0;
            goto LABEL_661;
          }
        }

        v273 = (v269 != 0) & ~[a2 hasError];
LABEL_661:
        [a1 setIsRequestedApp:v273];
        continue;
      case 0x29u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (LOBYTE(v446) & 0x7F) << v74;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v80 = 0;
            goto LABEL_581;
          }
        }

        v80 = (v76 != 0) & ~[a2 hasError];
LABEL_581:
        [a1 setIsNowPlayingBundlePSE1:v80];
        continue;
      case 0x2Au:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (LOBYTE(v446) & 0x7F) << v67;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            v73 = 0;
            goto LABEL_579;
          }
        }

        v73 = (v69 != 0) & ~[a2 hasError];
LABEL_579:
        [a1 setIsNowPlayingBundlePSE2:v73];
        continue;
      case 0x2Bu:
        v446 = 0.0;
        v155 = [a2 position] + 8;
        if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 8, v156 <= objc_msgSend(a2, "length")))
        {
          v430 = [a2 data];
          [v430 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setVq21Score:v446];
        continue;
      case 0x2Cu:
        v233 = 0;
        v234 = 0;
        v235 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v236 = [a2 position] + 1;
          if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
          {
            v238 = [a2 data];
            [v238 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v235 |= (LOBYTE(v446) & 0x7F) << v233;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v12 = v234++ >= 9;
          if (v12)
          {
            v239 = 0;
            goto LABEL_647;
          }
        }

        v239 = (v235 != 0) & ~[a2 hasError];
LABEL_647:
        [a1 setIsSupportedFlag:v239];
        continue;
      case 0x2Du:
        v322 = 0;
        v323 = 0;
        v324 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v325 = [a2 position] + 1;
          if (v325 >= [a2 position] && (v326 = objc_msgSend(a2, "position") + 1, v326 <= objc_msgSend(a2, "length")))
          {
            v327 = [a2 data];
            [v327 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v324 |= (LOBYTE(v446) & 0x7F) << v322;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v322 += 7;
          v12 = v323++ >= 9;
          if (v12)
          {
            v328 = 0;
            goto LABEL_679;
          }
        }

        v328 = (v324 != 0) & ~[a2 hasError];
LABEL_679:
        [a1 setIsUnicornFlag:v328];
        continue;
      case 0x2Eu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (LOBYTE(v446) & 0x7F) << v30;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_561;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_561:
        [a1 setIsSupportedUnicornMatchFlag:v36];
        continue;
      case 0x2Fu:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (LOBYTE(v446) & 0x7F) << v95;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            v101 = 0;
            goto LABEL_589;
          }
        }

        v101 = (v97 != 0) & ~[a2 hasError];
LABEL_589:
        [a1 setIsDisambiguationSelectedApp:v101];
        continue;
      case 0x30u:
        v242 = 0;
        v243 = 0;
        v244 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v245 = [a2 position] + 1;
          if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 1, v246 <= objc_msgSend(a2, "length")))
          {
            v247 = [a2 data];
            [v247 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v244 |= (LOBYTE(v446) & 0x7F) << v242;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v242 += 7;
          v12 = v243++ >= 9;
          if (v12)
          {
            v248 = 0;
            goto LABEL_649;
          }
        }

        v248 = (v244 != 0) & ~[a2 hasError];
LABEL_649:
        [a1 setIsModelPredictedApp:v248];
        continue;
      case 0x31u:
        v446 = 0.0;
        v263 = [a2 position] + 8;
        if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 8, v264 <= objc_msgSend(a2, "length")))
        {
          v435 = [a2 data];
          [v435 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScoreRadio:v446];
        continue;
      case 0x32u:
        v446 = 0.0;
        v390 = [a2 position] + 8;
        if (v390 >= [a2 position] && (v391 = objc_msgSend(a2, "position") + 8, v391 <= objc_msgSend(a2, "length")))
        {
          v442 = [a2 data];
          [v442 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScoreMusicWithoutRadio:v446];
        continue;
      case 0x33u:
        v249 = 0;
        v250 = 0;
        v251 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v252 = [a2 position] + 1;
          if (v252 >= [a2 position] && (v253 = objc_msgSend(a2, "position") + 1, v253 <= objc_msgSend(a2, "length")))
          {
            v254 = [a2 data];
            [v254 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v251 |= (LOBYTE(v446) & 0x7F) << v249;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v249 += 7;
          v12 = v250++ >= 9;
          if (v12)
          {
            v255 = 0;
            goto LABEL_655;
          }
        }

        if ([a2 hasError])
        {
          v255 = 0;
        }

        else
        {
          v255 = v251;
        }

LABEL_655:
        [a1 setRawMediaTypeUsageSignalRadio:v255];
        continue;
      case 0x34u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (LOBYTE(v446) & 0x7F) << v53;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            v59 = 0;
            goto LABEL_573;
          }
        }

        if ([a2 hasError])
        {
          v59 = 0;
        }

        else
        {
          v59 = v55;
        }

LABEL_573:
        [a1 setRawMediaTypeUsageSignalMusicWithoutRadio:v59];
        continue;
      case 0x35u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (LOBYTE(v446) & 0x7F) << v37;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v43 = 0;
            goto LABEL_565;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_565:
        [a1 setSubscriptionStatus:v43];
        continue;
      case 0x36u:
        v403 = 0;
        v404 = 0;
        v405 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v406 = [a2 position] + 1;
          if (v406 >= [a2 position] && (v407 = objc_msgSend(a2, "position") + 1, v407 <= objc_msgSend(a2, "length")))
          {
            v408 = [a2 data];
            [v408 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v405 |= (LOBYTE(v446) & 0x7F) << v403;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v403 += 7;
          v12 = v404++ >= 9;
          if (v12)
          {
            v409 = 0;
            goto LABEL_715;
          }
        }

        v409 = (v405 != 0) & ~[a2 hasError];
LABEL_715:
        [a1 setIsRawNowPlayingBundle:v409];
        continue;
      case 0x37u:
        v381 = 0;
        v382 = 0;
        v383 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v384 = [a2 position] + 1;
          if (v384 >= [a2 position] && (v385 = objc_msgSend(a2, "position") + 1, v385 <= objc_msgSend(a2, "length")))
          {
            v386 = [a2 data];
            [v386 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v383 |= (LOBYTE(v446) & 0x7F) << v381;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v381 += 7;
          v12 = v382++ >= 9;
          if (v12)
          {
            v387 = 0;
            goto LABEL_709;
          }
        }

        if ([a2 hasError])
        {
          v387 = 0;
        }

        else
        {
          v387 = v383;
        }

LABEL_709:
        [a1 setRawNowPlayingTotal:v387];
        continue;
      case 0x38u:
        v446 = 0.0;
        v51 = [a2 position] + 8;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
        {
          v427 = [a2 data];
          [v427 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setRawNowPlayingBundleScore:v446];
        continue;
      case 0x39u:
        v446 = 0.0;
        v274 = [a2 position] + 8;
        if (v274 >= [a2 position] && (v275 = objc_msgSend(a2, "position") + 8, v275 <= objc_msgSend(a2, "length")))
        {
          v437 = [a2 data];
          [v437 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setIsRawLastNowPlaying:v446];
        continue;
      case 0x3Au:
        v308 = 0;
        v309 = 0;
        v310 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v311 = [a2 position] + 1;
          if (v311 >= [a2 position] && (v312 = objc_msgSend(a2, "position") + 1, v312 <= objc_msgSend(a2, "length")))
          {
            v313 = [a2 data];
            [v313 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v310 |= (LOBYTE(v446) & 0x7F) << v308;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v308 += 7;
          v12 = v309++ >= 9;
          if (v12)
          {
            v314 = 0;
            goto LABEL_675;
          }
        }

        if ([a2 hasError])
        {
          v314 = 0;
        }

        else
        {
          v314 = v310;
        }

LABEL_675:
        [a1 setRawNowPlaying2Minutes:v314];
        continue;
      case 0x3Bu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (LOBYTE(v446) & 0x7F) << v44;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_569;
          }
        }

        if ([a2 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v46;
        }

LABEL_569:
        [a1 setRawNowPlaying10Minutes:v50];
        continue;
      case 0x3Cu:
        v359 = 0;
        v360 = 0;
        v361 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v362 = [a2 position] + 1;
          if (v362 >= [a2 position] && (v363 = objc_msgSend(a2, "position") + 1, v363 <= objc_msgSend(a2, "length")))
          {
            v364 = [a2 data];
            [v364 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v361 |= (LOBYTE(v446) & 0x7F) << v359;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v359 += 7;
          v12 = v360++ >= 9;
          if (v12)
          {
            v365 = 0;
            goto LABEL_699;
          }
        }

        if ([a2 hasError])
        {
          v365 = 0;
        }

        else
        {
          v365 = v361;
        }

LABEL_699:
        [a1 setRawNowPlaying1Hour:v365];
        continue;
      case 0x3Du:
        v329 = 0;
        v330 = 0;
        v331 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v332 = [a2 position] + 1;
          if (v332 >= [a2 position] && (v333 = objc_msgSend(a2, "position") + 1, v333 <= objc_msgSend(a2, "length")))
          {
            v334 = [a2 data];
            [v334 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v331 |= (LOBYTE(v446) & 0x7F) << v329;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v329 += 7;
          v12 = v330++ >= 9;
          if (v12)
          {
            v335 = 0;
            goto LABEL_683;
          }
        }

        if ([a2 hasError])
        {
          v335 = 0;
        }

        else
        {
          v335 = v331;
        }

LABEL_683:
        [a1 setRawNowPlaying6Hours:v335];
        continue;
      case 0x3Eu:
        v419 = 0;
        v420 = 0;
        v421 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v422 = [a2 position] + 1;
          if (v422 >= [a2 position] && (v423 = objc_msgSend(a2, "position") + 1, v423 <= objc_msgSend(a2, "length")))
          {
            v424 = [a2 data];
            [v424 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v421 |= (LOBYTE(v446) & 0x7F) << v419;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v419 += 7;
          v12 = v420++ >= 9;
          if (v12)
          {
            v425 = 0;
            goto LABEL_723;
          }
        }

        if ([a2 hasError])
        {
          v425 = 0;
        }

        else
        {
          v425 = v421;
        }

LABEL_723:
        [a1 setRawNowPlaying1Day:v425];
        continue;
      case 0x3Fu:
        v394 = 0;
        v395 = 0;
        v396 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v397 = [a2 position] + 1;
          if (v397 >= [a2 position] && (v398 = objc_msgSend(a2, "position") + 1, v398 <= objc_msgSend(a2, "length")))
          {
            v399 = [a2 data];
            [v399 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v396 |= (LOBYTE(v446) & 0x7F) << v394;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v394 += 7;
          v12 = v395++ >= 9;
          if (v12)
          {
            v400 = 0;
            goto LABEL_713;
          }
        }

        if ([a2 hasError])
        {
          v400 = 0;
        }

        else
        {
          v400 = v396;
        }

LABEL_713:
        [a1 setRawNowPlaying7Days:v400];
        continue;
      case 0x40u:
        v410 = 0;
        v411 = 0;
        v412 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v413 = [a2 position] + 1;
          if (v413 >= [a2 position] && (v414 = objc_msgSend(a2, "position") + 1, v414 <= objc_msgSend(a2, "length")))
          {
            v415 = [a2 data];
            [v415 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v412 |= (LOBYTE(v446) & 0x7F) << v410;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v410 += 7;
          v12 = v411++ >= 9;
          if (v12)
          {
            v416 = 0;
            goto LABEL_719;
          }
        }

        if ([a2 hasError])
        {
          v416 = 0;
        }

        else
        {
          v416 = v412;
        }

LABEL_719:
        [a1 setRawNowPlaying28Days:v416];
        continue;
      case 0x41u:
        v336 = 0;
        v337 = 0;
        v338 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v339 = [a2 position] + 1;
          if (v339 >= [a2 position] && (v340 = objc_msgSend(a2, "position") + 1, v340 <= objc_msgSend(a2, "length")))
          {
            v341 = [a2 data];
            [v341 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v338 |= (LOBYTE(v446) & 0x7F) << v336;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v336 += 7;
          v12 = v337++ >= 9;
          if (v12)
          {
            v342 = 0;
            goto LABEL_687;
          }
        }

        if ([a2 hasError])
        {
          v342 = 0;
        }

        else
        {
          v342 = v338;
        }

LABEL_687:
        [a1 setRawLastNowPlayingRecency:v342];
        continue;
      case 0x42u:
        v343 = 0;
        v344 = 0;
        v345 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v346 = [a2 position] + 1;
          if (v346 >= [a2 position] && (v347 = objc_msgSend(a2, "position") + 1, v347 <= objc_msgSend(a2, "length")))
          {
            v348 = [a2 data];
            [v348 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v345 |= (LOBYTE(v446) & 0x7F) << v343;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v343 += 7;
          v12 = v344++ >= 9;
          if (v12)
          {
            v349 = 0;
            goto LABEL_691;
          }
        }

        if ([a2 hasError])
        {
          v349 = 0;
        }

        else
        {
          v349 = v345;
        }

LABEL_691:
        [a1 setCommonForegroundBundleApp:v349];
        continue;
      case 0x43u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (LOBYTE(v446) & 0x7F) << v109;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v115 = 0;
            goto LABEL_593;
          }
        }

        v115 = (v111 != 0) & ~[a2 hasError];
LABEL_593:
        [a1 setIsRawLastNowPlayingBoolean:v115];
        continue;
      case 0x44u:
        v367 = 0;
        v368 = 0;
        v369 = 0;
        while (1)
        {
          LOBYTE(v446) = 0;
          v370 = [a2 position] + 1;
          if (v370 >= [a2 position] && (v371 = objc_msgSend(a2, "position") + 1, v371 <= objc_msgSend(a2, "length")))
          {
            v372 = [a2 data];
            [v372 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v369 |= (LOBYTE(v446) & 0x7F) << v367;
          if ((LOBYTE(v446) & 0x80) == 0)
          {
            break;
          }

          v367 += 7;
          v12 = v368++ >= 9;
          if (v12)
          {
            v373 = 0;
            goto LABEL_701;
          }
        }

        v373 = (v369 != 0) & ~[a2 hasError];
LABEL_701:
        [a1 setIsCommonForegroundApp:v373];
        continue;
      case 0x45u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        break;
      case 0x46u:
        v446 = 0.0;
        v392 = [a2 position] + 8;
        if (v392 >= [a2 position] && (v393 = objc_msgSend(a2, "position") + 8, v393 <= objc_msgSend(a2, "length")))
        {
          v443 = [a2 data];
          [v443 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScoreMusicWithoutRadioRemote:v446];
        continue;
      case 0x47u:
        v446 = 0.0;
        v401 = [a2 position] + 8;
        if (v401 >= [a2 position] && (v402 = objc_msgSend(a2, "position") + 8, v402 <= objc_msgSend(a2, "length")))
        {
          v444 = [a2 data];
          [v444 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScoreBooksRemote:v446];
        continue;
      case 0x48u:
        v446 = 0.0;
        v187 = [a2 position] + 8;
        if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 8, v188 <= objc_msgSend(a2, "length")))
        {
          v432 = [a2 data];
          [v432 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScoreRadioRemote:v446];
        continue;
      case 0x49u:
        v446 = 0.0;
        v417 = [a2 position] + 8;
        if (v417 >= [a2 position] && (v418 = objc_msgSend(a2, "position") + 8, v418 <= objc_msgSend(a2, "length")))
        {
          v445 = [a2 data];
          [v445 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScorePodcastsRemote:v446];
        continue;
      case 0x4Au:
        v446 = 0.0;
        v350 = [a2 position] + 8;
        if (v350 >= [a2 position] && (v351 = objc_msgSend(a2, "position") + 8, v351 <= objc_msgSend(a2, "length")))
        {
          v440 = [a2 data];
          [v440 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setEntitySearchBundleScoreRemote:v446];
        continue;
      case 0x4Bu:
        v446 = 0.0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v426 = [a2 data];
          [v426 getBytes:&v446 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setUsageScoreMusicRemote:v446];
        continue;
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
      LOBYTE(v446) = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v446 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (LOBYTE(v446) & 0x7F) << v21;
      if ((LOBYTE(v446) & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v12 = v22++ >= 9;
      if (v12)
      {
        v27 = 0;
        goto LABEL_559;
      }
    }

    v27 = (v23 != 0) & ~[a2 hasError];
LABEL_559:
    [a1 setIsBoltEnabled:v27];
LABEL_764:
    ;
  }

  return [a2 hasError] ^ 1;
}