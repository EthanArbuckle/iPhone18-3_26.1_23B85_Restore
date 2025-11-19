uint64_t lsim01_12DeInitReq()
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim01_12DeInitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_DEINIT_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 77, "lsim01_12DeInitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim01_04DeInitRoutine");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  g_GnsCellInfoCallback = 0;
  if (qword_2A1926810)
  {
    free(qword_2A1926810);
  }

  qword_2A1926810 = 0;
  lsim04_02CloseOtherCpNiSessions(255, 0);
  g_GnsCpCallback = 0;
  g_GnsEcallCallback = 0;
  g_LsimEcallOngoing = 0;
  lsim05_32DeInitSupl();
  g_SimInfoCallback = 0;
  lsim12_04TimersDeinit();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim01_04DeInitRoutine");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim01_12DeInitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim01_13HandleCbInit(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim01_13HandleCbInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_CB_INIT_IND,Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 77, "lsim01_13HandleCbInit", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 3, 1);
  }

  switch(*(a1 + 12))
  {
    case 1:
      lsim23_21EcallCbInit(*(a1 + 16));
      break;
    case 2:
      lsim04_05CpCbInit(*(a1 + 16));
      break;
    case 3:
      lsim05_45SuplCbInit(*(a1 + 16));
      break;
    case 4:
      lsim05_46PospCbInit(*(a1 + 16));
      break;
    case 5:
      lsim21_13PpduCbInit(*(a1 + 16));
      break;
    case 6:
      lsim09_41DcCbInit(*(a1 + 16));
      break;
    case 7:
      lsim22_03EaCbInit(*(a1 + 16));
      break;
    case 8:
      lsim25_01EeCbInit(*(a1 + 16));
      break;
    case 9:
      lsim17_04SiCbInit(*(a1 + 16));
      break;
    case 0xA:
      lsim15_23CiCbInit(*(a1 + 16));
      break;
    case 0xB:
      lsim07_02FtaCbInit(*(a1 + 16));
      break;
    case 0xC:
      lsim24_02SensCbInit(*(a1 + 16));
      break;
    case 0xD:
      lsim26_03XoCbInit(*(a1 + 16));
      break;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbType,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 87, "lsim01_13HandleCbInit", 515, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v7, 2, 1);
      }

      break;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim01_13HandleCbInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

size_t G5K_Read_GNB_Meas(char **a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (*a1 != v3 && v4 == v2)
  {
    *a1 = v3;
    a1[1] = v3;
    v2 = v3;
    v4 = v3;
  }

  v6 = 15 * (a1[3] - v3) + (15 * (a1[3] - v3) < 0 ? 0xFuLL : 0);
  v7 = v6 >> 4;
  if (v4 >= v2)
  {
    v2 = a1[3];
  }

  else
  {
    LOWORD(v2) = v2 - 1;
  }

  v8 = v2 - v4;
  v9 = (v6 >> 4);
  if (v9 < v8)
  {
    v8 = v6 >> 4;
  }

  result = GncP02_16GetMEDataFrmBuf(v8, v4);
  v11 = &(*a1)[result];
  *a1 = v11;
  if (v11 >= a1[3])
  {
    v13 = a1[1];
    v12 = a1[2];
    if (v13 != v12)
    {
      *a1 = v12;
      v14 = ~v12 + v13;
      if (v9 < v14)
      {
        v14 = v7;
      }

      result = GncP02_16GetMEDataFrmBuf(v14, v12);
      v15 = &(*a1)[result];
      *a1 = v15;
      if (v15 >= a1[3])
      {
        *a1 = a1[2];
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void G5K_ME_Decode_Meas(unsigned __int8 **a1, char *a2)
{
  v315 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 48);
  v4 = a1[1];
  if (v4 == *a1)
  {
    goto LABEL_357;
  }

  v6 = a2 + 11172;
  v302 = a2 + 428;
  v7 = a2 + 11160;
  v8 = a2 + 381;
  v9 = a2 + 1;
  v306 = a2 + 3392;
  v305 = a2 + 704;
  v304 = a2 + 540;
  v309 = a2 + 2;
  v310 = a2 + 403;
  v307 = a2 + 3;
  v303 = a2 + 8128;
  v311 = a2 + 402;
  v300 = a2 + 558;
  v301 = a2 + 11331;
  v299 = a2 + 8144;
  v298 = a2 + 8136;
  v297 = a2 + 8150;
  v296 = a2 + 8140;
  v293 = a2 + 6093;
  v294 = a2 + 5137;
  v292 = vdupq_n_s64(0x40F5180000000000uLL);
  v291 = vdupq_n_s64(0x4122750000000000uLL);
  __asm { FMOV            V0.2D, #0.125 }

  v295 = _Q0;
  while (1)
  {
    v16 = *v4;
    v14 = v4 + 1;
    v15 = v16;
    a1[1] = v14;
    if (v14 >= a1[3])
    {
      a1[1] = a1[2];
    }

    if (v3 < a2 || v3 >= v8)
    {
      EvLog("ME_Dec: Rec Buff out of bounds");
      a2[392] = 0;
      v3 = a2;
    }

    if (v15 != 123 && v15 != 36)
    {
      break;
    }

    a2[392] = 1;
    *a2 = v15;
    v3 = a2 + 1;
LABEL_11:
    v4 = a1[1];
    if (v4 == *a1)
    {
      goto LABEL_357;
    }
  }

  if (a2[392] != 1)
  {
    goto LABEL_11;
  }

  *v3++ = v15;
  if (v15 != 10)
  {
    goto LABEL_11;
  }

  *v3 = 0;
  if (a2[392] == 1 && STEU_Checksum_OK(a2))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v22 = 1;
    switch(*v9)
    {
      case 'A':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 7;
        goto LABEL_51;
      case 'B':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 12;
        goto LABEL_51;
      case 'C':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 8;
        goto LABEL_51;
      case 'D':
        goto LABEL_51;
      case 'E':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 16;
        goto LABEL_51;
      case 'F':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 6;
        goto LABEL_51;
      case 'G':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 5;
        goto LABEL_51;
      case 'H':
        if ((a2[403] & 1) != 0 || a2[406])
        {
          v25 = a2[405] - a2[406];
          v26 = *(a2 + 200) + a2[405] - a2[406];
          *(a2 + 200) = v26;
          v27 = *(a2 + 198) + 1;
          *(a2 + 198) = v27;
          EvLog_nd("ME_InComplete_Epoch_Check: Missed M & T", 3, 1, v25, v26, v27);
          *v310 = 0;
          bzero(v305, 0xA80uLL);
          for (i = 0; i != 1728; i += 36)
          {
            v29 = &v306[i];
            v29[32] = 0;
            *v29 = 0uLL;
            *(v29 + 1) = 0uLL;
          }

          for (j = 0; j != 160; j += 20)
          {
            v31 = &v304[j];
            *v31 = 0;
            *(v31 + 1) = 0;
            *(v31 + 15) = 0;
          }

          EvLog("ME_InComplete_Epoch_Check:  Flushing M");
        }

        v21 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 4;
        v17 = 1;
        goto LABEL_51;
      case 'I':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 21;
        goto LABEL_51;
      case 'J':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 17;
        goto LABEL_51;
      case 'K':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 11;
        goto LABEL_51;
      case 'L':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 20;
        goto LABEL_51;
      case 'M':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v20 = 0;
        v22 = 2;
        v19 = 1;
        goto LABEL_51;
      case 'N':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 10;
        goto LABEL_51;
      case 'O':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 14;
        goto LABEL_51;
      case 'R':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 15;
        goto LABEL_51;
      case 'S':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 9;
        goto LABEL_51;
      case 'T':
        v21 = 0;
        v17 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 3;
        v18 = 1;
        goto LABEL_51;
      case 'W':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 13;
        goto LABEL_51;
      case 'Y':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 18;
        goto LABEL_51;
      case 'Z':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v22 = 19;
        v20 = 1;
LABEL_51:
        v308 = v7;
        v32.i32[1] = 0;
        memset(v314, 0, sizeof(v314));
        v33 = *a2;
        if (v33 != 123)
        {
          v34 = "ME_Decode: Incorrect 1st ch";
          goto LABEL_55;
        }

        v33 = *v9;
        if ((v33 - 123) <= 0xFFFFFFC5)
        {
          v34 = "ME_Decode: Incorrect ID";
LABEL_55:
          EvLog_d(v34, v33);
          goto LABEL_56;
        }

        v63 = v309;
        if (v21)
        {
          v33 = *v309;
          v63 = v307;
          if ((v33 - 91) <= 0xFFFFFFE5)
          {
            v34 = "ME_Decode: Incorrect {D Debug ID ";
            goto LABEL_55;
          }
        }

        v64 = *v63;
        if (v64 == 125)
        {
          v34 = "ME_Decode: Incorrect start";
          v33 = 125;
          goto LABEL_55;
        }

        v290 = v6;
        v65 = 0;
        LODWORD(v313) = 0;
        break;
      default:
        EvLog_d("ME_Get_Msg_Type: Unknown message type: ", *v9);
        goto LABEL_57;
    }

    do
    {
      v66 = 0;
      v67 = v65;
      while (1)
      {
        v68 = v66;
        if ((v64 - 112) <= 0xBFu)
        {
          v75 = v64;
          v76 = "ME_Decode: Illegal ch";
LABEL_138:
          EvLog_d(v76, v75);
          goto LABEL_139;
        }

        *(&v313 + v66) = v64 - 48;
        v64 = v63[v66 + 1];
        if (v64 == 125)
        {
          break;
        }

        ++v66;
        if (v68 == 3)
        {
          goto LABEL_126;
        }
      }

      if (v66 != 3)
      {
        v265 = v22;
        v267 = v18;
        v282 = v21;
        v277 = v20;
        v273 = v19;
        v270 = v17;
        gn_report_assertion_failure("ME_Decode: Input not N x 4 bytes");
        memset(&v313 + v68 + 1, 32, (2 - v68) + 1);
        v22 = v265;
        v18 = v267;
        v17 = v270;
        v19 = v273;
        v20 = v277;
        v21 = v282;
      }

LABEL_126:
      if (v67 >= 0x5D)
      {
        v6 = v290;
        if (v21)
        {
          EvLog_v("ME_Decode: Longer {D - Debug messages. Received  %d  Max %d bytes");
        }

        else
        {
          EvLog_v("ME_Decode: Input longer than buffer. Received  %d  Max %d bytes");
        }

        goto LABEL_56;
      }

      v63 += v68 + 1;
      v69 = BYTE1(v313);
      *(v314 + v67) = (BYTE1(v313) >> 4) + 4 * LOBYTE(v313);
      v70 = BYTE2(v313);
      *(v314 + v67 + 1) = (BYTE2(v313) >> 2) + 16 * v69;
      *(v314 + v67 + 2) = BYTE3(v313) + (v70 << 6);
      v65 = v67 + 3;
      v64 = *v63;
    }

    while (v64 != 125);
    v71 = (v22 - 1);
    if (v67 == 12)
    {
      v72 = v17;
    }

    else
    {
      v72 = 0;
    }

    if (v72 == 1)
    {
      *(&v314[1] + 3) = 0;
      *(v314 + 15) = 0;
      LODWORD(v65) = 21;
      goto LABEL_133;
    }

    if (v18)
    {
      v77 = v67 - 12;
      if ((v67 - 12) > 9)
      {
LABEL_133:
        v6 = v290;
      }

      else
      {
        v6 = v290;
        if ((0x249u >> v77))
        {
          v78 = dword_29972ABC4[v77];
          v79 = dword_29972ABEC[v77];
          v80 = v78 + G5K_CompMsgSize[v71];
          if (v80)
          {
            v81 = v80 + v79;
            if (v80 + v79 <= 0x60)
            {
              do
              {
                *(v314 + v79++) = 0;
                --v80;
              }

              while (v80);
              LODWORD(v65) = v81;
              v71 = (v22 - 1);
              goto LABEL_150;
            }

            LODWORD(v65) = v79;
            v6 = v290;
          }

          else
          {
            LODWORD(v65) = v79;
          }
        }
      }

      goto LABEL_134;
    }

LABEL_150:
    v6 = v290;
    if (v19)
    {
      switch(v65)
      {
        case '6':
          v82 = -54;
          break;
        case 'E':
          LODWORD(v65) = 68;
          v82 = -68;
          break;
        case 'B':
          LODWORD(v65) = 64;
          v82 = -64;
          break;
        default:
          goto LABEL_134;
      }

      v86 = v82 + G5K_CompMsgSize[v71];
      if (v86)
      {
        v87 = v86 + v65;
        if ((v86 + v65) <= 0x60)
        {
          do
          {
            *(v314 + v65) = 0;
            LODWORD(v65) = v65 + 1;
            --v86;
          }

          while (v86);
          LODWORD(v65) = v87;
          goto LABEL_166;
        }
      }

LABEL_134:
      v73 = G5K_CompMsgSize[v71];
      if (v65 != v73)
      {
        v74 = G5K_CompMsgType[v71];
        if (v65 < v73)
        {
          EvCrt_v("ME_Decode: ERROR: {%c too short, %d < %d ", v74, v65, G5K_CompMsgSize[v71]);
          goto LABEL_56;
        }

        v83 = v65;
        v84 = v71;
        EvCrt_v("ME_Decode: Warning: {%c too long, %d < %d ", v74, v65, G5K_CompMsgSize[v71]);
        v71 = v84;
        LODWORD(v65) = v83;
      }

      if (v65)
      {
        switch(v71)
        {
          case 1:
            v85 = LOBYTE(v314[0]);
            ++a2[406];
            if (v85 >= 0x30)
            {
              EvCrt_v("ME_dec_M: Warning: Unsupported channel index %d >= %d");
              goto LABEL_139;
            }

            v177 = BYTE1(v314[0]) >> 4;
            v178 = BYTE1(v314[0]) & 0xF;
            v312 = 0;
            v287 = BYTE2(v314[0]);
            v179 = Decode_SVid_STE(BYTE2(v314[0]), v177, &v312);
            v180 = v312;
            v181 = v178;
            if (v178 == 15 && !v312 && !v179)
            {
              goto LABEL_139;
            }

            if (!(v312 | v179))
            {
              EvLog_v("ME_dec_M: Not Supported: SVID %d Const %d Sig %d");
              goto LABEL_139;
            }

            if (v312)
            {
              if (v178 == 15)
              {
LABEL_344:
                EvLog_v("ME_dec_M: Illegal STE SV:  ID %d  Const %d  Sig %d", v287, v177, v178);
                v229 = &v305[56 * v85];
                *(v229 + 6) = 0;
                *(v229 + 1) = 0u;
                *(v229 + 2) = 0u;
                *v229 = 0u;
                v230 = &v306[36 * v85];
                v230[32] = 0;
                *v230 = 0u;
                *(v230 + 1) = 0u;
                goto LABEL_139;
              }
            }

            else if (v178 != 15 || v179)
            {
              goto LABEL_344;
            }

            v269 = *(&xmmword_2A1926940 + 1);
            v210 = &v305[56 * v85];
            *(v210 + 6) = 0;
            *(v210 + 1) = 0u;
            *(v210 + 2) = 0u;
            v211 = &v306[36 * v85];
            *v210 = 0u;
            *v211 = v180;
            v211[1] = v181;
            if (v180 == 2)
            {
              v212 = 0;
            }

            else
            {
              v212 = v179;
            }

            if (v180 == 2)
            {
              v213 = v179;
            }

            else
            {
              v213 = 0;
            }

            v211[2] = v212;
            v211[3] = v213;
            v214 = vmovl_u8(*(v314 + 3)).u64[0];
            v215 = vrev32_s16(v214);
            v215.i32[0] = v214.i32[0];
            *(v211 + 1) = vuzp1_s8(v215, v214).u32[0];
            *(v211 + 4) = *(v314 + 7);
            v216 = HIBYTE(v314[0]);
            v217 = v314[1];
            v281 = DWORD1(v314[1]);
            *(v211 + 8) = WORD5(v314[1]);
            v218 = *(v314 + 9);
            v219 = *(v314 + 13);
            v289 = WORD4(v314[1]);
            *(v211 + 5) = HIWORD(v314[1]);
            *(v211 + 3) = v314[2];
            v210[38] = BYTE6(v314[2]);
            *(v210 + 39) = *(&v314[2] + 7);
            *(v210 + 34) = *(&v314[2] + 9);
            v210[41] = BYTE13(v314[2]);
            v220 = BYTE6(v314[3]);
            v211[22] = BYTE7(v314[3]);
            *(v211 + 10) = WORD4(v314[3]);
            *(v210 + 7) = *(&v314[3] + 10);
            *(v210 + 16) = HIWORD(v314[3]);
            v276 = v314[4];
            v211[23] = BYTE4(v314[4]);
            *(v211 + 3) = *(&v314[4] + 5);
            v211[32] = BYTE13(v314[4]);
            v221 = v219 | (v216 << 16);
            v211[18] = v220 >> 4;
            v211[19] = v220 & 0xF;
            v313 = 0.0;
            if (!(v218 | v221))
            {
              *v210 = 0;
              *(v210 + 4) = 0;
              goto LABEL_353;
            }

            v222 = v218 * 0.001 + vcvtd_n_f64_u32(v221, 0x18uLL) * 0.001;
            v272 = v222;
            *(v210 + 6) = v222;
            if (v180 == 2)
            {
              UTC_Cor = API_Get_UTC_Cor(1, &v313);
              if (v313 <= 0.0)
              {
                v224 = -0.5;
              }

              else
              {
                v224 = 0.5;
              }

              v225 = (v313 + v224);
              if (v313 + v224 < -2147483650.0)
              {
                v225 = 0x80000000;
              }

              if (v313 + v224 > 2147483650.0)
              {
                v225 = 0x7FFFFFFF;
              }

              *v308 = UTC_Cor;
              v313 = v225;
              v308[1] = v225;
              v226.f64[0] = *(v210 + 6);
              v226.f64[1] = v272 + -10800.0 + v225;
              v227 = vaddq_f64(v226, vdupq_lane_s64(COERCE__INT64(*(v269 + 8 * v211[3] + 1208) * 0.00000000333564095), 0));
              v228 = v292;
LABEL_348:
              v232 = vmlsq_f64(v227, v228, vrndmq_f64(vdivq_f64(v227, v228)));
              *(v210 + 6) = *&v232.f64[0];
              v272 = v232.f64[1];
            }

            else if (v180 == 4)
            {
              v231.f64[0] = v222;
              v231.f64[1] = v222 + 14.0;
              v227 = vaddq_f64(v231, vdupq_lane_s64(COERCE__INT64(*(v269 + 1264) * 0.00000000333564095), 0));
              v228 = v291;
              goto LABEL_348;
            }

            v233 = (v272 * 0.666666667);
            v234 = v272 + v233 * -1.5;
            v235 = (v234 * 1000.0);
            v236 = v234 + v235 * -0.001;
            v237 = (v236 * 1023000.0);
            v238 = (v236 + v237 * -0.000000977517107) * 1023000.0 * 10000.0;
            *v210 = v233;
            *(v210 + 1) = v237 - v235 + (v235 << 10);
            *(v210 + 4) = (109951163 * (v238 << 12)) >> 36;
            if (v233 <= 403199 && v235 <= 0x5DB && v237 <= 0x3FE && v238 >> 4 < 0x271)
            {
LABEL_353:
              *(v210 + 3) = ((v217 / 256) * 5.25503547);
              *(v210 + 4) = ((v276 / 256) * 5.25503547);
              v239 = v281 * 5.25503547 + vcvtd_n_f64_u32(v289, 0x10uLL) * 5.25503547;
              v240 = v239 + (v239 >> 31);
              *(v210 + 6) = v240;
              *(v210 + 10) = vcvtd_n_s64_f64(v239 - v240, 0x10uLL);
              goto LABEL_139;
            }

            EvLog_nd("ME_dec_M: Code TOT out of range ", 4, v22, v233, v235, v237, v238);
            goto LABEL_139;
          case 2:
            v118 = v314[0];
            v119 = DWORD1(v314[0]);
            *(a2 + 112) = v314[0];
            *(a2 + 113) = v119;
            *(a2 + 114) = WORD4(v314[0]);
            *(a2 + 115) = 8 * *(v314 + 10);
            v120 = BYTE14(v314[0]);
            if (BYTE14(v314[0]) > 5u)
            {
              v120 = -1;
            }

            a2[464] = v120;
            v279 = *(v314 + 15);
            v275 = BYTE1(v314[1]);
            v271 = WORD1(v314[1]);
            v284 = BYTE4(v314[1]);
            v121 = SBYTE5(v314[1]);
            v266 = WORD4(v314[1]);
            v268 = WORD3(v314[1]);
            v263 = WORD6(v314[1]);
            v264 = WORD5(v314[1]);
            v261 = v314[2];
            v262 = HIWORD(v314[1]);
            v259 = WORD2(v314[2]);
            v260 = WORD1(v314[2]);
            v255 = BYTE6(v314[2]);
            v254 = BYTE7(v314[2]);
            v250 = BYTE10(v314[2]);
            v251 = BYTE9(v314[2]);
            v257 = WORD6(v314[2]);
            v258 = BYTE8(v314[2]);
            v244 = HIBYTE(v314[2]);
            v245 = BYTE14(v314[2]);
            v122 = BYTE1(v314[3]);
            v123 = BYTE2(v314[3]);
            v242 = BYTE3(v314[3]);
            v243 = LOBYTE(v314[3]);
            v256 = WORD2(v314[3]);
            v253 = BYTE6(v314[3]);
            v252 = *(&v314[3] + 7);
            v248 = *(&v314[3] + 9);
            v249 = BYTE11(v314[2]);
            v246 = *(&v314[3] + 13);
            v247 = *(&v314[3] + 11);
            if (a2[403] != 1 || v118 != *(a2 + 128) || (LODWORD(v124) = *(a2 + 129), !v124))
            {
              v124 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            }

            *(a2 + 117) = v124;
            *(a2 + 124) = 0;
            a2[500] = 0;
            a2[402] = 1;
            v125 = a2[464];
            if (v125 != 255 && (a2[465] & 1) == 0)
            {
              API_Set_Inter_Chan_Bias_Model(*(a2 + 236), v125);
              a2[465] = 1;
            }

            v126.f64[0] = (((v251 << 8) | (v250 << 16) | (v249 << 24)) >> 8);
            v127.f64[0] = v259;
            v128 = *(p_api + 72);
            *(v128 + 80) = v275;
            *(v128 + 88) = vcvtd_n_f64_s32(v268, 8uLL);
            *(v128 + 96) = vcvtd_n_f64_s32(v266, 8uLL);
            *(v128 + 104) = vcvtd_n_f64_s32(v264, 8uLL);
            *(v128 + 112) = vcvtd_n_f64_s32(v263, 8uLL);
            *(v128 + 120) = vcvtd_n_f64_s32(v271, 8uLL);
            *(v128 + 128) = vcvtd_n_f64_s32(v262, 8uLL);
            *(v128 + 136) = vcvtd_n_f64_s32(v261, 8uLL);
            *(v128 + 144) = vcvtd_n_f64_s32(v260, 8uLL);
            v127.f64[1] = (((v255 << 8) | (v254 << 16) | (v258 << 24)) >> 8);
            *(v128 + 152) = vmulq_f64(v127, xmmword_29972AB70);
            v126.f64[1] = v257;
            *(v128 + 168) = vmulq_f64(v126, v295);
            *(v128 + 184) = vcvtd_n_f64_s32(((v245 << 8) | (v244 << 16) | (v243 << 24)) >> 8, 3uLL);
            *(v128 + 192) = vcvtd_n_f64_s32(((v122 << 8) | (v123 << 16) | (v242 << 24)) >> 8, 3uLL);
            API_Set_TSX_ClkCorr_Params(vcvtd_n_f64_s32(v256, 3uLL), vcvtd_n_f64_s32(v253, 3uLL), v279);
            v129 = *(p_api + 72);
            *(v129 + 200) = vcvtd_n_f64_s32(v252, 3uLL);
            *(v129 + 208) = vcvtd_n_f64_s32(v248, 3uLL);
            *(v129 + 216) = vcvtd_n_f64_s32(v247, 3uLL);
            *(v129 + 224) = vcvtd_n_f64_s32(v246, 3uLL);
            v130 = v284;
            if (v121 <= 0)
            {
              v130 = 0;
            }

            *(v129 + 250) = v130;
            *(v129 + 251) = v121 & ~(v121 >> 31);
            goto LABEL_139;
          case 3:
            a2[405] = v314[0];
            v111 = *(v314 + 1);
            *(a2 + 128) = *(v314 + 1);
            *(a2 + 260) = *(v314 + 5);
            *(a2 + 262) = *(v314 + 7);
            a2[526] = BYTE9(v314[0]);
            *(a2 + 261) = WORD5(v314[0]);
            *(a2 + 527) = WORD6(v314[0]);
            v32.i32[0] = *(v314 + 14);
            *(v310 + 126) = vrshrn_n_s16(vmovl_u8(v32), 4uLL).u32[0];
            v112 = g_GncPMeData;
            *(a2 + 129) = g_GncPMeData;
            if (!v112)
            {
              *(a2 + 129) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v111 = *(a2 + 128);
            }

            TM_FSP_OS_Time_ms_for_TTick = API_Get_TM_FSP_OS_Time_ms_for_TTick(v111);
            v114 = *(a2 + 129);
            if (TM_FSP_OS_Time_ms_for_TTick)
            {
              v115 = TM_FSP_OS_Time_ms_for_TTick;
              v116 = TM_FSP_OS_Time_ms_for_TTick - v114 >= 0 ? TM_FSP_OS_Time_ms_for_TTick - v114 : v114 - TM_FSP_OS_Time_ms_for_TTick;
              if (v116 >> 3 <= 0x270)
              {
                EvLog_v("TM_FSP: Replacing %u with %u delta %d", v114, TM_FSP_OS_Time_ms_for_TTick, TM_FSP_OS_Time_ms_for_TTick - v114);
                *(a2 + 129) = v115;
                v114 = v115;
              }
            }

            a2[403] = 1;
            *(a2 + 2791) = v114;
            goto LABEL_139;
          case 4:
            v145 = 0;
            v146 = v296;
            while (v303[56 * v145 + 52])
            {
              ++v145;
              v146 += 14;
              if (v145 == 48)
              {
                v205 = "G5K_ME_dec_G: No empty slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            v158 = v314[0] & 0xF;
            v159 = Decode_SVid_STE(BYTE1(v314[0]), LOBYTE(v314[0]) >> 4, &v313);
            if ((LODWORD(v313) & 0xFFFFFFFB) != 1)
            {
              EvLog_v("ME_dec_G: Illegal GPS/QZSS STE SV:  ID %d  Const %d  Sig %d");
              goto LABEL_139;
            }

            v160 = &v303[56 * v145];
            *v160 = LOBYTE(v313);
            v160[1] = v158;
            v160[2] = v159;
            v160[3] = 0;
            if (v158)
            {
              v76 = "ME_dec_G: Illegal GPS/QZSS Signal ";
              v75 = v158;
              goto LABEL_138;
            }

            v206 = 0;
            v207 = 0;
            v160[5] = v159;
            v208 = WORD2(v314[0]);
            *(v160 + 4) = WORD2(v314[0]);
            v209 = v314 + 3;
            do
            {
              *v146++ = *v209 | (*(v209 + 2) << 16);
              v207 += ((v208 >> v206++) & 1) == 0;
              v209 = (v209 + 3);
            }

            while (v206 != 10);
            v160[6] = v207;
            v160[4] = 1;
            ++a2[410];
            goto LABEL_324;
          case 5:
            v147 = v303;
            v148 = 48;
            while (v147[52])
            {
              v147 += 56;
              if (!--v148)
              {
                v205 = "ME_dec_F: No empty slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            v161 = v314[0] & 0xF;
            v162 = Decode_SVid_STE(BYTE1(v314[0]), LOBYTE(v314[0]) >> 4, &v313);
            if (LODWORD(v313) == 2)
            {
              *v147 = 2;
              v147[1] = v161;
              v147[2] = 0;
              v147[3] = v162;
              v147[5] = v162;
              _ZF = BYTE2(v314[0]) == 0;
              v147[6] = BYTE2(v314[0]) != 0;
              v163 = BYTE3(v314[0]);
              if (_ZF)
              {
                v163 = -1;
              }

              v147[7] = v163;
              *(v147 + 1) = *(v314 + 5);
              *(v147 + 4) = *(v314 + 13);
              v147[4] = 1;
              ++a2[414];
              v147[52] = 1;
            }

            else
            {
              EvLog_v("ME_dec_F: Illegal F STE SV:  ID %d  Const %d  Sig %d");
            }

            goto LABEL_139;
          case 6:
            v131 = 0;
            v132 = v297;
            v133 = v298;
            while (v303[56 * v131 + 52])
            {
              ++v131;
              v133 += 56;
              v132 += 56;
              if (v131 == 48)
              {
                v205 = "ME_dec_A: No empty slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            v285 = v314[0] & 0xF;
            v153 = Decode_SVid_STE(BYTE1(v314[0]), LOBYTE(v314[0]) >> 4, &v313);
            if (LODWORD(v313) != 3)
            {
              EvLog_v("G5K_ME_dec_A: Illegal GAL STE SV:  ID %d  Const %d  Sig %d");
              goto LABEL_139;
            }

            v154 = &v303[56 * v131];
            *v154 = 3;
            v154[1] = v285;
            v154[2] = v153;
            v154[3] = 0;
            if ((v285 | 2) != 0xA)
            {
              v76 = "ME_dec_A: Illegal GAL Signal ";
              v75 = v285;
              goto LABEL_138;
            }

            v154[5] = v153;
            v154[7] = BYTE2(v314[0]);
            v154[6] = BYTE3(v314[0]) != 0;
            v155 = 7;
            v156 = v314 + 2;
            do
            {
              v157 = *v156++;
              *v133 = v157;
              v133 += 2;
              --v155;
            }

            while (v155);
            do
            {
              *v132 = *(v156 + v155);
              v132 += 2;
              v155 += 2;
            }

            while (v155 != 14);
            v154[4] = 1;
            ++a2[418];
            v154[52] = 1;
            goto LABEL_139;
          case 7:
            v151 = 0;
            v152 = v299;
            while (v303[56 * v151 + 52])
            {
              ++v151;
              v152 += 14;
              if (v151 == 48)
              {
                v205 = "ME_dec_C: No empty slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            v286 = v314[0] & 0xF;
            v170 = Decode_SVid_STE(BYTE1(v314[0]), LOBYTE(v314[0]) >> 4, &v313);
            if (LODWORD(v313) == 4)
            {
              v160 = &v303[56 * v151];
              *v160 = 4;
              v160[1] = v286;
              v160[2] = v170;
              v160[3] = 0;
              v160[5] = v170;
              v171 = BYTE4(v314[0]);
              v172 = BYTE4(v314[0]) | (BYTE5(v314[0]) << 8);
              *(v160 + 4) = BYTE4(v314[0]) | (BYTE5(v314[0]) << 8);
              *(v160 + 3) = *(v314 + 6);
              v173 = (v171 & 1) == 0;
              v174 = -9;
              v175 = v314 + 5;
              do
              {
                *v152++ = *v175 | (*(v175 + 2) << 16);
                v173 += ((v172 >> (v174 + 10)) & 1) == 0;
                v175 = (v175 + 3);
              }

              while (!__CFADD__(v174++, 1));
              v160[6] = v173;
              v160[4] = 1;
              ++a2[422];
LABEL_324:
              v160[52] = 1;
            }

            else
            {
              EvLog_v("ME_dec_C: Illegal BDS STE SV:  ID %d  Const %d  Sig %d");
            }

            goto LABEL_139;
          case 8:
            break;
          case 9:
            v117 = *(v314 + 2);
            if ((v314[0] & 0xD0) == 0x10)
            {
              if ((v314[0] & 0xF) == 0)
              {
                a2[409] = BYTE1(v314[0]);
                *(a2 + 2704) = v117;
                a2[408] = 1;
              }

              goto LABEL_320;
            }

            v176 = LOBYTE(v314[0]) >> 4;
            if (v176 > 4)
            {
              if (v176 == 5)
              {
                a2[417] = BYTE1(v314[0]);
                *(a2 + 2706) = v117;
                a2[416] = 1;
LABEL_320:
                a2[407] = 1;
                goto LABEL_139;
              }

              if (v176 == 6)
              {
                a2[421] = BYTE1(v314[0]);
                *(a2 + 2707) = v117;
                a2[420] = 1;
                goto LABEL_320;
              }
            }

            else
            {
              if (v176 == 2)
              {
                goto LABEL_320;
              }

              if (v176 == 4)
              {
                a2[413] = BYTE1(v314[0]);
                *(a2 + 2705) = v117;
                a2[412] = 1;
                goto LABEL_320;
              }
            }

            EvLog_d("ME_dec_N: Illegal Constell ", v176);
            goto LABEL_320;
          case 10:
            v149 = v300;
            v150 = 8;
            while (*v149)
            {
              v149 += 20;
              if (!--v150)
              {
                v205 = "ME_dec_K: No free slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            *(v149 - 18) = v314[0];
            v164 = BYTE1(v314[0]) & 0xF;
            v165 = Decode_SVid_STE(BYTE2(v314[0]), BYTE1(v314[0]) >> 4, &v313);
            v166 = LODWORD(v313);
            if (LODWORD(v313))
            {
              *(v149 - 14) = LOBYTE(v313);
              *(v149 - 13) = v164;
              v167 = v166 == 2;
              if (v166 == 2)
              {
                v168 = 0;
              }

              else
              {
                v168 = v165;
              }

              if (v167)
              {
                v169 = v165;
              }

              else
              {
                v169 = 0;
              }

              *(v149 - 12) = v168;
              *(v149 - 11) = v169;
              *(v149 - 10) = *(v314 + 3);
              *(v149 - 2) = BYTE7(v314[0]);
              *(v149 - 6) = DWORD2(v314[0]);
              *(v149 - 1) = BYTE12(v314[0]);
              *v149 = 1;
              a2[404] = 1;
            }

            else
            {
              EvLog_v("ME_dec_K: Illegal STE SV:  ID %d  Const %d  Sig %d");
            }

            goto LABEL_139;
          case 11:
            *(a2 + 241) = v314[0];
            *(a2 + 236) = WORD1(v314[0]);
            *(v302 + 7) = *(v314 + 4);
            *(a2 + 246) = WORD6(v314[0]);
            a2[494] = BYTE14(v314[0]);
            *(a2 + 119) = *(v314 + 15);
            *(a2 + 240) = *(&v314[1] + 3);
            ++a2[500];
            *(a2 + 124) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            break;
          case 12:
            *(a2 + 109) = v314[0];
            a2[440] = BYTE4(v314[0]);
            *(a2 + 111) = *(v314 + 5);
            break;
          case 13:
            *v302 = *&v314[0];
            a2[424] = 1;
            break;
          case 14:
            v110 = "ME_dec_R: {R not supported";
            goto LABEL_211;
          case 15:
            v110 = "ME_dec_E:  {E not supported";
LABEL_211:
            EvLog(v110);
            break;
          case 16:
            *v6 = v314[0];
            v6[4] = BYTE4(v314[0]);
            v6[5] = 1;
            break;
          case 17:
            *(v6 + 4) = v314[0];
            *(v6 + 10) = *(v314 + 2);
            *(v6 + 14) = *(v314 + 6);
            *(v6 + 30) = *(&v314[1] + 6);
            *(v6 + 46) = *(&v314[2] + 6);
            *(v6 + 27) = HIWORD(v314[2]);
            *(v6 + 14) = v314[3];
            *(v6 + 30) = WORD2(v314[3]);
            *(v6 + 62) = *(&v314[3] + 6);
            *(a2 + 2811) = *(&v314[3] + 14);
            v6[76] = 1;
            break;
          case 18:
            *(v6 + 40) = v314[0];
            *(v6 + 82) = *(v314 + 2);
            v6[86] = BYTE6(v314[0]);
            *(v6 + 44) = *(v314 + 7);
            v6[90] = BYTE9(v314[0]);
            v6[91] = 1;
            break;
          case 19:
            *(v6 + 46) = v314[0];
            *(v6 + 94) = *(v314 + 2);
            *(v6 + 102) = *(v314 + 10);
            v6[106] = 1;
            break;
          case 20:
            *(a2 + 1410) = *&v314[0];
            *(v6 + 58) = WORD4(v314[0]);
            *(v6 + 118) = *(v314 + 10);
            HIDWORD(v134) = *(&v314[1] + 2);
            LODWORD(v134) = *(&v314[1] + 2);
            *(v6 + 122) = *(v314 + 14);
            *(v6 + 126) = v134 >> 16;
            *(v6 + 130) = *(&v314[1] + 6);
            v135 = v301;
            for (k = 26; k != 92; k += 22)
            {
              v137 = *(v314 + k + 4);
              v138 = *(v314 + k + 5);
              v139 = *(v314 + k + 11);
              v140 = *(v314 + k + 13);
              v141 = *(v314 + k + 14);
              v142 = *(&v314[1] + k);
              v143 = *(&v314[1] + k + 2);
              v144 = *(&v314[1] + k + 3);
              v22 = *(&v314[1] + k + 5);
              *(v135 - 23) = *(v314 + k);
              *(v135 - 19) = v137;
              *(v135 - 17) = v138;
              *(v135 - 15) = *(v314 + k + 7);
              *(v135 - 11) = v139;
              *(v135 - 9) = v142;
              *(v135 - 7) = v143;
              *(v135 - 6) = v140;
              *(v135 - 5) = v141;
              *(v135 - 3) = v144;
              *(v135 - 1) = v22;
              v135 += 24;
            }

            v6 = v290;
            v290[208] = 1;
            break;
          default:
            goto LABEL_176;
        }
      }
    }

    else
    {
LABEL_166:
      if (v20)
      {
        if (v65 == 6)
        {
          v88 = G5K_CompMsgSize[v71] - 4;
          LODWORD(v65) = 4;
        }

        else
        {
          v88 = 0;
        }

        if (v88 + v65 <= 0x60)
        {
          v89 = v65;
          v90 = v71;
          bzero(v314 + v65, v88);
          v71 = v90;
          LODWORD(v65) = v89;
        }

        goto LABEL_134;
      }

      if (!v21)
      {
        goto LABEL_134;
      }

      if (v65 >= 0xB)
      {
        if ((-1431655765 * v65) > 0x55555555)
        {
          EvCrt_v("ME_Decode: ERROR: {D Debug payload is not multiple of 3 bytes: %d ");
LABEL_139:
          v6 = v290;
          goto LABEL_56;
        }

LABEL_176:
        v91 = *v309;
        if (v91 != 66)
        {
          if (v91 == 67)
          {
            v283 = 0;
            v92 = v314;
            while (1)
            {
              v93 = *v92;
              v94 = v93 >> 4;
              v278 = v93 & 0xF;
              v95 = v92[1];
              LODWORD(v313) = 0;
              v96 = v95;
              v97 = Decode_SVid_STE(v95, v93 >> 4, &v313);
              if (LODWORD(v313))
              {
                if (LODWORD(v313) == 2)
                {
                  v98 = 0;
                }

                else
                {
                  v98 = v97;
                }

                if (LODWORD(v313) == 2)
                {
                  v99 = v97;
                }

                else
                {
                  v99 = 0;
                }

                v100 = v92[2];
                v101 = v92[3];
                v102 = (v101 << 16) | (v92[4] << 24);
                v103 = (v92[5] << 16) | (v92[6] << 24);
                v104 = v92[8];
                v105 = v92[7] | ((v104 & 7) << 8);
                v106 = v104 >> 3;
                v274 = v92 + 10;
                v107 = v92[9];
                v108 = v293;
                v109 = 128;
                while (1)
                {
                  v22 = *v108;
                  if (!*v108)
                  {
                    break;
                  }

                  v108 += 16;
                  if (!--v109)
                  {
                    v205 = "G5K_ME_dec_Dbg_C: No more empty slots to store Searched CH SV Info!";
                    goto LABEL_306;
                  }
                }

                *(v108 - 13) = LOBYTE(v313);
                *(v108 - 12) = v278;
                *(v108 - 11) = v98;
                *(v108 - 10) = v99;
                *(v108 - 9) = v102 >> 19;
                *(v108 - 7) = v103 >> 19;
                *(v108 - 5) = v105;
                *(v108 - 3) = v106;
                *(v108 - 2) = v100;
                *(v108 - 1) = v107;
                *v108 = 1;
                if ((v101 & 4) != 0)
                {
                  goto LABEL_139;
                }
              }

              else
              {
                v274 = v92 + 2;
                EvLog_v("G5K_ME_dec_Dbg_C: Illegal STE SV:  ID %d  Const %d  Sig %d", v96, v94, v278);
              }

              v92 = v274;
              ++v283;
              v6 = v290;
              if (v283 == 24)
              {
                goto LABEL_56;
              }
            }
          }

          EvCrt_Illegal_Default("G5K_ME_Unpack_Debug", 0x49Du);
          goto LABEL_139;
        }

        v288 = 0;
        v182 = v314;
        do
        {
          v183 = *v182;
          v280 = v183 & 0xF;
          v184 = v182[1];
          LODWORD(v313) = 0;
          v185 = v184;
          v186 = v183 >> 4;
          v187 = Decode_SVid_STE(v184, v183 >> 4, &v313);
          if (LODWORD(v313))
          {
            if (LODWORD(v313) == 2)
            {
              v188 = 0;
            }

            else
            {
              v188 = v187;
            }

            if (LODWORD(v313) == 2)
            {
              v189 = v187;
            }

            else
            {
              v189 = 0;
            }

            v190 = v182[3];
            v191 = (v190 << 8);
            v192 = v182[2] | ((v190 & 0xF) << 8);
            v193 = v182[4];
            v194 = v182[5];
            v195 = v194 & 0x3F;
            v196 = v194 >> 6;
            v197 = *(v182 + 3);
            v198 = v182[9];
            v199 = v182[8] | ((v198 & 0x1F) << 8);
            v200 = v198 >> 6;
            LOWORD(v198) = v182[10];
            v201 = v182[11];
            v182 += 12;
            v202 = v198 & 0xF8FF | ((v201 & 7) << 8);
            v22 = v201 >> 3;
            v203 = v294;
            v204 = 48;
            while (*v203)
            {
              v203 += 20;
              if (!--v204)
              {
                v205 = "G5K_ME_dec_Dbg_B: No more empty slots to store Search Channel Top Candidates Info!";
LABEL_306:
                EvLog(v205);
                goto LABEL_139;
              }
            }

            *(v203 - 17) = LOBYTE(v313);
            *(v203 - 16) = v280;
            *(v203 - 15) = v188;
            *(v203 - 14) = v189;
            *(v203 - 13) = v192;
            *(v203 - 11) = v193;
            *(v203 - 10) = v195;
            *(v203 - 9) = v196;
            *(v203 - 8) = v200;
            *(v203 - 7) = v199;
            *(v203 - 5) = v197;
            *(v203 - 3) = v202;
            *(v203 - 1) = v22;
            *v203 = 1;
            if (v191 < 0)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v182 += 2;
            EvLog_v("G5K_ME_dec_Dbg_B: Illegal STE SV:  ID %d  Const %d  Sig %d", v185, v186, v280);
          }

          ++v288;
          v6 = v290;
        }

        while (v288 != 20);
      }
    }

LABEL_56:
    v7 = v308;
  }

  else
  {
    v23 = *(a2 + 197) + 1;
    *(a2 + 197) = v23;
    EvCrt_v("ME_Dec: CheckSum Err %d >%s", v23, a2);
    v24 = *(a2 + 112);
    if (v24 > 0xBB8)
    {
      if (v24 < 0xFFFFF447)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (*(a2 + 197) < 4u)
      {
        goto LABEL_57;
      }

      EvCrt_v("ME_Dec: GN_GPS_Hard_Reset_GNB >4 Checksum Errors in <=3000 ms !");
      GN_GPS_Hard_Reset_GNB();
    }

    *(a2 + 197) = 0;
  }

LABEL_57:
  if (g_Enable_GNB_Debug)
  {
    if (*(a2 + 2791) != *(a2 + 2792))
    {
      v35 = xmmword_2A1926A80;
      v36 = *xmmword_2A1926A80;
      v37 = 36;
      v38 = 1u;
      do
      {
        *v35 = v36 + 1;
        *v36 = v37;
        v36 = *v35;
        if (*v35 >= v35[3])
        {
          v36 = v35[2];
          *v35 = v36;
        }

        v37 = aT_0[v38++];
      }

      while (v38 != 4);
      sprintf_1u(v35, *(a2 + 2791));
      v39 = (*v35)++;
      *v39 = 32;
      if (*v35 >= v35[3])
      {
        *v35 = v35[2];
      }

      sprintf_1u(v35, *(a2 + 128));
      v40 = (*v35)++;
      *v40 = 10;
      v41 = *v35;
      if (*v35 >= v35[3])
      {
        v41 = v35[2];
        *v35 = v41;
      }

      *v41 = 0;
      *(a2 + 2792) = *(a2 + 2791);
    }

    GNB_Debug_BlockMove(a2, (v3 - a2));
  }

  a2[392] = 0;
  v3 = a2;
  if (a2[402] != 1)
  {
    goto LABEL_11;
  }

  v42 = *a1;
  v43 = a1[1];
  if (v43 == *a1)
  {
    goto LABEL_89;
  }

  if (v42 >= v43)
  {
    v44 = (v42 - v43);
  }

  else
  {
    v44 = (v42 - *(a1 + 4) + *(a1 + 6) - v43);
  }

  if (v44 >= 4)
  {
    EvLog_nd("ME_Dec: More data after {T message", 3, v22, v43, *a1, v44);
    v42 = *a1;
  }

  if (v43 == v42)
  {
LABEL_88:
    if ((*v311 & 1) == 0)
    {
      goto LABEL_356;
    }

LABEL_89:
    if (*v310 != 1)
    {
      goto LABEL_356;
    }

    v53 = *(a2 + 128);
    if (*(a2 + 112) == v53)
    {
      goto LABEL_356;
    }

    EvLog_v("ME_Dec: Inconsistent TTicks %u %u", *(a2 + 112), v53);
    goto LABEL_100;
  }

  v45 = 0;
  while (1)
  {
    v47 = *v43++;
    v46 = v47;
    if (v43 >= a1[3])
    {
      v43 = a1[2];
    }

    v48 = (v46 == 123) | v45;
    if (v46 != 123 && ((v45 ^ 1) & 1) == 0)
    {
      v49 = v46 - 72;
      v50 = v49 > 0xC;
      v51 = (1 << v49) & 0x1029;
      _ZF = v50 || v51 == 0;
      v48 = v45;
      if (!_ZF)
      {
        break;
      }
    }

    v45 = v48;
    if (v43 == v42)
    {
      goto LABEL_88;
    }
  }

  if ((*v311 & 1) == 0 || *v310 != 1 || a2[406] || a2[410] || a2[414] || a2[418] || a2[422])
  {
    EvCrt_nd("ME_Dec: Throughput error, found next data set", 3, v22, *(a2 + 112), *(a2 + 128), v44);
LABEL_100:
    *&v314[0] = 0;
    a2[412] = 0;
    a2[416] = 0;
    a2[420] = 0;
    a2[424] = 0;
    *(a2 + 413) = 0;
    *(a2 + 417) = 0;
    *(a2 + 421) = 0;
    *v311 = 0;
    v54 = a2;
    v55 = 3392;
    v311[8] = 0;
    do
    {
      v56 = &a2[v55];
      v56[32] = 0;
      *v56 = 0uLL;
      *(v56 + 1) = 0uLL;
      *(v54 + 94) = 0;
      *(v54 + 45) = 0uLL;
      *(v54 + 46) = 0uLL;
      *(v54 + 44) = 0uLL;
      v57 = v54 + 8128;
      *(v54 + 508) = 0uLL;
      *(v54 + 509) = 0uLL;
      *(v54 + 510) = 0uLL;
      v55 += 36;
      v54 += 56;
      *(v57 + 45) = 0;
    }

    while (v55 != 5120);
    for (m = 540; m != 700; m += 20)
    {
      v59 = &a2[m];
      *v59 = 0;
      *(v59 + 1) = 0;
      *(v59 + 15) = 0;
    }

    *v7 = 0;
    API_Get_UTC_Cor(1, v314);
    if (*v314 <= 0.0)
    {
      v60 = -0.5;
    }

    else
    {
      v60 = 0.5;
    }

    v61 = *v314 + v60;
    if (*v314 + v60 <= 2147483650.0)
    {
      if (v61 >= -2147483650.0)
      {
        v62 = v61;
      }

      else
      {
        LOBYTE(v62) = 0;
      }
    }

    else
    {
      LOBYTE(v62) = -1;
    }

    v7[1] = v62;
    v3 = a2;
    goto LABEL_11;
  }

  EvCrt_nd("ME_Dec: Throughput error, more data follows", 3, v22, *(a2 + 112), *(a2 + 128), v44);
LABEL_356:
  v3 = a2;
LABEL_357:
  *(a2 + 48) = v3;
  v241 = *MEMORY[0x29EDCA608];
}

void KF_ApplyCorrectionsFromKalmanFullStates(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  Copy_SubMat_from_Mat(1.0, 32, a1, 0, 0, 21, 1u, 32, v3);
  Set_Mat_Size(0x20, v3, 24, 1);
  v4 = *(a1 + 200);
  *&v5 = *(a1 + 216);
  INS_ApplyCorrectionsFromKalman(a1 + 16664, v3);
  Set_Mat_Const(0x15, 1u, 0x20, v3, 0.0);
  Copy_SubMat_to_Mat(1.0, 32, v3, 0, 0, 32, a1);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v2 = *MEMORY[0x29EDCA608];
}

void KF_predictKF(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  Mult_Mat_Mat(1024, a2, 32, a1, 32, a1);
  Mult_Mat_Mat(1024, a2, 1024, a1 + 264, 1024, a1 + 264);
  Mult_Mat_MatT(1024, a1 + 264, 1024, a2, 1024, a1 + 264);
  v6 = *MEMORY[0x29EDCA608];

  Add_Mat(1024, (a1 + 264), 1024, a3, 0x400, (a1 + 264));
}

void KF_createSystemModelMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v6;
  v33 = *MEMORY[0x29EDCA608];
  Set_Mat_Const(*(v6 + 17960), *(v6 + 17960), 0x400, v7, 0.0);
  bzero(v28, 0x2008uLL);
  Set_Mat_I(0xF, 0x400, v28, 1.0);
  if (v10)
  {
    v14 = 0;
    v15 = 6;
  }

  else
  {
    bzero(v27, 0x2008uLL);
    bzero(v26, 0x2008uLL);
    bzero(v25, 0x2008uLL);
    v16 = *(v13 + 17144);
    v17 = *(v13 + 17152);
    memset(v32, 0, 32);
    Mult_Mat_Mat(9, v13 + 16672, 3, v13 + 17160, 3, v32);
    Mult_Mat_scalar(-1.0, 3, v32, 3, v32);
    memset(v31, 0, sizeof(v31));
    skewSimMat(v32, v31);
    memset(v30, 0, sizeof(v30));
    Mult_Mat_MatT(3, v13 + 17008, 3, v13 + 17008, 9, v30);
    Norma2_Vec(3, (v13 + 17008));
    v19 = v17 * v18;
    if (fabs(v19) <= 1.0e-30)
    {
      if (g_FPE_LogSeverity)
      {
        v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v21 = *(g_TCU + 8);
        }

        else
        {
          v21 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_createSystemModelInsMatrix", 443, v20, v21, v19, 1.0e-30);
      }

      g_FPE_AssertFlag = 1;
      v19 = 1.0;
    }

    Mult_Mat_scalar((v16 + v16) / v19, 9, v30, 9, v30);
    v15 = 15;
    Set_Mat_Const(0xF, 0xFu, 0x400, v27, 0.0);
    memset(v29, 0, sizeof(v29));
    Set_Mat_I(3, 9, v29, 1.0);
    Copy_SubMat_to_Mat(-1.0, 9, (v13 + 17368), 0, 0, 1024, v27);
    Copy_SubMat_to_Mat(1.0, 9, (v13 + 16672), 0, 12, 1024, v27);
    Copy_SubMat_to_Mat(1.0, 9, v31, 3, 0, 1024, v27);
    Copy_SubMat_to_Mat(-2.0, 9, (v13 + 17368), 3, 3, 1024, v27);
    Copy_SubMat_to_Mat(1.0, 9, v30, 3, 6, 1024, v27);
    Copy_SubMat_to_Mat(1.0, 9, (v13 + 16672), 3, 9, 1024, v27);
    Copy_SubMat_to_Mat(1.0, 9, v29, 6, 3, 1024, v27);
    Mult_Mat_Mat(1024, v27, 1024, v27, 1024, v26);
    Mult_Mat_Mat(1024, v27, 1024, v26, 1024, v25);
    Add_Mat_ScalarMult(v12, 1024, v28, 1024, v27, 0x400, v28);
    Add_Mat_ScalarMult(v12 * 0.5 * v12, 1024, v28, 1024, v26, 0x400, v28);
    Add_Mat_ScalarMult(v12 * 0.166666667 * v12 * v12, 1024, v28, 1024, v25, 0x400, v28);
    v14 = 18;
  }

  Copy_SubMat_to_Mat(1.0, 1024, v28, 0, 0, 1024, v8);
  memset(v27, 0, 80);
  Set_Mat_I(3, 9, v27, 1.0);
  Copy_SubMat_to_Mat(1.0, 9, v27, 15, v15, 1024, v8);
  Copy_SubMat_to_Mat(1.0, 9, v27, 18, v14, 1024, v8);
  Copy_SubMat_to_Mat(1.0, 9, v27, 21, 21, 1024, v8);
  memset(v26, 0, 80);
  Set_Mat_I(2, 9, v26, 1.0);
  Copy_SubMat_to_Mat(1.0, 9, v27, 24, 24, 1024, v8);
  v22 = v8[1];
  *&v8[2 * (27 * v22 + 27) + 2] = 0x3FF0000000000000;
  v23 = 28 * v22;
  *&v8[2 * (v23 + 28) + 2] = 0x3FF0000000000000;
  *&v8[2 * (29 * v22 + 29) + 2] = 0x3FF0000000000000;
  *&v8[2 * (30 * v22 + 30) + 2] = 0x3FF0000000000000;
  *&v8[2 * (31 * v22 + 31) + 2] = 0x3FF0000000000000;
  *&v8[2 * (v23 + 27) + 2] = v12;
  v24 = *MEMORY[0x29EDCA608];
}

void KF_getVelocityCorrectionFromLeverArm(uint64_t a1, int *a2, int *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  memset(v21, 0, sizeof(v21));
  Copy_Mat(9, (a1 + 16672), 9, v21);
  memset(v20, 0, sizeof(v20));
  Copy_Mat(9, (a1 + 17288), 9, v20);
  memset(v19, 0, sizeof(v19));
  Mult_Mat_MatT(9, v21, 9, v20, 9, v19);
  memset(v18, 0, sizeof(v18));
  extractOfromC(v19, v18);
  v16 = 0u;
  v17 = 0u;
  Set_Mat_Const(3, 1u, 3, &v16, 0.0);
  *(&v17 + 1) = 0x3FF0000000000000;
  memset(v15, 0, sizeof(v15));
  Mult_MatT_Mat(9, a1 + 16832, 3, &v16, 3, v15);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  Copy_SubMat_from_Mat(1.0, 32, a1, 21, 0, 3, 1u, 3, v13);
  Mult_Mat_Mat(9, a1 + 16672, 3, v13, 3, v14);
  v6 = Dot_Vec_Vec(3, v14, 3, v15);
  memset(v12, 0, sizeof(v12));
  Add_Mat_ScalarMult(-v6, 3, v15, 3, v14, 3, v12);
  v7 = Norma_Vec(3, v12);
  Mult_Mat_scalar(1.0 / (v7 + 0.0000001), 3, v12, 3, v12);
  v8 = Dot_Vec_Vec(3, v12, 3, v18);
  v9 = v8 + v8;
  memset(v11, 0, sizeof(v11));
  Cross_Vec_Vec(3, v14, 3, v15, 3, v11);
  Mult_Mat_scalar(v9, 3, v11, 3, a3);
  Mult_Mat_scalar(*(a1 + 17720), 3, a3, 3, a2);
  v10 = *MEMORY[0x29EDCA608];
}

BOOL KF_checkConstAngle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v9 = v6;
  v31 = *MEMORY[0x29EDCA608];
  memset(v30, 0, sizeof(v30));
  Set_Mat_Const(3, 3u, 9, v30, 0.0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  Set_Mat_Const(3, 5u, 0x24, v28, 0.0);
  memset(v27, 0, sizeof(v27));
  Mult_Mat_Mat(9, v9 + 16832, 9, v9 + 16672, 9, v27);
  memset(v26, 0, sizeof(v26));
  Copy_Mat(9, (v9 + 17288), 9, v26);
  memset(v25, 0, sizeof(v25));
  Mult_Mat_Mat(9, v9 + 16832, 9, v26, 9, v25);
  bzero(v24, 0x2008uLL);
  Set_Mat_Const(3, 0x20u, 0x400, v24, 0.0);
  memset(v23, 0, sizeof(v23));
  Mult_Mat_MatT(9, v27, 9, v25, 9, v23);
  Copy_SubMat_to_Mat(1.0, 9, v23, 0, 0, 1024, v24);
  Copy_SubMat_to_Mat(-1.0, 9, v23, 0, 18, 1024, v24);
  memset(v22, 0, sizeof(v22));
  Mult_Mat_MatT(9, v27, 9, v25, 9, v22);
  memset(v21, 0, sizeof(v21));
  extractOfromC(v22, v21);
  memset(v20, 0, sizeof(v20));
  Set_Mat_I(3, 9, v20, 0.01);
  *(v20 + (2 * DWORD1(v20[0]) + 2) + 1) = 0x3F9EB851EB851EB8;
  bzero(v19, 0x2008uLL);
  Mult_Mat_Mat(1024, v24, 1024, v9 + 264, 1024, v19);
  Mult_Mat_MatT(1024, v19, 1024, v24, 1024, v19);
  Add_Mat(1024, v19, 9, v20, 0x400, v19);
  memset(v18, 0, sizeof(v18));
  Copy_Mat_diag_to_Vec(1024, v19, 0, 0, 3, v18);
  Sqrt_Mat(3, v18, 3, v18);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  ElDiv_Mat_Mat(3, v21, 3, v18, 0x20, v16);
  v10 = Norma_Vec(32, v16);
  if (v10 > v8)
  {
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v12 = *(g_TCU + 8);
      }

      else
      {
        v12 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: eventsLog = {time:%f, type:'%s', mssg:'%s at time %f'}", "KF_checkConstAngle", 2928, v11, v12, *(v9 + 17192), "UnmountDetected", "detected movement", *(v9 + 17192));
    }

    v13 = *(v9 + 17192);
    *(v9 + 48744) = v13;
    Shift_Right_Vec(v13, 6, (v9 + 67664), 6, v9 + 67664);
  }

  result = v10 > v8;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void KF_rotateVi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v17 = *MEMORY[0x29EDCA608];
  memset(v16, 0, sizeof(v16));
  Copy_Mat(9, v6 + 4168, 9, v16);
  memset(v15, 0, sizeof(v15));
  Copy_Mat(9, v6 + 4322, 9, v15);
  memset(v14, 0, sizeof(v14));
  Mult_MatT_Mat(9, v16, 9, v15, 9, v14);
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  Copy_SubMat_from_Mat(1.0, 32, v6, 21, 0, 3, 1u, 3, v12);
  Mult_Mat_Mat(9, v15, 3, v12, 3, v13);
  Mult_MatT_Mat(9, v16, 3, v13, 3, v12);
  Copy_SubMat_to_Mat(1.0, 3, v12, 21, 0, 32, v6);
  bzero(v11, 0x2008uLL);
  Copy_SubMat_from_Mat(1.0, 1024, v6 + 66, 21, 0, 3, v6[67], 1024, v11);
  Mult_Mat_Mat(9, v14, 1024, v11, 1024, v11);
  Copy_SubMat_to_Mat(1.0, 1024, v11, 21, 0, 1024, v6 + 66);
  Copy_SubMat_from_Mat(1.0, 1024, v6 + 66, 0, 21, v6[67], 3u, 1024, v11);
  Mult_Mat_MatT(1024, v11, 9, v14, 1024, v11);
  Copy_SubMat_to_Mat(1.0, 1024, v11, 0, 21, 1024, v6 + 66);
  Copy_SubMat_from_Mat(1.0, 1024, v6 + 66, 21, 21, 3, 3u, 1024, v11);
  memset(v10, 0, sizeof(v10));
  Set_Mat_I(3, 9, v10, 0.05);
  Add_Mat(1024, v11, 9, v10, 0x400, v11);
  Copy_SubMat_to_Mat(1.0, 1024, v11, 21, 21, 1024, v6 + 66);
  bzero(v9, 0x2008uLL);
  Copy_SubMat_from_Mat(1.0, 1024, v6 + 66, 9, 9, 3, 3u, 1024, v9);
  memset(v8, 0, sizeof(v8));
  Copy_SubMat_from_Mat(1.0, 1024, v6 + 10136, 9, 9, 3, 3u, 9, v8);
  Add_Mat_ScalarMult(0.01, 1024, v9, 9, v8, 0x400, v9);
  Copy_SubMat_to_Mat(1.0, 1024, v9, 9, 9, 1024, v6 + 66);
  v7 = *MEMORY[0x29EDCA608];
}

void KF_createMeasurementNoiseCovMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v9;
  v87 = *MEMORY[0x29EDCA608];
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  ElMult_Mat_Mat(6, v20, 6, v20, 6, v84);
  Set_Mat_Const((v21[1] * *v21), v21[1] * *v21, 0x400, v13, 0.0);
  Copy_Vec_to_Mat_diag(6, v84, 0, 0, 1, 1, 1024, v13);
  Set_Mat_Const(*v19, v19[1], 6, v11, 1.0);
  bzero(v83, 0x2008uLL);
  Mult_Mat_Mat(1024, v17, 1024, v24 + 264, 1024, v83);
  Mult_Mat_MatT(1024, v83, 1024, v17, 1024, v83);
  bzero(v82, 0x2008uLL);
  Add_Mat(1024, v83, 1024, v13, 0x400, v82);
  bzero(v81, 0x2008uLL);
  Copy_Mat_diag_to_Vec(1024, v82, 0, 0, 1024, v81);
  Sqrt_Mat(1024, v81, 0x400, v81);
  ElDiv_Mat_Mat(6, v19, 1024, v81, 6, a9);
  memset(v80, 0, sizeof(v80));
  memset(v79, 0, sizeof(v79));
  memset(v78, 0, sizeof(v78));
  if (v23 > 8)
  {
    switch(v23)
    {
      case 9:
        Mult_MatT_Mat(9, v24 + 16832, 1024, v13, 1024, v13);
        Mult_Mat_Mat(1024, v13, 9, v24 + 16832, 1024, v13);
        Add_Mat(1024, v83, 1024, v13, 0x400, v82);
        bzero(v86, 0x2008uLL);
        Invert_Mat(1024, v82, 1024, v86, v35, v36);
        Mult_Mat_Mat(1024, v86, 6, v19, 3, v80);
        Mult_MatT_Mat(6, v19, 3, v80, 3, v80);
        v37 = *(v80 + 1);
        if (*(v80 + 1) < 0.0)
        {
          if (g_FPE_LogSeverity)
          {
            v38 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v39 = *(g_TCU + 8);
            }

            else
            {
              v39 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KF_createMeasurementNoiseCovMatrix", 1275, v38, v39, v37);
          }

          g_FPE_AssertFlag = 1;
          v37 = 1.0;
        }

        v63 = sqrt(v37);
        Set_Mat_Const(1, 1u, 6, a9, v63);
        if (v63 < 5.0)
        {
          goto LABEL_73;
        }

        break;
      case 10:
        memset(v86, 0, 80);
        createC_e_map((v15 + 112), (v15 + 144), v24 + 16832, v86, 0);
        memset(v77, 0, sizeof(v77));
        Copy_SubMat_from_Mat(1.0, 1024, v13, 1, 1, 3, 3u, 9, v77);
        Mult_MatT_Mat(9, v86, 9, v77, 9, v77);
        Mult_Mat_Mat(9, v77, 9, v86, 9, v77);
        Copy_SubMat_to_Mat(1.0, 9, v77, 1, 1, 1024, v13);
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        if (fabs(*(a9 + 8)) < 5.0)
        {
          goto LABEL_73;
        }

        break;
      case 11:
        Mult_Mat_scalar(40.0, 1024, v13, 0x400, v13);
        goto LABEL_73;
      default:
        goto LABEL_28;
    }

    v58 = *v19;
    v59 = v19[1];
    v60 = 0.0;
LABEL_52:
    Set_Mat_Const(v58, v59, 6, v11, v60);
    goto LABEL_73;
  }

  if (v23 == 1)
  {
    Set_Mat_Const(2, 1u, 6, v11, 1.0);
    if (*(v24 + 40529) == 1)
    {
      v30 = *(a9 + 8);
      v31 = -v30;
      if (v30 >= 0.0)
      {
        v31 = *(a9 + 8);
      }

      if (v31 > 3.0)
      {
        *(v11 + 8) = 0;
      }

      v32 = *(a9 + 16);
      if (v32 < 0.0)
      {
        v32 = -v32;
      }

      if (v32 > 3.0)
      {
        *(v11 + 16) = 0;
      }

      v33 = *(v24 + 67720);
      if (v33 >= 8)
      {
        if (g_FPE_LogSeverity)
        {
          v61 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v62 = *(g_TCU + 8);
          }

          else
          {
            v62 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f SES does not support value %u", "KF_createRweightedGNSS", 1151, v61, v62, *(v24 + 67720));
        }

        g_FPE_AssertFlag = 1;
        v34 = 0.0;
      }

      else
      {
        v34 = dbl_29972AC80[v33];
      }

      if (*(a9 + 8) < 0.0)
      {
        *(v13 + 8) = *(v13 + 8) + *(v13 + 8);
        if (*(a9 + 8) < v34)
        {
          *(v11 + 8) = 0;
          if (*(v24 + 40531) == 1 && *(a9 + 8) < -10.0)
          {
            *(v11 + 16) = 0;
          }
        }
      }
    }

    goto LABEL_73;
  }

  if (v23 == 5)
  {
    v42 = 3;
    Norma2_Vec(3, (v24 + 16944));
    v48 = 0;
    v50 = v49 * 0.050625;
    v51 = v13 + 8;
    v52 = *(v13 + 4) + 1;
    do
    {
      if (*(v51 + 8 * v48) < v50)
      {
        *(v51 + 8 * v48) = v50;
      }

      v48 += v52;
      --v42;
    }

    while (v42);
    if ((*(v24 + 40530) & 1) != 0 && KF_checkConstAngle(v24, v43, v44, v45, v46, v47))
    {
      KF_rotateVi(v24, v53, v54, v55, v56, v57);
      Set_Mat_Const(*v19, v19[1], 6, v11, 0.0);
LABEL_64:
      *(v24 + 57152) = 0x3FF0000000000000;
      goto LABEL_73;
    }

    v58 = *v19;
    v59 = v19[1];
    v60 = 1.0;
    goto LABEL_52;
  }

  if (v23 != 6)
  {
LABEL_28:
    if (g_FPE_LogSeverity)
    {
      v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v41 = *(g_TCU + 8);
      }

      else
      {
        v41 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f measType = %d is not supported!", "KF_createMeasurementNoiseCovMatrix", 1321, v40, v41, v23);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_73;
  }

  Copy_SubMat_from_Mat(1.0, 6, v19, 0, 0, 3, 1u, 3, v79);
  Copy_SubMat_from_Mat(1.0, 1024, v82, 0, 0, 3, 3u, 9, v78);
  bzero(v86, 0x2008uLL);
  Invert_Mat(9, v78, 1024, v86, v25, v26);
  Mult_Mat_Mat(1024, v86, 3, v79, 3, v80);
  Mult_MatT_Mat(3, v79, 3, v80, 3, v80);
  v27 = *(v80 + 1);
  if (*(v80 + 1) < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v29 = *(g_TCU + 8);
      }

      else
      {
        v29 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KF_createMeasurementNoiseCovMatrix", 1253, v28, v29, v27);
    }

    g_FPE_AssertFlag = 1;
    v27 = 1.0;
  }

  v64 = *(v15 + 112);
  Set_Mat_Const(6, 1u, 6, v11, 1.0);
  if (sqrt(v27) >= 3.0 && v64 >= 4.0)
  {
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
  }

  if (*(v24 + 40530) == 1 && KF_checkConstAngle(v24, v65, v66, v67, v68, v69))
  {
    KF_rotateVi(v24, v71, v72, v73, v74, v75);
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    goto LABEL_64;
  }

LABEL_73:
  v76 = *MEMORY[0x29EDCA608];
}

uint64_t KF_reduceSvInd(unsigned int a1, unsigned int a2)
{
  if (a2 == 4)
  {
    v4 = a1 - 192;
  }

  else
  {
    v4 = a1;
  }

  v9 = *MEMORY[0x29EDCA608];
  if (a2 > 4 || (v4 - 38) <= 0xFFFFFFDA)
  {
    if (g_FPE_LogSeverity)
    {
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v6 = *(g_TCU + 8);
      }

      else
      {
        v6 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f sv_reduced index %d (sv=%d) > SvTable size %d (or 0)! ", "KF_reduceSvInd", 1483, v5, v6, v4, a1, a2);
    }

    v4 = 0;
    g_FPE_AssertFlag = 1;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t KF_ApplySingleMeas(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v200 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v198 = v14;
  v16 = v15;
  v17 = v6;
  v295 = *MEMORY[0x29EDCA608];
  v18 = (v6 + 117096);
  v19 = v6 + 67376;
  v201 = v6 + 40488;
  v20 = v6 + 17016;
  v21 = *v15;
  v22 = *(v15 + 8);
  v204 = v23;
  Set_Mat_Const(1, 1u, 6, v23, -1.0);
  v199 = v13;
  Set_Mat_Const(1, 1u, 6, v13, -999.0);
  *v11 = v22;
  v203 = v19;
  if (*(v17 + 17192) >= *(v19 + 272))
  {
    *(v19 + 272) = 0x7FF8000000000000;
    Set_Mat_Const(0x20, 1u, 0x20, (v17 + 67384), 1.0);
  }

  if (v22 <= 2)
  {
    if (!v22)
    {
      v58 = v21 - *(v17 + 17192);
      INS_ApplyImuSample(v17 + 16664, (v16 + 16), v21);
      Set_Mat_Const(*(v20 + 944), *(v20 + 944), 0x400, (v17 + 75928), 0.0);
      v289 = 0;
      v288 = 0u;
      v287 = 0u;
      v286 = 0u;
      v285 = 0u;
      v284 = 0u;
      v283 = 0u;
      v282 = 0u;
      v281 = 0u;
      v280 = 0u;
      v279 = 0u;
      v278 = 0u;
      v277 = 0u;
      v276 = 0u;
      v275 = 0u;
      memset(__x, 0, sizeof(__x));
      Set_Mat_Const(*(v20 + 944), 1u, 0x20, __x, 0.0);
      v59 = Norma_Vec(3, (v17 + 16976));
      if (v59 >= 8.33333333)
      {
        v60 = 1.0;
        if (v59 <= 16.6666667)
        {
          v60 = (v59 + -8.33333333) * 0.7 / 8.33333333 + 0.3;
        }
      }

      else
      {
        v60 = 0.3;
      }

      v202 = v60;
      *&v260 = 0;
      v259 = 0u;
      memset(v258, 0, sizeof(v258));
      Copy_Mat(6, (v17 + 17792), 6, v258);
      *(v258 + 8) = vmulq_n_f64(*(v258 + 8), v202);
      v258[1].f64[1] = v202 * v258[1].f64[1];
      ElMult_Mat_Mat(6, v258, 6, v258, 6, v258);
      Mult_Mat_scalar(v58, 6, v258, 6, v258);
      Copy_Vec_to_Mat_diag(6, v258, 0, 0, 1, 0, 32, __x);
      *&v290 = 0x100000003;
      *(&v290 + 1) = v58 * 0.000001;
      *&v291 = v58 * 0.000001;
      *(&v291 + 1) = v58 * 0.000001;
      Copy_Vec_to_Mat_diag(3, &v290, 6u, 0, 1, 0, 32, __x);
      *&v239 = 0;
      v237 = 0u;
      v238 = 0u;
      v236 = 0u;
      Exp_Mat(v58 * -2.0, 6, (v20 + 888), 6, &v236);
      *&v244 = 0;
      v243 = 0u;
      v242 = 0u;
      v241 = 0u;
      Set_Mat_Const(*(v20 + 888), *(v20 + 892), 6, &v241, 1.0);
      Sub_Mat(6, &v241, 6, &v236, 6, &v236);
      ElMult_Mat_Mat(6, &v236, 6, (v17 + 17848), 6, &v236);
      Copy_Vec_to_Mat_diag(6, &v236, 9u, 0, 1, 0, 32, __x);
      v65 = v58 * 0.00001;
      if (*(v17 + 34368))
      {
        v65 = v58 * 0.00001 * 10.0;
      }

      *&v216 = 0x100000003;
      *(&v216 + 1) = v65;
      *&v217 = v65;
      *(&v217 + 1) = v65;
      Copy_Vec_to_Mat_diag(3, &v216, 0x15u, 0, 1, 0, 32, __x);
      *&v287 = v58 * 0.09 * 100.0;
      *(&v287 + 1) = v58 * 0.09;
      if (*(v17 + 17192) >= 0.0)
      {
        v66 = v58 * 0.000001;
      }

      else
      {
        v66 = v58;
      }

      Set_Mat_Const(3, 1u, 3, &v216, v66);
      Copy_Vec_to_Mat_diag(3, &v216, 0x1Du, 0, 1, 0, 32, __x);
      *(&v286 + 1) = v58 * 0.0001;
      Copy_Vec_to_Mat_diag(32, __x, 0, 0, 1, 1, 1024, (v17 + 75928));
      v67 = *(v19 + 272);
      Diag_Mult_Mat(1024, (v17 + 75928), 32, (v17 + 67384));
      KF_createSystemModelMatrix(v17, 0, v17 + 67728, v68, v69, v70);
      v27 = v17 + 67728;
      v28 = (v17 + 75928);
      goto LABEL_67;
    }

    if (v22 == 2)
    {
      v29 = *(v16 + 136);
      if (v29 != 0.0)
      {
        *(v17 + 232) = *(v17 + 232) - v29;
      }

      *&v276 = 0;
      v275 = 0u;
      memset(__x, 0, sizeof(__x));
      KF_sendMeas2Checker(v17, 2, v16 + 16, 0, 0, 0, __x);
      goto LABEL_129;
    }
  }

  else
  {
    v26 = 0;
    if ((v22 - 3) < 2 || v22 == 12)
    {
      goto LABEL_27;
    }

    if (v22 == 8)
    {
      if (v21 < *(v17 + 17192))
      {
LABEL_129:
        KF_LogStatistics(v17, v16, v204);
LABEL_130:
        v41 = 1;
        goto LABEL_131;
      }

      Copy_Mat(3, (v17 + 17008), 3, (v17 + 17224));
      Copy_Mat(9, (v17 + 16672), 9, (v17 + 17288));
      v27 = v17 + 17968;
      v28 = (v17 + 26168);
LABEL_67:
      KF_predictKF(v17, v27, v28);
      goto LABEL_129;
    }
  }

  v30 = *(v17 + 17192);
  v26 = v21 >= v30;
  if (v22 == 1)
  {
    if (*(v201 + 40) == 1)
    {
      v31 = *(v16 + 132);
      v32 = KF_reduceSvInd(*(v16 + 128), v31);
      if (!v32)
      {
        goto LABEL_26;
      }

      v33 = v32 + 37 * v31 - 1;
      v34 = *(v17 + 8 * v33 + 34568);
      v35 = *(v17 + v33 + 34376);
      *(__x + 8) = *(v17 + 24 * v33 + 36048);
      v36 = *(v17 + 24 * v33 + 36064);
      *&__x[0] = 0x100000003;
      *(&__x[1] + 1) = v36;
      memset(v258, 0, sizeof(v258));
      Sub_Mat(3, __x, 3, (v17 + 17008), 3, v258);
      v37 = Norma_Vec(3, v258);
      v38 = *(v17 + 17192);
      v39 = v34 - v38;
      if (v34 - v38 < 0.0)
      {
        v39 = -(v34 - v38);
      }

      if (v38 >= 0.0)
      {
        v40 = v39 <= 60.0 && v37 <= 8.0;
        if (v40 && (v35 & 1) != 0)
        {
LABEL_26:
          v41 = 1;
          Set_Mat_Const(2, 1u, 6, v204, 2.0);
          KF_LogStatistics(v17, v16, v204);
          goto LABEL_131;
        }
      }
    }

    if (v21 < v30)
    {
      goto LABEL_129;
    }

    v197 = v20;
    v42 = 0;
    v195 = 1;
LABEL_75:
    v71 = (v17 + 100592);
    v72 = *(v16 + 132);
    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v236 = 0u;
    Transpose_Mat(9, v17 + 16672, 9, &v236, v24, v25);
    *&v235[0] = 0x100000003;
    *(v235 + 8) = *(v17 + 176);
    *(&v235[1] + 1) = *(v17 + 192);
    v245 = 0u;
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v241 = 0u;
    Set_Mat_I(3, 9, &v241, 1.0);
    v196 = v42;
    v194 = v9;
    if (v22 <= 8)
    {
      switch(v22)
      {
        case 1:
          v289 = 0;
          v288 = 0u;
          v287 = 0u;
          v286 = 0u;
          v285 = 0u;
          v284 = 0u;
          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v280 = 0u;
          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v276 = 0u;
          v275 = 0u;
          memset(__x, 0, sizeof(__x));
          v273 = 0;
          v272 = 0u;
          v271 = 0u;
          v270 = 0u;
          v269 = 0u;
          v268 = 0u;
          v267 = 0u;
          v266 = 0u;
          v265 = 0u;
          v264 = 0u;
          v263 = 0u;
          v262 = 0u;
          v261 = 0u;
          v260 = 0u;
          v259 = 0u;
          memset(v258, 0, sizeof(v258));
          Sub_Mat(3, (v17 + 17008), 3, (v16 + 136), 0x20, __x);
          v81 = Norma_Vec(32, __x);
          if (fabs(v81) <= 1.0e-30)
          {
            if (g_FPE_LogSeverity)
            {
              v82 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v83 = *(g_TCU + 8);
              }

              else
              {
                v83 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_createMeasurementMatrix", 646, v82, v83, v81, 1.0e-30);
            }

            g_FPE_AssertFlag = 1;
            v81 = 1.0;
          }

          Transpose_Mat(32, __x, 32, v258, v79, v80);
          Mult_Mat_scalar(-1.0 / v81, 32, v258, 0x20, v258);
          Set_Mat_Const(2, 0x20u, 0x400, (v17 + 84184), 0.0);
          Copy_SubMat_to_Mat(1.0, 32, v258, 0, 6, 1024, (v17 + 84184));
          v118 = v17 + 84192;
          if (v72 == 4)
          {
            v119 = 28;
          }

          else
          {
            v119 = v72 + 28;
          }

          *(v118 + 8 * v119) = 0x3FF0000000000000;
          Copy_SubMat_to_Mat(1.0, 32, v258, 1, 3, 1024, (v17 + 84184));
          *(v118 + 8 * (*(v17 + 84188) + 27)) = 0x3FF0000000000000;
          *(v17 + 84416) = 0x3FF0000000000000;
          break;
        case 5:
          v86 = 0.0;
          Set_Mat_Const(4, 0x20u, 0x400, (v17 + 84184), 0.0);
          v233 = 0u;
          v234 = 0u;
          v231 = 0u;
          v232 = 0u;
          KF_getVelocityCorrectionFromLeverArm(v17, &v233, &v231);
          v229 = 0u;
          v230 = 0u;
          Sub_Mat(3, (v17 + 16944), 3, &v233, 3, &v229);
          v87 = Norma_Vec(3, &v229);
          v289 = 0;
          v288 = 0u;
          v287 = 0u;
          v286 = 0u;
          v285 = 0u;
          v284 = 0u;
          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v280 = 0u;
          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v276 = 0u;
          v275 = 0u;
          memset(__x, 0, sizeof(__x));
          Abs_Mat(3, &v229, 0x20, __x);
          v261 = 0u;
          v260 = 0u;
          v259 = 0u;
          memset(v258, 0, sizeof(v258));
          Copy_SubMat_from_Mat(1.0, 1024, (v17 + 264), 3, 3, 3, 3u, 9, v258);
          v227 = 0u;
          v228 = 0u;
          Copy_Mat_diag_to_Vec(9, v258, 0, 0, 3, &v227);
          Sqrt_Mat(3, &v227, 3, &v227);
          Mult_Mat_scalar(2.0, 3, &v227, 3, &v227);
          v225 = 0u;
          v226 = 0u;
          Min_Mat_Mat(3, &v227, 32, __x, 3, &v225);
          v223 = 0u;
          v224 = 0u;
          Sign_Mat(3, &v229, 3, &v223);
          memset(v222, 0, sizeof(v222));
          ElMult_Mat_Mat(3, &v225, 3, &v223, 3, v222);
          Sub_Mat(3, &v229, 3, v222, 3, v222);
          ElMult_Mat_Mat(3, v222, 3, v222, 3, v222);
          if (LODWORD(v222[0]))
          {
            v88 = 0;
            v89 = 0;
            do
            {
              v90 = v88;
              v91 = DWORD1(v222[0]);
              if (DWORD1(v222[0]))
              {
                do
                {
                  v86 = v86 + *(v222 + ++v90);
                  --v91;
                }

                while (v91);
              }

              ++v89;
              v88 += DWORD1(v222[0]);
            }

            while (v89 != LODWORD(v222[0]));
            v92 = v86 <= 0.0;
          }

          else
          {
            v92 = 1;
          }

          memset(v221, 0, sizeof(v221));
          Set_Mat_Const(3, 1u, 3, v221, 0.0);
          if (v87 > 0.0 && (*(v17 + 34368) & v92 & 1) == 0)
          {
            v293 = 0u;
            v294 = 0u;
            v291 = 0u;
            v292 = 0u;
            v290 = 0u;
            v219 = 0u;
            v220 = 0u;
            v217 = 0u;
            v218 = 0u;
            v216 = 0u;
            skewSimMat(&v229, &v216);
            Mult_Mat_Mat(9, &v236, 9, &v216, 9, &v290);
            Mult_Mat_scalar(-1.0, 9, &v290, 9, &v290);
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v211 = 0u;
            Mult_Mat_MatT(3, v235, 3, &v229, 9, &v211);
            if (v87 <= 1.0e-30)
            {
              if (g_FPE_LogSeverity)
              {
                v114 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                if (g_TCU)
                {
                  v115 = *(g_TCU + 8);
                }

                else
                {
                  v115 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_createMeasurementMatrix", 712, v114, v115, v87, 1.0e-30);
              }

              g_FPE_AssertFlag = 1;
              v87 = 1.0;
            }

            Mult_Mat_scalar(1.0 / v87, 9, &v211, 9, &v211);
            Sub_Mat(9, &v211, 9, &v236, 9, &v211);
            v209 = 0u;
            v210 = 0u;
            v207 = 0u;
            v208 = 0u;
            v206 = 0u;
            Set_Mat_I(3, 9, &v206, -v87);
            Mult_Mat_Mat(9, &v211, 3, &v231, 3, v221);
            Copy_SubMat_to_Mat(1.0, 9, &v290, 0, 0, 1024, (v17 + 84184));
            Copy_SubMat_to_Mat(1.0, 9, &v211, 0, 3, 1024, (v17 + 84184));
            Copy_SubMat_to_Mat(1.0, 9, &v206, 0, 21, 1024, (v17 + 84184));
            v73 = v221;
            v74 = -1.0;
            v75 = (v17 + 84184);
            v76 = 3;
            v77 = 0;
            v78 = 26;
            goto LABEL_100;
          }

          break;
        case 6:
          Set_Mat_Const(6, 0x20u, 0x400, (v17 + 84184), 0.0);
          Copy_SubMat_to_Mat(-1.0, 9, &v241, 0, 6, 1024, (v17 + 84184));
          Copy_SubMat_to_Mat(1.0, 9, &v241, 0, 15, 1024, (v17 + 84184));
          Copy_SubMat_to_Mat(1.0, 9, &v241, 3, 0, 1024, (v17 + 84184));
          v73 = &v241;
          v74 = -1.0;
          v75 = (v17 + 84184);
          v76 = 9;
          v77 = 3;
          v78 = 18;
LABEL_100:
          Copy_SubMat_to_Mat(v74, v76, v73, v77, v78, 1024, v75);
          break;
        default:
          goto LABEL_90;
      }

LABEL_101:
      *&v219 = 0;
      v217 = 0u;
      v218 = 0u;
      v216 = 0u;
      Copy_Mat(6, (v16 + 16), 6, &v216);
      v93 = *(v16 + 132);
      v211 = 0u;
      v212 = 0u;
      v206 = 0u;
      v207 = 0u;
      memset(v235, 0, sizeof(v235));
      v261 = 0u;
      v260 = 0u;
      v259 = 0u;
      memset(v258, 0, sizeof(v258));
      v239 = 0u;
      v240 = 0u;
      v237 = 0u;
      v238 = 0u;
      v236 = 0u;
      v245 = 0u;
      v244 = 0u;
      v243 = 0u;
      v242 = 0u;
      v241 = 0u;
      v289 = 0;
      v288 = 0u;
      v287 = 0u;
      v286 = 0u;
      v285 = 0u;
      v284 = 0u;
      v283 = 0u;
      v282 = 0u;
      v281 = 0u;
      v280 = 0u;
      v279 = 0u;
      v278 = 0u;
      v277 = 0u;
      v276 = 0u;
      v275 = 0u;
      memset(__x, 0, sizeof(__x));
      v233 = 0u;
      v234 = 0u;
      v231 = 0u;
      v232 = 0u;
      if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            Copy_Mat(3, (v17 + 17008), 6, (v17 + 100584));
            goto LABEL_117;
          case 0xA:
            v293 = 0uLL;
            v294 = 0uLL;
            v291 = 0uLL;
            v292 = 0uLL;
            v290 = 0uLL;
            v229 = 0uLL;
            v230 = 0uLL;
            createC_e_map((v16 + 128), (v16 + 160), v17 + 16832, &v290, &v229);
            v227 = 0u;
            v228 = 0u;
            Add_Mat(3, (v16 + 160), 3, (v16 + 128), 3, &v227);
            Add_Mat_ScalarMult(-0.5, 3, (v17 + 17008), 3, &v227, 3, &v227);
            Mult_Mat_Mat(9, &v290, 3, &v227, 3, &v227);
            v105 = Norma_Vec(3, &v229);
            if (v105 < 0.1 && (g_FPE_LogSeverity & 2) != 0)
            {
              v106 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v107 = *(g_TCU + 8);
              }

              else
              {
                v107 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f Map vector is too short! norma = %f", "KF_createMeasExpectedValue", 964, v106, v107, v105);
            }

            Mult_Mat_scalar(1.0 / v105, 3, &v229, 3, &v229);
            v225 = 0u;
            v226 = 0u;
            Copy_SubMat_from_Mat(1.0, 32, v17, 21, 0, 3, 1u, 3, &v225);
            v223 = 0u;
            v224 = 0u;
            Mult_Mat_Mat(9, v17 + 16672, 3, &v225, 3, &v223);
            Sub_Mat(3, &v229, 3, &v223, 3, &v223);
            Set_Mat_Size(6, (v17 + 100584), 4, 1);
            Copy_SubMat_to_Mat(1.0, 3, &v223, 1, 0, 6, (v17 + 100584));
            *v71 = v228;
            Sub_Mat(6, (v17 + 100584), 6, &v216, 6, (v17 + 100640));
            *&v293 = 0;
            v102 = (v17 + 92384);
            v291 = 0u;
            v292 = 0u;
            v290 = 0u;
            *&v214 = 0;
            v212 = 0u;
            v213 = 0u;
            v211 = 0u;
            v104 = v200;
            KF_createMeasurementNoiseCovMatrix(v17, 10, v16 + 72, v17 + 100640, v17 + 84184, v16 + 16, v17 + 92384, v18, v199);
            KF_calcConsisGains(v17, 10, v16 + 72, v17 + 100640, v17 + 84184, &v290);
            Set_Mat_Size(6, &v211, 0, 0);
            CCH_insertMeas(v17 + 48760, 10, v16 + 16, &v290, v18, &v211);
            goto LABEL_177;
          case 0xB:
            Set_Mat_Const(1, 1u, 6, (v17 + 100584), 0.0);
            v290 = 0u;
            v291 = 0u;
            InsUtil_ECEF2Geo_Iterative((v17 + 17008), &v290, 6378137.0);
            *v71 = *(&v291 + 1);
            goto LABEL_117;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            Set_Mat_Const(2, 1u, 6, (v17 + 100584), 0.0);
            Sub_Mat(3, (v17 + 17008), 3, (v16 + 136), 3, &v211);
            v96 = Norma_Vec(3, &v211);
            if (fabs(v96) <= 1.0e-30)
            {
              v97 = v199;
              if (g_FPE_LogSeverity)
              {
                v108 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                if (g_TCU)
                {
                  v109 = *(g_TCU + 8);
                }

                else
                {
                  v109 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_createMeasExpectedValue", 858, v108, v109, v96, 1.0e-30);
              }

              g_FPE_AssertFlag = 1;
              v96 = 1.0;
            }

            else
            {
              v97 = v199;
            }

            Transpose_Mat(3, &v211, 3, &v211, v94, v95);
            Mult_Mat_scalar(-1.0 / v96, 3, &v211, 3, &v211);
            Sub_Mat(3, (v17 + 16944), 3, (v16 + 168), 3, &v206);
            Mult_Mat_Mat(3, &v211, 3, &v206, 3, &v206);
            *(v17 + 100600) = *(v17 + 224) - *(&v206 + 1);
            if ((v93 & 0xFFFFFFFB) != 0)
            {
              v96 = v96 + *(v17 + 232);
              v120 = (v17 + 232 + 8 * v93);
            }

            else
            {
              v120 = (v17 + 232);
            }

            *v71 = v96 + *v120;
            Sub_Mat(6, (v17 + 100584), 6, &v216, 6, (v17 + 100640));
            *&v293 = 0;
            v102 = (v17 + 92384);
            v291 = 0u;
            v292 = 0u;
            v290 = 0u;
            *&v214 = 0;
            v212 = 0u;
            v213 = 0u;
            v211 = 0u;
            KF_createMeasurementNoiseCovMatrix(v17, 1, v16 + 72, v17 + 100640, v17 + 84184, v16 + 16, v17 + 92384, v18, v97);
            KF_calcConsisGains(v17, 1, v16 + 72, v17 + 100640, v17 + 84184, &v290);
            if (v200)
            {
              v121 = *(v9 + 17512);
              v42 = v196;
              if (v121 <= 0x2F)
              {
                *(v9 + 17512) = ++v121;
              }

              v122 = v121 - 1;
              v123 = (v9 + 8 * v122);
              v123[1] = *v16;
              v124 = v9 + v122;
              *(v124 + 6416) = 1;
              *(v124 + 840) = 1;
              *(v9 + 6512 + v122) = 1;
              *(v9 + 936 + v122) = 1;
              v123[351] = *(v17 + 100648);
              v123[1048] = *(v17 + 100656);
              v123[603] = *(v17 + 92392);
              v123[1300] = *(v17 + 92392 + 8 * (*(v17 + 92388) + 1));
              v125 = v9 + 4 * v122;
              *(v125 + 400) = *(v16 + 128);
              *(v125 + 592) = *(v16 + 132) + 1;
              v126 = v9 + 4 * v122;
              if (v18[1] == 0.0)
              {
                *(v126 + 1032) = 21;
                *(v9 + 936 + v122) = 0;
              }

              v104 = v200;
              if (v18[2] == 0.0)
              {
                *(v126 + 6608) = 21;
                *(v194 + 6512 + v122) = 0;
              }

              Copy_SubMat_from_Mat(1.0, 1024, (v17 + 84184), 0, 6, 1, 3u, 3, (v194 + 144 * v122 + 17520));
            }

            else
            {
              v122 = 0;
              v42 = v196;
              v104 = 0;
            }

            Set_Mat_Size(6, &v211, 0, 0);
            CCH_insertMeas(v17 + 48760, 1, v16 + 16, &v290, v18, &v211);
            goto LABEL_178;
          case 5:
            KF_getVelocityCorrectionFromLeverArm(v17, &v233, &v231);
            Sub_Mat(3, (v17 + 16944), 3, &v233, 0x20, __x);
            Set_Mat_Const(4, 1u, 6, (v17 + 100584), 0.0);
            Mult_MatT_Mat(9, v17 + 16672, 32, __x, 3, &v206);
            VecSet_3x1(3, v235, *(v17 + 176), *(v17 + 184), *(v17 + 192));
            v100 = Norma_Vec(32, __x);
            Add_Mat_ScalarMult(-v100, 3, &v206, 3, v235, 3, &v206);
            Copy_SubMat_to_Mat(1.0, 3, &v206, 0, 0, 6, (v17 + 100584));
            *(v17 + 100616) = Norma_Vec(3, v235) + -1.0;
            goto LABEL_117;
          case 6:
            Set_Mat_Const(6, 1u, 6, (v17 + 100584), 0.0);
            Sub_Mat(3, (v17 + 17008), 3, (v17 + 17224), 3, &v206);
            Copy_SubMat_to_Mat(1.0, 3, &v206, 0, 0, 6, (v17 + 100584));
            Copy_Mat(9, (v17 + 16672), 9, v258);
            Copy_Mat(9, (v17 + 17288), 9, &v236);
            Mult_Mat_MatT(9, v258, 9, &v236, 9, &v241);
            extractOfromC(&v241, &v206);
            Copy_SubMat_to_Mat(1.0, 3, &v206, 3, 0, 6, (v17 + 100584));
LABEL_117:
            v101 = v17 + 100640;
            Sub_Mat(6, (v17 + 100584), 6, &v216, 6, (v17 + 100640));
            *&v293 = 0;
            v102 = (v17 + 92384);
            v291 = 0u;
            v292 = 0u;
            v290 = 0u;
            *&v214 = 0;
            v212 = 0u;
            v213 = 0u;
            v211 = 0u;
            v103 = v199;
            v104 = v200;
LABEL_118:
            KF_createMeasurementNoiseCovMatrix(v17, v22, v16 + 72, v101, v17 + 84184, v16 + 16, v102, v18, v103);
            KF_calcConsisGains(v17, v22, v16 + 72, v101, v17 + 84184, &v290);
            KF_sendMeas2Checker(v17, v22, v16 + 16, &v290, v18, v101, &v211);
LABEL_177:
            v122 = 0;
LABEL_178:
            if (*v18)
            {
              v127 = 0;
              v128 = 0;
              v129 = *(v18 + 1);
              v130 = 0.0;
              do
              {
                v131 = v127;
                v132 = *(v18 + 1);
                if (v129)
                {
                  do
                  {
                    v130 = v130 + *(v17 + 117104 + 8 * v131++);
                    --v132;
                  }

                  while (v132);
                }

                ++v128;
                v127 += v129;
              }

              while (v128 != *v18);
              if (v130 > 0.0)
              {
                v133 = v42;
                v289 = 0;
                v288 = 0u;
                v287 = 0u;
                v286 = 0u;
                v285 = 0u;
                v284 = 0u;
                v283 = 0u;
                v282 = 0u;
                v281 = 0u;
                v280 = 0u;
                v279 = 0u;
                v278 = 0u;
                v277 = 0u;
                v276 = 0u;
                v275 = 0u;
                memset(__x, 0, sizeof(__x));
                v134 = 0.0;
                Mat_Eq_Scalar(0.0, 6, v18, 0x20, __x);
                if (LODWORD(__x[0]))
                {
                  v135 = 0;
                  v136 = 0;
                  do
                  {
                    v137 = v135;
                    v138 = DWORD1(__x[0]);
                    if (DWORD1(__x[0]))
                    {
                      do
                      {
                        v134 = v134 + *(__x + ++v137);
                        --v138;
                      }

                      while (v138);
                    }

                    ++v136;
                    v135 += DWORD1(__x[0]);
                  }

                  while (v136 != LODWORD(__x[0]));
                  if (v134 > 0.1)
                  {
                    if (Find_First_NonZero_in_Vector_Starting_At(6, v18, 0) == -1)
                    {
                      if (g_FPE_LogSeverity)
                      {
                        v141 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        if (g_TCU)
                        {
                          v142 = *(g_TCU + 8);
                        }

                        else
                        {
                          v142 = 0.0;
                        }

                        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f could not find any non-zero elemnts in measIndex!", "KF_filterMeasByIndex", 1377, v141, v142);
                      }

                      g_FPE_AssertFlag = 1;
                    }

                    else
                    {
                      Filter_Rows_from_Mat(6, &v216, 6, v18);
                      Filter_Rows_from_Mat(1024, v102, 6, v18);
                      Filter_Cols_from_Mat(1024, v102, 6, v18, v139, v140);
                      Filter_Rows_from_Mat(1024, (v17 + 84184), 6, v18);
                      Filter_Rows_from_Mat(6, (v17 + 100584), 6, v18);
                    }
                  }
                }

                *&v209 = 0;
                v207 = 0u;
                v208 = 0u;
                v206 = 0u;
                Copy_SubMat_from_Mat(1.0, 32, v17, 28, 0, 4, 1u, 6, &v206);
                v143 = *(v17 + 224);
                bzero(__x, 0x2008uLL);
                bzero(v258, 0x2008uLL);
                Mult_Mat_MatT(1024, v17 + 264, 1024, v17 + 84184, 1024, v258);
                Mult_Mat_Mat(1024, v17 + 84184, 1024, v258, 1024, __x);
                Add_Mat(1024, __x, 1024, v102, 0x400, __x);
                Invert_Mat(1024, __x, 1024, __x, v144, v145);
                Mult_Mat_Mat(1024, v258, 1024, __x, 1024, v17 + 8464);
                v257 = 0;
                v256 = 0u;
                v255 = 0u;
                v254 = 0u;
                v253 = 0u;
                v252 = 0u;
                v251 = 0u;
                v250 = 0u;
                v249 = 0u;
                v248 = 0u;
                v247 = 0u;
                v246 = 0u;
                v245 = 0u;
                v244 = 0u;
                v243 = 0u;
                v242 = 0u;
                v241 = 0u;
                Sub_Mat(6, &v216, 6, (v17 + 100584), 0x20, &v241);
                bzero(&v236, 0x2008uLL);
                Mult_Mat_Mat(1024, v17 + 8464, 32, &v241, 1024, &v236);
                Add_Mat(32, v17, 1024, &v236, 0x20, v17);
                Mult_Mat_Mat(1024, v17 + 8464, 1024, v17 + 84184, 1024, __x);
                Mult_Mat_Mat(1024, __x, 1024, v17 + 264, 1024, __x);
                Sub_Mat(1024, (v17 + 264), 1024, __x, 0x400, (v17 + 264));
                if (v104)
                {
                  *&v276 = 0;
                  v275 = 0u;
                  memset(__x, 0, sizeof(__x));
                  Copy_SubMat_from_Mat(1.0, 32, v17, 28, 0, 4, 1u, 6, __x);
                  *&v260 = 0;
                  v259 = 0u;
                  memset(v258, 0, sizeof(v258));
                  Sub_Mat(6, __x, 6, &v206, 6, v258);
                  v146 = *(v17 + 224) - v143;
                  v236 = 0u;
                  v237 = 0u;
                  Copy_SubMat_from_Mat(1.0, 32, v17, 6, 0, 3, 1u, 3, &v236);
                  Transpose_Mat(3, &v236, 3, &v236, v147, v148);
                  v149 = Dot_Vec_Vec(3, &v236, 3, (v194 + 144 * v122 + 17520));
                  if (LODWORD(v258[0].f64[0]))
                  {
                    v150 = 0;
                    v151 = 0;
                    v152 = 0.0;
                    do
                    {
                      v153 = v150;
                      v154 = HIDWORD(v258[0].f64[0]);
                      if (HIDWORD(v258[0].f64[0]))
                      {
                        do
                        {
                          v152 = v152 + v258[0].f64[++v153];
                          --v154;
                        }

                        while (v154);
                      }

                      ++v151;
                      v150 += HIDWORD(v258[0].f64[0]);
                    }

                    while (v151 != LODWORD(v258[0].f64[0]));
                  }

                  else
                  {
                    v152 = 0.0;
                  }

                  v155 = v194 + 8 * v122;
                  *(v194 + 144 * v122 + 17552) = *(v155 + 2808) + v149 + v152;
                  v242 = 0u;
                  v241 = 0u;
                  Copy_SubMat_from_Mat(1.0, 32, v17, 3, 0, 3, 1u, 3, &v241);
                  Transpose_Mat(3, &v241, 3, &v241, v156, v157);
                  *(v194 + 144 * v122 + 17560) = *(v155 + 8384) + v146 + Dot_Vec_Vec(3, &v241, 3, (v194 + 144 * v122 + 17520));
                }

                v42 = v133;
              }
            }

            KF_ApplyCorrectionsFromKalmanFullStates(v17);
            if (v104)
            {
              v158 = v194 + 144 * v122;
              Set_Mat_Const(3, 1u, 3, (v158 + 17568), 0.0);
              Set_Mat_Const(3, 1u, 3, (v158 + 17600), 0.0);
              Copy_Mat(3, (v17 + 17008), 3, (v158 + 17568));
              Copy_Mat(3, (v17 + 16944), 3, (v158 + 17600));
              v159 = *(v17 + 8 + 8 * (28 * *(v17 + 4)));
              *(v158 + 17632) = v159;
              v160 = *(v16 + 132);
              if ((v160 | 4) != 4)
              {
                *(v158 + 17632) = v159 + *(v17 + 8 + 8 * (v160 + 28));
              }

              *(v158 + 17640) = *(v17 + 224);
            }

            if (v195)
            {
              v161 = *(v16 + 132);
              v162 = KF_reduceSvInd(*(v16 + 128), v161);
              if (v162)
              {
                v163 = v162 + 37 * v161 - 1;
                *(v17 + 8 * v163 + 34568) = *(v17 + 17192);
                *(v17 + v163 + 34376) = 1;
                v164 = v17 + 24 * v163;
                *(v164 + 36048) = *v197;
                *(v164 + 36064) = *(v17 + 17032);
              }
            }

            if (v42)
            {
              memset(__x, 0, sizeof(__x));
              Add_Mat(3, (v16 + 160), 3, (v16 + 128), 3, __x);
              Mult_Mat_scalar(0.5, 3, __x, 3, __x);
              *(v201 + 8) = *(v17 + 17192);
              *v201 = 1;
              *(v201 + 16) = *(__x + 8);
              *(v201 + 32) = *(&__x[1] + 1);
            }

            Set_Mat_Const(*v18, *(v18 + 1), 6, v204, -1.0);
            if (*v18)
            {
              v165 = 0;
              v166 = v17 + 117104;
              v167 = v204 + 2;
              do
              {
                if (CheckPassFlag(*(v166 + 8 * v165)))
                {
                  *&v167[2 * v165] = 0x3FF0000000000000;
                }

                if ((CheckPassFlag(*(v166 + 8 * v165)) & 1) == 0)
                {
                  *&v167[2 * v165] = 0;
                }

                ++v165;
              }

              while (v165 < *v18);
            }

            goto LABEL_224;
        }
      }

      if (g_FPE_LogSeverity)
      {
        v98 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v99 = *(g_TCU + 8);
        }

        else
        {
          v99 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f measType = %d is not supported!", "KF_createMeasExpectedValue", 981, v98, v99, v22);
      }

      g_FPE_AssertFlag = 1;
      v101 = v17 + 100640;
      Sub_Mat(6, (v17 + 100584), 6, &v216, 6, (v17 + 100640));
      *&v293 = 0;
      v102 = (v17 + 92384);
      v291 = 0u;
      v292 = 0u;
      v290 = 0u;
      *&v214 = 0;
      v212 = 0u;
      v213 = 0u;
      v211 = 0u;
      if (v22 <= 8)
      {
        v104 = v200;
        if (v22 == 7)
        {
          v103 = v199;
          goto LABEL_118;
        }
      }

      else
      {
        v104 = v200;
      }

      if (g_FPE_LogSeverity)
      {
        v116 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v117 = *(g_TCU + 8);
        }

        else
        {
          v117 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Unsupported case %d in creareR", "KF_ApplySingleMeas", 2067, v116, v117, v22);
      }

      v122 = 0;
      g_FPE_AssertFlag = 1;
      goto LABEL_178;
    }

    switch(v22)
    {
      case 9:
        Set_Mat_Const(3, 0x20u, 0x400, (v17 + 84184), 0.0);
        v73 = &v241;
        v74 = -1.0;
        v75 = (v17 + 84184);
        v76 = 9;
        break;
      case 0xA:
        v216 = 0u;
        v217 = 0u;
        Copy_SubMat_from_Mat(1.0, 32, v17, 21, 0, 3, 1u, 3, &v216);
        v277 = 0u;
        v276 = 0u;
        v275 = 0u;
        memset(__x, 0, sizeof(__x));
        skewSimMat(&v216, __x);
        v261 = 0u;
        v260 = 0u;
        v259 = 0u;
        memset(v258, 0, sizeof(v258));
        createC_e_map((v16 + 128), (v16 + 160), v17 + 16832, v258, 0);
        Set_Mat_Const(4, 0x20u, 0x400, (v17 + 84184), 0.0);
        v211 = 0u;
        v212 = 0u;
        Copy_SubMat_from_Mat(1.0, 9, v258, 1, 0, 1, 3u, 3, &v211);
        Copy_SubMat_to_Mat(-1.0, 3, &v211, 0, 6, 1024, (v17 + 84184));
        v293 = 0u;
        v294 = 0u;
        v291 = 0u;
        v292 = 0u;
        v290 = 0u;
        Mult_Mat_Mat(9, v17 + 16672, 9, __x, 9, &v290);
        Copy_SubMat_to_Mat(-1.0, 9, &v290, 1, 0, 1024, (v17 + 84184));
        v73 = (v17 + 16672);
        v74 = -1.0;
        v75 = (v17 + 84184);
        v76 = 9;
        v77 = 1;
        v78 = 21;
        goto LABEL_100;
      case 0xB:
        Set_Mat_Const(1, 0x20u, 0x400, (v17 + 84184), 0.0);
        memset(__x, 0, sizeof(__x));
        Copy_SubMat_from_Mat(1.0, 9, (v17 + 16832), 2, 0, 1, 3u, 3, __x);
        v73 = __x;
        v74 = 1.0;
        v75 = (v17 + 84184);
        v76 = 3;
        break;
      default:
LABEL_90:
        if (g_FPE_LogSeverity)
        {
          v84 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v85 = *(g_TCU + 8);
          }

          else
          {
            v85 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f measType = %d is not supported!", "KF_createMeasurementMatrix", 796, v84, v85, v22);
        }

        g_FPE_AssertFlag = 1;
        goto LABEL_101;
    }

    v77 = 0;
    v78 = 6;
    goto LABEL_100;
  }

LABEL_27:
  v42 = v22 == 10;
  v197 = v20;
  if (v22 == 10)
  {
    memset(__x, 0, sizeof(__x));
    Sub_Mat(3, (v16 + 160), 3, (v16 + 128), 3, __x);
    memset(v258, 0, sizeof(v258));
    Add_Mat(3, (v16 + 160), 3, (v16 + 128), 3, v258);
    Mult_Mat_scalar(0.5, 3, v258, 3, v258);
    v236 = 0u;
    v237 = 0u;
    Sub_Mat(3, (v17 + 17008), 3, v258, 3, &v236);
    v242 = 0u;
    v241 = 0u;
    v43 = Norma_Vec(3, __x);
    v290 = 0u;
    v291 = 0u;
    Mult_Mat_scalar(1.0 / v43, 3, __x, 3, &v290);
    Mult_MatT_Mat(3, &v236, 3, &v290, 3, &v241);
    v44 = *(&v241 + 1);
    if (*(&v241 + 1) < 0.0)
    {
      v44 = -*(&v241 + 1);
    }

    v45 = v43 * 0.5;
    v46 = 4.0;
    if (v44 > v45)
    {
      goto LABEL_38;
    }

    v46 = 2.0;
    if (*(v201 + 40) != 1)
    {
      goto LABEL_38;
    }

    v47 = *(v201 + 8);
    v48 = *v201;
    *(__x + 8) = *(v201 + 16);
    v49 = *(v201 + 32);
    *&__x[0] = 0x100000003;
    *(&__x[1] + 1) = v49;
    memset(v258, 0, sizeof(v258));
    Add_Mat(3, (v16 + 160), 3, (v16 + 128), 3, v258);
    Mult_Mat_scalar(0.5, 3, v258, 3, v258);
    Sub_Mat(3, __x, 3, v258, 3, v258);
    v50 = Norma_Vec(3, v258);
    v51 = *(v17 + 17192);
    v52 = v47 - v51;
    if (v47 - v51 < 0.0)
    {
      v52 = -(v47 - v51);
    }

    if (v51 >= 0.0 && v52 <= 60.0 && v50 <= 10.0 && (v48 & 1) != 0)
    {
LABEL_38:
      Set_Mat_Const(1, 1u, 6, v204, v46);
      LOBYTE(v26) = 0;
    }

LABEL_40:
    v53 = *(v16 + 8);
    if (v53 == 9)
    {
      memset(__x, 0, sizeof(__x));
      Sub_Mat(6, (v16 + 16), 3, (v17 + 17008), 3, __x);
      Norma2_Vec(3, __x);
      if (v61 > 400000000.0)
      {
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          mach_continuous_time();
          if (g_TCU)
          {
            v62 = *(g_TCU + 8);
          }

          v111 = *(v17 + 17192);
          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Extreme ExtPos meas at time=%f: Diff=%f");
        }

        goto LABEL_128;
      }
    }

    else if (v53 == 10)
    {
      memset(__x, 0, sizeof(__x));
      memset(v258, 0, sizeof(v258));
      Sub_Mat(3, (v16 + 128), 3, (v17 + 17008), 3, __x);
      Sub_Mat(3, (v16 + 160), 3, (v17 + 17008), 3, v258);
      Norma2_Vec(3, __x);
      v55 = v54;
      Norma2_Vec(3, v258);
      if (v55 >= v56)
      {
        v56 = v55;
      }

      if (v56 > 400000000.0)
      {
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          mach_continuous_time();
          if (g_TCU)
          {
            v57 = *(g_TCU + 8);
          }

          v110 = *(v17 + 17192);
          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Extreme MAP meas at time=%f: startDiff=%f endDiff=%f");
        }

LABEL_128:
        Set_Mat_Const(1, 1u, 6, v204, 3.0);
        goto LABEL_129;
      }
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v63 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v64 = *(g_TCU + 8);
        }

        else
        {
          v64 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f MeasType %u is not expected here!", "KF_isGrossError", 3670, v63, v64, *(v16 + 8));
      }

      g_FPE_AssertFlag = 1;
    }

    if (!v26)
    {
      goto LABEL_129;
    }

    v195 = 0;
    goto LABEL_75;
  }

  if ((v22 - 9) < 2)
  {
    goto LABEL_40;
  }

  if (v26)
  {
    v195 = 0;
    v42 = 0;
    goto LABEL_75;
  }

LABEL_224:
  KF_LogStatistics(v17, v16, v204);
  v41 = 1;
  if (v22 != 4)
  {
    goto LABEL_131;
  }

  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  memset(__x, 0, sizeof(__x));
  Mult_Mat_Mat(9, v17 + 16832, 9, v17 + 16672, 9, __x);
  memset(v258, 0, sizeof(v258));
  Set_Mat_Size(3, v258, 3, 1);
  v168 = DWORD1(__x[0]);
  v169 = DWORD1(__x[0]);
  v205 = atan2(*(__x + ((2 * DWORD1(__x[0])) | 1u) + 1), *(__x + (2 * DWORD1(__x[0]) + 2) + 1));
  v170 = asin(*(&__x[v169] + 1));
  v171.f64[0] = v205;
  v171.f64[1] = v170;
  *(v258 + 8) = vmulq_f64(v171, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  v258[1].f64[1] = atan2(*(__x + v168 + 1), *(__x + 1)) * 57.2957795;
  v172 = v21 - v18[46];
  if (v172 <= 0.0)
  {
    VecSet_3x1(3, v17 + 17760, 0.0, 0.0, 0.0);
    v175 = v197;
  }

  else
  {
    Sub_Mat(3, v258, 3, (v17 + 17728), 3, (v17 + 17760));
    v173 = 0;
    v174 = v17 + 17768;
    v175 = v197;
    do
    {
      v176 = *(v174 + v173);
      v177 = -360.0;
      if (v176 >= 180.0 || (v177 = 360.0, v176 < -180.0))
      {
        *(v174 + v173) = v176 + v177;
      }

      v173 += 8;
    }

    while (v173 != 24);
    Mult_Mat_scalar(1.0 / v172, 3, (v17 + 17760), 3, (v17 + 17760));
  }

  Copy_Mat(3, v258, 3, (v17 + 17728));
  v289 = 0;
  v288 = 0u;
  v287 = 0u;
  v286 = 0u;
  v285 = 0u;
  v284 = 0u;
  v283 = 0u;
  v282 = 0u;
  v281 = 0u;
  v280 = 0u;
  v279 = 0u;
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  memset(__x, 0, sizeof(__x));
  v216 = 0u;
  v217 = 0u;
  Mult_Mat_Mat(9, v17 + 16832, 3, v17 + 16944, 3, &v216);
  v211 = 0u;
  v212 = 0u;
  Copy_SubMat_from_Mat(1.0, 32, v17, 21, 0, 3, 1u, 3, &v211);
  v261 = 0u;
  v260 = 0u;
  v259 = 0u;
  memset(v258, 0, sizeof(v258));
  Mult_Mat_Mat(9, v17 + 16832, 9, v17 + 16672, 9, v258);
  Mult_Mat_Mat(9, v258, 3, &v211, 9, v258);
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v236 = 0u;
  Copy_SubMat_from_Mat(1.0, 1024, (v17 + 264), 0, 0, 3, 3u, 9, &v236);
  v245 = 0u;
  v244 = 0u;
  v243 = 0u;
  v242 = 0u;
  v241 = 0u;
  Mult_Mat_Mat(9, v17 + 16832, 9, &v236, 9, &v241);
  Mult_Mat_MatT(9, &v241, 9, v17 + 16832, 9, &v241);
  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  v290 = 0u;
  Copy_SubMat_from_Mat(1.0, 1024, (v17 + 264), 21, 21, 3, 3u, 9, &v290);
  v206 = 0u;
  v207 = 0u;
  Copy_Mat_diag_to_Vec(9, &v290, 0, 0, 3, &v206);
  Sqrt_Mat(3, &v206, 3, &v206);
  v178 = *(&v241 + (2 * DWORD1(v241) + 2) + 1);
  if (v178 >= 0.0)
  {
    v179 = v198;
  }

  else
  {
    v179 = v198;
    if (g_FPE_LogSeverity)
    {
      v180 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v181 = *(g_TCU + 8);
      }

      else
      {
        v181 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KF_consisPreprocessStates", 3523, v180, v181, v178);
    }

    g_FPE_AssertFlag = 1;
    v178 = 1.0;
  }

  if (sqrt(v178) >= 0.1 || (v182 = 1.0, (All_Mat_Smaller_Than(0.1, 3, &v206) & 1) == 0))
  {
    v182 = 0.0;
  }

  Set_Mat_Const(0xD, 1u, 0x20, __x, 0.0);
  *(__x + 1) = v182;
  Copy_SubMat_to_Mat(1.0, 3, &v216, 1, 0, 32, __x);
  v183 = DWORD1(v216) * v216 + 1;
  Copy_SubMat_to_Mat(1.0, 9, v258, v183, 0, 32, __x);
  v184 = v183 + HIDWORD(v258[0].f64[0]) * LODWORD(v258[0].f64[0]);
  Copy_SubMat_to_Mat(1.0, 3, v175 + 16, v184, 0, 32, __x);
  v185 = v184 + v175[17] * v175[16];
  Copy_SubMat_to_Mat(1.0, 3, v175 + 24, v185, 0, 32, __x);
  v187 = v185 + v175[25] * v175[24];
  if (v187 != 13)
  {
    if (g_FPE_LogSeverity)
    {
      v188 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v189 = *(g_TCU + 8);
      }

      else
      {
        v189 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Wrong number of elements (%u) were written to vector!", "KF_consisPreprocessStates", 3546, v188, v189, v187);
    }

    g_FPE_AssertFlag = 1;
  }

  *&__x[0] = vrev64_s32(*&__x[0]);
  v258[0].f64[0] = 0.0;
  v190 = CCH_Run(v17 + 48760, __x, *(v17 + 34368), v179, v258, v186);
  v191 = v258[0].f64[0];
  *v203 = v258[0].f64[0];
  ++*(v18 + 88);
  v18[45] = v191;
  if (*(v17 + 34368) == 1)
  {
    if (v190 || (*(v17 + 48752) & 1) == 0)
    {
      goto LABEL_130;
    }
  }

  else if (v190)
  {
    goto LABEL_130;
  }

  if ((g_FPE_LogSeverity & 4) != 0)
  {
    v192 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v193 = *(g_TCU + 8);
    }

    else
    {
      v193 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Divergence detected with confidence %f at KF#%d", "KF_callConsistencyChecker", 3609, v192, v193, v258[0].f64[0], *(v201 + 44));
  }

  CCH_initStates((v17 + 48760));
  v41 = 0;
LABEL_131:
  v112 = *MEMORY[0x29EDCA608];
  return v41;
}

void KF_sendMeas2Checker(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *MEMORY[0x29EDCA608];
  Set_Mat_Size(6, a7, 0, 0);
  if (a2 == 9)
  {
    Mult_Mat_Mat(9, a1 + 16832, 6, a6, 6, a7);
    *a7 = vrev64_s32(*a7);
  }

  else if (a2 == 2)
  {
    if (*(a3 + 136) == 0.0 || *(a3 + 144) == 0.0 || *(a3 + 152) == 0.0 || *(a3 + 193) != 1)
    {
      Set_Mat_Const(1, 6u, 6, a7, NAN);
    }

    else
    {
      memset(v18, 0, sizeof(v18));
      Set_Mat_Size(3, v18, 3, 1);
      *(v18 + 8) = vmulq_f64(*(a3 + 136), vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
      *(&v18[1] + 1) = *(a3 + 152);
      memset(v17, 0, sizeof(v17));
      InsUtil_Geo2ECEF_Iterative(v18, v17);
      Sub_Mat(3, (a1 + 17008), 3, v17, 3, v17);
      Mult_Mat_Mat(9, a1 + 16832, 3, v17, 6, a7);
      *a7 = vrev64_s32(*a7);
      Set_Mat_Size(6, a7, 1, 6);
      v14 = *(a3 + 168);
      if (v14 == 0.0 && *(a3 + 176) == 0.0 && *(a3 + 184) == 0.0 || *(a3 + 194) != 1)
      {
        *(a7 + 32) = vdupq_n_s64(0x7FF8000000000000uLL);
        v15 = 0x7FF8000000000000;
      }

      else
      {
        *(a7 + 32) = v14;
        *(a7 + 40) = *(a3 + 176);
        v15 = *(a3 + 184);
      }

      *(a7 + 48) = v15;
    }
  }

  CCH_insertMeas(a1 + 48760, a2, a3, a4, a5, a7);
  v16 = *MEMORY[0x29EDCA608];
}

void KF_calcConsisGains(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v6;
  v75 = *MEMORY[0x29EDCA608];
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  ElMult_Mat_Mat(6, v13, 6, v13, 6, v72);
  v18 = (v14[1] * *v14);
  bzero(v71, 0x2008uLL);
  Set_Mat_Const(v18, v18, 0x400, v71, 0.0);
  Copy_Vec_to_Mat_diag(6, v72, 0, 0, 1, 1, 1024, v71);
  bzero(v70, 0x2008uLL);
  Mult_Mat_Mat(1024, v10, 1024, v17 + 264, 1024, v70);
  Mult_Mat_MatT(1024, v70, 1024, v10, 1024, v70);
  bzero(v69, 0x2008uLL);
  Add_Mat(1024, v70, 1024, v71, 0x400, v69);
  if (v16 > 8)
  {
    if ((v16 - 10) < 2)
    {
      Set_Mat_Size(6, v8, 0, 0);
      goto LABEL_37;
    }

    if (v16 == 9)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      Copy_SubMat_from_Mat(1.0, 1024, (v17 + 264), 6, 6, 3, 3u, 9, &v49);
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      Mult_Mat_Mat(9, v17 + 16832, 9, &v49, 9, &v64);
      Mult_Mat_MatT(9, &v64, 9, v17 + 16832, 9, &v64);
      Add_Mat(9, &v64, 1024, v71, 9, &v64);
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      Copy_SubMat_from_Mat(1.0, 9, &v64, 0, 0, 2, 2u, 9, &v39);
      SVD_decomp(9, &v39, 9, &v59, 9, &v54, 9, &v44);
      memset(v38, 0, sizeof(v38));
      Copy_Mat_diag_to_Vec(9, &v54, 0, 0, 3, v38);
      Sqrt_Mat(3, v38, 3, v38);
      memset(v37, 0, sizeof(v37));
      Set_Mat_Const(2, 1u, 3, v37, 1.0);
      ElDiv_Mat_Mat(3, v37, 3, v38, 3, v38);
      Set_Mat_Const(2, 2u, 9, &v54, 0.0);
      Copy_Vec_to_Mat_diag(3, v38, 0, 0, 1, 1, 9, &v54);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      Mult_Mat_Mat(9, v17 + 16832, 6, v12, 9, &v32);
      bzero(v74, 0x2008uLL);
      Copy_SubMat_from_Mat(1.0, 9, &v32, 0, 0, 2, 1u, 1024, v74);
      Mult_Mat_Mat(9, &v59, 9, &v54, 6, v8);
      Mult_Mat_MatT(6, v8, 9, &v44, 6, v8);
      Mult_Mat_Mat(6, v8, 1024, v74, 6, v8);
      v21 = *(&v64 + (2 * DWORD1(v64) + 2) + 1);
      if (v21 < 0.0)
      {
        if (g_FPE_LogSeverity)
        {
          v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v23 = *(g_TCU + 8);
          }

          else
          {
            v23 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KF_calcConsisGains", 3371, v22, v23, v21);
        }

        g_FPE_AssertFlag = 1;
        v21 = 1.0;
      }

      v28 = sqrt(v21);
      if (fabs(v28) <= 1.0e-30)
      {
        if (g_FPE_LogSeverity)
        {
          v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v30 = *(g_TCU + 8);
          }

          else
          {
            v30 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_calcConsisGains", 3373, v29, v30, v28, 1.0e-30);
        }

        g_FPE_AssertFlag = 1;
        v28 = 1.0;
      }

      Set_Mat_Size(6, v8, 3, 1);
      *(v8 + 24) = *(&v33 + 1) / v28;
      goto LABEL_37;
    }

LABEL_14:
    if (g_FPE_LogSeverity)
    {
      v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v25 = *(g_TCU + 8);
      }

      else
      {
        v25 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Unsupported meas type %u !", "KF_calcConsisGains", 3387, v24, v25, v16);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_37;
  }

  if (v16 == 1)
  {
    bzero(v74, 0x2008uLL);
    Copy_Mat_diag_to_Vec(1024, v69, 0, 0, 1024, v74);
    Sqrt_Mat(1024, v74, 0x400, v74);
    ElDiv_Mat_Mat(6, v12, 1024, v74, 6, v8);
    goto LABEL_37;
  }

  if (v16 != 5)
  {
    if (v16 == 6)
    {
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      Copy_SubMat_from_Mat(1.0, 1024, v69, 0, 0, 3, 3u, 9, &v64);
      v60 = 0u;
      v59 = 0u;
      Copy_SubMat_from_Mat(1.0, 6, v12, 0, 0, 3, 1u, 3, &v59);
      bzero(&v49, 0x2008uLL);
      bzero(v74, 0x2008uLL);
      Invert_Mat(9, &v64, 1024, v74, v19, v20);
      Mult_Mat_Mat(1024, v74, 3, &v59, 1024, &v49);
      Mult_MatT_Mat(3, &v59, 1024, &v49, 6, v8);
      Sqrt_Mat(6, v8, 6, v8);
LABEL_37:
      *v8 = vrev64_s32(*v8);
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  memset(v74, 0, 80);
  Copy_SubMat_from_Mat(1.0, 1024, v69, 0, 0, 3, 3u, 9, v74);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  SVD_decomp(9, v74, 9, &v49, 9, &v64, 9, &v59);
  if (DWORD1(v49) && v49)
  {
    v44 = 0u;
    v45 = 0u;
    Copy_Mat_diag_to_Vec(9, &v64, 0, 0, 3, &v44);
    Sqrt_Mat(3, &v44, 3, &v44);
    v39 = 0u;
    v40 = 0u;
    Set_Mat_Const(3, 1u, 3, &v39, 1.0);
    ElDiv_Mat_Mat(3, &v39, 3, &v44, 3, &v44);
    Set_Mat_Const(3, 3u, 9, &v64, 0.0);
    Copy_Vec_to_Mat_diag(3, &v44, 0, 0, 1, 1, 9, &v64);
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    Mult_Mat_Mat(9, &v49, 9, &v64, 9, &v54);
    Mult_Mat_MatT(9, &v54, 9, &v59, 9, &v54);
    v32 = 0u;
    v33 = 0u;
    Copy_SubMat_from_Mat(1.0, 6, v12, 0, 0, 3, 1u, 3, &v32);
    Mult_Mat_Mat(9, &v54, 3, &v32, 6, v8);
    goto LABEL_37;
  }

  if (g_FPE_LogSeverity)
  {
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v27 = *(g_TCU + 8);
    }

    else
    {
      v27 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f SVD decomposition failed!", "KF_calcConsisGains", 3289, v26, v27);
  }

  g_FPE_AssertFlag = 1;
LABEL_38:
  v31 = *MEMORY[0x29EDCA608];
}

uint64_t CheckPassFlag(double a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (fabs(a1) >= 1.0e-30)
  {
    if (fabs(a1 + -1.0) >= 1.0e-30)
    {
      if (g_FPE_LogSeverity)
      {
        v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v4 = *(g_TCU + 8);
        }

        else
        {
          v4 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input to CheckPassFlag is %f, which is not 0.0 nor 1.0", "CheckPassFlag", 134, v3, v4, a1);
      }

      result = 0;
      g_FPE_AssertFlag = 1;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t KF_LogStatistics(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v58 = *MEMORY[0x29EDCA608];
  v6 = result + 117328;
  v7 = *(a2 + 8);
  if (v7 <= 7)
  {
    if ((v7 - 1) < 4)
    {
      goto LABEL_91;
    }

    if ((v7 - 5) < 2)
    {
      *(result + 117424) = 1;
      if (*(result + 117432) != 1 || (result = Any_Mat_Not_Equal_To(6, a3, 1, 0), !result))
      {
        *(v6 + 100) = 0;
LABEL_34:
        *(v6 + 112) = *a2;
        goto LABEL_91;
      }

      result = Any_Mat_Equal_To(6, a3, 0, 0);
      if (!result)
      {
        goto LABEL_34;
      }

      *(v6 + 104) = 0;
      if (v7 == 5)
      {
        *(v6 + 100) = 1000;
        v8 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v10 = *(g_TCU + 8);
          }

          else
          {
            v10 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Unmount while moving (%f)", "KF_LogStatistics", 3042, v9, v10, *(a2 + 128));
          v8 = g_FPE_LogSeverity;
        }

        if ((v8 & 0x200) != 0)
        {
          result = LC_LOG_NMEA_GENERIC("%s,KFMC1,%d,%.1f");
        }
      }

      else
      {
        result = All_Mat_Equal_To(6, a3, 0, 0);
        if (result)
        {
          *(v6 + 100) = 1002;
          v42 = g_FPE_LogSeverity;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v43 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v44 = *(g_TCU + 8);
            }

            else
            {
              v44 = 0.0;
            }

            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Bad frozen indication, and unmount (%f)", "KF_LogStatistics", 3051, v43, v44, *(a2 + 128));
            v42 = g_FPE_LogSeverity;
          }

          if ((v42 & 0x200) != 0)
          {
            result = LC_LOG_NMEA_GENERIC("%s,KFMC2,%d,%.1f");
          }
        }

        else
        {
          result = Any_Mat_Equal_To(6, a3, 0, 3u);
          if (result)
          {
            *(v6 + 100) = 1004;
            v47 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v48 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v49 = *(g_TCU + 8);
              }

              else
              {
                v49 = 0.0;
              }

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Bad frozen indication (%f)", "KF_LogStatistics", 3058, v48, v49, *(a2 + 128));
              v47 = g_FPE_LogSeverity;
            }

            if ((v47 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMC3,%d,%.1f");
            }
          }

          else
          {
            *(v6 + 100) = 1006;
            v51 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v53 = *(g_TCU + 8);
              }

              else
              {
                v53 = 0.0;
              }

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Unmount while frozen (%f)", "KF_LogStatistics", 3065, v52, v53, *(a2 + 128));
              v51 = g_FPE_LogSeverity;
            }

            if ((v51 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMC4,%d,%.1f");
            }
          }
        }
      }

      if (*(a2 + 128) <= 0.0)
      {
        goto LABEL_34;
      }

      v54 = *(v6 + 100);
      if (v54 > 1003)
      {
        if (v54 == 1004)
        {
          v55 = 1005;
          goto LABEL_124;
        }

        if (v54 == 1006)
        {
          v55 = 1007;
          goto LABEL_124;
        }
      }

      else
      {
        if (v54 == 1000)
        {
          v55 = 1001;
          goto LABEL_124;
        }

        if (v54 == 1002)
        {
          v55 = 1003;
LABEL_124:
          *(v6 + 100) = v55;
          goto LABEL_34;
        }
      }

      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v56 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v57 = *(g_TCU + 8);
        }

        else
        {
          v57 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MOTC no newStateCount", "KF_LogStatistics", 3088, v56, v57);
      }

      goto LABEL_34;
    }

    if (!v7)
    {
      *(result + 117400) = 1;
      *(result + 117408) = 1;
      *(result + 117404) = 0;
      *(result + 117416) = *a2;
      goto LABEL_91;
    }

    goto LABEL_38;
  }

  if (v7 <= 9)
  {
    if (v7 != 8)
    {
      v19 = *(a3 + 8);
      v12 = v19 < 0.0;
      v20 = floor(v19 + 0.5);
      v21 = -floor(0.5 - v19);
      if (!v12)
      {
        v21 = v20;
      }

      *(result + 117352) = 1;
      *(result + 117360) = v21 == 1;
      *(result + 117356) = 0;
      *(result + 117368) = *a2;
      if (v21 == 3)
      {
        *(result + 117356) = 1012;
        v33 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v34 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v35 = *(g_TCU + 8);
          }

          else
          {
            v35 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f POS ignored, Gross Error Detected", "KF_LogStatistics", 3012, v34, v35);
          v33 = g_FPE_LogSeverity;
        }

        if ((v33 & 0x200) != 0)
        {
          v46 = *(v5 + 40532);
          result = LC_LOG_NMEA_GENERIC("%s,KFPOS2,%d");
        }
      }

      else if (!v21)
      {
        *(result + 117356) = 1013;
        v22 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v24 = *(g_TCU + 8);
          }

          else
          {
            v24 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS ignored, outside of 5-sigma threshold", "KF_LogStatistics", 3006, v23, v24);
          v22 = g_FPE_LogSeverity;
        }

        if ((v22 & 0x200) != 0)
        {
          v45 = *(v5 + 40532);
          result = LC_LOG_NMEA_GENERIC("%s,KFPOS3,%d");
        }
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 12:
        break;
      case 11:
        v25 = *(a3 + 8);
        v12 = v25 < 0.0;
        v26 = floor(v25 + 0.5);
        v27 = -floor(0.5 - v25);
        if (!v12)
        {
          v27 = v26;
        }

        *(result + 117376) = 1;
        *(result + 117384) = v27 == 1;
        *(result + 117380) = 0;
        *(result + 117392) = *a2;
        break;
      case 10:
        v11 = *(a3 + 8);
        v12 = v11 < 0.0;
        v13 = floor(v11 + 0.5);
        v14 = -floor(0.5 - v11);
        if (!v12)
        {
          v14 = v13;
        }

        v15 = v14;
        *v6 = 1;
        *(result + 117336) = v14 == 1;
        *(result + 117332) = 0;
        if (v14 > 2)
        {
          if (v15 == 3)
          {
            *(result + 117332) = 1010;
            v39 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v41 = *(g_TCU + 8);
              }

              else
              {
                v41 = 0.0;
              }

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MAP ignored, Gross Error Detected", "KF_LogStatistics", 2992, v40, v41);
              v39 = g_FPE_LogSeverity;
            }

            if ((v39 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMAP3,%d");
            }
          }

          else if (v15 == 4)
          {
            *(result + 117332) = 1009;
            v30 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v32 = *(g_TCU + 8);
              }

              else
              {
                v32 = 0.0;
              }

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MAP ignored, outside of Interval", "KF_LogStatistics", 2986, v31, v32);
              v30 = g_FPE_LogSeverity;
            }

            if ((v30 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMAP2,%d");
            }
          }
        }

        else if (v15)
        {
          if (v15 == 2)
          {
            *(result + 117332) = 1008;
            v16 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v18 = *(g_TCU + 8);
              }

              else
              {
                v18 = 0.0;
              }

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MAP ignored due to correlation", "KF_LogStatistics", 2974, v17, v18);
              v16 = g_FPE_LogSeverity;
            }

            if ((v16 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMAP1,%d");
            }
          }
        }

        else
        {
          *(result + 117332) = 1011;
          v36 = g_FPE_LogSeverity;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v38 = *(g_TCU + 8);
            }

            else
            {
              v38 = 0.0;
            }

            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MAP ignored, outside of 5-sigma threshold", "KF_LogStatistics", 2980, v37, v38);
            v36 = g_FPE_LogSeverity;
          }

          if ((v36 & 0x200) != 0)
          {
            result = LC_LOG_NMEA_GENERIC("%s,KFMAP4,%d");
          }
        }

        *(v6 + 16) = *a2;
        break;
      default:
LABEL_38:
        if (g_FPE_LogSeverity)
        {
          v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v29 = *(g_TCU + 8);
          }

          else
          {
            v29 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Meas %u is not logged for Statistics", "KF_LogStatistics", 3111, v28, v29, v7);
        }

        g_FPE_AssertFlag = 1;
        break;
    }
  }

LABEL_91:
  v50 = *MEMORY[0x29EDCA608];
  return result;
}

const char *KF_initializeKalmanFilterCarMode(uint64_t a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = a1 + 67368;
  v6 = a1 + 48744;
  v7 = a1 + 40488;
  if ((*(a1 + 67656) & 1) == 0)
  {
    v8 = (a1 + 117320);
    *(a1 + 67656) = 1;
    *(a1 + 17960) = 1;
    *(a1 + 40528) = 16843009;
    *(a1 + 40532) = a3;
    Set_Mat_Const(0x20, 1u, 0x20, a1, 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 264), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 8464), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 17792), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 17848), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 17904), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 17968), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 26168), 0.0);
    *(a1 + 117324) = 0;
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 67728), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 75928), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 84128), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 84184), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 92384), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 100584), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 100640), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 100696), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 108896), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 117096), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 117152), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 117208), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 117264), 0.0);
    *v8 = 12;
    Copy_Mat(6, a2, 6, (a1 + 17792));
    Copy_Mat(6, (a2 + 56), 6, (a1 + 17848));
    Copy_Mat(6, (a2 + 112), 6, (a1 + 17904));
    Copy_Mat(1024, (a2 + 456), 0x400, (a1 + 40544));
    v9 = *(a2 + 168);
    *(a1 + 17960) = v9;
    Set_Mat_Const(v9, v9, 0x400, (a1 + 26168), 0.0);
    KF_createSystemModelMatrix(a1, 1, a1 + 17968, v10, v11, v12);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    Set_Mat_Const(*(a1 + 17960), 1u, 0x20, v18, 0.0);
    v13.i32[0] = *(a2 + 173);
    v14 = vmovl_u8(v13).u64[0];
    v15 = vext_s8(v14, v14, 6uLL);
    *(v7 + 40) = vuzp1_s8(v15, v15).u32[0];
    *(v6 + 8) = 1;
  }

  INS_Init(a1 + 16664, *(a2 + 172), *(a2 + 177), (a2 + 192), *(a2 + 184));
  CCH_initStates((a1 + 48760));
  *v5 = &sCCH_NeuralNWModel;
  *(a1 + 34368) = 1;
  *(a1 + 34376) = 0u;
  *(a1 + 34392) = 0u;
  *(a1 + 34408) = 0u;
  *(a1 + 34424) = 0u;
  *(a1 + 34440) = 0u;
  *(a1 + 34456) = 0u;
  *(a1 + 34472) = 0u;
  *(a1 + 34488) = 0u;
  *(a1 + 34504) = 0u;
  *(a1 + 34520) = 0u;
  *(a1 + 34536) = 0u;
  *(a1 + 34545) = 0u;
  *v7 = 0;
  Set_Mat_Const(0x20, 1u, 0x20, (a1 + 67384), 1.0);
  *(v5 + 280) = 0x7FF8000000000000;
  *v6 = 0xC08F380000000000;
  *(v5 + 352) = 0;
  *(v7 + 48) = 0;
  *(v5 + 289) = 1;
  KF_ResetStatistics(a1);
  result = Set_Mat_Const(6, 1u, 6, (a1 + 67664), -999.0);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t KF_ResetStatistics(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(result + 117424) = 0;
  *(result + 117428) = 0;
  *(result + 117440) = 0;
  *(result + 117376) = 0;
  *(result + 117380) = 0;
  *(result + 117384) = 0;
  *(result + 117392) = 0;
  *(result + 117352) = 0;
  *(result + 117356) = 0;
  *(result + 117360) = 0;
  *(result + 117368) = 0;
  *(result + 117328) = 0;
  *(result + 117332) = 0;
  *(result + 117336) = 0;
  *(result + 117344) = 0;
  *(result + 117400) = 0;
  *(result + 117404) = 0;
  *(result + 117408) = 0;
  *(result + 117416) = 0;
  *(result + 117432) = 1;
  *(result + 117448) = 0;
  *(result + 117456) = 0;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void KF_prepOutput(uint64_t a1, int *a2, double a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v6 = (a2 + 2048);
  v7 = a1 + 0x10000;
  bzero(a2, 0x23E8uLL);
  memset(v52, 0, sizeof(v52));
  Mult_Mat_Mat(9, a1 + 16832, 9, a1 + 16672, 9, v52);
  v50 = 0u;
  v51 = 0u;
  memset(v49, 0, sizeof(v49));
  Copy_SubMat_from_Mat(1.0, 32, a1, 21, 0, 3, 1u, 3, v49);
  Mult_Mat_Mat(9, v52, 3, v49, 3, &v50);
  v8 = Norma_Vec(3, &v50);
  memset(v48, 0, sizeof(v48));
  Copy_Mat_diag_to_Vec(1024, (a1 + 264), 0x15u, 3, 3, v48);
  Sqrt_Mat(3, v48, 3, v48);
  v9 = All_Mat_Smaller_Than(0.5, 3, v48);
  if (v8 > 1.0e-30 && v9 & 1 | ((*(v7 + 2121) & 1) == 0))
  {
    Mult_Mat_scalar(1.0 / v8, 3, &v50, 3, &v50);
    *(a2 + 10) = atan2(*&v51, *(&v50 + 1));
    v6[258] = 1;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 21, 21, 3, 3u, 9, &v43);
    Mult_Mat_Mat(9, v52, 9, &v43, 9, (a2 + 2154));
    Mult_Mat_MatT(9, (a2 + 2154), 9, v52, 9, (a2 + 2154));
    *(v7 + 2121) = 0;
  }

  else
  {
    Set_Mat_I(3, 9, a2 + 2154, 1.0);
    *(a2 + 10) = 0;
    v6[258] = 0;
    *(v7 + 2121) = 1;
  }

  Transpose_Mat(3, a1 + 17008, 3, a2, v10, v11);
  Transpose_Mat(3, a1 + 16944, 3, (a2 + 8), v12, v13);
  v14 = *(a1 + 17192);
  *(a2 + 8) = v14;
  *(a2 + 9) = v14;
  Transpose_Mat(9, a1 + 16672, 9, (a2 + 22), v15, v16);
  Copy_Mat(9, v52, 9, a2 + 42);
  Copy_Mat(1024, (a1 + 264), 0x400, a2 + 62);
  Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 6, 6, 3, 3u, 9, a2 + 2114);
  Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 3, 3, 3, 3u, 9, a2 + 2134);
  Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 27, 27, 5, 5u, 36, a2 + 2174);
  v17 = 1;
  Copy_SubMat_from_Mat(1.0, 32, a1, 27, 0, 5, 1u, 6, a2 + 2248);
  v6[257] = 1;
  *(a2 + 566) = *(a1 + 117328);
  v18 = *(a1 + 117344);
  v19 = *(a1 + 117360);
  v20 = *(a1 + 117376);
  *(a2 + 570) = *(a1 + 117392);
  *(a2 + 569) = v20;
  *(a2 + 568) = v19;
  *(a2 + 567) = v18;
  v21 = *(a1 + 117408);
  v22 = *(a1 + 117424);
  v23 = *(a1 + 117440);
  *(a2 + 1148) = *(a1 + 117456);
  *(a2 + 573) = v23;
  *(a2 + 572) = v22;
  *(a2 + 571) = v21;
  v6[259] = 1;
  v24 = *(a1 + 17192);
  if (v24 < a3)
  {
    v25 = a3 - v24;
    memset(v42, 0, sizeof(v42));
    Mult_Mat_scalar(a3 - v24, 3, (a1 + 16944), 3, v42);
    memset(v41, 0, sizeof(v41));
    Add_Mat(3, (a1 + 17008), 3, v42, 3, v41);
    v26 = Norma_Vec(3, v42);
    if (v25 > 5.0 || v25 > 2.0 && v26 > 15.0)
    {
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v28 = *(g_TCU + 8);
        }

        else
        {
          v28 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Extrapolate INVALID dt=%0.1fs dr=%0.2fm", "KF_prepOutput", 2665, v27, v28, v25, v26);
      }

      v6[259] = 0;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 6, 6, 3, 3u, 9, &v43);
    memset(v40, 0, sizeof(v40));
    Copy_SubMat_from_Mat(v25 * v25, 1024, (a1 + 264), 3, 3, 3, 3u, 9, v40);
    memset(v39, 0, sizeof(v39));
    Copy_SubMat_from_Mat(v25 + v25, 1024, (a1 + 264), 6, 3, 3, 3u, 9, v39);
    memset(v38, 0, sizeof(v38));
    Add_Mat(9, v40, 9, v39, 9, v38);
    Add_Mat(9, v38, 9, &v43, 9, v38);
    Copy_SubMat_to_Mat(1.0, 9, v38, 6, 6, 1024, a2 + 62);
    *(a2 + 9) = a3;
    Transpose_Mat(3, v41, 3, a2, v29, v30);
    *(a2 + 8) = a3;
  }

  v6[262] = 1;
  v31 = *(v7 + 2136);
  v32 = *(v7 + 2136 + 8 * (*(v7 + 2132) * *(v7 + 2128) - 1));
  if (vabdd_f64(v31, v32) < 180.0 && v31 - v32 != 0.0 && *(a1 + 17192) - v31 < 80.0)
  {
    v17 = 0;
    v6[262] = 0;
  }

  v33 = *(a2 + 1);
  if (v33 <= -1.79769313e308 || v33 >= 1.79769313e308)
  {
    if (g_FPE_LogSeverity)
    {
      v35 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v36 = *(g_TCU + 8);
      }

      else
      {
        v36 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f FPE output position has non valid value: %f", "KF_prepOutput", 2716, v35, v36, *(a2 + 1));
    }

    v34 = 0;
    g_FPE_AssertFlag = 1;
    v6[257] = 0;
  }

  else if ((v6[257] & 1) != 0 && v6[258] == 1)
  {
    v34 = v17 & v6[259];
  }

  else
  {
    v34 = 0;
  }

  v6[256] = v34;
  v37 = *MEMORY[0x29EDCA608];
}

void KF_initKFafterLeveling(uint64_t a1, int *a2, int *a3, double *a4, int *a5, double *a6, int *a7, _DWORD *a8, double a9)
{
  v13 = *MEMORY[0x29EDCA608];
  *(a1 + 17192) = a9;
  INS_InitAfterLeveling(a1 + 16664, a4, a5, a6, a7, a8);
  Copy_Mat(32, a2, 0x20, a1);
  Copy_Mat(1024, a3, 0x400, (a1 + 264));
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v12 = *MEMORY[0x29EDCA608];
}

void KF_softResetCmd(uint64_t a1, int a2, double a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = a1 + 0x10000;
  v21 = 0;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v12 = xmmword_29972AC70;
  v13 = 23;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          *(a1 + 34545) = 0u;
          *(a1 + 34520) = 0u;
          *(a1 + 34536) = 0u;
          *(a1 + 34488) = 0u;
          *(a1 + 34504) = 0u;
          *(a1 + 34456) = 0u;
          *(a1 + 34472) = 0u;
          *(a1 + 34424) = 0u;
          *(a1 + 34440) = 0u;
          *(a1 + 34392) = 0u;
          *(a1 + 34408) = 0u;
          *(a1 + 34376) = 0u;
          return;
        }

        goto LABEL_15;
      }

      Set_Mat_Cols_By_Idx(0.0, 1024, (a1 + 264), &v12);
      Set_Mat_Rows_By_Idx(0.0, 1024, (a1 + 264), &v12);
      memset(v11, 0, sizeof(v11));
      Copy_SubMat_from_Mat(1.0, 1024, (a1 + 40544), 21, 21, 3, 3u, 9, v11);
      Copy_SubMat_to_Mat(1.0, 9, v11, 21, 21, 1024, (a1 + 264));
LABEL_21:
      v10 = *MEMORY[0x29EDCA608];
      return;
    }

    Set_Mat_Const(0x20, 1u, 0x20, (a1 + 67384), 10.0);
LABEL_10:
    *(v6 + 2112) = a3;
    goto LABEL_21;
  }

  if (a2)
  {
    if (a2 != 1)
    {
LABEL_15:
      if (g_FPE_LogSeverity)
      {
        v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v9 = *(g_TCU + 8);
        }

        else
        {
          v9 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input type %u not supported!", "KF_softResetCmd", 3206, v8, v9, a2);
      }

      g_FPE_AssertFlag = 1;
      goto LABEL_21;
    }

    *(a1 + 67560) = vdupq_n_s64(0x40F86A0000000000uLL);
    *(a1 + 67576) = 0x40F86A0000000000;
    goto LABEL_10;
  }

  Mult_Mat_scalar(a3, 1024, (a1 + 264), 0x400, (a1 + 264));
  v7 = *MEMORY[0x29EDCA608];

  KF_ApplyCorrectionsFromKalmanFullStates(a1);
}

uint64_t posp_TimerInit(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 68, "posp_TimerInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 5, 1);
  }

  g_PospTmrData = 0;
  g_PospTmrData = 0;
  g_PospTmrData = 0;
  g_PospTmrData = -1;
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 68, "posp_TimerInit");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v4, 5, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t posp_StartTimer(void *a1, int a2, unsigned int a3, int a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "posp_StartTimer");
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
  }

  if (g_PospTmrData == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timer In Use\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "posp_StartTimer", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (AgpsFsmStartTimer(0x850106u, a3))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "posp_StartTimer", 1544);
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_13;
    }

LABEL_12:
    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "PSP", 68, "posp_StartTimer");
    LbsOsaTrace_WriteLog(0x13u, __str, v15, 5, 1);
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  g_PospTmrData = 1;
  g_PospTmrData = a1;
  g_PospTmrData = a4;
  g_PospTmrData = a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TmrStart,TmId,%u\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 73, "posp_StartTimer", g_PospTmrData);
    LbsOsaTrace_WriteLog(0x13u, __str, v20, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "PSP", 68, "posp_StartTimer");
    v16 = 1;
    LbsOsaTrace_WriteLog(0x13u, __str, v22, 5, 1);
  }

  else
  {
    v16 = 1;
  }

LABEL_14:
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t posp_StopTimer(int a1, int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "posp_StopTimer");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  if (a2 == 1 && g_PospTmrData != a1 && g_PospTmrData == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TmrActive,%u,TimerId,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "posp_StopTimer", 770, g_PospTmrData, g_PospTmrData);
      LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_18;
    }

LABEL_17:
    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "PSP", 68, "posp_StopTimer");
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 5, 1);
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  if (AgpsFsmStopTimer(8716550))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "posp_StopTimer", 1545);
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    }

    g_PospTmrData = 0;
    g_PospTmrData = -1;
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  g_PospTmrData = 0;
  g_PospTmrData = 0;
  g_PospTmrData = -1;
  g_PospTmrData = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TmrStop,TmId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 73, "posp_StopTimer", g_PospTmrData);
    LbsOsaTrace_WriteLog(0x13u, __str, v17, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 68, "posp_StopTimer");
    v13 = 1;
    LbsOsaTrace_WriteLog(0x13u, __str, v19, 5, 1);
  }

  else
  {
    v13 = 1;
  }

LABEL_19:
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t posp_TimerExpiry(int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "posp_TimerExpiry");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (a1 == 8716550)
  {
    if (g_PospTmrData)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TmrId,%u,Expired\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 73, "posp_TimerExpiry", g_PospTmrData);
        LbsOsaTrace_WriteLog(0x13u, __str, v5, 4, 1);
      }

      g_PospTmrData(g_PospTmrData, 1);
      g_PospTmrData = 0;
      g_PospTmrData = 0x7FFFFFFF;
      g_PospTmrData = 0;
      g_PospTmrData = 0;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "posp_TimerExpiry", 258);
        LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
      }

      g_PospTmrData = 0;
      g_PospTmrData = 0x7FFFFFFF;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 69, "posp_TimerExpiry", 2052);
    LbsOsaTrace_WriteLog(0x13u, __str, v7, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 68, "posp_TimerExpiry");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v12, 5, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t posp_TimerDeInit(void)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 68, "posp_TimerDeInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 5, 1);
  }

  if (g_PospTmrData == 1)
  {
    if (AgpsFsmStopTimer(8716550))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 69, "posp_TimerDeInit", 1545);
        v4 = 0;
LABEL_9:
        LbsOsaTrace_WriteLog(0x13u, __str, v3, v4, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TmrDeinit,TmrId,%u\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 73, "posp_TimerDeInit", g_PospTmrData);
      v4 = 4;
      goto LABEL_9;
    }

    g_PospTmrData = 0;
    g_PospTmrData = 0;
    g_PospTmrData = 0;
    g_PospTmrData = -1;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "posp_TimerDeInit");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t posp_IsTimerActive(int a1, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "posp_IsTimerActive");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  v6 = g_PospTmrData;
  v7 = g_PospTmrData;
  v8 = g_PospTmrData;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (v6 == a1 && v7 != 0 && v8 == a2)
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 68, "posp_IsTimerActive");
      v14 = 1;
      LbsOsaTrace_WriteLog(0x13u, __str, v16, 5, 1);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 68, "posp_IsTimerActive");
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 5, 1);
    }

    v14 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t gnssdbg_GetLogSeverityME(int a1, int a2)
{
  if (a2 == 1)
  {
    result = 1;
    if (a1 <= 1024)
    {
      if (a1 > 782)
      {
        switch(a1)
        {
          case 848:
          case 858:
          case 860:
          case 862:
          case 865:
          case 866:
          case 867:
          case 870:
          case 871:
          case 874:
          case 890:
          case 891:
          case 894:
          case 896:
          case 897:
          case 898:
          case 900:
          case 901:
          case 902:
          case 903:
          case 904:
          case 915:
          case 916:
          case 917:
          case 923:
          case 924:
          case 925:
          case 934:
          case 955:
            goto LABEL_81;
          case 849:
          case 850:
          case 851:
          case 852:
          case 853:
          case 854:
          case 855:
          case 859:
          case 861:
          case 863:
          case 864:
          case 868:
          case 869:
          case 873:
          case 877:
          case 878:
          case 879:
          case 880:
          case 882:
          case 883:
          case 884:
          case 885:
          case 886:
          case 887:
          case 889:
          case 892:
          case 893:
          case 895:
          case 899:
          case 906:
          case 907:
          case 908:
          case 909:
          case 910:
          case 911:
          case 912:
          case 913:
          case 914:
          case 918:
          case 919:
          case 921:
          case 922:
          case 928:
          case 929:
          case 930:
          case 931:
          case 932:
          case 933:
          case 937:
          case 938:
          case 939:
          case 940:
          case 941:
          case 942:
          case 943:
          case 944:
          case 945:
          case 946:
          case 949:
          case 950:
          case 951:
          case 957:
          case 964:
          case 965:
          case 966:
            goto LABEL_79;
          case 856:
          case 872:
          case 875:
          case 876:
          case 881:
          case 888:
          case 905:
          case 920:
          case 926:
          case 927:
          case 935:
          case 936:
          case 958:
          case 959:
          case 963:
            goto LABEL_62;
          case 857:
          case 947:
          case 948:
          case 952:
          case 953:
          case 954:
          case 956:
          case 960:
          case 961:
          case 962:
          case 967:
            goto LABEL_80;
          default:
            if ((a1 - 783) < 2)
            {
              goto LABEL_81;
            }

            if (a1 != 812)
            {
              goto LABEL_79;
            }

            goto LABEL_80;
        }
      }

      if (a1 > 512)
      {
        switch(a1)
        {
          case 513:
          case 514:
          case 515:
          case 516:
          case 517:
          case 518:
          case 520:
          case 521:
          case 524:
          case 525:
          case 526:
          case 527:
          case 545:
          case 550:
          case 551:
          case 552:
          case 553:
          case 558:
          case 571:
          case 574:
          case 575:
          case 590:
          case 602:
          case 603:
          case 604:
          case 605:
          case 606:
          case 608:
          case 609:
            goto LABEL_80;
          case 519:
          case 522:
          case 523:
          case 528:
          case 530:
          case 531:
          case 532:
          case 533:
          case 534:
          case 535:
          case 537:
          case 538:
          case 539:
          case 540:
          case 541:
          case 542:
          case 543:
          case 544:
          case 546:
          case 547:
          case 548:
          case 549:
          case 554:
          case 555:
          case 556:
          case 557:
          case 559:
          case 560:
          case 561:
          case 562:
          case 563:
          case 564:
          case 565:
          case 566:
          case 567:
          case 568:
          case 569:
          case 570:
          case 572:
          case 573:
          case 576:
          case 577:
          case 578:
          case 579:
          case 580:
          case 581:
          case 582:
          case 583:
          case 584:
          case 585:
          case 586:
          case 587:
          case 588:
          case 589:
          case 591:
          case 592:
          case 601:
          case 607:
            goto LABEL_79;
          case 529:
          case 536:
          case 593:
          case 594:
          case 595:
          case 596:
          case 597:
          case 598:
          case 599:
          case 600:
            goto LABEL_62;
          default:
            if (a1 == 630)
            {
              goto LABEL_80;
            }

            if (a1 != 770)
            {
              goto LABEL_79;
            }

            goto LABEL_81;
        }
      }

      v13 = a1 - 266;
      if (v13 > 0x2B)
      {
        goto LABEL_79;
      }

      if (((1 << v13) & 0xC080004A25) != 0)
      {
        goto LABEL_80;
      }

      if (((1 << v13) & 0xC0000000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_81;
    }

    if (a1 > 2304)
    {
      switch(a1)
      {
        case 2448:
        case 2485:
        case 2487:
        case 2489:
        case 2490:
        case 2493:
        case 2495:
        case 2499:
        case 2500:
        case 2501:
        case 2502:
        case 2512:
          goto LABEL_80;
        case 2449:
        case 2450:
        case 2451:
        case 2452:
        case 2453:
        case 2454:
        case 2455:
        case 2458:
        case 2460:
        case 2465:
        case 2468:
        case 2469:
        case 2470:
        case 2471:
        case 2472:
        case 2473:
        case 2474:
        case 2475:
        case 2476:
        case 2478:
        case 2480:
        case 2481:
        case 2482:
        case 2483:
        case 2486:
        case 2488:
        case 2496:
        case 2497:
        case 2498:
        case 2503:
        case 2504:
        case 2505:
        case 2506:
        case 2507:
        case 2508:
        case 2509:
        case 2510:
        case 2511:
        case 2513:
          goto LABEL_79;
        case 2456:
        case 2457:
        case 2459:
        case 2461:
        case 2462:
        case 2463:
        case 2464:
        case 2466:
        case 2467:
        case 2477:
        case 2514:
          goto LABEL_62;
        case 2479:
        case 2484:
        case 2491:
        case 2492:
        case 2494:
          goto LABEL_81;
        default:
          v11 = a1 - 1;
          if ((a1 - 2305) > 0x26)
          {
            goto LABEL_49;
          }

          if (((1 << v11) & 0x1F7000000) != 0)
          {
            goto LABEL_62;
          }

          if (((1 << v11) & 0xD80000) != 0)
          {
            goto LABEL_80;
          }

          if (((1 << v11) & 0x4008000003) != 0)
          {
            goto LABEL_81;
          }

LABEL_49:
          v9 = (a1 - 2404);
          if (v9 > 0x22)
          {
            goto LABEL_79;
          }

          if (((1 << v9) & 0x22020) != 0)
          {
            goto LABEL_81;
          }

          if (((1 << v9) & 0x400004001) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_80;
      }
    }

    if (a1 <= 1815)
    {
      if ((a1 - 1143) >= 2)
      {
        if ((a1 - 1550) < 2)
        {
          goto LABEL_80;
        }

        if (a1 != 1025)
        {
          goto LABEL_79;
        }
      }

      goto LABEL_81;
    }

    if (((a1 - 2049) > 0x24 || ((1 << (a1 - 1)) & 0x1F81FFFFFFLL) == 0) && a1 != 1816)
    {
      goto LABEL_79;
    }

    goto LABEL_62;
  }

  if (a2)
  {
    goto LABEL_79;
  }

  result = 1;
  if (a1 > 847)
  {
    if (a1 <= 2304)
    {
      if (a1 <= 2048)
      {
        v12 = a1 - 80;
        if ((a1 - 848) > 0x12)
        {
          goto LABEL_58;
        }

        if (((1 << v12) & 0x5FE00) != 0)
        {
          goto LABEL_80;
        }

        if (((1 << v12) & 0x20001) != 0)
        {
          goto LABEL_81;
        }

        if (a1 != 856)
        {
LABEL_58:
          if (a1 != 1544)
          {
            if (a1 != 1815)
            {
              goto LABEL_79;
            }

            goto LABEL_80;
          }
        }
      }

      else if ((a1 - 2049) >= 0x10)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v7 = (a1 - 2305);
      if (v7 <= 0x20)
      {
        if (((1 << (a1 - 1)) & 0x1F7000000) != 0)
        {
          goto LABEL_62;
        }

        if (((1 << (a1 - 1)) & 0x8800003) != 0)
        {
          goto LABEL_81;
        }

        if (v7 == 18)
        {
          goto LABEL_80;
        }
      }

      v8 = a1 + 92;
      if ((a1 - 2468) <= 0x10)
      {
        if (((1 << v8) & 0x1A3) != 0)
        {
          goto LABEL_80;
        }

        if (((1 << v8) & 0x1F000) != 0)
        {
          goto LABEL_62;
        }

        if (((1 << v8) & 0x14) != 0)
        {
          goto LABEL_81;
        }
      }

      v9 = (a1 - 2404);
      if (v9 > 0x3E)
      {
        goto LABEL_79;
      }

      if (((1 << v9) & 0x5000001000000001) != 0)
      {
        goto LABEL_80;
      }

      if (((1 << v9) & 0x100000002020) != 0)
      {
        goto LABEL_81;
      }

LABEL_52:
      if (v9 != 16)
      {
        goto LABEL_79;
      }
    }

LABEL_62:
    result = 2;
    goto LABEL_81;
  }

  if (a1 <= 512)
  {
    v10 = (a1 - 266);
    if (v10 > 0x2E)
    {
      goto LABEL_79;
    }

    if (((1 << v10) & 0x70C080004625) != 0)
    {
      goto LABEL_80;
    }

    if (((1 << v10) & 0xC005F900000) != 0)
    {
      goto LABEL_81;
    }

    if (v10 != 11)
    {
      goto LABEL_79;
    }

    goto LABEL_62;
  }

  v4 = a1 - 1;
  if ((a1 - 513) <= 0x3E)
  {
    if (((1 << v4) & 0x670021E10000F9BFLL) != 0)
    {
      goto LABEL_80;
    }

    if (((1 << v4) & 0x8810200) != 0)
    {
      goto LABEL_62;
    }
  }

  if ((a1 - 590) <= 0xA)
  {
    v5 = 1 << (a1 - 78);
    if ((v5 & 0x721) != 0)
    {
      goto LABEL_80;
    }

    if ((v5 & 0x18) != 0)
    {
      goto LABEL_81;
    }
  }

  v6 = (a1 - 770);
  if (v6 > 0x33)
  {
LABEL_79:
    result = 3;
    goto LABEL_81;
  }

  if (((1 << v6) & 0x8000000006001) == 0)
  {
    if (v6 != 42)
    {
      goto LABEL_79;
    }

LABEL_80:
    result = 4;
  }

LABEL_81:
  v14 = *MEMORY[0x29EDCA608];
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t asn1PE_PosPayLoad_rrlpPayload(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeOctetString(a1, 1, 0x2000, *(a2 + 8) - *a2, a2, 0, 0);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_PosPayLoad_rrlpPayload(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = 0;
  Asn1Coder::DecodeInteger(a1, 1, 0x2000u, &v7);
  Asn1Coder::GetBitStringFromBuffer(a1, 8 * v7, a2, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_PosPayLoad(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, *a2 > 3u);
  rrlpPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(Ver2) = *(a1 + 16);
    goto LABEL_3;
  }

  v10 = *a2;
  if (v10 < 4)
  {
    Ver2 = Asn1Coder::EncodeInteger(a1, 0, 2, v10 - 1);
    if (Ver2)
    {
      rrlpPayload = Ver2;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_3;
    }

    v11 = *a2;
    if (v11 != 1)
    {
      if (v11 == 3)
      {
        rrlpPayload = asn1PE_PosPayLoad_rrlpPayload(a1, (a2 + 56));
        if (!rrlpPayload)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }

      if (v11 != 2)
      {
        rrlpPayload = 4;
        *(a1 + 16) = 4;
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        LODWORD(Ver2) = 4;
        goto LABEL_3;
      }
    }

    rrlpPayload = 1;
    *(a1 + 16) = 1;
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
LABEL_19:
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(Ver2) = rrlpPayload;
    goto LABEL_3;
  }

  if (a2[80] | a2[81])
  {
    Ver2 = asn1PE_PosPayLoadVer2(a1, a2);
    rrlpPayload = Ver2;
    if (!Ver2)
    {
      goto LABEL_4;
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    rrlpPayload = 1;
    LODWORD(Ver2) = 1;
  }

LABEL_3:
  SuplAsn1Logger::TraceError(Ver2, v5, v6);
LABEL_4:
  v8 = *MEMORY[0x29EDCA608];
  return rrlpPayload;
}

uint64_t asn1PD_PosPayLoad(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  rrlpPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(Ver2) = *(a1 + 16);
    goto LABEL_3;
  }

  if (!BitFromBuffer)
  {
    v12 = 0;
    Ver2 = Asn1Coder::DecodeInteger(a1, 0, 2u, &v12);
    if (Ver2)
    {
      rrlpPayload = Ver2;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v11 = v12;
    *a2 = v12 + 1;
    if (v11)
    {
      if (v11 == 2)
      {
        rrlpPayload = asn1PD_PosPayLoad_rrlpPayload(a1, (a2 + 56));
        if (!rrlpPayload)
        {
          goto LABEL_4;
        }

        goto LABEL_17;
      }

      if (v11 != 1)
      {
        rrlpPayload = 4;
        *(a1 + 16) = 4;
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(Ver2) = 4;
        goto LABEL_3;
      }
    }

    rrlpPayload = 1;
    *(a1 + 16) = 1;
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
LABEL_17:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(Ver2) = rrlpPayload;
    goto LABEL_3;
  }

  Ver2 = asn1PD_PosPayLoadVer2(a1, a2);
  rrlpPayload = Ver2;
  if (!Ver2)
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
LABEL_3:
  SuplAsn1Logger::TraceError(Ver2, v6, v7);
LABEL_4:
  v9 = *MEMORY[0x29EDCA608];
  return rrlpPayload;
}

uint64_t asn1PE_SUPLPOS(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_5:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    v8 = *MEMORY[0x29EDCA608];
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_5;
  }

  v10 = *MEMORY[0x29EDCA608];

  return asn1PE_PosPayLoad(a1, a2 + 8);
}

uint64_t asn1PD_SUPLPOS(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_7:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_8;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_7;
  }

  v8 = asn1PD_PosPayLoad(a1, (a2 + 8));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  if (*a2)
  {
    v8 = asn1PD_Velocity(a1, (a2 + 144));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

LABEL_8:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t SuplPosPayloadHandler::GetInstance(SuplPosPayloadHandler *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (SuplPosPayloadHandler::GetInstance(void)::pred_suplPosPayloadHandler != -1)
  {
    dispatch_once(&SuplPosPayloadHandler::GetInstance(void)::pred_suplPosPayloadHandler, &__block_literal_global_1);
  }

  result = SuplPosPayloadHandler::m_pos_payload_handler;
  if (!SuplPosPayloadHandler::m_pos_payload_handler)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplPosPayloadHandler.cpp", 54, "false && Memory allocation failure");
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void *___ZN21SuplPosPayloadHandler11GetInstanceEv_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = operator new(0x18uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  SuplPosPayloadHandler::m_pos_payload_handler = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplPosPayloadHandler::ProcessPosPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "ProcessPosPayload", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
    }

    goto LABEL_16;
  }

  __p = 0;
  v44 = 0;
  v46 = 0;
  v45 = 0;
  v6 = SuplPosPayloadHandler::ResetLppParams(a1);
  v47 = *(a3 + 376);
  v7 = *(a3 + 380) == 2;
  v48 = v7;
  v8 = *(a2 + 8);
  if (v8 == 3)
  {
    Instance = SimUtils::GetInstance(v6);
    IsItCampedOnLte = SimUtils::IsItCampedOnLte(Instance, *(a3 + 532));
    if (!IsItCampedOnLte)
    {
      v46 = 1;
      if (&__p != (a2 + 64))
      {
        IsItCampedOnLte = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a2 + 64), *(a2 + 72), *(a2 + 72) - *(a2 + 64));
      }

      v28 = *(a3 + 532);
      v29 = LcsSuplGlueLayer::GetInstance(IsItCampedOnLte);
      v17 = (*(*v29 + 24))(v29, v28, &__p);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }

      goto LABEL_23;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
LABEL_22:
      v17 = -7;
      goto LABEL_23;
    }

LABEL_19:
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "ProcessPosPayload", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
    goto LABEL_22;
  }

  if (v8 != 4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "ProcessPosPayload", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
    }

    goto LABEL_22;
  }

  if (!*(a2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v26), "SPL", 69, "ProcessPosPayload", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v27, 0, 1);
    }

    goto LABEL_16;
  }

  v9 = SimUtils::GetInstance(v6);
  if (!SimUtils::IsItCampedOnLte(v9, *(a3 + 532)))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v46 = 3;
  IsLoggingAllowed = operator new(0x38uLL, MEMORY[0x29EDC9418]);
  if (IsLoggingAllowed)
  {
    *IsLoggingAllowed = 0;
    *(IsLoggingAllowed + 8) = 0u;
    *(IsLoggingAllowed + 24) = 0u;
    *(IsLoggingAllowed + 40) = 0u;
    *a1 = IsLoggingAllowed;
    v12 = *(a2 + 96);
    v11 = *(a2 + 104);
    if (v11 != v12)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        if (*(v12 + v13) != *(v12 + v13 + 8))
        {
          ++*(a1 + 8);
          IsLoggingAllowed = std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100]((*a1 + 8), (v12 + v13));
          v12 = *(a2 + 96);
          v11 = *(a2 + 104);
        }

        ++v14;
        v13 += 24;
      }

      while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v30), "SPL", 69, "CopyLppPayLoad", 1537);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v31, 0, 1);
    }
  }

  if (!*a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

  v32 = *(a3 + 376);
  v33 = SuplProvider::GetInstance(IsLoggingAllowed);
  v34 = *(v33 + 4);
  if (!v34)
  {
LABEL_38:
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
LABEL_16:
      v17 = -1;
      goto LABEL_23;
    }

LABEL_39:
    bzero(__str, 0x410uLL);
    v35 = mach_continuous_time();
    v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v35), "SPL", 69, "ProcessLppPayload", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v36, 0, 1);
    goto LABEL_16;
  }

  while (*v34 != v32)
  {
    v34 = *(v34 + 8);
    if (!v34)
    {
      goto LABEL_38;
    }
  }

  if (*(a1 + 8) >= 1)
  {
    v37 = 0;
    v38 = 0;
    while (1)
    {
      v39 = *a1;
      if (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 3) <= v38)
      {
        break;
      }

      v53 = 0;
      v54 = 0;
      v52 = 0;
      v50 = 0;
      v51 = 0;
      *__str = 0;
      v40 = (*(v39 + 8) + v37);
      if (v40 != __str)
      {
        v33 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__str, *v40, v40[1], v40[1] - *v40);
      }

      v52 = 3;
      v53 = v32;
      v54 = v7;
      v41 = *(v34 + 524);
      v42 = LcsSuplGlueLayer::GetInstance(v33);
      (*(*v42 + 24))(v42, v41, __str);
      v33 = *__str;
      if (*__str)
      {
        v50 = *__str;
        operator delete(*__str);
      }

      v17 = 0;
      ++v38;
      v37 += 24;
      if (v38 >= *(a1 + 8))
      {
        goto LABEL_23;
      }
    }
  }

  v17 = 0;
LABEL_23:
  v24 = *MEMORY[0x29EDCA608];
  return v17;
}

void sub_2995A19A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SuplPosPayloadHandler::ResetLppParams(uint64_t *this)
{
  v1 = this;
  v5[1] = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (*this)
  {
    v5[0] = (v2 + 32);
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v5);
    v5[0] = (v2 + 8);
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v5);
    this = MEMORY[0x29C29EB20](v2, 0x1020C407B5832A3);
  }

  *v1 = 0;
  v3 = *(v1 + 16);
  if (v3)
  {
    v5[0] = (v3 + 32);
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v5);
    v5[0] = (v3 + 8);
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v5);
    this = MEMORY[0x29C29EB20](v3, 0x1020C407B5832A3);
  }

  *(v1 + 16) = 0;
  *(v1 + 8) = 0;
  v4 = *MEMORY[0x29EDCA608];
  return this;
}

void SuplPosPayloadHandler::ProcessPosResponse(uint64_t a1, char **a2, int a3, SuplSession *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    SuplStateObject = SuplSession::GetSuplStateObject(a4);
    SuplState::UpdateState(SuplStateObject, 5, a4);
    v8 = SuplSession::GetSuplStateObject(a4);
    v9 = v8;
    v10 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      *(*(v8 + 40) + 8) = 3;
      v12 = (*(v8 + 40) + 64);
      if (v12 != a2)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v12, v10, v11, v11 - v10);
      }
    }

    v13 = *MEMORY[0x29EDCA608];

    SuplPosRecd::PrepareSuplMessage(v9, a3);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "ProcessPosResponse", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
    }

    v16 = *MEMORY[0x29EDCA608];
  }
}

uint64_t SuplPosPayloadHandler::ProcessLppAdReq(SuplProvider *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  Instance = SuplProvider::GetInstance(a1);
  v8 = *(Instance + 4);
  if (v8)
  {
    while (*v8 != a2)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_4;
      }
    }

    v29[0] = 0;
    v30 = 0;
    v31 = 0xFFFFFFFFLL;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v39 = 0;
    v40 = 0xFFFF000000000000;
    v41 = 0;
    v42 = 0;
    v43[0] = 0;
    *(v43 + 6) = 0;
    v43[2] = 0;
    v43[3] = 0;
    v44 = 0;
    v45 = 1;
    v12 = *(SimUtils::GetInstance(Instance) + 16);
    if (v12)
    {
      while (*v12 != *(v8 + 524))
      {
        v12 = *(v12 + 8);
        if (!v12)
        {
          goto LABEL_12;
        }
      }

      ASN1T_LocationId::operator=(v29, (v12 + 56));
    }

LABEL_12:
    v20 = *(v8 + 448);
    v13 = *(v8 + 464);
    v21 = *(v8 + 456);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v22, v13, *(v8 + 472), *(v8 + 472) - v13);
    __p = 0;
    v26 = 0;
    v27 = 0;
    v14 = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(v8 + 488), *(v8 + 496), *(v8 + 496) - *(v8 + 488));
    v28 = *(v8 + 512);
    if (a4 >= 0x11)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "ProcessLppAdReq", 514);
        LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
      }

      v11 = -4;
    }

    else
    {
      v15 = LcsSuplGlueLayer::GetInstance(v14);
      v11 = (*(*v15 + 40))(v15, a2, a3, a4, &v20, v44 + 8, *(v8 + 524));
    }

    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    ASN1T_CellInfo::~ASN1T_CellInfo(v29);
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "ProcessLppAdReq", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
    }

    v11 = -1;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_2995A1F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  SuplAsstDataNeededInfo::~SuplAsstDataNeededInfo(&a15);
  ASN1T_CellInfo::~ASN1T_CellInfo(&a24);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ASN1T_PosPayLoad_lpppayload>::__emplace_back_slow_path<ASN1T_PosPayLoad_lpppayload const&>(a1, a2);
  }

  else
  {
    std::vector<ASN1T_PosPayLoad_lpppayload>::__construct_one_at_end[abi:ne200100]<ASN1T_PosPayLoad_lpppayload const&>(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *SuplPosPayloadHandler::HandleLppPosResponseFromStack(uint64_t *a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  result = SuplProvider::GetInstance(a1);
  v5 = result[4];
  if (!v5)
  {
LABEL_4:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "HandleLppPosResponseFromStack", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
    }

    goto LABEL_10;
  }

  while (*v5 != *(a2 + 28))
  {
    v5 = *(v5 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  v8 = (v5 - 8);
  *(v5 + 400) = *(a2 + 32);
  if (*(a2 + 24))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "HandleLppPosResponseFromStack", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
    }

    SuplStateObject = SuplSession::GetSuplStateObject(v8);
    SuplState::UpdateState(SuplStateObject, 5, v8);
    v12 = SuplSession::GetSuplStateObject(v8);
    SuplPosRecd::SetPayLoadPosResponses(v12, a1[2]);
    SuplPosRecd::PrepareSuplMessage(v12, 1);
    result = SuplPosPayloadHandler::ResetLppParams(a1);
    goto LABEL_10;
  }

  if (*a2 == *(a2 + 8))
  {
LABEL_10:
    v13 = *MEMORY[0x29EDCA608];
    return result;
  }

  v14 = a1[2];
  if (v14)
  {
    v15 = *(v14 + 1);
  }

  else
  {
    v16 = operator new(0x38uLL, MEMORY[0x29EDC9418]);
    if (!v16)
    {
      a1[2] = 0;
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "HandleLppPosResponseFromStack", 1537);
        result = LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
      }

      goto LABEL_10;
    }

    v14 = v16;
    v15 = 0;
    *v16 = 0;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    a1[2] = v16;
  }

  *v14 = 1;
  v17 = *(v14 + 2);
  if (v17 == v15)
  {
    if (*(v14 + 3) == v15)
    {
      v29 = v14 + 8;
      operator new();
    }

    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    *(v14 + 2) = v17 + 3;
  }

  else if (0xAAAAAAAAAAAAAAABLL * (v17 - v15) >= 2)
  {
    v18 = v15 + 3;
    if (v17 != v15 + 3)
    {
      v19 = *(v14 + 2);
      do
      {
        v21 = *(v19 - 3);
        v19 -= 3;
        v20 = v21;
        if (v21)
        {
          *(v17 - 2) = v20;
          operator delete(v20);
        }

        v17 = v19;
      }

      while (v19 != v18);
    }

    *(v14 + 2) = v18;
  }

  v24 = *(a1[2] + 8);
  if (v24 != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v24, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  }

  v25 = SuplSession::GetSuplStateObject(v8);
  SuplState::UpdateState(v25, 5, v8);
  v26 = SuplSession::GetSuplStateObject(v8);
  SuplPosRecd::SetPayLoadPosResponses(v26, a1[2]);
  SuplPosRecd::PrepareSuplMessage(v26, 0);
  v27 = *MEMORY[0x29EDCA608];

  return SuplPosPayloadHandler::ResetLppParams(a1);
}

void sub_2995A2498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*v2)
  {
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100](v2);
    v3 = **a1;
    v4 = *MEMORY[0x29EDCA608];

    operator delete(v3);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];
  }
}

void std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100](uint64_t *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
  v7 = *MEMORY[0x29EDCA608];
}

uint64_t std::vector<ASN1T_PosPayLoad_lpppayload>::__construct_one_at_end[abi:ne200100]<ASN1T_PosPayLoad_lpppayload const&>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v3, *a2, a2[1], a2[1] - *a2);
  *(a1 + 8) = v3 + 3;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::vector<ASN1T_PosPayLoad_lpppayload>::__emplace_back_slow_path<ASN1T_PosPayLoad_lpppayload const&>(uint64_t *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>>(a1, v6);
  }

  v7 = 24 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(24 * v2, *a2, a2[1], a2[1] - *a2);
  *&v17 = v17 + 24;
  v8 = a1[1];
  v9 = (v16 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  v15 = v10;
  v16 = v10;
  std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::~__split_buffer(&v15);
  v12 = *MEMORY[0x29EDCA608];
  return v14;
}

void sub_2995A27BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>>(uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v10 = a4;
  v11 = a4;
  v12[0] = a1;
  v12[1] = &v10;
  v12[2] = &v11;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 3;
    }

    while (v6 != a3);
    v11 = a4;
    v13 = 1;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 24;
    }

    while (v5 != a3);
  }

  result = std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>::operator()[abi:ne200100](a1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2995A29A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>::operator()[abi:ne200100](uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::~__split_buffer(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

void std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t GM_Gen_SV_Meas_QI(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(a1 + 8);
    if ((~v1 & 0x888) != 0)
    {
      if ((~v1 & 0x88) != 0)
      {
        if ((~v1 & 0x848) != 0)
        {
          if ((~v1 & 0x48) != 0)
          {
            if ((~v1 & 0x28) != 0)
            {
              if ((~v1 & 0x18) != 0)
              {
                result = 12;
                if ((~v1 & 0xC) != 0)
                {
                  if ((~v1 & 0xA) != 0)
                  {
                    if (v1)
                    {
                      result = 9;
                    }

                    else if ((v1 & 0xFE) != 0)
                    {
                      result = 2;
                    }

                    else
                    {
                      result = 1;
                    }
                  }

                  else
                  {
                    result = 11;
                  }
                }
              }

              else
              {
                result = 13;
              }
            }

            else
            {
              result = 14;
            }
          }

          else
          {
            result = 15;
          }
        }

        else
        {
          result = 16;
        }
      }

      else
      {
        result = 17;
      }
    }

    else
    {
      result = 18;
    }
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rrl_error_handling(int a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  memset_s(&__s, 0x528uLL, 0, 0x528uLL);
  memset_s(&v10, 8uLL, 0, 8uLL);
  if (GetStaticLpPrivate()[16] != 1)
  {
    goto LABEL_25;
  }

  __s = *(GetStaticLpPrivate() + 6);
  v4 = *(GetStaticLpPrivate() + 8);
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (GetStaticLpPrivate()[584] == 1 && GetStaticLpPrivate()[536] == 1)
        {
          v5 = 528;
          goto LABEL_23;
        }

LABEL_25:
        v12 = 4;
        v13 = a1;
        goto LABEL_26;
      }

      if (v4 != 2)
      {
LABEL_19:
        ms_report_exception(1, 24590, 199, "rrl_error_handling");
        goto LABEL_25;
      }

      if (GetStaticLpPrivate()[692] != 1)
      {
        goto LABEL_25;
      }

      v6 = GetStaticLpPrivate() + 684;
    }

    else
    {
      if (GetStaticLpPrivate()[716] != 1)
      {
        goto LABEL_25;
      }

      v6 = GetStaticLpPrivate() + 708;
    }

    v7 = *v6;
    goto LABEL_24;
  }

  if (v4 <= 4)
  {
    if (v4 != 3 && GetStaticLpPrivate()[104] == 1 && GetStaticLpPrivate()[100] == 1)
    {
      v5 = 92;
LABEL_23:
      v7 = *&GetStaticLpPrivate()[v5];
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v4 != 5 && v4 != 6)
  {
    goto LABEL_19;
  }

  v7 = *(GetStaticLpPrivate() + 5);
LABEL_24:
  v10 = v7;
  v12 = 4;
  v13 = a1;
  v16 = 1;
  v15 = 1;
  v14 = v7;
LABEL_26:
  result = rrl_encode_air_message(a2, &__s);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rrl_process_measure_request(void *a1, _WORD *a2, int *a3, _BYTE *a4, uint64_t a5, int a6)
{
  v47 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  *a4 = 0;
  rrl_clear_gnss_ad(a1, 0);
  memset_s(a2, 0x2CuLL, 0, 0x2CuLL);
  v12 = *(a5 + 8);
  if (v12)
  {
    free(v12);
    *(a5 + 8) = 0;
  }

  *a5 = 0;
  if (GetStaticLpPrivate()[16] && !*(GetStaticLpPrivate() + 8))
  {
    StaticLpPrivate = GetStaticLpPrivate();
    v18 = GetStaticLpPrivate();
    memset_s(v18 + 1344, 0x1CuLL, 0, 0x1CuLL);
    v19 = *(GetStaticLpPrivate() + 6);
    *(GetStaticLpPrivate() + 339) = v19;
    LOBYTE(v19) = StaticLpPrivate[716];
    GetStaticLpPrivate()[1360] = v19;
    if (GetStaticLpPrivate()[1360] == 1)
    {
      *(GetStaticLpPrivate() + 1364) = *(StaticLpPrivate + 708);
    }

    if (!*(StaticLpPrivate + 13))
    {
      goto LABEL_43;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: methodType, %u\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 73, "rrl_process_measure_request", *(StaticLpPrivate + 10));
      LbsOsaTrace_WriteLog(0x13u, __str, v21, 4, 1);
    }

    v22 = *(StaticLpPrivate + 10);
    v23 = 4;
    if (v22 && v22 != 3)
    {
      *(GetStaticLpPrivate() + 337) = 2;
      if (StaticLpPrivate[560])
      {
        v24 = 1;
      }

      else
      {
        v24 = StaticLpPrivate[1336];
        if (StaticLpPrivate[1336])
        {
          v24 = StaticLpPrivate[1320] != 0;
        }
      }

      if (v24 | a6)
      {
LABEL_22:
        GetStaticLpPrivate()[1352] = 1;
        memset_s(__str, 4uLL, 0, 4uLL);
        if (GetStaticLpPrivate()[1352] == 1)
        {
          v25 = *(GetStaticLpPrivate() + 2);
          *__str = *(GetStaticLpPrivate() + 337) & v25;
          if (*__str)
          {
            goto LABEL_34;
          }
        }

        else if (*__str)
        {
          goto LABEL_34;
        }

        if (*(GetStaticLpPrivate() + 337) == 1)
        {
          if (GetStaticLpPrivate()[1352] == 1)
          {
            v26 = *(GetStaticLpPrivate() + 2) & 2;
            *__str = v26;
          }

          else
          {
            v26 = *__str;
          }

          if (!v26)
          {
LABEL_33:
            GetStaticLpPrivate()[1352] = 0;
LABEL_34:
            if (GetStaticLpPrivate()[1352])
            {
              *a2 = 1;
              *(a2 + 1) = -1;
              *(a2 + 9) = 0;
              *(a2 + 21) = 1;
              if (*(GetStaticLpPrivate() + 337) == 1)
              {
                *(a2 + 21) = 0;
              }

              *(a2 + 6) = 3;
              if (GetStaticLpPrivate()[1352] == 1)
              {
                a2[18] |= 1u;
              }

              *(a2 + 11) = 0;
              *(a2 + 4) = -1;
              *(a2 + 20) = 0;
              *(a2 + 7) = 2;
              a2[16] = -1;
              *(a2 + 34) = -1;
              *(a2 + 40) = 0;
              a2[19] = 0;
              v27 = *(StaticLpPrivate + 10);
              if ((v27 - 1) >= 2)
              {
                if (v27)
                {
                  ms_report_exception(2, 24591, 432, "rrl_process_measure_request");
                }

                else if (StaticLpPrivate[48] != 1)
                {
                  goto LABEL_46;
                }
              }

              *(a2 + 1) = rrl_util_accuracy_to_meter(*(StaticLpPrivate + 11));
LABEL_46:
              if (StaticLpPrivate[1336] == 1 && StaticLpPrivate[1040])
              {
                v28 = *(StaticLpPrivate + 259);
                if (HIWORD(v28))
                {
                  if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    goto LABEL_61;
                  }

                  bzero(__str, 0x410uLL);
                  v29 = mach_continuous_time();
                  v43 = *(StaticLpPrivate + 259);
                  v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requiredResponseTime,%d\n", (*&g_MacClockTicksToMsRelation * v29));
LABEL_58:
                  LbsOsaTrace_WriteLog(0x13u, __str, v30, 0, 1);
                  goto LABEL_61;
                }
              }

              else
              {
                v28 = *(StaticLpPrivate + 14);
                if (!v28)
                {
                  if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    goto LABEL_61;
                  }

                  bzero(__str, 0x410uLL);
                  v32 = mach_continuous_time();
                  v44 = *(StaticLpPrivate + 14);
                  v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Response time,%u\n", (*&g_MacClockTicksToMsRelation * v32));
                  goto LABEL_58;
                }

                if (v28 < 2)
                {
                  LOWORD(v28) = 2;
                }

                else
                {
                  v31 = v28 - 1;
                  LOWORD(v28) = 2;
                  do
                  {
                    LOWORD(v28) = 2 * v28;
                    --v31;
                  }

                  while (v31);
                }
              }

              *a2 = v28;
LABEL_61:
              if (StaticLpPrivate[1336] == 1 && StaticLpPrivate[724] != 0)
              {
                *(a2 + 9) = 1;
              }

              if (StaticLpPrivate[704] != 1 || StaticLpPrivate[688] == 0)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v35 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
                  if (StaticLpPrivate[1336])
                  {
                    v36 = 84;
                  }

                  else
                  {
                    v36 = 70;
                  }

                  v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MsrPosition Ext,%c\n", v35, "PSP", 68, "rrl_process_measure_request", v36);
                  LbsOsaTrace_WriteLog(0x13u, __str, v37, 5, 1);
                }
              }

              else
              {
                *(a2 + 10) = 1;
              }

              if (StaticLpPrivate[68] == 1)
              {
                *(a2 + 6) = *(StaticLpPrivate + 16);
              }

              if (StaticLpPrivate[560])
              {
                v38 = StaticLpPrivate[1320] == 0;
              }

              else
              {
                if (!StaticLpPrivate[1336] || !StaticLpPrivate[1320])
                {
LABEL_96:
                  *a3 = *(GetStaticLpPrivate() + 337);
                  v13 = 0;
                  GetStaticLpPrivate()[1344] = 1;
                  goto LABEL_7;
                }

                v38 = 0;
              }

              if (StaticLpPrivate[560])
              {
                v39 = (StaticLpPrivate + 184);
              }

              else
              {
                v39 = 0;
              }

              if (StaticLpPrivate[1336] == 0 || v38)
              {
                v40 = 0;
              }

              else
              {
                v40 = (StaticLpPrivate + 1048);
              }

              if (StaticLpPrivate[696])
              {
                v41 = StaticLpPrivate[704] == 0;
              }

              else
              {
                v41 = 1;
              }

              if (v41)
              {
                v42 = 0;
              }

              else
              {
                v42 = StaticLpPrivate + 692;
              }

              rrl_process_gnss_assist_data(a1, v39, v40, v42);
              goto LABEL_96;
            }

LABEL_43:
            memset_s(__str, 0x70uLL, 0, 0x70uLL);
            *__str = 7;
            v46 = 0;
            *a4 = rrl_encode_measure_response_error(__str, a5);
            goto LABEL_6;
          }

          *(GetStaticLpPrivate() + 337) = 2;
        }

        if (*__str)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v23 = 1;
    }

    *(GetStaticLpPrivate() + 337) = v23;
    goto LABEL_22;
  }

  rrl_clean();
LABEL_6:
  v13 = 1;
LABEL_7:
  rrl_free_asn_pdu();
  GetStaticLpPrivate()[1344] = 1;
  v14 = *a3;
  *(GetStaticLpPrivate() + 337) = v14;
  v15 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t rrl_clean_measure_procedure(void)
{
  v4 = *MEMORY[0x29EDCA608];
  StaticLpPrivate = GetStaticLpPrivate();
  v1 = *MEMORY[0x29EDCA608];
  v2 = StaticLpPrivate + 1344;

  return memset_s(v2, 0x1CuLL, 0, 0x1CuLL);
}

void rrl_process_gnss_assist_data(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v225 = *MEMORY[0x29EDCA608];
  rrl_clear_gnss_ad(a1, 1);
  if (!a2 || GetStaticLpPrivate()[5] != 1)
  {
    goto LABEL_304;
  }

  v223 = a3;
  if (*(a2 + 64) == 1)
  {
    *a1 = 1;
    *(a1 + 8) = 257;
    *(a1 + 20) = 80 * *a2;
    v8 = *(a2 + 4);
    if (HIWORD(v8))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gpsWeek,%d\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 4));
        LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
      }
    }

    else
    {
      *(a1 + 16) = v8;
    }

    if (a3 && *(a3 + 184) == 1)
    {
      v11 = *(a3 + 180);
      if (v11 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gpsWeekCycleNumber,%d\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a3 + 180));
          LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
        }
      }

      else
      {
        *(a1 + 18) = v11;
      }
    }

    if (a4)
    {
      *(a1 + 24) = *a4;
    }

    if (*(a2 + 28) == 1)
    {
      *(a1 + 62) = 1;
      v14 = *(a2 + 8);
      if (HIWORD(v14))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx bcchCarrier,%d\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 8));
          LbsOsaTrace_WriteLog(0x13u, __str, v16, 0, 1);
        }
      }

      else
      {
        *(a1 + 64) = v14;
      }

      v17 = *(a2 + 12);
      if (v17 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx bsic,%d\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 12));
          LbsOsaTrace_WriteLog(0x13u, __str, v19, 0, 1);
        }
      }

      else
      {
        *(a1 + 66) = v17;
      }

      *(a1 + 68) = *(a2 + 16);
      v20 = *(a2 + 20);
      if (v20 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v21 = mach_continuous_time();
          v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx timeSlot,%d\n", (*&g_MacClockTicksToMsRelation * v21), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 20));
          LbsOsaTrace_WriteLog(0x13u, __str, v22, 0, 1);
        }
      }

      else
      {
        *(a1 + 72) = v20;
      }

      v23 = *(a2 + 24);
      if (v23 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx bitNumber,%d\n", (*&g_MacClockTicksToMsRelation * v24), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 24));
          LbsOsaTrace_WriteLog(0x13u, __str, v25, 0, 1);
        }
      }

      else
      {
        *(a1 + 73) = v23;
      }
    }

    if (*(a2 + 56) == 1)
    {
      v26 = *(a2 + 48);
      if (v26 >= 1)
      {
        if (v26 > 0xFF)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v27 = mach_continuous_time();
            v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Length,%u\n", (*&g_MacClockTicksToMsRelation * v27), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 48));
            LbsOsaTrace_WriteLog(0x13u, __str, v28, 0, 1);
          }
        }

        else
        {
          *(a1 + 76) = v26;
        }

        if (*(a1 + 76) < 0x11u)
        {
          if (!*(a1 + 76))
          {
            goto LABEL_64;
          }
        }

        else
        {
          *(a1 + 76) = 16;
        }

        v29 = 0;
        v30 = (a2 + 32);
        v31 = (a1 + 84);
        do
        {
          v30 = *v30;
          v32 = *(v30 + 2);
          if (v32 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v33 = mach_continuous_time();
              v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatID,%d\n", (*&g_MacClockTicksToMsRelation * v33), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 2));
              LbsOsaTrace_WriteLog(0x13u, __str, v34, 0, 1);
            }
          }

          else
          {
            *(v31 - 6) = v32;
          }

          v35 = *(v30 + 3);
          if (HIWORD(v35))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v36 = mach_continuous_time();
              v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx tlmWord,%d\n", (*&g_MacClockTicksToMsRelation * v36), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 3));
              LbsOsaTrace_WriteLog(0x13u, __str, v37, 0, 1);
            }
          }

          else
          {
            *(v31 - 2) = v35;
          }

          v38 = *(v30 + 4);
          if (v38 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v39 = mach_continuous_time();
              v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx antiSpoof,%d\n", (*&g_MacClockTicksToMsRelation * v39), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 4));
              LbsOsaTrace_WriteLog(0x13u, __str, v40, 0, 1);
            }
          }

          else
          {
            *(v31 - 2) = v38;
          }

          v41 = *(v30 + 5);
          if (v41 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v42 = mach_continuous_time();
              v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alert,%d\n", (*&g_MacClockTicksToMsRelation * v42), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 5));
              LbsOsaTrace_WriteLog(0x13u, __str, v43, 0, 1);
            }
          }

          else
          {
            *(v31 - 1) = v41;
          }

          v44 = *(v30 + 6);
          if (v44 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v45 = mach_continuous_time();
              v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx tlmRsvdBits,%d\n", (*&g_MacClockTicksToMsRelation * v45), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 6));
              LbsOsaTrace_WriteLog(0x13u, __str, v46, 0, 1);
            }
          }

          else
          {
            *v31 = v44;
          }

          ++v29;
          v31 += 8;
        }

        while (v29 < *(a1 + 76));
      }
    }
  }

LABEL_64:
  if (*(a2 + 88) == 1)
  {
    v47 = *(a2 + 80);
    if (!v47)
    {
      goto LABEL_81;
    }

    v48 = *(a2 + 72);
    if (v48 < 7)
    {
      goto LABEL_81;
    }

    *(a1 + 504) = 0;
    v49 = *v47 >> 4;
    *(a1 + 522) = v49;
    *(a1 + 524) = v47[1] >> 7;
    v50 = v47[1];
    *(a1 + 528) = (v50 & 0x7F) << 8;
    v51 = v47[2] | ((v50 & 0x7F) << 8);
    *(a1 + 528) = v51 << 8;
    *(a1 + 528) = v47[3] | ((v51 & 0x7FFF) << 8);
    v52 = v47[4];
    LODWORD(v51) = v52;
    *(a1 + 536) = v52 << 8;
    v53 = v47[5] | (v52 << 8);
    *(a1 + 536) = v53 << 8;
    v54 = v47[6] | (v53 << 8);
    if ((v51 & 0x80000000) != 0)
    {
      v54 |= 0xFF800000;
    }

    *(a1 + 536) = v54;
    if (v49 > 7)
    {
      if (v49 == 8)
      {
        if (v48 >= 9)
        {
          *(a1 + 543) = v47[7] & 0x80;
          v57 = v47[7];
          *(a1 + 544) = v57 << 8;
          *(a1 + 544) = v47[8] | (v57 << 8);
          goto LABEL_81;
        }

        goto LABEL_83;
      }

      if (v49 == 9)
      {
        if (v48 >= 0xE)
        {
          *(a1 + 543) = v47[7] & 0x80;
          v56 = v47[7];
          *(a1 + 544) = v56 << 8;
          *(a1 + 544) = v47[8] | (v56 << 8);
          *(a1 + 540) = v47[9];
          *(a1 + 541) = v47[10];
          *(a1 + 542) = v47[11];
          *(a1 + 552) = v47[12];
          v55 = v47[13];
          goto LABEL_78;
        }

LABEL_83:
        *(a1 + 504) = 5;
        goto LABEL_84;
      }
    }

    else
    {
      if (v49 < 2)
      {
LABEL_81:
        *(a1 + 616) |= 1u;
        *a1 = 1;
        goto LABEL_84;
      }

      if (v49 == 3)
      {
        if (v48 >= 0xB)
        {
          *(a1 + 540) = v47[7];
          *(a1 + 541) = v47[8];
          *(a1 + 542) = v47[9];
          v55 = v47[10];
LABEL_78:
          *(a1 + 553) = v55;
          goto LABEL_81;
        }

        goto LABEL_83;
      }
    }

    ms_report_exception(1, 24590, 1737, "rrl_set_ref_location");
    goto LABEL_83;
  }

LABEL_84:
  if (*(a2 + 160) == 1)
  {
    v58 = *(a2 + 152);
    if (v58 > 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v59 = mach_continuous_time();
        v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Length,%u\n", (*&g_MacClockTicksToMsRelation * v59), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(a2 + 152));
        LbsOsaTrace_WriteLog(0x13u, __str, v60, 0, 1);
      }

      v58 = *(a2 + 152);
    }

    else
    {
      *(a1 + 312) = v58;
    }

    v61 = v58;
    v62 = 100 * v58;
    if (is_mul_ok(v61, 0x64uLL))
    {
      v63 = v62;
    }

    else
    {
      v63 = -1;
    }

    v64 = operator new[](v63, MEMORY[0x29EDC9418]);
    if (v64)
    {
      if (v61)
      {
        v65 = v64;
        do
        {
          *v65 = 255;
          *(v65 + 4) = -1;
          v65[10] = -1;
          *(v65 + 2) = -1;
          v65[6] = -1;
          *(v65 + 12) = -1;
          *(v65 + 20) = -1;
          *(v65 + 28) = -COERCE_DOUBLE(0x800000008000);
          *(v65 + 36) = 0x7FFF7FFF7FFFFFFFLL;
          *(v65 + 11) = 0x7FFFFFFF;
          *(v65 + 24) = 0x7FFF;
          *(v65 + 13) = -1;
          *(v65 + 28) = 0x7FFF;
          *(v65 + 60) = -1;
          *(v65 + 34) = 0x7FFF;
          *(v65 + 18) = 0x7FFFFFFF;
          *(v65 + 38) = 0x7FFF;
          *(v65 + 20) = 0x7FFFFFFF;
          *(v65 + 42) = 0x7FFF;
          *(v65 + 11) = 0x8000000080000000;
          *(v65 + 48) = 0x7FFF;
          v65 += 100;
        }

        while (v65 != &v64[100 * v61]);
      }

      *(a1 + 320) = v64;
      if (*(a1 + 312))
      {
        v66 = 0;
        v67 = (a2 + 136);
        v68 = 96;
        do
        {
          v67 = *v67;
          v69 = *(v67 + 2);
          if (v69 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v70 = mach_continuous_time();
              v71 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatID,%d\n", (*&g_MacClockTicksToMsRelation * v70), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 2));
              LbsOsaTrace_WriteLog(0x13u, __str, v71, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 320) + v68 - 96) = v69;
          }

          v72 = *(a1 + 320);
          v73 = v72 + v68;
          *(v73 - 95) = 0;
          v74 = *(v67 + 3);
          *(v73 - 94) = v74;
          if ((v74 | 2) == 2)
          {
            v75 = *(v67 + 4);
            if (v75 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v76 = mach_continuous_time();
                v77 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCodeOnL2,%d\n", (*&g_MacClockTicksToMsRelation * v76), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 4));
                LbsOsaTrace_WriteLog(0x13u, __str, v77, 0, 1);
              }
            }

            else
            {
              *(v72 + v68 - 92) = v75;
            }

            v78 = *(v67 + 5);
            if (v78 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v79 = mach_continuous_time();
                v80 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemURA,%d\n", (*&g_MacClockTicksToMsRelation * v79), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 5));
                LbsOsaTrace_WriteLog(0x13u, __str, v80, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 320) + v68 - 91) = v78;
            }

            v81 = *(v67 + 6);
            if (v81 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v82 = mach_continuous_time();
                v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemSVhealth,%d\n", (*&g_MacClockTicksToMsRelation * v82), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 6));
                LbsOsaTrace_WriteLog(0x13u, __str, v83, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 320) + v68 - 90) = v81;
            }

            v84 = *(v67 + 7);
            if (HIWORD(v84))
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v85 = mach_continuous_time();
                v86 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemIODC,%d\n", (*&g_MacClockTicksToMsRelation * v85), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 7));
                LbsOsaTrace_WriteLog(0x13u, __str, v86, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 320) + v68 - 88) = v84;
            }

            v87 = *(v67 + 8);
            if (v87 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v88 = mach_continuous_time();
                v89 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemL2Pflag,%d\n", (*&g_MacClockTicksToMsRelation * v88), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 8));
                LbsOsaTrace_WriteLog(0x13u, __str, v89, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 320) + v68 - 86) = v87;
            }

            v90 = *(a1 + 320) + v68;
            *(v90 - 84) = *(v67 + 36);
            v91 = *(v67 + 13);
            if (v91 == v91)
            {
              *(v90 - 68) = v91;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v92 = mach_continuous_time();
              v93 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemTgd,%d\n", (*&g_MacClockTicksToMsRelation * v92), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 13));
              LbsOsaTrace_WriteLog(0x13u, __str, v93, 0, 1);
            }

            v94 = *(v67 + 14);
            if (HIWORD(v94))
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v95 = mach_continuous_time();
                v96 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemToc,%d\n", (*&g_MacClockTicksToMsRelation * v95), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 14));
                LbsOsaTrace_WriteLog(0x13u, __str, v96, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 320) + v68 - 66) = v94;
            }

            v97 = *(v67 + 15);
            if (v97 == v97)
            {
              *(*(a1 + 320) + v68 - 64) = v97;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v98 = mach_continuous_time();
              v99 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemAF2,%d\n", (*&g_MacClockTicksToMsRelation * v98), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 15));
              LbsOsaTrace_WriteLog(0x13u, __str, v99, 0, 1);
            }

            v100 = *(v67 + 16);
            if (v100 == v100)
            {
              *(*(a1 + 320) + v68 - 62) = v100;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v101 = mach_continuous_time();
              v102 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemAF1,%d\n", (*&g_MacClockTicksToMsRelation * v101), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 16));
              LbsOsaTrace_WriteLog(0x13u, __str, v102, 0, 1);
            }

            v103 = *(a1 + 320) + v68;
            *(v103 - 60) = *(v67 + 17);
            v104 = *(v67 + 18);
            if (v104 == v104)
            {
              *(v103 - 56) = v104;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v105 = mach_continuous_time();
              v106 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCrs,%d\n", (*&g_MacClockTicksToMsRelation * v105), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 18));
              LbsOsaTrace_WriteLog(0x13u, __str, v106, 0, 1);
            }

            v107 = *(v67 + 19);
            if (v107 == v107)
            {
              *(*(a1 + 320) + v68 - 54) = v107;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v108 = mach_continuous_time();
              v109 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemDeltaN,%d\n", (*&g_MacClockTicksToMsRelation * v108), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 19));
              LbsOsaTrace_WriteLog(0x13u, __str, v109, 0, 1);
            }

            v110 = *(a1 + 320) + v68;
            *(v110 - 52) = *(v67 + 20);
            v111 = *(v67 + 21);
            if (v111 == v111)
            {
              *(v110 - 48) = v111;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v112 = mach_continuous_time();
              v113 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCuc,%d\n", (*&g_MacClockTicksToMsRelation * v112), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 21));
              LbsOsaTrace_WriteLog(0x13u, __str, v113, 0, 1);
            }

            v114 = *(a1 + 320) + v68;
            *(v114 - 44) = *(v67 + 22);
            v115 = *(v67 + 23);
            if (v115 == v115)
            {
              *(v114 - 40) = v115;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v116 = mach_continuous_time();
              v117 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCus,%d\n", (*&g_MacClockTicksToMsRelation * v116), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 23));
              LbsOsaTrace_WriteLog(0x13u, __str, v117, 0, 1);
            }

            v118 = *(a1 + 320) + v68;
            *(v118 - 36) = *(v67 + 24);
            v119 = *(v67 + 25);
            if (HIWORD(v119))
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v120 = mach_continuous_time();
                v121 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemToe,%d\n", (*&g_MacClockTicksToMsRelation * v120), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 25));
                LbsOsaTrace_WriteLog(0x13u, __str, v121, 0, 1);
              }
            }

            else
            {
              *(v118 - 32) = v119;
            }

            v122 = *(v67 + 26);
            if (v122 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v123 = mach_continuous_time();
                v124 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemFitFlag,%d\n", (*&g_MacClockTicksToMsRelation * v123), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 26));
                LbsOsaTrace_WriteLog(0x13u, __str, v124, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 320) + v68 - 30) = v122;
            }

            v125 = *(v67 + 27);
            if (v125 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v126 = mach_continuous_time();
                v127 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemAODA,%d\n", (*&g_MacClockTicksToMsRelation * v126), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 27));
                LbsOsaTrace_WriteLog(0x13u, __str, v127, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 320) + v68 - 29) = v125;
            }

            v128 = *(v67 + 28);
            if (v128 == v128)
            {
              *(*(a1 + 320) + v68 - 28) = v128;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v129 = mach_continuous_time();
              v130 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCic,%d\n", (*&g_MacClockTicksToMsRelation * v129), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 28));
              LbsOsaTrace_WriteLog(0x13u, __str, v130, 0, 1);
            }

            v131 = *(a1 + 320) + v68;
            *(v131 - 24) = *(v67 + 29);
            v132 = *(v67 + 30);
            if (v132 == v132)
            {
              *(v131 - 20) = v132;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v133 = mach_continuous_time();
              v134 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCis,%d\n", (*&g_MacClockTicksToMsRelation * v133), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 30));
              LbsOsaTrace_WriteLog(0x13u, __str, v134, 0, 1);
            }

            v135 = *(a1 + 320) + v68;
            *(v135 - 16) = *(v67 + 31);
            v136 = *(v67 + 32);
            if (v136 == v136)
            {
              *(v135 - 12) = v136;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v137 = mach_continuous_time();
              v138 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCrc,%d\n", (*&g_MacClockTicksToMsRelation * v137), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 32));
              LbsOsaTrace_WriteLog(0x13u, __str, v138, 0, 1);
            }

            v139 = *(a1 + 320);
            *(v139 + v68 - 8) = *(v67 + 132);
            v140 = *(v67 + 35);
            if (v140 == v140)
            {
              *(v139 + v68) = v140;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v141 = mach_continuous_time();
              v142 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemIDot,%d\n", (*&g_MacClockTicksToMsRelation * v141), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 35));
              LbsOsaTrace_WriteLog(0x13u, __str, v142, 0, 1);
            }
          }

          else
          {
            ms_report_exception(1, 24590, 1807, "rrl_set_gps_navigation_data");
          }

          ++v66;
          v68 += 100;
        }

        while (v66 < *(a1 + 312));
      }

      *(a1 + 304) = 1;
      *a1 = 1;
      *(a1 + 8) = 1;
    }

    else
    {
      *(a1 + 320) = 0;
      ms_report_exception(2, 3, 1771, "rrl_set_gps_navigation_data");
      *(a1 + 304) = 0;
    }
  }

  if (*(a2 + 272) == 1)
  {
    *(a1 + 344) = *(a2 + 240);
    v143 = *(a2 + 264);
    *(a1 + 346) = *(a2 + 264);
    v144 = operator new[](32 * v143, MEMORY[0x29EDC9418]);
    if (v144)
    {
      if (v143)
      {
        v145 = v144;
        do
        {
          *v145 = -1;
          *(v145 + 1) = -1;
          v145[4] = -1;
          *(v145 + 6) = 2147450879;
          v145[10] = -1;
          *(v145 + 12) = xmmword_299728330;
          *(v145 + 7) = 2147450879;
          v145 += 32;
        }

        while (v145 != &v144[32 * v143]);
      }

      *(a1 + 352) = v144;
      if (v143)
      {
        v146 = 0;
        v147 = (a2 + 248);
        v148 = 30;
        do
        {
          v147 = *v147;
          v149 = *(v147 + 2);
          if (v149 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v150 = mach_continuous_time();
              v151 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx satelliteID,%d\n", (*&g_MacClockTicksToMsRelation * v150), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 2));
              LbsOsaTrace_WriteLog(0x13u, __str, v151, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 352) + v148 - 30) = v149;
          }

          v152 = *(v147 + 3);
          if (HIWORD(v152))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v153 = mach_continuous_time();
              v154 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacE,%d\n", (*&g_MacClockTicksToMsRelation * v153), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 3));
              LbsOsaTrace_WriteLog(0x13u, __str, v154, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 352) + v148 - 28) = v152;
          }

          v155 = *(v147 + 4);
          if (v155 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v156 = mach_continuous_time();
              v157 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alamanacToa,%d\n", (*&g_MacClockTicksToMsRelation * v156), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 4));
              LbsOsaTrace_WriteLog(0x13u, __str, v157, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 352) + v148 - 26) = v155;
          }

          v158 = *(v147 + 5);
          if (v158 == v158)
          {
            *(*(a1 + 352) + v148 - 24) = v158;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v159 = mach_continuous_time();
            v160 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacKsii,%d\n", (*&g_MacClockTicksToMsRelation * v159), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 5));
            LbsOsaTrace_WriteLog(0x13u, __str, v160, 0, 1);
          }

          v161 = *(v147 + 6);
          if (v161 == v161)
          {
            *(*(a1 + 352) + v148 - 22) = v161;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v162 = mach_continuous_time();
            v163 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacOmegaDot,%d\n", (*&g_MacClockTicksToMsRelation * v162), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 6));
            LbsOsaTrace_WriteLog(0x13u, __str, v163, 0, 1);
          }

          v164 = *(v147 + 7);
          if (v164 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v165 = mach_continuous_time();
              v166 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacSVhealth,%d\n", (*&g_MacClockTicksToMsRelation * v165), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 7));
              LbsOsaTrace_WriteLog(0x13u, __str, v166, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 352) + v148 - 20) = v164;
          }

          v167 = *(a1 + 352) + v148;
          *(v167 - 18) = *(v147 + 2);
          v168 = *(v147 + 12);
          if (v168 == v168)
          {
            *(v167 - 2) = v168;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v169 = mach_continuous_time();
            v170 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacAF0,%d\n", (*&g_MacClockTicksToMsRelation * v169), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 12));
            LbsOsaTrace_WriteLog(0x13u, __str, v170, 0, 1);
          }

          v171 = *(v147 + 13);
          if (v171 == v171)
          {
            *(*(a1 + 352) + v148) = v171;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v172 = mach_continuous_time();
            v173 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacAF1,%d\n", (*&g_MacClockTicksToMsRelation * v172), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 13));
            LbsOsaTrace_WriteLog(0x13u, __str, v173, 0, 1);
          }

          ++v146;
          v148 += 32;
        }

        while (v146 < *(a1 + 346));
      }

      if (v223 && *(v223 + 218) == 1)
      {
        *(a1 + 345) = *(v223 + 217);
      }

      *(a1 + 336) = 1;
      *a1 = 1;
      *(a1 + 8) = 1;
    }

    else
    {
      *(a1 + 352) = 0;
      ms_report_exception(2, 3, 2039, "rrl_set_gps_almanac_data");
      *(a1 + 336) = 0;
    }
  }

  if (*(a2 + 196) == 1)
  {
    v174 = *(a2 + 164);
    if (v174 == v174)
    {
      *(a1 + 620) = v174;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v175 = mach_continuous_time();
      v176 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa0,%d\n", (*&g_MacClockTicksToMsRelation * v175), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 164));
      LbsOsaTrace_WriteLog(0x13u, __str, v176, 0, 1);
    }

    v177 = *(a2 + 168);
    if (v177 == v177)
    {
      *(a1 + 621) = v177;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v178 = mach_continuous_time();
      v179 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa1,%d\n", (*&g_MacClockTicksToMsRelation * v178), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 168));
      LbsOsaTrace_WriteLog(0x13u, __str, v179, 0, 1);
    }

    v180 = *(a2 + 172);
    if (v180 == v180)
    {
      *(a1 + 622) = v180;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v181 = mach_continuous_time();
      v182 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa2,%d\n", (*&g_MacClockTicksToMsRelation * v181), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 172));
      LbsOsaTrace_WriteLog(0x13u, __str, v182, 0, 1);
    }

    v183 = *(a2 + 176);
    if (v183 == v183)
    {
      *(a1 + 623) = v183;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v184 = mach_continuous_time();
      v185 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa3,%d\n", (*&g_MacClockTicksToMsRelation * v184), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 176));
      LbsOsaTrace_WriteLog(0x13u, __str, v185, 0, 1);
    }

    v186 = *(a2 + 180);
    if (v186 == v186)
    {
      *(a1 + 624) = v186;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v187 = mach_continuous_time();
      v188 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta0,%d\n", (*&g_MacClockTicksToMsRelation * v187), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 180));
      LbsOsaTrace_WriteLog(0x13u, __str, v188, 0, 1);
    }

    v189 = *(a2 + 184);
    if (v189 == v189)
    {
      *(a1 + 625) = v189;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v190 = mach_continuous_time();
      v191 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta1,%d\n", (*&g_MacClockTicksToMsRelation * v190), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 184));
      LbsOsaTrace_WriteLog(0x13u, __str, v191, 0, 1);
    }

    v192 = *(a2 + 188);
    if (v192 == v192)
    {
      *(a1 + 626) = v192;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v193 = mach_continuous_time();
      v194 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta2,%d\n", (*&g_MacClockTicksToMsRelation * v193), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 188));
      LbsOsaTrace_WriteLog(0x13u, __str, v194, 0, 1);
    }

    v195 = *(a2 + 192);
    if (v195 == v195)
    {
      *(a1 + 627) = v195;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v196 = mach_continuous_time();
      v197 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta3,%d\n", (*&g_MacClockTicksToMsRelation * v196), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 192));
      LbsOsaTrace_WriteLog(0x13u, __str, v197, 0, 1);
    }

    *(a1 + 629) |= 1u;
    *(a1 + 617) = 1;
    *a1 = 1;
  }

  if (*(a2 + 232) == 1)
  {
    *(a1 + 372) = *(a2 + 200);
    v198 = *(a2 + 208);
    if (v198 > 0xFF)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v199 = mach_continuous_time();
        v200 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcTot,%d\n", (*&g_MacClockTicksToMsRelation * v199), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 208));
        LbsOsaTrace_WriteLog(0x13u, __str, v200, 0, 1);
      }
    }

    else
    {
      *(a1 + 380) = v198;
    }

    v201 = *(a2 + 212);
    if (v201 > 0xFF)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v202 = mach_continuous_time();
        v203 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcWNt,%d\n", (*&g_MacClockTicksToMsRelation * v202), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 212));
        LbsOsaTrace_WriteLog(0x13u, __str, v203, 0, 1);
      }
    }

    else
    {
      *(a1 + 381) = v201;
    }

    v204 = *(a2 + 216);
    if (v204 == v204)
    {
      *(a1 + 382) = v204;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v205 = mach_continuous_time();
      v206 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcDeltaTls,%d\n", (*&g_MacClockTicksToMsRelation * v205), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 216));
      LbsOsaTrace_WriteLog(0x13u, __str, v206, 0, 1);
    }

    v207 = *(a2 + 220);
    if (v207 > 0xFF)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v208 = mach_continuous_time();
        v209 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcWNlsf,%d\n", (*&g_MacClockTicksToMsRelation * v208), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 220));
        LbsOsaTrace_WriteLog(0x13u, __str, v209, 0, 1);
      }
    }

    else
    {
      *(a1 + 383) = v207;
    }

    v210 = *(a2 + 224);
    if (v210 == v210)
    {
      *(a1 + 384) = v210;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v211 = mach_continuous_time();
      v212 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcDN,%d\n", (*&g_MacClockTicksToMsRelation * v211), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 224));
      LbsOsaTrace_WriteLog(0x13u, __str, v212, 0, 1);
    }

    v213 = *(a2 + 228);
    if (v213 == v213)
    {
      *(a1 + 385) = v213;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v214 = mach_continuous_time();
      v215 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcDeltaTlsf,%d\n", (*&g_MacClockTicksToMsRelation * v214), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 228));
      LbsOsaTrace_WriteLog(0x13u, __str, v215, 0, 1);
    }

    *(a1 + 368) = 1;
    *a1 = 1;
    *(a1 + 8) = 1;
  }

  if (*(a2 + 368) == 1)
  {
    v216 = *(a2 + 360);
    if (v216 > 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v217 = mach_continuous_time();
        v218 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Length,%u\n", (*&g_MacClockTicksToMsRelation * v217), "PSP", 69, "rrl_set_gps_real_time_integrity_data", 772, *(a2 + 360));
        LbsOsaTrace_WriteLog(0x13u, __str, v218, 0, 1);
      }
    }

    else
    {
      *(a1 + 392) = v216;
    }

    v219 = gnssOsa_Calloc("posp_alloc", 18, 1, *(a1 + 392));
    *(a1 + 400) = v219;
    if (v219)
    {
      if (*(a1 + 392))
      {
        v220 = 0;
        v221 = (a2 + 344);
        do
        {
          v221 = *v221;
          *(*(a1 + 400) + v220++) = *(v221 + 2);
        }

        while (v220 < *(a1 + 392));
      }

      *(a1 + 388) = 1;
      *a1 = 1;
      *(a1 + 8) = 1;
    }

    else
    {
      ms_report_exception(2, 3, 2319, "rrl_set_gps_real_time_integrity_data");
      *(a1 + 388) = 0;
    }
  }

LABEL_304:
  v222 = *MEMORY[0x29EDCA608];
}

uint64_t rrl_encode_measure_response_error(const void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  StaticLpPrivate = GetStaticLpPrivate();
  if (a1 || StaticLpPrivate[1344] == 1)
  {
    memset_s(v8, 0x528uLL, 0, 0x528uLL);
    v8[0] = *(GetStaticLpPrivate() + 339);
    v8[2] = 1;
    if (GetStaticLpPrivate()[1360] == 1)
    {
      v12 = 1;
      v11 = 1;
      v10 = *(GetStaticLpPrivate() + 1364);
    }

    v9[112] = 1;
    memcpy_s("rrl_encode_measure_response_error", 666, v9, 0x70u, a1, 0x70uLL);
    v5 = rrl_encode_air_message(a2, v8);
    GenericFreeSort(v8, &ySDL_T_RASN_PDU);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t rrl_process_assistance_data_delivery(void *a1, _BYTE *a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (GetStaticLpPrivate()[16] && *(GetStaticLpPrivate() + 8) == 2)
  {
    StaticLpPrivate = GetStaticLpPrivate();
    if (StaticLpPrivate[528])
    {
      v7 = (StaticLpPrivate + 152);
    }

    else
    {
      v7 = 0;
    }

    if (StaticLpPrivate[1256])
    {
      v8 = StaticLpPrivate[1264] == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = (StaticLpPrivate + 984);
    }

    if (StaticLpPrivate[672])
    {
      v10 = StaticLpPrivate[680] == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = StaticLpPrivate + 668;
    }

    rrl_process_gnss_assist_data(a1, v7, v9, v11);
    v12 = *(GetStaticLpPrivate() + 6);
    rrl_free_asn_pdu();
    GetStaticLpPrivate()[16] = 1;
    *(GetStaticLpPrivate() + 6) = v12;
    *(GetStaticLpPrivate() + 8) = 3;
    v13 = GetStaticLpPrivate();
    v14 = rrl_encode_air_message(a3, (v13 + 24));
    *a2 = v14;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = 1;
      rrl_clear_gnss_ad(a1, 1);
    }

    rrl_free_asn_pdu();
  }

  else
  {
    rrl_clean();
    v15 = 1;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t rrl_process_measure_response_msb(unsigned __int16 *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  v7 = *(a4 + 8);
  if (v7)
  {
    free(v7);
    *(a4 + 8) = 0;
  }

  *a4 = 0;
  memset_s(__s, 0x70uLL, 0, 0x70uLL);
  if (GetStaticLpPrivate()[1344] && *(GetStaticLpPrivate() + 337) == 2)
  {
    v8 = 0;
    v9 = *a1;
    v10 = 2;
    if (v9 == 1 || v9 != 4 && (v9 == 5 || (rrl_free_asn_pdu(), v8 = 1, GetStaticLpPrivate()[16] = 1, StaticLpPrivate = GetStaticLpPrivate(), *a3 = rrl_encode_measure_response_location_info(a1, (StaticLpPrivate + 24), a4), rrl_free_asn_pdu(), v10 = 0, !*a3)))
    {
      __s[0] = v10;
      *a3 = rrl_encode_measure_response_error(__s, a4);
      v10 = v8;
    }

    v12 = GetStaticLpPrivate();
    memset_s(v12 + 1344, 0x1CuLL, 0, 0x1CuLL);
  }

  else
  {
    ms_report_exception(2, 24582, 1157, "rrl_process_measure_response_msb");
    v10 = 1;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t rrl_encode_measure_response_location_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x29EDCA608];
  *a2 = *(GetStaticLpPrivate() + 339);
  v6 = 1;
  *(a2 + 8) = 1;
  if (GetStaticLpPrivate()[1360] == 1)
  {
    *(a2 + 560) = 1;
    *(a2 + 512) = 1;
    *(a2 + 504) = *(GetStaticLpPrivate() + 1364);
  }

  if (*(a1 + 50))
  {
    *(a2 + 728) = 1;
    *(a2 + 584) = 1;
    v7 = *(a1 + 58) != 0;
    if (*(a1 + 56))
    {
      if (*(a1 + 58) && *(a1 + 65))
      {
        v7 = 0;
        v6 = 0;
        v8 = 48;
        v9 = 1;
        v10 = 7;
      }

      else
      {
        v7 = 0;
        v9 = 0;
        v8 = 32;
        v10 = 5;
      }
    }

    else
    {
      v9 = 0;
      v6 = 0;
      if (*(a1 + 58))
      {
        v10 = 5;
      }

      else
      {
        v10 = 4;
      }

      v8 = 16 * (*(a1 + 58) != 0);
    }

    *(a2 + 568) = v10;
    v12 = gnssOsa_Calloc("posp_alloc", 18, 1, v10);
    *(a2 + 576) = v12;
    *v12 = v8;
    **(a2 + 576) |= *(a1 + 53) & 1;
    *(*(a2 + 576) + 1) = *(a1 + 52);
    *(*(a2 + 576) + 2) = *(a1 + 55);
    *(*(a2 + 576) + 3) = *(a1 + 54);
    if (v7 || v9)
    {
      if (*(a1 + 60) == 1)
      {
        **(a2 + 576) |= 2u;
      }

      *(*(a2 + 576) + 4) = *(a1 + 64);
      v13 = 5;
    }

    else
    {
      v13 = 4;
    }

    if ((v9 | v6) == 1)
    {
      *(*(a2 + 576) + v13++) = *(a1 + 57);
    }

    if (v9)
    {
      *(*(a2 + 576) + v13) = *(a1 + 66);
    }

    *(a2 + 572) = 1;
    goto LABEL_28;
  }

  if (GetStaticLpPrivate()[1352] != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx network timing type,%u\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "rrl_encode_measure_response_location_info", 770, *(a1 + 68));
      LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
    }

    goto LABEL_28;
  }

  *(a2 + 496) = 1;
  if (*(a1 + 68) != 1)
  {
    v11 = *(a1 + 16);
    if (v11 == 255)
    {
      goto LABEL_34;
    }

    *(a2 + 488) = 1;
    goto LABEL_33;
  }

  *(a2 + 488) = 1;
  *(a2 + 460) = 1;
  *(a2 + 456) = *(a1 + 73);
  *(a2 + 468) = 1;
  *(a2 + 464) = *(a1 + 74);
  v11 = *(a1 + 16);
  if (v11 != 255)
  {
LABEL_33:
    *(a2 + 484) = 1;
    *(a2 + 480) = v11;
  }

LABEL_34:
  *(a2 + 208) = 1;
  v18 = *(a1 + 2);
  *(a2 + 184) = 1;
  v19 = *(a1 + 8);
  *(a2 + 176) = v18;
  *(a2 + 180) = v19;
  v20 = *(a1 + 17);
  v21 = *(a1 + 18);
  *(a2 + 196) = 0;
  *(a2 + 188) = v20;
  *(a2 + 200) = 0;
  if (v21 > 2)
  {
    if (v21 == 3)
    {
      *(a2 + 192) = 11;
      v30 = gnssOsa_Calloc("posp_alloc", 18, 1, 0xBuLL);
      *(a2 + 200) = v30;
      if (v30)
      {
        *(a2 + 196) = 1;
        *v30 = 16 * *(a1 + 18);
        *(*(a2 + 200) + 1) = BYTE2(*(a1 + 24));
        *(*(a2 + 200) + 2) = BYTE1(*(a1 + 24));
        *(*(a2 + 200) + 3) = *(a1 + 24);
        if (*(a1 + 20) == 1)
        {
          *(*(a2 + 200) + 1) |= 0x80u;
        }

        *(*(a2 + 200) + 4) = *(a1 + 34);
        *(*(a2 + 200) + 5) = BYTE1(*(a1 + 32));
        *(*(a2 + 200) + 6) = *(a1 + 32);
        *(*(a2 + 200) + 7) = *(a1 + 36);
        *(*(a2 + 200) + 8) = *(a1 + 37);
        *(*(a2 + 200) + 9) = *(a1 + 38);
        LOBYTE(v23) = *(a1 + 49);
        v24 = 10;
        goto LABEL_58;
      }

      v26 = 2;
      v27 = 3;
      v28 = 1533;
    }

    else
    {
      if (v21 != 9)
      {
        goto LABEL_49;
      }

      *(a2 + 192) = 14;
      v25 = gnssOsa_Calloc("posp_alloc", 18, 1, 0xEuLL);
      *(a2 + 200) = v25;
      if (v25)
      {
        *(a2 + 196) = 1;
        *v25 = 16 * *(a1 + 18);
        *(*(a2 + 200) + 1) = BYTE2(*(a1 + 24));
        *(*(a2 + 200) + 2) = BYTE1(*(a1 + 24));
        *(*(a2 + 200) + 3) = *(a1 + 24);
        if (*(a1 + 20) == 1)
        {
          *(*(a2 + 200) + 1) |= 0x80u;
        }

        *(*(a2 + 200) + 4) = *(a1 + 34);
        *(*(a2 + 200) + 5) = BYTE1(*(a1 + 32));
        *(*(a2 + 200) + 6) = *(a1 + 32);
        *(*(a2 + 200) + 7) = BYTE1(*(a1 + 40));
        *(*(a2 + 200) + 8) = *(a1 + 40);
        if (*(a1 + 39) == 1)
        {
          *(*(a2 + 200) + 7) |= 0x80u;
        }

        *(*(a2 + 200) + 9) = *(a1 + 36);
        *(*(a2 + 200) + 10) = *(a1 + 37);
        *(*(a2 + 200) + 11) = *(a1 + 38);
        *(*(a2 + 200) + 12) = *(a1 + 48);
        LOBYTE(v23) = *(a1 + 49);
        v24 = 13;
        goto LABEL_58;
      }

      v26 = 2;
      v27 = 3;
      v28 = 1571;
    }

LABEL_65:
    ms_report_exception(v26, v27, v28, "rrl_set_pos_estimate");
LABEL_28:
    v14 = *MEMORY[0x29EDCA608];
    return 0;
  }

  if (!v21)
  {
    *(a2 + 192) = 7;
    v29 = gnssOsa_Calloc("posp_alloc", 18, 1, 7uLL);
    *(a2 + 200) = v29;
    if (v29)
    {
      *(a2 + 196) = 1;
      *v29 = 16 * *(a1 + 18);
      *(*(a2 + 200) + 1) = BYTE2(*(a1 + 24));
      *(*(a2 + 200) + 2) = BYTE1(*(a1 + 24));
      *(*(a2 + 200) + 3) = *(a1 + 24);
      if (*(a1 + 20) == 1)
      {
        *(*(a2 + 200) + 1) |= 0x80u;
      }

      *(*(a2 + 200) + 4) = *(a1 + 34);
      *(*(a2 + 200) + 5) = BYTE1(*(a1 + 32));
      v23 = *(a1 + 32);
      v24 = 6;
      goto LABEL_58;
    }

    v26 = 2;
    v27 = 3;
    v28 = 1463;
    goto LABEL_65;
  }

  if (v21 != 1)
  {
LABEL_49:
    v26 = 1;
    v27 = 24590;
    v28 = 1614;
    goto LABEL_65;
  }

  *(a2 + 192) = 8;
  v22 = gnssOsa_Calloc("posp_alloc", 18, 1, 8uLL);
  *(a2 + 200) = v22;
  if (!v22)
  {
    v26 = 2;
    v27 = 3;
    v28 = 1498;
    goto LABEL_65;
  }

  *(a2 + 196) = 1;
  *v22 = 16 * *(a1 + 18);
  *(*(a2 + 200) + 1) = BYTE2(*(a1 + 24));
  *(*(a2 + 200) + 2) = BYTE1(*(a1 + 24));
  *(*(a2 + 200) + 3) = *(a1 + 24);
  if (*(a1 + 20) == 1)
  {
    *(*(a2 + 200) + 1) |= 0x80u;
  }

  *(*(a2 + 200) + 4) = *(a1 + 34);
  *(*(a2 + 200) + 5) = BYTE1(*(a1 + 32));
  *(*(a2 + 200) + 6) = *(a1 + 32);
  LOBYTE(v23) = *(a1 + 36);
  v24 = 7;
LABEL_58:
  *(*(a2 + 200) + v24) = v23;
  v31 = *MEMORY[0x29EDCA608];

  return rrl_encode_air_message(a3, a2);
}