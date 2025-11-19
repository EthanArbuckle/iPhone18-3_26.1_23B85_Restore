uint64_t sub_298C9D558(uint64_t a1)
{
  v2 = a1 - 9;
  result = 236;
  switch(v2)
  {
    case 0:
      result = 7;
      break;
    case 1:
      result = 11;
      break;
    case 196:
      return result;
    case 197:
      result = 237;
      break;
    case 198:
      result = 238;
      break;
    case 199:
      result = 239;
      break;
    case 200:
      result = 240;
      break;
    case 201:
      result = 241;
      break;
    case 202:
      result = 242;
      break;
    case 203:
      result = 243;
      break;
    case 204:
      result = 244;
      break;
    case 205:
      result = 245;
      break;
    case 206:
      result = 246;
      break;
    case 207:
      result = 247;
      break;
    case 208:
      result = 248;
      break;
    case 209:
      result = 249;
      break;
    case 210:
      result = 250;
      break;
    case 211:
      result = 251;
      break;
    case 212:
      result = 252;
      break;
    case 213:
      result = 253;
      break;
    case 214:
      result = 254;
      break;
    case 215:
      result = 255;
      break;
    case 216:
      result = 256;
      break;
    case 217:
      result = 257;
      break;
    case 218:
      result = 258;
      break;
    case 219:
      result = 259;
      break;
    case 220:
      result = 260;
      break;
    case 221:
      result = 261;
      break;
    case 222:
      result = 262;
      break;
    case 223:
      result = 263;
      break;
    case 224:
      result = 264;
      break;
    case 225:
      result = 2;
      break;
    case 226:
      result = 5;
      break;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t sub_298C9DA20(uint64_t result)
{
  *result = &unk_2A1F20518;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void sub_298C9DA7C(uint64_t a1)
{
  *a1 = &unk_2A1F20518;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298C9DB88(uint64_t result)
{
  *result = &unk_2A1F20518;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void sub_298C9DBE4(uint64_t a1)
{
  *a1 = &unk_2A1F20518;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298C9DC78(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 65);
  operator new();
}

uint64_t sub_298C9DD28(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int a5)
{
  v35 = *MEMORY[0x29EDCA608];
  v6 = *(a4 + 12);
  result = v6 - 256;
  if (v6 >= 0x100)
  {
    goto LABEL_394;
  }

  v8 = a3[6];
  v9 = v8 & 0xF;
  if (!a5)
  {
    v12 = *(a1 + 13);
    if (v6 == 137 && v12 != 0)
    {
      if (v8 <= 320)
      {
        switch(v8)
        {
          case 'A':
            goto LABEL_37;
          case 'B':
            goto LABEL_77;
          case 'C':
            goto LABEL_216;
          case 'E':
            goto LABEL_200;
          case 'G':
            goto LABEL_209;
          case 'Q':
            goto LABEL_206;
          case 'R':
            v16 = *(a4 + 16);
            v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: MOVW_SABS_G1)";
            goto LABEL_389;
          case 'S':
            goto LABEL_197;
          case 'U':
            goto LABEL_213;
          case 'V':
            v16 = *(a4 + 16);
            v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: TLSIE_MOVW_GOTTPREL_G1)";
            goto LABEL_389;
          case 'W':
            goto LABEL_203;
          case 'a':
            v16 = *(a4 + 16);
            v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: MOVW_UABS_G2)";
            goto LABEL_389;
          case 'b':
            v16 = *(a4 + 16);
            v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: MOVW_SABS_G2)";
            goto LABEL_389;
          case 'c':
            goto LABEL_219;
          case 'e':
            v16 = *(a4 + 16);
            v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: TLSLD_MOVW_DTPREL_G2)";
            goto LABEL_389;
          case 'g':
            v16 = *(a4 + 16);
            v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: TLSLE_MOVW_TPREL_G2)";
            goto LABEL_389;
          case 'q':
            v16 = *(a4 + 16);
            v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: MOVW_UABS_G3)";
            goto LABEL_389;
          case 's':
            goto LABEL_212;
          default:
            goto LABEL_301;
        }
      }

      if (v8 > 336)
      {
        if (v8 <= 342)
        {
          if (v8 == 337)
          {
            v16 = *(a4 + 16);
            v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: MOVW_UABS_G1_NC)";
            goto LABEL_389;
          }

          if (v8 != 339)
          {
            if (v8 == 341)
            {
              v16 = *(a4 + 16);
              v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: TLSLD_MOVW_DTPREL_G1_NC)";
              goto LABEL_389;
            }

LABEL_301:
            v16 = *(a4 + 16);
            v17 = "invalid fixup for movz/movk instruction";
            goto LABEL_389;
          }

          goto LABEL_252;
        }

        if (v8 == 343)
        {
          v16 = *(a4 + 16);
          v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: TLSLE_MOVW_TPREL_G1_NC)";
          goto LABEL_389;
        }

        if (v8 == 353)
        {
          v16 = *(a4 + 16);
          v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: MOVW_UABS_G2_NC)";
          goto LABEL_389;
        }

        goto LABEL_128;
      }

      if (v8 > 324)
      {
        if (v8 != 325)
        {
          if (v8 == 326)
          {
            v16 = *(a4 + 16);
            v17 = "ILP32 absolute MOV relocation not supported (LP64 eqv: TLSIE_MOVW_GOTTPREL_G0_NC)";
            goto LABEL_389;
          }

          goto LABEL_89;
        }

        goto LABEL_295;
      }

      goto LABEL_290;
    }

    v14 = *(a4 + 12);
    if (v14 <= 0x82)
    {
      if (*(a4 + 12) <= 2u)
      {
        if (v14 == 1)
        {
          goto LABEL_85;
        }

        if (v14 == 2)
        {
          if (*(a1 + 13))
          {
            result = 2;
          }

          else
          {
            result = 259;
          }

          goto LABEL_394;
        }
      }

      else
      {
        switch(v14)
        {
          case 3u:
            if (v12)
            {
              result = 1;
            }

            else if (*a3 && *(*a3 + 1) == 6)
            {
              result = 315;
            }

            else
            {
              result = 258;
            }

            goto LABEL_394;
          case 4u:
            if (!*(a1 + 13))
            {
              if ((v8 & 0xFFFFFFFE) == 0xA)
              {
                result = 580;
              }

              else
              {
                result = 257;
              }

              goto LABEL_394;
            }

            v16 = *(a4 + 16);
            v17 = "ILP32 8 byte absolute data relocation not supported (LP64 eqv: ABS64)";
            goto LABEL_389;
          case 0x82u:
            if (v8 <= 52)
            {
              switch(v8)
              {
                case '%':
                  if (*(a1 + 13))
                  {
                    result = 91;
                  }

                  else
                  {
                    result = 529;
                  }

                  goto LABEL_394;
                case '\'':
                  if (*(a1 + 13))
                  {
                    result = 110;
                  }

                  else
                  {
                    result = 550;
                  }

                  goto LABEL_394;
                case '(':
                  if (*(a1 + 13))
                  {
                    result = 126;
                  }

                  else
                  {
                    result = 564;
                  }

                  goto LABEL_394;
              }
            }

            else if (v8 > 292)
            {
              if (v8 == 293)
              {
                if (*(a1 + 13))
                {
                  result = 92;
                }

                else
                {
                  result = 530;
                }

                goto LABEL_394;
              }

              if (v8 == 295)
              {
                if (*(a1 + 13))
                {
                  result = 111;
                }

                else
                {
                  result = 551;
                }

                goto LABEL_394;
              }
            }

            else
            {
              if (v8 == 53)
              {
                if (*(a1 + 13))
                {
                  result = 90;
                }

                else
                {
                  result = 528;
                }

                goto LABEL_394;
              }

              if (v8 == 55)
              {
                if (*(a1 + 13))
                {
                  result = 109;
                }

                else
                {
                  result = 549;
                }

                goto LABEL_394;
              }
            }

            if ((v8 & 0x10F) == 0x101)
            {
              if (*(a1 + 13))
              {
                result = 12;
              }

              else
              {
                result = 277;
              }

              goto LABEL_394;
            }

            v16 = *(a4 + 16);
            v17 = "invalid fixup for add (uimm12) instruction";
            goto LABEL_389;
        }
      }
    }

    else
    {
      if (*(a4 + 12) <= 0x85u)
      {
        if (v14 == 131)
        {
          v25 = v8 & 0x10F;
          if (v25 <= 256)
          {
            if (v25 == 5)
            {
              if (*(a1 + 13))
              {
                result = 93;
              }

              else
              {
                result = 531;
              }

              goto LABEL_394;
            }

            if (v25 == 7)
            {
              if (*(a1 + 13))
              {
                result = 112;
              }

              else
              {
                result = 552;
              }

              goto LABEL_394;
            }
          }

          else
          {
            switch(v25)
            {
              case 263:
                if (*(a1 + 13))
                {
                  result = 113;
                }

                else
                {
                  result = 553;
                }

                goto LABEL_394;
              case 261:
                if (*(a1 + 13))
                {
                  result = 94;
                }

                else
                {
                  result = 532;
                }

                goto LABEL_394;
              case 257:
                if (*(a1 + 13))
                {
                  result = 13;
                }

                else
                {
                  result = 278;
                }

                goto LABEL_394;
            }
          }

          v16 = *(a4 + 16);
          v17 = "invalid fixup for 8-bit load/store instruction";
          goto LABEL_389;
        }

        if (v14 == 132)
        {
          v23 = v8 & 0x10F;
          if (v23 <= 256)
          {
            if (v23 == 5)
            {
              if (*(a1 + 13))
              {
                result = 95;
              }

              else
              {
                result = 533;
              }

              goto LABEL_394;
            }

            if (v23 == 7)
            {
              if (*(a1 + 13))
              {
                result = 114;
              }

              else
              {
                result = 554;
              }

              goto LABEL_394;
            }
          }

          else
          {
            switch(v23)
            {
              case 263:
                if (*(a1 + 13))
                {
                  result = 115;
                }

                else
                {
                  result = 555;
                }

                goto LABEL_394;
              case 261:
                if (*(a1 + 13))
                {
                  result = 96;
                }

                else
                {
                  result = 534;
                }

                goto LABEL_394;
              case 257:
                if (*(a1 + 13))
                {
                  result = 14;
                }

                else
                {
                  result = 284;
                }

                goto LABEL_394;
            }
          }

          v16 = *(a4 + 16);
          v17 = "invalid fixup for 16-bit load/store instruction";
          goto LABEL_389;
        }

        v15 = v8 & 0x10F;
        if (v15 <= 256)
        {
          if (v15 > 6)
          {
            if (v15 == 7)
            {
              if (*(a1 + 13))
              {
                result = 116;
              }

              else
              {
                result = 556;
              }

              goto LABEL_394;
            }

            if (v15 == 8)
            {
              if (v12)
              {
                result = 125;
                goto LABEL_394;
              }

              v16 = *(a4 + 16);
              v17 = "LP64 4 byte TLSDESC load/store relocation not supported (ILP32 eqv: TLSDESC_LD64_LO12)";
              goto LABEL_389;
            }
          }

          else
          {
            if (v15 == 4)
            {
              v16 = *(a4 + 16);
              if (*(a1 + 13))
              {
                v17 = "ILP32 4 byte checked GOT load/store relocation not supported (unchecked eqv: LD32_GOT_LO12_NC)";
              }

              else
              {
                v17 = "LP64 4 byte checked GOT load/store relocation not supported (unchecked/ILP32 eqv: LD32_GOT_LO12_NC)";
              }

              goto LABEL_389;
            }

            if (v15 == 5)
            {
              if (*(a1 + 13))
              {
                result = 97;
              }

              else
              {
                result = 535;
              }

              goto LABEL_394;
            }
          }
        }

        else if (v15 <= 260)
        {
          if (v15 == 257)
          {
            if (*(a1 + 13))
            {
              result = 15;
            }

            else
            {
              result = 285;
            }

            goto LABEL_394;
          }

          if (v15 == 260)
          {
            if (v12)
            {
              result = 27;
              goto LABEL_394;
            }

            v16 = *(a4 + 16);
            v17 = "LP64 4 byte unchecked GOT load/store relocation not supported (ILP32 eqv: LD32_GOT_LO12_NC";
            goto LABEL_389;
          }
        }

        else
        {
          switch(v15)
          {
            case 261:
              if (*(a1 + 13))
              {
                result = 98;
              }

              else
              {
                result = 536;
              }

              goto LABEL_394;
            case 262:
              if (v12)
              {
                result = 104;
                goto LABEL_394;
              }

              v16 = *(a4 + 16);
              v17 = "LP64 32-bit load/store relocation not supported (ILP32 eqv: TLSIE_LD32_GOTTPREL_LO12_NC)";
              goto LABEL_389;
            case 263:
              if (*(a1 + 13))
              {
                result = 117;
              }

              else
              {
                result = 557;
              }

              goto LABEL_394;
          }
        }

        v16 = *(a4 + 16);
        v17 = "invalid fixup for 32-bit load/store instruction fixup_aarch64_ldst_imm12_scale4";
        goto LABEL_389;
      }

      switch(v14)
      {
        case 0x86u:
          v26 = v8 & 0x10F;
          if (v26 <= 0x103)
          {
            switch(v26)
            {
              case 5u:
                if (*(a1 + 13))
                {
                  result = 99;
                }

                else
                {
                  result = 537;
                }

                goto LABEL_394;
              case 7u:
                if (*(a1 + 13))
                {
                  result = 118;
                }

                else
                {
                  result = 558;
                }

                goto LABEL_394;
              case 0x101u:
                if (*(a1 + 13))
                {
                  result = 16;
                }

                else
                {
                  result = 286;
                }

                goto LABEL_394;
            }
          }

          else if ((v8 & 0x10Fu) > 0x105)
          {
            if (v26 == 262)
            {
              if (!*(a1 + 13))
              {
                result = 542;
                goto LABEL_394;
              }

              v16 = *(a4 + 16);
              v17 = "ILP32 64-bit load/store relocation not supported (LP64 eqv: TLSIE_LD64_GOTTPREL_LO12_NC)";
              goto LABEL_389;
            }

            if (v26 == 263)
            {
              if (*(a1 + 13))
              {
                result = 119;
              }

              else
              {
                result = 559;
              }

              goto LABEL_394;
            }
          }

          else
          {
            if (v26 == 260)
            {
              if ((v12 & 1) == 0)
              {
                if ((v8 & 0xF0) == 0x80)
                {
                  result = 313;
                }

                else
                {
                  result = 312;
                }

                goto LABEL_394;
              }

              v16 = *(a4 + 16);
              v17 = "ILP32 64-bit load/store relocation not supported (LP64 eqv: LD64_GOT_LO12_NC)";
              goto LABEL_389;
            }

            if (v26 == 261)
            {
              if (*(a1 + 13))
              {
                result = 100;
              }

              else
              {
                result = 538;
              }

              goto LABEL_394;
            }
          }

          if (v9 == 8)
          {
            if (!*(a1 + 13))
            {
              result = 563;
              goto LABEL_394;
            }

            v16 = *(a4 + 16);
            v17 = "ILP32 64-bit load/store relocation not supported (LP64 eqv: TLSDESC_LD64_LO12)";
          }

          else
          {
            v16 = *(a4 + 16);
            v17 = "invalid fixup for 64-bit load/store instruction";
          }

          goto LABEL_389;
        case 0x87u:
          v24 = v8 & 0x10F;
          if (v24 <= 256)
          {
            if (v24 == 5)
            {
              if (*(a1 + 13))
              {
                result = 101;
              }

              else
              {
                result = 572;
              }

              goto LABEL_394;
            }

            if (v24 == 7)
            {
              if (*(a1 + 13))
              {
                result = 120;
              }

              else
              {
                result = 570;
              }

              goto LABEL_394;
            }
          }

          else
          {
            switch(v24)
            {
              case 263:
                if (*(a1 + 13))
                {
                  result = 121;
                }

                else
                {
                  result = 571;
                }

                goto LABEL_394;
              case 261:
                if (*(a1 + 13))
                {
                  result = 102;
                }

                else
                {
                  result = 573;
                }

                goto LABEL_394;
              case 257:
                if (*(a1 + 13))
                {
                  result = 17;
                }

                else
                {
                  result = 299;
                }

                goto LABEL_394;
            }
          }

          v16 = *(a4 + 16);
          v17 = "invalid fixup for 128-bit load/store instruction";
          goto LABEL_389;
        case 0x89u:
          if (v8 <= 320)
          {
            result = 269;
            switch(v8)
            {
              case 'A':
LABEL_37:
                if (*(a1 + 13))
                {
                  result = 5;
                }

                else
                {
                  result = 263;
                }

                break;
              case 'B':
LABEL_77:
                if (*(a1 + 13))
                {
                  result = 8;
                }

                else
                {
                  result = 270;
                }

                break;
              case 'C':
LABEL_216:
                if (*(a1 + 13))
                {
                  result = 22;
                }

                else
                {
                  result = 287;
                }

                break;
              case 'E':
LABEL_200:
                if (*(a1 + 13))
                {
                  result = 88;
                }

                else
                {
                  result = 526;
                }

                break;
              case 'G':
LABEL_209:
                if (*(a1 + 13))
                {
                  result = 107;
                }

                else
                {
                  result = 547;
                }

                break;
              case 'Q':
LABEL_206:
                if (*(a1 + 13))
                {
                  result = 7;
                }

                else
                {
                  result = 265;
                }

                break;
              case 'R':
                result = 271;
                break;
              case 'S':
LABEL_197:
                if (*(a1 + 13))
                {
                  result = 24;
                }

                else
                {
                  result = 289;
                }

                break;
              case 'U':
LABEL_213:
                if (*(a1 + 13))
                {
                  result = 87;
                }

                else
                {
                  result = 524;
                }

                break;
              case 'V':
                result = 539;
                break;
              case 'W':
LABEL_203:
                if (*(a1 + 13))
                {
                  result = 106;
                }

                else
                {
                  result = 545;
                }

                break;
              case 'a':
                result = 267;
                break;
              case 'b':
                result = 272;
                break;
              case 'c':
LABEL_219:
                result = 291;
                break;
              case 'e':
                result = 523;
                break;
              case 'g':
                result = 544;
                break;
              case 'q':
                goto LABEL_394;
              case 's':
LABEL_212:
                result = 293;
                break;
              default:
                goto LABEL_301;
            }

            goto LABEL_394;
          }

          if (v8 > 336)
          {
            if (v8 <= 342)
            {
              if (v8 == 337)
              {
                result = 266;
                goto LABEL_394;
              }

              if (v8 != 339)
              {
                if (v8 == 341)
                {
                  result = 525;
                  goto LABEL_394;
                }

                goto LABEL_301;
              }

LABEL_252:
              result = 290;
              goto LABEL_394;
            }

            if (v8 == 343)
            {
              result = 546;
              goto LABEL_394;
            }

            if (v8 == 353)
            {
              result = 268;
              goto LABEL_394;
            }

LABEL_128:
            if (v8 == 355)
            {
              result = 292;
              goto LABEL_394;
            }

            goto LABEL_301;
          }

          if (v8 > 324)
          {
            if (v8 != 325)
            {
              if (v8 == 326)
              {
                result = 540;
                goto LABEL_394;
              }

LABEL_89:
              if (v8 == 327)
              {
                if (*(a1 + 13))
                {
                  result = 108;
                }

                else
                {
                  result = 548;
                }

                goto LABEL_394;
              }

              goto LABEL_301;
            }

LABEL_295:
            if (*(a1 + 13))
            {
              result = 89;
            }

            else
            {
              result = 527;
            }

            goto LABEL_394;
          }

LABEL_290:
          if (v8 == 321)
          {
            if (*(a1 + 13))
            {
              result = 6;
            }

            else
            {
              result = 264;
            }

            goto LABEL_394;
          }

          if (v8 == 323)
          {
            if (*(a1 + 13))
            {
              result = 23;
            }

            else
            {
              result = 288;
            }

            goto LABEL_394;
          }

          goto LABEL_301;
      }
    }

    v16 = *(a4 + 16);
    v17 = "Unknown ELF relocation type";
    goto LABEL_389;
  }

  v10 = *(a4 + 12);
  if (v10 > 0x87)
  {
    if (*(a4 + 12) > 0x8Bu)
    {
      switch(v10)
      {
        case 0x8Cu:
          if (*(a1 + 13))
          {
            result = 19;
          }

          else
          {
            result = 280;
          }

          goto LABEL_394;
        case 0x8Du:
          if (*(a1 + 13))
          {
            result = 20;
          }

          else
          {
            result = 282;
          }

          goto LABEL_394;
        case 0x8Eu:
          if (*(a1 + 13))
          {
            result = 21;
          }

          else
          {
            result = 283;
          }

          goto LABEL_394;
      }

      goto LABEL_125;
    }

    if (v10 == 136)
    {
      if (*(a1 + 13))
      {
        v19 = 25;
      }

      else
      {
        v19 = 309;
      }

      if (*(a1 + 13))
      {
        v20 = 9;
      }

      else
      {
        v20 = 273;
      }

      if (*(a1 + 13))
      {
        v21 = 105;
      }

      else
      {
        v21 = 543;
      }

      if (v9 != 6)
      {
        v21 = v20;
      }

      if (v9 == 4)
      {
        result = v19;
      }

      else
      {
        result = v21;
      }

      goto LABEL_394;
    }

    if (v10 == 138)
    {
      if (*(a1 + 13))
      {
        result = 18;
      }

      else
      {
        result = 279;
      }

      goto LABEL_394;
    }

    if (v10 != 139)
    {
      goto LABEL_125;
    }

    v16 = *(a4 + 16);
    v17 = "relocation of PAC/AUT instructions is not supported";
LABEL_389:
    v28[0] = v17;
    v29 = 259;
    *(a2 + 2056) = 1;
    v30 = v16;
    v31 = &unk_2A1F1BDB8;
    v32 = &v30;
    v33 = v28;
    v34 = &v31;
    sub_298B2FFE4(a2, v16, &v31);
    if (v34 == &v31)
    {
      (*(*v34 + 4))(v34);
    }

    else if (v34)
    {
      (*(*v34 + 5))();
    }

    result = 0;
    goto LABEL_394;
  }

  if (*(a4 + 12) > 3u)
  {
    if (v10 == 4)
    {
      if (*(a1 + 13) != 1)
      {
        result = 260;
        goto LABEL_394;
      }

      v16 = *(a4 + 16);
      v17 = "ILP32 8 byte PC relative data relocation not supported (LP64 eqv: PREL64)";
      goto LABEL_389;
    }

    if (v10 == 128)
    {
      if (v9 != 1)
      {
        v22 = *(a4 + 16);
        v28[0] = "invalid symbol kind for ADR relocation";
        v29 = 259;
        *(a2 + 2056) = 1;
        v30 = v22;
        v31 = &unk_2A1F1BDB8;
        v32 = &v30;
        v33 = v28;
        v34 = &v31;
        sub_298B2FFE4(a2, v22, &v31);
        if (v34 == &v31)
        {
          (*(*v34 + 4))(v34);
        }

        else if (v34)
        {
          (*(*v34 + 5))();
        }
      }

      if (*(a1 + 13))
      {
        result = 10;
      }

      else
      {
        result = 274;
      }

      goto LABEL_394;
    }

    if (v10 != 129)
    {
      goto LABEL_125;
    }

    v18 = v8 & 0x10F;
    if (v18 <= 5)
    {
      if (v18 == 1)
      {
        if (*(a1 + 13))
        {
          result = 11;
        }

        else
        {
          result = 275;
        }

        goto LABEL_394;
      }

      if (v18 == 4)
      {
        if (*(a1 + 13))
        {
          result = 26;
        }

        else
        {
          result = 311;
        }

        goto LABEL_394;
      }
    }

    else
    {
      switch(v18)
      {
        case 6:
          if (*(a1 + 13))
          {
            result = 103;
          }

          else
          {
            result = 541;
          }

          goto LABEL_394;
        case 8:
          if (*(a1 + 13))
          {
            result = 124;
          }

          else
          {
            result = 562;
          }

          goto LABEL_394;
        case 257:
          if (*(a1 + 13) != 1)
          {
            result = 276;
            goto LABEL_394;
          }

          v16 = *(a4 + 16);
          v17 = "invalid fixup for 32-bit pcrel ADRP instruction VK_ABS VK_NC";
          goto LABEL_389;
      }
    }

    v16 = *(a4 + 16);
    v17 = "invalid symbol kind for ADRP relocation";
    goto LABEL_389;
  }

  if (v10 == 1)
  {
LABEL_85:
    v16 = *(a4 + 16);
    v17 = "1-byte data relocations not supported";
    goto LABEL_389;
  }

  if (v10 == 2)
  {
    if (*(a1 + 13))
    {
      result = 4;
    }

    else
    {
      result = 262;
    }

    goto LABEL_394;
  }

  if (v10 != 3)
  {
LABEL_125:
    v16 = *(a4 + 16);
    v17 = "Unsupported pc-relative fixup kind";
    goto LABEL_389;
  }

  if (*a3)
  {
    v11 = *(a1 + 13);
    if (*(*a3 + 1) == 12)
    {
      if (*(a1 + 13))
      {
        result = 29;
      }

      else
      {
        result = 314;
      }

      goto LABEL_394;
    }
  }

  else
  {
    v11 = *(a1 + 13);
  }

  if (v11)
  {
    result = 3;
  }

  else
  {
    result = 261;
  }

LABEL_394:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

const void *sub_298C9ED64(uint64_t a1, uint64_t a2)
{
  v3 = ".memtag.globals.static";
  v4 = 259;
  return sub_298B2DE08(a2, &v3, 1879048199, 0, 0, 0, 0, -1, 0);
}

void sub_298C9EDBC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v6 = a2;
  if (*(v2 + 5800) != 1)
  {
    v3 = *(v2 + 8);
    v9 = 773;
    v8[0] = "$x";
    v8[1] = 2;
    v8[2] = ".";
    v4 = *(v2 + 5768);
    *(v2 + 5768) = v4 + 1;
    v7 = v4;
    v10[0] = v8;
    v10[2] = &v7;
    v11 = 3586;
    v5 = sub_298B2D288(v3, v10);
    (*(*v2 + 192))(v2, v5, 0);
    *(v5 + 8) = *(v5 + 8) & 0xFFFFEFE0FFFFFFDFLL | 0x100000000000;
    *(v2 + 5800) = 1;
  }

  sub_298B4EBA4(v2, &v6, 4uLL);
}

void sub_298C9EEB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 0x10) == 0)
  {
    v4 = *(*(a1 + 8) + 304);
    *(a2 + 8) = v3 | 0x10;
    v5 = a2;
    sub_298B250EC(v4 + 56, &v5);
    v3 = *(a2 + 8);
  }

  *(a2 + 8) = v3 & 0xFFFFFC7FFFFFFFFFLL | 0x20000000000;
}

void *sub_298C9F170(void *result)
{
  *result = &unk_2A1F21580;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;
    sub_298CEC720((result + 2), v1);
    return v2;
  }

  return result;
}

void sub_298C9F1CC(void *a1)
{
  *a1 = &unk_2A1F21580;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    sub_298CEC720((a1 + 2), v2);
    v1 = vars8;
  }

  JUMPOUT(0x29C2945F0);
}

void *sub_298C9F2DC(void *result)
{
  *result = &unk_2A1F21580;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;
    sub_298CEC720((result + 2), v1);
    return v2;
  }

  return result;
}

void sub_298C9F338(void *a1)
{
  *a1 = &unk_2A1F21580;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    sub_298CEC720((a1 + 2), v2);
    v1 = vars8;
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298C9F3B0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 32);
  if ((*(v3 + 24) - v4) > 8)
  {
    *(v4 + 8) = 120;
    *v4 = *"\t.inst\t0x";
    *(v3 + 32) += 9;
  }

  else
  {
    sub_298B9BCEC(*(a1 + 24), "\t.inst\t0x", 9uLL);
  }

  v6 = a2;
  v7[0] = &v6;
  v7[2] = 0;
  v8 = 271;
  sub_298B99AA0(v7, v3);
  v5 = *(v3 + 32);
  if (*(v3 + 24) == v5)
  {
    sub_298B9BCEC(v3, "\n", 1uLL);
  }

  else
  {
    *v5 = 10;
    ++*(v3 + 32);
  }
}

_BYTE *sub_298C9F490(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 32);
  if (*(v3 + 24) - v4 > 0xDuLL)
  {
    qmemcpy(v4, "\t.variant_pcs\t", 14);
    result = (*(v3 + 32) + 14);
    *(v3 + 32) = result;
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_298B9BCEC(*(a1 + 24), "\t.variant_pcs\t", 0xEuLL);
    result = *(v3 + 32);
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v6 = *(a2 - 8);
  v9 = *v6;
  v7 = v6 + 2;
  v8 = v9;
  if (v9 <= *(v3 + 24) - result)
  {
    if (v8)
    {
      v10 = v8;
      memcpy(result, v7, v8);
      result = (*(v3 + 32) + v10);
      *(v3 + 32) = result;
    }
  }

  else
  {
    sub_298B9BCEC(v3, v7, v8);
    result = *(v3 + 32);
  }

LABEL_9:
  if (*(v3 + 24) == result)
  {

    return sub_298B9BCEC(v3, "\n", 1uLL);
  }

  else
  {
    *result = 10;
    ++*(v3 + 32);
  }

  return result;
}

uint64_t sub_298C9F5A0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = v2[4];
  if ((v2[3] - v3) > 0x10)
  {
    *(v3 + 16) = 9;
    *v3 = *"\t.seh_stackalloc\t";
    v2[4] += 17;
  }

  else
  {
    v4 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_stackalloc\t", 0x11uLL);
    a2 = v4;
  }

  result = sub_298B8FC48(v2, a2, 0, 0, 0);
  v6 = v2[4];
  if (v2[3] == v6)
  {

    return sub_298B9BCEC(v2, "\n", 1uLL);
  }

  else
  {
    *v6 = 10;
    ++v2[4];
  }

  return result;
}

uint64_t sub_298C9F678(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = v2[4];
  if ((v2[3] - v3) <= 0x13)
  {
    v4 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_r19r20_x\t", 0x14uLL);
    a2 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = sub_298B8FC48(v2, a2, 0, 0, 0);
    v6 = v2[4];
    if (v2[3] == v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    *v6 = 10;
    ++v2[4];
    return result;
  }

  *(v3 + 16) = 158883632;
  *v3 = *"\t.seh_save_r19r20_x\t";
  v2[4] += 20;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  result = sub_298B8FC48(v2, -a2, 0, 0, 1);
  v6 = v2[4];
  if (v2[3] != v6)
  {
    goto LABEL_9;
  }

LABEL_4:

  return sub_298B9BCEC(v2, "\n", 1uLL);
}

uint64_t sub_298C9F77C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = v2[4];
  if (v2[3] - v3 <= 0xFuLL)
  {
    v4 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_fplr\t", 0x10uLL);
    a2 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = sub_298B8FC48(v2, a2, 0, 0, 0);
    v6 = v2[4];
    if (v2[3] == v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    *v6 = 10;
    ++v2[4];
    return result;
  }

  *v3 = *"\t.seh_save_fplr\t";
  v2[4] += 16;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  result = sub_298B8FC48(v2, -a2, 0, 0, 1);
  v6 = v2[4];
  if (v2[3] != v6)
  {
    goto LABEL_9;
  }

LABEL_4:

  return sub_298B9BCEC(v2, "\n", 1uLL);
}

uint64_t sub_298C9F874(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = v2[4];
  if ((v2[3] - v3) <= 0x11)
  {
    v4 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_fplr_x\t", 0x12uLL);
    a2 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = sub_298B8FC48(v2, a2, 0, 0, 0);
    v6 = v2[4];
    if (v2[3] == v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    *v6 = 10;
    ++v2[4];
    return result;
  }

  *(v3 + 16) = 2424;
  *v3 = *"\t.seh_save_fplr_x\t";
  v2[4] += 18;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  result = sub_298B8FC48(v2, -a2, 0, 0, 1);
  v6 = v2[4];
  if (v2[3] != v6)
  {
    goto LABEL_9;
  }

LABEL_4:

  return sub_298B9BCEC(v2, "\n", 1uLL);
}

uint64_t sub_298C9F974(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0xFuLL)
  {
    *v5 = *"\t.seh_save_reg\tx";
    v4[4] += 16;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_reg\tx", 0x10uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298C9FAD0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x11)
  {
    *(v5 + 16) = 30729;
    *v5 = *"\t.seh_save_reg_x\tx";
    v4[4] += 18;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_reg_x\tx", 0x12uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298C9FC34(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x10)
  {
    *(v5 + 16) = 120;
    *v5 = *"\t.seh_save_regp\tx";
    v4[4] += 17;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_regp\tx", 0x11uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298C9FD98(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x12)
  {
    *(v5 + 15) = 2013886559;
    *v5 = *"\t.seh_save_regp_x\tx";
    v4[4] += 19;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_regp_x\tx", 0x13uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298C9FF00(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x12)
  {
    *(v5 + 15) = 2013885033;
    *v5 = *"\t.seh_save_lrpair\tx";
    v4[4] += 19;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_lrpair\tx", 0x13uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA0068(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x10)
  {
    *(v5 + 16) = 100;
    *v5 = *"\t.seh_save_freg\td";
    v4[4] += 17;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_freg\td", 0x11uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA01CC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x12)
  {
    *(v5 + 15) = 1678342239;
    *v5 = *"\t.seh_save_freg_x\td";
    v4[4] += 19;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_freg_x\td", 0x13uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA0334(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x11)
  {
    *(v5 + 16) = 25609;
    *v5 = *"\t.seh_save_fregp\td";
    v4[4] += 18;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_fregp\td", 0x12uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA0498(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x13)
  {
    *(v5 + 16) = 1678342239;
    *v5 = *"\t.seh_save_fregp_x\td";
    v4[4] += 20;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_fregp_x\td", 0x14uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA0600(uint64_t a1)
{
  result = *(a1 + 24);
  v2 = *(result + 32);
  if (*(result + 24) - v2 <= 0xCuLL)
  {
    return sub_298B9BCEC(result, "\t.seh_set_fp\n", 0xDuLL);
  }

  qmemcpy(v2, "\t.seh_set_fp\n", 13);
  *(result + 32) += 13;
  return result;
}

uint64_t sub_298CA064C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = v2[4];
  if (v2[3] - v3 > 0xCuLL)
  {
    qmemcpy(v3, "\t.seh_add_fp\t", 13);
    v2[4] += 13;
  }

  else
  {
    v4 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_add_fp\t", 0xDuLL);
    a2 = v4;
  }

  result = sub_298B8FC48(v2, a2, 0, 0, 0);
  v6 = v2[4];
  if (v2[3] == v6)
  {

    return sub_298B9BCEC(v2, "\n", 1uLL);
  }

  else
  {
    *v6 = 10;
    ++v2[4];
  }

  return result;
}

uint64_t sub_298CA0724(uint64_t a1)
{
  result = *(a1 + 24);
  v2 = *(result + 32);
  if ((*(result + 24) - v2) <= 9)
  {
    return sub_298B9BCEC(result, "\t.seh_nop\n", 0xAuLL);
  }

  *(v2 + 8) = 2672;
  *v2 = *"\t.seh_nop\n";
  *(result + 32) += 10;
  return result;
}

double sub_298CA0770(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 32);
  if (*(v1 + 24) - v2 > 0xFuLL)
  {
    result = *"\t.seh_save_next\n";
    *v2 = *"\t.seh_save_next\n";
    *(v1 + 32) += 16;
  }

  else
  {
    sub_298B9BCEC(v1, "\t.seh_save_next\n", 0x10uLL);
  }

  return result;
}

double sub_298CA07B4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 32);
  if ((*(v1 + 24) - v2) > 0x11)
  {
    *(v2 + 16) = 2661;
    result = *"\t.seh_endprologue\n";
    *v2 = *"\t.seh_endprologue\n";
    *(v1 + 32) += 18;
  }

  else
  {
    sub_298B9BCEC(v1, "\t.seh_endprologue\n", 0x12uLL);
  }

  return result;
}

double sub_298CA0800(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 32);
  if ((*(v1 + 24) - v2) > 0x13)
  {
    *(v2 + 16) = 174421351;
    result = *"\t.seh_startepilogue\n";
    *v2 = *"\t.seh_startepilogue\n";
    *(v1 + 32) += 20;
  }

  else
  {
    sub_298B9BCEC(v1, "\t.seh_startepilogue\n", 0x14uLL);
  }

  return result;
}

double sub_298CA0850(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 32);
  if ((*(v1 + 24) - v2) > 0x11)
  {
    *(v2 + 16) = 2661;
    result = *"\t.seh_endepilogue\n";
    *v2 = *"\t.seh_endepilogue\n";
    *(v1 + 32) += 18;
  }

  else
  {
    sub_298B9BCEC(v1, "\t.seh_endepilogue\n", 0x12uLL);
  }

  return result;
}

double sub_298CA089C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 32);
  if ((*(v1 + 24) - v2) > 0x10)
  {
    *(v2 + 16) = 10;
    result = *"\t.seh_trap_frame\n";
    *v2 = *"\t.seh_trap_frame\n";
    *(v1 + 32) += 17;
  }

  else
  {
    sub_298B9BCEC(v1, "\t.seh_trap_frame\n", 0x11uLL);
  }

  return result;
}

double sub_298CA08E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 32);
  if (*(v1 + 24) - v2 > 0xFuLL)
  {
    result = *"\t.seh_pushframe\n";
    *v2 = *"\t.seh_pushframe\n";
    *(v1 + 32) += 16;
  }

  else
  {
    sub_298B9BCEC(v1, "\t.seh_pushframe\n", 0x10uLL);
  }

  return result;
}

uint64_t sub_298CA092C(uint64_t a1)
{
  result = *(a1 + 24);
  v2 = *(result + 32);
  if (*(result + 24) - v2 <= 0xDuLL)
  {
    return sub_298B9BCEC(result, "\t.seh_context\n", 0xEuLL);
  }

  qmemcpy(v2, "\t.seh_context\n", 14);
  *(result + 32) += 14;
  return result;
}

double sub_298CA0978(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 32);
  if ((*(v1 + 24) - v2) > 0x10)
  {
    *(v2 + 16) = 10;
    result = *"\t.seh_ec_context\n";
    *v2 = *"\t.seh_ec_context\n";
    *(v1 + 32) += 17;
  }

  else
  {
    sub_298B9BCEC(v1, "\t.seh_ec_context\n", 0x11uLL);
  }

  return result;
}

double sub_298CA09C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 32);
  if (*(v1 + 24) - v2 > 0x1BuLL)
  {
    qmemcpy(v2, "\t.seh_clear_unwound_to_call\n", 28);
    result = *"unwound_to_call\n";
    *(v1 + 32) += 28;
  }

  else
  {
    sub_298B9BCEC(v1, "\t.seh_clear_unwound_to_call\n", 0x1CuLL);
  }

  return result;
}

double sub_298CA0A10(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 32);
  if ((*(v1 + 24) - v2) > 0x11)
  {
    *(v2 + 16) = 2674;
    result = *"\t.seh_pac_sign_lr\n";
    *v2 = *"\t.seh_pac_sign_lr\n";
    *(v1 + 32) += 18;
  }

  else
  {
    sub_298B9BCEC(v1, "\t.seh_pac_sign_lr\n", 0x12uLL);
  }

  return result;
}

uint64_t sub_298CA0A5C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x13)
  {
    *(v5 + 16) = 2013882213;
    *v5 = *"\t.seh_save_any_reg\tx";
    v4[4] += 20;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg\tx", 0x14uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA0BC4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0x15uLL)
  {
    qmemcpy(v5, "\t.seh_save_any_reg_p\tx", 22);
    v4[4] += 22;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg_p\tx", 0x16uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA0D28(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x13)
  {
    *(v5 + 16) = 1678337893;
    *v5 = *"\t.seh_save_any_reg\td";
    v4[4] += 20;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg\td", 0x14uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA0E90(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0x15uLL)
  {
    qmemcpy(v5, "\t.seh_save_any_reg_p\td", 22);
    v4[4] += 22;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg_p\td", 0x16uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA0FF4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if ((v4[3] - v5) > 0x13)
  {
    *(v5 + 16) = 1896441701;
    *v5 = *"\t.seh_save_any_reg\tq";
    v4[4] += 20;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg\tq", 0x14uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA115C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0x15uLL)
  {
    qmemcpy(v5, "\t.seh_save_any_reg_p\tq", 22);
    v4[4] += 22;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg_p\tq", 0x16uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA12C0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0x15uLL)
  {
    qmemcpy(v5, "\t.seh_save_any_reg_x\tx", 22);
    v4[4] += 22;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg_x\tx", 0x16uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA1424(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0x16uLL)
  {
    qmemcpy(v5, "\t.seh_save_any_reg_px\tx", 23);
    v4[4] += 23;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg_px\tx", 0x17uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA1588(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0x15uLL)
  {
    qmemcpy(v5, "\t.seh_save_any_reg_x\td", 22);
    v4[4] += 22;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg_x\td", 0x16uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA16EC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0x16uLL)
  {
    qmemcpy(v5, "\t.seh_save_any_reg_px\td", 23);
    v4[4] += 23;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg_px\td", 0x17uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA1850(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0x15uLL)
  {
    qmemcpy(v5, "\t.seh_save_any_reg_x\tq", 22);
    v4[4] += 22;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg_x\tq", 0x16uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

uint64_t sub_298CA19B4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 24);
  v5 = v4[4];
  if (v4[3] - v5 > 0x16uLL)
  {
    qmemcpy(v5, "\t.seh_save_any_reg_px\tq", 23);
    v4[4] += 23;
  }

  else
  {
    v6 = a2;
    sub_298B9BCEC(*(a1 + 24), "\t.seh_save_any_reg_px\tq", 0x17uLL);
    a2 = v6;
  }

  sub_298B8FC48(v4, a2, 0, 0, 0);
  v7 = v4[4];
  if (v4[3] - v7 <= 1uLL)
  {
    sub_298B9BCEC(v4, ", ", 2uLL);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_298B8FC48(v4, a3, 0, 0, 0);
    v9 = v4[4];
    if (v4[3] == v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v9 = 10;
    ++v4[4];
    return result;
  }

  *v7 = 8236;
  v4[4] += 2;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  result = sub_298B8FC48(v4, -a3, 0, 0, 1);
  v9 = v4[4];
  if (v4[3] != v9)
  {
    goto LABEL_12;
  }

LABEL_7:

  return sub_298B9BCEC(v4, "\n", 1uLL);
}

void *sub_298CA1B18(void *a1)
{
  *a1 = &unk_2A1F20A28;
  MEMORY[0x29C2945E0](a1[722], 8);

  return sub_298B438A4(a1);
}

void sub_298CA1B74(void *a1)
{
  *a1 = &unk_2A1F20A28;
  MEMORY[0x29C2945E0](a1[722], 8);
  sub_298B438A4(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298CA1BE4(uint64_t a1)
{
  *(a1 + 5768) = 0;
  *(a1 + 5712) = 0;
  *(a1 + 5728) = 0;
  v2 = *(a1 + 304);
  if (v2)
  {
    sub_298B23F7C(v2);
  }

  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  v3 = *(a1 + 368);
  if (v3 || *(a1 + 372))
  {
    v4 = *(a1 + 376);
    if (v4 <= 4 * v3 || v4 < 0x41)
    {
      if (v4)
      {
        v5 = *(a1 + 360);
        v6 = (v4 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v7 = v5;
        if (v6 <= 2)
        {
          goto LABEL_13;
        }

        v8 = v6 + 1;
        v7 = &v5->i64[v8 & 0x3FFFFFFFFFFFFFFCLL];
        v9 = v5 + 1;
        v10 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v11 = v8 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v9[-1] = v10;
          *v9 = v10;
          v9 += 2;
          v11 -= 4;
        }

        while (v11);
        if (v8 != (v8 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_13:
          v12 = &v5->i64[v4];
          do
          {
            *v7++ = -4096;
          }

          while (v7 != v12);
        }
      }

      *(a1 + 368) = 0;
    }

    else
    {
      sub_298B313C4((a1 + 360));
    }
  }

  *(a1 + 392) = 0;
  v13.n128_f64[0] = sub_298B5A768(a1);
  v14 = (a1 + 5776);
  v15 = *(a1 + 5784);
  if (v15)
  {
    v16 = *(a1 + 5792);
    if (v16 > 4 * v15 && v16 >= 0x41)
    {
      v17 = 1 << (33 - __clz(v15 - 1));
      if (v17 <= 64)
      {
        v18 = 64;
      }

      else
      {
        v18 = v17;
      }

      if (v18 == v16)
      {
        *(a1 + 5784) = 0;
        v19 = *(a1 + 5776);
        v20 = (v16 - 1) & 0xFFFFFFFFFFFFFFFLL;
        if (v20)
        {
          v21 = v20 + 1;
          v22 = (v20 + 1) & 0x1FFFFFFFFFFFFFFELL;
          v23 = (v19 + 16 * v22);
          v24 = (v19 + 16);
          v25 = v22;
          do
          {
            *(v24 - 2) = -4096;
            *v24 = -4096;
            v24 += 4;
            v25 -= 2;
          }

          while (v25);
          if (v21 == v22)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v23 = *(a1 + 5776);
        }

        v44 = (v19 + 16 * v16);
        do
        {
          *v23 = -4096;
          v23 += 2;
        }

        while (v23 != v44);
LABEL_27:
        *(a1 + 5800) = 0;
        return;
      }

      goto LABEL_31;
    }

LABEL_38:
    if (v16)
    {
      v36 = *v14;
      v37 = (v16 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v37)
      {
        v38 = v37 + 1;
        v39 = (v37 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v40 = &v36[2 * v39];
        v41 = v36 + 2;
        v42 = v39;
        do
        {
          *(v41 - 2) = -4096;
          *v41 = -4096;
          v41 += 4;
          v42 -= 2;
        }

        while (v42);
        if (v38 == v39)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v40 = *v14;
      }

      v43 = &v36[2 * v16];
      do
      {
        *v40 = -4096;
        v40 += 2;
      }

      while (v40 != v43);
    }

LABEL_47:
    *(a1 + 5784) = 0;
    *(a1 + 5800) = 0;
    return;
  }

  if (!*(a1 + 5788))
  {
    goto LABEL_27;
  }

  v16 = *(a1 + 5792);
  if (v16 <= 0x40)
  {
    goto LABEL_38;
  }

  v18 = 0;
LABEL_31:
  MEMORY[0x29C2945E0](*v14, 8, v13);
  if (v18)
  {
    v26 = (4 * v18 / 3u + 1) | ((4 * v18 / 3u + 1) >> 1);
    v27 = v26 | (v26 >> 2) | ((v26 | (v26 >> 2)) >> 4);
    LODWORD(v27) = (((v27 | (v27 >> 8)) >> 16) | v27 | (v27 >> 8)) + 1;
    *(a1 + 5792) = v27;
    v28 = operator new(16 * v27, 8uLL);
    *(a1 + 5776) = v28;
    *(a1 + 5784) = 0;
    v29 = *(a1 + 5792);
    if (v29)
    {
      v30 = (v29 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v30)
      {
        v31 = v30 + 1;
        v32 = (v30 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v33 = &v28[2 * v32];
        v34 = v28 + 2;
        v35 = v32;
        do
        {
          *(v34 - 2) = -4096;
          *v34 = -4096;
          v34 += 4;
          v35 -= 2;
        }

        while (v35);
        if (v31 == v32)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v33 = v28;
      }

      v45 = &v28[2 * v29];
      do
      {
        *v33 = -4096;
        v33 += 2;
      }

      while (v33 != v45);
    }

    goto LABEL_27;
  }

  *v14 = 0;
  *(a1 + 5784) = 0;
  *(a1 + 5792) = 0;
  *(a1 + 5800) = 0;
}

void sub_298CA1F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 152);
  if (!v3)
  {
    v4 = 0;
    v5 = *(a1 + 5800);
    v6 = *(a1 + 5792);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v4 = *(*(a1 + 144) + 32 * v3 - 16);
  v5 = *(a1 + 5800);
  v6 = *(a1 + 5792);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  v7 = *(a1 + 5776);
  v8 = v6 - 1;
  v9 = ((v4 >> 4) ^ (v4 >> 9)) & (v6 - 1);
  v10 = (v7 + 16 * v9);
  v11 = *v10;
  if (*v10 == v4)
  {
    goto LABEL_21;
  }

  v12 = 0;
  v13 = 1;
  while (v11 != -4096)
  {
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v11 == -8192;
    }

    if (v14)
    {
      v12 = v10;
    }

    v15 = v9 + v13++;
    v9 = v15 & v8;
    v10 = (v7 + 16 * (v15 & v8));
    v11 = *v10;
    if (*v10 == v4)
    {
      goto LABEL_21;
    }
  }

  if (v12)
  {
    v10 = v12;
  }

LABEL_15:
  v16 = *(a1 + 5784);
  if (4 * v16 + 4 >= 3 * v6)
  {
    v26 = a2;
    v27 = a3;
    v28 = a1;
    sub_298B67F2C((a1 + 5776), 2 * v6);
    v29 = *(v28 + 5776);
    v30 = *(v28 + 5792) - 1;
    v31 = v30 & ((v4 >> 4) ^ (v4 >> 9));
    v10 = (v29 + 16 * v31);
    v32 = *v10;
    if (*v10 == v4)
    {
      a1 = v28;
      v17 = v4;
      a3 = v27;
      a2 = v26;
      goto LABEL_18;
    }

    v40 = 0;
    v41 = 1;
    while (v32 != -4096)
    {
      if (v40)
      {
        v42 = 0;
      }

      else
      {
        v42 = v32 == -8192;
      }

      if (v42)
      {
        v40 = v10;
      }

      v43 = v31 + v41++;
      v31 = v43 & v30;
      v10 = (v29 + 16 * (v43 & v30));
      v32 = *v10;
      v17 = v4;
      a3 = v27;
      a2 = v26;
      a1 = v28;
      if (*v10 == v4)
      {
        goto LABEL_18;
      }
    }

    if (v40)
    {
      v10 = v40;
    }

    a3 = v27;
    a2 = v26;
    a1 = v28;
  }

  else if (v6 + ~v16 - *(a1 + 5788) <= v6 >> 3)
  {
    v33 = a2;
    v34 = a3;
    v35 = a1;
    sub_298B67F2C((a1 + 5776), v6);
    v36 = *(v35 + 5776);
    v37 = *(v35 + 5792) - 1;
    v38 = v37 & ((v4 >> 4) ^ (v4 >> 9));
    v10 = (v36 + 16 * v38);
    v39 = *v10;
    if (*v10 == v4)
    {
      a1 = v35;
      v17 = v4;
      a3 = v34;
      a2 = v33;
      goto LABEL_18;
    }

    v44 = 0;
    v45 = 1;
    while (v39 != -4096)
    {
      if (v44)
      {
        v46 = 0;
      }

      else
      {
        v46 = v39 == -8192;
      }

      if (v46)
      {
        v44 = v10;
      }

      v47 = v38 + v45++;
      v38 = v47 & v37;
      v10 = (v36 + 16 * (v47 & v37));
      v39 = *v10;
      v17 = v4;
      a3 = v34;
      a2 = v33;
      a1 = v35;
      if (*v10 == v4)
      {
        goto LABEL_18;
      }
    }

    if (v44)
    {
      v10 = v44;
    }

    a3 = v34;
    a2 = v33;
    a1 = v35;
  }

  v17 = *v10;
LABEL_18:
  ++*(a1 + 5784);
  if (v17 != -4096)
  {
    --*(a1 + 5788);
  }

  *v10 = v4;
  *(v10 + 2) = 0;
LABEL_21:
  *(v10 + 2) = v5;
  v18 = *(a1 + 5792);
  if (v18)
  {
    v19 = *(a1 + 5776);
    v20 = v18 - 1;
    v21 = (v18 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v22 = *(v19 + 16 * v21);
    if (v22 == a2)
    {
LABEL_23:
      v23 = *(v19 + 16 * v21 + 8);
      goto LABEL_29;
    }

    v24 = 1;
    while (v22 != -4096)
    {
      v25 = v21 + v24++;
      v21 = v25 & v20;
      v22 = *(v19 + 16 * v21);
      if (v22 == a2)
      {
        goto LABEL_23;
      }
    }
  }

  v23 = 0;
LABEL_29:
  *(a1 + 5800) = v23;

  sub_298B40B38(a1, a2, a3);
}

void sub_298CA2240(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 5800) != 2)
  {
    v16 = v3;
    v17 = v4;
    v5 = *(a1 + 8);
    v13 = 773;
    v12[0] = "$d";
    v12[1] = 2;
    v12[2] = ".";
    v6 = *(a1 + 5768);
    *(a1 + 5768) = v6 + 1;
    v11 = v6;
    v14[0] = v12;
    v14[2] = &v11;
    v15 = 3586;
    v7 = a2;
    v8 = a1;
    v9 = a3;
    v10 = sub_298B2D288(v5, v14);
    (*(*v8 + 192))(v8, v10, 0);
    a1 = v8;
    a2 = v7;
    a3 = v9;
    *(v10 + 8) = *(v10 + 8) & 0xFFFFEFE0FFFFFFDFLL | 0x100000000000;
    v8[1450] = 2;
    v4 = v17;
  }

  sub_298B4EBA4(a1, a2, a3);
}

void sub_298CA2354(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  if (*(a1 + 5800) != 2)
  {
    v8 = *(a1 + 8);
    v13 = 773;
    v12[0] = "$d";
    v12[1] = 2;
    v12[2] = ".";
    v9 = *(a1 + 5768);
    *(a1 + 5768) = v9 + 1;
    v11 = v9;
    v14[0] = v12;
    v14[2] = &v11;
    v15 = 3586;
    v10 = sub_298B2D288(v8, v14);
    (*(*a1 + 192))(a1, v10, 0);
    *(v10 + 8) = *(v10 + 8) & 0xFFFFEFE0FFFFFFDFLL | 0x100000000000;
    *(a1 + 5800) = 2;
  }

  if (*(*(*(a1 + 144) + 32 * *(a1 + 152) - 32) + 36))
  {
    sub_298B868A8("Emitting values inside a locked bundle is forbidden", 1);
  }

  sub_298B41878(a1, a2);

  sub_298B4BB98(a1, a2, a3, a4);
}

void sub_298CA24A0(uint64_t a1)
{
  if (*(a1 + 5800) != 2)
  {
    v12 = v1;
    v13 = v2;
    v3 = *(a1 + 8);
    v9 = 773;
    v8[0] = "$d";
    v8[1] = 2;
    v8[2] = ".";
    v4 = *(a1 + 5768);
    *(a1 + 5768) = v4 + 1;
    v7 = v4;
    v10[0] = v8;
    v10[2] = &v7;
    v11 = 3586;
    v5 = a1;
    v6 = sub_298B2D288(v3, v10);
    (*(*v5 + 192))(v5, v6, 0);
    a1 = v5;
    *(v6 + 8) = *(v6 + 8) & 0xFFFFEFE0FFFFFFDFLL | 0x100000000000;
    v5[1450] = 2;
    v2 = v13;
  }

  sub_298B5096C(a1);
}

uint64_t sub_298CA25BC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a1 + 5800) != 1)
  {
    v3 = *(a1 + 8);
    v12 = 773;
    v11[0] = "$x";
    v11[1] = 2;
    v11[2] = ".";
    v4 = *(a1 + 5768);
    *(a1 + 5768) = v4 + 1;
    v10 = v4;
    v13[0] = v11;
    v13[2] = &v10;
    v14 = 3586;
    v5 = a2;
    v6 = a1;
    v7 = a3;
    v8 = sub_298B2D288(v3, v13);
    (*(*v6 + 192))(v6, v8, 0);
    a1 = v6;
    a2 = v5;
    a3 = v7;
    *(v8 + 8) = *(v8 + 8) & 0xFFFFEFE0FFFFFFDFLL | 0x100000000000;
    v6[1450] = 1;
  }

  return sub_298B4D0D0(a1, a2, a3);
}

char *sub_298CA26C0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = dword_298D237B8[v2];
  if (v3 | (dword_298D2B664[v2] << 32))
  {
    return &aSha1su0[(v3 & 0x3FFF) - 1];
  }

  else
  {
    return 0;
  }
}

void sub_298CA2700(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  sub_298B00584(a5, "\t");
  v10 = (*(*a1 + 24))(a1, a2);
  v12 = v11;
  sub_298B00584(a5, v10);
  switch((v12 >> 14) & 0x7F)
  {
    case 1uLL:
      v13 = *(a2 + 16);
      v14 = a1;
      v15 = 0;
      goto LABEL_97;
    case 2uLL:
      sub_298CAA1C8(a1, *(a2 + 16), 0, a5);
      goto LABEL_103;
    case 3uLL:
      sub_298CAA308(a1, *(a2 + 16), 0, a5);
      goto LABEL_103;
    case 4uLL:
      sub_298CAA448(a1, *(a2 + 16), 0, a5);
      goto LABEL_88;
    case 5uLL:
      sub_298CAA588(a1, *(a2 + 16), 0, a5);
      goto LABEL_103;
    case 6uLL:
      v40 = *(a2 + 16);
      v41 = a1[49];
      v42 = a1[48];
      v43 = 0;
      goto LABEL_68;
    case 7uLL:
      sub_298CAA78C(a1, *(*(a2 + 16) + 8), a5);
      sub_298B00584(a5, ", ");
      sub_298CAA7BC(a1, *(a2 + 16), 2u, a5);
      v29 = "/m, ";
      sub_298B00584(a5, "/m, ");
      v30 = *(a2 + 16);
      v31 = a1;
      v32 = 3;
      goto LABEL_65;
    case 8uLL:
      v40 = *(a2 + 16);
      v41 = a1[49];
      v42 = a1[48];
      v43 = 1;
LABEL_68:
      sub_298CAA6C8(v42, v41, v40, v43, a5);
      goto LABEL_103;
    case 9uLL:
      sub_298CAA7EC(a1, a2, 0, a5);
      goto LABEL_88;
    case 0xAuLL:
      sub_298CAA8A4(a1, a2, 0, a5);
      goto LABEL_88;
    case 0xBuLL:
      sub_298CAA95C(a1, a2, 0, a5);
      goto LABEL_88;
    case 0xCuLL:
      sub_298CAAA14(a1, a2, 0, a5);
      goto LABEL_88;
    case 0xDuLL:
      sub_298CAAACC(a1, *(a2 + 16), 0, a5);
      goto LABEL_74;
    case 0xEuLL:
      sub_298CAAC18(a1, *(*(a2 + 16) + 8), a5);
      goto LABEL_74;
    case 0xFuLL:
      sub_298CAACB4(a1, *(a2 + 16), 0, a5);
      sub_298B00584(a5, ", ");
      sub_298CAA7BC(a1, *(a2 + 16), 1u, a5);
      sub_298B00584(a5, ", ");
LABEL_44:
      v25 = *(a2 + 16);
      v26 = a1;
      v27 = 2;
LABEL_737:

      sub_298CAA1C8(v26, v25, v27, a5);
      return;
    case 0x10uLL:
      sub_298CAACE8(a1, *(a2 + 16), 0, a5);
      goto LABEL_64;
    case 0x11uLL:
      sub_298CAAD1C(a1, *(a2 + 16), 0, a5);
      goto LABEL_64;
    case 0x12uLL:
      sub_298CAAD50(a1, *(a2 + 16), 0, a5);
LABEL_64:
      v29 = ", ";
      sub_298B00584(a5, ", ");
      v30 = *(a2 + 16);
      v31 = a1;
      v32 = 1;
LABEL_65:
      sub_298CAA7BC(v31, v30, v32, a5);
      v44 = a5;
      v45 = v29;
      goto LABEL_102;
    case 0x13uLL:
      v13 = *(a2 + 16);
      v14 = a1;
      v15 = 1;
      goto LABEL_97;
    case 0x14uLL:
      v36 = a1;
      v37 = a2;
      v38 = a3;
      v39 = 0;
      goto LABEL_208;
    case 0x15uLL:
      sub_298CAB004(*(a2 + 16), 0, a5);
      sub_298B00584(a5, "\t");
LABEL_207:
      v36 = a1;
      v37 = a2;
      v38 = a3;
      v39 = 1;
LABEL_208:

      sub_298CAAD84(v36, v37, v38, v39, a5);
      return;
    case 0x16uLL:
      sub_298CAB04C(a1, *(*(a2 + 16) + 8), a5);
LABEL_74:
      sub_298CAAB6C(a5, 91);
      sub_298CAA168(a1, *(a2 + 16), 2u, a5);
      goto LABEL_88;
    case 0x17uLL:
      v46 = *(a2 + 16);
      v47 = a1[49];
      v48 = a1[48];

      sub_298CAB0E8(v48, v47, v46, a5);
      return;
    case 0x18uLL:
      sub_298CAB174(a1, *(a2 + 16), 1u, a5);
      sub_298B00584(a5, ", ");
      sub_298CAB174(a1, *(a2 + 16), 2u, a5);
      goto LABEL_41;
    case 0x19uLL:
      sub_298CAB2F8(a1, *(a2 + 16), 1u, a5);
      sub_298B00584(a5, ", ");
      sub_298CAB2F8(a1, *(a2 + 16), 2u, a5);
LABEL_41:
      sub_298B00584(a5, ", [");
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 3;
      goto LABEL_271;
    case 0x1AuLL:
      sub_298CAA168(a1, *(a2 + 16), 3u, a5);
      sub_298B00584(a5, "]!, [");
      sub_298CAA168(a1, *(a2 + 16), 4u, a5);
      sub_298B00584(a5, "]!, ");
      sub_298CAA168(a1, *(a2 + 16), 5u, a5);
      v50 = a5;
      v51 = 33;
      goto LABEL_273;
    case 0x1BuLL:
      v17 = *a2;
      v18 = *(*(a2 + 16) + 8);

      sub_298CAB47C(a1, v17, v18, a5);
      return;
    case 0x1CuLL:
      v49 = *(*(a2 + 16) + 8);

      sub_298CAB6A0(a1, v49, a5);
      return;
    case 0x1DuLL:
      sub_298CAB860(a1, *(a2 + 16), 0, a5);
      goto LABEL_88;
    case 0x1EuLL:
      sub_298CAB9A0(a1, a2, 0, a5);
      goto LABEL_88;
    case 0x1FuLL:
      v33 = *(a2 + 16);
      v34 = a1;
      v35 = 0;
LABEL_49:

      sub_298CABA58(v34, v33, v35, a5);
      return;
    case 0x20uLL:
      sub_298CABB58(*(a2 + 16), 0, a5);
      goto LABEL_71;
    case 0x21uLL:
      sub_298CABD60(*(a2 + 16), 0, a5);
LABEL_71:
      sub_298CAAB6C(a5, 91);
      goto LABEL_103;
    case 0x22uLL:
      sub_298CAA7EC(a1, a2, 0, a5);
      goto LABEL_103;
    case 0x23uLL:
      sub_298CABF68(a1, a2, 0, a5);
      goto LABEL_76;
    case 0x24uLL:
      sub_298CABF68(a1, a2, 1u, a5);
      goto LABEL_99;
    case 0x25uLL:
      sub_298CAC090(a1, a2, 0, a5);
      goto LABEL_76;
    case 0x26uLL:
      sub_298CAC090(a1, a2, 1u, a5);
      goto LABEL_99;
    case 0x27uLL:
      sub_298CAC1B0(a1, a2, 0, a5);
      goto LABEL_76;
    case 0x28uLL:
      sub_298CAC1B0(a1, a2, 1u, a5);
      goto LABEL_99;
    case 0x29uLL:
      sub_298CAC2D0(a1, a2, 0, a5);
      goto LABEL_76;
    case 0x2AuLL:
      sub_298CAC2D0(a1, a2, 1u, a5);
      goto LABEL_99;
    case 0x2BuLL:
      sub_298CAC3F0(a1, a2, 0, a5);
      goto LABEL_76;
    case 0x2CuLL:
      sub_298CAC3F0(a1, a2, 1u, a5);
      goto LABEL_99;
    case 0x2DuLL:
      sub_298CAC510(a1, a2, 0, a5);
      goto LABEL_76;
    case 0x2EuLL:
      sub_298CAC510(a1, a2, 1u, a5);
      goto LABEL_99;
    case 0x2FuLL:
      sub_298CAC630(a1, a2, 0, a5);
      goto LABEL_76;
    case 0x30uLL:
      sub_298CAC630(a1, a2, 1u, a5);
      goto LABEL_99;
    case 0x31uLL:
      sub_298CAC750(a1, a2, 0, a5);
      goto LABEL_76;
    case 0x32uLL:
      sub_298CAC750(a1, a2, 1u, a5);
LABEL_99:
      sub_298B00584(a5, ", [");
      v52 = *(a2 + 16);
      v53 = a1;
      v54 = 2;
      goto LABEL_100;
    case 0x33uLL:
      sub_298CAA95C(a1, a2, 0, a5);
      goto LABEL_103;
    case 0x34uLL:
      sub_298CAA95C(a1, a2, 1u, a5);
      goto LABEL_96;
    case 0x35uLL:
      sub_298CAA95C(a1, a2, 2u, a5);
      goto LABEL_94;
    case 0x36uLL:
      sub_298CAAA14(a1, a2, 1u, a5);
      goto LABEL_96;
    case 0x37uLL:
      sub_298CAAA14(a1, a2, 2u, a5);
      goto LABEL_94;
    case 0x38uLL:
      sub_298CAA8A4(a1, a2, 1u, a5);
      goto LABEL_96;
    case 0x39uLL:
      sub_298CAA8A4(a1, a2, 2u, a5);
      goto LABEL_94;
    case 0x3AuLL:
      sub_298CAA7EC(a1, a2, 1u, a5);
LABEL_96:
      sub_298CAC870(a2, 2u, a5);
      sub_298B00584(a5, ", [");
      v13 = *(a2 + 16);
      v14 = a1;
      v15 = 3;
      goto LABEL_97;
    case 0x3BuLL:
      sub_298CAA7EC(a1, a2, 2u, a5);
LABEL_94:
      sub_298CAC870(a2, 3u, a5);
      sub_298B00584(a5, ", [");
      v52 = *(a2 + 16);
      v53 = a1;
      v54 = 4;
LABEL_100:
      sub_298CAA168(v53, v52, v54, a5);
      v45 = "], ";
      goto LABEL_101;
    case 0x3CuLL:
      sub_298CAC9CC(a1, *(a2 + 16), 0, a5);
LABEL_76:
      sub_298B00584(a5, ", [");
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 1;
      goto LABEL_271;
    case 0x3DuLL:
      v13 = *(a2 + 16);
      v14 = a1;
      v15 = 2;
LABEL_97:
      sub_298CAA168(v14, v13, v15, a5);
      goto LABEL_103;
    case 0x3EuLL:
      sub_298CAA7BC(a1, *(a2 + 16), 0, a5);
      goto LABEL_103;
    case 0x3FuLL:
      sub_298CAA78C(a1, *(*(a2 + 16) + 8), a5);
      sub_298CAAB6C(a5, 91);
      sub_298CAA168(a1, *(a2 + 16), 1u, a5);
      sub_298B00584(a5, ", ");
      sub_298CACA88(*(a2 + 16), 2u, a5);
      sub_298B00584(a5, "], [");
      sub_298CAA168(a1, *(a2 + 16), 3u, a5);
      sub_298B00584(a5, ", ");
      sub_298CAA168(a1, *(a2 + 16), 4u, a5);
      v28 = ", mul vl]";
      goto LABEL_631;
    case 0x40uLL:
      sub_298CAB2F8(a1, *(a2 + 16), 0, a5);
      sub_298B00584(a5, ", ");
LABEL_204:
      v119 = *(*(a2 + 16) + 24);

      sub_298CACAF0(v119, a4, a5);
      return;
    case 0x41uLL:
      sub_298CACE90(*(*(a2 + 16) + 8), a4, a5);
LABEL_88:
      v45 = ", ";
      goto LABEL_101;
    case 0x42uLL:
      sub_298CAD230(a1, *(*(a2 + 16) + 8), a4, a5);
      goto LABEL_25;
    case 0x43uLL:
      sub_298CAD57C(*(*(a2 + 16) + 8), a5);
LABEL_25:
      sub_298B00584(a5, ", ");
      v19 = *(a2 + 16);
      v20 = a1;
      v21 = 1;
LABEL_512:

      sub_298CAA168(v20, v19, v21, a5);
      return;
    case 0x44uLL:
      sub_298CAD638(a1, *(a2 + 16), 0, a5);
      sub_298B00584(a5, ", ");
      sub_298CAA7BC(a1, *(a2 + 16), 1u, a5);
      v45 = ", [";
LABEL_101:
      v44 = a5;
LABEL_102:
      sub_298B00584(v44, v45);
      goto LABEL_103;
    case 0x45uLL:
      sub_298CAD864(a1, *(a2 + 16), 0, a4, a5);
      goto LABEL_103;
    case 0x46uLL:
      sub_298CADACC(*(a2 + 16), 0, a5);
      goto LABEL_103;
    case 0x47uLL:
      sub_298CADB9C(*(a2 + 16), 0, a5);
      goto LABEL_103;
    case 0x48uLL:
      sub_298CADC6C(*(a2 + 16), 0, a5);
      goto LABEL_103;
    case 0x49uLL:
      sub_298CADD3C(*(a2 + 16), 0, a5);
LABEL_103:
      switch((v12 >> 21) & 0x7F)
      {
        case 1uLL:
          goto LABEL_200;
        case 2uLL:
          sub_298CAA7BC(a1, *(a2 + 16), 2u, a5);
          v55 = "/m, ";
          goto LABEL_201;
        case 3uLL:
          v55 = ".16b, ";
          goto LABEL_201;
        case 4uLL:
          v55 = ".2s, ";
          goto LABEL_201;
        case 5uLL:
          v55 = ".2d, ";
          goto LABEL_201;
        case 6uLL:
          v55 = ".4h, ";
          goto LABEL_201;
        case 7uLL:
          v55 = ".4s, ";
          goto LABEL_201;
        case 8uLL:
          v55 = ".8h, ";
          goto LABEL_201;
        case 9uLL:
          v55 = ".8b, ";
          goto LABEL_201;
        case 0xAuLL:
          v94 = *(a2 + 16);
          v95 = a1;
          v96 = 4;
          goto LABEL_167;
        case 0xBuLL:
          v82 = *(a2 + 16);
          v83 = a1;
          v84 = 4;
          goto LABEL_152;
        case 0xCuLL:
          v82 = *(a2 + 16);
          v83 = a1;
          v84 = 1;
          goto LABEL_152;
        case 0xDuLL:
          v82 = *(a2 + 16);
          v83 = a1;
          v84 = 2;
LABEL_152:
          sub_298CAA588(v83, v82, v84, a5);
          goto LABEL_202;
        case 0xEuLL:
          sub_298CAA7BC(a1, *(a2 + 16), 1u, a5);
          goto LABEL_202;
        case 0xFuLL:
          sub_298CAA7EC(a1, a2, 1u, a5);
          goto LABEL_202;
        case 0x10uLL:
          sub_298CAA8A4(a1, a2, 1u, a5);
          goto LABEL_202;
        case 0x11uLL:
          sub_298CAA95C(a1, a2, 1u, a5);
          goto LABEL_202;
        case 0x12uLL:
          sub_298CAAA14(a1, a2, 1u, a5);
          goto LABEL_202;
        case 0x13uLL:
          goto LABEL_114;
        case 0x14uLL:
          v109 = *(a2 + 16);
          v110 = a1;
          v111 = 1;
          goto LABEL_189;
        case 0x15uLL:
          v55 = ", [";
          goto LABEL_201;
        case 0x16uLL:
          v94 = *(a2 + 16);
          v95 = a1;
          v96 = 2;
LABEL_167:
          sub_298CAA308(v95, v94, v96, a5);
          goto LABEL_202;
        case 0x17uLL:
          v109 = *(a2 + 16);
          v110 = a1;
          v111 = 2;
LABEL_189:
          sub_298CAA448(v110, v109, v111, a5);
          goto LABEL_202;
        case 0x18uLL:
          v70 = *(a2 + 16);
          v71 = a1;
          v72 = 1;
          goto LABEL_128;
        case 0x19uLL:
          sub_298CAE560(a1, *(a2 + 16), 3u, a5);
          goto LABEL_202;
        case 0x1AuLL:
          sub_298CAA448(a1, *(a2 + 16), 4u, a5);
          sub_298B00584(a5, ", ");
          v112 = *(a2 + 16);
          v113 = a1;
          v114 = 5;
LABEL_733:

          sub_298CAA448(v113, v112, v114, a5);
          return;
        case 0x1BuLL:
LABEL_306:
          sub_298CAE6A0(a1, *(a2 + 16), 2u, a5);
          sub_298B00584(a5, ", mul ");
          v19 = *(a2 + 16);
          v20 = a1;
          v21 = 3;
          goto LABEL_512;
        case 0x1CuLL:
          v100 = a1;
          v101 = a2;
          v102 = 1;
LABEL_453:

          sub_298CAE8C8(v100, v101, v102, a5);
          return;
        case 0x1DuLL:
          v64 = *(a2 + 16);
          v65 = a1;
          v66 = 1;
          goto LABEL_156;
        case 0x1EuLL:
          sub_298CAB860(a1, *(a2 + 16), 1u, a5);
          goto LABEL_202;
        case 0x1FuLL:
          sub_298CAACE8(a1, *(a2 + 16), 2u, a5);
          sub_298B00584(a5, ", ");
LABEL_625:
          v182 = *(a2 + 16);
          v183 = a1;
          v184 = 3;
          goto LABEL_626;
        case 0x20uLL:
          sub_298CAAD1C(a1, *(a2 + 16), 2u, a5);
          goto LABEL_202;
        case 0x21uLL:
          sub_298CAAD50(a1, *(a2 + 16), 2u, a5);
          sub_298B00584(a5, ", ");
LABEL_360:
          v178 = *(a2 + 16);
          v179 = a1;
          v180 = 3;
LABEL_361:

          sub_298CAA588(v179, v178, v180, a5);
          return;
        case 0x22uLL:
LABEL_629:
          v28 = ", #0.0";
          goto LABEL_631;
        case 0x23uLL:
          v70 = *(a2 + 16);
          v71 = a1;
          v72 = 2;
LABEL_128:
          sub_298CAA1C8(v71, v70, v72, a5);
          goto LABEL_202;
        case 0x24uLL:
LABEL_211:
          v120 = *(a2 + 16);
          v121 = a1;
          v122 = 1;
LABEL_369:

          sub_298CAEA7C(v121, v120, v122, a5);
          return;
        case 0x25uLL:
          sub_298CAEB3C(a1, *(a2 + 16), 3u, a5);
          goto LABEL_202;
        case 0x26uLL:
          sub_298CAA1C8(a1, *(a2 + 16), 4u, a5);
          sub_298B00584(a5, ", ");
          v25 = *(a2 + 16);
          v26 = a1;
          v27 = 5;
          goto LABEL_737;
        case 0x27uLL:
          v85 = ".d";
          goto LABEL_198;
        case 0x28uLL:
          sub_298CAEC7C(a1, *(a2 + 16), 1u, a5);
          goto LABEL_200;
        case 0x29uLL:
          v64 = *(a2 + 16);
          v65 = a1;
          v66 = 2;
LABEL_156:
          sub_298CAA168(v65, v64, v66, a5);
          goto LABEL_202;
        case 0x2AuLL:
          v85 = ".h";
          goto LABEL_198;
        case 0x2BuLL:
          v85 = ".s";
          goto LABEL_198;
        case 0x2CuLL:
          v85 = ".b";
LABEL_198:
          sub_298B00584(a5, v85);
          goto LABEL_199;
        case 0x2DuLL:
          sub_298CAED7C(*(*(a2 + 16) + 24), a5);
          goto LABEL_202;
        case 0x2EuLL:
          v86 = *(a2 + 16);

          sub_298CAEE00(a1, v86, a5);
          return;
        case 0x2FuLL:
          v79 = *(a2 + 16);
          v80 = a1;
          v81 = 3;
          goto LABEL_350;
        case 0x30uLL:
          v61 = *(a2 + 16);
          v62 = a1;
          v63 = 3;
          goto LABEL_277;
        case 0x31uLL:
          v106 = *(a2 + 16);
          v107 = a1;
          v108 = 3;
          goto LABEL_241;
        case 0x32uLL:
          v88 = *(a2 + 16);
          v89 = a1;
          v90 = 3;
          goto LABEL_282;
        case 0x33uLL:
          v73 = *(a2 + 16);
          v74 = a1;
          v75 = 3;
          goto LABEL_231;
        case 0x34uLL:
          v103 = *(a2 + 16);
          v104 = a1;
          v105 = 3;
          goto LABEL_376;
        case 0x35uLL:
          v115 = *(a2 + 16);

          sub_298CAEE58(a1, v115, a5);
          return;
        case 0x36uLL:
          v76 = *(a2 + 16);
          v77 = a1;
          v78 = 3;
          goto LABEL_317;
        case 0x37uLL:
          goto LABEL_272;
        case 0x38uLL:
          v103 = *(a2 + 16);
          v104 = a1;
          v105 = 5;
LABEL_376:

          sub_298CAEE4C(v104, v103, v105, a5);
          return;
        case 0x39uLL:
          v73 = *(a2 + 16);
          v74 = a1;
          v75 = 5;
LABEL_231:

          sub_298CAEE40(v74, v73, v75, a5);
          return;
        case 0x3AuLL:
          v106 = *(a2 + 16);
          v107 = a1;
          v108 = 5;
LABEL_241:

          sub_298CAEE28(v107, v106, v108, a5);
          return;
        case 0x3BuLL:
          v88 = *(a2 + 16);
          v89 = a1;
          v90 = 5;
LABEL_282:

          sub_298CAEE34(v89, v88, v90, a5);
          return;
        case 0x3CuLL:
          v61 = *(a2 + 16);
          v62 = a1;
          v63 = 5;
LABEL_277:

          sub_298CAEE1C(v62, v61, v63, a5);
          return;
        case 0x3DuLL:
          v97 = *(a2 + 16);
          v98 = a1;
          v99 = 3;
          goto LABEL_322;
        case 0x3EuLL:
          v67 = *(a2 + 16);
          v68 = a1;
          v69 = 3;
          goto LABEL_221;
        case 0x3FuLL:
          v91 = *(a2 + 16);
          v92 = a1;
          v93 = 3;
          goto LABEL_225;
        case 0x40uLL:
          v91 = *(a2 + 16);
          v92 = a1;
          v93 = 5;
LABEL_225:

          sub_298CAEE8C(v92, v91, v93, a5);
          return;
        case 0x41uLL:
          v67 = *(a2 + 16);
          v68 = a1;
          v69 = 5;
LABEL_221:

          sub_298CAEE80(v68, v67, v69, a5);
          return;
        case 0x42uLL:
          v76 = *(a2 + 16);
          v77 = a1;
          v78 = 5;
LABEL_317:

          sub_298CAEE68(v77, v76, v78, a5);
          return;
        case 0x43uLL:
          v97 = *(a2 + 16);
          v98 = a1;
          v99 = 5;
LABEL_322:

          sub_298CAEE74(v98, v97, v99, a5);
          return;
        case 0x44uLL:
          v79 = *(a2 + 16);
          v80 = a1;
          v81 = 5;
LABEL_350:

          sub_298CAEE10(v80, v79, v81, a5);
          return;
        case 0x45uLL:
          sub_298B00584(a5, "]!, ");
          sub_298CAA168(a1, *(a2 + 16), 3u, a5);
          sub_298B00584(a5, "!, ");
          v19 = *(a2 + 16);
          v20 = a1;
          v21 = 4;
          goto LABEL_512;
        case 0x46uLL:
          sub_298CABB58(*(a2 + 16), 2u, a5);
          goto LABEL_192;
        case 0x47uLL:
          sub_298CABD60(*(a2 + 16), 2u, a5);
LABEL_192:
          sub_298CAAB6C(a5, 91);
          sub_298CAA168(a1, *(a2 + 16), 3u, a5);
          goto LABEL_200;
        case 0x48uLL:
          sub_298CAAACC(a1, *(a2 + 16), 2u, a5);
          sub_298CAAB6C(a5, 91);
          sub_298CAA168(a1, *(a2 + 16), 3u, a5);
          sub_298B00584(a5, ", ");
          v59 = *(a2 + 16);
          v60 = 4;
          goto LABEL_213;
        case 0x49uLL:
          sub_298CABB58(*(a2 + 16), 1u, a5);
          goto LABEL_160;
        case 0x4AuLL:
          sub_298CABD60(*(a2 + 16), 1u, a5);
          goto LABEL_160;
        case 0x4BuLL:
          sub_298CAAACC(a1, *(a2 + 16), 1u, a5);
          sub_298CAAB6C(a5, 91);
          sub_298CAA168(a1, *(a2 + 16), 2u, a5);
          sub_298B00584(a5, ", ");
LABEL_114:
          v59 = *(a2 + 16);
          v60 = 3;
LABEL_213:
          sub_298CACA88(v59, v60, a5);
          goto LABEL_202;
        case 0x4CuLL:
LABEL_160:
          sub_298CAAB6C(a5, 91);
          goto LABEL_202;
        case 0x4DuLL:
          v123 = *(a2 + 16);
          v124 = a1;
          v125 = 1;
LABEL_216:

          sub_298CAB2F8(v124, v123, v125, a5);
          return;
        case 0x4EuLL:
LABEL_199:
          sub_298CAC870(a2, 2u, a5);
LABEL_200:
          v55 = ", ";
          goto LABEL_201;
        case 0x4FuLL:
          sub_298CAA308(a1, *(a2 + 16), 1u, a5);
LABEL_381:
          sub_298B00584(a5, ", ");
          v182 = *(a2 + 16);
          v183 = a1;
          v184 = 2;
LABEL_626:

          sub_298CAA308(v183, v182, v184, a5);
          return;
        case 0x50uLL:
          sub_298B00584(a5, ".1q, ");
          sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 1u, a5);
          goto LABEL_202;
        case 0x51uLL:
          v87 = *(a2 + 16);

          sub_298CAE6A0(a1, v87, 1u, a5);
          return;
        case 0x52uLL:
          v55 = ".1d, ";
          goto LABEL_201;
        case 0x53uLL:
          goto LABEL_105;
        case 0x54uLL:
          v55 = "], ";
LABEL_201:
          sub_298B00584(a5, v55);
LABEL_202:
          switch((v12 >> 28) & 0x7F)
          {
            case 1uLL:
              sub_298CAA7BC(a1, *(a2 + 16), 2u, a5);
              goto LABEL_295;
            case 2uLL:
LABEL_732:
              v112 = *(a2 + 16);
              v113 = a1;
              v114 = 3;
              goto LABEL_733;
            case 3uLL:
              v126 = *(a2 + 16);
              v127 = a1[49];
              v128 = a1[48];
              v129 = 1;
              goto LABEL_330;
            case 4uLL:
              v140 = *(a2 + 16);
              v141 = a1;
              v142 = 2;
              goto LABEL_293;
            case 5uLL:
              v160 = *(a2 + 16);
              v161 = a1;
              v162 = 2;
              goto LABEL_332;
            case 6uLL:
              return;
            case 7uLL:
              v146 = *(a2 + 16);
              v147 = a1;
              v148 = 1;
              goto LABEL_303;
            case 8uLL:
              goto LABEL_355;
            case 9uLL:
              v140 = *(a2 + 16);
              v141 = a1;
              v142 = 1;
LABEL_293:
              sub_298CAA308(v141, v140, v142, a5);
              goto LABEL_358;
            case 0xAuLL:
              v146 = *(a2 + 16);
              v147 = a1;
              v148 = 2;
LABEL_303:
              sub_298CAA448(v147, v146, v148, a5);
              goto LABEL_358;
            case 0xBuLL:
              goto LABEL_329;
            case 0xCuLL:
              sub_298CAA7BC(a1, *(a2 + 16), 1u, a5);
              goto LABEL_358;
            case 0xDuLL:
LABEL_295:
              v131 = "/m, ";
              goto LABEL_356;
            case 0xEuLL:
              v131 = ", vgx2], ";
              goto LABEL_356;
            case 0xFuLL:
              v131 = ", vgx4], ";
              goto LABEL_356;
            case 0x10uLL:
              sub_298CAA1C8(a1, *(a2 + 16), 1u, a5);
              goto LABEL_358;
            case 0x11uLL:
              v160 = *(a2 + 16);
              v161 = a1;
              v162 = 1;
LABEL_332:
              sub_298CAA588(v161, v160, v162, a5);
              goto LABEL_358;
            case 0x12uLL:

              sub_298CAEE98(a1, a2, a3, a5);
              return;
            case 0x13uLL:
              v116 = *(a2 + 16);
              v117 = a1;
              v118 = 2;
              goto LABEL_336;
            case 0x14uLL:
              goto LABEL_360;
            case 0x15uLL:
              v169 = a1;
              v170 = a2;
              v171 = 1;
LABEL_338:

              sub_298CAA95C(v169, v170, v171, a5);
              return;
            case 0x16uLL:
              v131 = "], ";
              goto LABEL_356;
            case 0x17uLL:
              sub_298CABA58(a1, *(a2 + 16), 2u, a5);
LABEL_334:
              v166 = *(a2 + 16);
              v167 = a1;
              v168 = 3;
LABEL_474:

              sub_298CAF0D0(v167, v166, v168, a5);
              return;
            case 0x18uLL:
              goto LABEL_207;
            case 0x19uLL:
              sub_298CAA1C8(a1, *(a2 + 16), 2u, a5);
              goto LABEL_355;
            case 0x1AuLL:
              v131 = "/z, ";
              goto LABEL_356;
            case 0x1BuLL:
              sub_298CAE6A0(a1, *(a2 + 16), 1u, a5);
              goto LABEL_358;
            case 0x1CuLL:
              sub_298CADACC(*(a2 + 16), 1u, a5);
              goto LABEL_263;
            case 0x1DuLL:
              sub_298CADB9C(*(a2 + 16), 1u, a5);
              goto LABEL_263;
            case 0x1EuLL:
              sub_298CADC6C(*(a2 + 16), 1u, a5);
              goto LABEL_263;
            case 0x1FuLL:
              sub_298CADD3C(*(a2 + 16), 1u, a5);
LABEL_263:
              sub_298B00584(a5, ", ");
              v149 = *(a2 + 16);
              v150 = 2;
LABEL_264:

              sub_298CAF24C(v149, v150, a5);
              return;
            case 0x20uLL:
              v100 = a1;
              v101 = a2;
              v102 = 3;
              goto LABEL_453;
            case 0x21uLL:
              v116 = *(a2 + 16);
              v117 = a1;
              v118 = 3;
              goto LABEL_336;
            case 0x22uLL:
              goto LABEL_306;
            case 0x23uLL:
              v151 = *(a2 + 16);
              v152 = a1[49];
              v153 = a1[48];
              v154 = 1;
LABEL_287:

              sub_298CAF308(v153, v152, v151, v154, a5);
              return;
            case 0x24uLL:
LABEL_487:
              v230 = a2;
              v231 = 2;
              goto LABEL_490;
            case 0x25uLL:
              v155 = a1;
              v156 = a2;
              v157 = 1;
LABEL_647:

              sub_298CAF4D8(v155, v156, v157, a5);
              return;
            case 0x26uLL:
              v163 = a1;
              v164 = a2;
              v165 = 1;
LABEL_519:

              sub_298CAFACC(v163, v164, v165, a5);
              return;
            case 0x27uLL:
              v132 = a1;
              v133 = a2;
              v134 = 1;
LABEL_546:

              sub_298CAFC80(v132, v133, v134, a5);
              return;
            case 0x28uLL:
LABEL_365:
              sub_298CABB58(*(a2 + 16), 3u, a5);
              goto LABEL_366;
            case 0x29uLL:
LABEL_364:
              sub_298CABD60(*(a2 + 16), 3u, a5);
LABEL_366:
              sub_298CAAB6C(a5, 91);
              sub_298CAA168(a1, *(a2 + 16), 4u, a5);
              sub_298B00584(a5, ", ");
              v158 = *(a2 + 16);
              v159 = 5;
              goto LABEL_367;
            case 0x2AuLL:
              sub_298CAA7EC(a1, a2, 1u, a5);
              goto LABEL_355;
            case 0x2BuLL:
LABEL_368:
              v120 = *(a2 + 16);
              v121 = a1;
              v122 = 3;
              goto LABEL_369;
            case 0x2CuLL:
              sub_298CAAA14(a1, a2, 1u, a5);
              goto LABEL_358;
            case 0x2DuLL:
              goto LABEL_625;
            case 0x2EuLL:
              goto LABEL_211;
            case 0x2FuLL:
              v131 = ",  vgx2], ";
              goto LABEL_356;
            case 0x30uLL:
              v131 = ",  vgx4], ";
              goto LABEL_356;
            case 0x31uLL:
              v131 = "/z, [";
              goto LABEL_356;
            case 0x32uLL:
              sub_298CAFE30(a1, *(a2 + 16), 1u, a5);
LABEL_355:
              v131 = ", ";
              goto LABEL_356;
            case 0x33uLL:
LABEL_372:
              v181 = *(a2 + 16);

              sub_298CAEC7C(a1, v181, 2u, a5);
              return;
            case 0x34uLL:
              v135 = *(a2 + 16);

              sub_298CAACB4(a1, v135, 2u, a5);
              return;
            case 0x35uLL:
              v172 = *(a2 + 16);

              sub_298CAACE8(a1, v172, 2u, a5);
              return;
            case 0x36uLL:
              v173 = *(a2 + 16);

              sub_298CAAD50(a1, v173, 2u, a5);
              return;
            case 0x37uLL:
              goto LABEL_229;
            case 0x38uLL:
              sub_298CAED7C(*(*(a2 + 16) + 24), a5);
              goto LABEL_358;
            case 0x39uLL:
              v56 = *(a2 + 16);
              v57 = a1;
              v58 = 0;
              goto LABEL_269;
            case 0x3AuLL:
              sub_298CABF68(a1, a2, 1u, a5);
              sub_298B00584(a5, ", ");
LABEL_329:
              v126 = *(a2 + 16);
              v127 = a1[49];
              v128 = a1[48];
              v129 = 2;
              goto LABEL_330;
            case 0x3BuLL:
              sub_298CAC750(a1, a2, 1u, a5);
              sub_298B00584(a5, ", ");
              sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 2u, a5);
LABEL_489:
              v230 = a2;
              v231 = 3;
LABEL_490:

              sub_298CAC870(v230, v231, a5);
              return;
            case 0x3CuLL:
              sub_298CAE560(a1, *(a2 + 16), 4u, a5);
              goto LABEL_272;
            case 0x3DuLL:
              sub_298CAEB3C(a1, *(a2 + 16), 4u, a5);
              goto LABEL_272;
            case 0x3EuLL:
              v28 = ", vgx2]";
              goto LABEL_631;
            case 0x3FuLL:
              v28 = ", vgx4]";
              goto LABEL_631;
            case 0x40uLL:
              sub_298CABB58(*(a2 + 16), 1u, a5);
              goto LABEL_310;
            case 0x41uLL:
              sub_298CABD60(*(a2 + 16), 1u, a5);
LABEL_310:
              sub_298CAAB6C(a5, 91);
              sub_298CAA168(a1, *(a2 + 16), 3u, a5);
              sub_298B00584(a5, ", ");
              v158 = *(a2 + 16);
              v159 = 4;
LABEL_367:
              sub_298CACA88(v158, v159, a5);
              goto LABEL_272;
            case 0x42uLL:
              v143 = *(*(a2 + 16) + 24);
              v144 = a1[49];
              v145 = a1[48];

              sub_298CAFF30(v145, v144, v143, a5);
              return;
            case 0x43uLL:
              sub_298CABA58(a1, *(a2 + 16), 1u, a5);
              goto LABEL_358;
            case 0x44uLL:
              sub_298CACA88(*(a2 + 16), 1u, a5);
              sub_298B00584(a5, ", mul vl], ");
              v139 = *(a2 + 16);

              sub_298CAA7BC(a1, v139, 2u, a5);
              return;
            case 0x45uLL:
              sub_298CB0010(*(a2 + 16), 1u, a5);
              v130 = "], ";
LABEL_471:
              sub_298B00584(a5, v130);
              v19 = *(a2 + 16);
              v20 = a1;
              v21 = 2;
              goto LABEL_512;
            case 0x46uLL:
              goto LABEL_204;
            case 0x47uLL:
LABEL_736:
              v25 = *(a2 + 16);
              v26 = a1;
              v27 = 3;
              goto LABEL_737;
            case 0x48uLL:
              sub_298B00584(a5, ".1d, ");
              sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 2u, a5);
              v28 = ".1d";
              goto LABEL_631;
            case 0x49uLL:
              sub_298B00584(a5, ".2d, ");
              sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 2u, a5);
LABEL_630:
              v28 = ".2d";
              goto LABEL_631;
            case 0x4AuLL:
              v136 = *(a2 + 16);
              v137 = a1;
              v138 = 3;
LABEL_658:

              sub_298CAB860(v137, v136, v138, a5);
              return;
            case 0x4BuLL:
              sub_298CB007C(a1, *(a2 + 16), 1u, a5);
              sub_298B00584(a5, ", ");
              goto LABEL_306;
            case 0x4CuLL:
              v131 = ", [";
LABEL_356:
              v174 = a5;
              goto LABEL_357;
            case 0x4DuLL:
              v103 = *(a2 + 16);
              v104 = a1;
              v105 = 4;
              goto LABEL_376;
            case 0x4EuLL:
              v73 = *(a2 + 16);
              v74 = a1;
              v75 = 4;
              goto LABEL_231;
            case 0x4FuLL:
              v106 = *(a2 + 16);
              v107 = a1;
              v108 = 4;
              goto LABEL_241;
            case 0x50uLL:
              v88 = *(a2 + 16);
              v89 = a1;
              v90 = 4;
              goto LABEL_282;
            case 0x51uLL:
              v61 = *(a2 + 16);
              v62 = a1;
              v63 = 4;
              goto LABEL_277;
            case 0x52uLL:
              v91 = *(a2 + 16);
              v92 = a1;
              v93 = 4;
              goto LABEL_225;
            case 0x53uLL:
              v67 = *(a2 + 16);
              v68 = a1;
              v69 = 4;
              goto LABEL_221;
            case 0x54uLL:
              v76 = *(a2 + 16);
              v77 = a1;
              v78 = 4;
              goto LABEL_317;
            case 0x55uLL:
              v97 = *(a2 + 16);
              v98 = a1;
              v99 = 4;
              goto LABEL_322;
            case 0x56uLL:
              v79 = *(a2 + 16);
              v80 = a1;
              v81 = 4;
              goto LABEL_350;
            case 0x57uLL:
              sub_298CAC9CC(a1, *(a2 + 16), 1u, a5);
              goto LABEL_270;
            case 0x58uLL:
              sub_298CB00E8(*(a2 + 16), 1u, a5);
              sub_298B00584(a5, ", ");
              sub_298CB00E8(*(a2 + 16), 2u, a5);
              sub_298B00584(a5, ", ");
              sub_298CAA168(a1, *(a2 + 16), 3u, a5);
              v174 = a5;
              v131 = ", ";
LABEL_357:
              sub_298B00584(v174, v131);
              goto LABEL_358;
            case 0x59uLL:
              sub_298CAA8A4(a1, a2, 1u, a5);
              goto LABEL_381;
            case 0x5AuLL:
              sub_298CABF68(a1, a2, 2u, a5);
              sub_298B00584(a5, ", ");
LABEL_229:
              v126 = *(a2 + 16);
              v127 = a1[49];
              v128 = a1[48];
              v129 = 3;
LABEL_330:
              sub_298CAA6C8(v128, v127, v126, v129, a5);
              goto LABEL_358;
            case 0x5BuLL:
              goto LABEL_272;
            default:
              v116 = *(a2 + 16);
              v117 = a1;
              v118 = 1;
LABEL_336:
              sub_298CAA168(v117, v116, v118, a5);
LABEL_358:
              switch((v12 >> 35) & 0x7F)
              {
                case 1uLL:
                  v175 = *(a2 + 16);
                  v176 = a1;
                  v177 = 3;
                  goto LABEL_437;
                case 2uLL:
                  goto LABEL_625;
                case 3uLL:
                  goto LABEL_360;
                case 4uLL:
LABEL_838:
                  v28 = ".16b";
                  goto LABEL_631;
                case 5uLL:
LABEL_640:
                  v28 = ".2s";
                  goto LABEL_631;
                case 6uLL:
                  goto LABEL_630;
                case 7uLL:
LABEL_639:
                  v28 = ".4h";
                  goto LABEL_631;
                case 8uLL:
LABEL_836:
                  v28 = ".4s";
                  goto LABEL_631;
                case 9uLL:
LABEL_643:
                  v28 = ".8h";
                  goto LABEL_631;
                case 0xAuLL:
LABEL_645:
                  v28 = ".8b";
                  goto LABEL_631;
                case 0xBuLL:
                  goto LABEL_478;
                case 0xCuLL:
                  sub_298CAA588(a1, *(a2 + 16), 2u, a5);
                  goto LABEL_485;
                case 0xDuLL:
                  v198 = ".2d, ";
                  goto LABEL_484;
                case 0xEuLL:
                  v198 = ".4s, ";
                  goto LABEL_484;
                case 0xFuLL:
                  v198 = ".8h, ";
                  goto LABEL_484;
                case 0x10uLL:
                  goto LABEL_483;
                case 0x11uLL:
                  v221 = *(a2 + 16);
                  v222 = a1;
                  v223 = 2;
                  goto LABEL_464;
                case 0x12uLL:
                  v198 = ".16b, ";
                  goto LABEL_484;
                case 0x13uLL:
                  v198 = ".2s, ";
                  goto LABEL_484;
                case 0x14uLL:
                  v198 = ".4h, ";
                  goto LABEL_484;
                case 0x15uLL:
                  v198 = ".8b, ";
                  goto LABEL_484;
                case 0x16uLL:
                  goto LABEL_44;
                case 0x17uLL:
                  sub_298CAA308(a1, *(a2 + 16), 2u, a5);
                  goto LABEL_485;
                case 0x18uLL:
                  v205 = a1;
                  v206 = a2;
                  v207 = 4;
                  goto LABEL_420;
                case 0x19uLL:
                  v211 = a1;
                  v212 = a2;
                  v213 = 4;
                  goto LABEL_417;
                case 0x1AuLL:

                  sub_298CB0220(a1, a2, a5);
                  return;
                case 0x1BuLL:
                  v198 = "/z, ";
                  goto LABEL_484;
                case 0x1CuLL:
                  v208 = *(a2 + 16);
                  v209 = a1;
                  v210 = 2;
                  goto LABEL_407;
                case 0x1DuLL:
                  v214 = a1;
                  v215 = a2;
                  v216 = 4;
                  goto LABEL_462;
                case 0x1EuLL:
                  v221 = *(a2 + 16);
                  v222 = a1;
                  v223 = 3;
                  goto LABEL_464;
                case 0x1FuLL:
                  v214 = a1;
                  v215 = a2;
                  v216 = 2;
LABEL_462:
                  sub_298CAA95C(v214, v215, v216, a5);
                  goto LABEL_485;
                case 0x20uLL:
                  sub_298CAA448(a1, *(a2 + 16), 4u, a5);
                  sub_298B00584(a5, ", ");
                  v221 = *(a2 + 16);
                  v222 = a1;
                  v223 = 5;
LABEL_464:
                  sub_298CAA448(v222, v221, v223, a5);
                  goto LABEL_485;
                case 0x21uLL:
LABEL_501:
                  v178 = *(a2 + 16);
                  v179 = a1;
                  v180 = 5;
                  goto LABEL_361;
                case 0x22uLL:
                  v198 = ", [";
                  goto LABEL_484;
                case 0x23uLL:
                  v28 = ".16b, #0";
                  goto LABEL_631;
                case 0x24uLL:
                  v28 = ", #0";
                  goto LABEL_631;
                case 0x25uLL:
                  v28 = ".2s, #0";
                  goto LABEL_631;
                case 0x26uLL:
                  v28 = ".2d, #0";
                  goto LABEL_631;
                case 0x27uLL:
                  v28 = ".4h, #0";
                  goto LABEL_631;
                case 0x28uLL:
                  v28 = ".4s, #0";
                  goto LABEL_631;
                case 0x29uLL:
                  v28 = ".8h, #0";
                  goto LABEL_631;
                case 0x2AuLL:
                  v28 = ".8b, #0";
                  goto LABEL_631;
                case 0x2BuLL:
                  v130 = ", mul ";
                  goto LABEL_471;
                case 0x2CuLL:
                  v155 = a1;
                  v156 = a2;
                  v157 = 3;
                  goto LABEL_647;
                case 0x2DuLL:
                  v163 = a1;
                  v164 = a2;
                  v165 = 3;
                  goto LABEL_519;
                case 0x2EuLL:
                  v132 = a1;
                  v133 = a2;
                  v134 = 3;
                  goto LABEL_546;
                case 0x2FuLL:
                  v208 = *(a2 + 16);
                  v209 = a1;
                  v210 = 3;
LABEL_407:
                  sub_298CAA168(v209, v208, v210, a5);
                  goto LABEL_485;
                case 0x30uLL:
                  v100 = a1;
                  v101 = a2;
                  v102 = 2;
                  goto LABEL_453;
                case 0x31uLL:
                  goto LABEL_487;
                case 0x32uLL:
                  v198 = ".h";
                  goto LABEL_484;
                case 0x33uLL:
                  v198 = ".s";
                  goto LABEL_484;
                case 0x34uLL:
                  v198 = ".d";
                  goto LABEL_484;
                case 0x35uLL:
                  v198 = ".b";
                  goto LABEL_484;
                case 0x36uLL:
                  goto LABEL_365;
                case 0x37uLL:
                  goto LABEL_364;
                case 0x38uLL:
LABEL_495:
                  v33 = *(a2 + 16);
                  v34 = a1;
                  v35 = 2;
                  goto LABEL_49;
                case 0x39uLL:
LABEL_493:
                  v28 = ".2h";
                  goto LABEL_631;
                case 0x3AuLL:
                  v205 = a1;
                  v206 = a2;
                  v207 = 2;
LABEL_420:
                  sub_298CAA8A4(v205, v206, v207, a5);
                  goto LABEL_485;
                case 0x3BuLL:
                  v211 = a1;
                  v212 = a2;
                  v213 = 2;
LABEL_417:
                  sub_298CAAA14(v211, v212, v213, a5);
                  goto LABEL_485;
                case 0x3CuLL:
                  goto LABEL_629;
                case 0x3DuLL:
                  v28 = ".2s, #0.0";
                  goto LABEL_631;
                case 0x3EuLL:
                  v28 = ".2d, #0.0";
                  goto LABEL_631;
                case 0x3FuLL:
                  v28 = ".4h, #0.0";
                  goto LABEL_631;
                case 0x40uLL:
                  v28 = ".4s, #0.0";
                  goto LABEL_631;
                case 0x41uLL:
                  v28 = ".8h, #0.0";
                  goto LABEL_631;
                case 0x42uLL:
                  goto LABEL_368;
                case 0x43uLL:
                  sub_298CAA7EC(a1, a2, 4u, a5);
                  goto LABEL_478;
                case 0x44uLL:
                  sub_298B00584(a5, ".2h, ");
                  sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 3u, a5);
                  goto LABEL_485;
                case 0x45uLL:
                  sub_298CAA1C8(a1, *(a2 + 16), 4u, a5);
                  sub_298B00584(a5, ", ");
                  v175 = *(a2 + 16);
                  v176 = a1;
                  v177 = 5;
LABEL_437:
                  sub_298CAA1C8(v176, v175, v177, a5);
                  goto LABEL_485;
                case 0x46uLL:
LABEL_497:
                  v182 = *(a2 + 16);
                  v183 = a1;
                  v184 = 5;
                  goto LABEL_626;
                case 0x47uLL:
                  goto LABEL_272;
                case 0x48uLL:
LABEL_498:
                  v232 = *(a2 + 16);

                  sub_298CAFE30(a1, v232, 2u, a5);
                  return;
                case 0x49uLL:
                  goto LABEL_372;
                case 0x4AuLL:
                  sub_298CACA88(*(a2 + 16), 3u, a5);
                  sub_298B00584(a5, "], ");
                  sub_298CAA7BC(a1, *(a2 + 16), 4u, a5);
LABEL_483:
                  v198 = "/m, ";
                  goto LABEL_484;
                case 0x4BuLL:
                  sub_298B00584(a5, "/z, [");
                  sub_298CAA168(a1, *(a2 + 16), 2u, a5);
LABEL_478:
                  v198 = ", ";
                  goto LABEL_484;
                case 0x4CuLL:
                  sub_298CACA88(*(a2 + 16), 2u, a5);
                  sub_298B00584(a5, "]}, ");
                  sub_298CAA7BC(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_485;
                case 0x4DuLL:
                  v28 = "], #4";
                  goto LABEL_631;
                case 0x4EuLL:
LABEL_641:
                  v28 = "], #8";
                  goto LABEL_631;
                case 0x4FuLL:
                  goto LABEL_447;
                case 0x50uLL:
                  goto LABEL_489;
                case 0x51uLL:
LABEL_488:
                  sub_298CAA7BC(a1, *(a2 + 16), 2u, a5);
                  goto LABEL_489;
                case 0x52uLL:
                  v188 = *(a2 + 16);

                  sub_298CB07F8(a1, v188, a5);
                  return;
                case 0x53uLL:
                  sub_298CAE560(a1, *(a2 + 16), 3u, a5);
                  v198 = "], ";
                  goto LABEL_484;
                case 0x54uLL:
                  sub_298CAEB3C(a1, *(a2 + 16), 3u, a5);
LABEL_447:
                  v198 = "], ";
LABEL_484:
                  sub_298B00584(a5, v198);
                  goto LABEL_485;
                case 0x55uLL:
                  v166 = *(a2 + 16);
                  v167 = a1;
                  v168 = 2;
                  goto LABEL_474;
                case 0x56uLL:
                  sub_298CAAB6C(a5, 91);
                  sub_298CB0010(*(a2 + 16), 2u, a5);
                  goto LABEL_272;
                case 0x57uLL:
                  v239 = *(a2 + 16);
                  v240 = a1;
                  v241 = 3;
LABEL_594:
                  sub_298CB0810(v240, v239, v241, a5);
                  goto LABEL_272;
                case 0x58uLL:
                  v236 = *(a2 + 16);
                  v237 = a1;
                  v238 = 3;
LABEL_653:
                  sub_298CB0984(v237, v236, v238, a5);
                  goto LABEL_272;
                case 0x59uLL:
                  v192 = *(a2 + 16);
                  v193 = a1;
                  v194 = 3;
LABEL_618:
                  sub_298CB0C70(v193, v192, v194, a5);
                  goto LABEL_272;
                case 0x5AuLL:
LABEL_494:
                  sub_298CAA168(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_272;
                case 0x5BuLL:
LABEL_642:
                  sub_298CB0F5C(a1, *(a2 + 16), a5);
                  goto LABEL_272;
                case 0x5CuLL:
LABEL_637:
                  sub_298CB1248(a1, *(a2 + 16), a5);
                  goto LABEL_272;
                case 0x5DuLL:
                  v218 = a1;
                  v219 = a2;
                  v220 = 3;
LABEL_578:
                  sub_298CB1534(v218, v219, v220, a5);
                  goto LABEL_272;
                case 0x5EuLL:
                  v233 = *(a2 + 16);
                  v234 = a1;
                  v235 = 3;
LABEL_651:
                  sub_298CB166C(v234, v233, v235, a5);
                  goto LABEL_272;
                case 0x5FuLL:
                  v195 = *(a2 + 16);
                  v196 = a1;
                  v197 = 3;
LABEL_583:
                  sub_298CB184C(v196, v195, v197, a5);
                  goto LABEL_272;
                case 0x60uLL:
                  v242 = *(a2 + 16);
                  v243 = a1;
                  v244 = 3;
LABEL_533:
                  sub_298CB1A2C(v243, v242, v244, a5);
                  goto LABEL_272;
                case 0x61uLL:
                  sub_298CB1C0C(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_272;
                case 0x62uLL:
                  sub_298CB1D20(a1, *(a2 + 16), a5);
                  goto LABEL_272;
                case 0x63uLL:
                  sub_298CB1F00(a1, *(a2 + 16), a5);
                  goto LABEL_272;
                case 0x64uLL:
                  sub_298CB20E0(a1, a2, a5);
                  goto LABEL_272;
                case 0x65uLL:
                  v199 = *(a2 + 16);
                  v200 = a1;
                  v201 = 3;
LABEL_602:
                  sub_298CB2220(v200, v199, v201, a5);
                  goto LABEL_272;
                case 0x66uLL:
                  v227 = *(a2 + 16);
                  v228 = a1;
                  v229 = 3;
LABEL_655:
                  sub_298CB2400(v228, v227, v229, a5);
                  goto LABEL_272;
                case 0x67uLL:
                  v224 = *(a2 + 16);
                  v225 = a1;
                  v226 = 3;
LABEL_553:
                  sub_298CB25E0(v225, v224, v226, a5);
                  goto LABEL_272;
                case 0x68uLL:
LABEL_496:
                  sub_298CB27C0(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_272;
                case 0x69uLL:
LABEL_636:
                  sub_298CB28D4(a1, *(a2 + 16), a5);
                  goto LABEL_272;
                case 0x6AuLL:
LABEL_635:
                  sub_298CB2AB4(a1, *(a2 + 16), a5);
                  goto LABEL_272;
                case 0x6BuLL:
LABEL_740:
                  sub_298CB2C94(a1, a2, 3u, a5);
                  goto LABEL_272;
                case 0x6CuLL:
                  v202 = *(a2 + 16);
                  v203 = a1;
                  v204 = 3;
LABEL_621:
                  sub_298CB2DCC(v203, v202, v204, a5);
                  goto LABEL_272;
                case 0x6DuLL:
                  v189 = *(a2 + 16);
                  v190 = a1;
                  v191 = 3;
LABEL_616:
                  sub_298CB2FAC(v190, v189, v191, a5);
                  goto LABEL_272;
                case 0x6EuLL:
                  v185 = *(a2 + 16);
                  v186 = a1;
                  v187 = 3;
LABEL_540:
                  sub_298CB318C(v186, v185, v187, a5);
                  goto LABEL_272;
                case 0x6FuLL:
                  sub_298CB336C(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_272;
                case 0x70uLL:
LABEL_644:
                  sub_298CB3480(a1, *(a2 + 16), a5);
                  goto LABEL_272;
                case 0x71uLL:
LABEL_638:
                  sub_298CB3660(a1, *(a2 + 16), a5);
                  goto LABEL_272;
                case 0x72uLL:
                  v28 = "/z";
                  goto LABEL_631;
                case 0x73uLL:
                  sub_298CAA7EC(a1, a2, 2u, a5);
LABEL_485:
                  switch((v12 >> 42) & 0x7F)
                  {
                    case 1uLL:
                      v278 = *(a2 + 16);
                      v279 = a1;
                      v280 = 3;
                      goto LABEL_607;
                    case 2uLL:
                      v265 = *(a2 + 16);
                      v266 = a1;
                      v267 = 3;
                      goto LABEL_573;
                    case 3uLL:
                      v272 = *(a2 + 16);
                      v273 = a1;
                      v274 = 2;
                      goto LABEL_588;
                    case 4uLL:
                      v262 = a1;
                      v263 = a2;
                      v264 = 2;
                      goto LABEL_600;
                    case 5uLL:
                      v275 = *(a2 + 16);
                      v276 = a1;
                      v277 = 2;
                      goto LABEL_597;
                    case 6uLL:
                      v278 = *(a2 + 16);
                      v279 = a1;
                      v280 = 2;
LABEL_607:
                      sub_298CAA308(v279, v278, v280, a5);
                      goto LABEL_623;
                    case 7uLL:
                      v275 = *(a2 + 16);
                      v276 = a1;
                      v277 = 3;
LABEL_597:
                      sub_298CAA448(v276, v275, v277, a5);
                      goto LABEL_623;
                    case 8uLL:
                      v268 = *(a2 + 16);
                      v269 = a1[49];
                      v270 = a1[48];
                      v271 = 2;
                      goto LABEL_614;
                    case 9uLL:
                      v268 = *(a2 + 16);
                      v269 = a1[49];
                      v270 = a1[48];
                      v271 = 3;
LABEL_614:
                      sub_298CAA6C8(v270, v269, v268, v271, a5);
                      goto LABEL_623;
                    case 0xAuLL:
                      v255 = *(a2 + 16);
                      v256 = a1;
                      v257 = 2;
                      goto LABEL_612;
                    case 0xBuLL:
                      goto LABEL_565;
                    case 0xCuLL:
                      v265 = *(a2 + 16);
                      v266 = a1;
                      v267 = 2;
LABEL_573:
                      sub_298CAA588(v266, v265, v267, a5);
                      goto LABEL_623;
                    case 0xDuLL:

                      sub_298CB3ABC(a1, a2, 2u, a5);
                      return;
                    case 0xEuLL:

                      sub_298CB3E0C(a1, a2, a5);
                      return;
                    case 0xFuLL:

                      sub_298CB3E8C(a1, a2, a5);
                      return;
                    case 0x10uLL:

                      sub_298CB3F0C(a1, a2, a5);
                      return;
                    case 0x11uLL:

                      sub_298CB44E0(a1, a2, a5);
                      return;
                    case 0x12uLL:

                      sub_298CB4674(a1, a2, a5);
                      return;
                    case 0x13uLL:
                      v239 = *(a2 + 16);
                      v240 = a1;
                      v241 = 2;
                      goto LABEL_594;
                    case 0x14uLL:
                      v199 = *(a2 + 16);
                      v200 = a1;
                      v201 = 2;
                      goto LABEL_602;
                    case 0x15uLL:
                      v202 = *(a2 + 16);
                      v203 = a1;
                      v204 = 2;
                      goto LABEL_621;
                    case 0x16uLL:
                      v233 = *(a2 + 16);
                      v234 = a1;
                      v235 = 2;
                      goto LABEL_651;
                    case 0x17uLL:
                      sub_298CB4804(a1, *(a2 + 16), a5);
                      goto LABEL_272;
                    case 0x18uLL:
                      sub_298CB4978(a1, *(a2 + 16), a5);
                      goto LABEL_272;
                    case 0x19uLL:
                      sub_298CB4B58(a1, *(a2 + 16), a5);
                      goto LABEL_272;
                    case 0x1AuLL:
                      sub_298CB4D38(a1, *(a2 + 16), a5);
                      goto LABEL_272;
                    case 0x1BuLL:
                      v236 = *(a2 + 16);
                      v237 = a1;
                      v238 = 2;
                      goto LABEL_653;
                    case 0x1CuLL:
                      v227 = *(a2 + 16);
                      v228 = a1;
                      v229 = 2;
                      goto LABEL_655;
                    case 0x1DuLL:
                      v189 = *(a2 + 16);
                      v190 = a1;
                      v191 = 2;
                      goto LABEL_616;
                    case 0x1EuLL:
                      v195 = *(a2 + 16);
                      v196 = a1;
                      v197 = 2;
                      goto LABEL_583;
                    case 0x1FuLL:
                      v192 = *(a2 + 16);
                      v193 = a1;
                      v194 = 2;
                      goto LABEL_618;
                    case 0x20uLL:
                      v224 = *(a2 + 16);
                      v225 = a1;
                      v226 = 2;
                      goto LABEL_553;
                    case 0x21uLL:
                      v185 = *(a2 + 16);
                      v186 = a1;
                      v187 = 2;
                      goto LABEL_540;
                    case 0x22uLL:
                      v242 = *(a2 + 16);
                      v243 = a1;
                      v244 = 2;
                      goto LABEL_533;
                    case 0x23uLL:
                      v252 = *(a2 + 16);
                      v253 = a1[49];
                      v254 = a1[48];

                      sub_298CB4F18(v254, v253, v252, 2u, a5);
                      return;
                    case 0x24uLL:
                      v151 = *(a2 + 16);
                      v152 = a1[49];
                      v153 = a1[48];
                      v154 = 2;
                      goto LABEL_287;
                    case 0x25uLL:
LABEL_741:
                      v230 = a2;
                      v231 = 6;
                      goto LABEL_490;
                    case 0x26uLL:
                      sub_298CAC870(a2, 4u, a5);
                      goto LABEL_623;
                    case 0x27uLL:
                      goto LABEL_489;
                    case 0x28uLL:
                      v272 = *(a2 + 16);
                      v273 = a1;
                      v274 = 3;
LABEL_588:
                      sub_298CAA168(v273, v272, v274, a5);
                      goto LABEL_623;
                    case 0x29uLL:
                      v155 = a1;
                      v156 = a2;
                      v157 = 2;
                      goto LABEL_647;
                    case 0x2AuLL:
                      v163 = a1;
                      v164 = a2;
                      v165 = 2;
                      goto LABEL_519;
                    case 0x2BuLL:
                      v132 = a1;
                      v133 = a2;
                      v134 = 2;
                      goto LABEL_546;
                    case 0x2CuLL:
                      goto LABEL_487;
                    case 0x2DuLL:
                      goto LABEL_629;
                    case 0x2EuLL:
                      v246 = a1;
                      v247 = a2;
                      v248 = 5;
                      goto LABEL_529;
                    case 0x2FuLL:
                      v255 = *(a2 + 16);
                      v256 = a1;
                      v257 = 5;
LABEL_612:
                      sub_298CAA1C8(v256, v255, v257, a5);
                      goto LABEL_623;
                    case 0x30uLL:
                      sub_298B00584(a5, ".h");
                      v230 = a2;
                      v231 = 4;
                      goto LABEL_490;
                    case 0x31uLL:
                      goto LABEL_493;
                    case 0x32uLL:
                      goto LABEL_498;
                    case 0x33uLL:
                      goto LABEL_497;
                    case 0x34uLL:
                      v112 = *(a2 + 16);
                      v113 = a1;
                      v114 = 5;
                      goto LABEL_733;
                    case 0x35uLL:
                      v136 = *(a2 + 16);
                      v137 = a1;
                      v138 = 5;
                      goto LABEL_658;
                    case 0x36uLL:
                      goto LABEL_501;
                    case 0x37uLL:
                      goto LABEL_494;
                    case 0x38uLL:
                      sub_298CB20E0(a1, a2, a5);
                      goto LABEL_556;
                    case 0x39uLL:
                      goto LABEL_496;
                    case 0x3AuLL:
                      v245 = "/z, [";
                      goto LABEL_564;
                    case 0x3BuLL:
                      v22 = *(a2 + 16);
                      v23 = a1;
                      v24 = 4;
                      goto LABEL_271;
                    case 0x3CuLL:
                      v262 = a1;
                      v263 = a2;
                      v264 = 3;
LABEL_600:
                      sub_298CB3984(v262, v263, v264, a5);
                      goto LABEL_623;
                    case 0x3DuLL:
                      v218 = a1;
                      v219 = a2;
                      v220 = 2;
                      goto LABEL_578;
                    case 0x3EuLL:
                      sub_298CB1534(a1, a2, 3u, a5);
                      goto LABEL_567;
                    case 0x3FuLL:
                      sub_298CB50E8(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_272;
                    case 0x40uLL:
                      sub_298CB50F4(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_272;
                    case 0x41uLL:
                      sub_298CB5100(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_272;
                    case 0x42uLL:
                      sub_298CB510C(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_272;
                    case 0x43uLL:
                      sub_298CB5118(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_272;
                    case 0x44uLL:
                      goto LABEL_488;
                    case 0x45uLL:
                      sub_298CAA1C8(a1, *(a2 + 16), 3u, a5);
                      sub_298B00584(a5, ", ");
                      v25 = *(a2 + 16);
                      v26 = a1;
                      v27 = 4;
                      goto LABEL_737;
                    case 0x46uLL:
                      sub_298CACA88(*(a2 + 16), 4u, a5);
                      goto LABEL_272;
                    case 0x47uLL:
                      sub_298CAE560(a1, *(a2 + 16), 3u, a5);
                      goto LABEL_272;
                    case 0x48uLL:
                      sub_298CAEB3C(a1, *(a2 + 16), 3u, a5);
                      goto LABEL_272;
                    case 0x49uLL:
                      v246 = a1;
                      v247 = a2;
                      v248 = 4;
                      goto LABEL_529;
                    case 0x4AuLL:
                      v249 = a1;
                      v250 = a2;
                      v251 = 4;
                      goto LABEL_590;
                    case 0x4BuLL:
                      v169 = a1;
                      v170 = a2;
                      v171 = 4;
                      goto LABEL_338;
                    case 0x4CuLL:
                      v259 = a1;
                      v260 = a2;
                      v261 = 4;
                      goto LABEL_665;
                    case 0x4DuLL:
                      goto LABEL_272;
                    case 0x4EuLL:
LABEL_556:
                      v28 = ", mul vl]";
                      goto LABEL_631;
                    case 0x4FuLL:
                      v246 = a1;
                      v247 = a2;
                      v248 = 2;
LABEL_529:

                      sub_298CAA7EC(v246, v247, v248, a5);
                      return;
                    case 0x50uLL:
                      v249 = a1;
                      v250 = a2;
                      v251 = 2;
LABEL_590:

                      sub_298CAA8A4(v249, v250, v251, a5);
                      return;
                    case 0x51uLL:
                      v259 = a1;
                      v260 = a2;
                      v261 = 2;
LABEL_665:

                      sub_298CAAA14(v259, v260, v261, a5);
                      return;
                    case 0x52uLL:
                      v258 = *(a2 + 16);

                      sub_298CB007C(a1, v258, 2u, a5);
                      return;
                    case 0x53uLL:
                      v245 = ", [";
LABEL_564:
                      sub_298B00584(a5, v245);
                      sub_298CAA168(a1, *(a2 + 16), 4u, a5);
LABEL_565:
                      sub_298B00584(a5, ", ");
                      break;
                    case 0x54uLL:
                      sub_298CB00E8(*(a2 + 16), 2u, a5);
                      sub_298B00584(a5, ", ");
                      sub_298CB00E8(*(a2 + 16), 3u, a5);
                      sub_298B00584(a5, ", ");
                      goto LABEL_511;
                    case 0x55uLL:
                      v36 = a1;
                      v37 = a2;
                      v38 = a3;
                      v39 = 2;
                      goto LABEL_208;
                    case 0x56uLL:
                      goto LABEL_495;
                    default:
                      return;
                  }

                  break;
                case 0x74uLL:
                  v28 = ".16b, #8";
                  goto LABEL_631;
                case 0x75uLL:
                  v28 = ".2s, #32";
                  goto LABEL_631;
                case 0x76uLL:
                  v28 = ".4h, #16";
                  goto LABEL_631;
                case 0x77uLL:
                  v28 = ".4s, #32";
                  goto LABEL_631;
                case 0x78uLL:
                  v28 = ".8h, #16";
                  goto LABEL_631;
                case 0x79uLL:
                  v28 = ".8b, #8";
                  goto LABEL_631;
                case 0x7AuLL:
                  v28 = ", #-4]!";
                  goto LABEL_631;
                case 0x7BuLL:
LABEL_634:
                  v28 = ", #-8]!";
                  goto LABEL_631;
                case 0x7CuLL:
                  v123 = *(a2 + 16);
                  v124 = a1;
                  v125 = 4;
                  goto LABEL_216;
                case 0x7DuLL:
                  v217 = *(*(a2 + 16) + 72);

                  sub_298CB3840(v217, a5);
                  return;
                case 0x7EuLL:
LABEL_511:
                  v19 = *(a2 + 16);
                  v20 = a1;
                  v21 = 4;
                  goto LABEL_512;
                case 0x7FuLL:
                  v136 = *(a2 + 16);
                  v137 = a1;
                  v138 = 2;
                  goto LABEL_658;
                default:
                  return;
              }

              break;
          }

          break;
        case 0x55uLL:

          sub_298CAB9A0(a1, a2, 1u, a5);
          return;
        case 0x56uLL:
          v28 = " }";
          goto LABEL_631;
        default:
          return;
      }

      break;
    case 0x4AuLL:
      sub_298CADE0C(a1, *(*(a2 + 16) + 8), a5);
      sub_298B00584(a5, ", ");
      v56 = *(a2 + 16);
      v57 = a1;
      v58 = 1;
LABEL_269:
      sub_298CAA168(v57, v56, v58, a5);
      goto LABEL_270;
    case 0x4BuLL:
      sub_298CAAA14(a1, a2, 0, a5);
      goto LABEL_105;
    case 0x4CuLL:
      sub_298CAA8A4(a1, a2, 0, a5);
LABEL_105:
      sub_298CAC870(a2, 1u, a5);
LABEL_270:
      sub_298B00584(a5, ", [");
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 2;
LABEL_271:
      sub_298CAA168(v23, v22, v24, a5);
LABEL_272:
      v50 = a5;
      v51 = 93;
LABEL_273:

      sub_298CAAB6C(v50, v51);
      return;
    case 0x4DuLL:
      v16 = *(*(a2 + 16) + 8);

      sub_298CAE034(a1, v16, a5);
      return;
    default:
      return;
  }

LABEL_623:
  switch((v12 >> 49) & 0x7F)
  {
    case 1uLL:
      v281 = ", ";
      goto LABEL_729;
    case 2uLL:
      goto LABEL_630;
    case 3uLL:
      goto LABEL_836;
    case 4uLL:
      goto LABEL_643;
    case 5uLL:
      goto LABEL_334;
    case 6uLL:
      v292 = *(a2 + 16);
      v293 = a1;
      v294 = 3;
      goto LABEL_710;
    case 7uLL:
      goto LABEL_838;
    case 8uLL:
      goto LABEL_640;
    case 9uLL:
      goto LABEL_639;
    case 0xAuLL:
      goto LABEL_645;
    case 0xBuLL:
      v298 = *(a2 + 16);

      sub_298CB5124(a1, v298, 3u, a5);
      return;
    case 0xCuLL:
      v249 = a1;
      v250 = a2;
      v251 = 5;
      goto LABEL_590;
    case 0xDuLL:
      v259 = a1;
      v260 = a2;
      v261 = 5;
      goto LABEL_665;
    case 0xEuLL:
      sub_298CAA308(a1, *(a2 + 16), 5u, a5);
      goto LABEL_730;
    case 0xFuLL:
      sub_298CAA588(a1, *(a2 + 16), 5u, a5);
      goto LABEL_730;
    case 0x10uLL:
      sub_298CAA168(a1, *(a2 + 16), 3u, a5);
      goto LABEL_730;
    case 0x11uLL:
      goto LABEL_625;
    case 0x12uLL:
      v281 = ".16b, ";
      goto LABEL_729;
    case 0x13uLL:
      v288 = ".2h";
      goto LABEL_695;
    case 0x14uLL:
      v169 = a1;
      v170 = a2;
      v171 = 5;
      goto LABEL_338;
    case 0x15uLL:
      v292 = *(a2 + 16);
      v293 = a1;
      v294 = 5;
      goto LABEL_710;
    case 0x16uLL:
      sub_298CAC870(a2, 4u, a5);
      goto LABEL_730;
    case 0x17uLL:
      v281 = ".h";
      goto LABEL_729;
    case 0x18uLL:
      v292 = *(a2 + 16);
      v293 = a1;
      v294 = 4;
LABEL_710:
      sub_298CAA448(v293, v292, v294, a5);
      goto LABEL_730;
    case 0x19uLL:
LABEL_756:
      v308 = *(a2 + 16);
      v309 = a1[49];
      v310 = a1[48];
      v311 = 3;
      goto LABEL_757;
    case 0x1AuLL:
      goto LABEL_272;
    case 0x1BuLL:
LABEL_760:
      v312 = *(a2 + 16);
      v313 = a1[49];
      v314 = a1[48];
      v315 = 4;
      goto LABEL_840;
    case 0x1CuLL:
LABEL_752:
      v33 = *(a2 + 16);
      v34 = a1;
      v35 = 3;
      goto LABEL_49;
    case 0x1DuLL:
      sub_298B00584(a5, ".8b, ");
LABEL_731:
      v19 = *(a2 + 16);
      v20 = a1;
      v21 = 3;
      goto LABEL_512;
    case 0x1EuLL:
LABEL_748:
      v302 = *(*(a2 + 16) + 56);
      v303 = a1[49];
      v304 = a1[48];

      sub_298CB5558(v304, v303, v302, a5);
      return;
    case 0x1FuLL:
      v281 = ".2s, ";
      goto LABEL_729;
    case 0x20uLL:
      v281 = ".2d, ";
      goto LABEL_729;
    case 0x21uLL:
      v281 = ".4h, ";
      goto LABEL_729;
    case 0x22uLL:
      v281 = ".4s, ";
      goto LABEL_729;
    case 0x23uLL:
      v281 = ".8h, ";
      goto LABEL_729;
    case 0x24uLL:
      goto LABEL_629;
    case 0x25uLL:
      v281 = ".s";
      goto LABEL_729;
    case 0x26uLL:
      goto LABEL_741;
    case 0x27uLL:
      v288 = ".4b";
      goto LABEL_695;
    case 0x28uLL:
      v288 = ".2b";
      goto LABEL_695;
    case 0x29uLL:
LABEL_753:
      v305 = *(*(a2 + 16) + 56);
      v306 = a1[49];
      v307 = a1[48];

      sub_298CB5648(v307, v306, v305, a5);
      return;
    case 0x2AuLL:
      v288 = ".b";
LABEL_695:
      sub_298B00584(a5, v288);
      v230 = a2;
      v231 = 4;
      goto LABEL_490;
    case 0x2BuLL:
      v281 = ".d";
      goto LABEL_729;
    case 0x2CuLL:
LABEL_745:
      v299 = *(*(a2 + 16) + 56);
      v300 = a1[49];
      v301 = a1[48];

      sub_298CB5738(v301, v300, v299, a5);
      return;
    case 0x2DuLL:
      goto LABEL_489;
    case 0x2EuLL:
      sub_298CB0810(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x2FuLL:
      sub_298CB0984(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x30uLL:
      sub_298CB0C70(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x31uLL:
      goto LABEL_642;
    case 0x32uLL:
      goto LABEL_637;
    case 0x33uLL:
LABEL_744:
      sub_298CB1534(a1, a2, 3u, a5);
      goto LABEL_272;
    case 0x34uLL:
      sub_298CB166C(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x35uLL:
      sub_298CB184C(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x36uLL:
      sub_298CB1A2C(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x37uLL:
      sub_298CB20E0(a1, a2, a5);
      goto LABEL_730;
    case 0x38uLL:
      sub_298CB2220(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x39uLL:
      sub_298CB2400(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x3AuLL:
      sub_298CB25E0(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x3BuLL:
      goto LABEL_636;
    case 0x3CuLL:
      goto LABEL_635;
    case 0x3DuLL:
      sub_298CB2C94(a1, a2, 3u, a5);
      goto LABEL_730;
    case 0x3EuLL:
      sub_298CB2DCC(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x3FuLL:
      sub_298CB2FAC(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x40uLL:
      sub_298CB318C(a1, *(a2 + 16), 3u, a5);
      goto LABEL_272;
    case 0x41uLL:
      goto LABEL_644;
    case 0x42uLL:
      goto LABEL_638;
    case 0x43uLL:
LABEL_742:
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 3;
      goto LABEL_271;
    case 0x44uLL:
      v295 = *(a2 + 16);
      v296 = a1;
      v297 = 3;
      goto LABEL_722;
    case 0x45uLL:
LABEL_761:
      v285 = *(a2 + 16);
      v286 = a1;
      v287 = 3;
      goto LABEL_762;
    case 0x46uLL:
      sub_298CB5828(a1, a2, a5);
      goto LABEL_272;
    case 0x47uLL:
      v282 = *(a2 + 16);
      v283 = a1;
      v284 = 3;
      goto LABEL_727;
    case 0x48uLL:
LABEL_751:
      sub_298CB3984(a1, a2, 3u, a5);
      goto LABEL_272;
    case 0x49uLL:
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 5;
      goto LABEL_271;
    case 0x4AuLL:
      v295 = *(a2 + 16);
      v296 = a1;
      v297 = 5;
LABEL_722:
      sub_298CB1C0C(v296, v295, v297, a5);
      goto LABEL_272;
    case 0x4BuLL:
      v285 = *(a2 + 16);
      v286 = a1;
      v287 = 5;
LABEL_762:
      sub_298CB27C0(v286, v285, v287, a5);
      goto LABEL_272;
    case 0x4CuLL:
      v289 = *(a2 + 16);
      v290 = a1;
      v291 = 5;
      goto LABEL_764;
    case 0x4DuLL:
      v282 = *(a2 + 16);
      v283 = a1;
      v284 = 5;
LABEL_727:
      sub_298CB336C(v283, v282, v284, a5);
      goto LABEL_272;
    case 0x4EuLL:
      v289 = *(a2 + 16);
      v290 = a1;
      v291 = 3;
LABEL_764:
      sub_298CB5968(v290, v289, v291, a5);
      goto LABEL_272;
    case 0x4FuLL:
      sub_298CB5A7C(a1, a2, a5);
      goto LABEL_556;
    case 0x50uLL:
      goto LABEL_641;
    case 0x51uLL:
      v28 = "], #16";
      goto LABEL_631;
    case 0x52uLL:
      v281 = "], ";
LABEL_729:
      sub_298B00584(a5, v281);
LABEL_730:
      switch(HIBYTE(v12) & 0x3F)
      {
        case 1:
          goto LABEL_736;
        case 2:
          v317 = *(a2 + 16);
          v318 = a1;
          v319 = 3;
          goto LABEL_781;
        case 3:
          return;
        case 4:
          v320 = *(a2 + 16);
          v321 = a1;
          v322 = 3;
          goto LABEL_786;
        case 5:
          sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 3u, a5);
          break;
        case 6:
          goto LABEL_741;
        case 7:
          sub_298CAC870(a2, 4u, a5);
          break;
        case 8:
          goto LABEL_511;
        case 9:
          goto LABEL_756;
        case 0xA:
          v316 = *(a2 + 16);

          sub_298CAB004(v316, 3u, a5);
          return;
        case 0xB:
          sub_298B00584(a5, ", ");
          break;
        case 0xC:
          goto LABEL_839;
        case 0xD:
          goto LABEL_760;
        case 0xE:
          goto LABEL_732;
        case 0xF:
          goto LABEL_752;
        case 0x10:
          goto LABEL_748;
        case 0x11:
          v317 = *(a2 + 16);
          v318 = a1;
          v319 = 4;
LABEL_781:
          sub_298CAA308(v318, v317, v319, a5);
          break;
        case 0x12:
          v320 = *(a2 + 16);
          v321 = a1;
          v322 = 4;
LABEL_786:
          sub_298CAA588(v321, v320, v322, a5);
          break;
        case 0x13:
          goto LABEL_753;
        case 0x14:
          goto LABEL_489;
        case 0x15:
          goto LABEL_745;
        case 0x16:
          goto LABEL_272;
        case 0x17:
          goto LABEL_556;
        case 0x18:
          goto LABEL_744;
        case 0x19:
          goto LABEL_751;
        case 0x1A:
          goto LABEL_740;
        case 0x1B:
          sub_298CB1534(a1, a2, 4u, a5);
          break;
        case 0x1C:
          sub_298CB3984(a1, a2, 4u, a5);
          break;
        case 0x1D:
          sub_298CB2C94(a1, a2, 4u, a5);
          break;
        case 0x1E:
          sub_298CB5BBC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x1F:
          sub_298CB5BDC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x20:
          sub_298CB5BFC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x21:
          sub_298CB5C1C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x22:
          sub_298CB5C3C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x23:
          sub_298CB5C5C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x24:
          sub_298CB5C7C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x25:
          sub_298CB5C9C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x26:
          sub_298CB5CBC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x27:
          sub_298CB5CDC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_272;
        case 0x28:
          goto LABEL_742;
        case 0x29:
          sub_298CB20E0(a1, a2, a5);
          v28 = ", mul vl]";
          goto LABEL_631;
        case 0x2A:
          goto LABEL_761;
        case 0x2B:
          v149 = *(a2 + 16);
          v150 = 3;
          goto LABEL_264;
        default:
          goto LABEL_731;
      }

      v323 = *a2;
      if (*a2 > 4503)
      {
        if (v323 <= 5895)
        {
          if (v323 <= 5257)
          {
            switch(v323)
            {
              case 4505:
              case 4507:
              case 4508:
              case 4510:
              case 4512:
              case 4513:
              case 4514:
              case 4515:
              case 4516:
              case 4517:
              case 4518:
              case 4519:
              case 4521:
              case 4523:
              case 4524:
              case 4525:
              case 4526:
              case 4527:
              case 4529:
              case 4531:
              case 4532:
              case 4534:
              case 4536:
              case 4537:
              case 4538:
              case 4539:
              case 4540:
              case 4541:
              case 4542:
              case 4543:
              case 4545:
              case 4547:
              case 4548:
              case 4549:
              case 4550:
              case 4551:
              case 4552:
              case 4553:
              case 4554:
              case 4555:
              case 4556:
              case 4557:
              case 4558:
              case 4559:
              case 4560:
              case 4561:
              case 4562:
              case 4563:
              case 4564:
              case 4565:
              case 4566:
              case 4567:
              case 4568:
              case 4569:
              case 4570:
              case 4571:
              case 4572:
              case 4573:
              case 4574:
              case 4575:
              case 4576:
              case 4577:
              case 4578:
              case 4579:
              case 4580:
              case 4581:
              case 4582:
              case 4583:
              case 4584:
              case 4585:
              case 4586:
              case 4587:
              case 4588:
              case 4589:
              case 4590:
              case 4592:
              case 4594:
              case 4595:
              case 4596:
              case 4597:
              case 4599:
              case 4601:
              case 4602:
              case 4603:
              case 4604:
              case 4605:
              case 4607:
              case 4609:
              case 4611:
              case 4613:
              case 4614:
              case 4616:
              case 4618:
              case 4619:
              case 4620:
              case 4621:
              case 4622:
              case 4624:
              case 4626:
              case 4628:
              case 4630:
              case 4631:
              case 4632:
              case 4633:
              case 4634:
              case 4635:
              case 4636:
              case 4637:
              case 4638:
              case 4639:
              case 4640:
              case 4641:
              case 4642:
              case 4643:
              case 4644:
              case 4645:
              case 4646:
              case 4647:
              case 4648:
              case 4649:
              case 4650:
              case 4651:
              case 4652:
              case 4653:
              case 4654:
              case 4655:
              case 4656:
              case 4657:
              case 4658:
              case 4659:
              case 4660:
              case 4661:
              case 4662:
              case 4663:
              case 4664:
              case 4665:
              case 4666:
              case 4667:
              case 4668:
              case 4669:
              case 4670:
              case 4671:
              case 4672:
              case 4673:
              case 4674:
              case 4675:
              case 4676:
              case 4677:
              case 4678:
              case 4679:
              case 4680:
              case 4681:
              case 4682:
              case 4683:
              case 4684:
              case 4685:
              case 4686:
              case 4687:
              case 4688:
              case 4689:
              case 4690:
              case 4691:
              case 4692:
              case 4693:
              case 4694:
              case 4695:
              case 4696:
              case 4697:
              case 4698:
              case 4699:
              case 4700:
              case 4701:
              case 4702:
              case 4703:
              case 4704:
              case 4705:
              case 4706:
              case 4707:
              case 4708:
              case 4709:
              case 4710:
              case 4711:
              case 4712:
              case 4713:
              case 4714:
              case 4715:
              case 4716:
              case 4717:
              case 4718:
              case 4719:
              case 4720:
              case 4721:
              case 4722:
              case 4723:
              case 4724:
              case 4725:
              case 4726:
              case 4727:
              case 4728:
              case 4729:
              case 4731:
              case 4733:
              case 4734:
              case 4735:
              case 4736:
              case 4737:
              case 4738:
              case 4739:
              case 4740:
              case 4741:
              case 4742:
              case 4743:
              case 4744:
              case 4745:
              case 4747:
              case 4749:
              case 4750:
              case 4751:
              case 4752:
              case 4753:
              case 4754:
              case 4755:
              case 4756:
              case 4757:
              case 4758:
              case 4759:
              case 4760:
              case 4761:
              case 4762:
              case 4763:
              case 4764:
              case 4765:
              case 4766:
              case 4767:
              case 4768:
              case 4769:
              case 4770:
              case 4771:
              case 4772:
              case 4773:
              case 4775:
              case 4776:
              case 4777:
              case 4778:
              case 4779:
              case 4780:
              case 4781:
              case 4782:
              case 4783:
              case 4784:
              case 4785:
              case 4786:
              case 4787:
              case 4788:
              case 4789:
              case 4790:
              case 4791:
              case 4792:
              case 4793:
              case 4794:
              case 4795:
              case 4796:
              case 4797:
              case 4798:
              case 4799:
              case 4800:
              case 4801:
              case 4802:
              case 4803:
              case 4804:
              case 4805:
              case 4806:
              case 4807:
              case 4808:
              case 4809:
              case 4810:
              case 4811:
              case 4812:
              case 4813:
              case 4814:
              case 4816:
                goto LABEL_828;
              default:
                return;
            }
          }

          else
          {
            switch(v323)
            {
              case 5522:
              case 5524:
              case 5566:
              case 5568:
              case 5570:
              case 5572:
              case 5610:
              case 5612:
              case 5614:
              case 5616:
              case 5639:
              case 5641:
              case 5672:
              case 5674:
              case 5695:
              case 5697:
              case 5766:
              case 5767:
              case 5768:
              case 5770:
              case 5772:
              case 5774:
              case 5791:
              case 5792:
              case 5793:
              case 5795:
              case 5797:
              case 5799:
                return;
              case 5523:
              case 5525:
              case 5526:
              case 5527:
              case 5528:
              case 5529:
              case 5530:
              case 5531:
              case 5532:
              case 5533:
              case 5534:
              case 5535:
              case 5536:
              case 5537:
              case 5538:
              case 5539:
              case 5540:
              case 5541:
              case 5542:
              case 5543:
              case 5544:
              case 5545:
              case 5546:
              case 5547:
              case 5548:
              case 5549:
              case 5550:
              case 5551:
              case 5552:
              case 5553:
              case 5554:
              case 5555:
              case 5556:
              case 5557:
              case 5558:
              case 5559:
              case 5560:
              case 5561:
              case 5562:
              case 5563:
              case 5564:
              case 5565:
              case 5567:
              case 5569:
              case 5571:
              case 5573:
              case 5574:
              case 5575:
              case 5576:
              case 5577:
              case 5578:
              case 5579:
              case 5580:
              case 5581:
              case 5582:
              case 5583:
              case 5584:
              case 5585:
              case 5586:
              case 5587:
              case 5588:
              case 5589:
              case 5590:
              case 5591:
              case 5592:
              case 5593:
              case 5594:
              case 5595:
              case 5596:
              case 5597:
              case 5598:
              case 5599:
              case 5600:
              case 5601:
              case 5602:
              case 5603:
              case 5604:
              case 5605:
              case 5606:
              case 5607:
              case 5608:
              case 5609:
              case 5611:
              case 5613:
              case 5615:
              case 5617:
              case 5618:
              case 5619:
              case 5620:
              case 5621:
              case 5622:
              case 5623:
              case 5624:
              case 5625:
              case 5626:
              case 5627:
              case 5628:
              case 5629:
              case 5630:
              case 5631:
              case 5632:
              case 5633:
              case 5634:
              case 5635:
              case 5636:
              case 5637:
              case 5638:
              case 5640:
              case 5642:
              case 5643:
              case 5644:
              case 5645:
              case 5646:
              case 5647:
              case 5648:
              case 5649:
              case 5650:
              case 5651:
              case 5652:
              case 5653:
              case 5654:
              case 5655:
              case 5656:
              case 5657:
              case 5658:
              case 5659:
              case 5660:
              case 5661:
              case 5662:
              case 5663:
              case 5664:
              case 5665:
              case 5666:
              case 5667:
              case 5668:
              case 5669:
              case 5670:
              case 5671:
              case 5673:
              case 5675:
              case 5676:
              case 5677:
              case 5678:
              case 5679:
              case 5680:
              case 5681:
              case 5682:
              case 5683:
              case 5684:
              case 5685:
              case 5686:
              case 5687:
              case 5688:
              case 5689:
              case 5690:
              case 5691:
              case 5692:
              case 5693:
              case 5694:
              case 5696:
              case 5698:
              case 5699:
              case 5700:
              case 5701:
              case 5702:
              case 5703:
              case 5704:
              case 5705:
              case 5706:
              case 5707:
              case 5708:
              case 5709:
              case 5710:
              case 5711:
              case 5712:
              case 5713:
              case 5714:
              case 5715:
              case 5716:
              case 5717:
              case 5718:
              case 5719:
              case 5720:
              case 5721:
              case 5722:
              case 5723:
              case 5724:
              case 5725:
              case 5726:
              case 5727:
              case 5728:
              case 5729:
              case 5730:
              case 5731:
              case 5732:
              case 5733:
              case 5734:
              case 5735:
              case 5736:
              case 5737:
              case 5738:
              case 5739:
              case 5740:
              case 5741:
              case 5742:
              case 5743:
              case 5744:
              case 5745:
              case 5746:
              case 5747:
              case 5748:
              case 5749:
              case 5750:
              case 5751:
              case 5752:
              case 5753:
              case 5754:
              case 5755:
              case 5756:
              case 5757:
              case 5758:
              case 5759:
              case 5760:
              case 5761:
              case 5762:
              case 5763:
              case 5764:
              case 5765:
              case 5769:
              case 5771:
              case 5773:
              case 5775:
              case 5776:
              case 5777:
              case 5778:
              case 5779:
              case 5780:
              case 5781:
              case 5782:
              case 5783:
              case 5784:
              case 5785:
              case 5786:
              case 5787:
              case 5788:
              case 5789:
              case 5790:
              case 5794:
              case 5796:
              case 5798:
                goto LABEL_828;
              default:
                switch(v323)
                {
                  case 5260:
                  case 5261:
                  case 5264:
                  case 5265:
                  case 5266:
                  case 5267:
                  case 5268:
                  case 5269:
                  case 5270:
                  case 5271:
                  case 5272:
                  case 5273:
                  case 5274:
                  case 5275:
                  case 5276:
                  case 5277:
                  case 5278:
                  case 5279:
                  case 5280:
                  case 5281:
                  case 5282:
                  case 5283:
                  case 5284:
                  case 5285:
                  case 5286:
                  case 5287:
                  case 5288:
                  case 5289:
                  case 5290:
                  case 5291:
                  case 5292:
                  case 5293:
                  case 5294:
                  case 5295:
                  case 5296:
                  case 5297:
                  case 5298:
                  case 5299:
                  case 5300:
                  case 5301:
                  case 5303:
                  case 5305:
                  case 5306:
                  case 5307:
                  case 5308:
                  case 5309:
                  case 5310:
                  case 5311:
                  case 5312:
                  case 5313:
                  case 5314:
                  case 5315:
                  case 5316:
                  case 5317:
                  case 5318:
                  case 5319:
                  case 5320:
                  case 5321:
                  case 5322:
                  case 5323:
                  case 5324:
                  case 5325:
                  case 5326:
                  case 5327:
                  case 5328:
                  case 5329:
                  case 5330:
                  case 5331:
                  case 5332:
                  case 5333:
                  case 5334:
                  case 5335:
                  case 5336:
                  case 5337:
                  case 5338:
                  case 5339:
                  case 5340:
                  case 5341:
                  case 5342:
                  case 5344:
                  case 5346:
                  case 5347:
                  case 5348:
                  case 5349:
                  case 5350:
                  case 5351:
                  case 5352:
                  case 5353:
                  case 5354:
                  case 5355:
                  case 5356:
                  case 5357:
                  case 5358:
                  case 5359:
                  case 5360:
                  case 5361:
                  case 5362:
                  case 5363:
                  case 5364:
                  case 5365:
                  case 5366:
                  case 5367:
                  case 5368:
                  case 5369:
                  case 5370:
                  case 5371:
                  case 5372:
                  case 5373:
                  case 5374:
                  case 5375:
                  case 5376:
                  case 5377:
                  case 5378:
                  case 5380:
                  case 5382:
                  case 5384:
                  case 5386:
                  case 5387:
                  case 5388:
                  case 5389:
                  case 5390:
                  case 5391:
                  case 5392:
                  case 5393:
                  case 5394:
                  case 5395:
                  case 5396:
                  case 5397:
                  case 5398:
                  case 5399:
                  case 5400:
                  case 5401:
                  case 5402:
                  case 5403:
                  case 5404:
                  case 5405:
                  case 5411:
                  case 5412:
                  case 5413:
                  case 5414:
                  case 5415:
                  case 5416:
                  case 5418:
                  case 5420:
                  case 5421:
                  case 5422:
                  case 5423:
                  case 5424:
                  case 5425:
                  case 5426:
                  case 5427:
                  case 5428:
                  case 5429:
                  case 5430:
                  case 5431:
                  case 5432:
                  case 5433:
                  case 5434:
                  case 5435:
                  case 5436:
                  case 5437:
                  case 5438:
                  case 5439:
                  case 5440:
                  case 5441:
                  case 5442:
                  case 5443:
                  case 5444:
                  case 5445:
                  case 5446:
                  case 5447:
                  case 5448:
                  case 5449:
                  case 5450:
                  case 5451:
                  case 5452:
                  case 5453:
                  case 5454:
                  case 5455:
                  case 5456:
                  case 5457:
                  case 5458:
                  case 5459:
                  case 5460:
                  case 5461:
                  case 5462:
                  case 5463:
                  case 5465:
                  case 5467:
                  case 5468:
                  case 5469:
                  case 5470:
                  case 5471:
                  case 5472:
                  case 5473:
                  case 5474:
                  case 5476:
                    goto LABEL_828;
                  case 5406:
                    goto LABEL_820;
                  default:
                    return;
                }
            }
          }
        }

        else if (v323 > 7025)
        {
          if (v323 > 7513)
          {
            switch(v323)
            {
              case 7515:
              case 7517:
              case 7519:
              case 7521:
              case 7522:
              case 7523:
              case 7524:
              case 7525:
              case 7526:
              case 7527:
              case 7528:
              case 7529:
              case 7530:
              case 7531:
              case 7532:
              case 7533:
              case 7534:
              case 7535:
              case 7536:
              case 7537:
              case 7538:
              case 7539:
              case 7540:
              case 7541:
              case 7542:
              case 7543:
              case 7544:
              case 7545:
              case 7546:
              case 7547:
              case 7548:
              case 7549:
              case 7550:
              case 7551:
              case 7552:
              case 7553:
              case 7555:
              case 7557:
              case 7558:
              case 7559:
              case 7560:
              case 7561:
              case 7563:
              case 7565:
              case 7566:
              case 7567:
              case 7568:
              case 7569:
              case 7570:
              case 7571:
              case 7572:
              case 7573:
              case 7574:
              case 7575:
              case 7576:
              case 7577:
              case 7578:
              case 7579:
              case 7580:
              case 7581:
              case 7582:
              case 7583:
              case 7584:
              case 7585:
              case 7586:
              case 7587:
              case 7588:
              case 7589:
              case 7590:
              case 7591:
              case 7592:
              case 7593:
              case 7594:
              case 7595:
              case 7596:
              case 7597:
              case 7598:
              case 7599:
              case 7600:
              case 7601:
              case 7602:
              case 7604:
              case 7606:
              case 7607:
              case 7608:
              case 7609:
              case 7610:
              case 7612:
              case 7614:
              case 7615:
              case 7616:
              case 7617:
              case 7618:
              case 7619:
              case 7620:
              case 7621:
              case 7622:
              case 7623:
              case 7624:
              case 7625:
              case 7626:
              case 7627:
              case 7628:
              case 7629:
              case 7630:
              case 7631:
              case 7632:
              case 7633:
              case 7634:
              case 7635:
              case 7636:
              case 7637:
              case 7638:
              case 7639:
              case 7640:
              case 7641:
              case 7642:
              case 7643:
              case 7644:
              case 7645:
              case 7646:
              case 7647:
              case 7649:
              case 7651:
              case 7652:
              case 7653:
              case 7654:
              case 7655:
              case 7656:
              case 7657:
              case 7659:
              case 7661:
              case 7662:
              case 7663:
              case 7664:
              case 7665:
              case 7666:
              case 7667:
              case 7668:
              case 7669:
              case 7670:
              case 7671:
              case 7672:
              case 7673:
              case 7674:
              case 7675:
              case 7676:
              case 7677:
              case 7679:
                goto LABEL_828;
              default:
                return;
            }
          }

          else
          {
            switch(v323)
            {
              case 7135:
              case 7136:
              case 7139:
              case 7140:
              case 7141:
              case 7142:
              case 7143:
              case 7144:
              case 7145:
              case 7146:
              case 7147:
              case 7148:
              case 7149:
              case 7150:
              case 7151:
              case 7152:
              case 7153:
              case 7154:
              case 7155:
              case 7156:
              case 7157:
              case 7158:
              case 7159:
              case 7160:
              case 7161:
              case 7162:
              case 7163:
              case 7164:
              case 7165:
              case 7166:
              case 7167:
              case 7169:
              case 7171:
              case 7172:
              case 7173:
              case 7174:
              case 7175:
              case 7176:
              case 7177:
              case 7179:
              case 7181:
              case 7183:
              case 7185:
              case 7186:
              case 7187:
              case 7188:
              case 7189:
              case 7190:
              case 7191:
              case 7192:
              case 7194:
              case 7196:
              case 7197:
              case 7198:
              case 7199:
              case 7200:
              case 7201:
              case 7202:
              case 7203:
              case 7204:
              case 7205:
              case 7206:
              case 7207:
              case 7208:
              case 7209:
              case 7210:
              case 7211:
              case 7212:
              case 7213:
              case 7214:
              case 7215:
              case 7216:
              case 7217:
              case 7218:
              case 7219:
              case 7220:
              case 7221:
              case 7222:
              case 7223:
              case 7224:
              case 7225:
              case 7226:
              case 7227:
              case 7228:
              case 7229:
              case 7230:
              case 7231:
              case 7232:
              case 7233:
              case 7234:
              case 7235:
              case 7236:
              case 7237:
              case 7238:
              case 7239:
              case 7241:
              case 7243:
              case 7244:
              case 7245:
              case 7246:
              case 7247:
              case 7248:
              case 7249:
              case 7251:
              case 7253:
              case 7254:
              case 7255:
              case 7256:
              case 7257:
              case 7258:
              case 7259:
              case 7260:
              case 7261:
              case 7262:
              case 7263:
              case 7264:
              case 7265:
              case 7266:
              case 7267:
              case 7268:
              case 7269:
              case 7270:
              case 7271:
              case 7272:
              case 7273:
              case 7274:
              case 7275:
              case 7276:
              case 7277:
              case 7278:
              case 7279:
              case 7280:
              case 7281:
              case 7282:
              case 7283:
              case 7284:
              case 7285:
              case 7286:
              case 7287:
              case 7288:
              case 7289:
              case 7290:
              case 7291:
              case 7292:
              case 7293:
              case 7294:
              case 7295:
              case 7296:
              case 7298:
              case 7300:
              case 7301:
              case 7302:
              case 7303:
              case 7304:
              case 7305:
              case 7306:
              case 7307:
              case 7308:
              case 7309:
              case 7310:
              case 7311:
              case 7312:
              case 7313:
              case 7314:
              case 7315:
              case 7316:
              case 7317:
              case 7318:
              case 7319:
              case 7320:
              case 7321:
              case 7322:
              case 7323:
              case 7324:
              case 7325:
              case 7326:
              case 7327:
              case 7328:
              case 7329:
              case 7330:
              case 7331:
              case 7332:
              case 7333:
              case 7334:
              case 7335:
              case 7336:
              case 7337:
              case 7338:
              case 7339:
              case 7340:
              case 7342:
              case 7344:
              case 7346:
              case 7348:
              case 7349:
              case 7350:
              case 7351:
              case 7352:
              case 7353:
              case 7354:
              case 7355:
              case 7356:
              case 7357:
              case 7358:
              case 7359:
              case 7360:
              case 7361:
              case 7362:
              case 7363:
              case 7364:
              case 7365:
              case 7366:
              case 7367:
              case 7368:
              case 7369:
              case 7370:
              case 7371:
              case 7372:
              case 7373:
              case 7374:
              case 7375:
              case 7376:
              case 7377:
              case 7378:
              case 7379:
              case 7380:
              case 7381:
              case 7382:
              case 7383:
              case 7384:
              case 7386:
              case 7388:
              case 7390:
                goto LABEL_828;
              default:
                return;
            }
          }
        }

        else if (v323 > 6585)
        {
          if (v323 <= 6861)
          {
            switch(v323)
            {
              case 6672:
              case 6675:
              case 6678:
              case 6681:
              case 6684:
              case 6782:
              case 6784:
              case 6816:
              case 6817:
              case 6819:
                return;
              case 6674:
              case 6677:
              case 6680:
              case 6683:
              case 6686:
              case 6687:
              case 6688:
              case 6689:
              case 6690:
              case 6691:
              case 6692:
              case 6693:
              case 6694:
              case 6695:
              case 6696:
              case 6697:
              case 6698:
              case 6699:
              case 6700:
              case 6701:
              case 6702:
              case 6703:
              case 6704:
              case 6705:
              case 6706:
              case 6707:
              case 6708:
              case 6709:
              case 6710:
              case 6711:
              case 6712:
              case 6713:
              case 6714:
              case 6715:
              case 6716:
              case 6717:
              case 6718:
              case 6719:
              case 6720:
              case 6721:
              case 6722:
              case 6723:
              case 6724:
              case 6725:
              case 6726:
              case 6727:
              case 6728:
              case 6729:
              case 6730:
              case 6731:
              case 6732:
              case 6733:
              case 6734:
              case 6735:
              case 6736:
              case 6737:
              case 6738:
              case 6739:
              case 6740:
              case 6741:
              case 6742:
              case 6743:
              case 6744:
              case 6745:
              case 6746:
              case 6747:
              case 6748:
              case 6749:
              case 6750:
              case 6751:
              case 6752:
              case 6753:
              case 6754:
              case 6755:
              case 6756:
              case 6757:
              case 6758:
              case 6759:
              case 6760:
              case 6761:
              case 6762:
              case 6763:
              case 6764:
              case 6765:
              case 6766:
              case 6767:
              case 6768:
              case 6769:
              case 6770:
              case 6771:
              case 6772:
              case 6773:
              case 6774:
              case 6775:
              case 6776:
              case 6777:
              case 6778:
              case 6779:
              case 6780:
              case 6781:
              case 6783:
              case 6785:
              case 6786:
              case 6787:
              case 6788:
              case 6789:
              case 6790:
              case 6791:
              case 6792:
              case 6793:
              case 6794:
              case 6795:
              case 6796:
              case 6797:
              case 6798:
              case 6799:
              case 6800:
              case 6801:
              case 6802:
              case 6803:
              case 6804:
              case 6805:
              case 6806:
              case 6807:
              case 6808:
              case 6809:
              case 6810:
              case 6811:
              case 6812:
              case 6813:
              case 6814:
              case 6815:
              case 6818:
                goto LABEL_828;
              default:
                goto LABEL_820;
            }
          }
        }

        else
        {
          switch(v323)
          {
            case 5896:
              goto LABEL_820;
            case 5897:
            case 5898:
            case 5899:
            case 5900:
            case 5901:
            case 5902:
            case 5903:
            case 5904:
            case 5905:
            case 5906:
            case 5907:
            case 5908:
            case 5910:
            case 5912:
            case 5914:
            case 5916:
            case 5918:
            case 5920:
            case 5921:
            case 5922:
            case 5923:
            case 5924:
            case 5925:
            case 5926:
            case 5927:
            case 5929:
            case 5931:
            case 5933:
            case 5935:
            case 5937:
            case 5939:
            case 5940:
            case 5941:
            case 5942:
            case 5943:
            case 5944:
            case 5945:
            case 5946:
            case 5947:
            case 5948:
            case 5949:
            case 5950:
            case 5951:
            case 5952:
            case 5953:
            case 5954:
            case 5955:
            case 5956:
            case 5957:
            case 5958:
            case 5960:
            case 5962:
            case 5964:
            case 5966:
            case 5967:
            case 5968:
            case 5969:
            case 5970:
            case 5971:
            case 5972:
            case 5973:
            case 5974:
            case 5975:
            case 5976:
            case 5977:
            case 5978:
            case 5979:
            case 5980:
            case 5981:
            case 5982:
            case 5983:
            case 5984:
            case 5985:
            case 5986:
            case 5987:
            case 5988:
            case 5989:
            case 5990:
            case 5991:
            case 5992:
            case 5993:
            case 5994:
            case 5995:
            case 5996:
            case 5997:
            case 5998:
            case 5999:
            case 6000:
            case 6001:
            case 6002:
            case 6003:
            case 6004:
            case 6005:
            case 6006:
            case 6007:
            case 6008:
            case 6009:
            case 6010:
            case 6011:
            case 6012:
            case 6013:
            case 6014:
            case 6015:
            case 6016:
            case 6017:
            case 6018:
            case 6019:
            case 6021:
            case 6023:
            case 6024:
            case 6025:
            case 6026:
            case 6027:
            case 6028:
            case 6029:
            case 6030:
            case 6031:
            case 6032:
            case 6033:
            case 6034:
            case 6035:
            case 6036:
            case 6037:
            case 6038:
            case 6039:
            case 6040:
            case 6041:
            case 6042:
            case 6044:
            case 6046:
            case 6047:
            case 6048:
            case 6049:
            case 6050:
            case 6051:
            case 6052:
            case 6053:
            case 6054:
            case 6055:
            case 6056:
            case 6057:
            case 6058:
            case 6059:
            case 6060:
            case 6061:
            case 6062:
            case 6063:
            case 6064:
            case 6065:
            case 6066:
            case 6067:
            case 6068:
            case 6069:
            case 6070:
            case 6071:
            case 6072:
            case 6073:
            case 6074:
            case 6075:
            case 6076:
            case 6077:
            case 6078:
            case 6079:
            case 6080:
            case 6081:
            case 6082:
            case 6083:
            case 6084:
            case 6085:
            case 6086:
            case 6087:
            case 6088:
            case 6089:
            case 6090:
            case 6091:
            case 6092:
            case 6093:
            case 6094:
            case 6095:
            case 6096:
            case 6097:
            case 6098:
            case 6100:
            case 6102:
            case 6103:
            case 6104:
            case 6105:
            case 6106:
            case 6108:
            case 6110:
            case 6111:
            case 6112:
            case 6113:
            case 6114:
            case 6115:
            case 6116:
            case 6117:
            case 6118:
            case 6119:
            case 6120:
            case 6121:
            case 6122:
            case 6123:
            case 6124:
            case 6125:
            case 6126:
            case 6127:
            case 6128:
            case 6129:
            case 6130:
            case 6131:
            case 6132:
            case 6133:
            case 6134:
            case 6135:
            case 6136:
            case 6137:
            case 6138:
            case 6139:
            case 6140:
            case 6141:
            case 6142:
            case 6143:
            case 6144:
            case 6145:
            case 6146:
            case 6147:
            case 6148:
            case 6149:
            case 6150:
            case 6151:
            case 6152:
            case 6153:
            case 6154:
            case 6155:
            case 6157:
            case 6159:
            case 6160:
            case 6161:
            case 6162:
            case 6163:
            case 6164:
            case 6165:
            case 6166:
            case 6167:
            case 6168:
            case 6169:
            case 6170:
            case 6171:
            case 6172:
            case 6173:
            case 6174:
            case 6175:
            case 6176:
            case 6177:
            case 6179:
            case 6181:
            case 6182:
            case 6183:
            case 6184:
            case 6185:
            case 6186:
            case 6187:
            case 6188:
            case 6189:
            case 6190:
            case 6191:
            case 6192:
            case 6193:
            case 6194:
            case 6195:
            case 6196:
            case 6197:
            case 6199:
              goto LABEL_828;
            default:
              return;
          }
        }

        return;
      }

      if (v323 <= 2799)
      {
        switch(v323)
        {
          case 1364:
          case 1366:
          case 1428:
          case 1429:
          case 1431:
          case 1491:
          case 1493:
          case 1502:
          case 1504:
          case 1507:
          case 1509:
          case 1518:
          case 1520:
          case 1548:
          case 1619:
          case 1623:
          case 1689:
          case 1691:
          case 1731:
          case 1732:
          case 1733:
          case 1784:
          case 1786:
          case 1788:
          case 1790:
          case 1792:
          case 1794:
          case 1796:
          case 1798:
          case 1800:
          case 1802:
          case 1804:
          case 1806:
          case 1923:
          case 1925:
          case 1926:
          case 1928:
          case 1934:
          case 1936:
          case 1937:
          case 1939:
          case 1945:
          case 1947:
          case 1948:
          case 1950:
          case 1956:
          case 1958:
          case 1959:
          case 1961:
          case 1967:
          case 1969:
          case 1970:
          case 1972:
          case 1977:
          case 1979:
          case 1984:
          case 1986:
          case 1991:
          case 1993:
          case 1998:
          case 2000:
          case 2006:
          case 2008:
          case 2009:
          case 2011:
            return;
          case 1365:
          case 1367:
          case 1368:
          case 1369:
          case 1370:
          case 1371:
          case 1372:
          case 1373:
          case 1374:
          case 1375:
          case 1376:
          case 1377:
          case 1378:
          case 1379:
          case 1380:
          case 1381:
          case 1382:
          case 1383:
          case 1384:
          case 1385:
          case 1386:
          case 1387:
          case 1388:
          case 1389:
          case 1390:
          case 1391:
          case 1392:
          case 1393:
          case 1394:
          case 1395:
          case 1396:
          case 1397:
          case 1398:
          case 1399:
          case 1400:
          case 1401:
          case 1402:
          case 1403:
          case 1404:
          case 1405:
          case 1406:
          case 1407:
          case 1408:
          case 1409:
          case 1410:
          case 1411:
          case 1412:
          case 1413:
          case 1414:
          case 1415:
          case 1416:
          case 1417:
          case 1418:
          case 1419:
          case 1420:
          case 1421:
          case 1422:
          case 1423:
          case 1424:
          case 1425:
          case 1426:
          case 1427:
          case 1430:
          case 1432:
          case 1433:
          case 1434:
          case 1435:
          case 1436:
          case 1437:
          case 1438:
          case 1439:
          case 1440:
          case 1441:
          case 1442:
          case 1443:
          case 1444:
          case 1445:
          case 1446:
          case 1447:
          case 1448:
          case 1449:
          case 1450:
          case 1451:
          case 1452:
          case 1453:
          case 1454:
          case 1455:
          case 1456:
          case 1457:
          case 1458:
          case 1459:
          case 1460:
          case 1461:
          case 1462:
          case 1463:
          case 1464:
          case 1465:
          case 1466:
          case 1467:
          case 1468:
          case 1469:
          case 1470:
          case 1471:
          case 1472:
          case 1473:
          case 1474:
          case 1475:
          case 1476:
          case 1477:
          case 1478:
          case 1479:
          case 1480:
          case 1481:
          case 1482:
          case 1483:
          case 1484:
          case 1485:
          case 1486:
          case 1487:
          case 1488:
          case 1489:
          case 1490:
          case 1492:
          case 1494:
          case 1495:
          case 1496:
          case 1497:
          case 1498:
          case 1499:
          case 1500:
          case 1501:
          case 1503:
          case 1505:
          case 1506:
          case 1508:
          case 1510:
          case 1511:
          case 1512:
          case 1513:
          case 1514:
          case 1515:
          case 1516:
          case 1517:
          case 1519:
          case 1521:
          case 1522:
          case 1523:
          case 1524:
          case 1525:
          case 1526:
          case 1527:
          case 1528:
          case 1529:
          case 1530:
          case 1531:
          case 1532:
          case 1533:
          case 1534:
          case 1535:
          case 1536:
          case 1537:
          case 1538:
          case 1539:
          case 1540:
          case 1541:
          case 1542:
          case 1543:
          case 1544:
          case 1545:
          case 1546:
          case 1549:
          case 1550:
          case 1551:
          case 1552:
          case 1553:
          case 1554:
          case 1555:
          case 1556:
          case 1557:
          case 1558:
          case 1559:
          case 1560:
          case 1561:
          case 1562:
          case 1563:
          case 1564:
          case 1565:
          case 1566:
          case 1567:
          case 1568:
          case 1569:
          case 1570:
          case 1571:
          case 1572:
          case 1573:
          case 1574:
          case 1575:
          case 1576:
          case 1577:
          case 1578:
          case 1579:
          case 1580:
          case 1581:
          case 1582:
          case 1583:
          case 1584:
          case 1585:
          case 1586:
          case 1587:
          case 1588:
          case 1589:
          case 1590:
          case 1591:
          case 1592:
          case 1593:
          case 1594:
          case 1595:
          case 1596:
          case 1597:
          case 1598:
          case 1599:
          case 1600:
          case 1601:
          case 1602:
          case 1603:
          case 1604:
          case 1605:
          case 1606:
          case 1607:
          case 1608:
          case 1609:
          case 1610:
          case 1611:
          case 1612:
          case 1613:
          case 1614:
          case 1615:
          case 1616:
          case 1617:
          case 1618:
          case 1620:
          case 1621:
          case 1622:
          case 1624:
          case 1625:
          case 1626:
          case 1627:
          case 1628:
          case 1629:
          case 1630:
          case 1631:
          case 1632:
          case 1633:
          case 1634:
          case 1635:
          case 1636:
          case 1637:
          case 1638:
          case 1639:
          case 1640:
          case 1641:
          case 1642:
          case 1643:
          case 1644:
          case 1645:
          case 1646:
          case 1647:
          case 1648:
          case 1649:
          case 1650:
          case 1651:
          case 1652:
          case 1653:
          case 1654:
          case 1655:
          case 1656:
          case 1657:
          case 1658:
          case 1659:
          case 1660:
          case 1661:
          case 1662:
          case 1663:
          case 1664:
          case 1665:
          case 1666:
          case 1667:
          case 1668:
          case 1669:
          case 1670:
          case 1671:
          case 1672:
          case 1673:
          case 1674:
          case 1675:
          case 1676:
          case 1677:
          case 1678:
          case 1679:
          case 1680:
          case 1681:
          case 1682:
          case 1683:
          case 1684:
          case 1685:
          case 1686:
          case 1687:
          case 1688:
          case 1690:
          case 1692:
          case 1693:
          case 1694:
          case 1695:
          case 1696:
          case 1697:
          case 1698:
          case 1699:
          case 1700:
          case 1701:
          case 1702:
          case 1703:
          case 1704:
          case 1705:
          case 1706:
          case 1707:
          case 1708:
          case 1709:
          case 1710:
          case 1711:
          case 1712:
          case 1713:
          case 1714:
          case 1715:
          case 1716:
          case 1717:
          case 1718:
          case 1719:
          case 1720:
          case 1721:
          case 1722:
          case 1723:
          case 1724:
          case 1725:
          case 1726:
          case 1727:
          case 1728:
          case 1729:
          case 1730:
          case 1734:
          case 1735:
          case 1736:
          case 1737:
          case 1738:
          case 1739:
          case 1740:
          case 1741:
          case 1742:
          case 1743:
          case 1744:
          case 1745:
          case 1746:
          case 1747:
          case 1748:
          case 1749:
          case 1750:
          case 1751:
          case 1752:
          case 1753:
          case 1754:
          case 1755:
          case 1756:
          case 1757:
          case 1758:
          case 1759:
          case 1760:
          case 1761:
          case 1762:
          case 1763:
          case 1764:
          case 1765:
          case 1766:
          case 1767:
          case 1768:
          case 1769:
          case 1770:
          case 1771:
          case 1772:
          case 1773:
          case 1774:
          case 1775:
          case 1776:
          case 1778:
          case 1779:
          case 1780:
          case 1781:
          case 1782:
          case 1783:
          case 1785:
          case 1787:
          case 1789:
          case 1791:
          case 1793:
          case 1795:
          case 1797:
          case 1799:
          case 1801:
          case 1803:
          case 1805:
          case 1807:
          case 1808:
          case 1809:
          case 1810:
          case 1811:
          case 1812:
          case 1813:
          case 1814:
          case 1815:
          case 1816:
          case 1817:
          case 1818:
          case 1819:
          case 1820:
          case 1821:
          case 1822:
          case 1823:
          case 1824:
          case 1825:
          case 1826:
          case 1827:
          case 1828:
          case 1829:
          case 1830:
          case 1831:
          case 1832:
          case 1833:
          case 1834:
          case 1835:
          case 1836:
          case 1837:
          case 1838:
          case 1839:
          case 1840:
          case 1841:
          case 1842:
          case 1843:
          case 1844:
          case 1845:
          case 1846:
          case 1847:
          case 1848:
          case 1849:
          case 1850:
          case 1851:
          case 1852:
          case 1853:
          case 1854:
          case 1855:
          case 1856:
          case 1857:
          case 1858:
          case 1859:
          case 1860:
          case 1861:
          case 1862:
          case 1863:
          case 1864:
          case 1865:
          case 1866:
          case 1867:
          case 1868:
          case 1869:
          case 1870:
          case 1871:
          case 1872:
          case 1873:
          case 1874:
          case 1875:
          case 1876:
          case 1877:
          case 1878:
          case 1879:
          case 1880:
          case 1881:
          case 1882:
          case 1883:
          case 1884:
          case 1885:
          case 1886:
          case 1887:
          case 1888:
          case 1889:
          case 1890:
          case 1891:
          case 1892:
          case 1893:
          case 1894:
          case 1895:
          case 1896:
          case 1898:
          case 1899:
          case 1900:
          case 1901:
          case 1902:
          case 1903:
          case 1904:
          case 1905:
          case 1906:
          case 1907:
          case 1908:
          case 1909:
          case 1910:
          case 1911:
          case 1912:
          case 1913:
          case 1914:
          case 1915:
          case 1916:
          case 1917:
          case 1918:
          case 1919:
          case 1920:
          case 1921:
          case 1922:
          case 1924:
          case 1927:
          case 1929:
          case 1930:
          case 1931:
          case 1932:
          case 1933:
          case 1935:
          case 1938:
          case 1940:
          case 1941:
          case 1942:
          case 1943:
          case 1944:
          case 1946:
          case 1949:
          case 1951:
          case 1952:
          case 1953:
          case 1954:
          case 1955:
          case 1957:
          case 1960:
          case 1962:
          case 1963:
          case 1964:
          case 1965:
          case 1966:
          case 1968:
          case 1971:
          case 1973:
          case 1974:
          case 1975:
          case 1976:
          case 1978:
          case 1980:
          case 1981:
          case 1982:
          case 1983:
          case 1985:
          case 1987:
          case 1988:
          case 1989:
          case 1990:
          case 1992:
          case 1994:
          case 1995:
          case 1996:
          case 1997:
          case 1999:
          case 2001:
          case 2002:
          case 2003:
          case 2004:
          case 2005:
          case 2007:
          case 2010:
            goto LABEL_828;
          case 1547:
          case 1777:
          case 1897:
            goto LABEL_820;
          default:
            switch(v323)
            {
              case 2240:
              case 2265:
              case 2267:
              case 2306:
              case 2308:
              case 2328:
              case 2330:
              case 2339:
              case 2341:
              case 2352:
              case 2354:
              case 2379:
              case 2381:
              case 2396:
              case 2398:
              case 2410:
              case 2412:
              case 2447:
              case 2449:
              case 2469:
              case 2471:
              case 2491:
              case 2493:
              case 2545:
              case 2547:
              case 2560:
              case 2562:
                return;
              case 2241:
              case 2242:
              case 2243:
              case 2244:
              case 2245:
              case 2246:
              case 2247:
              case 2248:
              case 2249:
              case 2250:
              case 2251:
              case 2252:
              case 2253:
              case 2254:
              case 2255:
              case 2256:
              case 2257:
              case 2258:
              case 2259:
              case 2260:
              case 2261:
              case 2262:
              case 2263:
              case 2264:
              case 2266:
              case 2268:
              case 2269:
              case 2270:
              case 2271:
              case 2272:
              case 2273:
              case 2274:
              case 2275:
              case 2276:
              case 2277:
              case 2278:
              case 2279:
              case 2280:
              case 2281:
              case 2282:
              case 2283:
              case 2284:
              case 2285:
              case 2286:
              case 2287:
              case 2288:
              case 2289:
              case 2290:
              case 2291:
              case 2292:
              case 2293:
              case 2294:
              case 2295:
              case 2296:
              case 2297:
              case 2298:
              case 2299:
              case 2300:
              case 2301:
              case 2302:
              case 2303:
              case 2304:
              case 2305:
              case 2307:
              case 2309:
              case 2310:
              case 2311:
              case 2312:
              case 2313:
              case 2314:
              case 2315:
              case 2316:
              case 2317:
              case 2318:
              case 2319:
              case 2320:
              case 2321:
              case 2322:
              case 2323:
              case 2324:
              case 2325:
              case 2326:
              case 2327:
              case 2329:
              case 2331:
              case 2332:
              case 2333:
              case 2334:
              case 2335:
              case 2336:
              case 2337:
              case 2338:
              case 2340:
              case 2342:
              case 2343:
              case 2344:
              case 2345:
              case 2346:
              case 2347:
              case 2348:
              case 2349:
              case 2350:
              case 2351:
              case 2353:
              case 2355:
              case 2356:
              case 2357:
              case 2358:
              case 2359:
              case 2360:
              case 2361:
              case 2362:
              case 2363:
              case 2364:
              case 2365:
              case 2366:
              case 2367:
              case 2368:
              case 2369:
              case 2370:
              case 2371:
              case 2372:
              case 2373:
              case 2374:
              case 2375:
              case 2376:
              case 2377:
              case 2378:
              case 2380:
              case 2382:
              case 2383:
              case 2384:
              case 2385:
              case 2386:
              case 2387:
              case 2388:
              case 2389:
              case 2390:
              case 2391:
              case 2392:
              case 2393:
              case 2394:
              case 2395:
              case 2397:
              case 2399:
              case 2400:
              case 2401:
              case 2402:
              case 2403:
              case 2404:
              case 2405:
              case 2406:
              case 2407:
              case 2408:
              case 2409:
              case 2411:
              case 2413:
              case 2414:
              case 2415:
              case 2416:
              case 2417:
              case 2421:
              case 2422:
              case 2423:
              case 2424:
              case 2425:
              case 2426:
              case 2427:
              case 2428:
              case 2429:
              case 2430:
              case 2431:
              case 2432:
              case 2433:
              case 2434:
              case 2435:
              case 2436:
              case 2437:
              case 2438:
              case 2439:
              case 2440:
              case 2441:
              case 2442:
              case 2443:
              case 2444:
              case 2445:
              case 2446:
              case 2448:
              case 2450:
              case 2451:
              case 2452:
              case 2453:
              case 2454:
              case 2455:
              case 2456:
              case 2457:
              case 2458:
              case 2459:
              case 2460:
              case 2461:
              case 2462:
              case 2463:
              case 2464:
              case 2465:
              case 2466:
              case 2467:
              case 2468:
              case 2470:
              case 2472:
              case 2473:
              case 2474:
              case 2475:
              case 2476:
              case 2477:
              case 2478:
              case 2479:
              case 2480:
              case 2481:
              case 2482:
              case 2483:
              case 2484:
              case 2485:
              case 2486:
              case 2487:
              case 2488:
              case 2489:
              case 2490:
              case 2492:
              case 2494:
              case 2495:
              case 2496:
              case 2497:
              case 2498:
              case 2499:
              case 2500:
              case 2501:
              case 2502:
              case 2503:
              case 2504:
              case 2505:
              case 2506:
              case 2510:
              case 2512:
              case 2513:
              case 2514:
              case 2516:
              case 2518:
              case 2520:
              case 2521:
              case 2522:
              case 2523:
              case 2524:
              case 2525:
              case 2526:
              case 2527:
              case 2528:
              case 2529:
              case 2530:
              case 2531:
              case 2532:
              case 2533:
              case 2534:
              case 2535:
              case 2536:
              case 2537:
              case 2538:
              case 2539:
              case 2540:
              case 2541:
              case 2542:
              case 2543:
              case 2544:
              case 2546:
              case 2548:
              case 2549:
              case 2550:
              case 2551:
              case 2552:
              case 2553:
              case 2554:
              case 2555:
              case 2556:
              case 2557:
              case 2558:
              case 2559:
              case 2561:
                goto LABEL_828;
              case 2418:
              case 2420:
              case 2507:
              case 2509:
              case 2515:
              case 2517:
              case 2519:
                sub_298B00584(a5, ", ");
                if ((*a2 - 2507) > 0xC || ((1 << (*a2 + 53)) & 0x1505) == 0)
                {
                  goto LABEL_825;
                }

                goto LABEL_839;
              default:
                goto LABEL_820;
            }
        }

        return;
      }

      if (v323 <= 3482)
      {
        switch(v323)
        {
          case 2801:
          case 2803:
          case 2805:
          case 2807:
          case 2808:
          case 2809:
          case 2810:
          case 2811:
          case 2812:
          case 2813:
          case 2814:
          case 2815:
          case 2816:
          case 2817:
          case 2818:
          case 2819:
          case 2820:
          case 2821:
          case 2822:
          case 2823:
          case 2824:
          case 2825:
          case 2826:
          case 2827:
          case 2828:
          case 2829:
          case 2830:
          case 2831:
          case 2832:
          case 2833:
          case 2834:
          case 2835:
          case 2836:
          case 2837:
          case 2838:
          case 2839:
          case 2840:
          case 2841:
          case 2842:
          case 2843:
          case 2844:
          case 2845:
          case 2846:
          case 2847:
          case 2848:
          case 2849:
          case 2850:
          case 2851:
          case 2852:
          case 2853:
          case 2854:
          case 2855:
          case 2856:
          case 2858:
          case 2860:
          case 2861:
          case 2862:
          case 2863:
          case 2865:
          case 2867:
          case 2868:
          case 2869:
          case 2870:
          case 2871:
          case 2872:
          case 2873:
          case 2874:
          case 2875:
          case 2876:
          case 2877:
          case 2878:
          case 2879:
          case 2880:
          case 2881:
          case 2882:
          case 2883:
          case 2884:
          case 2885:
          case 2886:
          case 2887:
          case 2888:
          case 2889:
          case 2890:
          case 2891:
          case 2892:
          case 2893:
          case 2894:
          case 2895:
          case 2896:
          case 2897:
          case 2898:
          case 2899:
          case 2901:
          case 2903:
          case 2904:
          case 2905:
          case 2906:
          case 2907:
          case 2909:
          case 2911:
          case 2912:
          case 2913:
          case 2914:
          case 2915:
          case 2916:
          case 2917:
          case 2918:
          case 2919:
          case 2920:
          case 2921:
          case 2922:
          case 2923:
          case 2924:
          case 2925:
          case 2926:
          case 2927:
          case 2928:
          case 2929:
          case 2930:
          case 2931:
          case 2932:
          case 2933:
          case 2934:
          case 2935:
          case 2936:
          case 2937:
          case 2938:
          case 2939:
          case 2940:
          case 2941:
          case 2942:
          case 2943:
          case 2945:
          case 2947:
          case 2948:
          case 2949:
          case 2950:
          case 2951:
          case 2952:
          case 2953:
          case 2954:
          case 2955:
          case 2957:
          case 2959:
          case 2960:
          case 2961:
          case 2962:
          case 2963:
          case 2964:
          case 2965:
          case 2966:
          case 2967:
          case 2968:
          case 2969:
          case 2970:
          case 2971:
          case 2972:
          case 2973:
          case 2974:
          case 2975:
          case 2976:
          case 2977:
          case 2978:
          case 2979:
          case 2980:
          case 2981:
          case 2982:
          case 2983:
          case 2984:
          case 2985:
          case 2986:
          case 2987:
          case 2988:
          case 2989:
          case 2990:
          case 2991:
          case 2993:
          case 2995:
          case 2996:
          case 2997:
          case 2998:
          case 2999:
          case 3001:
          case 3003:
          case 3004:
          case 3005:
          case 3006:
          case 3007:
          case 3008:
          case 3009:
          case 3010:
          case 3011:
          case 3012:
          case 3013:
          case 3014:
          case 3015:
          case 3016:
          case 3017:
          case 3018:
          case 3019:
          case 3020:
          case 3021:
          case 3022:
          case 3023:
          case 3024:
          case 3025:
          case 3026:
          case 3027:
          case 3028:
          case 3029:
          case 3030:
          case 3031:
          case 3032:
          case 3033:
          case 3034:
          case 3035:
          case 3037:
          case 3039:
          case 3040:
          case 3041:
          case 3042:
          case 3043:
          case 3044:
          case 3046:
          case 3047:
          case 3048:
          case 3049:
          case 3050:
          case 3051:
          case 3052:
          case 3053:
          case 3054:
          case 3055:
          case 3056:
          case 3057:
          case 3058:
          case 3059:
          case 3060:
          case 3061:
          case 3062:
          case 3063:
          case 3064:
          case 3065:
          case 3066:
          case 3067:
          case 3068:
          case 3069:
          case 3070:
          case 3071:
          case 3072:
          case 3073:
          case 3074:
          case 3075:
          case 3076:
          case 3077:
          case 3078:
          case 3079:
          case 3080:
          case 3081:
          case 3082:
          case 3083:
          case 3084:
          case 3085:
          case 3086:
          case 3087:
          case 3088:
          case 3089:
          case 3090:
          case 3091:
          case 3092:
          case 3093:
          case 3094:
          case 3095:
          case 3096:
          case 3097:
          case 3098:
          case 3099:
          case 3100:
          case 3102:
          case 3103:
          case 3104:
          case 3105:
          case 3106:
          case 3107:
          case 3108:
          case 3109:
          case 3110:
          case 3111:
          case 3112:
          case 3113:
          case 3114:
          case 3115:
          case 3116:
          case 3117:
          case 3118:
          case 3119:
          case 3120:
          case 3121:
          case 3123:
          case 3125:
          case 3126:
          case 3127:
          case 3131:
          case 3132:
          case 3135:
          case 3136:
          case 3139:
          case 3141:
          case 3143:
          case 3144:
          case 3145:
          case 3146:
          case 3147:
          case 3148:
          case 3149:
          case 3150:
          case 3151:
          case 3152:
          case 3153:
          case 3154:
          case 3155:
          case 3156:
          case 3157:
          case 3159:
          case 3160:
          case 3161:
          case 3162:
          case 3163:
          case 3164:
          case 3165:
          case 3166:
          case 3167:
          case 3168:
          case 3169:
          case 3170:
          case 3171:
          case 3172:
          case 3173:
          case 3174:
          case 3175:
          case 3176:
          case 3177:
          case 3178:
          case 3180:
          case 3182:
          case 3183:
          case 3184:
          case 3188:
          case 3189:
          case 3192:
          case 3193:
          case 3196:
          case 3198:
          case 3199:
          case 3200:
          case 3201:
          case 3202:
          case 3203:
          case 3204:
          case 3205:
          case 3206:
          case 3207:
          case 3208:
          case 3209:
          case 3210:
          case 3211:
          case 3212:
          case 3213:
          case 3214:
          case 3215:
          case 3216:
          case 3217:
          case 3218:
          case 3219:
          case 3220:
          case 3221:
          case 3222:
          case 3223:
          case 3224:
          case 3225:
          case 3226:
          case 3227:
          case 3228:
          case 3229:
          case 3230:
          case 3232:
          case 3234:
          case 3235:
          case 3236:
          case 3237:
          case 3238:
          case 3239:
          case 3240:
          case 3241:
          case 3242:
          case 3244:
          case 3246:
          case 3247:
          case 3248:
          case 3249:
          case 3250:
          case 3251:
          case 3252:
          case 3253:
          case 3254:
          case 3255:
          case 3256:
          case 3257:
          case 3258:
          case 3259:
          case 3260:
          case 3261:
          case 3263:
          case 3265:
          case 3266:
          case 3267:
          case 3268:
          case 3269:
          case 3270:
          case 3271:
          case 3272:
          case 3273:
          case 3274:
          case 3275:
          case 3276:
          case 3277:
          case 3278:
          case 3279:
          case 3280:
          case 3281:
          case 3282:
          case 3283:
          case 3284:
          case 3285:
          case 3286:
          case 3287:
          case 3288:
          case 3289:
          case 3290:
          case 3291:
          case 3292:
          case 3293:
          case 3294:
          case 3295:
          case 3296:
          case 3297:
          case 3299:
          case 3302:
          case 3305:
          case 3308:
            goto LABEL_828;
          default:
            return;
        }

        return;
      }

      if ((v323 - 4289) > 0x10)
      {
        return;
      }

      v324 = 1 << (v323 + 63);
      if ((v324 & 0x9249) != 0 || (v324 & 0x12492) == 0)
      {
        return;
      }

LABEL_820:
      if (v323 <= 5405)
      {
        if (v323 <= 2507)
        {
          if (v323 <= 1896)
          {
            if (v323 == 1547)
            {
              goto LABEL_838;
            }
          }

          else if (v323 != 1897)
          {
            if (v323 == 2239)
            {
              goto LABEL_838;
            }

LABEL_825:
            v308 = *(a2 + 16);
            v309 = a1[49];
            v310 = a1[48];
            v311 = 4;
LABEL_757:

            sub_298CB5394(v310, v309, v308, v311, a5);
            return;
          }

LABEL_839:
          v312 = *(a2 + 16);
          v313 = a1[49];
          v314 = a1[48];
          v315 = 5;
LABEL_840:

          sub_298CB5478(v314, v313, v312, v315, a5);
          return;
        }

LABEL_829:
        v325 = v323 - 4290;
        if (v325 <= 0xF && ((1 << v325) & 0x9249) != 0)
        {
          goto LABEL_567;
        }

        goto LABEL_839;
      }

      if (v323 > 6672)
      {
        v323 = 1 << (v323 - 17);
        if ((v323 & 0x1249) != 0)
        {
          goto LABEL_567;
        }

LABEL_828:
        __break(1u);
        goto LABEL_829;
      }

      if (v323 == 5406)
      {
        goto LABEL_836;
      }

      if (v323 == 5896)
      {
        goto LABEL_839;
      }

LABEL_567:
      v28 = "]!";
LABEL_631:

      sub_298B00584(a5, v28);
      return;
    case 0x53uLL:
      goto LABEL_567;
    case 0x54uLL:
      goto LABEL_556;
    case 0x55uLL:
      sub_298CAAB6C(a5, 91);
      sub_298CAA168(a1, *(a2 + 16), 3u, a5);
      sub_298B00584(a5, ", ");
      sub_298CACA88(*(a2 + 16), 4u, a5);
      goto LABEL_272;
    case 0x56uLL:
      v246 = a1;
      v247 = a2;
      v248 = 3;
      goto LABEL_529;
    case 0x57uLL:
      v249 = a1;
      v250 = a2;
      v251 = 3;
      goto LABEL_590;
    case 0x58uLL:
      v169 = a1;
      v170 = a2;
      v171 = 3;
      goto LABEL_338;
    case 0x59uLL:
      v259 = a1;
      v260 = a2;
      v261 = 3;
      goto LABEL_665;
    case 0x5AuLL:
      goto LABEL_634;
    case 0x5BuLL:
      v28 = ", #-16]!";
      goto LABEL_631;
    case 0x5CuLL:
      goto LABEL_41;
    default:
      return;
  }
}