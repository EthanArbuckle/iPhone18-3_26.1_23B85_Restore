uint64_t MHSchemaMHVoiceProfileOnboardedReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtteranceReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addConfusionScoresForEnrollmentUtterance:v20];
        }
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
            goto LABEL_38;
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

LABEL_38:
        [a1 setVoiceProfilePitchInHz:v19];
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

uint64_t MHSchemaMHVoiceTriggerContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(MHSchemaMHVoiceTriggerSecondPassRejected);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MHSchemaMHVoiceTriggerSecondPassRejectedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(MHSchemaMHVoiceTriggerSecondPassCancelled);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MHSchemaMHVoiceTriggerSecondPassCancelledReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setCancelled:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MHSchemaMHVoiceTriggerSecondPassStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MHSchemaMHVoiceTriggerSecondPassStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(MHSchemaMHVoiceTriggerSecondPassTriggered);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MHSchemaMHVoiceTriggerSecondPassTriggeredReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
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

uint64_t MHSchemaMHVoiceTriggerEventInfoReadFrom(void *a1, void *a2)
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
      LOBYTE(v524[0]) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v524[0]) & 0x7F) << v6;
      if ((LOBYTE(v524[0]) & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v524[0]) & 0x7F) << v14;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_734:
            [a1 setSecondPassAnalyerStartSampleCount:v20];
            goto LABEL_510;
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

        goto LABEL_734;
      case 2u:
        v263 = 0;
        v264 = 0;
        v265 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v266 = [a2 position] + 1;
          if (v266 >= [a2 position] && (v267 = objc_msgSend(a2, "position") + 1, v267 <= objc_msgSend(a2, "length")))
          {
            v268 = [a2 data];
            [v268 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v265 |= (LOBYTE(v524[0]) & 0x7F) << v263;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v263 += 7;
          v12 = v264++ >= 9;
          if (v12)
          {
            v269 = 0;
            goto LABEL_726;
          }
        }

        if ([a2 hasError])
        {
          v269 = 0;
        }

        else
        {
          v269 = v265;
        }

LABEL_726:
        [a1 setSecondPassAnalyerEndSampleCount:v269];
        goto LABEL_510;
      case 0xEu:
        LODWORD(v524[0]) = 0;
        v260 = [a2 position] + 4;
        if (v260 >= [a2 position] && (v261 = objc_msgSend(a2, "position") + 4, v261 <= objc_msgSend(a2, "length")))
        {
          v508 = [a2 data];
          [v508 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v262) = LODWORD(v524[0]);
        [a1 setSatScore:v262];
        goto LABEL_510;
      case 0xFu:
        v292 = 0;
        v293 = 0;
        v294 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v295 = [a2 position] + 1;
          if (v295 >= [a2 position] && (v296 = objc_msgSend(a2, "position") + 1, v296 <= objc_msgSend(a2, "length")))
          {
            v297 = [a2 data];
            [v297 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v294 |= (LOBYTE(v524[0]) & 0x7F) << v292;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v292 += 7;
          v12 = v293++ >= 9;
          if (v12)
          {
            v298 = 0;
            goto LABEL_742;
          }
        }

        if ([a2 hasError])
        {
          v298 = 0;
        }

        else
        {
          v298 = v294;
        }

LABEL_742:
        [a1 setSatNumTrainingUtterances:v298];
        goto LABEL_510;
      case 0x10u:
        LODWORD(v524[0]) = 0;
        v257 = [a2 position] + 4;
        if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 4, v258 <= objc_msgSend(a2, "length")))
        {
          v507 = [a2 data];
          [v507 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v259) = LODWORD(v524[0]);
        [a1 setSatThreshold:v259];
        goto LABEL_510;
      case 0x11u:
        v225 = 0;
        v226 = 0;
        v227 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v228 = [a2 position] + 1;
          if (v228 >= [a2 position] && (v229 = objc_msgSend(a2, "position") + 1, v229 <= objc_msgSend(a2, "length")))
          {
            v230 = [a2 data];
            [v230 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v227 |= (LOBYTE(v524[0]) & 0x7F) << v225;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v225 += 7;
          v12 = v226++ >= 9;
          if (v12)
          {
            v231 = 0;
            goto LABEL_718;
          }
        }

        v231 = (v227 != 0) & ~[a2 hasError];
LABEL_718:
        [a1 setSatTriggered:v231];
        goto LABEL_510;
      case 0x12u:
        LODWORD(v524[0]) = 0;
        v301 = [a2 position] + 4;
        if (v301 >= [a2 position] && (v302 = objc_msgSend(a2, "position") + 4, v302 <= objc_msgSend(a2, "length")))
        {
          v513 = [a2 data];
          [v513 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v303) = LODWORD(v524[0]);
        [a1 setTdSpeakerRecognizerScore:v303];
        goto LABEL_510;
      case 0x13u:
        LODWORD(v524[0]) = 0;
        v331 = [a2 position] + 4;
        if (v331 >= [a2 position] && (v332 = objc_msgSend(a2, "position") + 4, v332 <= objc_msgSend(a2, "length")))
        {
          v516 = [a2 data];
          [v516 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v333) = LODWORD(v524[0]);
        [a1 setTdSpeakerRecognizerCombinedScore:v333];
        goto LABEL_510;
      case 0x14u:
        LODWORD(v524[0]) = 0;
        v248 = [a2 position] + 4;
        if (v248 >= [a2 position] && (v249 = objc_msgSend(a2, "position") + 4, v249 <= objc_msgSend(a2, "length")))
        {
          v504 = [a2 data];
          [v504 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v250) = LODWORD(v524[0]);
        [a1 setTdSpeakerRecognizerCombinedThreshold:v250];
        goto LABEL_510;
      case 0x15u:
        LODWORD(v524[0]) = 0;
        v232 = [a2 position] + 4;
        if (v232 >= [a2 position] && (v233 = objc_msgSend(a2, "position") + 4, v233 <= objc_msgSend(a2, "length")))
        {
          v501 = [a2 data];
          [v501 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v234) = LODWORD(v524[0]);
        [a1 setTdSpeakerRecognizerCombinationWeight:v234];
        goto LABEL_510;
      case 0x16u:
        v304 = 0;
        v305 = 0;
        v306 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v307 = [a2 position] + 1;
          if (v307 >= [a2 position] && (v308 = objc_msgSend(a2, "position") + 1, v308 <= objc_msgSend(a2, "length")))
          {
            v309 = [a2 data];
            [v309 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v306 |= (LOBYTE(v524[0]) & 0x7F) << v304;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v304 += 7;
          v12 = v305++ >= 9;
          if (v12)
          {
            v310 = 0;
            goto LABEL_746;
          }
        }

        if ([a2 hasError])
        {
          v310 = 0;
        }

        else
        {
          v310 = v306;
        }

LABEL_746:
        [a1 setBiometricClue:v310];
        goto LABEL_510;
      case 0x17u:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v179 |= (LOBYTE(v524[0]) & 0x7F) << v177;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v12 = v178++ >= 9;
          if (v12)
          {
            v183 = 0;
            goto LABEL_696;
          }
        }

        v183 = (v179 != 0) & ~[a2 hasError];
LABEL_696:
        [a1 setSatBeingTrained:v183];
        goto LABEL_510;
      case 0x18u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (LOBYTE(v524[0]) & 0x7F) << v170;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v12 = v171++ >= 9;
          if (v12)
          {
            v176 = 0;
            goto LABEL_694;
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

LABEL_694:
        [a1 setLastConsecutivePHSRejects:v176];
        goto LABEL_510;
      case 0x19u:
        v334 = 0;
        v335 = 0;
        v336 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v337 = [a2 position] + 1;
          if (v337 >= [a2 position] && (v338 = objc_msgSend(a2, "position") + 1, v338 <= objc_msgSend(a2, "length")))
          {
            v339 = [a2 data];
            [v339 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v336 |= (LOBYTE(v524[0]) & 0x7F) << v334;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v334 += 7;
          v12 = v335++ >= 9;
          if (v12)
          {
            v340 = 0;
            goto LABEL_756;
          }
        }

        if ([a2 hasError])
        {
          v340 = 0;
        }

        else
        {
          v340 = v336;
        }

LABEL_756:
        [a1 setDeltaTimeInNsFromlastPHSReject:v340];
        goto LABEL_510;
      case 0x1Au:
        LODWORD(v524[0]) = 0;
        v251 = [a2 position] + 4;
        if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 4, v252 <= objc_msgSend(a2, "length")))
        {
          v505 = [a2 data];
          [v505 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v253) = LODWORD(v524[0]);
        [a1 setTriggerExplicitSatScore:v253];
        goto LABEL_510;
      case 0x1Bu:
        LODWORD(v524[0]) = 0;
        v254 = [a2 position] + 4;
        if (v254 >= [a2 position] && (v255 = objc_msgSend(a2, "position") + 4, v255 <= objc_msgSend(a2, "length")))
        {
          v506 = [a2 data];
          [v506 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v256) = LODWORD(v524[0]);
        [a1 setTriggerExplicitTDSRSatScore:v256];
        goto LABEL_510;
      case 0x1Cu:
        LODWORD(v524[0]) = 0;
        v318 = [a2 position] + 4;
        if (v318 >= [a2 position] && (v319 = objc_msgSend(a2, "position") + 4, v319 <= objc_msgSend(a2, "length")))
        {
          v514 = [a2 data];
          [v514 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v320) = LODWORD(v524[0]);
        [a1 setShadowMicScore:v320];
        goto LABEL_510;
      case 0x1Du:
        LODWORD(v524[0]) = 0;
        v282 = [a2 position] + 4;
        if (v282 >= [a2 position] && (v283 = objc_msgSend(a2, "position") + 4, v283 <= objc_msgSend(a2, "length")))
        {
          v511 = [a2 data];
          [v511 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v284) = LODWORD(v524[0]);
        [a1 setShadowMicScoreThresholdForVAD:v284];
        goto LABEL_510;
      case 0x1Eu:
        LODWORD(v524[0]) = 0;
        v379 = [a2 position] + 4;
        if (v379 >= [a2 position] && (v380 = objc_msgSend(a2, "position") + 4, v380 <= objc_msgSend(a2, "length")))
        {
          v518 = [a2 data];
          [v518 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v381) = LODWORD(v524[0]);
        [a1 setRemoteMicVADScore:v381];
        goto LABEL_510;
      case 0x1Fu:
        LODWORD(v524[0]) = 0;
        v208 = [a2 position] + 4;
        if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 4, v209 <= objc_msgSend(a2, "length")))
        {
          v500 = [a2 data];
          [v500 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v210) = LODWORD(v524[0]);
        [a1 setRemoteMicVADThreshold:v210];
        goto LABEL_510;
      case 0x20u:
        LODWORD(v524[0]) = 0;
        v348 = [a2 position] + 4;
        if (v348 >= [a2 position] && (v349 = objc_msgSend(a2, "position") + 4, v349 <= objc_msgSend(a2, "length")))
        {
          v517 = [a2 data];
          [v517 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v350) = LODWORD(v524[0]);
        [a1 setRemoteMicVADMyriadThreshold:v350];
        goto LABEL_510;
      case 0x21u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (LOBYTE(v524[0]) & 0x7F) << v139;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v145 = 0;
            goto LABEL_678;
          }
        }

        if ([a2 hasError])
        {
          v145 = 0;
        }

        else
        {
          v145 = v141;
        }

LABEL_678:
        [a1 setEnhancedCarplayTriggerMode:v145];
        goto LABEL_510;
      case 0x22u:
        v201 = 0;
        v202 = 0;
        v203 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v204 = [a2 position] + 1;
          if (v204 >= [a2 position] && (v205 = objc_msgSend(a2, "position") + 1, v205 <= objc_msgSend(a2, "length")))
          {
            v206 = [a2 data];
            [v206 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v203 |= (LOBYTE(v524[0]) & 0x7F) << v201;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v201 += 7;
          v12 = v202++ >= 9;
          if (v12)
          {
            v207 = 0;
            goto LABEL_708;
          }
        }

        if ([a2 hasError])
        {
          v207 = 0;
        }

        else
        {
          v207 = v203;
        }

LABEL_708:
        [a1 setTriggerStartSampleCount:v207];
        goto LABEL_510;
      case 0x23u:
        v153 = 0;
        v154 = 0;
        v155 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v156 = [a2 position] + 1;
          if (v156 >= [a2 position] && (v157 = objc_msgSend(a2, "position") + 1, v157 <= objc_msgSend(a2, "length")))
          {
            v158 = [a2 data];
            [v158 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v155 |= (LOBYTE(v524[0]) & 0x7F) << v153;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v153 += 7;
          v12 = v154++ >= 9;
          if (v12)
          {
            v159 = 0;
            goto LABEL_686;
          }
        }

        if ([a2 hasError])
        {
          v159 = 0;
        }

        else
        {
          v159 = v155;
        }

LABEL_686:
        [a1 setClientStartSampleCount:v159];
        goto LABEL_510;
      case 0x24u:
        v238 = 0;
        v239 = 0;
        v240 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v241 = [a2 position] + 1;
          if (v241 >= [a2 position] && (v242 = objc_msgSend(a2, "position") + 1, v242 <= objc_msgSend(a2, "length")))
          {
            v243 = [a2 data];
            [v243 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v240 |= (LOBYTE(v524[0]) & 0x7F) << v238;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v238 += 7;
          v12 = v239++ >= 9;
          if (v12)
          {
            v244 = 0;
            goto LABEL_722;
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

LABEL_722:
        [a1 setTriggerEndSampleCount:v244];
        goto LABEL_510;
      case 0x25u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (LOBYTE(v524[0]) & 0x7F) << v146;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v12 = v147++ >= 9;
          if (v12)
          {
            v152 = 0;
            goto LABEL_682;
          }
        }

        if ([a2 hasError])
        {
          v152 = 0;
        }

        else
        {
          v152 = v148;
        }

LABEL_682:
        [a1 setTriggerFireSampleCount:v152];
        goto LABEL_510;
      case 0x26u:
        v396 = 0;
        v397 = 0;
        v398 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v399 = [a2 position] + 1;
          if (v399 >= [a2 position] && (v400 = objc_msgSend(a2, "position") + 1, v400 <= objc_msgSend(a2, "length")))
          {
            v401 = [a2 data];
            [v401 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v398 |= (LOBYTE(v524[0]) & 0x7F) << v396;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v396 += 7;
          v12 = v397++ >= 9;
          if (v12)
          {
            v402 = 0;
            goto LABEL_782;
          }
        }

        if ([a2 hasError])
        {
          v402 = 0;
        }

        else
        {
          v402 = v398;
        }

LABEL_782:
        [a1 setTriggerStartNs:v402];
        goto LABEL_510;
      case 0x27u:
        v389 = 0;
        v390 = 0;
        v391 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v392 = [a2 position] + 1;
          if (v392 >= [a2 position] && (v393 = objc_msgSend(a2, "position") + 1, v393 <= objc_msgSend(a2, "length")))
          {
            v394 = [a2 data];
            [v394 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v391 |= (LOBYTE(v524[0]) & 0x7F) << v389;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v389 += 7;
          v12 = v390++ >= 9;
          if (v12)
          {
            v395 = 0;
            goto LABEL_778;
          }
        }

        if ([a2 hasError])
        {
          v395 = 0;
        }

        else
        {
          v395 = v391;
        }

LABEL_778:
        [a1 setTriggerEndNs:v395];
        goto LABEL_510;
      case 0x28u:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            v189 = [a2 data];
            [v189 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (LOBYTE(v524[0]) & 0x7F) << v184;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v12 = v185++ >= 9;
          if (v12)
          {
            v190 = 0;
            goto LABEL_700;
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

LABEL_700:
        [a1 setTriggerFireNs:v190];
        goto LABEL_510;
      case 0x29u:
        v211 = 0;
        v212 = 0;
        v213 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v214 = [a2 position] + 1;
          if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
          {
            v216 = [a2 data];
            [v216 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v213 |= (LOBYTE(v524[0]) & 0x7F) << v211;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          v12 = v212++ >= 9;
          if (v12)
          {
            v217 = 0;
            goto LABEL_712;
          }
        }

        if ([a2 hasError])
        {
          v217 = 0;
        }

        else
        {
          v217 = v213;
        }

LABEL_712:
        [a1 setExtraSamplesAtStart:v217];
        goto LABEL_510;
      case 0x2Au:
        v270 = 0;
        v271 = 0;
        v272 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v273 = [a2 position] + 1;
          if (v273 >= [a2 position] && (v274 = objc_msgSend(a2, "position") + 1, v274 <= objc_msgSend(a2, "length")))
          {
            v275 = [a2 data];
            [v275 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v272 |= (LOBYTE(v524[0]) & 0x7F) << v270;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v270 += 7;
          v12 = v271++ >= 9;
          if (v12)
          {
            v276 = 0;
            goto LABEL_730;
          }
        }

        if ([a2 hasError])
        {
          v276 = 0;
        }

        else
        {
          v276 = v272;
        }

LABEL_730:
        [a1 setAnalyzerPrependingSamples:v276];
        goto LABEL_510;
      case 0x2Bu:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (LOBYTE(v524[0]) & 0x7F) << v218;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v12 = v219++ >= 9;
          if (v12)
          {
            v224 = 0;
            goto LABEL_716;
          }
        }

        if ([a2 hasError])
        {
          v224 = 0;
        }

        else
        {
          v224 = v220;
        }

LABEL_716:
        [a1 setAnalyzerTrailingSamples:v224];
        goto LABEL_510;
      case 0x2Cu:
        v417 = 0;
        v418 = 0;
        v419 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v420 = [a2 position] + 1;
          if (v420 >= [a2 position] && (v421 = objc_msgSend(a2, "position") + 1, v421 <= objc_msgSend(a2, "length")))
          {
            v422 = [a2 data];
            [v422 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v419 |= (LOBYTE(v524[0]) & 0x7F) << v417;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v417 += 7;
          v12 = v418++ >= 9;
          if (v12)
          {
            v423 = 0;
            goto LABEL_790;
          }
        }

        v423 = (v419 != 0) & ~[a2 hasError];
LABEL_790:
        [a1 setIsTriggerEvent:v423];
        goto LABEL_510;
      case 0x2Du:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v163 = [a2 position] + 1;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
          {
            v165 = [a2 data];
            [v165 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v162 |= (LOBYTE(v524[0]) & 0x7F) << v160;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v12 = v161++ >= 9;
          if (v12)
          {
            v166 = 0;
            goto LABEL_690;
          }
        }

        if ([a2 hasError])
        {
          v166 = 0;
        }

        else
        {
          v166 = v162;
        }

LABEL_690:
        [a1 setTotalSampleCount:v166];
        goto LABEL_510;
      case 0x2Eu:
        LODWORD(v524[0]) = 0;
        v321 = [a2 position] + 4;
        if (v321 >= [a2 position] && (v322 = objc_msgSend(a2, "position") + 4, v322 <= objc_msgSend(a2, "length")))
        {
          v515 = [a2 data];
          [v515 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v323) = LODWORD(v524[0]);
        [a1 setTriggerScore:v323];
        goto LABEL_510;
      case 0x2Fu:
        v410 = 0;
        v411 = 0;
        v412 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v413 = [a2 position] + 1;
          if (v413 >= [a2 position] && (v414 = objc_msgSend(a2, "position") + 1, v414 <= objc_msgSend(a2, "length")))
          {
            v415 = [a2 data];
            [v415 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v412 |= (LOBYTE(v524[0]) & 0x7F) << v410;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v410 += 7;
          v12 = v411++ >= 9;
          if (v12)
          {
            v416 = 0;
            goto LABEL_788;
          }
        }

        v416 = (v412 != 0) & ~[a2 hasError];
LABEL_788:
        [a1 setIsMaximized:v416];
        goto LABEL_510;
      case 0x30u:
        LODWORD(v524[0]) = 0;
        v115 = [a2 position] + 4;
        if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 4, v116 <= objc_msgSend(a2, "length")))
        {
          v497 = [a2 data];
          [v497 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v117) = LODWORD(v524[0]);
        [a1 setEffectiveThreshold:v117];
        goto LABEL_510;
      case 0x31u:
        LODWORD(v524[0]) = 0;
        v279 = [a2 position] + 4;
        if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 4, v280 <= objc_msgSend(a2, "length")))
        {
          v510 = [a2 data];
          [v510 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v281) = LODWORD(v524[0]);
        [a1 setRecognizerScore:v281];
        goto LABEL_510;
      case 0x32u:
        LODWORD(v524[0]) = 0;
        v112 = [a2 position] + 4;
        if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 4, v113 <= objc_msgSend(a2, "length")))
        {
          v496 = [a2 data];
          [v496 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v114) = LODWORD(v524[0]);
        [a1 setRecognizerThresholdOffset:v114];
        goto LABEL_510;
      case 0x33u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (LOBYTE(v524[0]) & 0x7F) << v91;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_658;
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

LABEL_658:
        [a1 setRecognizerWaitTimeInNs:v97];
        goto LABEL_510;
      case 0x34u:
        LODWORD(v524[0]) = 0;
        v198 = [a2 position] + 4;
        if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 4, v199 <= objc_msgSend(a2, "length")))
        {
          v499 = [a2 data];
          [v499 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v200) = LODWORD(v524[0]);
        [a1 setRecognizerScaleFactor:v200];
        goto LABEL_510;
      case 0x35u:
        LODWORD(v524[0]) = 0;
        v245 = [a2 position] + 4;
        if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 4, v246 <= objc_msgSend(a2, "length")))
        {
          v503 = [a2 data];
          [v503 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v247) = LODWORD(v524[0]);
        [a1 setThreshold:v247];
        goto LABEL_510;
      case 0x37u:
        v341 = 0;
        v342 = 0;
        v343 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v344 = [a2 position] + 1;
          if (v344 >= [a2 position] && (v345 = objc_msgSend(a2, "position") + 1, v345 <= objc_msgSend(a2, "length")))
          {
            v346 = [a2 data];
            [v346 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v343 |= (LOBYTE(v524[0]) & 0x7F) << v341;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v341 += 7;
          v12 = v342++ >= 9;
          if (v12)
          {
            v347 = 0;
            goto LABEL_760;
          }
        }

        if ([a2 hasError])
        {
          v347 = 0;
        }

        else
        {
          v347 = v343;
        }

LABEL_760:
        [a1 setTriggerStartTimeOffsetInNs:v347];
        goto LABEL_510;
      case 0x38u:
        v439 = 0;
        v440 = 0;
        v441 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v442 = [a2 position] + 1;
          if (v442 >= [a2 position] && (v443 = objc_msgSend(a2, "position") + 1, v443 <= objc_msgSend(a2, "length")))
          {
            v444 = [a2 data];
            [v444 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v441 |= (LOBYTE(v524[0]) & 0x7F) << v439;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v439 += 7;
          v12 = v440++ >= 9;
          if (v12)
          {
            v445 = 0;
            goto LABEL_796;
          }
        }

        if ([a2 hasError])
        {
          v445 = 0;
        }

        else
        {
          v445 = v441;
        }

LABEL_796:
        [a1 setTriggerEndTimeOffsetInNs:v445];
        goto LABEL_510;
      case 0x39u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (LOBYTE(v524[0]) & 0x7F) << v125;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v12 = v126++ >= 9;
          if (v12)
          {
            v131 = 0;
            goto LABEL_672;
          }
        }

        if ([a2 hasError])
        {
          v131 = 0;
        }

        else
        {
          v131 = v127;
        }

LABEL_672:
        [a1 setTriggerFireTimeOffsetInNs:v131];
        goto LABEL_510;
      case 0x3Au:
        v524[0] = 0.0;
        v277 = [a2 position] + 8;
        if (v277 >= [a2 position] && (v278 = objc_msgSend(a2, "position") + 8, v278 <= objc_msgSend(a2, "length")))
        {
          v509 = [a2 data];
          [v509 getBytes:v524 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setTriggerStartTime:v524[0]];
        goto LABEL_510;
      case 0x3Bu:
        v524[0] = 0.0;
        v299 = [a2 position] + 8;
        if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 8, v300 <= objc_msgSend(a2, "length")))
        {
          v512 = [a2 data];
          [v512 getBytes:v524 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setTriggerEndTime:v524[0]];
        goto LABEL_510;
      case 0x3Cu:
        v524[0] = 0.0;
        v424 = [a2 position] + 8;
        if (v424 >= [a2 position] && (v425 = objc_msgSend(a2, "position") + 8, v425 <= objc_msgSend(a2, "length")))
        {
          v519 = [a2 data];
          [v519 getBytes:v524 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setTriggerFiredTime:v524[0]];
        goto LABEL_510;
      case 0x3Du:
        v285 = 0;
        v286 = 0;
        v287 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v288 = [a2 position] + 1;
          if (v288 >= [a2 position] && (v289 = objc_msgSend(a2, "position") + 1, v289 <= objc_msgSend(a2, "length")))
          {
            v290 = [a2 data];
            [v290 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v287 |= (LOBYTE(v524[0]) & 0x7F) << v285;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v285 += 7;
          v12 = v286++ >= 9;
          if (v12)
          {
            v291 = 0;
            goto LABEL_738;
          }
        }

        if ([a2 hasError])
        {
          v291 = 0;
        }

        else
        {
          v291 = v287;
        }

LABEL_738:
        [a1 setHardwareSamplerate:v291];
        goto LABEL_510;
      case 0x3Eu:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (LOBYTE(v524[0]) & 0x7F) << v98;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_660;
          }
        }

        v104 = (v100 != 0) & ~[a2 hasError];
LABEL_660:
        [a1 setIsContinuous:v104];
        goto LABEL_510;
      case 0x3Fu:
        LODWORD(v524[0]) = 0;
        v74 = [a2 position] + 4;
        if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 4, v75 <= objc_msgSend(a2, "length")))
        {
          v495 = [a2 data];
          [v495 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v76) = LODWORD(v524[0]);
        [a1 setTriggerDurationInNs:v76];
        goto LABEL_510;
      case 0x40u:
        v446 = 0;
        v447 = 0;
        v448 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v449 = [a2 position] + 1;
          if (v449 >= [a2 position] && (v450 = objc_msgSend(a2, "position") + 1, v450 <= objc_msgSend(a2, "length")))
          {
            v451 = [a2 data];
            [v451 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v448 |= (LOBYTE(v524[0]) & 0x7F) << v446;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v446 += 7;
          v12 = v447++ >= 9;
          if (v12)
          {
            v452 = 0;
            goto LABEL_800;
          }
        }

        if ([a2 hasError])
        {
          v452 = 0;
        }

        else
        {
          v452 = v448;
        }

LABEL_800:
        [a1 setTotalSamplesAtTriggerStart:v452];
        goto LABEL_510;
      case 0x41u:
        v403 = 0;
        v404 = 0;
        v405 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v406 = [a2 position] + 1;
          if (v406 >= [a2 position] && (v407 = objc_msgSend(a2, "position") + 1, v407 <= objc_msgSend(a2, "length")))
          {
            v408 = [a2 data];
            [v408 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v405 |= (LOBYTE(v524[0]) & 0x7F) << v403;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v403 += 7;
          v12 = v404++ >= 9;
          if (v12)
          {
            v409 = 0;
            goto LABEL_786;
          }
        }

        if ([a2 hasError])
        {
          v409 = 0;
        }

        else
        {
          v409 = v405;
        }

LABEL_786:
        [a1 setTotalSamplesAtTriggerEnd:v409];
        goto LABEL_510;
      case 0x42u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (LOBYTE(v524[0]) & 0x7F) << v84;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v90 = 0;
            goto LABEL_654;
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

LABEL_654:
        [a1 setTotalSamplesAtEndOfCapture:v90];
        goto LABEL_510;
      case 0x44u:
        v57 = PBReaderReadString();
        [a1 setConfigVersion:v57];
        goto LABEL_509;
      case 0x45u:
        v57 = PBReaderReadString();
        [a1 setConfigPath:v57];
        goto LABEL_509;
      case 0x46u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (LOBYTE(v524[0]) & 0x7F) << v77;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_650;
          }
        }

        v83 = (v79 != 0) & ~[a2 hasError];
LABEL_650:
        [a1 setIsSecondChance:v83];
        goto LABEL_510;
      case 0x47u:
        v382 = 0;
        v383 = 0;
        v384 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v385 = [a2 position] + 1;
          if (v385 >= [a2 position] && (v386 = objc_msgSend(a2, "position") + 1, v386 <= objc_msgSend(a2, "length")))
          {
            v387 = [a2 data];
            [v387 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v384 |= (LOBYTE(v524[0]) & 0x7F) << v382;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v382 += 7;
          v12 = v383++ >= 9;
          if (v12)
          {
            v388 = 0;
            goto LABEL_774;
          }
        }

        v388 = (v384 != 0) & ~[a2 hasError];
LABEL_774:
        [a1 setDeviceHandheld:v388];
        goto LABEL_510;
      case 0x48u:
        v358 = 0;
        v359 = 0;
        v360 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v361 = [a2 position] + 1;
          if (v361 >= [a2 position] && (v362 = objc_msgSend(a2, "position") + 1, v362 <= objc_msgSend(a2, "length")))
          {
            v363 = [a2 data];
            [v363 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v360 |= (LOBYTE(v524[0]) & 0x7F) << v358;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v358 += 7;
          v12 = v359++ >= 9;
          if (v12)
          {
            v364 = 0;
            goto LABEL_766;
          }
        }

        if ([a2 hasError])
        {
          v364 = 0;
        }

        else
        {
          v364 = v360;
        }

LABEL_766:
        [a1 setActiveChannel:v364];
        goto LABEL_510;
      case 0x49u:
        v470 = 0;
        v471 = 0;
        v472 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v473 = [a2 position] + 1;
          if (v473 >= [a2 position] && (v474 = objc_msgSend(a2, "position") + 1, v474 <= objc_msgSend(a2, "length")))
          {
            v475 = [a2 data];
            [v475 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v472 |= (LOBYTE(v524[0]) & 0x7F) << v470;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v470 += 7;
          v12 = v471++ >= 9;
          if (v12)
          {
            v476 = 0;
            goto LABEL_812;
          }
        }

        if ([a2 hasError])
        {
          v476 = 0;
        }

        else
        {
          v476 = v472;
        }

LABEL_812:
        [a1 setTwoShotAudibleFeedbackDelayInNs:v476];
        goto LABEL_510;
      case 0x4Au:
        LODWORD(v524[0]) = 0;
        v433 = [a2 position] + 4;
        if (v433 >= [a2 position] && (v434 = objc_msgSend(a2, "position") + 4, v434 <= objc_msgSend(a2, "length")))
        {
          v520 = [a2 data];
          [v520 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v435) = LODWORD(v524[0]);
        [a1 setCumulativeUptimeInSec:v435];
        goto LABEL_510;
      case 0x4Bu:
        LODWORD(v524[0]) = 0;
        v460 = [a2 position] + 4;
        if (v460 >= [a2 position] && (v461 = objc_msgSend(a2, "position") + 4, v461 <= objc_msgSend(a2, "length")))
        {
          v522 = [a2 data];
          [v522 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v462) = LODWORD(v524[0]);
        [a1 setCumulativeDowntimeInSec:v462];
        goto LABEL_510;
      case 0x4Eu:
        v365 = 0;
        v366 = 0;
        v367 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v368 = [a2 position] + 1;
          if (v368 >= [a2 position] && (v369 = objc_msgSend(a2, "position") + 1, v369 <= objc_msgSend(a2, "length")))
          {
            v370 = [a2 data];
            [v370 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v367 |= (LOBYTE(v524[0]) & 0x7F) << v365;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v365 += 7;
          v12 = v366++ >= 9;
          if (v12)
          {
            v371 = 0;
            goto LABEL_770;
          }
        }

        if ([a2 hasError])
        {
          v371 = 0;
        }

        else
        {
          v371 = v367;
        }

LABEL_770:
        [a1 setHostPowerStateAtTrigger:v371];
        goto LABEL_510;
      case 0x4Fu:
        v372 = 0;
        v373 = 0;
        v374 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v375 = [a2 position] + 1;
          if (v375 >= [a2 position] && (v376 = objc_msgSend(a2, "position") + 1, v376 <= objc_msgSend(a2, "length")))
          {
            v377 = [a2 data];
            [v377 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v374 |= (LOBYTE(v524[0]) & 0x7F) << v372;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v372 += 7;
          v12 = v373++ >= 9;
          if (v12)
          {
            v378 = 0;
            goto LABEL_772;
          }
        }

        v378 = (v374 != 0) & ~[a2 hasError];
LABEL_772:
        [a1 setIsMediaPlaying:v378];
        goto LABEL_510;
      case 0x50u:
        LODWORD(v524[0]) = 0;
        v167 = [a2 position] + 4;
        if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 4, v168 <= objc_msgSend(a2, "length")))
        {
          v498 = [a2 data];
          [v498 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v169) = LODWORD(v524[0]);
        [a1 setMediaVolume:v169];
        goto LABEL_510;
      case 0x51u:
        v57 = objc_alloc_init(SISchemaUUID);
        v524[0] = 0.0;
        v524[1] = 0.0;
        if (PBReaderPlaceMark() && (SISchemaUUIDReadFrom(v57, a2) & 1) != 0)
        {
          PBReaderRecallMark();
          [a1 setAudioProviderUUID:v57];
LABEL_509:

LABEL_510:
          v4 = a2;
          continue;
        }

        return 0;
      case 0x52u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (LOBYTE(v524[0]) & 0x7F) << v50;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v56 = 0;
            goto LABEL_642;
          }
        }

        v56 = (v52 != 0) & ~[a2 hasError];
LABEL_642:
        [a1 setOnBatteryPower:v56];
        goto LABEL_510;
      case 0x53u:
        v426 = 0;
        v427 = 0;
        v428 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v429 = [a2 position] + 1;
          if (v429 >= [a2 position] && (v430 = objc_msgSend(a2, "position") + 1, v430 <= objc_msgSend(a2, "length")))
          {
            v431 = [a2 data];
            [v431 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v428 |= (LOBYTE(v524[0]) & 0x7F) << v426;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v426 += 7;
          v12 = v427++ >= 9;
          if (v12)
          {
            v432 = 0;
            goto LABEL_792;
          }
        }

        v432 = (v428 != 0) & ~[a2 hasError];
LABEL_792:
        [a1 setDidWakeAP:v432];
        goto LABEL_510;
      case 0x54u:
        LODWORD(v524[0]) = 0;
        v436 = [a2 position] + 4;
        if (v436 >= [a2 position] && (v437 = objc_msgSend(a2, "position") + 4, v437 <= objc_msgSend(a2, "length")))
        {
          v521 = [a2 data];
          [v521 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v438) = LODWORD(v524[0]);
        [a1 setUptimeInSec:v438];
        goto LABEL_510;
      case 0x55u:
        LODWORD(v524[0]) = 0;
        v235 = [a2 position] + 4;
        if (v235 >= [a2 position] && (v236 = objc_msgSend(a2, "position") + 4, v236 <= objc_msgSend(a2, "length")))
        {
          v502 = [a2 data];
          [v502 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v237) = LODWORD(v524[0]);
        [a1 setDowntimeInSec:v237];
        goto LABEL_510;
      case 0x56u:
        v463 = 0;
        v464 = 0;
        v465 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v466 = [a2 position] + 1;
          if (v466 >= [a2 position] && (v467 = objc_msgSend(a2, "position") + 1, v467 <= objc_msgSend(a2, "length")))
          {
            v468 = [a2 data];
            [v468 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v465 |= (LOBYTE(v524[0]) & 0x7F) << v463;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v463 += 7;
          v12 = v464++ >= 9;
          if (v12)
          {
            v469 = 0;
            goto LABEL_808;
          }
        }

        if ([a2 hasError])
        {
          v469 = 0;
        }

        else
        {
          v469 = v465;
        }

LABEL_808:
        [a1 setLastConsecutiveVTRejects:v469];
        goto LABEL_510;
      case 0x58u:
        v57 = PBReaderReadString();
        [a1 setCaptureFilePath:v57];
        goto LABEL_509;
      case 0x59u:
        v57 = PBReaderReadString();
        [a1 setConfigDataHash:v57];
        goto LABEL_509;
      case 0x5Au:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v134 |= (LOBYTE(v524[0]) & 0x7F) << v132;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v12 = v133++ >= 9;
          if (v12)
          {
            v138 = 0;
            goto LABEL_674;
          }
        }

        v138 = (v134 != 0) & ~[a2 hasError];
LABEL_674:
        [a1 setSiriIsActiveOrOtherAssertion:v138];
        goto LABEL_510;
      case 0x5Bu:
        v311 = 0;
        v312 = 0;
        v313 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v314 = [a2 position] + 1;
          if (v314 >= [a2 position] && (v315 = objc_msgSend(a2, "position") + 1, v315 <= objc_msgSend(a2, "length")))
          {
            v316 = [a2 data];
            [v316 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v313 |= (LOBYTE(v524[0]) & 0x7F) << v311;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v311 += 7;
          v12 = v312++ >= 9;
          if (v12)
          {
            v317 = 0;
            goto LABEL_748;
          }
        }

        v317 = (v313 != 0) & ~[a2 hasError];
LABEL_748:
        [a1 setDidAudioStall:v317];
        goto LABEL_510;
      case 0x5Cu:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (LOBYTE(v524[0]) & 0x7F) << v67;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            v73 = 0;
            goto LABEL_648;
          }
        }

        v73 = (v69 != 0) & ~[a2 hasError];
LABEL_648:
        [a1 setIsBargeIn:v73];
        goto LABEL_510;
      case 0x5Du:
        v477 = 0;
        v478 = 0;
        v479 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v480 = [a2 position] + 1;
          if (v480 >= [a2 position] && (v481 = objc_msgSend(a2, "position") + 1, v481 <= objc_msgSend(a2, "length")))
          {
            v482 = [a2 data];
            [v482 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v479 |= (LOBYTE(v524[0]) & 0x7F) << v477;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v477 += 7;
          v12 = v478++ >= 9;
          if (v12)
          {
            v483 = 0;
            goto LABEL_814;
          }
        }

        v483 = (v479 != 0) & ~[a2 hasError];
LABEL_814:
        [a1 setIsWakeFromSleep:v483];
        goto LABEL_510;
      case 0x5Eu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (LOBYTE(v524[0]) & 0x7F) << v36;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_636;
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

LABEL_636:
        [a1 setSecondPassAssetQueryStartTimeInNs:v42];
        goto LABEL_510;
      case 0x5Fu:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v194 = [a2 position] + 1;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
          {
            v196 = [a2 data];
            [v196 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v193 |= (LOBYTE(v524[0]) & 0x7F) << v191;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v12 = v192++ >= 9;
          if (v12)
          {
            v197 = 0;
            goto LABEL_704;
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

LABEL_704:
        [a1 setSecondPassAssetQueryCompleteTimeInNs:v197];
        goto LABEL_510;
      case 0x60u:
        v487 = 0;
        v488 = 0;
        v489 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v490 = [a2 position] + 1;
          if (v490 >= [a2 position] && (v491 = objc_msgSend(a2, "position") + 1, v491 <= objc_msgSend(a2, "length")))
          {
            v492 = [a2 data];
            [v492 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v489 |= (LOBYTE(v524[0]) & 0x7F) << v487;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v487 += 7;
          v12 = v488++ >= 9;
          if (v12)
          {
            v493 = 0;
            goto LABEL_818;
          }
        }

        if ([a2 hasError])
        {
          v493 = 0;
        }

        else
        {
          v493 = v489;
        }

LABEL_818:
        [a1 setSecondPassAssetLoadStartTimeInNs:v493];
        goto LABEL_510;
      case 0x61u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (LOBYTE(v524[0]) & 0x7F) << v43;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_640;
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

LABEL_640:
        [a1 setSecondPassAssetLoadCompleteTimeInNs:v49];
        goto LABEL_510;
      case 0x62u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (LOBYTE(v524[0]) & 0x7F) << v118;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            v124 = 0;
            goto LABEL_668;
          }
        }

        if ([a2 hasError])
        {
          v124 = 0;
        }

        else
        {
          v124 = v120;
        }

LABEL_668:
        [a1 setSecondPassAudioStreamStartTimeInNs:v124];
        goto LABEL_510;
      case 0x63u:
        v324 = 0;
        v325 = 0;
        v326 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v327 = [a2 position] + 1;
          if (v327 >= [a2 position] && (v328 = objc_msgSend(a2, "position") + 1, v328 <= objc_msgSend(a2, "length")))
          {
            v329 = [a2 data];
            [v329 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v326 |= (LOBYTE(v524[0]) & 0x7F) << v324;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v324 += 7;
          v12 = v325++ >= 9;
          if (v12)
          {
            v330 = 0;
            goto LABEL_752;
          }
        }

        if ([a2 hasError])
        {
          v330 = 0;
        }

        else
        {
          v330 = v326;
        }

LABEL_752:
        [a1 setSecondPassAudioStreamReadyTimeInNs:v330];
        goto LABEL_510;
      case 0x64u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (LOBYTE(v524[0]) & 0x7F) << v58;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v64 = 0;
            goto LABEL_646;
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

LABEL_646:
        [a1 setSecondPassFirstAudioPacketReceptionTimeInNs:v64];
        goto LABEL_510;
      case 0x65u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (LOBYTE(v524[0]) & 0x7F) << v105;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_664;
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

LABEL_664:
        [a1 setSecondPassLastAudioPacketReceptionTimeInNs:v111];
        goto LABEL_510;
      case 0x66u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (LOBYTE(v524[0]) & 0x7F) << v22;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_628;
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

LABEL_628:
        [a1 setSecondPassCheckerModelKeywordDetectionStartTimeInNs:v28];
        goto LABEL_510;
      case 0x67u:
        v453 = 0;
        v454 = 0;
        v455 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v456 = [a2 position] + 1;
          if (v456 >= [a2 position] && (v457 = objc_msgSend(a2, "position") + 1, v457 <= objc_msgSend(a2, "length")))
          {
            v458 = [a2 data];
            [v458 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v455 |= (LOBYTE(v524[0]) & 0x7F) << v453;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v453 += 7;
          v12 = v454++ >= 9;
          if (v12)
          {
            v459 = 0;
            goto LABEL_804;
          }
        }

        if ([a2 hasError])
        {
          v459 = 0;
        }

        else
        {
          v459 = v455;
        }

LABEL_804:
        [a1 setSecondPassCheckerModelKeywordDetectionEndTimeInNs:v459];
        goto LABEL_510;
      case 0x68u:
        v57 = PBReaderReadString();
        [a1 setTriggerPhrase:v57];
        goto LABEL_509;
      case 0x69u:
        v524[0] = 0.0;
        v65 = [a2 position] + 8;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
        {
          v494 = [a2 data];
          [v494 getBytes:v524 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setLastDisplayWakeTimeOffsetInNs:v524[0]];
        goto LABEL_510;
      case 0x6Au:
        v351 = 0;
        v352 = 0;
        v353 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v354 = [a2 position] + 1;
          if (v354 >= [a2 position] && (v355 = objc_msgSend(a2, "position") + 1, v355 <= objc_msgSend(a2, "length")))
          {
            v356 = [a2 data];
            [v356 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v353 |= (LOBYTE(v524[0]) & 0x7F) << v351;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v351 += 7;
          v12 = v352++ >= 9;
          if (v12)
          {
            v357 = 0;
            goto LABEL_762;
          }
        }

        v357 = (v353 != 0) & ~[a2 hasError];
LABEL_762:
        [a1 setIsHSJSTriggerFromAlwaysOnMicBuffer:v357];
        goto LABEL_510;
      case 0x6Bu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v524[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v524 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (LOBYTE(v524[0]) & 0x7F) << v29;
          if ((LOBYTE(v524[0]) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_632;
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

LABEL_632:
        [a1 setDisplayWakeTimeOffsetInNs:v35];
        goto LABEL_510;
      case 0x6Cu:
        LODWORD(v524[0]) = 0;
        v484 = [a2 position] + 4;
        if (v484 >= [a2 position] && (v485 = objc_msgSend(a2, "position") + 4, v485 <= objc_msgSend(a2, "length")))
        {
          v523 = [a2 data];
          [v523 getBytes:v524 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v486) = LODWORD(v524[0]);
        [a1 setNeptuneDetectionApiScore:v486];
        goto LABEL_510;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_510;
    }
  }
}

uint64_t MHSchemaMHVoiceTriggerFirstPassDailyMetadataReadFrom(void *a1, void *a2)
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
    if ((v13 >> 3) == 1)
    {
      v22 = PBReaderReadString();
      [a1 setConfigVersion:v22];
      goto LABEL_32;
    }

    if (v14 == 3)
    {
      v22 = PBReaderReadString();
      [a1 setMitigationAssetVersion:v22];
LABEL_32:

      continue;
    }

    if (v14 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v25 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v25 & 0x7F) << v15;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_38;
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

LABEL_38:
      [a1 setHardwareSampleRate:v21];
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

uint64_t MHSchemaMHVoiceTriggerFirstPassStatisticReadFrom(void *a1, void *a2)
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
      LOBYTE(v88) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v88 & 0x7F) << v6;
      if ((v88 & 0x80) == 0)
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
        v88 = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v16) = v88;
        [a1 setFirstPassPeakScoreHS:v16];
        continue;
      case 2u:
        v88 = 0;
        v52 = [a2 position] + 4;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 4, v53 <= objc_msgSend(a2, "length")))
        {
          v83 = [a2 data];
          [v83 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v54) = v88;
        [a1 setFirstPassPeakScoreJS:v54];
        continue;
      case 3u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v88) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v88 & 0x7F) << v36;
          if ((v88 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_94;
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

LABEL_94:
        [a1 setFirstPassTriggerSource:v42];
        continue;
      case 4u:
        v88 = 0;
        v46 = [a2 position] + 4;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 4, v47 <= objc_msgSend(a2, "length")))
        {
          v80 = [a2 data];
          [v80 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v48) = v88;
        [a1 setRecognizerScoreHS:v48];
        continue;
      case 5u:
        v88 = 0;
        v23 = [a2 position] + 4;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 4, v24 <= objc_msgSend(a2, "length")))
        {
          v77 = [a2 data];
          [v77 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v25) = v88;
        [a1 setRecognizerScoreJS:v25];
        continue;
      case 6u:
        v88 = 0;
        v55 = [a2 position] + 4;
        if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 4, v56 <= objc_msgSend(a2, "length")))
        {
          v84 = [a2 data];
          [v84 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v57) = v88;
        [a1 setTriggerScoreHS:v57];
        continue;
      case 7u:
        v88 = 0;
        v61 = [a2 position] + 4;
        if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 4, v62 <= objc_msgSend(a2, "length")))
        {
          v86 = [a2 data];
          [v86 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v63) = v88;
        [a1 setTriggerScoreJS:v63];
        continue;
      case 8u:
        v88 = 0;
        v49 = [a2 position] + 4;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 4, v50 <= objc_msgSend(a2, "length")))
        {
          v81 = [a2 data];
          [v81 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v51) = v88;
        [a1 setMitigationScore:v51];
        continue;
      case 9u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        while (1)
        {
          LOBYTE(v88) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v88 & 0x7F) << v67;
          if ((v88 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            v73 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v69;
        }

LABEL_98:
        [a1 setInvocationTypeId:v73];
        continue;
      case 0xAu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        break;
      case 0xBu:
        v88 = 0;
        v64 = [a2 position] + 4;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 4, v65 <= objc_msgSend(a2, "length")))
        {
          v87 = [a2 data];
          [v87 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v66) = v88;
        [a1 setRepetitionSimilarityScore:v66];
        continue;
      case 0xCu:
        v88 = 0;
        v20 = [a2 position] + 4;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
        {
          v76 = [a2 data];
          [v76 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v22) = v88;
        [a1 setTdSpeakerRecognizerCombinedScore:v22];
        continue;
      case 0xDu:
        v88 = 0;
        v26 = [a2 position] + 4;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 4, v27 <= objc_msgSend(a2, "length")))
        {
          v78 = [a2 data];
          [v78 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v28) = v88;
        [a1 setKeywordThresholdHS:v28];
        continue;
      case 0xEu:
        v88 = 0;
        v58 = [a2 position] + 4;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 4, v59 <= objc_msgSend(a2, "length")))
        {
          v85 = [a2 data];
          [v85 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v60) = v88;
        [a1 setKeywordThresholdJS:v60];
        continue;
      case 0xFu:
        v88 = 0;
        v17 = [a2 position] + 4;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
        {
          v75 = [a2 data];
          [v75 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v19) = v88;
        [a1 setTdSpeakerRecognizerCombinedThresholdHS:v19];
        continue;
      case 0x10u:
        v88 = 0;
        v43 = [a2 position] + 4;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 4, v44 <= objc_msgSend(a2, "length")))
        {
          v79 = [a2 data];
          [v79 getBytes:&v88 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v45) = v88;
        [a1 setTdSpeakerRecognizerCombinedThresholdJS:v45];
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
      LOBYTE(v88) = 0;
      v32 = [a2 position] + 1;
      if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
      {
        v34 = [a2 data];
        [v34 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v31 |= (v88 & 0x7F) << v29;
      if ((v88 & 0x80) == 0)
      {
        break;
      }

      v29 += 7;
      v12 = v30++ >= 9;
      if (v12)
      {
        v35 = 0;
        goto LABEL_90;
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

LABEL_90:
    [a1 setSecondsSinceEpoch:v35];
  }

  return [a2 hasError] ^ 1;
}

uint64_t MHSchemaMHVoiceTriggerRejectDetectedReadFrom(void *a1, void *a2)
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
      LOBYTE(v85) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v85 & 0x7F) << v6;
      if ((v85 & 0x80) == 0)
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
          LOBYTE(v85) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v85 & 0x7F) << v14;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_107:
            [a1 setPhsRejectBeforeActivationCount:v20];
            goto LABEL_134;
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

        goto LABEL_107;
      case 2u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        while (1)
        {
          LOBYTE(v85) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v85 & 0x7F) << v50;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v56 = 0;
            goto LABEL_111;
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

LABEL_111:
        [a1 setCheckerHSRejectBeforeActivationCount:v56];
        continue;
      case 3u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        while (1)
        {
          LOBYTE(v85) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v85 & 0x7F) << v33;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v12 = v34++ >= 9;
          if (v12)
          {
            v39 = 0;
            goto LABEL_99;
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

LABEL_99:
        [a1 setCheckerJSRejectBeforeActivationCount:v39];
        continue;
      case 4u:
        v85 = 0;
        v40 = [a2 position] + 4;
        if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 4, v41 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:&v85 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v42) = v85;
        [a1 addPhsRejectBeforeActivationScores:v42];
        continue;
      case 5u:
        v85 = 0;
        v24 = [a2 position] + 4;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
        {
          v79 = [a2 data];
          [v79 getBytes:&v85 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v26) = v85;
        [a1 addCheckerHSRejectBeforeActivationScores:v26];
        continue;
      case 6u:
        v85 = 0;
        v57 = [a2 position] + 4;
        if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 4, v58 <= objc_msgSend(a2, "length")))
        {
          v83 = [a2 data];
          [v83 getBytes:&v85 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v59) = v85;
        [a1 addCheckerJSRejectBeforeActivationScores:v59];
        continue;
      case 7u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        while (1)
        {
          LOBYTE(v85) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v85 & 0x7F) << v61;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            v67 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v67 = 0;
        }

        else
        {
          v67 = v63;
        }

LABEL_115:
        [a1 addPhsRejectBeforeActivationTimeDiffInNs:v67];
        continue;
      case 8u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v85) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v85 & 0x7F) << v43;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_103;
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

LABEL_103:
        [a1 addCheckerHSRejectBeforeActivationTimeDiffInNs:v49];
        continue;
      case 9u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        break;
      case 0xAu:
        v85 = 0;
        v30 = [a2 position] + 4;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
        {
          v81 = [a2 data];
          [v81 getBytes:&v85 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v32) = v85;
        [a1 setPhsThreshold:v32];
        continue;
      case 0xBu:
        v85 = 0;
        v68 = [a2 position] + 4;
        if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 4, v69 <= objc_msgSend(a2, "length")))
        {
          v84 = [a2 data];
          [v84 getBytes:&v85 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v70) = v85;
        [a1 setPjsThreshold:v70];
        continue;
      case 0xCu:
        v85 = 0;
        v21 = [a2 position] + 4;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
        {
          v78 = [a2 data];
          [v78 getBytes:&v85 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v23) = v85;
        [a1 setCheckerHSThreshold:v23];
        continue;
      case 0xDu:
        v85 = 0;
        v27 = [a2 position] + 4;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
        {
          v80 = [a2 data];
          [v80 getBytes:&v85 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v29) = v85;
        [a1 setCheckerJSThreshold:v29];
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
      LOBYTE(v85) = 0;
      v74 = [a2 position] + 1;
      if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
      {
        v76 = [a2 data];
        [v76 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v73 |= (v85 & 0x7F) << v71;
      if ((v85 & 0x80) == 0)
      {
        break;
      }

      v71 += 7;
      v12 = v72++ >= 9;
      if (v12)
      {
        v77 = 0;
        goto LABEL_119;
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

LABEL_119:
    [a1 addCheckerJSRejectBeforeActivationTimeDiffInNs:v77];
LABEL_134:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MHSchemaMHVoiceTriggerRePromptedReadFrom(void *a1, void *a2)
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
    if ((v13 >> 3) == 1)
    {
      v22 = PBReaderReadString();
      [a1 setSiriSpeechID:v22];
      goto LABEL_32;
    }

    if (v14 == 3)
    {
      v22 = PBReaderReadString();
      [a1 setLastWhenRePrompted:v22];
LABEL_32:

      continue;
    }

    if (v14 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v25 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v25 & 0x7F) << v15;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_36;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_36:
      [a1 setIsRePrompted:v21];
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

uint64_t MHSchemaMHVoiceTriggerSecondPassCancelledReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(MHSchemaMHVoiceTriggerEventInfo);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MHSchemaMHVoiceTriggerEventInfoReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setVoiceTriggerEventInfo:v13];
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

uint64_t MHSchemaMHVoiceTriggerSecondPassRejectedReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(MHSchemaMHVoiceTriggerEventInfo);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !MHSchemaMHVoiceTriggerEventInfoReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setVoiceTriggerEventInfo:v20];
      }

      else if ((v12 >> 3) == 2)
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
        [a1 setReason:v19];
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

uint64_t MHSchemaMHVoiceTriggerSecondPassStartedReadFrom(void *a1, void *a2)
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
      LOBYTE(v106[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v106[0] & 0x7F) << v5;
      if ((v106[0] & 0x80) == 0)
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
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v106[0] & 0x7F) << v13;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_157:
            [a1 setFirstPassDetectedChannel:v19];
            goto LABEL_180;
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

        goto LABEL_157;
      case 2u:
        LODWORD(v106[0]) = 0;
        v69 = [a2 position] + 4;
        if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 4, v70 <= objc_msgSend(a2, "length")))
        {
          v101 = [a2 data];
          [v101 getBytes:v106 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v71) = v106[0];
        [a1 setFirstPassScore:v71];
        goto LABEL_180;
      case 3u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v106[0] & 0x7F) << v45;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v51 = 0;
            goto LABEL_145;
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

LABEL_145:
        [a1 setFirstPassOnsetChannel:v51];
        goto LABEL_180;
      case 4u:
        LODWORD(v106[0]) = 0;
        v59 = [a2 position] + 4;
        if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 4, v60 <= objc_msgSend(a2, "length")))
        {
          v100 = [a2 data];
          [v100 getBytes:v106 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v61) = v106[0];
        [a1 setFirstPassOnsetScore:v61];
        goto LABEL_180;
      case 5u:
        v34 = objc_alloc_init(MHSchemaFirstPassChannelSelectionScore);
        v106[0] = 0;
        v106[1] = 0;
        if (PBReaderPlaceMark() && MHSchemaFirstPassChannelSelectionScoreReadFrom(v34, a2))
        {
          PBReaderRecallMark();
          if (v34)
          {
            [a1 addChannelSelectionScores:v34];
          }

LABEL_180:
          v104 = [a2 position];
          if (v104 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 6u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v106[0] & 0x7F) << v72;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v78 = 0;
            goto LABEL_161;
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

LABEL_161:
        [a1 setFirstPassChannelSelectionDelayNs:v78];
        goto LABEL_180;
      case 7u:
        LODWORD(v106[0]) = 0;
        v82 = [a2 position] + 4;
        if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 4, v83 <= objc_msgSend(a2, "length")))
        {
          v103 = [a2 data];
          [v103 getBytes:v106 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v84) = v106[0];
        [a1 setFirstPassMasterChannelScoreBoost:v84];
        goto LABEL_180;
      case 8u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v106[0] & 0x7F) << v62;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v68 = 0;
            goto LABEL_153;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v64;
        }

LABEL_153:
        [a1 setFirstPassStartSampleCount:v68];
        goto LABEL_180;
      case 9u:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v106[0] & 0x7F) << v92;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
          if (v11)
          {
            v98 = 0;
            goto LABEL_169;
          }
        }

        if ([a2 hasError])
        {
          v98 = 0;
        }

        else
        {
          v98 = v94;
        }

LABEL_169:
        [a1 setFirstPassEndSampleCount:v98];
        goto LABEL_180;
      case 0xAu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v106[0] & 0x7F) << v38;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v44 = 0;
            goto LABEL_141;
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

LABEL_141:
        [a1 setFirstPassFireSampleCount:v44];
        goto LABEL_180;
      case 0xBu:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v106[0] & 0x7F) << v85;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
          if (v11)
          {
            v91 = 0;
            goto LABEL_165;
          }
        }

        if ([a2 hasError])
        {
          v91 = 0;
        }

        else
        {
          v91 = v87;
        }

LABEL_165:
        [a1 setFirstPassTriggerSource:v91];
        goto LABEL_180;
      case 0xCu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v106[0] & 0x7F) << v27;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_137:
        [a1 setEarlyDetectFiredTimeOffsetInNs:v33];
        goto LABEL_180;
      case 0xDu:
        LODWORD(v106[0]) = 0;
        v35 = [a2 position] + 4;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 4, v36 <= objc_msgSend(a2, "length")))
        {
          v99 = [a2 data];
          [v99 getBytes:v106 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v37) = v106[0];
        [a1 setEarlyDetectFiredTime:v37];
        goto LABEL_180;
      case 0xEu:
        LODWORD(v106[0]) = 0;
        v79 = [a2 position] + 4;
        if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 4, v80 <= objc_msgSend(a2, "length")))
        {
          v102 = [a2 data];
          [v102 getBytes:v106 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v81) = v106[0];
        [a1 setFirstPassPrimaryChannelScoreBoost:v81];
        goto LABEL_180;
      case 0xFu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v106[0] & 0x7F) << v20;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_133;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_133:
        [a1 setFirstPassInfoDispatchTimeInNs:v26];
        goto LABEL_180;
      case 0x10u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        while (1)
        {
          LOBYTE(v106[0]) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v106[0] & 0x7F) << v52;
          if ((v106[0] & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v58 = 0;
            goto LABEL_149;
          }
        }

        if ([a2 hasError])
        {
          v58 = 0;
        }

        else
        {
          v58 = v54;
        }

LABEL_149:
        [a1 setFirstPassInfoReceptionTimeInNs:v58];
        goto LABEL_180;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_180;
    }
  }
}

uint64_t MHSchemaMHVoiceTriggerSecondPassTriggeredReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(MHSchemaMHVoiceTriggerEventInfo);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MHSchemaMHVoiceTriggerEventInfoReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setVoiceTriggerEventInfo:v13];
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

uint64_t MHSchemaMHVoiceTriggerTwoShotDetectedReadFrom(void *a1, void *a2)
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

uint64_t MTSchemaMTApiInvocationMetadataReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(MTSchemaMTLocalePair);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLocalePair:v13];
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

uint64_t MTSchemaMTAppBackgroundedTier1ReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        [a1 setTranslationPayload:v13];
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(MTSchemaMTLocalePair);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setLocalePair:v13];
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTAppInvocationMetadataReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
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
                goto LABEL_104;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_104:
            [a1 setIsGenderAlternativeEnabled:v42];
            goto LABEL_115;
          }

          if (v13 == 4)
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
                goto LABEL_98;
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

LABEL_98:
            [a1 setTabName:v28];
            goto LABEL_115;
          }
        }

        else
        {
          if (v13 == 1)
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
                goto LABEL_102;
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

LABEL_102:
            [a1 setDisplayMode:v35];
            goto LABEL_115;
          }

          if (v13 == 2)
          {
            v21 = objc_alloc_init(MTSchemaMTLocalePair);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v21, a2))
            {
LABEL_118:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setLocalePair:v21];
            goto LABEL_83;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v21 = objc_alloc_init(SISchemaUUID);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
          {
            goto LABEL_118;
          }

          PBReaderRecallMark();
          [a1 setTabSessionId:v21];
          goto LABEL_83;
        }

        if (v13 == 6)
        {
          v21 = objc_alloc_init(SISchemaUUID);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
          {
            goto LABEL_118;
          }

          PBReaderRecallMark();
          [a1 setAutoTranslateSessionId:v21];
LABEL_83:

          goto LABEL_115;
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
                goto LABEL_106;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_106:
            [a1 setIsPlayTranslationsEnabled:v49];
            goto LABEL_115;
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
                goto LABEL_114;
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

LABEL_114:
            [a1 setConversationTabView:v56];
            goto LABEL_115;
          case 9:
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
                goto LABEL_110;
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

LABEL_110:
            [a1 setAudioChannel:v20];
            goto LABEL_115;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_115:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTAppNextButtonTappedTier1ReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        [a1 setTranslationPayload:v13];
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(MTSchemaMTLocalePair);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setLocalePair:v13];
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTAppTextBoxDismissedTier1ReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        [a1 setTranslationPayload:v13];
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(MTSchemaMTLocalePair);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setLocalePair:v13];
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTAppTimedOutTier1ReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        [a1 setTranslationPayload:v13];
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(MTSchemaMTLocalePair);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setLocalePair:v13];
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTASRStateUpdatedReadFrom(void *a1, void *a2)
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
      [a1 setAsrState:v20];
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

uint64_t MTSchemaMTBatchRequestCancelledReadFrom(void *a1, void *a2)
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

uint64_t MTSchemaMTBatchRequestContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
LABEL_45:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setContextId:v14];
          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(MTSchemaMTBatchRequestStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MTSchemaMTBatchRequestStartedReadFrom(v14, a2))
          {
            goto LABEL_45;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
          goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(MTSchemaMTBatchRequestEnded);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !MTSchemaMTBatchRequestEndedReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setEnded:v14];
            goto LABEL_38;
          case 4:
            v14 = objc_alloc_init(MTSchemaMTBatchRequestFailed);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !MTSchemaMTBatchRequestFailedReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setFailed:v14];
            goto LABEL_38;
          case 5:
            v14 = objc_alloc_init(MTSchemaMTBatchRequestCancelled);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !MTSchemaMTBatchRequestCancelledReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setCancelled:v14];
LABEL_38:

            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTBatchRequestEndedReadFrom(void *a1, void *a2)
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

uint64_t MTSchemaMTBatchRequestFailedReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(MTSchemaMTError);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTErrorReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setError:v20];
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
        [a1 setNumParagraphFailures:v19];
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

uint64_t MTSchemaMTBatchRequestStartedReadFrom(void *a1, void *a2)
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

    if ((v13 >> 3) == 2)
    {
      v21 = PBReaderReadString();
      [a1 setSequenceNumber:v21];
    }

    else if ((v13 >> 3) == 1)
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
      [a1 setNumParagraphs:v20];
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

uint64_t MTSchemaMTClientEventMetadataReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SISchemaUUID);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setMtId:v13];
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

    v13 = objc_alloc_init(SISchemaUUID);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setSessionId:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTClientEventV2ReadFrom(void *a1, void *a2)
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

    switch((v12 >> 3))
    {
      case 'e':
        v13 = objc_alloc_init(MTSchemaMTBatchRequestContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTBatchRequestContextReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setBatchRequestContext:v13];
        goto LABEL_67;
      case 'f':
        v13 = objc_alloc_init(MTSchemaMTInvocationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTInvocationContextReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setInvocationContext:v13];
        goto LABEL_67;
      case 'g':
        v13 = objc_alloc_init(MTSchemaMTASRStateUpdated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTASRStateUpdatedReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setAsrStateUpdated:v13];
        goto LABEL_67;
      case 'h':
        v13 = objc_alloc_init(MTSchemaMTLocalePairResolved);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairResolvedReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setLocalePairResolved:v13];
        goto LABEL_67;
      case 'i':
        v13 = objc_alloc_init(MTSchemaMTInvocationStartedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTInvocationStartedTier1ReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setInvocationStartedTier1:v13];
        goto LABEL_67;
      case 'j':
        v13 = objc_alloc_init(MTSchemaMTAppNextButtonTappedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTAppNextButtonTappedTier1ReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setAppNextButtonTapped:v13];
        goto LABEL_67;
      case 'k':
        v13 = objc_alloc_init(MTSchemaMTAppTextBoxDismissedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTAppTextBoxDismissedTier1ReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setAppTextBoxDismissed:v13];
        goto LABEL_67;
      case 'l':
        v13 = objc_alloc_init(MTSchemaMTAppTimedOutTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTAppTimedOutTier1ReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setAppTimedOut:v13];
        goto LABEL_67;
      case 'm':
        v13 = objc_alloc_init(MTSchemaMTFrameworkRequestSent);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTFrameworkRequestSentReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setFrameworkRequestSent:v13];
        goto LABEL_67;
      case 'n':
        v13 = objc_alloc_init(MTSchemaMTFrameworkRequestResponseReceived);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTFrameworkRequestResponseReceivedReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setFrameworkRequestResponseReceived:v13];
        goto LABEL_67;
      case 'o':
        v13 = objc_alloc_init(MTSchemaMTAppBackgroundedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTAppBackgroundedTier1ReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setAppBackgrounded:v13];
        goto LABEL_67;
      case 'p':
        v13 = objc_alloc_init(MTSchemaMTLanguageIdentificationCompleted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTLanguageIdentificationCompletedReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setLanguageIdentificationCompleted:v13];
        goto LABEL_67;
      case 'q':
        v13 = objc_alloc_init(MTSchemaMTLanguageDisambiguationUIShown);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTLanguageDisambiguationUIShownReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setLanguageDisambiguationUIShown:v13];
        goto LABEL_67;
      case 'r':
        v13 = objc_alloc_init(MTSchemaMTLanguageDisambiguationUISelected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTLanguageDisambiguationUISelectedReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setLanguageDisambiguationUISelected:v13];
        goto LABEL_67;
      case 's':
        v13 = objc_alloc_init(MTSchemaMTTranslationTTSPlayed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTTranslationTTSPlayedReadFrom(v13, a2))
        {
          goto LABEL_74;
        }

        PBReaderRecallMark();
        [a1 setTranslationTTSPlayed:v13];
        goto LABEL_67;
      default:
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

LABEL_68:
          v14 = [a2 position];
          if (v14 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        v13 = objc_alloc_init(MTSchemaMTClientEventMetadata);
        v16 = 0;
        v17 = 0;
        if (PBReaderPlaceMark() && MTSchemaMTClientEventMetadataReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setEventMetadata:v13];
LABEL_67:

          goto LABEL_68;
        }

LABEL_74:

        return 0;
    }
  }
}

uint64_t MTSchemaMTErrorReadFrom(void *a1, void *a2)
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
    if ((v13 >> 3) == 1)
    {
      v22 = PBReaderReadString();
      [a1 setErrorDomain:v22];
      goto LABEL_32;
    }

    if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setErrorMessage:v22];
LABEL_32:

      continue;
    }

    if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v25 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v25 & 0x7F) << v15;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_38;
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

LABEL_38:
      [a1 setErrorCode:v21];
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

uint64_t MTSchemaMTFrameworkRequestResponseReceivedReadFrom(void *a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v28 = objc_alloc_init(SISchemaUUID);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setFrameworkRequestId:v28];
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
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

LABEL_46:
        [a1 setRequestRoute:v27];
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
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

LABEL_50:
        [a1 setNumSentences:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTFrameworkRequestSentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(SISchemaUUID);
          v38[0] = 0;
          v38[1] = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setFrameworkRequestId:v21];
          goto LABEL_54;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          [a1 setQssSessionId:v21];
LABEL_54:

          goto LABEL_69;
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
              LOBYTE(v38[0]) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v38[0] & 0x7F) << v22;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_60;
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

LABEL_60:
            [a1 setRequestType:v28];
            goto LABEL_69;
          case 4:
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
                goto LABEL_64;
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

LABEL_64:
            [a1 setRequestRoute:v35];
            goto LABEL_69;
          case 5:
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
                goto LABEL_68;
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

LABEL_68:
            [a1 setRequestSize:v20];
            goto LABEL_69;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_69:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTInvocationCancelledReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(SISchemaUUID);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

        PBReaderRecallMark();
        [a1 setQssSessionId:v21];
LABEL_35:

        goto LABEL_40;
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
            goto LABEL_39;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_39:
        [a1 setExists:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(MTSchemaMTLocalePair);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setLocalePair:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTInvocationContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(MTSchemaMTInvocationFailed);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MTSchemaMTInvocationFailedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(MTSchemaMTInvocationCancelled);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MTSchemaMTInvocationCancelledReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setCancelled:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MTSchemaMTInvocationStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MTSchemaMTInvocationStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(MTSchemaMTInvocationEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MTSchemaMTInvocationEndedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
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

uint64_t MTSchemaMTInvocationEndedReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(SISchemaUUID);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

        PBReaderRecallMark();
        [a1 setQssSessionId:v21];
LABEL_35:

        goto LABEL_40;
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
            goto LABEL_39;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_39:
        [a1 setExists:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(MTSchemaMTLocalePair);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setLocalePair:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTInvocationFailedReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(MTSchemaMTLocalePair);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLocalePair:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(MTSchemaMTError);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTErrorReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setError:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SISchemaUUID);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setQssSessionId:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTInvocationStartedReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xC:
              v21 = objc_alloc_init(MTSchemaMTApiInvocationMetadata);
              v73 = 0;
              v74 = 0;
              if (!PBReaderPlaceMark() || !MTSchemaMTApiInvocationMetadataReadFrom(v21, a2))
              {
LABEL_148:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setApiInvocationMetadata:v21];
              goto LABEL_116;
            case 0xB:
              v21 = objc_alloc_init(MTSchemaMTAppInvocationMetadata);
              v73 = 0;
              v74 = 0;
              if (!PBReaderPlaceMark() || !MTSchemaMTAppInvocationMetadataReadFrom(v21, a2))
              {
                goto LABEL_148;
              }

              PBReaderRecallMark();
              [a1 setAppInvocationMetadata:v21];
              goto LABEL_116;
            case 0xA:
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
                  goto LABEL_128;
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

LABEL_128:
              [a1 setInvocationType:v35];
              goto LABEL_145;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
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
                  goto LABEL_130;
                }
              }

              v42 = (v38 != 0) & ~[a2 hasError];
LABEL_130:
              [a1 setIsLanguageIdentificationEnabled:v42];
              goto LABEL_145;
            case 8:
              v57 = 0;
              v58 = 0;
              v59 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v60 = [a2 position] + 1;
                if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                {
                  v62 = [a2 data];
                  [v62 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v59 |= (v73 & 0x7F) << v57;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                v11 = v58++ >= 9;
                if (v11)
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
              [a1 setDisplayMode:v63];
              goto LABEL_145;
            case 9:
              v21 = objc_alloc_init(SISchemaUUID);
              v73 = 0;
              v74 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
              {
                goto LABEL_148;
              }

              PBReaderRecallMark();
              [a1 setQssSessionId:v21];
              goto LABEL_116;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
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
                goto LABEL_134;
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

LABEL_134:
            [a1 setTask:v49];
            goto LABEL_145;
          case 5:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              LOBYTE(v73) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v73 & 0x7F) << v64;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
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
            [a1 setInputSource:v70];
            goto LABEL_145;
          case 6:
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
                goto LABEL_124;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_124:
            [a1 setIsExplicitLanguageFilterEnabled:v28];
            goto LABEL_145;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(SISchemaUUID);
            v73 = 0;
            v74 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
            {
              goto LABEL_148;
            }

            PBReaderRecallMark();
            [a1 setLinkId:v21];
LABEL_116:

            goto LABEL_145;
          case 2:
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
                goto LABEL_136;
              }
            }

            v56 = (v52 != 0) & ~[a2 hasError];
LABEL_136:
            [a1 setIsOnDeviceTranslation:v56];
            goto LABEL_145;
          case 3:
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
                goto LABEL_122;
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

LABEL_122:
            [a1 setMobileAssetConfigVersion:v20];
            goto LABEL_145;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_145:
      v71 = [a2 position];
    }

    while (v71 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTInvocationStartedTier1ReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLinkId:v13];
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    [a1 setAppBundleId:v13];
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}