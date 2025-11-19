uint64_t INFERENCESchemaINFERENCEMusicTrainingIndependentSignalsReadFrom(void *a1, void *a2)
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
      LOBYTE(v214) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v214) & 0x7F) << v6;
      if ((LOBYTE(v214) & 0x80) == 0)
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
          LOBYTE(v214) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v214) & 0x7F) << v14;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_317:
            [a1 setClientDayOfWeek:v20];
            goto LABEL_366;
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

        goto LABEL_317;
      case 2u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (LOBYTE(v214) & 0x7F) << v112;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v118 = 0;
            goto LABEL_321;
          }
        }

        if ([a2 hasError])
        {
          v118 = 0;
        }

        else
        {
          v118 = v114;
        }

LABEL_321:
        [a1 setRawClientHourOfDay:v118];
        continue;
      case 3u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (LOBYTE(v214) & 0x7F) << v84;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v90 = 0;
            goto LABEL_305;
          }
        }

        v90 = (v86 != 0) & ~[a2 hasError];
LABEL_305:
        [a1 setIsMediaAlbumPresent:v90];
        continue;
      case 4u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (LOBYTE(v214) & 0x7F) << v98;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_311;
          }
        }

        v104 = (v100 != 0) & ~[a2 hasError];
LABEL_311:
        [a1 setIsMediaArtistPresent:v104];
        continue;
      case 5u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (LOBYTE(v214) & 0x7F) << v49;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_289;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_289:
        [a1 setIsMediaGenrePresent:v55];
        continue;
      case 6u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (LOBYTE(v214) & 0x7F) << v133;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v139 = 0;
            goto LABEL_329;
          }
        }

        v139 = (v135 != 0) & ~[a2 hasError];
LABEL_329:
        [a1 setIsMediaMoodPresent:v139];
        continue;
      case 7u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (LOBYTE(v214) & 0x7F) << v154;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v160 = 0;
            goto LABEL_337;
          }
        }

        v160 = (v156 != 0) & ~[a2 hasError];
LABEL_337:
        [a1 setIsMediaNamePresent:v160];
        continue;
      case 8u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (LOBYTE(v214) & 0x7F) << v105;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_313;
          }
        }

        v111 = (v107 != 0) & ~[a2 hasError];
LABEL_313:
        [a1 setIsMediaReleaseDatePresent:v111];
        continue;
      case 9u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (LOBYTE(v214) & 0x7F) << v170;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v12 = v171++ >= 9;
          if (v12)
          {
            v176 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v176 = 0;
        }

        else
        {
          v176 = v172;
        }

LABEL_345:
        [a1 setNowPlayingLastBundleRecencyS:v176];
        continue;
      case 0xAu:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (LOBYTE(v214) & 0x7F) << v63;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_295;
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

LABEL_295:
        [a1 setRawLanguage:v69];
        continue;
      case 0xBu:
        v163 = 0;
        v164 = 0;
        v165 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v166 = [a2 position] + 1;
          if (v166 >= [a2 position] && (v167 = objc_msgSend(a2, "position") + 1, v167 <= objc_msgSend(a2, "length")))
          {
            v168 = [a2 data];
            [v168 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v165 |= (LOBYTE(v214) & 0x7F) << v163;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v163 += 7;
          v12 = v164++ >= 9;
          if (v12)
          {
            v169 = 0;
            goto LABEL_341;
          }
        }

        if ([a2 hasError])
        {
          v169 = 0;
        }

        else
        {
          v169 = v165;
        }

LABEL_341:
        [a1 setRawLocale:v169];
        continue;
      case 0xCu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (LOBYTE(v214) & 0x7F) << v42;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_287;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_287:
        [a1 setRawRegion:v48];
        continue;
      case 0xDu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (LOBYTE(v214) & 0x7F) << v56;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_291;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_291:
        [a1 setIsClientDaylight:v62];
        continue;
      case 0xEu:
        v147 = 0;
        v148 = 0;
        v149 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v150 = [a2 position] + 1;
          if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
          {
            v152 = [a2 data];
            [v152 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v149 |= (LOBYTE(v214) & 0x7F) << v147;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v147 += 7;
          v12 = v148++ >= 9;
          if (v12)
          {
            v153 = 0;
            goto LABEL_335;
          }
        }

        v153 = (v149 != 0) & ~[a2 hasError];
LABEL_335:
        [a1 setIsClientNavigating:v153];
        continue;
      case 0xFu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (LOBYTE(v214) & 0x7F) << v35;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_283;
          }
        }

        v41 = (v37 != 0) & ~[a2 hasError];
LABEL_283:
        [a1 setIsClientWorkout:v41];
        continue;
      case 0x10u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (LOBYTE(v214) & 0x7F) << v91;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_309;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_309:
        [a1 setMediaType:v97];
        continue;
      case 0x11u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (LOBYTE(v214) & 0x7F) << v28;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_281;
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

LABEL_281:
        [a1 setNowPlayingState:v34];
        continue;
      case 0x12u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (LOBYTE(v214) & 0x7F) << v119;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v125 = 0;
            goto LABEL_323;
          }
        }

        v125 = (v121 != 0) & ~[a2 hasError];
LABEL_323:
        [a1 setIsPireneRequest:v125];
        continue;
      case 0x13u:
        v214 = 0.0;
        v161 = [a2 position] + 8;
        if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 8, v162 <= objc_msgSend(a2, "length")))
        {
          v213 = [a2 data];
          [v213 getBytes:&v214 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setForegroundBundleRecencyS:v214];
        continue;
      case 0x14u:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            v189 = [a2 data];
            [v189 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (LOBYTE(v214) & 0x7F) << v184;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v12 = v185++ >= 9;
          if (v12)
          {
            v190 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v190 = 0;
        }

        else
        {
          v190 = v186;
        }

LABEL_353:
        [a1 setMediaParsecCategory:v190];
        continue;
      case 0x15u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (LOBYTE(v214) & 0x7F) << v126;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            v132 = 0;
            goto LABEL_327;
          }
        }

        if ([a2 hasError])
        {
          v132 = 0;
        }

        else
        {
          v132 = v128;
        }

LABEL_327:
        [a1 setSirikitResponseCode:v132];
        continue;
      case 0x16u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (LOBYTE(v214) & 0x7F) << v140;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            v146 = 0;
            goto LABEL_333;
          }
        }

        if ([a2 hasError])
        {
          v146 = 0;
        }

        else
        {
          v146 = v142;
        }

LABEL_333:
        [a1 setAppSelectionUses:v146];
        continue;
      case 0x17u:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v179 |= (LOBYTE(v214) & 0x7F) << v177;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v12 = v178++ >= 9;
          if (v12)
          {
            v183 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v183 = 0;
        }

        else
        {
          v183 = v179;
        }

LABEL_349:
        [a1 setModelVersion:v183];
        continue;
      case 0x18u:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v194 = [a2 position] + 1;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
          {
            v196 = [a2 data];
            [v196 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v193 |= (LOBYTE(v214) & 0x7F) << v191;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v12 = v192++ >= 9;
          if (v12)
          {
            v197 = 0;
            goto LABEL_357;
          }
        }

        if ([a2 hasError])
        {
          v197 = 0;
        }

        else
        {
          v197 = v193;
        }

LABEL_357:
        [a1 setResolutionType:v197];
        continue;
      case 0x19u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (LOBYTE(v214) & 0x7F) << v77;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_303;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_303:
        [a1 setRawNowPlayingState:v83];
        continue;
      case 0x1Au:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (LOBYTE(v214) & 0x7F) << v70;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_299;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_299:
        [a1 setCommonForegroundAppRecency:v76];
        continue;
      case 0x1Bu:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            v211 = [a2 data];
            [v211 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (LOBYTE(v214) & 0x7F) << v206;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v12 = v207++ >= 9;
          if (v12)
          {
            v212 = 0;
            goto LABEL_363;
          }
        }

        v212 = (v208 != 0) & ~[a2 hasError];
LABEL_363:
        [a1 setIsContentFree:v212];
        continue;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v214) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (LOBYTE(v214) & 0x7F) << v21;
          if ((LOBYTE(v214) & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_277;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_277:
        [a1 setIsUserRecognized:v27];
        continue;
      case 0x1Du:
        v198 = 0;
        v199 = 0;
        v200 = 0;
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
      LOBYTE(v214) = 0;
      v201 = [a2 position] + 1;
      if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 1, v202 <= objc_msgSend(a2, "length")))
      {
        v203 = [a2 data];
        [v203 getBytes:&v214 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v200 |= (LOBYTE(v214) & 0x7F) << v198;
      if ((LOBYTE(v214) & 0x80) == 0)
      {
        break;
      }

      v198 += 7;
      v12 = v199++ >= 9;
      if (v12)
      {
        v204 = 0;
        goto LABEL_361;
      }
    }

    if ([a2 hasError])
    {
      v204 = 0;
    }

    else
    {
      v204 = v200;
    }

LABEL_361:
    [a1 setServerSearchResultsMediaType:v204];
LABEL_366:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGeneratedReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignalsReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setInferenceNotebookAppSelectionTrainingAppIndependentSignals:v13];
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

    v13 = objc_alloc_init(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignalsReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addInferenceNotebookAppSelectionTrainingAppDependentSignals:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignalsReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(INFERENCESchemaINFERENCECommonAppDependentSignals);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommonAppDependentSignalsReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCommonDependent:v13];
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

uint64_t INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignalsReadFrom(void *a1, void *a2)
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
          [a1 setIsNotebookTitlePresent:v20];
          goto LABEL_60;
        }

        goto LABEL_40;
      }

      v28 = objc_alloc_init(INFERENCESchemaINFERENCECommonAppIndependentSignals);
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommonAppIndependentSignalsReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setCommonIndependent:v28];

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
      [a1 setIsNotebookPayloadPresent:v35];
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
      [a1 setIsNotebookGroupPresent:v27];
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

uint64_t INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignalsReadFrom(void *a1, void *a2)
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
      LOBYTE(v94) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v94 & 0x7F) << v6;
      if ((v94 & 0x80) == 0)
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
          LOBYTE(v94) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v94 & 0x7F) << v14;
          if ((v94 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_133:
            [a1 setChoice:v20];
            goto LABEL_158;
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

        goto LABEL_133;
      case 2u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        while (1)
        {
          LOBYTE(v94) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v94 & 0x7F) << v58;
          if ((v94 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v64 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v64 = 0;
        }

        else
        {
          v64 = v60;
        }

LABEL_137:
        [a1 setIsUserSelectedChoice:v64];
        continue;
      case 3u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (1)
        {
          LOBYTE(v94) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v94 & 0x7F) << v45;
          if ((v94 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_129;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v47;
        }

LABEL_129:
        [a1 setIsModelPredictedChoice:v51];
        continue;
      case 4u:
        v94 = 0;
        v52 = [a2 position] + 4;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 4, v53 <= objc_msgSend(a2, "length")))
        {
          v91 = [a2 data];
          [v91 getBytes:&v94 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v54) = v94;
        [a1 setFrequencyPercentage:v54];
        continue;
      case 5u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v94) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v94 & 0x7F) << v28;
          if ((v94 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_121;
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

LABEL_121:
        [a1 setRecencySeconds:v34];
        continue;
      case 6u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        while (1)
        {
          LOBYTE(v94) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v94 & 0x7F) << v65;
          if ((v94 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            v71 = 0;
            goto LABEL_141;
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

LABEL_141:
        [a1 setRecencyRank:v71];
        continue;
      case 7u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        while (1)
        {
          LOBYTE(v94) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v94 & 0x7F) << v73;
          if ((v94 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            v79 = 0;
            goto LABEL_145;
          }
        }

        if ([a2 hasError])
        {
          v79 = 0;
        }

        else
        {
          v79 = v75;
        }

LABEL_145:
        [a1 setLastContiguousCount:v79];
        continue;
      case 8u:
        v94 = 0;
        v55 = [a2 position] + 4;
        if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 4, v56 <= objc_msgSend(a2, "length")))
        {
          v92 = [a2 data];
          [v92 getBytes:&v94 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v57) = v94;
        [a1 setLocationAffinity300Meters:v57];
        continue;
      case 9u:
        v94 = 0;
        v87 = [a2 position] + 4;
        if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 4, v88 <= objc_msgSend(a2, "length")))
        {
          v93 = [a2 data];
          [v93 getBytes:&v94 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v89) = v94;
        [a1 setLocationAffinity2500Meters:v89];
        continue;
      case 0xAu:
        v94 = 0;
        v42 = [a2 position] + 4;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 4, v43 <= objc_msgSend(a2, "length")))
        {
          v90 = [a2 data];
          [v90 getBytes:&v94 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v44) = v94;
        [a1 setLocationAffinity156Kilometers:v44];
        continue;
      case 0xBu:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        while (1)
        {
          LOBYTE(v94) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v94 & 0x7F) << v80;
          if ((v94 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v12 = v81++ >= 9;
          if (v12)
          {
            v86 = 0;
            goto LABEL_149;
          }
        }

        if ([a2 hasError])
        {
          v86 = 0;
        }

        else
        {
          v86 = v82;
        }

LABEL_149:
        [a1 setLocationFrequencyCount300Meters:v86];
        continue;
      case 0xCu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v94) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v94 & 0x7F) << v21;
          if ((v94 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_117;
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

LABEL_117:
        [a1 setLocationFrequencyCount2500Meters:v27];
        continue;
      case 0xDu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
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
      LOBYTE(v94) = 0;
      v38 = [a2 position] + 1;
      if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
      {
        v40 = [a2 data];
        [v40 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v37 |= (v94 & 0x7F) << v35;
      if ((v94 & 0x80) == 0)
      {
        break;
      }

      v35 += 7;
      v12 = v36++ >= 9;
      if (v12)
      {
        v41 = 0;
        goto LABEL_125;
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

LABEL_125:
    [a1 setLocationFrequencyCount156Kilometers:v41];
LABEL_158:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignalsReadFrom(void *a1, void *a2)
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
      LOBYTE(v142) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v142 & 0x7F) << v5;
      if ((v142 & 0x80) == 0)
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
        [a1 setUsecase:v13];
        goto LABEL_189;
      case 2u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v142 & 0x7F) << v84;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v11 = v85++ >= 9;
          if (v11)
          {
            v90 = 0;
            goto LABEL_233;
          }
        }

        if ([a2 hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v86;
        }

LABEL_233:
        [a1 setChoicesCount:v90];
        goto LABEL_262;
      case 3u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v142 & 0x7F) << v56;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v62 = 0;
            goto LABEL_217;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

LABEL_217:
        [a1 setTimestampSec:v62];
        goto LABEL_262;
      case 4u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v142 & 0x7F) << v70;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v76 = 0;
            goto LABEL_225;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_225:
        [a1 setRawLanguage:v76];
        goto LABEL_262;
      case 5u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v142 & 0x7F) << v35;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_205;
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

LABEL_205:
        [a1 setRawLocale:v41];
        goto LABEL_262;
      case 6u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v142 & 0x7F) << v98;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
          if (v11)
          {
            v104 = 0;
            goto LABEL_241;
          }
        }

        if ([a2 hasError])
        {
          v104 = 0;
        }

        else
        {
          v104 = v100;
        }

LABEL_241:
        [a1 setRawStateOrProvince:v104];
        goto LABEL_262;
      case 7u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v142 & 0x7F) << v112;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
          if (v11)
          {
            v118 = 0;
            goto LABEL_249;
          }
        }

        if ([a2 hasError])
        {
          v118 = 0;
        }

        else
        {
          v118 = v114;
        }

LABEL_249:
        [a1 setRawCountry:v118];
        goto LABEL_262;
      case 8u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v142 & 0x7F) << v77;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v83 = 0;
            goto LABEL_229;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_229:
        [a1 setRawRequestDeviceCategory:v83];
        goto LABEL_262;
      case 9u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v142 & 0x7F) << v133;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v11 = v134++ >= 9;
          if (v11)
          {
            v139 = 0;
            goto LABEL_261;
          }
        }

        if ([a2 hasError])
        {
          v139 = 0;
        }

        else
        {
          v139 = v135;
        }

LABEL_261:
        [a1 setCalendarHourOfDay:v139];
        goto LABEL_262;
      case 0xAu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v142 & 0x7F) << v49;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_213;
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

LABEL_213:
        [a1 setCalendarDayOfWeek:v55];
        goto LABEL_262;
      case 0xBu:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v142 & 0x7F) << v126;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v11 = v127++ >= 9;
          if (v11)
          {
            v132 = 0;
            goto LABEL_257;
          }
        }

        if ([a2 hasError])
        {
          v132 = 0;
        }

        else
        {
          v132 = v128;
        }

LABEL_257:
        [a1 setCalendarWeekOfMonth:v132];
        goto LABEL_262;
      case 0xCu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v142 & 0x7F) << v28;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_201;
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

LABEL_201:
        [a1 setCalendarMonthOfYear:v34];
        goto LABEL_262;
      case 0xDu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v142 & 0x7F) << v42;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_209;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_209:
        [a1 setIsClientDaylight:v48];
        goto LABEL_262;
      case 0xEu:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v142 & 0x7F) << v105;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v111 = 0;
            goto LABEL_245;
          }
        }

        if ([a2 hasError])
        {
          v111 = 0;
        }

        else
        {
          v111 = v107;
        }

LABEL_245:
        [a1 setIsDeviceLockStatus:v111];
        goto LABEL_262;
      case 0xFu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v142 & 0x7F) << v21;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_197;
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

LABEL_197:
        [a1 setDeviceMotionState:v27];
        goto LABEL_262;
      case 0x10u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v142 & 0x7F) << v63;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            v69 = 0;
            goto LABEL_221;
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

LABEL_221:
        [a1 setIsClientNavigating:v69];
        goto LABEL_262;
      case 0x11u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v142 & 0x7F) << v14;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_193;
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

LABEL_193:
        [a1 setIsCarPlay:v20];
        goto LABEL_262;
      case 0x12u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v142 & 0x7F) << v91;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            v97 = 0;
            goto LABEL_237;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_237:
        [a1 setHistoricalDataCount:v97];
        goto LABEL_262;
      case 0x13u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        while (1)
        {
          LOBYTE(v142) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v142 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v142 & 0x7F) << v119;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v11 = v120++ >= 9;
          if (v11)
          {
            v125 = 0;
            goto LABEL_253;
          }
        }

        if ([a2 hasError])
        {
          v125 = 0;
        }

        else
        {
          v125 = v121;
        }

LABEL_253:
        [a1 setDisambiguationReason:v125];
        goto LABEL_262;
      case 0x14u:
        v13 = objc_alloc_init(SISchemaVersion);
        v142 = 0;
        v143 = 0;
        if (!PBReaderPlaceMark() || !SISchemaVersionReadFrom(v13, a2))
        {
          goto LABEL_265;
        }

        PBReaderRecallMark();
        [a1 setModelVersion:v13];
        goto LABEL_189;
      case 0x15u:
        v13 = objc_alloc_init(SISchemaUUID);
        v142 = 0;
        v143 = 0;
        if (PBReaderPlaceMark() && SISchemaUUIDReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setTrialTreatmentId:v13];
LABEL_189:

LABEL_262:
          v140 = [a2 position];
          if (v140 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_265:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_262;
    }
  }
}

uint64_t INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGeneratedReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignalsReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCommonSignals:v13];
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

    v13 = objc_alloc_init(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignalsReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addChoiceDependentSignals:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEPotentialRetryContactInteractionContextReadFrom(void *a1, void *a2)
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
            v70 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v70 & 0x7F) << v36;
            if ((v70 & 0x80) == 0)
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
          [a1 setIsExactMatchPriorSiriContactGivenName:v42];
          continue;
        case 2:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          while (1)
          {
            v69 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v69 & 0x7F) << v58;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v12 = v59++ >= 9;
            if (v12)
            {
              v64 = 0;
              goto LABEL_109;
            }
          }

          v64 = (v60 != 0) & ~[a2 hasError];
LABEL_109:
          [a1 setIsExactMatchPriorSiriContactFamilyName:v64];
          continue;
        case 3:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v68 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v68 & 0x7F) << v22;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_107;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_107:
          [a1 setIsExactMatchPriorSiriContactDisplayName:v28];
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
          v72 = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v72 & 0x7F) << v51;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            v57 = 0;
            goto LABEL_99;
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

LABEL_99:
        [a1 setInteractionDurationInSecBucket:v57];
        continue;
      }

      if (v14 == 7)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v71 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v71 & 0x7F) << v29;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_105;
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

LABEL_105:
        [a1 setPotentialRetryIntervalInSecBucket:v35];
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
          v67 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v67 & 0x7F) << v44;
          if ((v67 & 0x80) == 0)
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
        [a1 setIsExactMatchPriorSiriContactId:v50];
        continue;
      }

      if (v14 == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v66 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v66 & 0x7F) << v15;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_101;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_101:
        [a1 setIsExactMatchPriorSiriContactHandleValue:v21];
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

uint64_t INFERENCESchemaINFERENCEPrivatizedHistoryStatsReadFrom(void *a1, void *a2)
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
        v31 = 0;
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
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_47;
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

LABEL_47:
      [a1 setRecency:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v30 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v30 & 0x7F) << v14;
        if ((v30 & 0x80) == 0)
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
      [a1 addFrequencies:v20];
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

uint64_t INFERENCESchemaINFERENCEPromptContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(INFERENCESchemaINFERENCEConfirmationPromptContext);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEConfirmationPromptContextReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setConfirmationPromptContext:v21];
LABEL_35:

        goto LABEL_42;
      }

      if (v13 == 1)
      {
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
            goto LABEL_41;
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

LABEL_41:
        [a1 setTag:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(INFERENCESchemaINFERENCEDisambiguationPromptContext);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEDisambiguationPromptContextReadFrom(v21, a2))
    {
LABEL_45:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setDisambiguationPromptContext:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGeneratedReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(SISchemaUUID);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
          {
LABEL_62:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setOriginalResolutionContextId:v21];
          goto LABEL_48;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(SISchemaUUID);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
          {
            goto LABEL_62;
          }

          PBReaderRecallMark();
          [a1 setQueryId:v21];
          goto LABEL_48;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
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
                goto LABEL_54;
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

LABEL_54:
            [a1 setDisambiguationResolution:v28];
            goto LABEL_59;
          case 5:
            v21 = PBReaderReadString();
            [a1 setAnonymizedSelectedEntityIdentifier:v21];
LABEL_48:

            goto LABEL_59;
          case 4:
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
                goto LABEL_58;
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

LABEL_58:
            [a1 setConfirmationResolution:v20];
            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCERequestMatchSignalSetReadFrom(void *a1, void *a2)
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
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v107 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v107 & 0x7F) << v14;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_155:
            [a1 setNumPrimaryTokens:v20];
            goto LABEL_166;
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

        goto LABEL_155;
      case 2u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v119 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v119 & 0x7F) << v70;
          if ((v119 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_157;
          }
        }

        v76 = (v72 != 0) & ~[a2 hasError];
LABEL_157:
        [a1 setAreAllQueryTokensInContact:v76];
        continue;
      case 3u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v118 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

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
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_147;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_147:
        [a1 setAreAllPrimaryContactTokensInQuery:v55];
        continue;
      case 4u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          v117 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v117 & 0x7F) << v56;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_149;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_149:
        [a1 setIsGivenNameMatch:v62];
        continue;
      case 5u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v116 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v116 & 0x7F) << v28;
          if ((v116 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_141;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_141:
        [a1 setIsMiddleNameMatch:v34];
        continue;
      case 6u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          v115 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v115 & 0x7F) << v77;
          if ((v115 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_159;
          }
        }

        v83 = (v79 != 0) & ~[a2 hasError];
LABEL_159:
        [a1 setIsFamilyNameMatch:v83];
        continue;
      case 7u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        while (1)
        {
          v114 = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v114 & 0x7F) << v85;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            v91 = 0;
            goto LABEL_161;
          }
        }

        v91 = (v87 != 0) & ~[a2 hasError];
LABEL_161:
        [a1 setIsOrganizationNameMatch:v91];
        continue;
      case 8u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v113 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v113 & 0x7F) << v63;
          if ((v113 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_151;
          }
        }

        v69 = (v65 != 0) & ~[a2 hasError];
LABEL_151:
        [a1 setIsWeakOrganizationMatch:v69];
        continue;
      case 9u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        while (1)
        {
          v112 = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v112 & 0x7F) << v99;
          if ((v112 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v12 = v100++ >= 9;
          if (v12)
          {
            v105 = 0;
            goto LABEL_165;
          }
        }

        v105 = (v101 != 0) & ~[a2 hasError];
LABEL_165:
        [a1 setIsNicknameMatch:v105];
        continue;
      case 0xAu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v111 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v111 & 0x7F) << v42;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_145;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_145:
        [a1 setIsNamePrefixMatch:v48];
        continue;
      case 0xBu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        while (1)
        {
          v110 = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v110 & 0x7F) << v92;
          if ((v110 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v12 = v93++ >= 9;
          if (v12)
          {
            v98 = 0;
            goto LABEL_163;
          }
        }

        v98 = (v94 != 0) & ~[a2 hasError];
LABEL_163:
        [a1 setIsNameSuffixMatch:v98];
        continue;
      case 0xCu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v109 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v109 & 0x7F) << v21;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_139;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_139:
        [a1 setIsHandleQueryMatch:v27];
        continue;
      case 0xDu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
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
      v108 = 0;
      v38 = [a2 position] + 1;
      if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
      {
        v40 = [a2 data];
        [v40 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v37 |= (v108 & 0x7F) << v35;
      if ((v108 & 0x80) == 0)
      {
        break;
      }

      v35 += 7;
      v12 = v36++ >= 9;
      if (v12)
      {
        v41 = 0;
        goto LABEL_143;
      }
    }

    v41 = (v37 != 0) & ~[a2 hasError];
LABEL_143:
    [a1 setIsHandleQueryLabelNameMatch:v41];
LABEL_166:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEResolutionQueryInfoGeneratedReadFrom(void *a1, void *a2)
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
          case 6:
            v28 = PBReaderReadString();
            if (v28)
            {
              [a1 addAnonymizedRecommendedEntityIdentifier:v28];
            }

            goto LABEL_53;
          case 5:
            v28 = PBReaderReadString();
            [a1 setRecommenderModelVersion:v28];
LABEL_53:

            goto LABEL_62;
          case 4:
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
                goto LABEL_61;
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

LABEL_61:
            [a1 setForcePromptType:v27];
            goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
LABEL_65:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setOriginalResolutionContextId:v28];
            goto LABEL_53;
          case 2:
            v28 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setQueryId:v28];
            goto LABEL_53;
          case 3:
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
                goto LABEL_57;
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

LABEL_57:
            [a1 setResolutionState:v20];
            goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEResolutionRequestContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 100)
      {
        if (v13 == 101)
        {
          v14 = objc_alloc_init(INFERENCESchemaINFERENCEResolutionRequestEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEResolutionRequestEndedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
          goto LABEL_36;
        }

        if (v13 == 102)
        {
          v14 = objc_alloc_init(INFERENCESchemaINFERENCEResolutionRequestFailed);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEResolutionRequestFailedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setContextId:v14];
          goto LABEL_36;
        }

        if (v13 == 100)
        {
          v14 = objc_alloc_init(INFERENCESchemaINFERENCEResolutionRequestStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEResolutionRequestStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEResolutionRequestEndedReadFrom(void *a1, void *a2)
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
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
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

uint64_t INFERENCESchemaINFERENCEResolutionRequestFailedReadFrom(void *a1, void *a2)
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
      [a1 setErrorCode:v20];
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

uint64_t INFERENCESchemaINFERENCEResolutionRequestStartedReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(INFERENCESchemaINFERENCEResolverConfig);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEResolverConfigReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setResolverConfig:v20];
      }

      else if ((v12 >> 3) == 1)
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

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setSlotType:v19];
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

uint64_t INFERENCESchemaINFERENCEResolverConfigReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEContactResolverConfig);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEContactResolverConfigReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setContactConfig:v13];
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

uint64_t INFERENCESchemaINFERENCESimpleTaskInfoGeneratedReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
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
                goto LABEL_70;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_70:
            [a1 setIsExecuted:v35];
            goto LABEL_79;
          case 6:
            v28 = objc_alloc_init(INFERENCESchemaINFERENCETaskSpecificInfo);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCETaskSpecificInfoReadFrom(v28, a2))
            {
LABEL_82:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTaskSpecificInfo:v28];
            goto LABEL_68;
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
                goto LABEL_74;
              }
            }

            v27 = (v23 != 0) & ~[a2 hasError];
LABEL_74:
            [a1 setIsSuccessfulDirectExecution:v27];
            goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = objc_alloc_init(SISchemaUUID);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
              goto LABEL_82;
            }

            PBReaderRecallMark();
            [a1 setOriginalResolutionContextId:v28];
LABEL_68:

            goto LABEL_79;
          case 2:
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
                goto LABEL_78;
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

LABEL_78:
            [a1 setTaskSuccessType:v42];
            goto LABEL_79;
          case 3:
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
                goto LABEL_72;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_72:
            [a1 setIsSuccess:v20];
            goto LABEL_79;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReportedReadFrom(void *a1, void *a2)
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
        v31 = 0;
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
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_47;
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

LABEL_47:
      [a1 setExecutionPath:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v30 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v30 & 0x7F) << v14;
        if ((v30 & 0x80) == 0)
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
      [a1 setProjectIntent:v20];
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

uint64_t INFERENCESchemaINFERENCESpeechAlternativeRanksReadFrom(void *a1, void *a2)
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
      v58 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v58 & 0x7F) << v6;
      if ((v58 & 0x80) == 0)
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
    if ((v13 >> 3) > 3)
    {
      switch(v14)
      {
        case 4:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v62 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v62 & 0x7F) << v36;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_86;
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

LABEL_86:
          [a1 setMiddleNameRank:v42];
          continue;
        case 5:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          while (1)
          {
            v61 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v61 & 0x7F) << v51;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v12 = v52++ >= 9;
            if (v12)
            {
              v57 = 0;
              goto LABEL_102;
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

LABEL_102:
          [a1 setFamilyNameRank:v57];
          continue;
        case 6:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v60 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v60 & 0x7F) << v22;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_94;
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

LABEL_94:
          [a1 setFullNameRank:v28];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v59 = 0;
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
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_82;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_82:
          [a1 setIsError:v35];
          continue;
        case 2:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          while (1)
          {
            v64 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

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
            v12 = v45++ >= 9;
            if (v12)
            {
              v50 = 0;
              goto LABEL_98;
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

LABEL_98:
          [a1 setVersion:v50];
          continue;
        case 3:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v63 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v63 & 0x7F) << v15;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
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
            v21 = v17;
          }

LABEL_90:
          [a1 setGivenNameRank:v21];
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

uint64_t INFERENCESchemaINFERENCETaskSpecificInfoReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(INFERENCESchemaINFERENCELongRunningTaskInfo);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCELongRunningTaskInfoReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLongRunningTaskInfo:v13];
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

uint64_t INFERENCESchemaINFERENCETrialEnrollmentReadFrom(void *a1, void *a2)
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
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
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
    if ((v13 >> 3) > 2)
    {
      if (v14 == 4)
      {
        v15 = PBReaderReadString();
        [a1 setRolloutId:v15];
        goto LABEL_37;
      }

      if (v14 == 3)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v25 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v25 & 0x7F) << v16;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_41;
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

LABEL_41:
        [a1 setDeploymentId:v22];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setExperimentId:v15];
        goto LABEL_37;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setTreatmentId:v15];
LABEL_37:

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

uint64_t INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignalsReadFrom(void *a1, void *a2)
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
      v344 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v344 & 0x7F) << v6;
      if ((v344 & 0x80) == 0)
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
          v344 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v344 & 0x7F) << v14;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_529:
            [a1 setRelativeAppUsage1Day:v20];
            goto LABEL_622;
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

        goto LABEL_529;
      case 2u:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        while (1)
        {
          v344 = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            v173 = [a2 data];
            [v173 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v170 |= (v344 & 0x7F) << v168;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v12 = v169++ >= 9;
          if (v12)
          {
            v174 = 0;
            goto LABEL_533;
          }
        }

        if ([a2 hasError])
        {
          v174 = 0;
        }

        else
        {
          v174 = v170;
        }

LABEL_533:
        [a1 setRelativeAppUsage7Day:v174];
        continue;
      case 3u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        while (1)
        {
          v344 = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v344 & 0x7F) << v140;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            v146 = 0;
            goto LABEL_513;
          }
        }

        if ([a2 hasError])
        {
          v146 = 0;
        }

        else
        {
          v146 = v142;
        }

LABEL_513:
        [a1 setRelativeAppUsage14Day:v146];
        continue;
      case 4u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        while (1)
        {
          v344 = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v344 & 0x7F) << v154;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v160 = 0;
            goto LABEL_521;
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

LABEL_521:
        [a1 setEntityAbsoluteCount2Min:v160];
        continue;
      case 5u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          v344 = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v344 & 0x7F) << v98;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_489;
          }
        }

        if ([a2 hasError])
        {
          v104 = 0;
        }

        else
        {
          v104 = v100;
        }

LABEL_489:
        [a1 setEntityAbsoluteCount10Min:v104];
        continue;
      case 6u:
        v203 = 0;
        v204 = 0;
        v205 = 0;
        while (1)
        {
          v344 = 0;
          v206 = [a2 position] + 1;
          if (v206 >= [a2 position] && (v207 = objc_msgSend(a2, "position") + 1, v207 <= objc_msgSend(a2, "length")))
          {
            v208 = [a2 data];
            [v208 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v205 |= (v344 & 0x7F) << v203;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v203 += 7;
          v12 = v204++ >= 9;
          if (v12)
          {
            v209 = 0;
            goto LABEL_553;
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

LABEL_553:
        [a1 setEntityAbsoluteCount1Hr:v209];
        continue;
      case 7u:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        while (1)
        {
          v344 = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            v229 = [a2 data];
            [v229 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v344 & 0x7F) << v224;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v12 = v225++ >= 9;
          if (v12)
          {
            v230 = 0;
            goto LABEL_563;
          }
        }

        if ([a2 hasError])
        {
          v230 = 0;
        }

        else
        {
          v230 = v226;
        }

LABEL_563:
        [a1 setEntityAbsoluteCount6Hr:v230];
        continue;
      case 8u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        while (1)
        {
          v344 = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v344 & 0x7F) << v161;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            v167 = 0;
            goto LABEL_525;
          }
        }

        if ([a2 hasError])
        {
          v167 = 0;
        }

        else
        {
          v167 = v163;
        }

LABEL_525:
        [a1 setEntityAbsoluteCount1Day:v167];
        continue;
      case 9u:
        v245 = 0;
        v246 = 0;
        v247 = 0;
        while (1)
        {
          v344 = 0;
          v248 = [a2 position] + 1;
          if (v248 >= [a2 position] && (v249 = objc_msgSend(a2, "position") + 1, v249 <= objc_msgSend(a2, "length")))
          {
            v250 = [a2 data];
            [v250 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v247 |= (v344 & 0x7F) << v245;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v245 += 7;
          v12 = v246++ >= 9;
          if (v12)
          {
            v251 = 0;
            goto LABEL_575;
          }
        }

        if ([a2 hasError])
        {
          v251 = 0;
        }

        else
        {
          v251 = v247;
        }

LABEL_575:
        [a1 setEntityAbsoluteCount7Day:v251];
        continue;
      case 0xAu:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        while (1)
        {
          v344 = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v344 & 0x7F) << v119;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v125 = 0;
            goto LABEL_501;
          }
        }

        if ([a2 hasError])
        {
          v125 = 0;
        }

        else
        {
          v125 = v121;
        }

LABEL_501:
        [a1 setEntityAbsoluteCount14Day:v125];
        continue;
      case 0xBu:
        v238 = 0;
        v239 = 0;
        v240 = 0;
        while (1)
        {
          v344 = 0;
          v241 = [a2 position] + 1;
          if (v241 >= [a2 position] && (v242 = objc_msgSend(a2, "position") + 1, v242 <= objc_msgSend(a2, "length")))
          {
            v243 = [a2 data];
            [v243 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v240 |= (v344 & 0x7F) << v238;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v238 += 7;
          v12 = v239++ >= 9;
          if (v12)
          {
            v244 = 0;
            goto LABEL_571;
          }
        }

        if ([a2 hasError])
        {
          v244 = 0;
        }

        else
        {
          v244 = v240;
        }

LABEL_571:
        [a1 setEntityRecency:v244];
        continue;
      case 0xCu:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          v344 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v344 & 0x7F) << v91;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_485;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_485:
        [a1 setMediaUserContextNumberOfLibraryItems:v97];
        continue;
      case 0xDu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          v344 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v344 & 0x7F) << v112;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v118 = 0;
            goto LABEL_497;
          }
        }

        if ([a2 hasError])
        {
          v118 = 0;
        }

        else
        {
          v118 = v114;
        }

LABEL_497:
        [a1 setMediaUserContextSubscriptionStatus:v118];
        continue;
      case 0xEu:
        v217 = 0;
        v218 = 0;
        v219 = 0;
        while (1)
        {
          v344 = 0;
          v220 = [a2 position] + 1;
          if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
          {
            v222 = [a2 data];
            [v222 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v219 |= (v344 & 0x7F) << v217;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v217 += 7;
          v12 = v218++ >= 9;
          if (v12)
          {
            v223 = 0;
            goto LABEL_559;
          }
        }

        v223 = (v219 != 0) & ~[a2 hasError];
LABEL_559:
        [a1 setIsLastForegroundApp:v223];
        continue;
      case 0xFu:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          v344 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v344 & 0x7F) << v77;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_477;
          }
        }

        v83 = (v79 != 0) & ~[a2 hasError];
LABEL_477:
        [a1 setIsLastNowPlayingApp:v83];
        continue;
      case 0x10u:
        v147 = 0;
        v148 = 0;
        v149 = 0;
        while (1)
        {
          v344 = 0;
          v150 = [a2 position] + 1;
          if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
          {
            v152 = [a2 data];
            [v152 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v149 |= (v344 & 0x7F) << v147;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v147 += 7;
          v12 = v148++ >= 9;
          if (v12)
          {
            v153 = 0;
            goto LABEL_517;
          }
        }

        if ([a2 hasError])
        {
          v153 = 0;
        }

        else
        {
          v153 = v149;
        }

LABEL_517:
        [a1 setNowPlayingAbsoluteCount2Min:v153];
        continue;
      case 0x11u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v344 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v344 & 0x7F) << v63;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_471;
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

LABEL_471:
        [a1 setNowPlayingAbsoluteCount10Min:v69];
        continue;
      case 0x12u:
        v182 = 0;
        v183 = 0;
        v184 = 0;
        while (1)
        {
          v344 = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v184 |= (v344 & 0x7F) << v182;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v12 = v183++ >= 9;
          if (v12)
          {
            v188 = 0;
            goto LABEL_541;
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

LABEL_541:
        [a1 setNowPlayingAbsoluteCount1Hr:v188];
        continue;
      case 0x13u:
        v231 = 0;
        v232 = 0;
        v233 = 0;
        while (1)
        {
          v344 = 0;
          v234 = [a2 position] + 1;
          if (v234 >= [a2 position] && (v235 = objc_msgSend(a2, "position") + 1, v235 <= objc_msgSend(a2, "length")))
          {
            v236 = [a2 data];
            [v236 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v233 |= (v344 & 0x7F) << v231;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v231 += 7;
          v12 = v232++ >= 9;
          if (v12)
          {
            v237 = 0;
            goto LABEL_567;
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

LABEL_567:
        [a1 setNowPlayingAbsoluteCount6Hr:v237];
        continue;
      case 0x14u:
        v287 = 0;
        v288 = 0;
        v289 = 0;
        while (1)
        {
          v344 = 0;
          v290 = [a2 position] + 1;
          if (v290 >= [a2 position] && (v291 = objc_msgSend(a2, "position") + 1, v291 <= objc_msgSend(a2, "length")))
          {
            v292 = [a2 data];
            [v292 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v289 |= (v344 & 0x7F) << v287;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v287 += 7;
          v12 = v288++ >= 9;
          if (v12)
          {
            v293 = 0;
            goto LABEL_595;
          }
        }

        if ([a2 hasError])
        {
          v293 = 0;
        }

        else
        {
          v293 = v289;
        }

LABEL_595:
        [a1 setNowPlayingAbsoluteCount1Day:v293];
        continue;
      case 0x15u:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        while (1)
        {
          v344 = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            v201 = [a2 data];
            [v201 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v344 & 0x7F) << v196;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v12 = v197++ >= 9;
          if (v12)
          {
            v202 = 0;
            goto LABEL_549;
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

LABEL_549:
        [a1 setNowPlayingAbsoluteCount7Day:v202];
        continue;
      case 0x16u:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        while (1)
        {
          v344 = 0;
          v213 = [a2 position] + 1;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 1, v214 <= objc_msgSend(a2, "length")))
          {
            v215 = [a2 data];
            [v215 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v212 |= (v344 & 0x7F) << v210;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v12 = v211++ >= 9;
          if (v12)
          {
            v216 = 0;
            goto LABEL_557;
          }
        }

        if ([a2 hasError])
        {
          v216 = 0;
        }

        else
        {
          v216 = v212;
        }

LABEL_557:
        [a1 setNowPlayingAbsoluteCount14Day:v216];
        continue;
      case 0x17u:
        v273 = 0;
        v274 = 0;
        v275 = 0;
        while (1)
        {
          v344 = 0;
          v276 = [a2 position] + 1;
          if (v276 >= [a2 position] && (v277 = objc_msgSend(a2, "position") + 1, v277 <= objc_msgSend(a2, "length")))
          {
            v278 = [a2 data];
            [v278 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v275 |= (v344 & 0x7F) << v273;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v273 += 7;
          v12 = v274++ >= 9;
          if (v12)
          {
            v279 = 0;
            goto LABEL_587;
          }
        }

        v279 = (v275 != 0) & ~[a2 hasError];
LABEL_587:
        [a1 setIsNowPlayingApp:v279];
        continue;
      case 0x18u:
        v301 = 0;
        v302 = 0;
        v303 = 0;
        while (1)
        {
          v344 = 0;
          v304 = [a2 position] + 1;
          if (v304 >= [a2 position] && (v305 = objc_msgSend(a2, "position") + 1, v305 <= objc_msgSend(a2, "length")))
          {
            v306 = [a2 data];
            [v306 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v303 |= (v344 & 0x7F) << v301;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v301 += 7;
          v12 = v302++ >= 9;
          if (v12)
          {
            v307 = 0;
            goto LABEL_601;
          }
        }

        v307 = (v303 != 0) & ~[a2 hasError];
LABEL_601:
        [a1 setIsSelectedApp:v307];
        continue;
      case 0x19u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        while (1)
        {
          v344 = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v344 & 0x7F) << v133;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v139 = 0;
            goto LABEL_509;
          }
        }

        if ([a2 hasError])
        {
          v139 = 0;
        }

        else
        {
          v139 = v135;
        }

LABEL_509:
        [a1 setTimeSinceLastForegroundAppStartInSec:v139];
        continue;
      case 0x1Au:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        while (1)
        {
          v344 = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v344 & 0x7F) << v126;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            v132 = 0;
            goto LABEL_505;
          }
        }

        if ([a2 hasError])
        {
          v132 = 0;
        }

        else
        {
          v132 = v128;
        }

LABEL_505:
        [a1 setTimeSinceLastForegroundAppEndInSec:v132];
        continue;
      case 0x1Bu:
        v329 = 0;
        v330 = 0;
        v331 = 0;
        while (1)
        {
          v344 = 0;
          v332 = [a2 position] + 1;
          if (v332 >= [a2 position] && (v333 = objc_msgSend(a2, "position") + 1, v333 <= objc_msgSend(a2, "length")))
          {
            v334 = [a2 data];
            [v334 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v331 |= (v344 & 0x7F) << v329;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v329 += 7;
          v12 = v330++ >= 9;
          if (v12)
          {
            v335 = 0;
            goto LABEL_617;
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

LABEL_617:
        [a1 setTimeSinceLastNowPlayingAppStartInSec:v335];
        continue;
      case 0x1Cu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v344 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v344 & 0x7F) << v49;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_463;
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

LABEL_463:
        [a1 setTimeSinceLastNowPlayingAppEndInSec:v55];
        continue;
      case 0x1Du:
        v308 = 0;
        v309 = 0;
        v310 = 0;
        while (1)
        {
          v344 = 0;
          v311 = [a2 position] + 1;
          if (v311 >= [a2 position] && (v312 = objc_msgSend(a2, "position") + 1, v312 <= objc_msgSend(a2, "length")))
          {
            v313 = [a2 data];
            [v313 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v310 |= (v344 & 0x7F) << v308;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v308 += 7;
          v12 = v309++ >= 9;
          if (v12)
          {
            v314 = 0;
            goto LABEL_605;
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

LABEL_605:
        [a1 setSpotlightRelativeCount:v314];
        continue;
      case 0x1Eu:
        v315 = 0;
        v316 = 0;
        v317 = 0;
        while (1)
        {
          v344 = 0;
          v318 = [a2 position] + 1;
          if (v318 >= [a2 position] && (v319 = objc_msgSend(a2, "position") + 1, v319 <= objc_msgSend(a2, "length")))
          {
            v320 = [a2 data];
            [v320 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v317 |= (v344 & 0x7F) << v315;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v315 += 7;
          v12 = v316++ >= 9;
          if (v12)
          {
            v321 = 0;
            goto LABEL_609;
          }
        }

        if ([a2 hasError])
        {
          v321 = 0;
        }

        else
        {
          v321 = v317;
        }

LABEL_609:
        [a1 setSupportedMediaCategories:v321];
        continue;
      case 0x1Fu:
        v252 = 0;
        v253 = 0;
        v254 = 0;
        while (1)
        {
          v344 = 0;
          v255 = [a2 position] + 1;
          if (v255 >= [a2 position] && (v256 = objc_msgSend(a2, "position") + 1, v256 <= objc_msgSend(a2, "length")))
          {
            v257 = [a2 data];
            [v257 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v254 |= (v344 & 0x7F) << v252;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v252 += 7;
          v12 = v253++ >= 9;
          if (v12)
          {
            v258 = 0;
            goto LABEL_577;
          }
        }

        v258 = (v254 != 0) & ~[a2 hasError];
LABEL_577:
        [a1 setIsForegroundApp:v258];
        continue;
      case 0x20u:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        while (1)
        {
          v344 = 0;
          v178 = [a2 position] + 1;
          if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
          {
            v180 = [a2 data];
            [v180 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v177 |= (v344 & 0x7F) << v175;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v12 = v176++ >= 9;
          if (v12)
          {
            v181 = 0;
            goto LABEL_537;
          }
        }

        if ([a2 hasError])
        {
          v181 = 0;
        }

        else
        {
          v181 = v177;
        }

LABEL_537:
        [a1 setEntityAbsoluteCount28Day:v181];
        continue;
      case 0x21u:
        v259 = 0;
        v260 = 0;
        v261 = 0;
        while (1)
        {
          v344 = 0;
          v262 = [a2 position] + 1;
          if (v262 >= [a2 position] && (v263 = objc_msgSend(a2, "position") + 1, v263 <= objc_msgSend(a2, "length")))
          {
            v264 = [a2 data];
            [v264 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v261 |= (v344 & 0x7F) << v259;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v259 += 7;
          v12 = v260++ >= 9;
          if (v12)
          {
            v265 = 0;
            goto LABEL_581;
          }
        }

        if ([a2 hasError])
        {
          v265 = 0;
        }

        else
        {
          v265 = v261;
        }

LABEL_581:
        [a1 setNowPlayingAbsoluteCount28Day:v265];
        continue;
      case 0x22u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          v344 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v344 & 0x7F) << v84;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v90 = 0;
            goto LABEL_481;
          }
        }

        if ([a2 hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v86;
        }

LABEL_481:
        [a1 setEntityPartialSiriCount2Min:v90];
        continue;
      case 0x23u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          v344 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v344 & 0x7F) << v56;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_467;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

LABEL_467:
        [a1 setEntityPartialSiriCount10Min:v62];
        continue;
      case 0x24u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          v344 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v344 & 0x7F) << v35;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_455;
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

LABEL_455:
        [a1 setEntityPartialSiriCount1Hr:v41];
        continue;
      case 0x25u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v344 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v344 & 0x7F) << v42;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_459;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_459:
        [a1 setEntityPartialSiriCount6Hr:v48];
        continue;
      case 0x26u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v344 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v344 & 0x7F) << v28;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_451;
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

LABEL_451:
        [a1 setEntityPartialSiriCount1Day:v34];
        continue;
      case 0x27u:
        v322 = 0;
        v323 = 0;
        v324 = 0;
        while (1)
        {
          v344 = 0;
          v325 = [a2 position] + 1;
          if (v325 >= [a2 position] && (v326 = objc_msgSend(a2, "position") + 1, v326 <= objc_msgSend(a2, "length")))
          {
            v327 = [a2 data];
            [v327 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v324 |= (v344 & 0x7F) << v322;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v322 += 7;
          v12 = v323++ >= 9;
          if (v12)
          {
            v328 = 0;
            goto LABEL_613;
          }
        }

        if ([a2 hasError])
        {
          v328 = 0;
        }

        else
        {
          v328 = v324;
        }

LABEL_613:
        [a1 setEntityPartialSiriCount7Day:v328];
        continue;
      case 0x28u:
        v280 = 0;
        v281 = 0;
        v282 = 0;
        while (1)
        {
          v344 = 0;
          v283 = [a2 position] + 1;
          if (v283 >= [a2 position] && (v284 = objc_msgSend(a2, "position") + 1, v284 <= objc_msgSend(a2, "length")))
          {
            v285 = [a2 data];
            [v285 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v282 |= (v344 & 0x7F) << v280;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v280 += 7;
          v12 = v281++ >= 9;
          if (v12)
          {
            v286 = 0;
            goto LABEL_591;
          }
        }

        if ([a2 hasError])
        {
          v286 = 0;
        }

        else
        {
          v286 = v282;
        }

LABEL_591:
        [a1 setEntityPartialSiriCount28Day:v286];
        continue;
      case 0x29u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          v344 = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v344 & 0x7F) << v105;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_493;
          }
        }

        if ([a2 hasError])
        {
          v111 = 0;
        }

        else
        {
          v111 = v107;
        }

LABEL_493:
        [a1 setEntityPartialAppCount2Min:v111];
        continue;
      case 0x2Au:
        v189 = 0;
        v190 = 0;
        v191 = 0;
        while (1)
        {
          v344 = 0;
          v192 = [a2 position] + 1;
          if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 1, v193 <= objc_msgSend(a2, "length")))
          {
            v194 = [a2 data];
            [v194 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v191 |= (v344 & 0x7F) << v189;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v189 += 7;
          v12 = v190++ >= 9;
          if (v12)
          {
            v195 = 0;
            goto LABEL_545;
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

LABEL_545:
        [a1 setEntityPartialAppCount10Min:v195];
        continue;
      case 0x2Bu:
        v294 = 0;
        v295 = 0;
        v296 = 0;
        while (1)
        {
          v344 = 0;
          v297 = [a2 position] + 1;
          if (v297 >= [a2 position] && (v298 = objc_msgSend(a2, "position") + 1, v298 <= objc_msgSend(a2, "length")))
          {
            v299 = [a2 data];
            [v299 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v296 |= (v344 & 0x7F) << v294;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v294 += 7;
          v12 = v295++ >= 9;
          if (v12)
          {
            v300 = 0;
            goto LABEL_599;
          }
        }

        if ([a2 hasError])
        {
          v300 = 0;
        }

        else
        {
          v300 = v296;
        }

LABEL_599:
        [a1 setEntityPartialAppCount1Hr:v300];
        continue;
      case 0x2Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v344 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v344 & 0x7F) << v21;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_447;
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

LABEL_447:
        [a1 setEntityPartialAppCount6Hr:v27];
        continue;
      case 0x2Du:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v344 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v344 & 0x7F) << v70;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_475;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_475:
        [a1 setEntityPartialAppCount1Day:v76];
        continue;
      case 0x2Eu:
        v266 = 0;
        v267 = 0;
        v268 = 0;
        while (1)
        {
          v344 = 0;
          v269 = [a2 position] + 1;
          if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 1, v270 <= objc_msgSend(a2, "length")))
          {
            v271 = [a2 data];
            [v271 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v268 |= (v344 & 0x7F) << v266;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v266 += 7;
          v12 = v267++ >= 9;
          if (v12)
          {
            v272 = 0;
            goto LABEL_585;
          }
        }

        if ([a2 hasError])
        {
          v272 = 0;
        }

        else
        {
          v272 = v268;
        }

LABEL_585:
        [a1 setEntityPartialAppCount7Day:v272];
        continue;
      case 0x2Fu:
        v336 = 0;
        v337 = 0;
        v338 = 0;
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
      v344 = 0;
      v339 = [a2 position] + 1;
      if (v339 >= [a2 position] && (v340 = objc_msgSend(a2, "position") + 1, v340 <= objc_msgSend(a2, "length")))
      {
        v341 = [a2 data];
        [v341 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v338 |= (v344 & 0x7F) << v336;
      if ((v344 & 0x80) == 0)
      {
        break;
      }

      v336 += 7;
      v12 = v337++ >= 9;
      if (v12)
      {
        v342 = 0;
        goto LABEL_621;
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

LABEL_621:
    [a1 setEntityPartialAppCount28Day:v342];
LABEL_622:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGeneratedReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignalsReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setIndependentSignal:v13];
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

    v13 = objc_alloc_init(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignalsReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addDependentSignals:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignalsReadFrom(void *a1, void *a2)
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
      v86 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v86 & 0x7F) << v6;
      if ((v86 & 0x80) == 0)
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
    if ((v13 >> 3) > 5)
    {
      if (v14 <= 7)
      {
        if (v14 == 6)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            v89 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v89 & 0x7F) << v50;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v12 = v51++ >= 9;
            if (v12)
            {
              v56 = 0;
              goto LABEL_136;
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

LABEL_136:
          [a1 setClientHourOfDay:v56];
          continue;
        }

        if (v14 == 7)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v96 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v96 & 0x7F) << v36;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_130;
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

LABEL_130:
          [a1 setClientLocale:v42];
          continue;
        }
      }

      else
      {
        switch(v14)
        {
          case 8:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              v95 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v95 & 0x7F) << v64;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v12 = v65++ >= 9;
              if (v12)
              {
                v70 = 0;
                goto LABEL_144;
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

LABEL_144:
            [a1 setClientLanguage:v70];
            continue;
          case 9:
            v78 = 0;
            v79 = 0;
            v80 = 0;
            while (1)
            {
              v94 = 0;
              v81 = [a2 position] + 1;
              if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
              {
                v83 = [a2 data];
                [v83 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v80 |= (v94 & 0x7F) << v78;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              v12 = v79++ >= 9;
              if (v12)
              {
                v84 = 0;
                goto LABEL_160;
              }
            }

            if ([a2 hasError])
            {
              v84 = 0;
            }

            else
            {
              v84 = v80;
            }

LABEL_160:
            [a1 setClientRegion:v84];
            continue;
          case 0xA:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v88 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v88 & 0x7F) << v22;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v12 = v23++ >= 9;
              if (v12)
              {
                v28 = 0;
                goto LABEL_152;
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

LABEL_152:
            [a1 setBucketedDeviceMotionState:v28];
            continue;
        }
      }
    }

    else if (v14 <= 2)
    {
      if (v14 == 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          v87 = 0;
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
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_132;
          }
        }

        v49 = (v45 != 0) & ~[a2 hasError];
LABEL_132:
        [a1 setIsDeviceLockStatus:v49];
        continue;
      }

      if (v14 == 2)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v93 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v93 & 0x7F) << v29;
          if ((v93 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_126;
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

LABEL_126:
        [a1 setDeviceMotionState:v35];
        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            v92 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v92 & 0x7F) << v57;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v12 = v58++ >= 9;
            if (v12)
            {
              v63 = 0;
              goto LABEL_140;
            }
          }

          if ([a2 hasError])
          {
            v63 = 0;
          }

          else
          {
            v63 = v59;
          }

LABEL_140:
          [a1 setIntentType:v63];
          continue;
        case 4:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v91 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

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
            v12 = v72++ >= 9;
            if (v12)
            {
              v77 = 0;
              goto LABEL_156;
            }
          }

          if ([a2 hasError])
          {
            v77 = 0;
          }

          else
          {
            v77 = v73;
          }

LABEL_156:
          [a1 setNowPlayingState:v77];
          continue;
        case 5:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v90 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v90 & 0x7F) << v15;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_148;
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

LABEL_148:
          [a1 setDeviceClass:v21];
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