uint64_t lou_logEnd()
{
  result = qword_2DA10;
  if (qword_2DA10)
  {
    v1 = qword_2DA10 == __stderrp;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    result = fclose(qword_2DA10);
  }

  qword_2DA10 = 0;
  return result;
}

uint64_t _lou_backTranslate(char *a1, const char *a2, unsigned __int16 *a3, unsigned int *a4, _WORD *a5, int *a6, void *a7, void *a8, char *a9, uint64_t a10, int *a11, unsigned int a12, uint64_t a13, int *a14)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  v16 = a3;
  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!a5)
  {
    return result;
  }

  v17 = a6;
  if (!a6)
  {
    return result;
  }

  v253 = 0;
  v254 = 0;
  if (!a2)
  {
    a2 = a1;
  }

  _lou_getTable(a1, a2, &v254, &v253);
  if (!v254)
  {
    return 0;
  }

  if (!_lou_isValidMode(a12))
  {
    _lou_logMessage(40000, "Invalid mode parameter: %d", a12);
  }

  v19 = &unk_2D000;
  if (qword_2DB18)
  {
    if (*qword_2DB18 < 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v20 = malloc_type_malloc(0x28uLL, 0x109004028638895uLL);
    *v20 = 3;
    v20[1] = &unk_2DB20;
    v20[2] = &unk_2DB38;
    v20[3] = sub_104A0;
    v20[4] = 0;
    qword_2DB18 = v20;
  }

  v21 = 0;
  do
  {
    sub_103B4(v21);
    v21 = (v21 + 1);
  }

  while (v21 < *qword_2DB18);
LABEL_18:
  v22 = *a4;
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    while (v16[v23])
    {
      if (v22 == ++v23)
      {
        v24 = *a4;
        goto LABEL_25;
      }
    }

    v24 = v23;
  }

LABEL_25:
  v25 = sub_1041C(v24);
  v26 = v25;
  v27 = *(qword_2DB18 + 8);
  v28 = *(v27 + 8 * v25);
  if (v24)
  {
    v29 = v24;
    v30 = v24;
    v31 = *(v27 + 8 * v25);
    do
    {
      v33 = *v16++;
      v32 = v33;
      if ((a12 & 4) != 0)
      {
        DotsForChar = v32 | 0x8000;
      }

      else
      {
        DotsForChar = _lou_getDotsForChar(v32, v253);
      }

      *v31++ = DotsForChar;
      --v30;
    }

    while (v30);
    v19 = &unk_2D000;
  }

  else
  {
    v29 = 0;
  }

  v249[1] = 0;
  v252 = 0;
  v247 = 0;
  v248 = 0;
  v246 = 0;
  v28[v29] = _lou_getDotsForChar(32, v253);
  v249[0] = v26;
  v250 = v28;
  v251 = v24;
  v35 = sub_1041C(*v17);
  v36 = *(*(v19[355] + 8) + 8 * v35);
  v37 = *v17;
  LODWORD(v246) = v35;
  v247 = v36;
  v248 = v37;
  if (a9 && v24)
  {
    memset(a9, 255, 4 * v29);
  }

  if (a11)
  {
    v38 = *a11;
  }

  else
  {
    v38 = -1;
  }

  v244 = 0;
  v245 = v38;
  v39 = *v17;
  if (a7)
  {
    memset(a7, 48, v39);
    v39 = *v17;
  }

  v40 = a4;
  if (a8)
  {
    memset(a8, 42, v39);
    v39 = *v17;
  }

  result = _lou_allocMem(5, 0, v24, v39);
  if (result)
  {
    v41 = result;
    if (v254[233] > 1 || v254[234])
    {
      result = _lou_allocMem(6, 0, v24, *v17);
      v211 = result;
      if (!result)
      {
        return result;
      }

      result = _lou_allocMem(7, 0, v24, *v17);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      v211 = 0;
    }

    v229 = 0;
    v225 = 0;
    if (a13 && a14)
    {
      v225 = *a14;
      v229 = a13;
    }

    __dst = result;
    v230 = 0;
    v215 = v254[234] == 0;
    v42 = v254[233];
    v236 = v41;
    v210 = v17;
    v223 = v41;
    while (1)
    {
      v43 = v254;
      v243 = v254;
      v228 = v42;
      if (!v42)
      {
        break;
      }

      if (v42 == 1)
      {
        v262 = 0;
        *&v263 = 0;
        DWORD2(v263) = 0;
        v261 = 0;
        _lou_resetPassVariables();
        translation_direction = 0;
        HIDWORD(v248) = 0;
        HIDWORD(v263) = 0;
        if (v24 < 1)
        {
          LODWORD(v167) = 0;
          goto LABEL_415;
        }

        v44 = 0;
        v224 = 0;
        v227 = v43 + 3402;
        v45 = v43 + 7904;
        v241 = v43 + 4525;
        v218 = 0;
        v219 = v43 + 6781;
        v220 = 117;
        while (1)
        {
          v258 = 0;
          v255 = 0;
          v256 = 0;
          v259 = 0;
          v260 = 0;
          v257 = 0;
          v46 = HIDWORD(v248);
          if (HIDWORD(v248))
          {
            v47 = v247[SHIDWORD(v248) - 1];
          }

          else
          {
            v47 = 32;
          }

          v48 = v227[_lou_charHash(v47)];
          if (v48)
          {
            while (1)
            {
              v49 = &v45[2 * v48];
              if (*(v49 + 22) == v47)
              {
                break;
              }

              v48 = v49[3];
              if (!v48)
              {
                goto LABEL_64;
              }
            }
          }

          else
          {
LABEL_64:
            v49 = &unk_28D38;
            word_28D64 = v47;
          }

          v50 = *(v49 + 3);
          if (HIDWORD(v262) == 2)
          {
            if ((v50 & 0x210) != 0)
            {
              goto LABEL_72;
            }

            v51 = 0;
          }

          else
          {
            if (HIDWORD(v262) != 1 || (v50 & 0x10) == 0)
            {
              goto LABEL_72;
            }

            v51 = 2;
          }

          HIDWORD(v262) = v51;
LABEL_72:
          v231 = DWORD1(v263);
          if (DWORD1(v263) == 2)
          {
            v231 = 2;
            if (v46 >= 1 && (v50 & 0x4000900) == 0)
            {
              v231 = 0;
              DWORD1(v263) = 0;
            }
          }

          v226 = v46;
          v52 = DWORD2(v263);
          v53 = v250;
          v237 = &v250[v44];
          v54 = *v237;
          v55 = v241[_lou_charHash(*v237)];
          if (v55)
          {
            while (1)
            {
              v56 = &v45[2 * v55];
              if (*(v56 + 22) == v54)
              {
                break;
              }

              v55 = v56[3];
              if (!v55)
              {
                goto LABEL_79;
              }
            }
          }

          else
          {
LABEL_79:
            v56 = &unk_28D78;
            word_28DA4 = v54;
          }

          if (sub_1172C(v43, &v258, &v255 + 1, &v260, &v261, v224))
          {
            goto LABEL_81;
          }

          v233 = v53;
          v234 = v24;
          v58 = 0;
          v59 = v24 - v44;
          v221 = v50 & 9;
          v60 = v221 == 0;
          v217 = v50 & 0xB;
          v239 = v50;
          v61 = (a12 >> 8) & 1;
          if (v50)
          {
            v62 = (a12 >> 8) & 1;
          }

          else
          {
            LOBYTE(v62) = 1;
          }

          v214 = v62;
          if (v52)
          {
            LOBYTE(v61) = 1;
          }

          if (v231)
          {
            v60 = 1;
          }

          v213 = v61 | v60;
          v212 = v247;
          do
          {
            if (v58)
            {
              if (v58 != 1)
              {
                v260 = &unk_2DB48;
                dword_2DB74 = 117;
                HIDWORD(v255) = 117;
                word_2DB7C = 1;
                v258 = 1;
                word_2DB7E = *v237;
                word_2DB7A = 0;
                break;
              }

              if (v59 <= 0)
              {
                goto LABEL_205;
              }

              v59 = 1;
              v63 = v56 + 5;
            }

            else
            {
              if (v59 < 2 || v231 && (*(v56 + 25) & 1) != 0)
              {
                goto LABEL_205;
              }

              v64 = *(v56 + 22);
              v65 = v237[1];
              v66 = v241[_lou_charHash(v237[1])];
              if (v66)
              {
                while (1)
                {
                  v67 = &v45[2 * v66];
                  if (*(v67 + 22) == v65)
                  {
                    break;
                  }

                  v66 = v67[3];
                  if (!v66)
                  {
                    goto LABEL_102;
                  }
                }
              }

              else
              {
LABEL_102:
                word_28DA4 = v65;
              }

              v63 = &v219[(v64 << 8) + v65 - 1123 * ((((v64 << 8) + v65) * 0x3A5BA3E76156DBuLL) >> 64)];
            }

            v68 = *v63;
            if (v68)
            {
              while (1)
              {
                v69 = &v45[2 * v68];
                v260 = v69;
                v70 = v69[11];
                HIDWORD(v255) = v70;
                v71 = v69 + 27;
                v72 = v69 + 25;
                if (v70 != 74)
                {
                  v71 += *(v69 + 25);
                  v72 = (v69 + 13);
                }

                v73 = *v72;
                v258 = v73;
                if (v73)
                {
                  v74 = v59 < v73;
                }

                else
                {
                  v74 = 1;
                }

                if (v74)
                {
                  goto LABEL_203;
                }

                if (v73 >= 1)
                {
                  break;
                }

LABEL_115:
                if (v44 + v73 >= v234)
                {
                  v80 = 32;
                }

                else
                {
                  v80 = *(v233 + 2 * (v44 + v73));
                }

                v81 = v241[_lou_charHash(v80)];
                if (v81)
                {
                  while (1)
                  {
                    v82 = &v45[2 * v81];
                    if (*(v82 + 22) == v80)
                    {
                      break;
                    }

                    v81 = v82[3];
                    if (!v81)
                    {
                      goto LABEL_121;
                    }
                  }
                }

                else
                {
LABEL_121:
                  v82 = &unk_28D78;
                  word_28DA4 = v80;
                }

                v83 = *(v69 + 3);
                v84 = v83 & 0xFFFFFFFFFDFFFFFFLL;
                v85 = v83 & v239;
                if (v84)
                {
                  v86 = v85 == 0;
                }

                else
                {
                  v86 = 0;
                }

                if (v86)
                {
                  goto LABEL_203;
                }

                v87 = *(v82 + 3);
                v88 = *(v69 + 4);
                v89 = v88 & 0xFFFFFFFFFDFFFFFFLL;
                v90 = v88 & v87;
                if (v89 && v90 == 0)
                {
                  goto LABEL_203;
                }

                v92 = v69;
                switch(v70)
                {
                  case 3u:
                  case 4u:
                  case 5u:
                  case 6u:
                  case 7u:
                  case 0x17u:
                  case 0x25u:
                  case 0x26u:
                  case 0x2Du:
                  case 0x2Eu:
                  case 0x3Du:
                  case 0x3Eu:
                  case 0x3Fu:
                  case 0x40u:
                  case 0x41u:
                  case 0x42u:
                  case 0x43u:
                  case 0x44u:
                  case 0x49u:
                  case 0x4Fu:
                  case 0x54u:
                  case 0x5Au:
                  case 0x6Eu:
                    goto LABEL_81;
                  case 8u:
                  case 9u:
                  case 0xAu:
                  case 0xBu:
                  case 0xCu:
                  case 0xDu:
                  case 0xEu:
                  case 0xFu:
                  case 0x10u:
                  case 0x11u:
                  case 0x12u:
                  case 0x14u:
                  case 0x15u:
                  case 0x16u:
                  case 0x19u:
                  case 0x1Au:
                  case 0x1Bu:
                  case 0x1Cu:
                  case 0x1Du:
                  case 0x1Eu:
                  case 0x1Fu:
                  case 0x20u:
                  case 0x21u:
                  case 0x22u:
                  case 0x23u:
                  case 0x24u:
                  case 0x27u:
                  case 0x28u:
                  case 0x29u:
                  case 0x2Au:
                  case 0x2Bu:
                  case 0x2Cu:
                  case 0x31u:
                  case 0x32u:
                  case 0x33u:
                  case 0x34u:
                  case 0x35u:
                  case 0x36u:
                  case 0x37u:
                  case 0x38u:
                  case 0x39u:
                  case 0x3Au:
                  case 0x3Bu:
                  case 0x3Cu:
                  case 0x45u:
                  case 0x46u:
                  case 0x48u:
                  case 0x4Bu:
                  case 0x4Cu:
                  case 0x4Du:
                  case 0x4Eu:
                  case 0x50u:
                  case 0x51u:
                  case 0x52u:
                  case 0x55u:
                  case 0x56u:
                  case 0x57u:
                  case 0x58u:
                  case 0x59u:
                  case 0x6Fu:
                  case 0x70u:
                    break;
                  case 0x13u:
                  case 0x18u:
                    if ((v239 & 2) != 0)
                    {
                      goto LABEL_203;
                    }

                    v92 = v69;
                    if ((v87 & 0x82) != 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 0x2Fu:
                    v93 = 130;
                    goto LABEL_162;
                  case 0x30u:
                    v261 = v73;
                    if (sub_1172C(v243, &v258, &v255 + 1, &v260, &v261, v69))
                    {
                      v224 = v69;
                      goto LABEL_81;
                    }

                    v92 = v260;
                    v224 = v69;
                    break;
                  case 0x47u:
                    v92 = v69;
                    if (!v231)
                    {
                      break;
                    }

                    goto LABEL_81;
                  case 0x4Au:
                    v94 = sub_1062C(v243, v44, v249, 74, v69, &v259, &v255, &v256);
                    goto LABEL_192;
                  case 0x53u:
                    if ((v239 & 0x100) != 0 && (v87 & 0x100) != 0)
                    {
                      v92 = v69;
                      if (*(v69 + 25) > 1)
                      {
                        break;
                      }
                    }

                    goto LABEL_81;
                  case 0x5Bu:
                    if (v213)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_190;
                  case 0x5Cu:
                    if ((v239 & 0x100) != 0)
                    {
                      goto LABEL_203;
                    }

                    if ((v239 & 2) != 0)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_195;
                  case 0x5Du:
                  case 0x5Eu:
                    if (!v221)
                    {
                      goto LABEL_203;
                    }

                    if ((a12 & 0x100) != 0)
                    {
                      goto LABEL_81;
                    }

                    v92 = v69;
                    if ((v87 & 1) == 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 0x5Fu:
                    if ((v214 & 1) != 0 || v220 == 94)
                    {
                      goto LABEL_203;
                    }

                    v92 = v69;
                    if (v87)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 0x60u:
                    if (!v221)
                    {
                      goto LABEL_203;
                    }

LABEL_190:
                    if ((v87 & 1) == 0)
                    {
                      goto LABEL_191;
                    }

                    goto LABEL_81;
                  case 0x61u:
                    v92 = v69;
                    if (!v221)
                    {
                      break;
                    }

                    goto LABEL_81;
                  case 0x62u:
                    if (!v217)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_191;
                  case 0x63u:
                    if (!v221)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_195;
                  case 0x64u:
                    if (!v217)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_195;
                  case 0x65u:
                    if ((v239 & 2) == 0)
                    {
                      goto LABEL_203;
                    }

LABEL_195:
                    v102 = sub_11850(v243, v44, a12, v249, v73);
                    v92 = v69;
                    if (!v102)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 0x66u:
                    v92 = v69;
                    if ((v239 & 2) == 0)
                    {
                      break;
                    }

                    goto LABEL_81;
                  case 0x67u:
                    if ((v239 & 2) == 0)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_191;
                  case 0x68u:
                    v95 = v226;
                    if (!v226)
                    {
                      goto LABEL_81;
                    }

                    do
                    {
                      if (v95 < 1)
                      {
                        goto LABEL_81;
                      }

                      v96 = v212[--v95];
                      v97 = v227[_lou_charHash(v212[v95])];
                      if (v97)
                      {
                        while (1)
                        {
                          v98 = &v45[2 * v97];
                          if (*(v98 + 22) == v96)
                          {
                            break;
                          }

                          v97 = v98[3];
                          if (!v97)
                          {
                            goto LABEL_154;
                          }
                        }
                      }

                      else
                      {
LABEL_154:
                        v98 = &unk_28D38;
                        word_28D64 = v96;
                      }

                      v99 = *(v98 + 3);
                      if (v99)
                      {
                        v100 = 2;
                      }

                      else
                      {
                        v100 = (v99 & 0xC6) != 0;
                      }
                    }

                    while (!v100);
                    if (v100 != 2)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_81;
                  case 0x69u:
LABEL_191:
                    v94 = sub_11850(v243, v44, a12, v249, v73);
                    goto LABEL_192;
                  case 0x6Au:
                    if (!v221)
                    {
                      goto LABEL_203;
                    }

                    v92 = v69;
                    if ((v87 & 0x180) != 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 0x6Bu:
                    if ((v239 & 4) == 0)
                    {
                      goto LABEL_203;
                    }

                    v92 = v69;
                    if ((v87 & 0x100) != 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 0x6Cu:
                    if (!v231)
                    {
                      goto LABEL_203;
                    }

                    v92 = v69;
                    if ((v87 & 0x100) == 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 0x6Du:
                    v93 = 260;
LABEL_162:
                    v92 = v69;
                    if ((v87 & v93) != 0)
                    {
                      goto LABEL_81;
                    }

                    break;
                  case 0x71u:
                    v101 = &v45[2 * v69[10]];
                    if (!_lou_pattern_check(v233, v44 - 1, 0xFFFFFFFF, 0xFFFFFFFFLL, v101 + 2, v243))
                    {
                      goto LABEL_203;
                    }

                    v94 = _lou_pattern_check(v233, v44 + *(v69 + 26), v234, 1, v101 + 2 * *v101, v243);
LABEL_192:
                    v92 = v69;
                    if (v94)
                    {
                      goto LABEL_81;
                    }

                    break;
                  default:
                    goto LABEL_203;
                }

LABEL_204:
                v68 = *(v92 + 5);
                if (!v68)
                {
                  goto LABEL_205;
                }
              }

              v75 = v237;
              v76 = v73;
              while (1)
              {
                v78 = *v75++;
                v77 = v78;
                v79 = *v71++;
                if (v77 != v79)
                {
                  break;
                }

                if (!--v76)
                {
                  goto LABEL_115;
                }
              }

LABEL_203:
              v92 = v69;
              goto LABEL_204;
            }

LABEL_205:
            ++v58;
          }

          while (v58 != 3);
LABEL_81:
          if (v229)
          {
            v57 = v230;
            v19 = &unk_2D000;
            v41 = v223;
            v43 = v243;
            if (v230 < v225)
            {
              *(v229 + 8 * v230) = v260;
              v57 = v230 + 1;
            }
          }

          else
          {
            v19 = &unk_2D000;
            v41 = v223;
            v57 = v230;
            v43 = v243;
          }

          v103 = HIDWORD(v255);
          v230 = v57;
          if (SHIDWORD(v255) > 45)
          {
            if (SHIDWORD(v255) > 73)
            {
              if (SHIDWORD(v255) <= 105)
              {
                if (HIDWORD(v255) != 74)
                {
                  if (HIDWORD(v255) != 90 || v220 != 90 || sub_1160C(v43, v44, v249, &v246, a8, v236, &v245, &v244, &v262))
                  {
                    goto LABEL_284;
                  }

                  goto LABEL_403;
                }

                result = sub_10B90(v43, &v263 + 3, a12, v249, &v246, v236, &v245, &v244, &v262, 74, v260, v259, v255, v256, v257);
                if (!result)
                {
                  return result;
                }

                v112 = HIDWORD(v263);
              }

              else
              {
                if (HIDWORD(v255) == 106)
                {
                  v118 = 1;
                  goto LABEL_282;
                }

                if (HIDWORD(v255) == 108)
                {
                  DWORD1(v263) = 0;
                  goto LABEL_284;
                }

                if (HIDWORD(v255) != 117)
                {
                  goto LABEL_284;
                }

                if (!sub_1157C(*v237, a12, &v246, v44, v236))
                {
                  goto LABEL_403;
                }

                v112 = (v44 + 1);
                HIDWORD(v263) = v44 + 1;
              }

              v127 = HIDWORD(v218);
LABEL_305:
              if (sub_104B4(v43, v112, 1, v249, &v255 + 1, &v260, &v259, &v255, &v256))
              {
                v103 = HIDWORD(v255);
                if (HIDWORD(v255) == 74)
                {
                  sub_10B90(v43, &v263 + 3, a12, v249, &v246, v236, &v245, &v244, &v262, 74, v260, v259, v255, v256, v257);
                  v112 = HIDWORD(v263);
                }
              }

              else
              {
                v103 = 83;
                HIDWORD(v255) = 83;
              }

              goto LABEL_309;
            }

            if (SHIDWORD(v255) > 60)
            {
              if (HIDWORD(v255) == 61)
              {
                v262 = 0;
                *(&v263 + 4) = 0;
                goto LABEL_284;
              }

              if (HIDWORD(v255) != 71)
              {
                if (HIDWORD(v255) != 73)
                {
                  goto LABEL_284;
                }

                v106 = v258;
                v107 = v258 - 1;
                if (v258 >= 1)
                {
                  v108 = (v236 + 4 * v44);
                  v44 = (v44 + v258);
                  do
                  {
                    *v108++ = v226;
                    --v106;
                  }

                  while (v106);
                  v107 = -1;
                }

                v258 = v107;
                HIDWORD(v263) = v44;
                v109 = v260[25];
                if (v109 < 1)
                {
LABEL_231:
                  v112 = v44;
                  goto LABEL_291;
                }

                v110 = v260 + 27;
                while (1)
                {
                  v111 = *v110++;
                  if (!sub_11144(v111, v43, v44, a12, v249, &v246, v236, &v245, &v244, &v262))
                  {
                    goto LABEL_403;
                  }

                  if (!--v109)
                  {
                    goto LABEL_231;
                  }
                }
              }

              v118 = 2;
LABEL_282:
              DWORD1(v263) = v118;
              goto LABEL_284;
            }

            if (HIDWORD(v255) != 46)
            {
              if (HIDWORD(v255) != 47)
              {
                goto LABEL_284;
              }

              goto LABEL_251;
            }

LABEL_255:
            v115 = v258;
            v116 = v258 - 1;
            if (v258 >= 1)
            {
              v117 = (v236 + 4 * v44);
              v44 = (v44 + v258);
              do
              {
                *v117++ = v226;
                --v115;
              }

              while (v115);
              v116 = -1;
            }

            v258 = v116;
LABEL_260:
            HIDWORD(v263) = v44;
            v112 = v44;
            goto LABEL_321;
          }

          if (SHIDWORD(v255) > 22)
          {
            if (SHIDWORD(v255) > 36)
            {
              if ((HIDWORD(v255) - 37) >= 2)
              {
                if (HIDWORD(v255) != 45)
                {
                  goto LABEL_284;
                }

                DWORD1(v263) = 0;
              }

              goto LABEL_255;
            }

            if (HIDWORD(v255) == 23)
            {
              DWORD1(v263) = 1;
              HIDWORD(v262) = 0;
              v123 = v258;
              if (v258 >= 1)
              {
                v124 = (v236 + 4 * v44);
                v44 = (v44 + v258);
                do
                {
                  *v124++ = v226;
                  --v123;
                }

                while (v123);
              }

              goto LABEL_260;
            }

            if (HIDWORD(v255) != 24)
            {
              goto LABEL_284;
            }

LABEL_251:
            *(&v263 + 4) = 0x100000000;
            v113 = v258;
            if (v258 >= 1)
            {
              v114 = (v236 + 4 * v44);
              v44 = (v44 + v258);
              do
              {
                *v114++ = v226;
                --v113;
              }

              while (v113);
            }

            goto LABEL_260;
          }

          if (SHIDWORD(v255) > 5)
          {
            if (HIDWORD(v255) == 6)
            {
              *&v263 = 1;
              v121 = v258;
              if (v258 >= 1)
              {
                v122 = (v236 + 4 * v44);
                v44 = (v44 + v258);
                do
                {
                  *v122++ = v226;
                  --v121;
                }

                while (v121);
              }

              goto LABEL_260;
            }

            if (HIDWORD(v255) == 7)
            {
              *&v263 = 0;
              v130 = v258;
              if (v258 >= 1)
              {
                v131 = (v236 + 4 * v44);
                v44 = (v44 + v258);
                do
                {
                  *v131++ = v226;
                  --v130;
                }

                while (v130);
              }

              goto LABEL_260;
            }

            if (HIDWORD(v255) != 19)
            {
              goto LABEL_284;
            }

            goto LABEL_251;
          }

          switch(HIDWORD(v255))
          {
            case 3:
              v262 = 1;
              DWORD1(v263) = 0;
              v119 = v258;
              if (v258 >= 1)
              {
                v120 = (v236 + 4 * v44);
                v44 = (v44 + v258);
                do
                {
                  *v120++ = v226;
                  --v119;
                }

                while (v119);
              }

              goto LABEL_260;
            case 4:
              HIDWORD(v262) = 1;
              DWORD1(v263) = 0;
              v128 = v258;
              if (v258 >= 1)
              {
                v129 = (v236 + 4 * v44);
                v44 = (v44 + v258);
                do
                {
                  *v129++ = v226;
                  --v128;
                }

                while (v128);
              }

              goto LABEL_260;
            case 5:
              HIDWORD(v262) = 0;
              DWORD1(v263) = 0;
              v104 = v258;
              if (v258 >= 1)
              {
                v105 = (v236 + 4 * v44);
                v44 = (v44 + v258);
                do
                {
                  *v105++ = v226;
                  --v104;
                }

                while (v104);
              }

              goto LABEL_260;
          }

LABEL_284:
          if (!v260[25])
          {
            v125 = v258;
            v112 = (v258 + v44);
            v126 = v44;
            while (sub_11144(v250[v126], v43, v44, a12, v249, &v246, v236, &v245, &v244, &v262))
            {
              LODWORD(v44) = v44 + 1;
              ++v126;
              if (!--v125)
              {
                goto LABEL_290;
              }
            }

LABEL_403:
            LODWORD(v112) = v44;
            goto LABEL_404;
          }

          if (!sub_11274(v260 + 27, v260[26], v260[25], v43, v44, v249, &v246, v236, &v245, &v244, &v262))
          {
            goto LABEL_403;
          }

          v112 = (v258 + v44);
LABEL_290:
          HIDWORD(v263) = v112;
LABEL_291:
          v127 = HIDWORD(v218);
          if ((v103 - 93) > 1)
          {
            goto LABEL_305;
          }

          if (!sub_1160C(v43, v112, v249, &v246, a8, v236, &v245, &v244, &v262))
          {
LABEL_404:
            LODWORD(v24) = v251;
            goto LABEL_405;
          }

LABEL_309:
          if (v112 >= 1)
          {
            v132 = sub_11690(v250[v112 - 1], v43) != 0;
            v133 = v103 != 94;
            v134 = !v133 || !v132;
            if (v133 && v132)
            {
              v127 = v112;
            }

            v135 = v218;
            if (!v134)
            {
              v135 = HIDWORD(v248);
            }

            v218 = __PAIR64__(v127, v135);
          }

          v136 = (v103 - 62) >= 0xA && (v103 - 83) >= 0x23;
          v137 = v220;
          if (!v136)
          {
            v137 = v103;
          }

          v220 = v137;
LABEL_321:
          LODWORD(v24) = v251;
          v44 = v112;
          if (v112 >= v251)
          {
LABEL_405:
            if (v218)
            {
              v17 = v210;
              if (v112 >= v24 || sub_11690(v250[v112], v43))
              {
                LODWORD(v167) = v112;
              }

              else
              {
                LODWORD(v167) = HIDWORD(v218);
                HIDWORD(v248) = v218;
              }
            }

            else
            {
              LODWORD(v167) = v112;
              v17 = v210;
            }

            v40 = a4;
LABEL_415:
            if (v167 < v24)
            {
              v180 = &v250[v167];
              while (1)
              {
                v181 = *v180++;
                if (!sub_11690(v181, v43))
                {
                  goto LABEL_426;
                }

                LODWORD(v167) = v167 + 1;
                if (v24 == v167)
                {
                  goto LABEL_425;
                }
              }
            }

            goto LABEL_427;
          }
        }
      }

      v262 = 0;
      v263 = 0uLL;
      HIDWORD(v248) = 0;
      _lou_resetPassVariables();
      if (v24 >= 1)
      {
        v173 = 0;
        v174 = 1;
        while (1)
        {
          v261 = 0;
          v259 = 0;
          v260 = 0;
          v258 = 0;
          v256 = 0;
          v257 = 0;
          if (v174 && sub_104B4(v43, v173, v228, v249, &v261, &v260, &v259, &v258, &v256))
          {
            v175 = v261;
            if ((v261 - 76) < 3)
            {
              if (v229)
              {
                v176 = v260;
                if (v230 < v225)
                {
                  *(v229 + 8 * v230++) = v260;
                }
              }

              else
              {
                v176 = v260;
              }

              v177 = sub_10B90(v43, &v263 + 3, a12, v249, &v246, v236, &v245, &v244, &v262, v175, v176, v259, v258, v256, v257);
              LODWORD(v167) = HIDWORD(v263);
              if (!v177)
              {
                LODWORD(v24) = v251;
                goto LABEL_421;
              }

              goto LABEL_399;
            }

            if (v261 != 83)
            {
              goto LABEL_411;
            }
          }

          if (SHIDWORD(v248) >= v248)
          {
LABEL_411:
            LODWORD(v167) = v173;
            goto LABEL_421;
          }

          *(v236 + 4 * v173) = HIDWORD(v248);
          LODWORD(v167) = v173 + 1;
          HIDWORD(v263) = v173 + 1;
          v178 = v250[v173];
          v179 = SHIDWORD(v248);
          ++HIDWORD(v248);
          v247[v179] = v178;
LABEL_399:
          v174 = v167 > v173;
          LODWORD(v24) = v251;
          v173 = v167;
          if (v167 >= v251)
          {
            goto LABEL_421;
          }
        }
      }

      LODWORD(v167) = 0;
LABEL_421:
      if (v167 < v24)
      {
        v182 = &v250[v167];
        while (1)
        {
          v183 = *v182++;
          if (!sub_11690(v183, v43))
          {
            break;
          }

          LODWORD(v167) = v167 + 1;
          if (v24 == v167)
          {
LABEL_425:
            LODWORD(v167) = v24;
            break;
          }
        }
      }

LABEL_426:
      v40 = a4;
LABEL_427:
      v24 = HIDWORD(v248);
      *(v236 + 4 * v167) = HIDWORD(v248);
      if (v236 != v41)
      {
        memcpy(__dst, v41, 4 * *v40 + 4);
        if (*v40 < 0)
        {
          v186 = v228;
          goto LABEL_441;
        }

        v184 = 0;
        v185 = v251;
        v186 = v228;
        while (1)
        {
          v187 = __dst[v184];
          v188 = v236;
          if ((v187 & 0x80000000) == 0)
          {
            if (v187 >= v167)
            {
              if (v187 != v167 || (v188 = (v236 + 4 * v167), v167 < v185))
              {
                *v40 = v184;
                *(v41 + v184) = v24;
                goto LABEL_441;
              }
            }

            else
            {
              v188 = (v236 + 4 * v187);
            }
          }

          *(v41 + v184) = *v188;
          v74 = v184++ < *v40;
          if (!v74)
          {
            goto LABEL_441;
          }
        }
      }

      v236 = v211;
      v186 = v228;
      if (v167 < v251)
      {
        *v40 = v167;
        v236 = v211;
      }

LABEL_441:
      if (v186 <= v215)
      {
        v193 = a5;
        if (v24 >= 1)
        {
          v194 = v247;
          v195 = v24;
          do
          {
            v196 = *v194++;
            *v193++ = v196;
            --v195;
          }

          while (v195);
        }

        *v17 = v24;
        if (a10)
        {
          v197 = *v40;
          if (*v40 < 1)
          {
            v200 = -1;
            v199 = -1;
          }

          else
          {
            v198 = 0;
            v199 = -1;
            v200 = -1;
            do
            {
              v201 = *(v41 + v198);
              if (v201 > v199)
              {
                v202 = v200 & ~(v200 >> 31);
                do
                {
                  if ((v199 & 0x80000000) == 0 && v199 < *v17)
                  {
                    *(a10 + 4 * v199) = v202;
                    v201 = *(v41 + v198);
                  }

                  ++v199;
                }

                while (v199 < v201);
                v197 = *v40;
                v200 = v198;
              }

              ++v198;
            }

            while (v198 < v197);
            LODWORD(v24) = *v17;
          }

          v203 = v199 & ~(v199 >> 31);
          if (v203 < v24)
          {
            do
            {
              *(a10 + 4 * v203++) = v200;
            }

            while (*v17 > v203);
          }
        }

        if (a9 && *v40 >= 1)
        {
          v204 = 0;
          do
          {
            v205 = *(v41 + v204);
            if (v205 < 0)
            {
              v205 = 0;
            }

            else if (v205 >= *v17)
            {
              v205 = *v17 - 1;
            }

            *&a9[4 * v204++] = v205;
          }

          while (v204 < *v40);
        }

        if (a11)
        {
          v206 = *a11;
          if (v206 != -1)
          {
            v207 = &a9[4 * v206];
            if (!a9)
            {
              v207 = &v245;
            }

            *a11 = *v207;
          }
        }

        if (a14)
        {
          *a14 = v230;
        }

        return 1;
      }

      v189 = v186 - 1;
      sub_103B4(v249[0]);
      v249[0] = v246;
      v250 = v247;
      v251 = v24;
      v190 = sub_1041C(*v17);
      v42 = v189;
      v191 = *(*(v19[355] + 8) + 8 * v190);
      v192 = *v17;
      LODWORD(v246) = v190;
      v247 = v191;
      v248 = v192;
    }

    v262 = 0;
    *&v263 = 0;
    DWORD2(v263) = 0;
    if (!v254[234] || (HIDWORD(v263) = 0, HIDWORD(v248) = 0, _lou_resetPassVariables(), v24 < 1))
    {
      LODWORD(v167) = 0;
LABEL_402:
      v17 = v210;
      v40 = a4;
      v41 = v223;
      v19 = &unk_2D000;
      goto LABEL_427;
    }

    v138 = 0;
    v139 = v43 + 3402;
    v140 = v43 + 7904;
    v232 = v43 + 5658;
    v141 = 1;
LABEL_327:
    v261 = 0;
    v259 = 0;
    v260 = 0;
    v258 = 0;
    v256 = 0;
    v257 = 0;
    v242 = &v250[v138];
    v142 = *v242;
    v143 = v139[_lou_charHash(*v242)];
    v238 = v138;
    if (v143)
    {
      while (1)
      {
        v144 = &v140[2 * v143];
        if (*(v144 + 22) == v142)
        {
          break;
        }

        v143 = v144[3];
        if (!v143)
        {
          goto LABEL_330;
        }
      }

      v235 = &v140[2 * v143];
      if (!v141)
      {
        goto LABEL_334;
      }
    }

    else
    {
LABEL_330:
      word_28D64 = v142;
      v235 = &unk_28D38;
      if (!v141)
      {
        goto LABEL_334;
      }
    }

    if (sub_104B4(v243, v138, 0, v249, &v261, &v260, &v259, &v258, &v256))
    {
      goto LABEL_373;
    }

LABEL_334:
    v145 = 0;
    v240 = v24 - v138;
    while (1)
    {
      if (!v145)
      {
        if (v240 < 2)
        {
          goto LABEL_372;
        }

        v147 = sub_105E0(v243, v235);
        v148 = v242[1];
        v149 = v139[_lou_charHash(v242[1])];
        if (v149)
        {
          while (1)
          {
            v150 = &v140[2 * v149];
            if (*(v150 + 22) == v148)
            {
              break;
            }

            v149 = v150[3];
            if (!v149)
            {
              goto LABEL_345;
            }
          }
        }

        else
        {
LABEL_345:
          v150 = &unk_28D38;
          word_28D64 = v148;
        }

        v151 = sub_105E0(v243, v150);
        v146 = &v232[(v147 << 8) + v151 - 1123 * ((((v147 << 8) + v151) * 0x3A5BA3E76156DBuLL) >> 64)];
        goto LABEL_347;
      }

      if (v145 == 1)
      {
        break;
      }

      if (v145 == 2)
      {
        goto LABEL_375;
      }

LABEL_372:
      if (++v145 == 3)
      {
LABEL_373:
        if (v261 == 75)
        {
          if (v229)
          {
            v170 = v260;
            v171 = v243;
            if (v230 < v225)
            {
              *(v229 + 8 * v230++) = v260;
            }
          }

          else
          {
            v170 = v260;
            v171 = v243;
          }

          v166 = v238;
          v172 = sub_10B90(v171, &v263 + 3, a12, v249, &v246, v236, &v245, &v244, &v262, 75, v170, v259, v258, v256, v257);
          v167 = HIDWORD(v263);
          if (!v172)
          {
            goto LABEL_402;
          }

          goto LABEL_383;
        }

        if (v261 != 83)
        {
          v166 = v238;
          v167 = v238;
          goto LABEL_383;
        }

LABEL_375:
        if (SHIDWORD(v248) >= v248)
        {
          LODWORD(v167) = v238;
          goto LABEL_402;
        }

        v166 = v238;
        *(v236 + 4 * v238) = HIDWORD(v248);
        v167 = (v238 + 1);
        HIDWORD(v263) = v238 + 1;
        v168 = *v242;
        v169 = SHIDWORD(v248);
        ++HIDWORD(v248);
        v247[v169] = v168;
LABEL_383:
        v141 = v167 > v166;
        LODWORD(v24) = v251;
        v138 = v167;
        if (v167 >= v251)
        {
          goto LABEL_402;
        }

        goto LABEL_327;
      }
    }

    if (v240 < 1)
    {
      goto LABEL_372;
    }

    v240 = 1;
    v146 = v235 + 5;
LABEL_347:
    v152 = *v146;
    if (!v152)
    {
      goto LABEL_372;
    }

    while (1)
    {
      v153 = &v140[2 * v152];
      v260 = v153;
      v154 = v153[11];
      v261 = v154;
      if (v145 != 1)
      {
        v155 = *(v153 + 25);
        if (v240 < v155 || v155 == 0)
        {
          goto LABEL_357;
        }

        if (v155 >= 1)
        {
          v157 = 0;
          v158 = v153 + 54;
          do
          {
            v159 = *&v158[2 * v157];
            v160 = v139[_lou_charHash(*&v158[2 * v157])];
            if (v160)
            {
              while (1)
              {
                v161 = &v140[2 * v160];
                if (*(v161 + 22) == v159)
                {
                  break;
                }

                v160 = v161[3];
                if (!v160)
                {
                  goto LABEL_364;
                }
              }
            }

            else
            {
LABEL_364:
              v161 = &unk_28D38;
              word_28D64 = v159;
            }

            v162 = sub_105E0(v243, v161);
            v163 = v242[v157];
            v164 = v139[_lou_charHash(v242[v157])];
            if (v164)
            {
              while (1)
              {
                v165 = &v140[2 * v164];
                if (*(v165 + 22) == v163)
                {
                  break;
                }

                v164 = v165[3];
                if (!v164)
                {
                  goto LABEL_368;
                }
              }
            }

            else
            {
LABEL_368:
              v165 = &unk_28D38;
              word_28D64 = v163;
            }

            if (v162 != sub_105E0(v243, v165))
            {
              goto LABEL_357;
            }
          }

          while (++v157 != v155);
        }
      }

      if (v154 == 75 && sub_1062C(v243, v238, v249, 75, v153, &v259, &v258, &v256))
      {
        goto LABEL_373;
      }

LABEL_357:
      v152 = v153[5];
      if (!v152)
      {
        goto LABEL_372;
      }
    }
  }

  return result;
}

uint64_t sub_103B4(uint64_t result)
{
  if ((result & 0x80000000) == 0)
  {
    v1 = result;
    if (*qword_2DB18 > result)
    {
      v2 = *(qword_2DB18 + 16);
      if (*(v2 + 4 * result))
      {
        v3 = *(qword_2DB18 + 32);
        if (v3)
        {
          result = v3(*(*(qword_2DB18 + 8) + 8 * result));
          v2 = *(qword_2DB18 + 16);
        }
      }

      *(v2 + 4 * v1) = 0;
    }
  }

  return result;
}

uint64_t sub_1041C(uint64_t a1)
{
  v1 = *qword_2DB18;
  if (v1 < 1)
  {
LABEL_5:
    _lou_outOfMemory();
  }

  v2 = 0;
  while (*(*(qword_2DB18 + 16) + 4 * v2))
  {
    if (v1 == ++v2)
    {
      goto LABEL_5;
    }
  }

  v3 = (*(qword_2DB18 + 24))(v2, a1);
  v4 = qword_2DB18;
  *(*(qword_2DB18 + 8) + 8 * v2) = v3;
  *(*(v4 + 16) + 4 * v2) = 1;
  return v2;
}

uint64_t sub_104B4(uint64_t a1, int a2, int a3, uint64_t a4, int *a5, uint64_t *a6, uint64_t *a7, int *a8, _DWORD *a9)
{
  v9 = *(a1 + 4 * a3 + 22612);
  if (!v9)
  {
    return 0;
  }

  v18 = a1 + 31616;
  while (1)
  {
    v19 = v18 + 8 * v9;
    *a6 = v19;
    v20 = *(v19 + 44);
    *a5 = v20;
    if (v20 > 75)
    {
      break;
    }

    if (v20 != 74)
    {
      if (v20 != 75 || a3 != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (a3 == 1)
    {
      goto LABEL_24;
    }

LABEL_26:
    v9 = *(v19 + 20);
    if (!v9)
    {
      return 0;
    }
  }

  if (v20 == 76)
  {
    if (a3 != 2)
    {
      goto LABEL_26;
    }
  }

  else if (v20 == 77)
  {
    if (a3 != 3)
    {
      goto LABEL_26;
    }
  }

  else if (v20 != 78 || a3 != 4)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (!sub_1062C(a1, a2, a4, v20, v19, a7, a8, a9))
  {
    v19 = *a6;
    goto LABEL_26;
  }

  return 1;
}

uint64_t sub_105E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((v2 & 0x10) != 0)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      v3 = a1 + 31616 + 8 * v5;
    }

    else
    {
      v3 = a2;
    }

    v6 = v2 & 0xFFFFFFFFFFFFFFEFLL;
    while ((v6 & ~*(v3 + 32)) != 0)
    {
      v7 = *(v3 + 52);
      if (!v7)
      {
        goto LABEL_2;
      }

      v3 = a1 + 31616 + 8 * v7;
    }
  }

  else
  {
LABEL_2:
    v3 = a2;
  }

  return *(v3 + 44);
}

uint64_t sub_1062C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, _DWORD *a8)
{
  *a6 = a5 + 2 * *(a5 + 50) + 54;
  *a7 = 0;
  a8[3] = a2;
  *a8 = a2;
  a8[1] = -1;
  LODWORD(v8) = *a7;
  if (*a7 >= *(a5 + 52))
  {
    return 0;
  }

  v9 = a8;
  LODWORD(v14) = a2;
  v15 = 0;
  v16 = *(a5 + 52);
  v17 = a1 + 31616;
  v61 = a1 + 18100;
  v60 = a1 + 13608;
  while (1)
  {
    v63 = 1;
    v18 = *(a3 + 16);
    if (v14 > v18)
    {
      return 0;
    }

    v19 = *a6;
    v20 = (*a6 + 2 * v8);
    v21 = *v20;
    if (v21 > 0x5A)
    {
      if (*v20 <= 0x5Eu)
      {
        if (v21 == 91)
        {
          v9[1] = v14;
        }

        else
        {
          if (v21 != 93)
          {
            goto LABEL_101;
          }

          v9[2] = v14;
        }

        v22 = *a7 + 1;
        goto LABEL_95;
      }

      switch(v21)
      {
        case '_':
          LODWORD(v14) = v14 - v20[1];
          if (v14 < 0)
          {
            LODWORD(v14) = 0;
            v63 = 0;
          }

          v22 = v8 + 2;
          goto LABEL_95;
        case '~':
          if (v14 == v18)
          {
            goto LABEL_16;
          }

          break;
          if (!v14)
          {
LABEL_16:
            v22 = v8 + 1;
            goto LABEL_95;
          }

          break;
        default:
          goto LABEL_101;
      }

      v63 = 0;
      goto LABEL_16;
    }

    if (*v20 <= 0x23u)
    {
      break;
    }

    if (v21 != 36)
    {
      if (v21 == 37)
      {
        v29 = 0;
        v30 = v20[2];
        v31 = v17 + ((8 * v30) | (v20[1] << 19));
        v32 = *(v31 + 50);
        v33 = (v31 + 54);
        v34 = v14;
        do
        {
          if (v32 < 1)
          {
            LODWORD(v35) = 0;
          }

          else
          {
            v35 = 0;
            while (*(*(a3 + 8) + 2 * v34) != v33[v35])
            {
              if (v32 == ++v35)
              {
                goto LABEL_70;
              }
            }
          }

          if (v35 == v32)
          {
LABEL_70:
            v41 = 0;
            goto LABEL_71;
          }

          ++v34;
          ++v29;
        }

        while (v29 != 40);
        if (v30 == v20[3] || (v36 = v20[4], v36 < 0x29))
        {
          v41 = 1;
          LODWORD(v14) = v14 + 40;
        }

        else
        {
          v14 = v14 + 40;
          v37 = 40;
          while (v32 < 1)
          {
LABEL_45:
            ++v14;
            if (++v37 == v36)
            {
              goto LABEL_46;
            }
          }

          v38 = v33;
          v39 = v32;
          while (1)
          {
            v40 = *v38++;
            if (*(*(a3 + 8) + 2 * v14) != v40)
            {
              break;
            }

            if (!--v39)
            {
              goto LABEL_45;
            }
          }

LABEL_46:
          v41 = 1;
        }

LABEL_71:
        v63 = v41;
        v22 = v8 + 5;
        goto LABEL_95;
      }

      if (v21 != 64)
      {
        goto LABEL_101;
      }

LABEL_19:
      v23 = v20[1];
      v24 = v8 + 2;
      if (v23)
      {
        v22 = v24 + v23;
        v25 = v24;
        v26 = (*(a3 + 8) + 2 * v14);
        while (1)
        {
          v27 = *v26++;
          if (*(v19 + 2 * v25) != v27)
          {
            break;
          }

          if (++v25 >= v22)
          {
            v28 = 1;
            goto LABEL_74;
          }
        }

        v28 = 0;
      }

      else
      {
        v28 = 1;
        v22 = v8 + 2;
      }

LABEL_74:
      v63 = v28;
      LODWORD(v14) = v14 + v23;
      goto LABEL_95;
    }

    v42 = v20[4] | (((v20[1] << 32) | (v20[2] << 16) | v20[3]) << 16);
    if (!v20[5])
    {
      v50 = 0;
      goto LABEL_77;
    }

    v59 = v9;
    v43 = 0;
    v14 = v14;
    do
    {
      if (v14 >= *(a3 + 16))
      {
LABEL_75:
        v63 = 0;
        goto LABEL_93;
      }

      v44 = *(a3 + 8);
      v45 = *(v44 + 2 * v14);
      v46 = _lou_charHash(*(v44 + 2 * v14));
      if (a4 == 75)
      {
        v47 = *(v60 + 4 * v46);
        if (!v47)
        {
LABEL_57:
          v48 = &unk_28D38;
LABEL_62:
          v48[22] = v45;
          goto LABEL_63;
        }

        while (1)
        {
          v48 = (v17 + 8 * v47);
          if (v48[22] == v45)
          {
            break;
          }

          v47 = *(v48 + 3);
          if (!v47)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v49 = *(v61 + 4 * v46);
        if (!v49)
        {
LABEL_61:
          v48 = &unk_28D78;
          goto LABEL_62;
        }

        while (1)
        {
          v48 = (v17 + 8 * v49);
          if (v48[22] == v45)
          {
            break;
          }

          v49 = *(v48 + 3);
          if (!v49)
          {
            goto LABEL_61;
          }
        }
      }

LABEL_63:
      if ((*(v48 + 3) & v42) == 0)
      {
        goto LABEL_75;
      }

      ++v14;
      ++v43;
      v19 = *a6;
      v8 = *a7;
      v50 = *(*a6 + 2 * v8 + 10);
    }

    while (v43 < v50);
    v9 = v59;
    if (!v63)
    {
      goto LABEL_94;
    }

LABEL_77:
    if (v50 >= *(v19 + 2 * v8 + 12))
    {
      goto LABEL_94;
    }

    v59 = v9;
    v51 = v14;
    while (2)
    {
      if (v51 < *(a3 + 16))
      {
        v52 = *(a3 + 8);
        v53 = *(v52 + 2 * v51);
        v54 = _lou_charHash(*(v52 + 2 * v51));
        if (a4 == 75)
        {
          for (i = *(v60 + 4 * v54); i; i = *(v56 + 3))
          {
            v56 = (v17 + 8 * i);
            if (*(v56 + 22) == v53)
            {
              goto LABEL_90;
            }
          }

          v56 = &unk_28D38;
        }

        else
        {
          v57 = *(v61 + 4 * v54);
          if (v57)
          {
            while (1)
            {
              v56 = (v17 + 8 * v57);
              if (*(v56 + 22) == v53)
              {
                break;
              }

              v57 = *(v56 + 3);
              if (!v57)
              {
                goto LABEL_88;
              }
            }

LABEL_90:
            if ((v56[3] & v42) == 0)
            {
              break;
            }

            ++v51;
            if (++v50 >= *(*a6 + 2 * *a7 + 12))
            {
              break;
            }

            continue;
          }

LABEL_88:
          v56 = &unk_28D78;
        }

        *(v56 + 22) = v53;
        goto LABEL_90;
      }

      break;
    }

    LODWORD(v14) = v51;
LABEL_93:
    v9 = v59;
LABEL_94:
    v22 = *a7 + 7;
LABEL_95:
    *a7 = v22;
LABEL_96:
    if (!v15 == (v63 != 0))
    {
      v15 = 0;
      LODWORD(v8) = *a7;
      v16 = *(a5 + 52);
LABEL_98:
      if (v8 < v16)
      {
        continue;
      }
    }

    return 0;
  }

  switch(v21)
  {
    case '!':
      v15 = !v15;
      LODWORD(v8) = v8 + 1;
      *a7 = v8;
      goto LABEL_98;
    case '""':
      goto LABEL_19;
    case ' ':
      *a7 = v8 + 1;
      v9[3] = v14;
      if (v9[1] == -1)
      {
        v9[1] = *v9;
        v9[2] = v14;
      }

      return 1;
    default:
LABEL_101:
      result = _lou_handlePassVariableTest(v19, a7, &v63);
      if (result)
      {
        goto LABEL_96;
      }

      break;
  }

  return result;
}

uint64_t sub_10B90(uint64_t a1, _DWORD *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, _DWORD *a8, unsigned int *a9, int a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, uint64_t a15)
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v19 = a4;
  v21 = a13;
  v22 = a14;
  v23 = HIDWORD(a14);
  v63 = *(a5 + 20);
  result = sub_11020(a14, SHIDWORD(a14), a1, a3, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    v25 = *(a5 + 20);
    v65 = a15;
    if (v23 < a15)
    {
      v26 = 0;
      v27 = a15 - (v22 >> 32);
      v28 = vdupq_n_s64(v27 - 1);
      v29 = (v17 + 4 * (v22 >> 32) + 8);
      do
      {
        v30 = vdupq_n_s64(v26);
        v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1DCF0)));
        if (vuzp1_s16(v31, *v28.i8).u8[0])
        {
          *(v29 - 2) = v25;
        }

        if (vuzp1_s16(v31, *&v28).i8[2])
        {
          *(v29 - 1) = v25;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1DDA0)))).i32[1])
        {
          *v29 = v25;
          v29[1] = v25;
        }

        v26 += 4;
        v29 += 4;
      }

      while (((v27 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v26);
    }

    if (*(a11 + 52) > v21)
    {
      v58 = v22 >> 32;
      v62 = v65;
      v32 = a11;
      v56 = v16;
      v57 = a2;
      v59 = v17;
      v60 = v19;
      while (1)
      {
        v33 = (a12 + 2 * v21);
        v34 = *v33;
        if (v34 <= 0x29)
        {
          break;
        }

        if (v34 != 42)
        {
          if (v34 == 63)
          {
            ++v21;
LABEL_54:
            a13 = v21;
            goto LABEL_55;
          }

          if (v34 == 64)
          {
            goto LABEL_47;
          }

LABEL_57:
          result = _lou_handlePassVariableAction(a12, &a13);
          if (!result)
          {
            return result;
          }

          v21 = a13;
          goto LABEL_55;
        }

        v53 = v25 - v63;
        if (v25 - v63 >= 1)
        {
          memmove((*(a5 + 8) + 2 * v63), (*(a5 + 8) + 2 * v25), (2 * v53));
          *(a5 + 20) -= v53;
          v25 = v63;
        }

        v32 = a11;
        result = sub_11020(v23, v65, a1, a3, v19, a5, v17, v16, v15, a9, a10);
        if (!result)
        {
          return result;
        }

        v21 = ++a13;
        v62 = HIDWORD(v65);
LABEL_55:
        if (v21 >= *(v32 + 52))
        {
          goto LABEL_60;
        }
      }

      if (v34 == 34)
      {
LABEL_47:
        v49 = v33[1];
        v50 = *(a5 + 20);
        if (v50 + v49 > *(a5 + 16))
        {
          return 0;
        }

        memcpy((*(a5 + 8) + 2 * v50), v33 + 2, 2 * v49);
        v51 = a13;
        v52 = *(a12 + 2 + 2 * a13);
        *(a5 + 20) += v52;
        v21 = v51 + v52 + 2;
        goto LABEL_54;
      }

      if (v34 == 37)
      {
        LODWORD(v35) = v23;
        if (v23 < v65)
        {
          v36 = 0;
          v37 = 0;
          v35 = v58;
          v38 = a1 + 31616 + ((8 * v33[2]) | (v33[1] << 19));
          v39 = v38 + 54 + 2 * *(v38 + 50);
          v40 = v39 + 2;
          while (1)
          {
            v41 = *(v38 + 50);
            if (v41 < 1)
            {
              v42 = 0;
            }

            else
            {
              v42 = 0;
              while (*(*(v19 + 8) + 2 * v35) != *(v38 + 54 + 2 * v42))
              {
                if (v41 == ++v42)
                {
                  goto LABEL_44;
                }
              }
            }

            if (v42 == v41)
            {
              break;
            }

            if (v42 >= v36)
            {
              v43 = v37;
            }

            else
            {
              v43 = 0;
            }

            v44 = *(v38 + 52);
            if (v43 >= v44)
            {
LABEL_39:
              v43 = v37;
              v42 = v36;
            }

            else
            {
              if (v42 >= v36)
              {
                v45 = v36;
              }

              else
              {
                v45 = 0;
              }

              v46 = v42 - v45 + 1;
              while (--v46)
              {
                v43 = v43 + *(v39 + 2 * v43);
                if (v43 >= v44)
                {
                  goto LABEL_39;
                }
              }

              v55 = v15;
              v47 = *(v39 + 2 * v43) - 1;
              v48 = *(a5 + 20);
              if (v47 + v48 >= *(a5 + 16))
              {
                return 0;
              }

              *(v59 + 4 * v35) = v48;
              v54 = v40;
              memcpy((*(a5 + 8) + 2 * *(a5 + 20)), (v40 + 2 * v43), 2 * v47);
              *(a5 + 20) += v47;
              v40 = v54;
              v15 = v55;
            }

            ++v35;
            v36 = v42;
            v37 = v43;
            v19 = v60;
            if (v35 == v65)
            {
              LODWORD(v35) = v65;
              break;
            }
          }

LABEL_44:
          v16 = v56;
          a2 = v57;
          v17 = v59;
          v32 = a11;
        }

        if (!v35)
        {
          return 0;
        }

        v21 = a13 + 3;
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    v62 = v65;
LABEL_60:
    *a2 = v62;
    return 1;
  }

  return result;
}

uint64_t sub_11020(int a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, _DWORD *a9, unsigned int *a10, int a11)
{
  v14 = a1;
  if (a11 != 74)
  {
    if (a2 > a1)
    {
      v20 = *(a6 + 20);
      if (a2 - a1 + v20 > *(a6 + 16))
      {
        return 0;
      }

      v21 = *(a6 + 8);
      v22 = (a7 + 4 * a1);
      v23 = (*(a5 + 8) + 2 * a1);
      v24 = a2 - a1;
      do
      {
        *v22++ = v20;
        v25 = *v23++;
        v26 = *(a6 + 20);
        *(v21 + 2 * v26) = v25;
        v20 = v26 + 1;
        *(a6 + 20) = v26 + 1;
        --v24;
      }

      while (v24);
    }

    return 1;
  }

  if (a2 <= a1)
  {
    return 1;
  }

  for (i = 2 * a1; ; i += 2)
  {
    result = sub_11144(*(*(a5 + 8) + i), a3, v14, a4, a5, a6, a7, a8, a9, a10);
    if (!result)
    {
      break;
    }

    if (a2 == ++v14)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_11144(unsigned int a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, _DWORD *a9, unsigned int *a10)
{
  v18 = *(a2 + 4 * _lou_charHash(a1) + 18100);
  if (v18)
  {
    while (1)
    {
      v19 = (a2 + 31616 + 8 * v18);
      if (v19[22] == a1)
      {
        break;
      }

      v18 = *(v19 + 3);
      if (!v18)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v19 = &unk_28D78;
    word_28DA4 = a1;
  }

  v20 = *(v19 + 4);
  if (v20)
  {
    return sub_11274((a2 + 8 * v20 + 31670), *(a2 + 8 * v20 + 31668), *(a2 + 8 * v20 + 31666), a2, a3, a5, a6, a7, a8, a9, a10);
  }

  return sub_1157C(a1, a4, a6, a3, a7);
}

uint64_t sub_11274(unsigned __int16 *a1, int a2, signed int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, _DWORD *a10, unsigned int *a11)
{
  v11 = *(a7 + 20);
  if (v11 + a3 > *(a7 + 16) || a5 + a2 > *(a6 + 16))
  {
    return 0;
  }

  if (!*a10 && *a9 >= a5 && *a9 < a5 + a2)
  {
    *a9 = v11 + a3 / 2;
    *a10 = 1;
  }

  if (a2 >= 1)
  {
    v18 = *(a7 + 20);
    v19 = (a2 + 3) & 0xFFFFFFFC;
    v20 = vdupq_n_s64(a2 - 1);
    v21 = (a8 + 4 * a5 + 8);
    v22 = xmmword_1DDA0;
    v23 = xmmword_1DCF0;
    v24 = vdupq_n_s64(4uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v20, v23));
      if (vuzp1_s16(v25, *v20.i8).u8[0])
      {
        *(v21 - 2) = v18;
      }

      if (vuzp1_s16(v25, *&v20).i8[2])
      {
        *(v21 - 1) = v18;
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v22))).i32[1])
      {
        *v21 = v18;
        v21[1] = v18;
      }

      v22 = vaddq_s64(v22, v24);
      v23 = vaddq_s64(v23, v24);
      v21 += 4;
      v19 -= 4;
    }

    while (v19);
  }

  if (!a3)
  {
    return 0;
  }

  v26 = *(a7 + 20);
  if (v26 + a3 > *(a7 + 16))
  {
    return 0;
  }

  v27 = *a11;
  if (*a11)
  {
    v28 = *a1;
    v29 = *(a4 + 4 * _lou_charHash(*a1) + 13608);
    if (v29)
    {
      while (1)
      {
        v30 = (a4 + 31616 + 8 * v29);
        if (*(v30 + 22) == v28)
        {
          break;
        }

        v29 = *(v30 + 3);
        if (!v29)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      v30 = &unk_28D38;
      word_28D64 = v28;
    }

    v31 = *(v30 + 12);
    if (v31)
    {
      v32 = a4 + 31616 + 8 * v31;
    }

    else
    {
      v32 = v30;
    }

    while (1)
    {
      v33 = *(v32 + 52);
      if (!v33)
      {
        break;
      }

      v32 = a4 + 31616 + 8 * v33;
      if (((v30[4] | 0x10) & ~*(v32 + 32)) == 0)
      {
        goto LABEL_35;
      }
    }

    v32 = v30;
LABEL_35:
    v34 = *(v32 + 44);
    v35 = *(a7 + 8);
    v36 = *(a7 + 20);
    v26 = v36 + 1;
    *(a7 + 20) = v36 + 1;
    *(v35 + 2 * v36) = v34;
    *a11 = 0;
    v27 = 1;
  }

  if (a11[1] || a11[2])
  {
    if (a3 > v27)
    {
      v37 = a4 + 13608;
      v38 = a4 + 31616;
      v39 = v27;
      v40 = a3;
      do
      {
        v41 = a1[v39];
        v42 = *(v37 + 4 * _lou_charHash(a1[v39]));
        if (v42)
        {
          while (1)
          {
            v43 = (v38 + 8 * v42);
            if (*(v43 + 22) == v41)
            {
              break;
            }

            v42 = *(v43 + 3);
            if (!v42)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
LABEL_43:
          word_28D64 = v41;
          v43 = &unk_28D38;
        }

        v44 = *(v43 + 12);
        if (v44)
        {
          v45 = (v38 + 8 * v44);
        }

        else
        {
          v45 = v43;
        }

        while (1)
        {
          v46 = *(v45 + 13);
          if (!v46)
          {
            break;
          }

          v45 = (v38 + 8 * v46);
          if (((v43[4] | 0x10) & ~v45[4]) == 0)
          {
            goto LABEL_51;
          }
        }

        v45 = v43;
LABEL_51:
        v47 = *(v45 + 22);
        v48 = *(a7 + 8);
        v49 = *(a7 + 20);
        *(a7 + 20) = v49 + 1;
        *(v48 + 2 * v49) = v47;
        ++v39;
      }

      while (v39 != v40);
    }
  }

  else
  {
    v50 = &a1[v27];
    v51 = a3 - v27;
    memcpy((*(a7 + 8) + 2 * v26), v50, 2 * (a3 - v27));
    *(a7 + 20) += v51;
  }

  return 1;
}

uint64_t sub_1157C(unsigned int a1, char a2, uint64_t a3, int a4, uint64_t a5)
{
  *(a5 + 4 * a4) = *(a3 + 20);
  if (a2 < 0)
  {
    return 1;
  }

  v6 = _lou_unknownDots(a1);
  v7 = strlen(v6);
  v8 = *(a3 + 20);
  if (v7 + v8 > *(a3 + 16))
  {
    return 0;
  }

  if (v7)
  {
    v10 = 0;
    v11 = *(a3 + 8) + 2 * v8;
    v12 = v8 + 1;
    do
    {
      v13 = v6[v10];
      *(a3 + 20) = v12 + v10;
      *(v11 + 2 * v10++) = v13;
    }

    while (v7 > v10);
  }

  return 1;
}

uint64_t sub_1160C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, _DWORD *a8, unsigned int *a9)
{
  v12 = 32;
  result = sub_11274(&v12, 1, 1, a1, a2, a3, a4, a6, a7, a8, a9);
  if (result)
  {
    if (a5)
    {
      *(a5 + *(a4 + 20) - 1) = 49;
    }

    return 1;
  }

  return result;
}

uint64_t sub_11690(int a1, uint64_t a2)
{
  if (word_2DBE8 == a1)
  {
    LOBYTE(v2) = qword_2DBF0;
  }

  else
  {
    v5 = *(a2 + 4 * _lou_charHash(a1) + 18100);
    if (v5)
    {
      while (1)
      {
        v6 = (a2 + 31616 + 8 * v5);
        if (*(v6 + 22) == a1)
        {
          break;
        }

        v5 = *(v6 + 3);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v6 = &unk_28D78;
      word_28DA4 = a1;
    }

    v2 = v6[3];
    qword_2DBF0 = v2;
    word_2DBE8 = a1;
  }

  return v2 & 1;
}

uint64_t sub_1172C(unsigned int *a1, _DWORD *a2, _DWORD *a3, uint64_t *a4, _DWORD *a5, uint64_t a6)
{
  if (*a5)
  {
    v6 = 0;
    v7 = *(a6 + 2 * (*(a6 + 50) - *a5) + 54);
    if (v7 <= 0x16)
    {
      if (*(a6 + 2 * (*(a6 + 50) - *a5) + 54) > 4u)
      {
        if (v7 == 5)
        {
          v6 = a1[587];
          if (!v6)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v7 != 19)
          {
            goto LABEL_23;
          }

          v6 = a1[240];
          if (!v6)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v7 == 3)
      {
        v6 = a1[585];
        if (!v6)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 != 4)
        {
          goto LABEL_23;
        }

        v6 = a1[586];
        if (!v6)
        {
          goto LABEL_23;
        }
      }
    }

    else if (*(a6 + 2 * (*(a6 + 50) - *a5) + 54) <= 0x2Cu)
    {
      if (v7 == 23)
      {
        v6 = a1[241];
        if (!v6)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 != 24)
        {
          goto LABEL_23;
        }

        v6 = a1[243];
        if (!v6)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      switch(v7)
      {
        case '-':
          v6 = a1[634];
          if (!v6)
          {
            goto LABEL_23;
          }

          break;
        case '.':
          v6 = a1[635];
          if (!v6)
          {
            goto LABEL_23;
          }

          break;
        case '/':
          v6 = a1[242];
          if (!v6)
          {
            goto LABEL_23;
          }

          break;
        default:
          goto LABEL_23;
      }
    }

    v8 = &a1[2 * v6 + 7904];
    *a4 = v8;
    *a3 = *(v8 + 44);
    *a2 = *(v8 + 52);
    v6 = 1;
LABEL_23:
    --*a5;
    return v6;
  }

  return 0;
}

uint64_t sub_11850(uint64_t a1, int a2, __int16 a3, uint64_t a4, int a5)
{
  if ((a3 & 0x100) != 0)
  {
    return 0;
  }

  if (a5 + a2 < *(a4 + 16))
  {
    v6 = a1 + 18100;
    v7 = a1 + 31616;
    v8 = a5 + a2;
    while (1)
    {
      v9 = *(a4 + 8);
      v10 = *(v9 + 2 * v8);
      v11 = *(v6 + 4 * _lou_charHash(*(v9 + 2 * v8)));
      if (v11)
      {
        while (1)
        {
          v12 = (v7 + 8 * v11);
          if (*(v12 + 22) == v10)
          {
            break;
          }

          v11 = *(v12 + 3);
          if (!v11)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        word_28DA4 = v10;
        v12 = &unk_28D78;
      }

      v13 = v12[3];
      if (v13)
      {
        break;
      }

      if ((v13 & 2) != 0)
      {
        return 0;
      }

      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *(v12 + 5);
        if (!v16)
        {
          break;
        }

        v12 = (v7 + 8 * v16);
        v17 = *(v12 + 11);
        if (v17 == 101)
        {
          v18 = v15;
        }

        else
        {
          v18 = 1;
        }

        if (v17 == 99)
        {
          v18 = v15;
        }

        if (*(v12 + 25) >= 2)
        {
          v15 = v18;
        }

        if (v17 == 105)
        {
          v14 = 1;
        }

        if (v17 == 110)
        {
          return 1;
        }
      }

      if (v15 && !v14)
      {
        return 0;
      }

      ++v8;
      result = 1;
      if (v8 >= *(a4 + 16))
      {
        return result;
      }
    }
  }

  return 1;
}

__int16 *_lou_translate(char *a1, const char *a2, unsigned __int16 *a3, int *a4, unsigned __int16 *a5, int *a6, __int16 *a7, _BYTE *a8, void *__b, uint64_t a10, unsigned int *a11, int a12, uint64_t a13, int *a14)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  v17 = a4;
  if (!a4)
  {
    return result;
  }

  v18 = a5;
  if (!a5)
  {
    return result;
  }

  v19 = a6;
  if (!a6)
  {
    return result;
  }

  v22 = a12;
  _lou_logMessage(0, "Performing translation: tableList=%s, inlen=%d", a1, *a4);
  _lou_logWidecharBuf(0, "Inbuf=", a3, *v17);
  if (!_lou_isValidMode(a12))
  {
    _lou_logMessage(40000, "Invalid mode parameter: %d", a12);
  }

  v173 = 0;
  v174 = 0;
  v171 = 0;
  v172 = 0;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = a1;
  }

  v170 = 0;
  v159 = v23;
  _lou_getTable(a1, v23, &v174, &v173);
  if (!v174)
  {
    return 0;
  }

  v24 = *v17;
  if ((v24 & 0x80000000) != 0)
  {
    return 0;
  }

  v25 = *v19;
  if (*v19 < 0)
  {
    return 0;
  }

  if (v24)
  {
    v26 = 0;
    while (a3[v26])
    {
      if (v24 == ++v26)
      {
        LODWORD(v26) = *v17;
        break;
      }
    }
  }

  else
  {
    LODWORD(v26) = 0;
  }

  LODWORD(v170) = -1;
  v171 = a3;
  LODWORD(v172) = v26;
  result = _lou_allocMem(0, 0, v26, v25);
  if (!result)
  {
    return result;
  }

  v27 = v172;
  __dst = result;
  if (!a7)
  {
    bzero(result, 2 * v172);
    goto LABEL_29;
  }

  if (v172 < 1)
  {
LABEL_29:
    v28 = 0;
    goto LABEL_30;
  }

  v28 = 0;
  v29 = a7;
  v30 = result;
  do
  {
    v31 = *v29++;
    *v30++ = v31;
    if ((v31 & 0x3FFF) != 0)
    {
      v28 = 1;
    }

    --v27;
  }

  while (v27);
LABEL_30:
  v32 = a11;
  if (!a8 || *a8 == 88)
  {
    a8 = 0;
  }

  if (__b && v172 >= 1)
  {
    v33 = v28;
    memset(__b, 255, 4 * v172);
    v28 = v33;
    v32 = a11;
  }

  v154 = a8;
  v147 = v32;
  v152 = v28;
  if (!v32 || (v34 = *v32, (v34 & 0x80000000) != 0))
  {
    v150 = -1;
    v165 = 1;
    v166 = -1;
LABEL_50:
    v44 = -1;
LABEL_51:
    v151 = v44;
    goto LABEL_52;
  }

  v165 = 0;
  v166 = v34;
  if ((a12 & 0x22) == 0)
  {
    v150 = -1;
    goto LABEL_50;
  }

  v35 = v34;
  if (sub_17708(v171[v34], v174)[12])
  {
    v151 = v35;
    v150 = v35 + 1;
    goto LABEL_52;
  }

  v36 = v35;
  v37 = v35;
  while (1)
  {
    v38 = v171[v37];
    v39 = v174;
    v40 = *(v39 + 4 * _lou_charHash(v171[v37]) + 13608);
    if (v40)
    {
      while (1)
      {
        v41 = (v39 + 31616 + 8 * v40);
        if (*(v41 + 22) == v38)
        {
          break;
        }

        v40 = *(v41 + 3);
        if (!v40)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
LABEL_44:
      word_28E24 = v38;
      v41 = &unk_28DF8;
    }

    if (v41[24])
    {
      break;
    }

    if (v37-- <= 0)
    {
      v43 = 0;
      goto LABEL_231;
    }
  }

  v43 = v37 + 1;
LABEL_231:
  v135 = v36;
  a8 = v154;
  if ((a12 & 0x20) != 0 || v36 >= v172)
  {
    v150 = v36;
    v44 = v43;
    goto LABEL_51;
  }

  while (1)
  {
    v136 = v135;
    v137 = v171[v135];
    v138 = v174;
    v139 = *(v138 + 4 * _lou_charHash(v171[v135]) + 13608);
    if (v139)
    {
      while (1)
      {
        v140 = (v138 + 31616 + 8 * v139);
        if (*(v140 + 22) == v137)
        {
          break;
        }

        v139 = *(v140 + 3);
        if (!v139)
        {
          goto LABEL_236;
        }
      }
    }

    else
    {
LABEL_236:
      word_28E24 = v137;
      v140 = &unk_28DF8;
    }

    if (v140[24])
    {
      break;
    }

    v135 = v136 + 1;
    if (v172 <= v136 + 1)
    {
      v150 = v136 + 1;
      goto LABEL_257;
    }
  }

  v150 = v136;
LABEL_257:
  v151 = v43;
  a8 = v154;
LABEL_52:
  result = _lou_allocMem(5, 0, v172, *v19);
  if (!result)
  {
    return result;
  }

  v45 = result;
  if (*(v174 + 932) > 1 || *(v174 + 936))
  {
    result = _lou_allocMem(6, 0, v172, *v19);
    v160 = result;
    if (!result)
    {
      return result;
    }

    result = _lou_allocMem(7, 0, v172, *v19);
    if (!result)
    {
      return result;
    }

    v156 = result;
  }

  else
  {
    v156 = 0;
    v160 = 0;
  }

  v46 = a14;
  if (a8)
  {
    v47 = _lou_allocMem(3, 0, v172, *v19);
    if (v47)
    {
      v148 = v47;
      memset(v47, 42, *v19);
    }

    else
    {
      v148 = 0;
    }

    v46 = a14;
  }

  else
  {
    v148 = 0;
  }

  v48 = 0;
  v49 = 0;
  dword_2DBF8 = 0;
  if (a13 && v46)
  {
    v48 = *v46;
    v49 = a13;
  }

  qword_2DC00 = v49;
  dword_2DC08 = v48;
  if (!qword_2DC10)
  {
    v50 = malloc_type_malloc(0x28uLL, 0x109004028638895uLL);
    *v50 = 3;
    v50[1] = &unk_2DC18;
    v50[2] = &unk_2DC30;
    v50[3] = sub_17B00;
    v50[4] = 0;
    qword_2DC10 = v50;
LABEL_74:
    v51 = 0;
    do
    {
      sub_12A90(v51);
      v51 = (v51 + 1);
    }

    while (v51 < *qword_2DC10);
    goto LABEL_76;
  }

  if (*qword_2DC10 >= 1)
  {
    goto LABEL_74;
  }

LABEL_76:
  v167 = 0;
  v168 = 0;
  v169 = 0;
  v52 = sub_12AF8(*v19);
  v53 = *(*(qword_2DC10 + 8) + 8 * v52);
  v54 = *(v174 + 936) == 0;
  v55 = *v19;
  LODWORD(v167) = v52;
  v168 = v53;
  v169 = v55;
  v56 = v45;
  v149 = v19;
  v155 = v17;
  __src = v45;
  v153 = v18;
  while (1)
  {
    v164 = 0;
    v162 = v54;
    if (v54 == 1)
    {
      v84 = _lou_allocMem(1, 0, v172, v55);
      if (v84)
      {
        v85 = v84;
        v86 = _lou_allocMem(2, 0, v172, *v19);
        if (v86)
        {
          sub_12B7C(v174, v22, &v170, &v167, v56, __dst, a8, v148, v85, v86, v152, &v164, &v166, &v165, v151, v150);
          v59 = v164;
          goto LABEL_185;
        }
      }

      return 0;
    }

    v163 = v56;
    if (!v54)
    {
      v57 = v174;
      v184[0] = &v170;
      if (!*(v174 + 936))
      {
        v59 = 0;
        goto LABEL_185;
      }

      v182 = 0;
      v181 = 0;
      v180 = 0;
      v179 = 0;
      v177 = 0;
      v178 = 0;
      v176 = 0;
      v183 = 0;
      HIDWORD(v169) = 0;
      _lou_resetPassVariables();
      v58 = v172;
      if (v172 < 1)
      {
        v83 = 0;
        v59 = 0;
        v64 = &v170;
        goto LABEL_169;
      }

      v59 = 0;
      v60 = 0;
      v61 = 0;
      v175 = 0;
      v62 = v57 + 31616;
      v63 = 1;
      v64 = &v170;
      while (1)
      {
        if (!v63)
        {
          goto LABEL_87;
        }

        v65 = *(v57 + 22592);
        if (!v65)
        {
          break;
        }

        while (1)
        {
          v66 = v62 + 8 * v65;
          v67 = *(v66 + 44);
          if (sub_17C38(v57, v59, v64, v67, v66, &v181, &v180, &v179, &v177, &v176, &v175))
          {
            break;
          }

          v65 = *(v66 + 16);
          if (!v65)
          {
            goto LABEL_86;
          }
        }

        v61 = v66;
        v60 = v67;
LABEL_114:
        v182 = v61;
        if (v60 == 75)
        {
          v22 = a12;
          if (qword_2DC00)
          {
            v80 = dword_2DBF8;
            if (dword_2DBF8 < dword_2DC08)
            {
              ++dword_2DBF8;
              *(qword_2DC00 + 8 * v80) = v61;
            }
          }

          if (sub_18884(v57, v184, &v167, v163, 75, &v182, v181, v180, v179, &v183, v177, v178, HIDWORD(v178), &v166, &v165, v176, v175, v146))
          {
            v81 = v184[0];
            v82 = *v64;
            if (*v184[0] != v82 && v82 != v170)
            {
              sub_12A90(v82);
            }

            v63 = v183 != v59;
            v64 = v81;
            v59 = v183;
            goto LABEL_127;
          }

          v59 = v183;
          v64 = v184[0];
          goto LABEL_181;
        }

        v22 = a12;
        if (v60 != 83)
        {
          v63 = 1;
          goto LABEL_127;
        }

        if (SHIDWORD(v169) >= v169)
        {
LABEL_181:
          v18 = v153;
          a8 = v154;
          v19 = v149;
LABEL_182:
          v164 = v59;
          v111 = *v64;
          if (v111 != v170)
          {
            sub_12A90(v111);
          }

          v17 = v155;
          v56 = v163;
          goto LABEL_185;
        }

        *(v163 + 4 * SHIDWORD(v169)) = v59;
        v78 = *(*(v64 + 1) + 2 * v59);
        v183 = v59 + 1;
        v79 = SHIDWORD(v169);
        ++HIDWORD(v169);
        v168[v79] = v78;
        v63 = 1;
        ++v59;
LABEL_127:
        v58 = v64[4];
        if (v59 >= v58)
        {
          v83 = HIDWORD(v169);
          v18 = v153;
          a8 = v154;
          v19 = v149;
LABEL_169:
          v103 = malloc_type_malloc(2 * v83, 0x1000040BDFB0063uLL);
          v22 = a12;
          if (!v103)
          {
            _lou_outOfMemory();
          }

          if (v83 >= 1)
          {
            v104 = v83;
            v105 = v163;
            v106 = v103;
            do
            {
              v108 = *v105++;
              v107 = v108;
              if ((v108 & 0x80000000) != 0)
              {
                v110 = *__dst;
              }

              else
              {
                v109 = v64[4];
                if (v107 >= v109)
                {
                  v110 = __dst[v109 - 1];
                }

                else
                {
                  v110 = __dst[v107];
                }
              }

              *v106++ = v110;
              --v104;
            }

            while (v104);
          }

          memcpy(__dst, v103, 2 * v83);
          free(v103);
          goto LABEL_182;
        }
      }

LABEL_86:
      v182 = v61;
LABEL_87:
      v68 = 0;
      v69 = v58 - v59;
      while (1)
      {
        if (v68)
        {
          if (v68 != 1)
          {
            if (v68 == 2)
            {
              v60 = 83;
              goto LABEL_114;
            }

            goto LABEL_110;
          }

          if (v69 < 1)
          {
            goto LABEL_110;
          }

          v70 = *(v64 + 1);
          v71 = *(v70 + 2 * v59);
          v72 = *(v57 + 13608 + 4 * _lou_charHash(*(v70 + 2 * v59)));
          if (v72)
          {
            while (1)
            {
              v73 = (v62 + 8 * v72);
              if (v73[22] == v71)
              {
                break;
              }

              v72 = *(v73 + 3);
              if (!v72)
              {
                goto LABEL_96;
              }
            }
          }

          else
          {
LABEL_96:
            v73 = &unk_28DF8;
            word_28E24 = v71;
          }

          v74 = (v73 + 10);
          v69 = 1;
        }

        else
        {
          if (v69 < 2)
          {
            goto LABEL_110;
          }

          v74 = (v57 + 22632 + 4 * _lou_stringHash((*(v64 + 1) + 2 * v59), 1, v57));
        }

        for (i = *v74; i; i = *(v61 + 16))
        {
          v61 = v62 + 8 * i;
          v60 = *(v61 + 44);
          if (v68 == 1)
          {
            if (!v63)
            {
              continue;
            }
          }

          else
          {
            v76 = *(v61 + 50);
            if (v69 < v76)
            {
              continue;
            }

            v77 = sub_17B14(v61 + 54, *(v64 + 1) + 2 * v59, v76, v57);
            if (!v63 || !v77)
            {
              continue;
            }
          }

          if (v60 == 75 && sub_17C38(v57, v59, v64, 75, v61, &v181, &v180, &v179, &v177, &v176, &v175))
          {
            v60 = 75;
            goto LABEL_114;
          }
        }

LABEL_110:
        if (++v68 == 3)
        {
          goto LABEL_114;
        }
      }
    }

    v87 = v174;
    v88 = &v170;
    v184[0] = &v170;
    v182 = 0;
    v181 = 0;
    v180 = 0;
    v179 = 0;
    v177 = 0;
    v178 = 0;
    v176 = 0;
    v175 = 0;
    HIDWORD(v169) = 0;
    v183 = 0;
    _lou_resetPassVariables();
    v89 = v172;
    if (v172 < 1)
    {
      v59 = 0;
      goto LABEL_160;
    }

    v90 = 0;
    v91 = 0;
    v92 = 1;
    while (1)
    {
      if (!v92)
      {
        goto LABEL_140;
      }

      v93 = *(v87 + 22592 + 4 * v162);
      if (!v93)
      {
LABEL_138:
        v182 = v91;
LABEL_139:
        v56 = v163;
LABEL_140:
        if (SHIDWORD(v169) >= v169)
        {
          v59 = v90;
          goto LABEL_159;
        }

        *(v56 + 4 * SHIDWORD(v169)) = v90;
        v96 = *(v88 + 1);
        v59 = v90 + 1;
        v183 = v90 + 1;
        LOWORD(v96) = *(v96 + 2 * v90);
        v97 = SHIDWORD(v169);
        ++HIDWORD(v169);
        v168[v97] = v96;
        v92 = 1;
        goto LABEL_142;
      }

      while (1)
      {
        v94 = v87 + 31616 + 8 * v93;
        v95 = *(v94 + 44);
        if (sub_17C38(v87, v90, v88, v95, v94, &v181, &v180, &v179, &v177, &v176, &v175))
        {
          break;
        }

        v93 = *(v94 + 16);
        if (!v93)
        {
          goto LABEL_138;
        }
      }

      v182 = v94;
      if ((v95 - 76) >= 3)
      {
        if (v95 == 83)
        {
          v91 = v94;
          goto LABEL_139;
        }

        if (v95 != 74)
        {
          break;
        }
      }

      if (qword_2DC00)
      {
        v98 = dword_2DBF8;
        if (dword_2DBF8 < dword_2DC08)
        {
          ++dword_2DBF8;
          *(qword_2DC00 + 8 * v98) = v94;
        }
      }

      if (!sub_18884(v87, v184, &v167, v163, v95, &v182, v181, v180, v179, &v183, v177, v178, HIDWORD(v178), &v166, &v165, v176, v175, v146))
      {
        v59 = v183;
        v88 = v184[0];
        goto LABEL_194;
      }

      v99 = v184[0];
      v100 = *v88;
      if (*v184[0] != v100 && v100 != v170)
      {
        sub_12A90(v100);
      }

      v59 = v183;
      v92 = v183 != v90;
      v88 = v99;
      v91 = v94;
      v56 = v163;
LABEL_142:
      v90 = v59;
      if (v59 >= v88[4])
      {
        goto LABEL_159;
      }
    }

    v59 = v90;
LABEL_194:
    v56 = v163;
LABEL_159:
    v89 = v88[4];
    v19 = v149;
    a8 = v154;
LABEL_160:
    v18 = v153;
    if (v59 < v89)
    {
      v101 = 2 * v59;
      do
      {
        if (!sub_199D0(*(*(v88 + 1) + v101), v87))
        {
          break;
        }

        ++v59;
        v101 += 2;
      }

      while (v59 != v88[4]);
      v183 = v59;
    }

    v164 = v59;
    v102 = *v88;
    if (v102 != v170)
    {
      sub_12A90(v102);
    }

    v17 = v155;
LABEL_185:
    *(v56 + 4 * SHIDWORD(v169)) = v59;
    v112 = v160;
    v113 = __src;
    if (v56 != __src)
    {
      memcpy(v156, __src, 4 * *v19 + 4);
      if ((v169 & 0x8000000000000000) == 0)
      {
        v114 = 0;
        v115 = 4 * HIDWORD(v169) + 4;
        do
        {
          *&__src[v114] = *&v156[2 * (*(v56 + v114) & ~(*(v56 + v114) >> 31))];
          v114 += 4;
        }

        while (v115 != v114);
      }

      v112 = v56;
    }

    if (v162 >= *(v174 + 932))
    {
      break;
    }

    v54 = v162 + 1;
    sub_12A90(v170);
    LODWORD(v170) = v167;
    v171 = v168;
    LODWORD(v172) = HIDWORD(v169);
    v116 = sub_12AF8(*v19);
    v117 = *(*(qword_2DC10 + 8) + 8 * v116);
    v55 = *v19;
    LODWORD(v167) = v116;
    v168 = v117;
    v169 = v55;
    v56 = v112;
  }

  v118 = HIDWORD(v169);
  if (SHIDWORD(v169) < 1)
  {
    *v17 = *&__src[4 * SHIDWORD(v169)];
    *v19 = v118;
    v127 = __b;
  }

  else
  {
    v119 = v168;
    v120 = HIDWORD(v169);
    v121 = a7;
    v122 = a7;
    v123 = v18;
    do
    {
      if (v121)
      {
        if ((*v119 & 0xC0) != 0)
        {
          v124 = 56;
        }

        else
        {
          v124 = 48;
        }

        *v122 = v124;
      }

      if ((v22 & 4) != 0)
      {
        v126 = *v119 | 0x2800;
        if ((v22 & 0x40) == 0)
        {
          v126 = *v119;
        }

        *v123 = v126;
      }

      else
      {
        CharForDots = _lou_getCharForDots(*v119, v173);
        *v123 = CharForDots;
        if (!CharForDots)
        {
          v141 = _lou_showDots(v119, 1);
          _lou_logMessage(40000, "%s: no mapping for dot pattern %s in display table", v159, v141);
          return 0;
        }
      }

      ++v119;
      ++v123;
      ++v122;
      --v120;
      v121 = a7;
    }

    while (v120);
    v113 = __src;
    a8 = v154;
    v17 = v155;
    *v155 = *&__src[4 * v118];
    *v19 = v118;
    v127 = __b;
    if (a10)
    {
      v128 = 0;
      do
      {
        v129 = *&__src[4 * v128];
        if (v129 < 0)
        {
          v129 = 0;
        }

        else if (v129 >= *v155)
        {
          v129 = *v155 - 1;
        }

        *(a10 + 4 * v128++) = v129;
        v118 = *v19;
      }

      while (v128 < v118);
    }
  }

  if (v127)
  {
    if (v118 < 1)
    {
      v132 = -1;
      v131 = -1;
    }

    else
    {
      v130 = 0;
      v131 = -1;
      v132 = -1;
      do
      {
        v133 = *&v113[4 * v130];
        if (v133 > v132)
        {
          v134 = v131 & ~(v131 >> 31);
          do
          {
            if ((v132 & 0x80000000) == 0 && v132 < *v17)
            {
              v127[v132] = v134;
              v133 = *&v113[4 * v130];
            }

            ++v132;
          }

          while (v132 < v133);
          LODWORD(v118) = *v19;
          v131 = v130;
        }

        ++v130;
      }

      while (v130 < v118);
    }

    for (j = v132 & ~(v132 >> 31); *v17 > j; ++j)
    {
      v127[j] = v131;
    }
  }

  if (v148)
  {
    v143 = v172;
    memcpy(a8, v148, v172);
    a8[v143] = 0;
    v127 = __b;
  }

  if (v147)
  {
    v144 = *v147;
    if (v144 != -1)
    {
      v145 = &v127[v144];
      if (!v127)
      {
        v145 = &v166;
      }

      *v147 = *v145;
    }
  }

  if (a14)
  {
    *a14 = dword_2DBF8;
  }

  _lou_logMessage(0, "Translation complete: outlen=%d", *v19);
  _lou_logWidecharBuf(0, "Outbuf=", v18, *v19);
  return (&dword_0 + 1);
}

uint64_t sub_12A90(uint64_t result)
{
  if ((result & 0x80000000) == 0)
  {
    v1 = result;
    if (*qword_2DC10 > result)
    {
      v2 = *(qword_2DC10 + 16);
      if (*(v2 + 4 * result))
      {
        v3 = *(qword_2DC10 + 32);
        if (v3)
        {
          result = v3(*(*(qword_2DC10 + 8) + 8 * result));
          v2 = *(qword_2DC10 + 16);
        }
      }

      *(v2 + 4 * v1) = 0;
    }
  }

  return result;
}

uint64_t sub_12AF8(uint64_t a1)
{
  v1 = *qword_2DC10;
  if (v1 < 1)
  {
LABEL_5:
    _lou_outOfMemory();
  }

  v2 = 0;
  while (*(*(qword_2DC10 + 16) + 4 * v2))
  {
    if (v1 == ++v2)
    {
      goto LABEL_5;
    }
  }

  v3 = (*(qword_2DC10 + 24))(v2, a1);
  v4 = qword_2DC10;
  *(*(qword_2DC10 + 8) + 8 * v2) = v3;
  *(*(v4 + 16) + 4 * v2) = 1;
  return v2;
}

uint64_t sub_12B7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, _DWORD *a12, int *a13, _DWORD *a14, int a15, int a16)
{
  v16 = a6;
  v734 = a3;
  v732 = 0;
  v731 = 0;
  v730 = 0;
  v729 = 0;
  v727 = 0;
  v728 = 0;
  v726 = 0;
  v725 = 0;
  translation_direction = 1;
  if (!*(a1 + 940))
  {
    goto LABEL_37;
  }

  v17 = *(a3 + 16);
  if (v17 < 1)
  {
    goto LABEL_37;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  LOWORD(v21) = 0;
  v22 = 0;
  v717 = a1 + 13608;
  v23 = a1 + 31616;
  v715 = a1 + 22632;
  do
  {
    v24 = 0;
    v25 = v17 - v22;
    v26 = v22;
    do
    {
      if (v24)
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        if (v25 < 1)
        {
          goto LABEL_23;
        }

        v27 = *(a3 + 8);
        v28 = *(v27 + 2 * v22);
        v29 = *(v717 + 4 * _lou_charHash(*(v27 + 2 * v22)));
        if (v29)
        {
          while (1)
          {
            v30 = (v23 + 8 * v29);
            if (v30[22] == v28)
            {
              break;
            }

            v29 = *(v30 + 3);
            if (!v29)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:
          v30 = &unk_28DF8;
          word_28E24 = v28;
        }

        v31 = (v30 + 10);
        v25 = 1;
      }

      else
      {
        if (v25 < 2)
        {
          goto LABEL_23;
        }

        v31 = (v715 + 4 * _lou_stringHash((*(a3 + 8) + 2 * v22), 1, a1));
      }

      v32 = *v31;
      if (v32)
      {
        while (1)
        {
          v33 = v23 + 8 * v32;
          v19 = *(v33 + 44);
          v18 = *(v33 + 50);
          if ((v24 == 1 || v25 >= v18 && sub_17B14(v33 + 54, *(a3 + 8) + 2 * v22, *(v33 + 50), a1)) && v19 == 86)
          {
            break;
          }

          v32 = *(v33 + 16);
          if (!v32)
          {
            goto LABEL_23;
          }
        }

        v16 = a6;
LABEL_28:
        v17 = *(a3 + 16);
        if (v18 + v22 > v17)
        {
          goto LABEL_37;
        }

        v21 = dword_1DDB0[v20];
        v20 = ~v20 & 1;
        if (v18 < 1)
        {
          v19 = 86;
        }

        else
        {
          v34 = (v16 + 2 * v22);
          v35 = v18;
          do
          {
            *v34++ |= v21;
            --v35;
          }

          while (v35);
          v19 = 86;
          v22 += v18;
        }

        goto LABEL_36;
      }

LABEL_23:
      ++v24;
    }

    while (v24 != 3);
    if (v19 != 83)
    {
      v16 = a6;
      if (v19 != 86)
      {
        v17 = *(a3 + 16);
        continue;
      }

      goto LABEL_28;
    }

LABEL_34:
    v16 = a6;
    v17 = *(a3 + 16);
    if (v22 >= v17)
    {
      break;
    }

    ++v22;
    *(a6 + 2 * v26) |= v21;
    v19 = 83;
LABEL_36:
    ;
  }

  while (v22 < v17);
LABEL_37:
  v733 = 0;
  v724 = 0;
  v722 = 0;
  v723 = 0;
  v36 = a4;
  *(a4 + 20) = 0;
  v721 = 0;
  _lou_resetPassVariables();
  v37 = a3;
  if (*(a1 + 2340) && *(a3 + 16) >= 1)
  {
    v38 = 0;
    do
    {
      v39 = *(a3 + 8);
      v40 = *(v39 + 2 * v38);
      v41 = *(a1 + 13608 + 4 * _lou_charHash(*(v39 + 2 * v38)));
      if (v41)
      {
        while (1)
        {
          v42 = (a1 + 31616 + 8 * v41);
          if (*(v42 + 22) == v40)
          {
            break;
          }

          v41 = *(v42 + 3);
          if (!v41)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
LABEL_43:
        v42 = &unk_28DF8;
        word_28E24 = v40;
      }

      if ((v42[24] & 0x10) != 0)
      {
        *(v16 + 2 * v38) |= 0x8000u;
      }

      ++v38;
    }

    while (v38 < *(a3 + 16));
  }

  v43 = a5;
  if (*(a1 + 928) && *(a3 + 16) >= 1)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(a3 + 8);
      v47 = *(v46 + 2 * v44);
      v48 = *(a1 + 13608 + 4 * _lou_charHash(*(v46 + 2 * v44)));
      if (v48)
      {
        while (1)
        {
          v49 = (a1 + 31616 + 8 * v48);
          if (*(v49 + 22) == v47)
          {
            break;
          }

          v48 = *(v49 + 3);
          if (!v48)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
LABEL_53:
        v49 = &unk_28DF8;
        word_28E24 = v47;
      }

      if ((v49[24] & 0x10) != 0)
      {
        v50 = v45 + 1;
        if (v45 >= 1)
        {
          v51 = (v16 + 2 * v44);
          *v51 |= 0x1000u;
          if (v45 == 1)
          {
            *(v51 - 1) |= 0x1000u;
            v50 = 2;
          }
        }
      }

      else
      {
        v50 = 0;
      }

      ++v44;
      v45 = v50;
    }

    while (v44 < *(a3 + 16));
  }

  v52 = 0;
  v53 = a1;
  v696 = a1 + 1960;
  v713 = a1 + 13608;
  v714 = a1 + 31616;
  v54 = a10;
  while (2)
  {
    if (v52 >= 0xA)
    {
      v55 = a1 + 1552 + 24 * v52 - 240;
    }

    else
    {
      v55 = a1 + 1312 + 24 * v52;
    }

    if (!*(v55 + 16))
    {
      goto LABEL_431;
    }

    v692 = v52;
    v706 = *(v55 + 20);
    v56 = a9;
    v718 = v55;
    if (*(v37 + 16) < 1)
    {
      goto LABEL_103;
    }

    for (i = 0; i < v59; ++i)
    {
      v58 = sub_1A324(*(*(v37 + 8) + 2 * i), v53, v55);
      v55 = v718;
      *(a9 + 4 * i) = (*(a9 + 4 * i) & 0xFFFFFFFA | v58) ^ 1;
      v59 = *(v37 + 16);
    }

    if (v59 < 1)
    {
      goto LABEL_103;
    }

    v60 = 0;
    v61 = 0;
    v698 = *(v696 + 36 * *(v718 + 20));
    v62 = -1;
    v63 = -1;
    v64 = -1;
    while (2)
    {
      v65 = *(v56 + 4 * v60);
      if (v61)
      {
        v66 = v60;
      }

      else
      {
        v66 = v64;
      }

      if ((v65 & 1) == 0)
      {
        v62 = v60;
        v61 = 0;
        v64 = v66;
        goto LABEL_98;
      }

      v67 = *(*(v37 + 8) + 2 * v60);
      v68 = *(a6 + 2 * v60);
      v69 = sub_1A418(v67, a1, v55);
      v55 = v718;
      if (v69)
      {
        v70 = *(v718 + 8);
        if (v70)
        {
          v71 = *(v713 + 4 * _lou_charHash(v67));
          if (v71)
          {
            while (1)
            {
              v72 = (v714 + 8 * v71);
              if (*(v72 + 22) == v67)
              {
                break;
              }

              v71 = *(v72 + 3);
              if (!v71)
              {
                goto LABEL_80;
              }
            }
          }

          else
          {
LABEL_80:
            v72 = &unk_28DF8;
            word_28E24 = v67;
          }

          v73 = (v72[3] & v70) != 0;
          v55 = v718;
        }

        else
        {
          v73 = (*v718 & v68);
        }

        v37 = a3;
        if (v73)
        {
          if ((v63 & 0x80000000) != 0)
          {
            v63 = v60;
          }

          v61 = 1;
          v56 = a9;
          goto LABEL_98;
        }
      }

      v61 &= v65 << 31 >> 31;
      if (!sub_1A418(*(*(v37 + 8) + 2 * v60), a1, v55))
      {
        v56 = a9;
        goto LABEL_94;
      }

      v56 = a9;
      if ((v63 & 0x80000000) != 0)
      {
LABEL_94:
        v55 = v718;
        goto LABEL_98;
      }

      v55 = v718;
      v74 = *(a10 + 8 * v63);
      v75 = *(v718 + 16) | v74;
      *(a10 + 8 * v63) = *(v718 + 16) | v74;
      if (v61)
      {
        v76 = *(v718 + 16);
        if (v698 && v63 < v62)
        {
          v61 = 0;
          *(a10 + 8 * v64 + 2) = (*(a10 + 8 * v64) | (v76 << 16)) >> 16;
          v64 = -1;
          v63 = -1;
          v60 = v62;
          goto LABEL_98;
        }

        v61 = 0;
        v77 = a10 + 8 * v60;
      }

      else
      {
        v76 = *(v718 + 16);
        v77 = a10 + 8 * v64;
      }

      *(v77 + 2) = (*v77 | (v76 << 16)) >> 16;
      v64 = -1;
      v63 = -1;
LABEL_98:
      if (++v60 < *(v37 + 16))
      {
        continue;
      }

      break;
    }

    v54 = a10;
    v53 = a1;
    v16 = a6;
    if ((v63 & 0x80000000) == 0)
    {
      v78 = *(a10 + 8 * v63);
      v79 = *(v55 + 16) | v78;
      *(a10 + 8 * v63) = *(v55 + 16) | v78;
      if (v61)
      {
        v64 = *(v37 + 16);
      }

      *(a10 + 8 * v64 + 2) = (*(a10 + 8 * v64) | (*(v55 + 16) << 16)) >> 16;
    }

LABEL_103:
    v80 = a1 + 1960;
    v81 = (v696 + 36 * v706);
    if (!v81[6])
    {
      v43 = a5;
      v36 = a4;
      v52 = v692;
      if (v81[5])
      {
        if (!v81[3])
        {
          goto LABEL_376;
        }

        v84 = *(v37 + 16);
        if (v84 >= 1)
        {
          for (j = 0; j < v84; ++j)
          {
            v86 = *(v54 + 8 * j);
            v87 = *(v55 + 16);
            if ((v87 & v86) != 0)
            {
              v88 = v54 + 8 * j;
              v89 = *(v88 + 8);
              if ((v87 & WORD1(v89)) != 0)
              {
                *(v54 + 8 * j) = v86 & 0xFFFFFFFFFFFF0000 | (v87 ^ 0xFFFF) & v86;
                *(v88 + 8) = v89 & 0xFFFFFFFF0000FFFFLL | v89 & (~*(v55 + 16) << 16);
                *(v54 + 8 * j) = v86 & 0xFFFFFFFF0000 | (v87 ^ 0xFFFF) & v86 | ((*(v55 + 16) | HIWORD(v86)) << 48);
                v84 = *(v37 + 16);
              }
            }
          }
        }
      }

      goto LABEL_416;
    }

    v82 = (v696 + 36 * *(v55 + 20));
    if (*v82)
    {
      if (v82[2])
      {
        v83 = 1;
      }

      else
      {
        v83 = v82[4] != 0;
      }

      v699 = v83;
    }

    else
    {
      v699 = 0;
    }

    v689 = (v696 + 36 * v706);
    if (*(v37 + 16) < 1)
    {
      v96 = -1;
      goto LABEL_197;
    }

    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = v82[5];
    v95 = -1;
    v96 = -1;
    v707 = v94;
    while (2)
    {
      v97 = *(v54 + 8 * v90);
      v98 = *(v55 + 16);
      if (v92)
      {
LABEL_130:
        if ((v98 & WORD1(v97)) != 0)
        {
          v92 = 0;
          *(v54 + 8 * v90) = v97 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v97) & ~v98) << 16);
          v101 = 1;
          if (v91 && (v95 & 0x80000000) == 0)
          {
            v102 = *(v55 + 16);
            v103 = *(v54 + 8 * v95);
            if (v94 && v93 == 1)
            {
              v92 = 0;
              *(v54 + 8 * v95) = v103 & 0xFFFFFFFFFFFFLL | ((v102 | HIWORD(v103)) << 48);
            }

            else
            {
              *(v54 + 8 * v95) = v103 & 0xFFFF0000FFFFFFFFLL | ((v102 | WORD2(v103)) << 32);
              v92 = 0;
              if (*(v56 + 4 * v90))
              {
                v124 = *(v54 + 8 * v90);
                v125 = v124 & 0xFFFFFFFF0000FFFFLL | v124 & 0xFFFF0000 | (*(v55 + 16) << 16);
                *(v54 + 8 * v90) = v125;
                *(v54 + 8 * v90) = v125 & 0xFFFF0000FFFFFFFFLL | ((*(v55 + 16) | WORD2(v124)) << 32);
              }
            }

            goto LABEL_138;
          }
        }

        else
        {
          v101 = 0;
          v92 = 1;
        }

        if (!v91)
        {
          goto LABEL_152;
        }

LABEL_138:
        if ((*(v56 + 4 * v90) & 1) == 0)
        {
          v104 = v92 ^ 1;
          if ((v95 & 0x80000000) != 0)
          {
            v104 = 1;
          }

          if ((v104 & 1) == 0)
          {
            v105 = *(v54 + 8 * v95);
            if (v94 && v93 == 1)
            {
              v106 = *(v55 + 16) | HIWORD(v105);
              v107 = 0xFFFFFFFFFFFFLL;
              v108 = 48;
            }

            else
            {
              v106 = (*(v55 + 16) | WORD2(v105));
              v107 = 0xFFFF0000FFFFFFFFLL;
              v108 = 32;
            }

            *(v54 + 8 * v95) = (v107 & v105) + (v106 << v108);
          }

          v95 = -1;
          goto LABEL_177;
        }

        if (v90 == v95)
        {
          v109 = 1;
          v91 = 1;
          v93 = 1;
        }

        else
        {
          if (!v699)
          {
            v110 = sub_1A418(*(*(v37 + 8) + 2 * v90), v53, v55);
            v94 = v707;
            v55 = v718;
            if (!v110)
            {
              v109 = 1;
              v91 = 1;
              goto LABEL_179;
            }
          }

          v93 += v101 ^ 1;
          v109 = 1;
          v91 = 1;
        }

        v96 = v90;
        goto LABEL_179;
      }

      v99 = *(v55 + 16);
      if ((v99 & v97) != 0)
      {
        v97 = v97 & 0xFFFFFFFFFFFF0000 | (v99 ^ 0xFFFF) & v97;
        *(v54 + 8 * v90) = v97;
        if (v91)
        {
          v100 = v90;
        }

        else
        {
          v100 = v95;
        }

        if (*(v56 + 4 * v90))
        {
          v95 = v100;
        }

        else
        {
          v95 = -1;
        }

        v98 = *(v55 + 16);
        goto LABEL_130;
      }

      v92 = 0;
      v101 = 1;
      if (v91)
      {
        goto LABEL_138;
      }

LABEL_152:
      if (*(v56 + 4 * v90))
      {
        if (sub_1A418(*(*(v37 + 8) + 2 * v90), v53, v55))
        {
          if (!v101)
          {
            v95 = v90;
          }

          v111 = v96 + 1;
          if (v90 > (v96 + 1))
          {
            v112 = v111 + 1;
            v113 = (v56 + 4 * v111);
            do
            {
              *v113++ &= ~1u;
              v117 = v90 == v112++;
            }

            while (!v117);
          }

          v55 = v718;
          v94 = v707;
          if ((v96 & 0x80000000) == 0)
          {
            v114 = *(v54 + 8 * v96);
            v115 = *(v718 + 16);
            if ((v115 & HIWORD(v114)) == 0)
            {
              v116 = v115 & WORD1(v114);
              v117 = (*(v718 + 16) & WORD2(v114)) != 0 && v116 == 0;
              if (v117)
              {
                *(v54 + 8 * v96) = v114 & 0xFFFFFFFFFFFFLL | ((*(v718 + 16) | HIWORD(v114)) << 48);
              }

              v118 = v96 << 32;
              v119 = (v54 + 8 * v96);
              while (v90 - 1 > v118 >> 32)
              {
                v121 = v119[1];
                ++v119;
                v120 = v121;
                v122 = *(v718 + 16);
                v118 += 0x100000000;
                if ((v122 & WORD1(v121)) != 0)
                {
                  *v119 = v120 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v120) & ~v122) << 16);
                  *v119 = v120 & 0xFFFF00000000FFFFLL | ((WORD1(v120) & ~v122) << 16) | ((WORD2(v120) & ~*(v718 + 16)) << 32);
                  goto LABEL_138;
                }
              }
            }
          }

          goto LABEL_138;
        }

        v55 = v718;
        v94 = v707;
      }

LABEL_177:
      v109 = 0;
      v91 = 0;
      if (v90 == v95)
      {
        v93 = 1;
        v96 = v90;
      }

LABEL_179:
      ++v90;
      v123 = *(v37 + 16);
      if (v90 < v123)
      {
        continue;
      }

      break;
    }

    if (v92)
    {
      *(v54 + 8 * v123 + 2) = (*(v54 + 8 * v123) & (~*(v55 + 16) << 16)) >> 16;
      v126 = v109 ^ 1;
      if ((v95 & 0x80000000) != 0)
      {
        v126 = 1;
      }

      v80 = a1 + 1960;
      if (v126)
      {
        v16 = a6;
      }

      else
      {
        v127 = *(v54 + 8 * v95);
        v16 = a6;
        if (v94 && v93 == 1)
        {
          v128 = *(v55 + 16) | HIWORD(v127);
          v129 = 0xFFFFFFFFFFFFLL;
          v130 = 48;
        }

        else
        {
          v128 = (*(v55 + 16) | WORD2(v127));
          v129 = 0xFFFF0000FFFFFFFFLL;
          v130 = 32;
        }

        *(v54 + 8 * v95) = (v129 & v127) + (v128 << v130);
      }
    }

    else
    {
      v16 = a6;
      v80 = a1 + 1960;
    }

    v81 = v689;
LABEL_197:
    LODWORD(v131) = v96 + 1;
    LODWORD(v132) = *(v37 + 16);
    if ((v96 + 1) < v132)
    {
      v131 = v131;
      do
      {
        *(v56 + 4 * v131++) &= ~1u;
        v132 = *(v37 + 16);
      }

      while (v131 < v132);
    }

    if ((v96 & 0x80000000) == 0)
    {
      v133 = *(v54 + 8 * v96);
      v134 = *(v55 + 16);
      if ((v134 & HIWORD(v133)) == 0)
      {
        v135 = v134 & WORD1(v133);
        if ((*(v55 + 16) & WORD2(v133)) != 0 && v135 == 0)
        {
          *(v54 + 8 * v96) = v133 & 0xFFFFFFFFFFFFLL | ((*(v55 + 16) | HIWORD(v133)) << 48);
          LODWORD(v132) = *(v37 + 16);
        }

        v137 = (v54 + 8 * v96);
        while (v132 - 1 > v96)
        {
          v139 = v137[1];
          ++v137;
          v138 = v139;
          v140 = *(v55 + 16);
          ++v96;
          if ((v140 & WORD1(v139)) != 0)
          {
            *v137 = v138 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v138) & ~v140) << 16);
            *v137 = v138 & 0xFFFF00000000FFFFLL | ((WORD1(v138) & ~v140) << 16) | ((WORD2(v138) & ~*(v55 + 16)) << 32);
            LODWORD(v132) = *(v37 + 16);
            break;
          }
        }
      }
    }

    if (v132 >= 1)
    {
      v141 = 0;
      v142 = v56;
      v143 = 0xFFFFFFFFLL;
      do
      {
        v144 = *(v54 + 8 * v141);
        v145 = *(v55 + 16);
        if ((v145 & HIWORD(v144)) != 0)
        {
          if ((!v141 || (*(v142 - 4) & 1) == 0) && (v141 + 1 == v132 || (*(v142 + 4) & 1) == 0))
          {
            *v142 |= 4u;
          }
        }

        else if ((v145 & WORD2(v144)) != 0)
        {
          if ((v145 & WORD1(v144)) != 0)
          {
            if (v143 & 0x80000000) == 0 && (*v142)
            {
              *(v56 + 4 * v143) &= ~4u;
            }

            v143 = 0xFFFFFFFFLL;
          }

          else
          {
            if (!v141 || (*(v142 - 4) & 1) == 0)
            {
              *v142 |= 4u;
            }

            v143 = v141;
          }
        }

        ++v141;
        v132 = *(v37 + 16);
        v142 += 4;
      }

      while (v141 < v132);
    }

    if (v81[8])
    {
      v146 = (v80 + 36 * *(v55 + 20));
      if (v146[2])
      {
        v708 = 0;
      }

      else
      {
        v708 = v146[4] == 0;
      }

      if (v132 < 1)
      {
        goto LABEL_375;
      }

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v198 = 0;
      v199 = 0;
      LODWORD(v200) = -1;
      v201 = -1;
      v202 = -1;
      v203 = 0xFFFFFFFFLL;
      v701 = 0xFFFFFFFFLL;
      v694 = (v80 + 36 * *(v55 + 20));
      while (1)
      {
        v204 = *(v56 + 4 * v195);
        v205 = (v204 & 1) == 0;
        v206 = (v204 & 1) != 0 ? v200 : v195;
        v200 = v196 ? v206 : v200;
        if (v196)
        {
          v205 = (v204 & 1) == 0;
          v196 = (v204 & 1) != 0;
        }

        else
        {
          v196 = v204 & 1;
        }

        v207 = *(a10 + 8 * v195);
        v208 = *(v55 + 16);
        if (v199)
        {
          break;
        }

        v211 = (v208 & HIWORD(v207));
        if (v211)
        {
          v203 = v195;
        }

        else
        {
          LODWORD(v207) = v208 & WORD1(v207);
          if ((v208 & WORD2(v207)) == 0 || v207 != 0)
          {
            goto LABEL_372;
          }
        }

        v199 = v211 == 0;
        if (v198)
        {
          if (!*(v55 + 8) || (v204 & 4) != 0)
          {
            ++v197;
            v202 = v195;
LABEL_334:
            v210 = v199 || v205;
            if ((v210 & 1) != 0 || v195 == v203)
            {
              if (v195 == v132 - 1 && v197 >= v146[8])
              {
                if (v201 < v202)
                {
                  v201 = v132;
                }

                sub_1A7B8(v701, v201, v202, a10, v718, a1, v56);
                v146 = v694;
                v55 = v718;
              }

              v198 = 1;
              goto LABEL_366;
            }

            v199 = 0;
          }

          if (v201 < v202)
          {
            v201 = v195;
          }

          v212 = v708;
          if (v201 == v200)
          {
            v212 = 0;
          }

          v197 -= v212;
          if (v197 >= v146[8])
          {
            sub_1A7B8(v701, v201, v202, a10, v718, a1, v56);
            v146 = v694;
            v55 = v718;
          }

LABEL_365:
          v198 = 0;
          goto LABEL_366;
        }

LABEL_351:
        if (!v199 && v195 != v203)
        {
          v199 = 0;
          goto LABEL_365;
        }

        if (*(v55 + 8) && (v204 & 4) == 0)
        {
          goto LABEL_365;
        }

        v201 = -1;
        v198 = 1;
        v202 = v195;
        v701 = v195;
        v197 = 1;
LABEL_366:
        ++v195;
        v132 = *(v37 + 16);
        if (v195 >= v132)
        {
          goto LABEL_234;
        }
      }

      if ((v208 & WORD2(v207)) != 0)
      {
        if ((v208 & WORD1(v207)) == 0 && v195 != v200)
        {
          goto LABEL_333;
        }
      }

      else
      {
LABEL_372:
        if (v195 != v200)
        {
          goto LABEL_333;
        }
      }

      v199 = 0;
      if (v198)
      {
        v201 = v195;
      }

LABEL_333:
      if (v198)
      {
        goto LABEL_334;
      }

      goto LABEL_351;
    }

LABEL_234:
    v54 = a10;
    v53 = a1;
    v16 = a6;
    if (v132 < 1)
    {
      goto LABEL_375;
    }

    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v700 = *(v696 + 36 * *(v55 + 20) + 20);
    v709 = -1;
    v152 = v56;
    v153 = a10;
    v154 = -1;
    while (2)
    {
      v155 = *v153;
      if (v151)
      {
        v156 = *(v55 + 16);
        if ((v156 & WORD1(v155)) != 0)
        {
          goto LABEL_241;
        }

        if ((WORD2(v155) & v156) != 0)
        {
          v709 = v147;
          goto LABEL_241;
        }

        goto LABEL_242;
      }

      v156 = *(v55 + 16);
LABEL_241:
      v157 = v156;
      if ((v156 & v155) != 0)
      {
LABEL_242:
        v151 = 1;
        goto LABEL_243;
      }

      if (v148)
      {
LABEL_246:
        if ((*v152 & 1) != 0 && ((v158 = *(v55 + 16), (v158 & WORD2(*v153)) != 0) ? (v159 = (v158 & WORD1(*v153)) == 0) : (v159 = 1), v159))
        {
          if ((*v152 & 2) != 0 || (v160 = sub_1A564(*(*(v37 + 8) + 2 * v147), v53, v55), v55 = v718, v160))
          {
            if (v700 && v149 == 1 && v154 != v709)
            {
              v161 = *(a10 + 8 * v154);
              v162 = HIDWORD(v161);
              v163 = v161 & 0xFFFFFFFFFFFFLL | ((*(v55 + 16) | HIWORD(v161)) << 48);
              *(a10 + 8 * v154) = v163;
              *(a10 + 8 * v154) = v163 & 0xFFFF0000FFFFFFFFLL | ((v162 & ~*(v55 + 16)) << 32);
              *(v56 + 4 * v154) &= ~4u;
            }

            if (sub_1A564(*(*(v37 + 8) + 2 * v147), v53, v55))
            {
              v151 = 0;
              v150 = 1;
              v148 = 1;
              v55 = v718;
              goto LABEL_243;
            }

            v55 = v718;
            if (v154 == v709)
            {
              v181 = a10 + 8 * v709;
              v182 = *(v181 + 4);
              v183 = v182 & ~*(v718 + 16);
              *(v181 + 4) = v182 & ~*(v718 + 16);
            }

            v151 = 0;
            v150 = 0;
            *(v153 + 4) = *(v718 + 16) | *(v153 + 4);
            v709 = -1;
            v149 = 1;
            v154 = v147;
          }

          else
          {
            if (v150)
            {
              if (v154 == v709)
              {
                v185 = a10 + 8 * v709;
                v186 = *(v185 + 4);
                v187 = v186 & ~*(v718 + 16);
                *(v185 + 4) = v186 & ~*(v718 + 16);
              }

              v149 = 0;
              *(v153 + 4) = *(v718 + 16) | *(v153 + 4);
              v709 = -1;
              v154 = v147;
            }

            v151 = 0;
            v150 = 0;
            ++v149;
          }

          v148 = 1;
        }

        else
        {
          if (v700 && v149 == 1 && v154 != v709)
          {
            v164 = *(a10 + 8 * v154);
            v165 = HIDWORD(v164);
            v166 = v164 & 0xFFFFFFFFFFFFLL | ((*(v55 + 16) | HIWORD(v164)) << 48);
            *(a10 + 8 * v154) = v166;
            *(a10 + 8 * v154) = v166 & 0xFFFF0000FFFFFFFFLL | ((v165 & ~*(v55 + 16)) << 32);
            *(v56 + 4 * v154) &= ~4u;
            v167 = *v153;
            v168 = *v153 & 0xFFFFFFFF0000FFFFLL | *v153 & (~*(v55 + 16) << 16);
            *v153 = v168;
            *v153 = v168 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v167) & ~*(v55 + 16)) << 32);
          }

          if (v150 || (*v152 & 2) != 0 || (v169 = sub_1A564(*(*(v37 + 8) + 2 * v147), v53, v55), v55 = v718, v169))
          {
            v170 = *v153;
            v171 = *v153 & 0xFFFFFFFF0000FFFFLL | *v153 & (~*(v55 + 16) << 16);
            *v153 = v171;
            *v153 = v171 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v170) & ~*(v55 + 16)) << 32);
          }

          if (v147 == v154)
          {
            v151 = 0;
            v148 = 0;
            *(v56 + 4 * v154) &= ~4u;
            v172 = *v153;
            v173 = *v153 & 0xFFFFFFFF0000FFFFLL | *v153 & (~*(v55 + 16) << 16);
            *v153 = v173;
            v174 = v173 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v172) & ~*(v55 + 16)) << 32);
            goto LABEL_286;
          }

LABEL_287:
          v151 = 0;
          v148 = 0;
        }
      }

      else if ((v156 & WORD2(v155)) != 0)
      {
        if ((*v152 & 2) != 0)
        {
          if (!v700 || v147 == v709)
          {
            v150 = 0;
            v149 = 0;
            v154 = v147;
            goto LABEL_246;
          }
        }

        else
        {
          v175 = v53;
          v176 = v55;
          if (!sub_1A564(*(*(v37 + 8) + 2 * v147), v175, v55) || v700 == 0 || v147 == v709)
          {
            v150 = 0;
            v149 = 0;
            v154 = v147;
            v55 = v176;
            v53 = a1;
            goto LABEL_246;
          }

          v157 = *(v176 + 16);
          v155 = *v153;
          v55 = v176;
          v53 = a1;
        }

        v184 = v155 & 0xFFFFFFFFFFFFLL | ((v157 | HIWORD(v155)) << 48);
        *v153 = v184;
        if (v152[1])
        {
          *(v153 + 12) = *(v55 + 16) | *(v153 + 12);
          if ((*v152 & 4) != 0)
          {
            v152[1] |= 4u;
            v184 = *v153;
          }
        }

        v151 = 0;
        v148 = 0;
        *v153 = v184 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v184) & ~*(v55 + 16)) << 32);
        *v152 &= ~4u;
      }

      else
      {
        v179 = HIWORD(v155);
        if ((v156 & HIWORD(v155)) == 0)
        {
          goto LABEL_287;
        }

        if ((*v152 & 2) == 0)
        {
          v693 = v149;
          v180 = v55;
          if (!sub_1A564(*(*(v37 + 8) + 2 * v147), v53, v55))
          {
            v151 = 0;
            v148 = 0;
            v55 = v180;
            v149 = v693;
            goto LABEL_243;
          }

          v156 = *(v180 + 16);
          v155 = *v153;
          v179 = HIWORD(*v153);
          v55 = v180;
          v149 = v693;
        }

        v151 = 0;
        v148 = 0;
        v174 = v155 & 0xFFFFFFFFFFFFLL | ((v179 & ~v156) << 48);
LABEL_286:
        *v153 = v174;
      }

LABEL_243:
      ++v147;
      v153 += 8;
      ++v152;
      if (v147 < *(v37 + 16))
      {
        continue;
      }

      break;
    }

    v16 = a6;
    if (v148)
    {
      if (v700 && v149 == 1 && v154 != v709)
      {
        v188 = *(a10 + 8 * v154);
        v189 = HIDWORD(v188);
        v190 = v188 & 0xFFFFFFFFFFFFLL | ((*(v55 + 16) | HIWORD(v188)) << 48);
        *(a10 + 8 * v154) = v190;
        *(a10 + 8 * v154) = v190 & 0xFFFF0000FFFFFFFFLL | ((v189 & ~*(v55 + 16)) << 32);
        *(v56 + 4 * v154) &= ~4u;
        v191 = *v153;
        v192 = *v153 & 0xFFFFFFFF0000FFFFLL | *v153 & (~*(v55 + 16) << 16);
        *v153 = v192;
        *v153 = v192 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v191) & ~*(v55 + 16)) << 32);
      }

      if (v150)
      {
        v193 = *v153;
        v194 = *v153 & 0xFFFFFFFF0000FFFFLL | *v153 & (~*(v55 + 16) << 16);
        *v153 = v194;
        *v153 = v194 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v193) & ~*(v55 + 16)) << 32);
      }
    }

LABEL_375:
    v36 = a4;
    v43 = a5;
    v52 = v692;
    if (!v689[7])
    {
LABEL_376:
      v215 = v696 + 36 * *(v55 + 20);
      if (*(v215 + 24))
      {
        if (!*(v215 + 28) && *(v37 + 16) >= 1)
        {
          v216 = 0;
          v217 = 0;
          v218 = 0;
          v219 = 0xFFFFFFFFLL;
          while (1)
          {
            v220 = *(v54 + 8 * v216);
            if (v218)
            {
              v221 = *(v55 + 16);
              if ((v221 & WORD1(v220)) == 0 && (WORD2(v220) & v221) == 0)
              {
                goto LABEL_389;
              }
            }

            else
            {
              v221 = *(v55 + 16);
            }

            if ((v221 & v220) == 0)
            {
              if (v217)
              {
                v223 = v219;
                if ((v221 & WORD2(v220)) == 0)
                {
LABEL_402:
                  v218 = 0;
                  v217 = *(a9 + 4 * v216) & 1;
                  goto LABEL_390;
                }
              }

              else
              {
                v223 = v216;
                if ((v221 & WORD2(v220)) == 0)
                {
                  v218 = 0;
                  v217 = 0;
                  goto LABEL_390;
                }
              }

              if ((v221 & WORD1(v220)) != 0)
              {
                *(v54 + 8 * v216) = v220 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v220) & ~v221) << 16);
                *(v54 + 8 * v216) = v220 & 0xFFFF00000000FFFFLL | ((WORD1(v220) & ~v221) << 16) | ((WORD2(v220) & ~*(v55 + 16)) << 32);
                v224 = v54 + 8 * v223;
                v225 = *(v224 + 4);
                v226 = v225 & ~*(v55 + 16);
                *(v224 + 4) = v225 & ~*(v55 + 16);
                if (v216 > v223)
                {
                  v227 = v223;
                  do
                  {
                    v228 = v54 + 8 * v227;
                    v229 = *(v228 + 6);
                    v230 = *(v55 + 16) | v229;
                    *(v228 + 6) = *(v55 + 16) | v229;
                    ++v227;
                  }

                  while (v216 != v227);
                }

                v218 = 0;
                v217 = 0;
                v219 = v223;
                goto LABEL_390;
              }

              v219 = v223;
              goto LABEL_402;
            }

LABEL_389:
            v218 = 1;
LABEL_390:
            if (++v216 >= *(v37 + 16))
            {
              goto LABEL_416;
            }
          }
        }

        goto LABEL_416;
      }

      if (*(v37 + 16) < 1)
      {
        goto LABEL_416;
      }

      v231 = 0;
      v232 = 0;
      while (2)
      {
        v233 = *(v54 + 8 * v231);
        v234 = *(v55 + 16);
        if (v232)
        {
          if ((v234 & WORD1(v233)) != 0)
          {
            v232 = 0;
            v235 = v233 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v233) & ~v234) << 16);
            goto LABEL_412;
          }

LABEL_411:
          v235 = v233 & 0xFFFFFFFFFFFFLL | ((v234 | HIWORD(v233)) << 48);
          v232 = 1;
LABEL_412:
          *(v54 + 8 * v231) = v235;
        }

        else
        {
          if ((*(v55 + 16) & v233) != 0)
          {
            v233 = v233 & 0xFFFFFFFFFFFF0000 | (*(v55 + 16) ^ 0xFFFF) & v233;
            *(v54 + 8 * v231) = v233;
            LOWORD(v234) = *(v55 + 16);
            goto LABEL_411;
          }

          v232 = 0;
        }

        if (++v231 >= *(v37 + 16))
        {
          break;
        }

        continue;
      }
    }

LABEL_416:
    if (*(v55 + 8) && *(v37 + 16) >= 1)
    {
      for (k = 0; k < *(v37 + 16); ++k)
      {
        v237 = *(v54 + 8 * k);
        v238 = *(v55 + 16);
        if ((v238 & HIWORD(v237)) != 0)
        {
          v239 = *(v55 + 8);
          if (v239 != 16)
          {
            v241 = *(v37 + 8);
            v242 = *(v241 + 2 * k);
            v243 = *(v713 + 4 * _lou_charHash(*(v241 + 2 * k)));
            if (v243)
            {
              while (1)
              {
                v244 = (v714 + 8 * v243);
                if (*(v244 + 22) == v242)
                {
                  break;
                }

                v243 = *(v244 + 3);
                if (!v243)
                {
                  goto LABEL_426;
                }
              }
            }

            else
            {
LABEL_426:
              v244 = &unk_28DF8;
              word_28E24 = v242;
            }

            v55 = v718;
            if ((v244[3] & v239) != 0)
            {
              continue;
            }

            v237 = *(v54 + 8 * k);
            v240 = (*(v718 + 16) ^ 0xFFFFFFFFLL) & HIWORD(v237);
            goto LABEL_429;
          }

          if ((*(v16 + 2 * k) & 0x80000000) == 0)
          {
            v240 = HIWORD(v237) & (v238 ^ 0xFFFFFFFFLL);
LABEL_429:
            *(v54 + 8 * k) = v237 & 0xFFFFFFFFFFFFLL | (v240 << 48);
          }
        }
      }
    }

LABEL_431:
    if (++v52 != 16)
    {
      continue;
    }

    break;
  }

  v702 = 0;
  v682 = 0;
  v683 = v53 + 22632;
  v680 = a2 & 1;
  v675 = 0;
  v676 = (v53 + 976);
  v677 = v43 - 4;
  v671 = v53 + 2682;
  v672 = v53 + 2550;
  v673 = v53 + 3198;
  v670 = v43 + 8;
  v679 = 117;
LABEL_433:
  v684 = 1;
  while (2)
  {
    while (1)
    {
      v245 = v734;
      v247 = v722;
      v246 = HIDWORD(v722);
      v248 = v723;
      v249 = v721;
      v719 = v734;
      while (1)
      {
        v250 = v733;
        if (v733 > *(v245 + 16))
        {
          goto LABEL_1217;
        }

        if (v733 < 1)
        {
          v255 = a16;
        }

        else
        {
          v251 = *(v245 + 8) + 2 * v733;
          v252 = *(v251 - 2);
          v253 = *(v713 + 4 * _lou_charHash(*(v251 - 2)));
          if (v253)
          {
            while (1)
            {
              v254 = (v714 + 8 * v253);
              if (*(v254 + 22) == v252)
              {
                break;
              }

              v253 = *(v254 + 3);
              if (!v253)
              {
                goto LABEL_440;
              }
            }
          }

          else
          {
LABEL_440:
            v254 = &unk_28DF8;
            word_28E24 = v252;
          }

          v255 = a16;
          v245 = v719;
          if ((v254[24] & 1) != 0 && v702 != 94)
          {
            v246 = *(v36 + 20);
            v248 = v249;
            v247 = v250;
          }
        }

        if (v250 == *(v245 + 16))
        {
LABEL_1217:
          v722 = __PAIR64__(v246, v247);
LABEL_1218:
          if (v249 <= v250)
          {
            v641 = v734;
            do
            {
              sub_19CA4(0, 1, 1, 0, v249, a1, v250, v641, v36, v43, a10, a13, a14);
              if (a11)
              {
                sub_19CA4(0, 1, 0, 1, v249, a1, v250, v641, v36, v43, a10, a13, a14);
                sub_19CA4(1, 0, 0, 1, v249, a1, v250, v641, v36, v43, a10, a13, a14);
              }

              sub_19CA4(1, 0, 1, 0, v249++, a1, v250, v641, v36, v43, a10, a13, a14);
            }

            while (v250 + 1 != v249);
          }

          goto LABEL_1223;
        }

        if (v250 < a15 || v250 >= v255)
        {
          break;
        }

        __src = 2;
        if (!sub_19A3C(v250, v255, a1, &v733, v245, v36, v43, a10, &v732, a13, &__src, a2))
        {
          LODWORD(v722) = v247;
          goto LABEL_1224;
        }
      }

      v722 = __PAIR64__(v246, v247);
      v723 = v248;
      if (v250 < 2)
      {
        v258 = a6;
        if (v250)
        {
          v256 = *(v245 + 8);
          goto LABEL_455;
        }

        v260 = 32;
      }

      else
      {
        v256 = *(v245 + 8);
        v257 = v256 + 2 * v250;
        v258 = a6;
        if (*(v257 - 2) == -1)
        {
          v259 = (v257 - 4);
          goto LABEL_456;
        }

LABEL_455:
        v259 = (v256 + 2 * v250 - 2);
LABEL_456:
        v260 = *v259;
      }

      v261 = *(v713 + 4 * _lou_charHash(v260));
      if (v261)
      {
        while (1)
        {
          v262 = (v714 + 8 * v261);
          if (*(v262 + 22) == v260)
          {
            break;
          }

          v261 = *(v262 + 3);
          if (!v261)
          {
            goto LABEL_460;
          }
        }
      }

      else
      {
LABEL_460:
        v262 = &unk_28DF8;
        word_28E24 = v260;
      }

      v263 = *(v245 + 16);
      v43 = a5;
      v36 = a4;
      if (v250 >= v263)
      {
        goto LABEL_1218;
      }

      v264 = *(v258 + 2 * v250);
      v669 = v724;
      if (!v724)
      {
        v669 = v264 & 0x1000;
        LODWORD(v724) = v669;
      }

      if ((v264 & 0x800) == 0)
      {
        break;
      }

      if (!v682)
      {
        _lou_logMessage(30000, "warning: Typeform no_translate is deprecated for input.");
      }

      v475 = *(*(v245 + 8) + 2 * v250);
      if ((v475 - 127) < 0xFFA1u)
      {
        goto LABEL_1223;
      }

      LOWORD(__src) = 0x8000;
      v476 = *(v713 + 4 * _lou_charHash(v475));
      if (v476)
      {
        while (1)
        {
          v477 = (v714 + 8 * v476);
          if (v477[22] == v475)
          {
            break;
          }

          v476 = *(v477 + 3);
          if (!v476)
          {
            goto LABEL_878;
          }
        }
      }

      else
      {
LABEL_878:
        v477 = &unk_28DF8;
        word_28E24 = v475;
      }

      v478 = *(v477 + 5);
      if (v478)
      {
        while (1)
        {
          v479 = v714 + 8 * v478;
          if ((*(v479 + 44) - 61) <= 8 && *(v479 + 52) == 1)
          {
            break;
          }

          v478 = *(v479 + 16);
          if (!v478)
          {
            goto LABEL_886;
          }
        }

        LOWORD(__src) = *(v479 + 56);
      }

LABEL_886:
      if (!sub_195E0(&__src, 1, 1, 0, v250, v245, a4, a5, a13, a14))
      {
        goto LABEL_1223;
      }

      v733 = v250 + 1;
      v721 = v250 + 1;
      v684 = 1;
      v682 = 1;
    }

    v690 = v262[3];
    v656 = *a13;
    v658 = *(a4 + 16);
    v665 = *(a4 + 20);
    if (v250 < a15)
    {
      v265 = a15;
    }

    else
    {
      v265 = v263;
    }

    v266 = *(v245 + 8);
    v267 = *(v266 + 2 * v250);
    v268 = *(v713 + 4 * _lou_charHash(*(v266 + 2 * v250)));
    v269 = a1;
    if (v268)
    {
      while (1)
      {
        v270 = (v714 + 8 * v268);
        if (v270[22] == v267)
        {
          break;
        }

        v268 = *(v270 + 3);
        if (!v268)
        {
          goto LABEL_471;
        }
      }
    }

    else
    {
LABEL_471:
      v270 = &unk_28DF8;
      word_28E24 = v267;
    }

    v663 = 0;
    v271 = 0;
    v691 = 0;
    v686 = v265 - v250;
    v272 = v679 == 84;
    if ((v690 & 4) == 0)
    {
      v272 = 1;
    }

    v661 = v272;
    v273 = (v690 & 9) == 0;
    v657 = (v250 + 1);
    v274 = v669 | v680;
    v275 = (a2 & 0x22) != 0 && v250 <= a16;
    v277 = v275 && v250 >= a15;
    v668 = v669 | v680;
    if (v274)
    {
      v278 = 1;
    }

    else
    {
      v278 = (v690 & 2) == 0;
    }

    v664 = v278;
    if (v274)
    {
      v279 = 1;
    }

    else
    {
      v279 = (v690 & 0xB) == 0;
    }

    v662 = v279;
    if (v274)
    {
      v273 = 1;
    }

    v666 = v273;
    if (v274)
    {
      v280 = 1;
    }

    else
    {
      v280 = (v690 & 1) == 0;
    }

    if (v274)
    {
      v277 = 1;
    }

    v659 = v277;
    v660 = v280;
    v667 = (v270 + 10);
    v681 = v250 + 1;
    v281 = a1 + 31616;
    v282 = v719;
LABEL_497:
    v283 = v691;
    if (v691)
    {
      if (v691 == 1)
      {
        if (v686 > 0)
        {
          v686 = 1;
          v284 = v667;
          goto LABEL_503;
        }

        goto LABEL_504;
      }

      v732 = &unk_2DC70;
      LODWORD(v291) = 117;
      dword_2DC9C = 117;
      v710 = 1;
      word_2DCA2 = 1;
      word_2DCA6 = *(*(v282 + 8) + 2 * v250);
      word_2DCA4 = 0;
LABEL_917:
      v43 = a5;
      v36 = a4;
      v367 = a14;
      goto LABEL_918;
    }

    if (v686 >= 2)
    {
      v285 = _lou_stringHash((*(v282 + 8) + 2 * v250), 1, v269);
      v281 = a1 + 31616;
      v284 = (v683 + 4 * v285);
LABEL_503:
      v271 = *v284;
    }

LABEL_504:
    if (!v271)
    {
      goto LABEL_871;
    }

    while (2)
    {
      v732 = (v281 + 8 * v271);
      v703 = *(v732 + 11);
      v697 = v732;
      v286 = v732[25];
      v710 = v286;
      if (v283 != 1)
      {
        if (v732[25])
        {
          v293 = v686 < v286;
        }

        else
        {
          v293 = 1;
        }

        if (v293)
        {
LABEL_519:
          v269 = a1;
          goto LABEL_520;
        }

        if (v286 >= 1)
        {
          v295 = 0;
          LODWORD(v296) = 0;
          v297 = (v732 + 27);
          v695 = v250 + v286;
          v298 = v250;
          while (1)
          {
            v299 = *(*(v282 + 8) + 2 * v298);
            if (v299 == 0xFFFF)
            {
              break;
            }

            v300 = *(v713 + 4 * _lou_charHash(v299));
            if (v300)
            {
              while (1)
              {
                v301 = (v714 + 8 * v300);
                if (*(v301 + 22) == v299)
                {
                  break;
                }

                v300 = *(v301 + 3);
                if (!v300)
                {
                  goto LABEL_528;
                }
              }
            }

            else
            {
LABEL_528:
              v301 = &unk_28DF8;
              word_28E24 = v299;
            }

            if (v298 == v250)
            {
              v296 = v301[3];
            }

            v302 = v296;
            v303 = *&v297[2 * v295];
            v304 = *(v713 + 4 * _lou_charHash(*&v297[2 * v295]));
            if (v304)
            {
              while (1)
              {
                v305 = (v714 + 8 * v304);
                if (v305[22] == v303)
                {
                  break;
                }

                v304 = *(v305 + 3);
                if (!v304)
                {
                  goto LABEL_534;
                }
              }
            }

            else
            {
LABEL_534:
              v305 = &unk_28DF8;
              word_28E24 = v303;
            }

            v306 = sub_105E0(a1, v301);
            if (v306 != sub_105E0(a1, v305))
            {
              v269 = a1;
              v281 = a1 + 31616;
              goto LABEL_611;
            }

            v307 = *(a6 + 2 * v250);
            v286 = v710;
            v282 = v719;
            if ((v307 & 0x80000000) == 0 && (*(a6 + 2 * v298) | v307) != v307)
            {
              v269 = a1;
              v281 = a1 + 31616;
              goto LABEL_520;
            }

            v296 = v301[3];
            v281 = a1 + 31616;
            if (v298 != v657 && v296 != 2 && (v302 & v296 & 2) != 0 && ((v296 ^ v302) & 0x30) != 0)
            {
              goto LABEL_519;
            }

            ++v295;
            if (++v298 >= v695)
            {
              goto LABEL_506;
            }
          }

          if (v286 == 1)
          {
            v282 = v719;
            if (v250 != v298)
            {
              goto LABEL_519;
            }

            break;
          }

          v269 = a1;
LABEL_611:
          v282 = v719;
LABEL_520:
          v287 = v697;
LABEL_868:
          v271 = *(v287 + 16);
          v283 = v691;
          if (v271)
          {
            continue;
          }

          v271 = 0;
LABEL_871:
          v691 = v283 + 1;
          goto LABEL_497;
        }
      }

      break;
    }

LABEL_506:
    v287 = v697;
    if ((*(v697 + 35) & 2) != 0 && *(a10 + 8 * v250) || (v288 = v250 + v286, (*(v697 + 27) & 2) != 0) && *(a10 + 8 * v288))
    {
      v269 = a1;
      v283 = v691;
      goto LABEL_871;
    }

    v289 = *(v282 + 16);
    v269 = a1;
    if (v288 + 2 < v289 && (v290 = *(v282 + 8) + 2 * v250, *(v290 + 2) == -1))
    {
      v292 = (v290 + 4);
      v291 = v703;
LABEL_545:
      v294 = *v292;
    }

    else
    {
      v291 = v703;
      if (v288 < v289)
      {
        v292 = (*(v282 + 8) + 2 * v288);
        goto LABEL_545;
      }

      v294 = 32;
    }

    v308 = *(v713 + 4 * _lou_charHash(v294));
    if (v308)
    {
      while (1)
      {
        v309 = (v714 + 8 * v308);
        if (*(v309 + 22) == v294)
        {
          break;
        }

        v308 = *(v309 + 3);
        if (!v308)
        {
          goto LABEL_549;
        }
      }
    }

    else
    {
LABEL_549:
      v309 = &unk_28DF8;
      word_28E24 = v294;
    }

    v310 = *(v697 + 24);
    v311 = v310 & 0xFFFFFFFFFDFFFFFFLL;
    v312 = v310 & v690;
    if (v311)
    {
      v313 = v312 == 0;
    }

    else
    {
      v313 = 0;
    }

    if (v313 || ((v314 = v309[3], v315 = *(v697 + 32), v316 = v315 & 0xFFFFFFFFFDFFFFFFLL, v317 = v315 & v314, v316) ? (v318 = v317 == 0) : (v318 = 0), v318))
    {
LABEL_867:
      v281 = a1 + 31616;
      goto LABEL_868;
    }

    v281 = a1 + 31616;
    if (*(v697 + 48))
    {
      v319 = v250;
      if ((v250 & 0x80000000) == 0)
      {
        v320 = v250;
        while (1)
        {
          v321 = *(v282 + 8);
          v322 = *(v321 + 2 * v320);
          v323 = *(v713 + 4 * _lou_charHash(*(v321 + 2 * v320)));
          if (v323)
          {
            while (1)
            {
              v324 = (v714 + 8 * v323);
              if (*(v324 + 22) == v322)
              {
                break;
              }

              v323 = *(v324 + 3);
              if (!v323)
              {
                goto LABEL_564;
              }
            }
          }

          else
          {
LABEL_564:
            v324 = &unk_28DF8;
            word_28E24 = v322;
          }

          v282 = v719;
          if ((v324[24] & 2) == 0)
          {
            break;
          }

          v275 = v320-- <= 0;
          if (v275)
          {
            v319 = -1;
            goto LABEL_574;
          }
        }

        v319 = v320 + 1;
      }

LABEL_574:
      LODWORD(v325) = *(v282 + 16);
      LODWORD(v326) = v250;
      if (v325 > v250)
      {
        v326 = v250;
        while (1)
        {
          v327 = *(v282 + 8);
          v328 = *(v327 + 2 * v326);
          v329 = *(v713 + 4 * _lou_charHash(*(v327 + 2 * v326)));
          if (v329)
          {
            while (1)
            {
              v330 = (v714 + 8 * v329);
              if (*(v330 + 22) == v328)
              {
                break;
              }

              v329 = *(v330 + 3);
              if (!v329)
              {
                goto LABEL_579;
              }
            }
          }

          else
          {
LABEL_579:
            v330 = &unk_28DF8;
            word_28E24 = v328;
          }

          v282 = v719;
          if ((v330[24] & 2) == 0)
          {
            break;
          }

          ++v326;
          v325 = *(v719 + 16);
          if (v326 >= v325)
          {
            goto LABEL_584;
          }
        }

        LODWORD(v326) = v326 - 1;
        LODWORD(v325) = *(v719 + 16);
      }

LABEL_584:
      v331 = v282;
      v332 = v319 & ~(v319 >> 31);
      v333 = v326 - v332 - (v326 == v325);
      v334 = malloc_type_calloc(v333 + 2, 1uLL, 0x100004077774924uLL);
      v335 = *(v331 + 8) + 2 * v332;
      v269 = a1;
      v336 = sub_17768(v335, v333 + 1, v334, a1);
      v287 = v697;
      v291 = v703;
      if (v336)
      {
        v337 = v681 - v332;
        do
        {
          if (v337 >= (v250 - v332 + v286))
          {
            goto LABEL_590;
          }

          v338 = v334[v337++];
        }

        while ((v338 & 1) == 0);
        free(v334);
        v281 = a1 + 31616;
LABEL_589:
        v282 = v719;
        goto LABEL_868;
      }

LABEL_590:
      free(v334);
      v281 = a1 + 31616;
      v282 = v719;
    }

    switch(v291)
    {
      case '=':
      case '>':
      case '?':
      case '@':
      case 'A':
      case 'B':
      case 'C':
      case 'D':
      case 'G':
      case 'I':
      case 'T':
      case 'X':
      case 'Y':
      case 'n':
        goto LABEL_889;
      case 'J':
        if (!v684)
        {
          goto LABEL_868;
        }

        LODWORD(v291) = 74;
        v389 = sub_17C38(v269, v250, v282, 74, v287, &v731, &v730, &v729, &v727, &v726, &v725);
        goto LABEL_693;
      case 'O':
        LODWORD(v291) = 79;
        if ((v659 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'P':
      case 'Q':
        if (v668)
        {
          goto LABEL_868;
        }

        if (v250 >= 1)
        {
          v339 = 1;
          v340 = (v250 - 1);
          v341 = v677;
          do
          {
            if (v339 + v288 > *(v282 + 16))
            {
              goto LABEL_608;
            }

            v342 = *(v282 + 8);
            v343 = *(v342 + 2 * v340);
            v344 = _lou_charHash(*(v342 + 2 * v340));
            v281 = a1 + 31616;
            v345 = *(v713 + 4 * v344);
            if (v345)
            {
              while (1)
              {
                v346 = (v714 + 8 * v345);
                if (*(v346 + 22) == v343)
                {
                  break;
                }

                v345 = *(v346 + 3);
                if (!v345)
                {
                  goto LABEL_599;
                }
              }
            }

            else
            {
LABEL_599:
              v346 = &unk_28DF8;
              word_28E24 = v343;
            }

            if ((v346[24] & 2) == 0)
            {
              goto LABEL_608;
            }

            v347 = *(v719 + 8) + 2 * (v339 + v288);
            v348 = *(v347 - 2);
            v349 = _lou_charHash(*(v347 - 2));
            v281 = a1 + 31616;
            v350 = *(v713 + 4 * v349);
            if (v350)
            {
              while (1)
              {
                v351 = (v714 + 8 * v350);
                if (*(v351 + 22) == v348)
                {
                  break;
                }

                v350 = *(v351 + 3);
                if (!v350)
                {
                  goto LABEL_604;
                }
              }
            }

            else
            {
LABEL_604:
              v351 = &unk_28DF8;
              word_28E24 = v348;
            }

            v282 = v719;
            if ((v351[24] & 2) == 0)
            {
              goto LABEL_608;
            }

            ++v339;
            --v340;
          }

          while (v339 != v657);
          LODWORD(v339) = v250 + 1;
LABEL_608:
          v352 = v339 - 1;
          v269 = a1;
          v287 = v697;
          v291 = v703;
          goto LABEL_820;
        }

        v352 = 0;
        v341 = v677;
LABEL_820:
        while (2)
        {
          if (v352 < 1)
          {
            goto LABEL_589;
          }

          v449 = v291;
          v450 = v250 - v352;
          v451 = sub_17B14(*(v719 + 8) + 2 * v450, *(v719 + 8) + 2 * v288, v352, v269);
          if (!v451)
          {
            --v352;
LABEL_832:
            v291 = v449;
LABEL_833:
            v281 = a1 + 31616;
            if (v451)
            {
              goto LABEL_589;
            }

            continue;
          }

          break;
        }

        v452 = v665;
        while (v452 > 0)
        {
          v453 = *(v341 + 4 * v452);
          if (v453 == v450)
          {
            break;
          }

          --v452;
          if (v453 < v450)
          {
            goto LABEL_832;
          }
        }

        v454 = v681 - v352;
        v291 = v449;
        while (v454 < v288)
        {
          if (*(a10 + 8 * v454++))
          {
            goto LABEL_833;
          }
        }

        v456 = v288 + 1;
        while (v456 < v352 + v288)
        {
          if (*(a10 + 8 * v456++))
          {
            goto LABEL_833;
          }
        }

        if (v250 <= v352)
        {
          v463 = 0;
          v281 = a1 + 31616;
          v286 = v710;
        }

        else
        {
          v458 = *(v719 + 8);
          v459 = *(v458 + 2 * (v250 + ~v352));
          v460 = _lou_charHash(*(v458 + 2 * (v250 + ~v352)));
          v281 = a1 + 31616;
          v461 = *(v713 + 4 * v460);
          v286 = v710;
          if (v461)
          {
            while (1)
            {
              v462 = (v714 + 8 * v461);
              if (*(v462 + 22) == v459)
              {
                break;
              }

              v461 = v462[3];
              if (!v461)
              {
                goto LABEL_843;
              }
            }
          }

          else
          {
LABEL_843:
            v462 = &unk_28DF8;
            word_28E24 = v459;
          }

          v463 = (v462[6] >> 1) & 1;
        }

        v282 = v719;
        v663 = v352;
        if (v463 != (v291 == 81))
        {
          goto LABEL_868;
        }

        v663 = v352;
        goto LABEL_889;
      case 'S':
      case 'V':
        v353 = v250 + 1;
        while (v353 < v288)
        {
          if (*(a10 + 8 * v353++))
          {
            v355 = 1;
            goto LABEL_617;
          }
        }

        v355 = 0;
LABEL_617:
        v281 = a1 + 31616;
        LODWORD(v291) = 83;
        if (!(v680 | v355 | v669))
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'W':
        LODWORD(v291) = 87;
        if (!v668)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'Z':
        if (v668)
        {
          goto LABEL_868;
        }

        if ((v690 & 9) == 0 && !sub_1A91C(v269, v250, v282, v690) || (v314 & 2) != 0 || !((v679 == 90) | v314 & 1) || (LODWORD(v291) = 90, !sub_1A9D0(v269, v250, a2, v282, 90, v286, v656)))
        {
          LODWORD(v291) = 83;
        }

        goto LABEL_917;
      case '[':
        if (v668)
        {
          goto LABEL_868;
        }

        v418 = v250 + 1;
        while (1)
        {
          v281 = a1 + 31616;
          if (v418 >= v288)
          {
            break;
          }

          if (*(a10 + 8 * v418++))
          {
            goto LABEL_867;
          }
        }

LABEL_762:
        if (!v269[236])
        {
          if ((v690 & 9) != 0 && (v314 & 9) != 0)
          {
            goto LABEL_889;
          }

          goto LABEL_868;
        }

        v420 = v250;
        do
        {
          if (v420 < 1)
          {
            goto LABEL_775;
          }

          --v420;
          v421 = *(v282 + 8);
          v422 = *(v421 + 2 * v420);
          v423 = *(v713 + 4 * _lou_charHash(*(v421 + 2 * v420)));
          if (v423)
          {
            while (1)
            {
              v424 = (v714 + 8 * v423);
              if (*(v424 + 22) == v422)
              {
                break;
              }

              v423 = *(v424 + 3);
              if (!v423)
              {
                goto LABEL_768;
              }
            }
          }

          else
          {
LABEL_768:
            v424 = &unk_28DF8;
            word_28E24 = v422;
          }

          v282 = v719;
        }

        while ((v424[25] & 0x40) != 0);
        v425 = *(v719 + 8);
        v426 = *(v425 + 2 * v420);
        v427 = *(v713 + 4 * _lou_charHash(*(v425 + 2 * v420)));
        if (v427)
        {
          while (1)
          {
            v428 = (v714 + 8 * v427);
            if (v428[22] == v426)
            {
              break;
            }

            v427 = *(v428 + 3);
            if (!v427)
            {
              goto LABEL_773;
            }
          }
        }

        else
        {
LABEL_773:
          v428 = &unk_28DF8;
          word_28E24 = v426;
        }

        v282 = v719;
        if ((v428[12] & 0x2001) == 0)
        {
          v281 = a1 + 31616;
          goto LABEL_868;
        }

LABEL_775:
        v429 = v250 + *(v287 + 50);
        while (2)
        {
          v430 = *(v282 + 16);
          if (v429 >= v430)
          {
            goto LABEL_889;
          }

          v431 = v269[424];
          if (v431)
          {
            v432 = v429 <= v430;
          }

          else
          {
            v432 = 0;
          }

          if (!v432 || v431 < 1)
          {
LABEL_785:
            v441 = v429;
            goto LABEL_786;
          }

          v438 = 0;
          v439 = 1;
          v440 = v676;
          v441 = v429;
          while (2)
          {
            v443 = *v440++;
            v442 = v443;
            if (!v438)
            {
              if (v442)
              {
LABEL_797:
                if (*(*(v282 + 8) + 2 * v441) == v442)
                {
                  v438 = 1;
                }

                else
                {
                  v441 = v429 - 1;
                  v438 = -1;
                }
              }

              else
              {
                v438 = 0;
              }

LABEL_804:
              if (v441 >= v430)
              {
                goto LABEL_785;
              }

              ++v441;
              v639 = v439++ >= v431;
              if (v639)
              {
                goto LABEL_785;
              }

              continue;
            }

            break;
          }

          if (v438 != 1)
          {
            if (v442)
            {
              v438 = -1;
            }

            else
            {
              v441 = v429 - 1;
              v438 = 0;
            }

            goto LABEL_804;
          }

          if (v442)
          {
            goto LABEL_797;
          }

          if (v441 >= v430)
          {
            goto LABEL_889;
          }

LABEL_786:
          v434 = *(v282 + 8);
          v435 = *(v434 + 2 * v441);
          v436 = *(v713 + 4 * _lou_charHash(*(v434 + 2 * v441)));
          if (v436)
          {
            while (1)
            {
              v437 = (v714 + 8 * v436);
              if (*(v437 + 22) == v435)
              {
                break;
              }

              v436 = *(v437 + 3);
              if (!v436)
              {
                goto LABEL_789;
              }
            }
          }

          else
          {
LABEL_789:
            v437 = &unk_28DF8;
            word_28E24 = v435;
          }

          v282 = v719;
          if ((v437[25] & 0x80) != 0)
          {
            v429 = v441 + 1;
            continue;
          }

          break;
        }

        v444 = *(v719 + 8);
        v445 = *(v444 + 2 * v441);
        v446 = _lou_charHash(*(v444 + 2 * v441));
        v281 = a1 + 31616;
        v447 = *(v713 + 4 * v446);
        if (v447)
        {
          while (1)
          {
            v448 = (v714 + 8 * v447);
            if (v448[22] == v445)
            {
              break;
            }

            v447 = *(v448 + 3);
            if (!v447)
            {
              goto LABEL_816;
            }
          }
        }

        else
        {
LABEL_816:
          v448 = &unk_28DF8;
          word_28E24 = v445;
        }

        v282 = v719;
        if ((v448[12] & 0x2001) == 0)
        {
          goto LABEL_868;
        }

LABEL_889:
        v710 = v286;
        if ((v291 & 0xFFFFFFFE) != 0x58)
        {
          goto LABEL_917;
        }

        v480 = v291;
        v481 = v734;
        v482 = *(v734 + 1);
        LODWORD(v483) = v733;
        v484 = *(v482 + 2 * v733);
        v485 = *(v713 + 4 * _lou_charHash(*(v482 + 2 * v733)));
        v43 = a5;
        v36 = a4;
        v702 = v480;
        if (v485)
        {
          while (1)
          {
            v486 = (v714 + 8 * v485);
            if (*(v486 + 22) == v484)
            {
              break;
            }

            v485 = *(v486 + 3);
            if (!v485)
            {
              goto LABEL_893;
            }
          }
        }

        else
        {
LABEL_893:
          v486 = &unk_28DF8;
          word_28E24 = v484;
        }

        if ((v486[24] & 1) == 0)
        {
          v487 = HIDWORD(v722);
          if (HIDWORD(v722))
          {
            v488 = v722;
          }

          else
          {
            v488 = 0;
          }

          if (v483 < *(v481 + 16))
          {
            v483 = v483;
            do
            {
              v489 = *(v481 + 8);
              v490 = *(v489 + 2 * v483);
              v491 = *(v713 + 4 * _lou_charHash(*(v489 + 2 * v483)));
              if (v491)
              {
                while (1)
                {
                  v492 = (v714 + 8 * v491);
                  if (*(v492 + 22) == v490)
                  {
                    break;
                  }

                  v491 = *(v492 + 3);
                  if (!v491)
                  {
                    goto LABEL_903;
                  }
                }
              }

              else
              {
LABEL_903:
                v492 = &unk_28DF8;
                word_28E24 = v490;
              }

              if (v492[24])
              {
                break;
              }

              ++v483;
            }

            while (v483 < *(v481 + 16));
          }

          v733 = v488;
          *(a4 + 20) = v487;
          v721 = v723;
          if (!sub_19A3C(v488, v483, a1, &v733, v481, a4, a5, a10, &v732, a13, a14, a2))
          {
            goto LABEL_1223;
          }
        }

        continue;
      case '\\':
        if (!v668)
        {
          LODWORD(v291) = 92;
          if (((v690 | v314) & 2) != 0)
          {
            goto LABEL_917;
          }
        }

        goto LABEL_868;
      case ']':
        v390 = v666;
        if ((v314 & 1) == 0)
        {
          v390 = 1;
        }

        if ((v390 & 1) != 0 || v665 + *(v287 + 52) >= v658)
        {
          goto LABEL_868;
        }

        v391 = v288;
        do
        {
          if (++v391 >= *(v282 + 16))
          {
            goto LABEL_868;
          }

          v392 = *(v282 + 8);
          v393 = *(v392 + 2 * v391);
          v394 = _lou_charHash(*(v392 + 2 * v391));
          v281 = a1 + 31616;
          v395 = *(v713 + 4 * v394);
          if (v395)
          {
            while (1)
            {
              v396 = (v714 + 8 * v395);
              if (*(v396 + 22) == v393)
              {
                break;
              }

              v395 = *(v396 + 3);
              if (!v395)
              {
                goto LABEL_708;
              }
            }
          }

          else
          {
LABEL_708:
            v396 = &unk_28DF8;
            word_28E24 = v393;
          }

          v282 = v719;
        }

        while ((v396[24] & 1) != 0);
        v397 = *(v719 + 8);
        v398 = *(v397 + 2 * v391);
        v399 = _lou_charHash(*(v397 + 2 * v391));
        v281 = a1 + 31616;
        v400 = *(v713 + 4 * v399);
        if (v400)
        {
          while (1)
          {
            v401 = (v714 + 8 * v400);
            if (*(v401 + 22) == v398)
            {
              break;
            }

            v400 = *(v401 + 3);
            if (!v400)
            {
              goto LABEL_713;
            }
          }
        }

        else
        {
LABEL_713:
          v401 = &unk_28DF8;
          word_28E24 = v398;
        }

        LODWORD(v291) = 93;
        v282 = v719;
        if ((v401[24] & 4) != 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case '^':
        v378 = v666;
        if ((v314 & 1) == 0)
        {
          v378 = 1;
        }

        if (v378)
        {
          goto LABEL_868;
        }

        v404 = v288;
        do
        {
          if (++v404 >= *(v282 + 16))
          {
            goto LABEL_868;
          }

          v405 = *(v282 + 8);
          v406 = *(v405 + 2 * v404);
          v407 = _lou_charHash(*(v405 + 2 * v404));
          v281 = a1 + 31616;
          v408 = *(v713 + 4 * v407);
          if (v408)
          {
            while (1)
            {
              v409 = (v714 + 8 * v408);
              if (*(v409 + 22) == v406)
              {
                break;
              }

              v408 = *(v409 + 3);
              if (!v408)
              {
                goto LABEL_736;
              }
            }
          }

          else
          {
LABEL_736:
            v409 = &unk_28DF8;
            word_28E24 = v406;
          }

          v410 = v409[3];
          v282 = v719;
        }

        while ((v410 & 1) != 0);
        if ((v410 & 0x102) == 0)
        {
          goto LABEL_868;
        }

        LODWORD(v291) = 94;
        v389 = sub_1A9D0(v269, v250, a2, v719, 94, v286, v656);
        goto LABEL_693;
      case '_':
        if (!v660)
        {
          LODWORD(v291) = 95;
          if (v679 != 94 && (v314 & 1) != 0)
          {
            goto LABEL_917;
          }
        }

        goto LABEL_868;
        goto LABEL_762;
      case 'a':
        v379 = v666;
        if ((v314 & 0xB) == 0)
        {
          v379 = 1;
        }

        LODWORD(v291) = 97;
        if ((v379 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'b':
        v380 = v662;
        if ((v314 & 9) == 0)
        {
          v380 = 1;
        }

        LODWORD(v291) = 98;
        if ((v380 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'c':
        v388 = v666;
        if ((v314 & 2) == 0)
        {
          v388 = 1;
        }

        LODWORD(v291) = 99;
        if ((v388 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'd':
        v381 = v662;
        if ((v314 & 2) == 0)
        {
          v381 = 1;
        }

        LODWORD(v291) = 100;
        if ((v381 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'e':
        v377 = v664;
        if ((v314 & 2) == 0)
        {
          v377 = 1;
        }

        LODWORD(v291) = 101;
        if ((v377 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'f':
        v387 = v664;
        if ((v314 & 0xB) == 0)
        {
          v387 = 1;
        }

        LODWORD(v291) = 102;
        if ((v387 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'g':
        v403 = v664;
        if ((v314 & 9) == 0)
        {
          v403 = 1;
        }

        LODWORD(v291) = 103;
        if ((v403 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'h':
        v356 = *(v282 + 8);
        v357 = *(v356 + 2 * v250);
        v358 = _lou_charHash(*(v356 + 2 * v250));
        v281 = a1 + 31616;
        v359 = *(v713 + 4 * v358);
        if (!v359)
        {
          goto LABEL_622;
        }

        while (1)
        {
          v360 = (v714 + 8 * v359);
          if (*(v360 + 22) == v357)
          {
            break;
          }

          v359 = *(v360 + 3);
          if (!v359)
          {
LABEL_622:
            v360 = &unk_28DF8;
            word_28E24 = v357;
            break;
          }
        }

        v282 = v719;
        if ((v360[24] & 8) == 0)
        {
          goto LABEL_868;
        }

        if (v250 >= 1)
        {
          v361 = *(v719 + 8) + 2 * v250;
          v362 = *(v361 - 2);
          v363 = _lou_charHash(*(v361 - 2));
          v281 = a1 + 31616;
          v364 = *(v713 + 4 * v363);
          if (v364)
          {
            while (1)
            {
              v365 = (v714 + 8 * v364);
              if (*(v365 + 22) == v362)
              {
                break;
              }

              v364 = *(v365 + 3);
              if (!v364)
              {
                goto LABEL_628;
              }
            }
          }

          else
          {
LABEL_628:
            v365 = &unk_28DF8;
            word_28E24 = v362;
          }

          v282 = v719;
          if ((v365[24] & 2) != 0)
          {
            goto LABEL_868;
          }
        }

        if (v288 >= *(v282 + 16))
        {
          goto LABEL_868;
        }

        v366 = v250 + v286;
        v367 = a14;
        while (1)
        {
          v368 = *(v282 + 8);
          v369 = *(v368 + 2 * v366);
          v370 = *(v713 + 4 * _lou_charHash(*(v368 + 2 * v366)));
          if (v370)
          {
            while (1)
            {
              v371 = (v714 + 8 * v370);
              if (*(v371 + 22) == v369)
              {
                break;
              }

              v370 = *(v371 + 3);
              if (!v370)
              {
                goto LABEL_635;
              }
            }
          }

          else
          {
LABEL_635:
            v371 = &unk_28DF8;
            word_28E24 = v369;
          }

          v43 = a5;
          v36 = a4;
          if ((v371[24] & 6) != 0)
          {
            break;
          }

          v372 = *(v719 + 8);
          v373 = *(v372 + 2 * v366);
          v374 = _lou_charHash(*(v372 + 2 * v366));
          v281 = a1 + 31616;
          v375 = *(v713 + 4 * v374);
          if (v375)
          {
            while (1)
            {
              v376 = (v714 + 8 * v375);
              if (*(v376 + 22) == v373)
              {
                break;
              }

              v375 = *(v376 + 3);
              if (!v375)
              {
                goto LABEL_641;
              }
            }
          }

          else
          {
LABEL_641:
            v376 = &unk_28DF8;
            word_28E24 = v373;
          }

          v282 = v719;
          if ((v376[24] & 1) == 0 && ++v366 < *(v719 + 16))
          {
            continue;
          }

          goto LABEL_868;
        }

        LODWORD(v291) = 104;
        goto LABEL_918;
      case 'i':
        v382 = *(v282 + 8);
        v383 = *(v382 + 2 * v250);
        v384 = _lou_charHash(*(v382 + 2 * v250));
        v281 = a1 + 31616;
        v385 = *(v713 + 4 * v384);
        if (!v385)
        {
          goto LABEL_678;
        }

        while (1)
        {
          v386 = (v714 + 8 * v385);
          if (*(v386 + 22) == v383)
          {
            break;
          }

          v385 = *(v386 + 3);
          if (!v385)
          {
LABEL_678:
            v386 = &unk_28DF8;
            word_28E24 = v383;
            break;
          }
        }

        v282 = v719;
        if ((v386[24] & 8) == 0)
        {
          goto LABEL_868;
        }

        v367 = a14;
        if (*(v719 + 16) - 1 <= v250)
        {
          if ((v250 & 0x80000000) == 0)
          {
            goto LABEL_847;
          }

          goto LABEL_868;
        }

        v411 = *(v719 + 8) + 2 * v250;
        v412 = *(v411 + 2);
        v413 = _lou_charHash(*(v411 + 2));
        v281 = a1 + 31616;
        v414 = *(v713 + 4 * v413);
        if (v414)
        {
          while (1)
          {
            v415 = (v714 + 8 * v414);
            if (*(v415 + 22) == v412)
            {
              break;
            }

            v414 = *(v415 + 3);
            if (!v414)
            {
              goto LABEL_747;
            }
          }
        }

        else
        {
LABEL_747:
          v415 = &unk_28DF8;
          word_28E24 = v412;
        }

        v282 = v719;
        if ((v250 & 0x80000000) != 0 || (v415[3] & 2) != 0)
        {
          goto LABEL_868;
        }

LABEL_847:
        v464 = v250;
        while (1)
        {
          v465 = *(v282 + 8);
          v466 = *(v465 + 2 * v464);
          v467 = *(v713 + 4 * _lou_charHash(*(v465 + 2 * v464)));
          if (v467)
          {
            while (1)
            {
              v468 = (v714 + 8 * v467);
              if (*(v468 + 22) == v466)
              {
                break;
              }

              v467 = *(v468 + 3);
              if (!v467)
              {
                goto LABEL_851;
              }
            }
          }

          else
          {
LABEL_851:
            v468 = &unk_28DF8;
            word_28E24 = v466;
          }

          v43 = a5;
          v36 = a4;
          if ((v468[24] & 6) != 0)
          {
            break;
          }

          v469 = *(v719 + 8);
          v470 = *(v469 + 2 * v464);
          v471 = _lou_charHash(*(v469 + 2 * v464));
          v281 = a1 + 31616;
          v472 = *(v713 + 4 * v471);
          if (v472)
          {
            while (1)
            {
              v473 = (v714 + 8 * v472);
              if (*(v473 + 22) == v470)
              {
                break;
              }

              v472 = *(v473 + 3);
              if (!v472)
              {
                goto LABEL_857;
              }
            }
          }

          else
          {
LABEL_857:
            v473 = &unk_28DF8;
            word_28E24 = v470;
          }

          v282 = v719;
          if (v464 >= 1)
          {
            --v464;
            if ((v473[3] & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_868;
        }

        LODWORD(v291) = 105;
LABEL_918:
        v704 = v291;
        LODWORD(v493) = v733;
        if (v663)
        {
          LODWORD(v493) = v733 + v710;
          v733 += v710;
        }

        v494 = v721;
        if (v721 <= v493)
        {
          v495 = v734;
          do
          {
            sub_19CA4(0, 1, 1, 0, v494, v269, v493, v495, v36, v43, a10, a13, v367);
            if (a11)
            {
              sub_19CA4(0, 1, 0, 1, v494, v269, v493, v495, v36, v43, a10, a13, v367);
              sub_19CA4(1, 0, 0, 1, v494, v269, v493, v495, v36, v43, a10, a13, v367);
            }

            if (v494 < v493)
            {
              sub_19CA4(1, 0, 1, 0, v494, v269, v493, v495, v36, v43, a10, a13, v367);
            }

            ++v494;
          }

          while (v493 + 1 != v494);
        }

        v496 = v493 + 1;
        v721 = v493 + 1;
        if (v704 != 96)
        {
          v498 = v734;
          v503 = v269[240];
          if (v503 && v734[4] > v493)
          {
            v504 = *(v734 + 1);
            v505 = *(v504 + 2 * v493);
            v506 = *(v713 + 4 * _lou_charHash(*(v504 + 2 * v493)));
            if (v506)
            {
              while (1)
              {
                v507 = (v714 + 8 * v506);
                if (*(v507 + 22) == v505)
                {
                  break;
                }

                v506 = *(v507 + 3);
                if (!v506)
                {
                  goto LABEL_939;
                }
              }
            }

            else
            {
LABEL_939:
              v507 = &unk_28DF8;
              word_28E24 = v505;
            }

            if ((v690 & 2) != 0 || (v507[3] & 2) == 0)
            {
              v269 = a1;
            }

            else
            {
              v269 = a1;
              if (v498[4] <= v496)
              {
                goto LABEL_1249;
              }

              v508 = *(v498 + 1);
              v509 = *(v508 + 2 * v496);
              v510 = *(v713 + 4 * _lou_charHash(*(v508 + 2 * v496)));
              if (v510)
              {
                while (1)
                {
                  v511 = (v714 + 8 * v510);
                  if (*(v511 + 22) == v509)
                  {
                    break;
                  }

                  v510 = *(v511 + 3);
                  if (!v510)
                  {
                    goto LABEL_946;
                  }
                }
              }

              else
              {
LABEL_946:
                v511 = &unk_28DF8;
                word_28E24 = v509;
              }

              if ((v690 & 4) != 0 || (v511[3] & 2) == 0)
              {
LABEL_1249:
                v512 = *(v498 + 1);
                if (v493 < 1)
                {
                  goto LABEL_956;
                }

                v513 = *(a1 + 2676);
                if (v513 < 1)
                {
                  goto LABEL_956;
                }

                v514 = *(v512 + 2 * v493 - 2);
                if (*(a1 + 2548) != v514)
                {
                  v515 = 0;
                  while (v513 - 1 != v515)
                  {
                    v516 = *(v672 + 2 * v515++);
                    if (v516 == v514)
                    {
                      if (v515 < v513)
                      {
                        goto LABEL_972;
                      }

                      break;
                    }
                  }

LABEL_956:
                  v517 = *(a1 + 3192);
                  v367 = a14;
                  if (v517 >= 1)
                  {
                    v518 = *(v512 + 2 * v493);
                    if (*(a1 + 2680) != v518)
                    {
                      v519 = 0;
                      while (v517 - 1 != v519)
                      {
                        v520 = *(v671 + 2 * v519++);
                        if (v520 == v518)
                        {
                          if (v519 < v517)
                          {
                            goto LABEL_973;
                          }

                          goto LABEL_962;
                        }
                      }

                      goto LABEL_962;
                    }

LABEL_973:
                    v500 = a13;
                    v502 = a10;
                    goto LABEL_974;
                  }

LABEL_962:
                  if (v496 < v498[4])
                  {
                    v521 = *(a1 + 3324);
                    if (v521 >= 1)
                    {
                      v522 = *(v512 + 2 * v496);
                      if (*(a1 + 3196) == v522)
                      {
                        goto LABEL_973;
                      }

                      v523 = 0;
                      while (v521 - 1 != v523)
                      {
                        v524 = *(v673 + 2 * v523++);
                        if (v524 == v522)
                        {
                          if (v523 < v521)
                          {
                            goto LABEL_973;
                          }

                          break;
                        }
                      }
                    }
                  }

                  v525 = v714 + 8 * v503;
                  v500 = a13;
                  v501 = sub_195E0((v525 + 54), 0, *(v525 + 52), 0, v493, v498, v36, v43, a13, a14);
                  goto LABEL_932;
                }
              }
            }
          }

LABEL_972:
          v367 = a14;
          goto LABEL_973;
        }

        v497 = v269[242];
        v498 = v734;
        if (v497)
        {
          sub_195E0((v714 + 8 * v497 + 54), 0, *(v714 + 8 * v497 + 52), 0, v493, v734, v36, v43, a13, v367);
        }

        v499 = v269[240];
        if (!v499)
        {
          v269 = a1;
          goto LABEL_973;
        }

        v500 = a13;
        v501 = sub_195E0((v714 + 8 * v499 + 54), 0, *(v714 + 8 * v499 + 52), 0, v493, v498, v36, v43, a13, v367);
        v269 = a1;
LABEL_932:
        v502 = a10;
        if (!v501)
        {
          goto LABEL_1223;
        }

LABEL_974:
        sub_19CA4(1, 0, 1, 0, v493, v269, v493, v498, v36, v43, v502, v500, v367);
        v526 = v269[241];
        if (v269[237])
        {
          if (v269[241])
          {
            goto LABEL_976;
          }
        }

        else if (v269[241])
        {
          if (v498[4] > v493)
          {
            v538 = *(v498 + 1);
            v539 = *(v538 + 2 * v493);
            v540 = *(v713 + 4 * _lou_charHash(*(v538 + 2 * v493)));
            if (v540)
            {
              while (1)
              {
                v541 = (v714 + 8 * v540);
                if (*(v541 + 22) == v539)
                {
                  break;
                }

                v540 = *(v541 + 3);
                if (!v540)
                {
                  goto LABEL_994;
                }
              }
            }

            else
            {
LABEL_994:
              v541 = &unk_28DF8;
              word_28E24 = v539;
            }

            v269 = a1;
            v367 = a14;
            if ((v541[24] & 4) != 0)
            {
              v542 = (v690 & 4) != 0 || v679 == 107;
              v543 = !v542;
              if ((v679 == 84 || v543) && !sub_195E0((v714 + 8 * v526 + 54), 0, *(v714 + 8 * v526 + 52), 0, v493, v498, v36, v43, a13, a14))
              {
                goto LABEL_1223;
              }
            }
          }

          if (v269[237])
          {
            v526 = v269[241];
            if (v269[241])
            {
LABEL_976:
              v527 = HIDWORD(v724);
              v528 = *(v498 + 1);
              v529 = v493;
              v530 = *(v528 + 2 * v493);
              v531 = _lou_charHash(*(v528 + 2 * v493));
              v532 = *(v713 + 4 * v531);
              if (v527)
              {
                if (*(v713 + 4 * v531))
                {
                  while (1)
                  {
                    v533 = (v714 + 8 * v532);
                    if (*(v533 + 22) == v530)
                    {
                      break;
                    }

                    v532 = v533[3];
                    if (!v532)
                    {
                      goto LABEL_980;
                    }
                  }
                }

                else
                {
LABEL_980:
                  v533 = &unk_28DF8;
                  word_28E24 = v530;
                }

                v43 = a5;
                v36 = a4;
                if ((v533[6] & 0x4000904) != 0)
                {
                  goto LABEL_1038;
                }

                HIDWORD(v724) = 0;
                v526 = v269[243];
                if (!v526)
                {
                  goto LABEL_1038;
                }

                v534 = *(v498 + 1);
                v535 = *(v534 + 2 * v493);
                v536 = *(v713 + 4 * _lou_charHash(*(v534 + 2 * v493)));
                if (v536)
                {
                  while (1)
                  {
                    v537 = (v714 + 8 * v536);
                    if (*(v537 + 22) == v535)
                    {
                      break;
                    }

                    v536 = *(v537 + 3);
                    if (!v536)
                    {
                      goto LABEL_986;
                    }
                  }
                }

                else
                {
LABEL_986:
                  v537 = &unk_28DF8;
                  word_28E24 = v535;
                }

                if ((v537[25] & 0x10) == 0)
                {
                  goto LABEL_1038;
                }
              }

              else
              {
                if (*(v713 + 4 * v531))
                {
                  while (1)
                  {
                    v544 = (v714 + 8 * v532);
                    if (v544[22] == v530)
                    {
                      break;
                    }

                    v532 = *(v544 + 3);
                    if (!v532)
                    {
                      goto LABEL_1011;
                    }
                  }
                }

                else
                {
LABEL_1011:
                  v544 = &unk_28DF8;
                  word_28E24 = v530;
                }

                v43 = a5;
                v36 = a4;
                if ((v544[12] & 0x104) == 0)
                {
                  v552 = *(v498 + 1);
                  v553 = *(v552 + 2 * v493);
                  v554 = *(v713 + 4 * _lou_charHash(*(v552 + 2 * v493)));
                  if (!v554)
                  {
LABEL_1023:
                    v555 = &unk_28DF8;
                    word_28E24 = v553;
                    goto LABEL_1024;
                  }

                  while (1)
                  {
                    v555 = (v714 + 8 * v554);
                    if (*(v555 + 22) == v553)
                    {
                      break;
                    }

                    v554 = *(v555 + 3);
                    if (!v554)
                    {
                      goto LABEL_1023;
                    }
                  }

LABEL_1024:
                  while ((v555[25] & 8) != 0)
                  {
                    if (++v529 >= v498[4])
                    {
                      break;
                    }

                    v556 = *(v498 + 1);
                    v557 = *(v556 + 2 * v529);
                    v558 = *(v713 + 4 * _lou_charHash(*(v556 + 2 * v529)));
                    if (v558)
                    {
                      while (1)
                      {
                        v559 = (v714 + 8 * v558);
                        if (v559[22] == v557)
                        {
                          break;
                        }

                        v558 = *(v559 + 3);
                        if (!v558)
                        {
                          goto LABEL_1029;
                        }
                      }
                    }

                    else
                    {
LABEL_1029:
                      v559 = &unk_28DF8;
                      word_28E24 = v557;
                    }

                    if ((v559[12] & 0x104) != 0)
                    {
                      v551 = (&v724 + 4);
                      goto LABEL_1036;
                    }

                    v560 = *(v498 + 1);
                    v553 = *(v560 + 2 * v529);
                    v561 = *(v713 + 4 * _lou_charHash(*(v560 + 2 * v529)));
                    if (!v561)
                    {
                      goto LABEL_1023;
                    }

                    while (1)
                    {
                      v555 = (v714 + 8 * v561);
                      if (*(v555 + 22) == v553)
                      {
                        break;
                      }

                      v561 = *(v555 + 3);
                      if (!v561)
                      {
                        goto LABEL_1023;
                      }
                    }
                  }

                  goto LABEL_1038;
                }

                HIDWORD(v724) = 1;
                v545 = v269[242];
                v546 = v269[243];
                if (v545)
                {
                  v547 = v546 == 0;
                }

                else
                {
                  v547 = 1;
                }

                if (!v547)
                {
                  v548 = v714 + 8 * v545;
                  v549 = v714 + 8 * v546;
                  v550 = *(v548 + 52);
                  if (v550 == *(v549 + 52) && !memcmp((v548 + 54), (v549 + 54), 2 * v550))
                  {
                    v551 = &v724;
LABEL_1036:
                    *v551 = 1;
                  }
                }
              }

              sub_195E0((v714 + 8 * v526 + 54), 0, *(v714 + 8 * v526 + 52), 0, v493, v498, v36, v43, a13, v367);
            }
          }
        }

LABEL_1038:
        v562 = v704;
        if (v704 == 74)
        {
LABEL_1039:
          if (qword_2DC00)
          {
            v563 = dword_2DBF8;
            if (dword_2DBF8 < dword_2DC08)
            {
              ++dword_2DBF8;
              *(qword_2DC00 + 8 * v563) = v732;
            }
          }

          if (!sub_18884(v269, &v734, v36, v43, 74, &v732, v731, v730, v729, &v733, v727, v728, HIDWORD(v728), a13, v367, v726, v725, v655))
          {
            goto LABEL_1223;
          }

          v564 = *v498;
          if (*v734 != v564 && v564 != *a3)
          {
            sub_12A90(v564);
          }

          v684 = v733 != v493;
          v702 = 74;
          continue;
        }

        v565 = a1 + 31616;
        if (!v684)
        {
          goto LABEL_1053;
        }

        v566 = v732;
        v567 = v269[5649];
        if (!v567)
        {
          goto LABEL_1052;
        }

        do
        {
          v568 = v565 + 8 * v567;
          v569 = *(v568 + 44);
          if (sub_17C38(v269, v493, v498, v569, v568, &v731, &v730, &v729, &v727, &v726, &v725))
          {
            v710 = 0;
            v732 = v568;
            v562 = v569;
            v117 = v569 == 74;
            v43 = a5;
            v36 = a4;
            v496 = v493 + 1;
            if (!v117)
            {
              goto LABEL_1057;
            }

            goto LABEL_1039;
          }

          v567 = *(v568 + 16);
          v565 = a1 + 31616;
        }

        while (v567);
        v732 = v568;
        v43 = a5;
        v36 = a4;
        v562 = v704;
        v496 = v493 + 1;
LABEL_1052:
        v732 = v566;
LABEL_1053:
        if (qword_2DC00)
        {
          v570 = dword_2DBF8;
          if (dword_2DBF8 < dword_2DC08)
          {
            ++dword_2DBF8;
            *(qword_2DC00 + 8 * v570) = v732;
          }
        }

LABEL_1057:
        v571 = *(v498 + 1);
        v572 = *(v571 + 2 * v493);
        v573 = *(v713 + 4 * _lou_charHash(*(v571 + 2 * v493)));
        if (v573)
        {
          while (1)
          {
            v574 = (v714 + 8 * v573);
            if (v574[22] == v572)
            {
              break;
            }

            v573 = *(v574 + 3);
            if (!v573)
            {
              goto LABEL_1060;
            }
          }
        }

        else
        {
LABEL_1060:
          v574 = &unk_28DF8;
          word_28E24 = v572;
        }

        if ((v574[12] & 0x2001) != 0)
        {
          LODWORD(v724) = 0;
        }

        if (v562 <= 86)
        {
          if ((v562 - 80) < 2)
          {
            v675 = v493 - (v663 + v710);
          }

          else if (v562 == 61 || v562 == 79)
          {
            LODWORD(v724) = 0;
          }

LABEL_1079:
          if (v562 == 117)
          {
            if (!sub_19494(*(*(v498 + 1) + 2 * v493), v269, v493, v498, v36, v43, a13, v367, a2))
            {
              goto LABEL_1223;
            }

            v733 = v496;
            v578 = 117;
            goto LABEL_1208;
          }

          if (v562 != 73)
          {
            v579 = v732;
            v580 = &v732[v710 + 27];
            v581 = v732[26];
            if (v562 == 81)
            {
              v582 = 2 * v710 + 56;
              v583 = 1;
              do
              {
                v584 = *(v732 + v582);
                ++v583;
                v582 += 2;
              }

              while (v584 != 44);
              v580 += v583;
              v581 -= v583;
              v562 = 81;
            }

            goto LABEL_1109;
          }

          v496 = v710 + v493;
          v733 = v710 + v493;
          v575 = v732[26];
          if (v575 >= 1)
          {
            v576 = &v732[v710 + 27];
            do
            {
              v577 = *v576++;
              if (!sub_19494(v577, v269, v496, v498, v36, v43, a13, v367, a2))
              {
                goto LABEL_1223;
              }
            }

            while (--v575);
          }

          v578 = 73;
LABEL_1208:
          if (a7)
          {
            v638 = *(a7 + v496);
            if ((v638 - 48) <= 9)
            {
              *(a8 + *(v36 + 20)) = v638;
            }
          }

          v639 = (v578 - 62) >= 0xA && (v578 - 83) >= 0x23;
          v640 = v679;
          v702 = v578;
          if (!v639)
          {
            v640 = v578;
          }

          v679 = v640;
          goto LABEL_433;
        }

        if (v562 > 107)
        {
          if (v562 == 109)
          {
            if (!v269[237])
            {
              v591 = v269[241];
              if (v591)
              {
                if (!sub_195E0((v714 + 8 * v591 + 2 * *(v714 + 8 * v591 + 50) + 54), *(v714 + 8 * v591 + 50), *(v714 + 8 * v591 + 52), 0, v493, v498, v36, v43, a13, v367))
                {
                  goto LABEL_1223;
                }
              }
            }

            v562 = 107;
          }

          else
          {
            if (v562 != 108)
            {
              goto LABEL_1079;
            }

            if (v269[240] && (sub_17708(*(*(v498 + 1) + 2 * v493), v269)[12] & 2) != 0)
            {
              --*(v36 + 20);
            }

            v562 = 108;
          }

          goto LABEL_1108;
        }

        if (v562 == 87)
        {
          v684 = 1;
          v702 = 87;
          if (!v724)
          {
            sub_1A240(v269, &v733, v36, a2, v498, &v722, &v724, &v721);
            v684 = 1;
            v702 = 87;
          }

          continue;
        }

        if (v562 != 90)
        {
          goto LABEL_1079;
        }

        if (v679 != 90)
        {
          v562 = 90;
LABEL_1108:
          v579 = v732;
          v580 = &v732[v710 + 27];
          v581 = v732[26];
          goto LABEL_1109;
        }

        v585 = *(v36 + 20);
        if (v585 > 0)
        {
          v586 = 0;
          v587 = *(v36 + 8);
          do
          {
            if (!sub_199D0(*(v587 + 2 * v585 - 2), v269))
            {
              break;
            }

            v587 = *(v36 + 8);
            v588 = *(v36 + 20);
            if (*(v587 + 2 * v588 - 2) == -1)
            {
              v586 = 1;
            }

            v589 = __OFSUB__(v588, 1);
            v585 = v588 - 1;
            *(v36 + 20) = v585;
          }

          while (!((v585 < 0) ^ v589 | (v585 == 0)));
          if (v586)
          {
            v590 = *(v36 + 20);
            *(*(v36 + 8) + 2 * v590) = -1;
            *(v36 + 20) = v590 + 1;
          }

          goto LABEL_1079;
        }

        v579 = v732;
        v580 = &v732[v710 + 27];
        v581 = v732[26];
        v562 = 90;
LABEL_1109:
        v705 = v562;
        if (v581)
        {
          if (v663)
          {
            if (!sub_195E0(v580, 0, v581, 0, v493, v498, v36, v43, a13, v367))
            {
              goto LABEL_1223;
            }

LABEL_1126:
            v578 = v562;
            if (v562 > 92)
            {
              if ((v562 - 93) < 2)
              {
                if (v493 < v498[4])
                {
                  v493 = v493;
                  v620 = *(v498 + 1);
                  do
                  {
                    v621 = *(v620 + 2 * v493);
                    v622 = *(v713 + 4 * _lou_charHash(*(v620 + 2 * v493)));
                    if (v622)
                    {
                      while (1)
                      {
                        v623 = (v714 + 8 * v622);
                        if (*(v623 + 22) == v621)
                        {
                          break;
                        }

                        v622 = *(v623 + 3);
                        if (!v622)
                        {
                          goto LABEL_1162;
                        }
                      }
                    }

                    else
                    {
LABEL_1162:
                      v623 = &unk_28DF8;
                      word_28E24 = v621;
                    }

                    if ((v623[24] & 1) == 0)
                    {
                      break;
                    }

                    v620 = *(v498 + 1);
                    if (*(v620 + 2 * v493) == -1)
                    {
                      break;
                    }

                    ++v493;
                  }

                  while (v493 < v498[4]);
                }

                v733 = v493;
              }
            }

            else
            {
              switch(v562)
              {
                case 'O':
                  v624 = v498[4] - v710;
                  if (v624 > a15 && (a2 & 0x22) != 0)
                  {
                    v624 = a15 - 1;
                  }

                  if (v493 <= v624)
                  {
                    v626 = v493;
                    v627 = v624;
                    while (sub_17B14((v579 + 54), *(v498 + 1) + 2 * v626, v710, a1))
                    {
                      if (*a14)
                      {
                        v493 = v626 + v710;
                      }

                      else
                      {
                        v628 = *a13;
                        v493 = v626 + v710;
                        if (v626 <= v628 && v493 > v628)
                        {
                          *a14 = 1;
                          *a13 = *(v36 + 20) - 1;
                        }
                      }

                      v626 = v493;
                      if (v493 > v627)
                      {
                        goto LABEL_1206;
                      }
                    }

                    LODWORD(v493) = v626;
                  }

LABEL_1206:
                  v733 = v493;
                  v578 = 79;
                  break;
                case 'P':
LABEL_1149:
                  v616 = a15;
                  if (v498[4] < a15)
                  {
                    v616 = v498[4];
                  }

                  if ((a2 & 0x22) != 0)
                  {
                    v617 = v616;
                  }

                  else
                  {
                    v617 = v498[4];
                  }

                  v618 = v733;
                  v619 = v733 + v663;
                  if (v733 + v663 <= v617)
                  {
                    v630 = 0;
                    v631 = *(v498 + 1);
                    v632 = v733 - 1;
                    do
                    {
                      if (!sub_17B14(v631 + 2 * v675, v631 + 2 * v618, v663, a1))
                      {
                        break;
                      }

                      if (v630)
                      {
                        v633 = v632 + 1;
                        while (v633 < v618 + v663 - 1)
                        {
                          if (*(a10 + 8 * v633++))
                          {
                            goto LABEL_1155;
                          }
                        }
                      }

                      if (!*a14 && *a13 >= v618 - v710 && *a13 < v619)
                      {
                        *a14 = 1;
                        *a13 = *(a4 + 20) - 1;
                      }

                      v618 = v619 + v710;
                      if (v619 + v710 > v617)
                      {
                        break;
                      }

                      v631 = *(v498 + 1);
                      v636 = memcmp(v579 + 54, (v631 + 2 * v619), 2 * v710);
                      v619 = v618 + v663;
                      v632 += v663 + v710;
                      v630 = 1;
                    }

                    while (!v636 && v619 <= v617);
                  }

LABEL_1155:
                  v496 = v618 - v710;
                  v733 = v618 - v710;
                  v43 = a5;
                  v36 = a4;
                  v578 = v705;
                  goto LABEL_1208;
                case 'Q':
                  v597 = 0;
                  v598 = 0;
                  v599 = &v579[2 * v710];
                  v600 = -1;
                  v601 = 4;
                  do
                  {
                    v602 = *&v599[v598 + 56];
                    v603 = v601;
                    ++v600;
                    v598 += 2;
                    ++v597;
                    ++v601;
                  }

                  while (v602 != 44);
                  v604 = *(v36 + 20);
                  if (v604 + v600 + 1 > *(v36 + 16))
                  {
                    goto LABEL_1223;
                  }

                  if (v604 > 0)
                  {
                    v605 = 2 * v597 - 2;
                    v606 = v677 + 4 * v597;
                    while (1)
                    {
                      v607 = *(v677 + 4 * v604);
                      if (v607 < v675)
                      {
                        break;
                      }

                      *(*(v36 + 8) + 2 * v604 + v605) = *(*(v36 + 8) + 2 * v604 - 2);
                      *(v606 + 4 * v604--) = v607;
                      if ((v604 + 1) <= 1)
                      {
                        LODWORD(v604) = 0;
                        break;
                      }
                    }
                  }

                  memcpy((*(v36 + 8) + 2 * v604), v599 + 54, v598);
                  v608 = *(v43 + 4 * v604);
                  v609 = vdupq_n_s64(v600);
                  v610 = v603 & 0xFFFFFFFFFFFFFFFCLL;
                  v611 = xmmword_1DCF0;
                  v612 = xmmword_1DDA0;
                  v613 = (v670 + 4 * v604);
                  do
                  {
                    v614 = vmovn_s64(vcgeq_u64(v609, v611));
                    if (vuzp1_s16(v614, *v609.i8).u8[0])
                    {
                      *(v613 - 2) = v608;
                    }

                    if (vuzp1_s16(v614, *&v609).i8[2])
                    {
                      *(v613 - 1) = v608;
                    }

                    if (vuzp1_s16(*&v609, vmovn_s64(vcgeq_u64(v609, *&v612))).i32[1])
                    {
                      *v613 = v608;
                      v613[1] = v608;
                    }

                    v615 = vdupq_n_s64(4uLL);
                    v612 = vaddq_s64(v612, v615);
                    v611 = vaddq_s64(v611, v615);
                    v613 += 4;
                    v610 -= 4;
                  }

                  while (v610);
                  *(v36 + 20) += v600 + 1;
                  if (*a14 && *a13 >= v604)
                  {
                    *a13 += v600 + 1;
                  }

                  goto LABEL_1149;
              }
            }

            v496 = v493;
            goto LABEL_1208;
          }

          if (!sub_195E0(v580, v710, v581, 0, v493, v498, v36, v43, a13, v367))
          {
            goto LABEL_1223;
          }

          LODWORD(v493) = v710 + v493;
LABEL_1125:
          v733 = v493;
          goto LABEL_1126;
        }

        if (v710 < 1)
        {
          goto LABEL_1126;
        }

        v592 = v733;
        if (!sub_19494(*(*(v498 + 1) + 2 * v493), v269, v493, v498, v36, v43, a13, a14, a2))
        {
          goto LABEL_1246;
        }

        v593 = v493 + 1;
        v594 = 1;
        do
        {
          if (v593 >= v498[4] || v594 >= v710)
          {
            LODWORD(v493) = v493 + v594;
            goto LABEL_1125;
          }
        }

        while (sub_19494(*(*(v498 + 1) + 2 * v593++), v269, v493 + v594++, v498, v36, v43, a13, a14, a2));
        v592 = v493 + v594 - 1;
LABEL_1246:
        v733 = v592;
LABEL_1223:
        v246 = HIDWORD(v722);
LABEL_1224:
        LODWORD(v642) = v733;
        if (v246 && v733 < v734[4])
        {
          v643 = *(v734 + 1);
          v644 = *(v643 + 2 * v733);
          v645 = *(v713 + 4 * _lou_charHash(*(v643 + 2 * v733)));
          v646 = a3;
          if (v645)
          {
            while (1)
            {
              v647 = (v714 + 8 * v645);
              if (*(v647 + 22) == v644)
              {
                break;
              }

              v645 = *(v647 + 3);
              if (!v645)
              {
                goto LABEL_1229;
              }
            }
          }

          else
          {
LABEL_1229:
            v647 = &unk_28DF8;
            word_28E24 = v644;
          }

          if ((v647[24] & 1) == 0)
          {
            LODWORD(v642) = v722;
            *(v36 + 20) = v246;
          }
        }

        else
        {
          v646 = a3;
        }

        v648 = v734;
        if (v642 >= v734[4])
        {
          v649 = a12;
        }

        else
        {
          v642 = v642;
          v649 = a12;
          do
          {
            v650 = *(v648 + 1);
            v651 = *(v650 + 2 * v642);
            v652 = *(v713 + 4 * _lou_charHash(*(v650 + 2 * v642)));
            if (v652)
            {
              while (1)
              {
                v653 = (v714 + 8 * v652);
                if (*(v653 + 22) == v651)
                {
                  break;
                }

                v652 = *(v653 + 3);
                if (!v652)
                {
                  goto LABEL_1238;
                }
              }
            }

            else
            {
LABEL_1238:
              v653 = &unk_28DF8;
              word_28E24 = v651;
            }

            if ((v653[24] & 1) == 0)
            {
              break;
            }

            ++v642;
          }

          while (v648[4] != v642);
        }

        *v649 = v642;
        result = *v648;
        if (result != *v646)
        {
          return sub_12A90(result);
        }

        return result;
      case 'j':
        LODWORD(v291) = 106;
        if ((v690 & 9) != 0 && (v314 & 4) != 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'k':
        v402 = v661;
        if ((v314 & 4) == 0)
        {
          v402 = 1;
        }

        LODWORD(v291) = 107;
        if ((v402 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'l':
        LODWORD(v291) = 108;
        if (((v679 != 84) & ((v690 & 4) >> 2)) != 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'm':
        if ((v314 & 4) == 0)
        {
          goto LABEL_868;
        }

        if ((v690 & 4) != 0)
        {
          LODWORD(v291) = 107;
        }

        else
        {
          LODWORD(v291) = 109;
        }

        goto LABEL_917;
      case 'p':
        if (v668)
        {
          goto LABEL_868;
        }

        v416 = v250 + 1;
        while (v416 < v288)
        {
          if (*(a10 + 8 * v416++))
          {
            goto LABEL_867;
          }
        }

        v474 = (v714 + 8 * *(v287 + 40));
        if (!_lou_pattern_check(*(v282 + 8), v250 - 1, 0xFFFFFFFF, 0xFFFFFFFFLL, (v474 + 1), v269))
        {
          goto LABEL_867;
        }

        v389 = _lou_pattern_check(*(v282 + 8), v250 + *(v287 + 50), *(v282 + 16), 1, &v474[*v474], v269);
        LODWORD(v291) = 112;
LABEL_693:
        v281 = a1 + 31616;
        if (v389)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      default:
        goto LABEL_868;
    }
  }
}