uint64_t sub_297F02204(uint64_t a1, int *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateSwpConfigParams");
  if (*a2)
  {
    if (*a2)
    {
      ++*a4;
      if (*(a2 + 8) - 8 >= 0xFFFFFFF9)
      {
        v8 = 0;
        v9 = -2 - *a3;
        if (*a3 == 0xFFFF)
        {
          v9 = 0;
        }

        *a3 = -v9;
      }

      else
      {
        v8 = 1;
      }

LABEL_10:
      if ((*a2 & 2) != 0)
      {
        ++*a4;
        if (*(a2 + 9) - 8 >= 0xFFFFFFF9)
        {
          v10 = -2 - *a3;
          if (*a3 == 0xFFFF)
          {
            v10 = 0;
          }

          *a3 = -v10;
        }

        else
        {
          v8 = 1;
        }
      }

      if ((*(a2 + 1) & 0x10) != 0)
      {
        ++*a4;
        if (*(a2 + 28) - 101 >= 0xFFFFFF9C)
        {
          v11 = -2 - *a3;
          if (*a3 == 0xFFFF)
          {
            v11 = 0;
          }

          *a3 = -v11;
        }

        else
        {
          v8 = 1;
        }
      }

      if ((*(a2 + 1) & 0x20) != 0)
      {
        ++*a4;
        if (*(a2 + 29) - 104 < 0xFFFFFF99)
        {
LABEL_28:
          v13 = 1;
          goto LABEL_29;
        }

        v12 = -2 - *a3;
        if (*a3 == 0xFFFF)
        {
          v12 = 0;
        }

        *a3 = -v12;
      }

      if (v8 == 1)
      {
        goto LABEL_28;
      }

      v15 = *a2;
      if ((*a2 & 4) != 0)
      {
        ++*a4;
        v18 = -2 - *a3;
        if (*a3 == 0xFFFF)
        {
          v18 = 0;
        }

        *a3 = -v18;
        v15 = *a2;
        if ((*a2 & 8) == 0)
        {
LABEL_32:
          if ((v15 & 0x10) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_52;
        }
      }

      else if ((v15 & 8) == 0)
      {
        goto LABEL_32;
      }

      ++*a4;
      v19 = -2 - *a3;
      if (*a3 == 0xFFFF)
      {
        v19 = 0;
      }

      *a3 = -v19;
      v15 = *a2;
      if ((*a2 & 0x10) == 0)
      {
LABEL_33:
        if ((v15 & 0x20) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

LABEL_52:
      ++*a4;
      if (*(a2 + 20) - 2 > 2)
      {
        goto LABEL_28;
      }

      v20 = -2 - *a3;
      if (*a3 == 0xFFFF)
      {
        v20 = 0;
      }

      *a3 = -v20;
      v15 = *a2;
      if ((*a2 & 0x20) == 0)
      {
LABEL_37:
        if ((v15 & 0x40) != 0)
        {
          ++*a4;
          if (*(a2 + 22) > 3u)
          {
            goto LABEL_28;
          }

          v17 = -2 - *a3;
          if (*a3 == 0xFFFF)
          {
            v17 = 0;
          }

          *a3 = -v17;
          v15 = *a2;
        }

        if ((v15 & 0x80) != 0)
        {
          ++*a4;
          v23 = -2 - *a3;
          if (*a3 == 0xFFFF)
          {
            v23 = 0;
          }

          *a3 = -v23;
          v15 = *a2;
          if ((*a2 & 0x100) == 0)
          {
LABEL_44:
            if ((v15 & 0x800000) == 0)
            {
              goto LABEL_69;
            }

LABEL_65:
            ++*a4;
            if (*(a2 + 40) > 2u)
            {
              goto LABEL_28;
            }

            v25 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v25 = 0;
            }

            *a3 = -v25;
LABEL_69:
            v26 = *(a2 + 4);
            if (v26)
            {
              ++*a4;
              v28 = -2 - *a3;
              if (*a3 == 0xFFFF)
              {
                v28 = 0;
              }

              *a3 = -v28;
              v26 = *(a2 + 4);
              if ((v26 & 2) == 0)
              {
LABEL_71:
                if ((v26 & 4) == 0)
                {
                  goto LABEL_72;
                }

                goto LABEL_86;
              }
            }

            else if ((a2[1] & 2) == 0)
            {
              goto LABEL_71;
            }

            ++*a4;
            v29 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v29 = 0;
            }

            *a3 = -v29;
            v26 = *(a2 + 4);
            if ((v26 & 4) == 0)
            {
LABEL_72:
              if ((v26 & 8) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_89;
            }

LABEL_86:
            ++*a4;
            v30 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v30 = 0;
            }

            *a3 = -v30;
            v26 = *(a2 + 4);
            if ((v26 & 8) == 0)
            {
LABEL_73:
              if ((v26 & 0x10) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_92;
            }

LABEL_89:
            ++*a4;
            v31 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v31 = 0;
            }

            *a3 = -v31;
            v26 = *(a2 + 4);
            if ((v26 & 0x10) == 0)
            {
LABEL_74:
              if ((v26 & 0x20) == 0)
              {
LABEL_78:
                if ((*(a2 + 3) & 1) == 0)
                {
                  v13 = 0;
                  goto LABEL_29;
                }

                ++*a4;
                v21 = *a3;
                v22 = 65534;
                goto LABEL_97;
              }

LABEL_75:
              ++*a4;
              v27 = -2 - *a3;
              if (*a3 == 0xFFFF)
              {
                v27 = 0;
              }

              *a3 = -v27;
              goto LABEL_78;
            }

LABEL_92:
            ++*a4;
            v32 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v32 = 0;
            }

            *a3 = -v32;
            if ((a2[1] & 0x20) == 0)
            {
              goto LABEL_78;
            }

            goto LABEL_75;
          }
        }

        else if ((v15 & 0x100) == 0)
        {
          goto LABEL_44;
        }

        ++*a4;
        v24 = -2 - *a3;
        if (*a3 == 0xFFFF)
        {
          v24 = 0;
        }

        *a3 = -v24;
        if ((*a2 & 0x800000) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_65;
      }

LABEL_34:
      ++*a4;
      v16 = -2 - *a3;
      if (*a3 == 0xFFFF)
      {
        v16 = 0;
      }

      *a3 = -v16;
      v15 = *a2;
      goto LABEL_37;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_10;
  }

  if (a2[1])
  {
    goto LABEL_6;
  }

  if ((a2[4] & 0x80) == 0)
  {
    goto LABEL_28;
  }

  ++*a4;
  v21 = *a3;
  v22 = 65527;
LABEL_97:
  v33 = v22 >= v21;
  v34 = v22 - v21;
  if (!v33)
  {
    v34 = 0;
  }

  v13 = 0;
  *a3 = -v34;
LABEL_29:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateSwpConfigParams");
  return v13;
}

uint64_t sub_297F026C0(uint64_t a1, unsigned int *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateSmbCfgParams");
  if (!a2 || (v8 = *a2) == 0)
  {
    v9 = 1;
    goto LABEL_21;
  }

  if (v8)
  {
    ++*a4;
    v8 = *a3;
    v10 = v8 <= 0xFFFC;
    LOWORD(v8) = -4 - v8;
    if (!v10)
    {
      LOWORD(v8) = 0;
    }

    *a3 = -v8;
    LOBYTE(v8) = *a2;
    if ((*a2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if ((v8 & 2) != 0)
  {
LABEL_10:
    ++*a4;
    LOWORD(v8) = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      LOWORD(v8) = 0;
    }

    *a3 = -v8;
    LOBYTE(v8) = *a2;
  }

LABEL_13:
  if ((v8 & 4) != 0)
  {
    ++*a4;
    v8 = *a3;
    v10 = v8 <= 0xFFFD;
    LOWORD(v8) = -3 - v8;
    if (!v10)
    {
      LOWORD(v8) = 0;
    }

    *a3 = -v8;
    LOBYTE(v8) = *a2;
  }

  v9 = 0;
  if ((v8 & 8) != 0)
  {
    ++*a4;
    v11 = *a3;
    v10 = v11 <= 0xFFEF;
    v12 = -17 - v11;
    if (!v10)
    {
      v12 = 0;
    }

    *a3 = -v12;
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateSmbCfgParams");
  return v9;
}

uint64_t sub_297F02800(uint64_t a1, int *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateNxpExtnRfDiscConfigParams");
  v8 = *a2;
  if (!*a2)
  {
    if (a2[1])
    {
      goto LABEL_45;
    }

    goto LABEL_80;
  }

  if (v8)
  {
    ++*a4;
    if (*(a2 + 8) > 0x83u)
    {
      goto LABEL_80;
    }

    v25 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v25 = 0;
    }

    *a3 = -v25;
    LOWORD(v8) = *a2;
    if ((*a2 & 2) == 0)
    {
LABEL_4:
      if ((v8 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_75;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_4;
  }

  ++*a4;
  if (*(a2 + 9) > 0xFu)
  {
    goto LABEL_80;
  }

  v26 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v26 = 0;
  }

  *a3 = -v26;
  LOWORD(v8) = *a2;
  if ((*a2 & 4) == 0)
  {
LABEL_5:
    if ((v8 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_75:
  ++*a4;
  if (*(a2 + 5) - 32 > 0x7B0)
  {
    goto LABEL_80;
  }

  v27 = *a3;
  v16 = v27 <= 0xFFFD;
  v28 = -3 - v27;
  if (!v16)
  {
    v28 = 0;
  }

  *a3 = -v28;
  LOWORD(v8) = *a2;
  if ((*a2 & 8) != 0)
  {
LABEL_6:
    ++*a4;
    v9 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v9 = 0;
    }

    *a3 = -v9;
    LOWORD(v8) = *a2;
  }

LABEL_9:
  if ((v8 & 0x10) != 0)
  {
    ++*a4;
    if (*(a2 + 13) > 1u)
    {
      goto LABEL_80;
    }

    v10 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v10 = 0;
    }

    *a3 = -v10;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x20) != 0)
  {
    ++*a4;
    if (*(a2 + 14) > 1u)
    {
      goto LABEL_80;
    }

    v11 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v11 = 0;
    }

    *a3 = -v11;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x40) != 0)
  {
    ++*a4;
    if (*(a2 + 15) > 1u)
    {
      goto LABEL_80;
    }

    v12 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v12 = 0;
    }

    *a3 = -v12;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x80) != 0)
  {
    ++*a4;
    if (*(a2 + 16) > 1u)
    {
      goto LABEL_80;
    }

    v13 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v13 = 0;
    }

    *a3 = -v13;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x100) != 0)
  {
    ++*a4;
    if (*(a2 + 17) > 1u)
    {
      goto LABEL_80;
    }

    v14 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v14 = 0;
    }

    *a3 = -v14;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x200) != 0)
  {
    ++*a4;
    if (!*(a2 + 9))
    {
      goto LABEL_80;
    }

    v15 = *a3;
    v16 = v15 <= 0xFFFD;
    v17 = -3 - v15;
    if (!v16)
    {
      v17 = 0;
    }

    *a3 = -v17;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x2000) == 0)
  {
    goto LABEL_45;
  }

  ++*a4;
  if (!*(a2 + 13))
  {
LABEL_80:
    v22 = 1;
    goto LABEL_81;
  }

  v18 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v18 = 0;
  }

  *a3 = -v18;
LABEL_45:
  v19 = *(a2 + 2);
  if (v19)
  {
    ++*a4;
    v30 = *a3;
    v16 = v30 <= 0xFFF9;
    v31 = -7 - v30;
    if (!v16)
    {
      v31 = 0;
    }

    *a3 = -v31;
    v19 = *(a2 + 2);
    if ((v19 & 2) == 0)
    {
LABEL_47:
      if ((v19 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_88;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_47;
  }

  ++*a4;
  v32 = *a3;
  v16 = v32 <= 0xFFF9;
  v33 = -7 - v32;
  if (!v16)
  {
    v33 = 0;
  }

  *a3 = -v33;
  v19 = *(a2 + 2);
  if ((v19 & 4) == 0)
  {
LABEL_48:
    if ((v19 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_91;
  }

LABEL_88:
  ++*a4;
  v34 = *a3;
  v16 = v34 <= 0xFFF9;
  v35 = -7 - v34;
  if (!v16)
  {
    v35 = 0;
  }

  *a3 = -v35;
  v19 = *(a2 + 2);
  if ((v19 & 8) == 0)
  {
LABEL_49:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

LABEL_91:
  ++*a4;
  v36 = *a3;
  v16 = v36 <= 0xFFF9;
  v37 = -7 - v36;
  if (!v16)
  {
    v37 = 0;
  }

  *a3 = -v37;
  v19 = *(a2 + 2);
  if ((v19 & 0x10) == 0)
  {
LABEL_50:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_97;
  }

LABEL_94:
  ++*a4;
  v38 = *a3;
  v16 = v38 <= 0xFFF9;
  v39 = -7 - v38;
  if (!v16)
  {
    v39 = 0;
  }

  *a3 = -v39;
  v19 = *(a2 + 2);
  if ((v19 & 0x20) == 0)
  {
LABEL_51:
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_100;
  }

LABEL_97:
  ++*a4;
  v40 = *a3;
  v16 = v40 <= 0xFFF9;
  v41 = -7 - v40;
  if (!v16)
  {
    v41 = 0;
  }

  *a3 = -v41;
  v19 = *(a2 + 2);
  if ((v19 & 0x40) == 0)
  {
LABEL_52:
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_103;
  }

LABEL_100:
  ++*a4;
  v42 = *a3;
  v16 = v42 <= 0xFFF9;
  v43 = -7 - v42;
  if (!v16)
  {
    v43 = 0;
  }

  *a3 = -v43;
  v19 = *(a2 + 2);
  if ((v19 & 0x80) == 0)
  {
LABEL_53:
    if ((v19 & 0x100) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_106;
  }

LABEL_103:
  ++*a4;
  v44 = *a3;
  v16 = v44 <= 0xFFF9;
  v45 = -7 - v44;
  if (!v16)
  {
    v45 = 0;
  }

  *a3 = -v45;
  v19 = *(a2 + 2);
  if ((v19 & 0x100) == 0)
  {
LABEL_54:
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_109;
  }

LABEL_106:
  ++*a4;
  v46 = *a3;
  v16 = v46 <= 0xFFF9;
  v47 = -7 - v46;
  if (!v16)
  {
    v47 = 0;
  }

  *a3 = -v47;
  v19 = *(a2 + 2);
  if ((v19 & 0x200) == 0)
  {
LABEL_55:
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_112;
  }

LABEL_109:
  ++*a4;
  v48 = *a3;
  v16 = v48 <= 0xFFF9;
  v49 = -7 - v48;
  if (!v16)
  {
    v49 = 0;
  }

  *a3 = -v49;
  v19 = *(a2 + 2);
  if ((v19 & 0x400) == 0)
  {
LABEL_56:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_115;
  }

LABEL_112:
  ++*a4;
  v50 = *a3;
  v16 = v50 <= 0xFFF9;
  v51 = -7 - v50;
  if (!v16)
  {
    v51 = 0;
  }

  *a3 = -v51;
  v19 = *(a2 + 2);
  if ((v19 & 0x800) == 0)
  {
LABEL_57:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_118;
  }

LABEL_115:
  ++*a4;
  v52 = *a3;
  v16 = v52 <= 0xFFF9;
  v53 = -7 - v52;
  if (!v16)
  {
    v53 = 0;
  }

  *a3 = -v53;
  v19 = *(a2 + 2);
  if ((v19 & 0x1000) == 0)
  {
LABEL_58:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

LABEL_121:
    ++*a4;
    v56 = *a3;
    v16 = v56 <= 0xFFF9;
    v57 = -7 - v56;
    if (!v16)
    {
      v57 = 0;
    }

    *a3 = -v57;
    v19 = *(a2 + 2);
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

LABEL_118:
  ++*a4;
  v54 = *a3;
  v16 = v54 <= 0xFFF9;
  v55 = -7 - v54;
  if (!v16)
  {
    v55 = 0;
  }

  *a3 = -v55;
  v19 = *(a2 + 2);
  if ((v19 & 0x2000) != 0)
  {
    goto LABEL_121;
  }

LABEL_59:
  if ((v19 & 0x4000) != 0)
  {
LABEL_60:
    ++*a4;
    v20 = *a3;
    v16 = v20 <= 0xFFF9;
    v21 = -7 - v20;
    if (!v16)
    {
      v21 = 0;
    }

    *a3 = -v21;
    v19 = *(a2 + 2);
  }

LABEL_63:
  v22 = 0;
  if (v19 < 0)
  {
    ++*a4;
    v23 = *a3;
    v16 = v23 <= 0xFFF9;
    v24 = -7 - v23;
    if (!v16)
    {
      v24 = 0;
    }

    *a3 = -v24;
  }

LABEL_81:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateNxpExtnRfDiscConfigParams");
  return v22;
}

uint64_t sub_297F02DF4(uint64_t a1, unsigned int a2, int *a3, _WORD *a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateSetRtngParams");
  v8 = 1;
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_17;
  }

  v8 = a2;
  while (1)
  {
    v9 = *a3;
    if (*a3 != 2)
    {
      break;
    }

    if (sub_297F0302C(a1, a3, a4))
    {
      goto LABEL_16;
    }

LABEL_13:
    a3 += 8;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  if (v9 == 1)
  {
    if (sub_297F02F9C(a1, a3, a4))
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (!v9)
  {
    if (sub_297F02F0C(a1, a3, a4))
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  sub_297E4E0B0(2, a1, 3u, 2u, "Invalid routing type");
LABEL_16:
  v8 = 1;
LABEL_17:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateSetRtngParams");
  return v8;
}

uint64_t sub_297F02F0C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateTechBasedParams");
  if (*(a2 + 4) == 255)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 += 5;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateTechBasedParams");
  return v6;
}

uint64_t sub_297F02F9C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateProtoBasedParams");
  if (*(a2 + 4) == 255)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 += 5;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateProtoBasedParams");
  return v6;
}

uint64_t sub_297F0302C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ValidateAidBasedParams");
  if (*(a2 + 4) == 255 || (v6 = *(a2 + 28), (v6 - 5) > 0xB))
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a3 += (v6 + 4);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ValidateAidBasedParams");
  return v7;
}

uint64_t sub_297F030D0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v18 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetRtngCmdHandler");
  if (a1)
  {
    v8 = sub_297F0325C(a1, &v18, &v17);
    v9 = *(a1 + 6524);
    v10 = (v17 + 2);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    v12 = v18;
    sub_297F03380(a1, Memory_Typed, v8, (*(a1 + 4688) + 32 * *(a1 + 913)), v18);
    *a3 = v12;
    *(a1 + 913) += v8;
    *(a1 + 912) = v12;
    *(a1 + 3776) = off_2A1A93CA0;
    *(a1 + 3976) = 0;
    *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93CA0);
    *(a1 + 896) = Memory_Typed;
    *(a1 + 904) = v10;
    *(a1 + 3424) = a2;
    *(a1 + 3752) = a4;
    v13 = sub_297F01A1C(a1, 0, 0);
    if (v13 != 13)
    {
      v14 = *(a1 + 6524);
      v15 = *(a1 + 896);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      *(a1 + 912) = 0;
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Set Rtng table Sequence failed!");
    }
  }

  else
  {
    v13 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetRtngCmdHandler");
  return v13;
}

uint64_t sub_297F0325C(uint64_t a1, _BYTE *a2, _WORD *a3)
{
  v6 = *(a1 + 914);
  v7 = *(a1 + 913);
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CalNumEntries");
  *a2 = 1;
  if (v6 <= v7)
  {
    LOWORD(v13) = 0;
LABEL_9:
    *a3 += v13;
    v9 = 1;
    goto LABEL_10;
  }

  v8 = 0;
  v9 = 0;
  v10 = v6 - v7;
  v11 = v6 - v7;
  v12 = (*(a1 + 4688) + 32 * v7);
  while (1)
  {
    v13 = sub_297F03904(a1, v12);
    v8 += v13;
    if (*(a1 + 16) <= v8)
    {
      break;
    }

    *a3 += v13;
    ++v9;
    v12 += 8;
    if (!--v11)
    {
      v9 = v10;
      break;
    }
  }

  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 913) + v9 >= v6)
  {
    *a2 = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CalNumEntries");
  return v9;
}

uint64_t sub_297F03380(uint64_t a1, _BYTE *a2, unsigned int a3, int *a4, char a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildSetLstnRtngCmdPayload");
  *a2 = a5;
  a2[1] = a3;
  if (a3)
  {
    v10 = a3;
    LOBYTE(v11) = 2;
    do
    {
      v12 = *a4;
      if (*a4 == 2)
      {
        v14 = sub_297F03818(a1, &a2[v11], a4) + v11;
        if (v14 >= 0x100)
        {
          LOBYTE(v11) = 0;
        }

        else
        {
          LOBYTE(v11) = v14;
        }
      }

      else
      {
        if (v12 == 1)
        {
          sub_297F03754(a1, &a2[v11], a4);
          goto LABEL_8;
        }

        if (!v12)
        {
          sub_297F03690(a1, &a2[v11], a4);
LABEL_8:
          v13 = 251 - v11;
          if (v11 > 0xFBu)
          {
            v13 = 0;
          }

          v11 = -v13;
          goto LABEL_15;
        }

        sub_297E4E0B0(2, a1, 3u, 2u, "Unknown routing type");
      }

LABEL_15:
      a4 += 8;
      --v10;
    }

    while (v10);
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildSetLstnRtngCmdPayload");
}

uint64_t sub_297F034C0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_VerifySupportedRouting");
  LOWORD(v8) = 1;
  if (!a2 || !a4)
  {
    goto LABEL_30;
  }

  if (!a3)
  {
    LOWORD(v8) = 0;
    goto LABEL_30;
  }

  v9 = 0;
  v10 = 0;
  v8 = 0;
  v11 = a3;
  v12 = (a4 + 8);
  v13 = "Techn based routing request but not supported by NFCC";
  while (1)
  {
    v14 = *(v12 - 2);
    switch(v14)
    {
      case 2:
        v10 = v12;
        if ((*(a2 + 4) & 1) == 0)
        {
          v13 = "Aid based routing request but not supported by NFCC";
          goto LABEL_28;
        }

        break;
      case 1:
        if ((*(a2 + 4) & 2) == 0)
        {
          v13 = "Protocol based routing request but not supported by NFCC";
          goto LABEL_28;
        }

        goto LABEL_11;
      case 0:
        if ((*(a2 + 4) & 4) == 0)
        {
          goto LABEL_28;
        }

LABEL_11:
        v10 = (a4 + 32 * v9 + 8);
        break;
    }

    if (v8 || !v10)
    {
      goto LABEL_22;
    }

    if ((*v10 & 4) == 0 || (*(a2 + 8) & 2) != 0)
    {
      break;
    }

    sub_297E4E0B0(2, a1, 3u, 2u, "Battery off pow state requested but not supported");
    v8 = 255;
    v15 = 1;
    if ((*v10 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v15)
    {
      goto LABEL_29;
    }

LABEL_22:
    ++v9;
    v12 += 32;
    if (!--v11)
    {
      goto LABEL_30;
    }
  }

  v15 = 0;
  v8 = 0;
  if ((*v10 & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (*(a2 + 8))
  {
    goto LABEL_21;
  }

  v13 = "Switched off pow state requested but not supported";
LABEL_28:
  sub_297E4E0B0(2, a1, 3u, 2u, v13);
LABEL_29:
  sub_297E4E0B0(2, a1, 3u, 2u, "Input Routing type not supported by NFCC");
  LOWORD(v8) = 255;
LABEL_30:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_VerifySupportedRouting");
  return v8;
}

uint64_t sub_297F03690(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateTechRtngParams");
  *a2 = *a3;
  a2[1] = 3;
  a2[2] = *(a3 + 4);
  a2[3] = 0;
  v6 = *(a3 + 8);
  a2[3] = v6 & 1;
  v7 = *(a3 + 8) & 2 | v6 & 1;
  a2[3] = v7;
  a2[3] = *(a3 + 8) & 4 | v7;
  a2[4] = *(a3 + 12);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateTechRtngParams");
  return 5;
}

uint64_t sub_297F03754(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateProtoRtngParams");
  *a2 = *a3;
  a2[1] = 3;
  a2[2] = *(a3 + 4);
  a2[3] = 0;
  v6 = *(a3 + 8);
  a2[3] = v6 & 1;
  v7 = *(a3 + 8) & 2 | v6 & 1;
  a2[3] = v7;
  a2[3] = *(a3 + 8) & 4 | v7;
  a2[4] = *(a3 + 12);
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateProtoRtngParams");
  return 5;
}

uint64_t sub_297F03818(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateAidRtngParams");
  if (a1)
  {
    v6 = *(a1 + 6524);
  }

  *a2 = *a3;
  a2[1] = *(a3 + 28) + 2;
  a2[2] = *(a3 + 4);
  a2[3] = 0;
  v7 = *(a3 + 8);
  a2[3] = v7 & 1;
  v8 = *(a3 + 8) & 2 | v7 & 1;
  a2[3] = v8;
  a2[3] = *(a3 + 8) & 4 | v8;
  v9 = *(a3 + 28);
  phOsalNfc_MemCopy();
  v10 = *(a3 + 28);
  v11 = v10 <= 0xFC;
  v12 = 252 - v10;
  if (!v11)
  {
    v12 = 0;
  }

  v13 = -v12;
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateAidRtngParams");
  return v13;
}

uint64_t sub_297F03904(uint64_t a1, int *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_EntrySize");
  v4 = *a2;
  if (*a2 == 2)
  {
    v6 = *(a2 + 28) + 4;
  }

  else
  {
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 5;
    }

    if (v4 == 1)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5;
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_EntrySize");
  return v6;
}

uint64_t sub_297F03994(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a2, 3u, 5u, "phNciNfc_GetLstnNtfTimeoutHandler");
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 4);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 == a2)
  {
    if (!*(a2 + 6512))
    {
      sub_297E5A304(*(a2 + 6524), *(a2 + 4696));
      v7 = *(a2 + 6524);
      v8 = *(a2 + 4696);
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "Get Listen Mode Ntf Handler timer restarted for extended time\n");
        *(a2 + 6512) = 1;
        return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_GetLstnNtfTimeoutHandler");
      }

      sub_297E4E0B0(1, a2 + 6524, 3u, 1u, "Get Listen Mode Ntf Handler timer failed to start for extended time\n\n");
    }

    sub_297E687D8(2, a2, a1, 3u, 4u, "phNciNfc_GetLstnNtfTimeoutHandler");
    sub_297E4E0B0(1, a2 + 6524, 3u, 4u, "#######Get Listen Mode routing notification TIMEOUT########\n");
    v9 = *(a2 + 6524);
    v10 = *(a2 + 4696);
    phOsalNfc_Timer_Stop();
    *(a2 + 6512) = 0;
    v12 = 0x100000003;
    LODWORD(v13) = 2;
    sub_297F00C28(a2 + 936, &v12, sub_297F03B88);
    sub_297E5B994(a2, 255, 0);
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3u, 1u, "Nci context null (phNciNfc_GetLstnNtfTimeoutHandler)\n");
  }

  return sub_297E4DFAC(2, a2, 3u, 5u, "phNciNfc_GetLstnNtfTimeoutHandler");
}

uint64_t sub_297F03B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetRtngConfigNtfCb");
  if (!a1 || !a2)
  {
    goto LABEL_75;
  }

  v6 = *(a1 + 6524);
  v7 = *(a1 + 4696);
  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_GetRtngConfigNtfCb");
  v8 = *(a1 + 6524);
  phOsalNfc_SetMemory();
  if (a3 || (v9 = *(a2 + 16), v10 = v9 - 2, v9 < 2))
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid notification payload length!");
    goto LABEL_9;
  }

  v11 = *(a2 + 8);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(a1 + 912);
  v15 = (v14 | v12) == 0;
  if (v14 | v12)
  {
    if (*(a1 + 912) || v12 != 1)
    {
      if (v14 == 1 && v12 == 1)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received next Rtng ntf with more set to '1'");
        v21 = 0;
        v22 = *(a1 + 920);
        *(a1 + 912) = 1;
        if (!v22)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v21 = 1;
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received last Rtng ntf with more set to '0'");
        *(a1 + 912) = v12;
        if (!*(a1 + 920))
        {
          goto LABEL_23;
        }
      }

LABEL_22:
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Copying received Rtng ntf payload to ntf buffer");
      v23 = *(a1 + 6524);
      v24 = *(a1 + 920);
      v25 = *(a1 + 928);
      v26 = *(a2 + 8);
      phOsalNfc_MemCopy();
      *(a1 + 928) += v10;
      *(a1 + 914) += v13;
      if (v21)
      {
        goto LABEL_23;
      }

LABEL_51:
      a3 = 0;
      goto LABEL_75;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Received first Rtng ntf with more set to '1'");
    if (*(a1 + 920))
    {
      v17 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 920) = 0;
    }

    v18 = *(a1 + 6524);
    v19 = *(a1 + 14);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(a1 + 920) = Memory_Typed;
    if (Memory_Typed)
    {
      v21 = 0;
      *(a1 + 912) = 1;
      goto LABEL_22;
    }

    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Failed to allocate memory for storing notification payload");
    *(a1 + 912) = 1;
LABEL_9:
    LOBYTE(v58) = 0;
    v16 = 1;
    goto LABEL_61;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Only one notification is received to read listen mode routing table");
  *(a1 + 912) = 0;
  *(a1 + 914) = v13;
  if (v13)
  {
    *(a1 + 920) = *(a2 + 8) + 2;
    *(a1 + 928) = v10;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Listen mode routing table is empty. No of entries: 0");
  }

LABEL_23:
  v16 = !v15;
  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Processing Rtng ntf...");
  v62 = 0;
  v63 = 0;
  v27 = *(a1 + 914);
  v61 = 0;
  v60 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessGetRtngNtf");
  LOBYTE(v58) = 0;
  if (v27)
  {
    v28 = sub_297EC2C48(a1, *(a1 + 920), *(a1 + 928));
    if (v28 == 255)
    {
      v49 = "Inconsistent TLVs received!";
    }

    else if (v28)
    {
      v49 = "Invalid input parameter sent!";
    }

    else
    {
      if (v59)
      {
        v29 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        v59 = 0;
      }

      v30 = *(a1 + 6524);
      v59 = phOsalNfc_GetMemory_Typed();
      if (v59)
      {
        v31 = 0;
        LOBYTE(v58) = v27;
        v62 = *(a1 + 920);
        v32 = *(a1 + 928);
        LODWORD(v63) = 0;
        HIDWORD(v63) = v32;
        while (1)
        {
          v33 = sub_297EC2D1C(a1, &v62, &v61 + 1, &v61, &v60);
          if (v33)
          {
            break;
          }

          v34 = HIBYTE(v61);
          v35 = v61;
          v36 = v59;
          v37 = v60;
          sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessRtngEntry");
          if (v34 == 2)
          {
            v43 = *(a1 + 6524);
            v44 = v59 + v31;
            *v44 = 2;
            *(v44 + 4) = *v37;
            v45 = v37[1];
            if (v45 > 0xF)
            {
              v40 = 255;
            }

            else
            {
              v40 = 0;
              v46 = *(v44 + 8) & 0xFE | v45 & 1;
              *(v44 + 8) = v46;
              v47 = v46 & 0xFD | v37[1] & 2;
              *(v44 + 8) = v47;
              *(v44 + 8) = v47 & 0xFB | v37[1] & 4;
            }

            if (v35 <= 1)
            {
              v48 = 0;
            }

            else
            {
              v48 = v35 - 2;
            }

            if (v48 >= 0x11u)
            {
              sub_297E4E0B0(2, a1, 3u, 1u, "Received AID length exceeded Max AID Length");
LABEL_78:
              sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessRtngEntry");
              goto LABEL_60;
            }

            phOsalNfc_MemCopy();
            *(v36 + v31 + 28) = v48;
          }

          else
          {
            if (v34 == 1)
            {
              v38 = v59 + v31;
              *(v59 + v31) = 1;
            }

            else
            {
              if (v34)
              {
                goto LABEL_78;
              }

              v38 = v59 + v31;
              *(v59 + v31) = 0;
            }

            *(v38 + 4) = *v37;
            v39 = v37[1];
            if (v39 > 0xF)
            {
              v40 = 255;
            }

            else
            {
              v40 = 0;
              v41 = *(v38 + 8) & 0xFE | v39 & 1;
              *(v38 + 8) = v41;
              v42 = v41 & 0xFD | v37[1] & 2;
              *(v38 + 8) = v42;
              *(v38 + 8) = v42 & 0xFB | v37[1] & 4;
            }

            *(v38 + 12) = v37[2];
          }

          sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessRtngEntry");
          if (v40)
          {
            goto LABEL_60;
          }

          v31 += 32;
          if (!--v27)
          {
            goto LABEL_50;
          }
        }

        if (v33 == 255)
        {
          v49 = "Get Tlv failed!";
        }

        else
        {
          v49 = "Invalid parameter passed";
        }
      }

      else
      {
        v49 = "Failed to allocate trans info buffer!";
      }
    }

    sub_297E4E0B0(2, a1, 3u, 1u, v49);
LABEL_60:
    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessGetRtngNtf");
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Rxd Routing Entries Validation Failed!");
    LOBYTE(v58) = 0;
  }

  else
  {
LABEL_50:
    sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessGetRtngNtf");
  }

LABEL_61:
  v56 = 0x100000003;
  LODWORD(v57) = 2;
  v50 = sub_297F00C28(a1 + 936, &v56, sub_297F03B88);
  a3 = v50;
  if (v50 == 255)
  {
    v51 = "phNciNfc_GetRtngConfigNtfCb:De-register Rtng Notification call back failed!";
    goto LABEL_68;
  }

  if (v50 == 52)
  {
    v51 = "phNciNfc_GetRtngConfigNtfCb:Rtng Notification call back not registered!";
LABEL_68:
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v51);
    goto LABEL_69;
  }

  if (v50)
  {
    v51 = "Invalid parameter passed!";
    goto LABEL_68;
  }

  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "De-register Rtng ntf call back success");
LABEL_69:
  if (*(a1 + 920))
  {
    if (v16)
    {
      v52 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
    }

    *(a1 + 920) = 0;
    *(a1 + 928) = 0;
    *(a1 + 914) = 0;
    *(a1 + 912) = 0;
  }

  sub_297E91EA8(a1, &v58, a3);
  sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Notifying upper layer...");
  v53 = *(a1 + 6524);
  phOsalNfc_MemCopy();
  sub_297E5B994(a1, a3, a1 + 6992);
  if (v59)
  {
    v54 = *(a1 + 6524);
    phOsalNfc_FreeMemory();
  }

LABEL_75:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetRtngConfigNtfCb");
  return a3;
}

uint64_t sub_297F04328(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildNxpRfDiscConfigParams");
  if ((*a3 & 0x10) != 0 && sub_297E65D5C(a1, a2, 0xA044u, 2, a3 + 13))
  {
    goto LABEL_51;
  }

  v6 = a3[2];
  if (v6)
  {
    if (sub_297E65D5C(a1, a2, 0xA04Du, 7, a3 + 29))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 2) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA04Eu, 7, a3 + 35))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 4) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA04Fu, 7, a3 + 41))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 8) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA050u, 7, a3 + 47))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x10) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA051u, 7, a3 + 53))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x20) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA052u, 7, a3 + 59))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x40) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA053u, 7, a3 + 65))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x80) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA054u, 7, a3 + 71))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x100) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA055u, 7, a3 + 77))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x200) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA056u, 7, a3 + 83))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x400) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA057u, 7, a3 + 89))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x800) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA058u, 7, a3 + 95))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x1000) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA059u, 7, a3 + 101))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x2000) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA05Au, 7, a3 + 107))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x4000) != 0)
  {
    if (!sub_297E65D5C(a1, a2, 0xA05Bu, 7, a3 + 113))
    {
      v6 = a3[2];
      goto LABEL_48;
    }

LABEL_51:
    v7 = 1;
    goto LABEL_52;
  }

LABEL_48:
  if (v6 < 0 && sub_297E65D5C(a1, a2, 0xA05Cu, 7, a3 + 119))
  {
    goto LABEL_51;
  }

  v7 = 0;
LABEL_52:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildNxpRfDiscConfigParams");
  return v7;
}

uint64_t sub_297F04604(uint64_t a1, uint64_t *a2, char *a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_BuildSmbConfigParams");
  if (!a3)
  {
    goto LABEL_13;
  }

  v6 = *a3;
  if (*a3)
  {
    if (sub_297E65D5C(a1, a2, 0xA070u, 4, (a3 + 4)))
    {
      goto LABEL_13;
    }

    v6 = *a3;
  }

  if ((v6 & 2) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA071u, 2, (a3 + 7)))
    {
      goto LABEL_13;
    }

    v6 = *a3;
  }

  if ((v6 & 4) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA077u, 3, (a3 + 8)))
    {
      goto LABEL_13;
    }

    v6 = *a3;
  }

  if ((v6 & 8) == 0 || !sub_297E65D5C(a1, a2, 0xA07Au, 17, (a3 + 10)))
  {
    v7 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v7 = 1;
LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_BuildSmbConfigParams");
  return v7;
}

uint64_t sub_297F04710(uint64_t a1, int a2, int a3, _WORD *a4, _BYTE *a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ParseSysConfigParams");
  if (a2 == 1)
  {
    ++*a5;
    v10 = *a4 + a3;
    if (v10 >= 0x10000)
    {
      LOWORD(v10) = 0;
    }

    *a4 = v10;
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ParseSysConfigParams");
}

uint64_t sub_297F047BC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NciCtxInitialize");
  if (a1)
  {
    *(a1 + 160) = 0;
    *(a1 + 3424) = 0;
    *(a1 + 3752) = 0;
    *(a1 + 3776) = 0;
    *(a1 + 3800) = 0;
    *(a1 + 4552) = 0;
    *(a1 + 4640) = 0;
    *(a1 + 4656) = 0;
    *(a1 + 4800) = 0;
    *(a1 + 4536) = 0;
    *(a1 + 4688) = 0;
    *(a1 + 184) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 888) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 4616) = 0u;
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NciCtxInitialize");
}

uint64_t sub_297F04874(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendTxData");
  if (a1)
  {
    v2 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    LODWORD(v5) = 0;
    BYTE12(v5) = *(a1 + 3968);
    *&v6 = *(a1 + 896);
    DWORD2(v6) = *(a1 + 904);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, *(a1 + 4566), sub_297E5E830, a1);
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendTxData");
  return v3;
}

uint64_t sub_297F04948(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ProcessDataRsp");
  if (a1)
  {
    if (!a2)
    {
      *(a1 + 4592) = *(a1 + 3800);
      *(a1 + 4600) = *(a1 + 3808);
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ProcessDataRsp");
  return a2;
}

uint64_t sub_297F049C8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CompleteDataSequence");
  if (a1)
  {
    v4 = *(a1 + 4616);
    *(a1 + 4616) = 0;
    *(a1 + 6483) = 0;
    if (v4)
    {
      v4(*(a1 + 4624), a2, a1 + 4592);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "No CB registered");
    }

    *(a1 + 896) = 0;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CompleteDataSequence");
  return a2;
}

uint64_t sub_297F04A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v37 = 0;
  v38 = a1;
  v35 = 0;
  v36 = 0;
  sub_297E4E1B4(0, &v38, 3u, 5u, "phNciNfc_Initialise");
  sub_297E9F51C(v38, &v37);
  v11 = 0;
  v12 = 1;
  v13 = v38;
  do
  {
    v14 = v12;
    v15 = &unk_2A18BDDC0 + 112 * v11;
    if (*v15 == v38)
    {
      v16 = *(v15 + 2);
      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v14 & 1) != 0);
  v16 = 255;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (!a2 || !v38)
  {
LABEL_12:
    v20 = 1;
    sub_297E4E0B0(0, &v38, 3u, 1u, "Invalid input parameter");
    v18 = v37;
    v19 = v37 != 0;
    if (a5 != 1 || !v37)
    {
LABEL_14:
      if (a5 || !v19)
      {
        goto LABEL_32;
      }
    }

    *(v18 + 428) = a3;
    *(v18 + 469) = a4;
    *(v18 + 472) = off_2A1A90AA8;
    v18[3976] = 0;
    v21 = sub_297E577AC(v18, off_2A1A90AA8);
    v22 = v37;
    v37[3977] = v21;
    v20 = sub_297E5E830(v22, 0, 0);
    goto LABEL_32;
  }

  v17 = v37;
  if (v37)
  {
    if (a5 != 1)
    {
      sub_297E4E0B0(0, &v38, 3u, 4u, "Stack already initialized");
      v18 = v37;
      v19 = v37 != 0;
      v20 = 50;
      goto LABEL_14;
    }

LABEL_19:
    *(v17 + 428) = a3;
    *(v17 + 469) = a4;
    v17[6522] = a5;
    *(v17 + 946) = 0;
    *(v17 + 1631) = v16;
    *(v17 + 816) = v13;
    *(v17 + 472) = off_2A1A90AA8;
    v17[3976] = 0;
    v24 = sub_297E577AC(v17, off_2A1A90AA8);
    v25 = v37;
    v26 = v38;
    v37[3977] = v24;
    *(v25 + 196) = v26;
    *(v25 + 186) = 0xFFFFFFFFFFFFLL;
    *(v25 + 117) = v25;
    *(v25 + 849) = v16;
    v27 = sub_297EBDBC4((v25 + 936));
    v28 = v37;
    if (v27)
    {
      sub_297E4E0B0(1, (v37 + 6524), 3u, 1u, "phNciNfc_CoreInitialise failed!");
      v29 = *(v37 + 1631);
      phOsalNfc_FreeMemory();
      v37 = 0;
      sub_297E9F5D8(v38, 0);
      sub_297E9F688(v38, 0);
      v20 = 255;
      goto LABEL_32;
    }

    *(v37 + 474) = 0x300000003;
    *(v28 + 9) = a6;
    *(v28 + 20) = 0;
    v28[6616] = 0;
    v28[6656] = 0;
    *(v28 + 3330) = 0;
    *(v28 + 3141) = 0;
    *(v28 + 609) = 0xFFFFFFFFFFFFLL;
    if (a5 == 2)
    {
      BYTE5(v36) = 2;
      v35 = 0xF00000003;
      LODWORD(v36) = 58;
      sub_297E59AEC((v28 + 936), &v35, sub_297E70720, v28);
      BYTE5(v36) = 2;
      v35 = 3;
      LODWORD(v36) = 0;
      sub_297E59AEC((v37 + 936), &v35, sub_297E95BC8, v37);
      BYTE5(v36) = 2;
      v35 = 0x100000003;
      LODWORD(v36) = 33;
      sub_297E59AEC((v37 + 936), &v35, sub_297E70800, v37);
      BYTE5(v36) = 2;
      v35 = 0x100000003;
      LODWORD(v36) = 40;
      sub_297E59AEC((v37 + 936), &v35, sub_297E708A4, v37);
      BYTE5(v36) = 2;
      v35 = 0x100000003;
      LODWORD(v36) = 35;
      sub_297E59AEC((v37 + 936), &v35, sub_297E70948, v37);
      BYTE5(v36) = 2;
      v35 = 0x100000003;
      LODWORD(v36) = 44;
      sub_297E59AEC((v37 + 936), &v35, sub_297E70A38, v37);
      BYTE5(v36) = 2;
      v35 = 0x100000003;
      LODWORD(v36) = 36;
      sub_297E59AEC((v37 + 936), &v35, sub_297E70ADC, v37);
      BYTE5(v36) = 2;
      v35 = 0x100000003;
      LODWORD(v36) = 50;
      sub_297E59AEC((v37 + 936), &v35, sub_297E6F4F4, v37);
      BYTE5(v36) = 2;
      v35 = 0xF00000003;
      LODWORD(v36) = 50;
      sub_297E59AEC((v37 + 936), &v35, sub_297E50184, v37);
      BYTE5(v36) = 2;
      v35 = 0xF00000003;
      LODWORD(v36) = 3;
      sub_297E59AEC((v37 + 936), &v35, sub_297E71AC8, v37);
      v20 = sub_297E94FB0(v37);
      if (!v20)
      {
        v30 = *(v37 + 1631);
        v31 = phOsalNfc_Timer_Create();
        v32 = v37;
        *(v37 + 587) = v31;
        v20 = 12;
        v33 = "Notification Timer Create failed!!";
        if (v31 && v31 != 0xFFFFFFFFFFFFLL)
        {
          sub_297E4E0B0(1, (v32 + 6524), 3u, 4u, "Notification Timer Created Successfully");
          if (!sub_297F00D78((v37 + 936), 255))
          {
            v20 = 13;
            goto LABEL_32;
          }

          v20 = 1;
          v33 = "phNciNfc_Initialise:Failed to Update Control Packet size";
          v32 = v37;
        }

        sub_297E4E0B0(1, (v32 + 6524), 3u, 1u, v33);
        goto LABEL_31;
      }
    }

    else
    {
      v20 = sub_297E5E830(v28, 0, 0);
    }

    if (v20 == 13)
    {
      goto LABEL_32;
    }

LABEL_31:
    sub_297E4E0B0(1, (v37 + 6524), 3u, 2u, "Init Sequence failed!");
    sub_297F0522C(v37);
    sub_297EBDFC0(v37);
    v37 = 0;
    goto LABEL_32;
  }

  v23 = sub_297F05010(v38);
  v37 = v23;
  if (v23)
  {
    v17 = v23;
    v13 = v38;
    goto LABEL_19;
  }

  v20 = 0;
LABEL_32:
  sub_297E4DFAC(0, &v38, 3u, 5u, "phNciNfc_Initialise");
  return v20;
}

uint64_t sub_297F05010(uint64_t a1)
{
  v16 = a1;
  v15 = 0;
  sub_297E4E1B4(0, &v16, 3u, 5u, "phNciNfc_InitContext");
  v1 = sub_297E9F51C(v16, &v15);
  v2 = 0;
  v14 = 255;
  v3 = 1;
  while (1)
  {
    v4 = v3;
    v5 = &unk_2A18BDDC0 + 112 * v2;
    if (*v5 == v16)
    {
      break;
    }

    v3 = 0;
    v2 = 1;
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v14 = *(v5 + 2);
LABEL_6:
  if (!v1 && v15)
  {
    goto LABEL_19;
  }

  if (v1 || v15)
  {
    v7 = "Failed to retrieve NCI Context";
    v8 = &v16;
    LODWORD(Memory_Typed) = 0;
LABEL_18:
    sub_297E4E0B0(Memory_Typed, v8, 3u, 1u, v7);
    goto LABEL_19;
  }

  Memory_Typed = phOsalNfc_GetMemory_Typed();
  v15 = Memory_Typed;
  if (!Memory_Typed)
  {
    v7 = "phNciNfc_InitContext:Failed to allocate memory, insufficient resources";
    v8 = &v16;
    goto LABEL_18;
  }

  sub_297E966F4(1, &v14, 3u, 4u, "####DriverHandle");
  sub_297E966F4(1, &v14, 3u, 4u, "####NCI context");
  sub_297E966F4(1, &v14, 3u, 4u, "####NCI CORE Context");
  if (sub_297E9F5D8(v16, v15))
  {
    v7 = "Failed to assign NCI context to INFRA layer";
    v8 = (v15 + 6524);
LABEL_17:
    LODWORD(Memory_Typed) = 1;
    goto LABEL_18;
  }

  phOsalNfc_SetMemory();
  v9 = v15;
  *(v15 + 1631) = v14;
  sub_297F047BC(v9);
  v10 = v16;
  v11 = v15;
  v15[816] = v16;
  *(v11 + 936) = v11;
  if (sub_297E9F688(v10, v11 + 936))
  {
    v7 = "Failed to assign NCI CORE context to INFRA layer";
    v8 = &v14;
    goto LABEL_17;
  }

  if (v16)
  {
    v13 = v15;
    v15[196] = v16;
    *(v13 + 3396) = v14;
  }

LABEL_19:
  sub_297E4DFAC(0, &v16, 3u, 5u, "phNciNfc_InitContext");
  return v15;
}

uint64_t sub_297F0522C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_FreeSendPayloadBuff");
  if (*(a1 + 896))
  {
    v2 = *(a1 + 6524);
    phOsalNfc_FreeMemory();
    *(a1 + 904) = 0;
    *(a1 + 888) = 0u;
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_FreeSendPayloadBuff");
}

uint64_t sub_297F052B0(uint64_t a1)
{
  v5 = 0;
  v1 = sub_297E9F51C(a1, &v5);
  v2 = v5;
  if (v5)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    sub_297E4E0B0(2, v5, 3u, 1u, "phNciNfc_GetNciContext:Failed to allocate memory, insufficient resources");
    return v5;
  }

  return v2;
}

uint64_t sub_297F05308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ReInitialise");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 36) = 0;
      *(a1 + 40) = 256;
      *(a1 + 1488) = 0xFFFFFFFFFFFFLL;
      sub_297ED755C(a1);
      *(a1 + 6284) = 0;
      *(a1 + 4808) = 0;
      *(a1 + 3776) = off_2A1A90AA8;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90AA8);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Re-Initialize Sequence failed!");
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Stack not initialized");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ReInitialise");
  return v6;
}

uint64_t sub_297F05450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetFwInterfaceVersion");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A90AD8;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90AD8);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Get FW interface version Sequence failed!");
        *(a1 + 896) = 0;
        *(a1 + 904) = 0;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameter passed(phNciNfc_GetFwInterfaceVersion)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_GetFwInterfaceVersion)\n");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetFwInterfaceVersion");
  return v6;
}

uint64_t sub_297F05580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Nfcee_StartDiscovery");
  if (a1)
  {
    if (a2)
    {
      v6 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        v8 = Memory_Typed;
        sub_297EBDF1C(a1);
        *(a1 + 4528) = 1;
        *v8 = 1;
        *(a1 + 896) = v8;
        *(a1 + 904) = 1;
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
        *(a1 + 3776) = off_2A1A92838;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92838);
        v9 = sub_297EBA944(a1, 0, 0);
        if (v9 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Nfcee Discover Sequence failed!");
          v10 = *(a1 + 6524);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Memory not available(phNciNfc_Nfcee_StartDiscovery)\n");
        v9 = 12;
      }
    }

    else
    {
      v9 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid upper call back function (phNciNfc_Nfcee_StartDiscovery)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_Nfcee_StartDiscovery)\n");
    v9 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Nfcee_StartDiscovery");
  return v9;
}

uint64_t sub_297F05720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Nfcee_StopDiscovery");
  if (a1)
  {
    if (a2)
    {
      v6 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *(a1 + 4528) = 0;
        *Memory_Typed = 0;
        *(a1 + 896) = Memory_Typed;
        *(a1 + 904) = 1;
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
        *(a1 + 3776) = off_2A1A92838;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92838);
        v8 = sub_297EBA944(a1, 0, 0);
        if (v8 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Nfcee Discover Sequence failed!");
          v9 = *(a1 + 6524);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Memory not available(phNciNfc_Nfcee_StopDiscovery)\n");
        v8 = 12;
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid upper call back function (phNciNfc_Nfcee_StopDiscovery)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_Nfcee_StopDiscovery)\n");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Nfcee_StopDiscovery");
  return v8;
}

uint64_t sub_297F058B8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Nfcee_ModeSet");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_Nfcee_ModeSet)\n");
    v10 = 49;
    goto LABEL_14;
  }

  if (a3 > 1 || !a4)
  {
    v10 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameter passed(phNciNfc_Nfcee_ModeSet)\n");
    goto LABEL_14;
  }

  if (!a2)
  {
    v15 = *(a1 + 6524);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      *(a1 + 3988) = a3;
      *(a1 + 3992) = 0;
      *Memory_Typed = 0;
      Memory_Typed[1] = a3;
      *(a1 + 896) = Memory_Typed;
      *(a1 + 904) = 2;
      *(a1 + 3424) = a4;
      *(a1 + 3752) = a5;
      *(a1 + 3776) = off_2A1A92818;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92818);
      v10 = sub_297EBAFC4(a1, 0, 0);
      if (v10 == 13)
      {
        goto LABEL_14;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Nfcee ModeSet Sequence failed!");
      v17 = *(a1 + 6524);
LABEL_22:
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      goto LABEL_14;
    }

    v18 = a1 + 6524;
LABEL_20:
    sub_297E4E0B0(1, v18, 3u, 1u, "Memory not available(phNciNfc_Nfcee_ModeSet)\n");
    v10 = 12;
    goto LABEL_14;
  }

  v10 = 1;
  if (!*(a2 + 1) || *(a2 + 1) == 255)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 6524);
  v12 = phOsalNfc_GetMemory_Typed();
  if (!v12)
  {
    v18 = a1 + 6524;
    goto LABEL_20;
  }

  *(a1 + 3988) = a3;
  *(a1 + 3992) = a2;
  *v12 = *(a2 + 1);
  v12[1] = a3;
  *(a1 + 896) = v12;
  *(a1 + 904) = 2;
  *(a1 + 6480) = 0;
  *(a1 + 3776) = off_2A1A92818;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92818);
  v13 = sub_297EBAFC4(a1, 0, 0);
  if (v13 != 13)
  {
    v10 = v13;
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Nfcee ModeSet Sequence failed!");
    v19 = *(a1 + 6524);
    goto LABEL_22;
  }

  *(a1 + 3424) = a4;
  *(a1 + 3752) = a5;
  if (a3 == 1 && *(a2 + 1) == 1)
  {
    *(a1 + 816) = 0;
    *(a1 + 824) = 0;
  }

  else
  {
    *(a1 + 816) = a4;
    *(a1 + 824) = a5;
  }

  v10 = 13;
LABEL_14:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Nfcee_ModeSet");
  return v10;
}

uint64_t sub_297F05B7C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetPowerMode");
  if (a1)
  {
    if (a3)
    {
      v8 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *(a1 + 3404) = a2;
        *Memory_Typed = a2;
        *(a1 + 896) = Memory_Typed;
        *(a1 + 904) = 1;
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        *(a1 + 3776) = off_2A1A90B38;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B38);
        v10 = sub_297E94F1C(a1, 0, 0);
        if (v10 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Set/Reset Standby mode Sequence failed!");
          v11 = *(a1 + 6524);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Memory not available(phNciNfc_SetPowerMode)\n");
        v10 = 12;
      }
    }

    else
    {
      v10 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameter passed(phNciNfc_SetPowerMode)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_SetPowerMode)\n");
    v10 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetPowerMode");
  return v10;
}

uint64_t sub_297F05D1C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PropConfigHsuBr");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_SetPowerMode)\n");
    v12 = 49;
    goto LABEL_12;
  }

  if (!a3)
  {
    v13 = "Invalid parameter passed(phNciNfc_SetPowerMode)\n";
    v12 = 1;
    v14 = 2;
    v15 = a1;
LABEL_11:
    sub_297E4E0B0(v14, v15, 3u, 1u, v13);
    goto LABEL_12;
  }

  v8 = *(a1 + 6524);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  *(a1 + 4816) = Memory_Typed;
  if (!Memory_Typed)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Memory not available(Config HSU Br)\n");
    v12 = 12;
    goto LABEL_12;
  }

  if (a2 > 9)
  {
    v13 = "Invalid Baud rate";
    v12 = 1;
    v15 = a1 + 6524;
    v14 = 1;
    goto LABEL_11;
  }

  if (*(a1 + 4834) == 1)
  {
    v10 = *(a1 + 6524);
    v11 = (&off_2A13A5BB8 + a2 - 1);
  }

  else
  {
    v17 = *(a1 + 6524);
    v18 = a2 - 1;
    v11 = (&off_2A13A5C48 + v18);
    v19 = (&off_2A13A5C00 + v18);
    if (*(a1 + 4833) == 1)
    {
      v11 = v19;
    }
  }

  v20 = *v11;
  phOsalNfc_MemCopy();
  *(a1 + 896) = *(a1 + 4816);
  *(a1 + 904) = 8;
  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
  *(a1 + 3776) = off_2A1A90B58;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B58);
  v12 = sub_297E5E830(a1, 0, 0);
  if (v12 != 13)
  {
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Configure HSU BR Sequence failed!");
    v21 = *(a1 + 6524);
    v22 = *(a1 + 4816);
    phOsalNfc_FreeMemory();
    *(a1 + 896) = 0;
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PropConfigHsuBr");
  return v12;
}

uint64_t sub_297F05F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetMultiTagInfo");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A90B78;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B78);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Get Multi tag Info Sequence failed!");
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameter passed(phNciNfc_GetMultiTagInfo)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_GetMultiTagInfo)\n");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetMultiTagInfo");
  return v6;
}

uint64_t sub_297F06050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_ClrMultiTagInfo");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A90B98;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B98);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Clear Multi tag List Sequence failed!");
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameter passed(phNciNfc_PropConfigClrMultiTag)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_PropConfigClrMultiTag)\n");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_ClrMultiTagInfo");
  return v6;
}

uint64_t sub_297F06170(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RegisterNotification");
  if (a1)
  {
    if (a3)
    {
      v8 = 0;
      switch(a2)
      {
        case 1:
          v8 = 0;
          a1[26] = a4;
          a1[27] = a3;
          break;
        case 2:
          v8 = 0;
          a1[28] = a4;
          a1[29] = a3;
          break;
        case 3:
          v8 = 0;
          a1[23] = a4;
          a1[24] = a3;
          break;
        case 4:
          v8 = 0;
          a1[30] = a4;
          a1[31] = a3;
          break;
        case 5:
          v8 = 0;
          a1[34] = a4;
          a1[35] = a3;
          break;
        case 7:
          v8 = 0;
          a1[36] = a4;
          a1[37] = a3;
          break;
        case 8:
          v8 = 0;
          a1[38] = a4;
          a1[39] = a3;
          break;
        case 9:
          v8 = 0;
          a1[40] = a4;
          a1[41] = a3;
          break;
        case 10:
          v8 = 0;
          a1[48] = a4;
          a1[49] = a3;
          break;
        case 11:
          v8 = 0;
          a1[32] = a4;
          a1[33] = a3;
          break;
        case 13:
          v8 = 0;
          a1[50] = a4;
          a1[51] = a3;
          break;
        case 14:
          v8 = 0;
          a1[52] = a4;
          a1[53] = a3;
          break;
        case 16:
          v8 = 0;
          a1[56] = a4;
          a1[57] = a3;
          break;
        case 17:
          v8 = 0;
          a1[58] = a4;
          a1[59] = a3;
          break;
        case 18:
          v8 = 0;
          a1[62] = a4;
          a1[63] = a3;
          break;
        case 19:
          v8 = 0;
          a1[69] = a3;
          a1[68] = a4;
          break;
        case 20:
          v8 = 0;
          a1[71] = a3;
          a1[70] = a4;
          break;
        case 21:
          v8 = 0;
          a1[73] = a3;
          a1[72] = a4;
          break;
        case 23:
          v8 = 0;
          a1[42] = a4;
          a1[43] = a3;
          break;
        case 24:
          v8 = 0;
          a1[46] = a4;
          a1[47] = a3;
          break;
        case 26:
          v8 = 0;
          a1[67] = a3;
          a1[66] = a4;
          break;
        case 27:
          v8 = 0;
          a1[60] = a4;
          a1[61] = a3;
          break;
        case 28:
          v8 = 0;
          a1[79] = a3;
          a1[78] = a4;
          break;
        case 29:
          v8 = 0;
          a1[44] = a4;
          a1[45] = a3;
          break;
        case 30:
          v8 = 0;
          a1[81] = a3;
          a1[80] = a4;
          break;
        case 31:
          v8 = 0;
          a1[91] = a3;
          a1[90] = a4;
          break;
        case 32:
          v8 = 0;
          a1[83] = a3;
          a1[82] = a4;
          break;
        case 33:
          v8 = 0;
          a1[93] = a3;
          a1[92] = a4;
          break;
        case 34:
          v8 = 0;
          a1[84] = a3;
          a1[85] = a4;
          break;
        case 35:
          v8 = 0;
          a1[87] = a3;
          a1[86] = a4;
          break;
        case 36:
          v8 = 0;
          a1[89] = a3;
          a1[88] = a4;
          break;
        case 37:
          v8 = 0;
          a1[95] = a3;
          a1[94] = a4;
          break;
        case 38:
          v8 = 0;
          a1[65] = a3;
          a1[64] = a4;
          break;
        default:
          break;
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid input parameter");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Nci stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RegisterNotification");
  return v8;
}

uint64_t sub_297F0642C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_NfccRegNtfBeforeNciResetCmd");
  if (a1)
  {
    if (a3)
    {
      v8 = 1;
      switch(a2)
      {
        case 4:
          v8 = 0;
          a1[30] = a4;
          a1[31] = a3;
          break;
        case 5:
          v8 = 0;
          a1[34] = a4;
          a1[35] = a3;
          break;
        case 9:
          v8 = 0;
          a1[40] = a4;
          a1[41] = a3;
          break;
        case 14:
          v8 = 0;
          a1[52] = a4;
          a1[53] = a3;
          break;
        case 15:
          v8 = 0;
          a1[54] = a4;
          a1[55] = a3;
          break;
        case 19:
          v8 = 0;
          a1[69] = a3;
          a1[68] = a4;
          break;
        case 20:
          v8 = 0;
          a1[71] = a3;
          a1[70] = a4;
          break;
        case 22:
          v8 = 0;
          a1[75] = a3;
          a1[74] = a4;
          break;
        case 23:
          v8 = 0;
          a1[42] = a4;
          a1[43] = a3;
          break;
        case 25:
          v8 = 0;
          a1[77] = a3;
          a1[76] = a4;
          break;
        case 29:
          v8 = 0;
          a1[44] = a4;
          a1[45] = a3;
          break;
        case 30:
          v8 = 0;
          a1[81] = a3;
          a1[80] = a4;
          break;
        case 31:
          v8 = 0;
          a1[91] = a3;
          a1[90] = a4;
          break;
        case 32:
          v8 = 0;
          a1[83] = a3;
          a1[82] = a4;
          break;
        case 33:
          v8 = 0;
          a1[93] = a3;
          a1[92] = a4;
          break;
        default:
          break;
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid input parameter");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Nci stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_NfccRegNtfBeforeNciResetCmd");
  return v8;
}

uint64_t sub_297F065F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Connect");
  if (a1)
  {
    if (a2 && a4 && *(a2 + 8) && *(a2 + 8) != 255)
    {
      v12 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *Memory_Typed = *(a2 + 8);
        Memory_Typed[1] = *(a2 + 16);
        Memory_Typed[2] = a3;
        *(a1 + 160) = Memory_Typed;
        *(a1 + 168) = 3;
        *(a1 + 3424) = a4;
        *(a1 + 3752) = a5;
        *(a1 + 3776) = off_2A1A907D8;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A907D8);
        v10 = sub_297E779EC(a1, 0, 0);
        if (v10 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Connect Sequence failed!");
          v14 = *(a1 + 6524);
          phOsalNfc_FreeMemory();
          *(a1 + 160) = 0;
          *(a1 + 3424) = 0;
          *(a1 + 3752) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Memory not available(phNciNfc_Connect)\n");
        v10 = 12;
      }
    }

    else
    {
      v10 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameter passed(phNciNfc_Connect)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_Connect)\n");
    v10 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Connect");
  return v10;
}

uint64_t sub_297F067C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetConfigRaw");
  if (a1)
  {
    if (a2 && a3)
    {
      v10 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        v12 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        *(a1 + 3424) = a4;
        *(a1 + 3752) = a5;
        *(a1 + 3776) = off_2A1A93C20;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93C20);
        *(a1 + 904) = a3;
        v13 = sub_297E5DF3C(a1, 0, 0);
        if (v13 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Get Config Raw Sequence failed!");
          v14 = *(a1 + 6524);
          v15 = *(a1 + 896);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Get Config Raw - memory allocation failed");
        v13 = 31;
      }
    }

    else
    {
      v13 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v13 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetConfigRaw");
  return v13;
}

uint64_t sub_297F06968(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetTransitionValue");
  if (a1)
  {
    if (a2 && a3 == 2)
    {
      v10 = *(a1 + 6524);
      *(a1 + 896) = phOsalNfc_GetMemory_Typed();
      v11 = *(a1 + 6524);
      phOsalNfc_MemCopy();
      *(a1 + 3424) = a4;
      *(a1 + 3752) = a5;
      *(a1 + 3776) = off_2A1A93CC0;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93CC0);
      *(a1 + 904) = 2;
      v12 = sub_297E5DF3C(a1, 0, 0);
      if (v12 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Get transition Sequence failed!");
        v13 = *(a1 + 6524);
        v14 = *(a1 + 896);
        phOsalNfc_FreeMemory();
        *(a1 + 904) = 0;
        *(a1 + 896) = 0;
      }
    }

    else
    {
      v12 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v12 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetTransitionValue");
  return v12;
}

uint64_t sub_297F06AE8(uint64_t a1, unsigned int a2, int *a3)
{
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_VerifyRtngTableConfig");
  if (a1)
  {
    if (!a3)
    {
      v6 = "Invalid parameters";
      goto LABEL_8;
    }

    if (!a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "No entries");
      v7 = 255;
      goto LABEL_13;
    }

    if (sub_297F02DF4(a1, a2, a3, &v10))
    {
      v6 = "Input parameter validation failed";
LABEL_8:
      v7 = 1;
LABEL_9:
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v6);
      goto LABEL_13;
    }

    if (v10 > *(a1 + 14))
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Input Routing config size exceeds Max routing table size                                     supported by NFCC");
      v7 = 139;
      goto LABEL_13;
    }

    v9 = sub_297F06C90(a1, v11);
    if (v9)
    {
      v7 = v9;
      v6 = "Failed to get NFCC features!";
      goto LABEL_9;
    }

    v7 = sub_297F034C0(a1, v11, a2, a3);
    if (!v7)
    {
      *(a1 + 914) = a2;
      *(a1 + 4688) = a3;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v7 = 49;
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_VerifyRtngTableConfig");
  return v7;
}

uint64_t sub_297F06C90(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetNfccFeatures");
  if (a1)
  {
    if (a2)
    {
      v4 = 0;
      v5 = *a2 & 0xFB | (4 * (*a1 & 1));
      *a2 = v5;
      *a2 = v5 & 0xFC | (*a1 >> 1) & 3;
      v6 = *(a2 + 4) & 0xFB | (4 * ((*(a1 + 1) >> 1) & 1));
      *(a2 + 4) = v6;
      v7 = v6 & 0xFFFFFFFD | (2 * ((*(a1 + 1) >> 2) & 1));
      *(a2 + 4) = v7;
      *(a2 + 4) = v7 & 0xFE | ((*(a1 + 1) & 8) != 0);
      LOBYTE(v7) = *(a2 + 8) & 0xFD | (2 * (*(a1 + 2) & 1));
      *(a2 + 8) = v7;
      *(a2 + 8) = v7 & 0xFE | ((*(a1 + 2) & 2) != 0);
      *(a2 + 12) = *(a1 + 21);
      *(a2 + 16) = *(a1 + 25);
      *(a2 + 17) = *(a1 + 28);
      *(a2 + 18) = *(a1 + 3);
      *(a2 + 20) = *(a1 + 14) - 5;
    }

    else
    {
      v4 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid input parameters!");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetNfccFeatures");
  return v4;
}

uint64_t sub_297F06DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetRtngTableConfig");
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 14))
      {
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
        *(a1 + 3776) = off_2A1A93C60;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93C60);
        v6 = sub_297F01AB0(a1, 0, 0);
        if (v6 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Get Rtng Config Sequence failed!");
          sub_297F0522C(a1);
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Max Rtng table size is '0', can not read Rtng table!");
        v6 = 255;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetRtngTableConfig");
  return v6;
}

uint64_t sub_297F06F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Transceive");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized (phNciNfc_Transceive)\n");
    v16 = 49;
    goto LABEL_28;
  }

  if (!a2 || !a3 || !a4)
  {
    v16 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameters (phNciNfc_Transceive)\n");
    goto LABEL_28;
  }

  if (!*(a3 + 16) || !*(a3 + 24))
  {
    v17 = " Invalid Send Buff Params. (phNciNfc_Transceive)\n";
LABEL_27:
    v16 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, v17);
    goto LABEL_28;
  }

  if ((!*(a3 + 32) || !*(a3 + 40)) && *a3 != 4)
  {
    v17 = "phNciNfc_Transceive:Invalid Receive Buff Params";
    goto LABEL_27;
  }

  if (*(a3 + 6) <= 0x12Bu)
  {
    *(a3 + 6) = 300;
    sub_297E50EBC(1, a1 + 6524, 3u, 4u, "Input timeout is less than default, hence using default timeout: ");
  }

  v10 = *(a1 + 4552);
  if (!v10)
  {
    goto LABEL_42;
  }

  if (*(v10 + 12) != 1 || *(v10 + 16))
  {
    v11 = *(v10 + 4);
    if (v11 > 15)
    {
      if (v11 != 16)
      {
        if (v11 != 18)
        {
          goto LABEL_35;
        }

        v14 = sub_297E9B8A8(a1, a3);
        goto LABEL_33;
      }

      v12 = *(v10 + 109);
    }

    else
    {
      if ((v11 - 5) >= 3 && v11 != 3)
      {
        goto LABEL_35;
      }

      v12 = *(v10 + 108);
    }

    v13 = (1 << (v12 >> 4)) * 302.064897 / 1000.0;
    if (v13 >= 0x54)
    {
      v14 = 19896;
    }

    else
    {
      v14 = 236 * v13 + 100;
    }

    if ((v14 & 0xFFFCu) <= 0x7CF)
    {
      v15 = *(a3 + 6);
      sub_297E50EBC(1, a1 + 6524, 3u, 4u, "FWT timeout is less than default, hence using default timeout: ");
      v14 = 2000;
    }

LABEL_33:
    if (*(a3 + 6) < v14)
    {
      *(a3 + 6) = v14;
      sub_297E50EBC(1, a1 + 6524, 3u, 4u, "Transceive timeout is greater then default, value ");
    }
  }

LABEL_35:
  v19 = *(a3 + 6);
  sub_297E50EBC(1, a1 + 6524, 3u, 4u, "Transceive timeout value  ");
  if (*(*(a1 + 4552) + 4) == 20 && *a3 == 1)
  {
    sub_297E5A304(*(a1 + 6524), *(a1 + 4696));
    *(a1 + 6512) = 0;
    sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_Transceive");
    v20 = *(a3 + 8);
    if (v20 >= 0xA)
    {
      if (v20 < 0x33)
      {
        goto LABEL_42;
      }

      v21 = 50;
    }

    else
    {
      v21 = 20;
    }

    *(a3 + 8) = v21;
  }

LABEL_42:
  v16 = sub_297E8BB50(a1, a2, &v23);
  if (!v16)
  {
    v22 = v23;
    if (v23)
    {
      *(a1 + 4560) = *a3;
      *(a1 + 4564) = *(a3 + 4);
      *(a1 + 4576) = *(a3 + 16);
      *(a1 + 4592) = *(a3 + 32);
      *(a1 + 4566) = *(a3 + 6);
      *(a1 + 3968) = v22;
      *(a1 + 896) = *(a3 + 16);
      *(a1 + 904) = *(a3 + 24);
      *(a1 + 3776) = off_2A1A93CE0;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93CE0);
      v16 = sub_297E5E830(a1, 0, 0);
      if (v16 == 13)
      {
        *(a1 + 4616) = a4;
        *(a1 + 4624) = a5;
      }

      else
      {
        *(a1 + 896) = 0;
      }
    }

    else
    {
      *(a1 + 6672) = 1;
      *(a1 + 6676) = 0;
      *(a1 + 6680) = *(a3 + 6);
      v16 = sub_297EFF0B0(a1, a2, a3, a4, a5);
      if (v16 != 13)
      {
        *(a1 + 6672) = 0;
        *(a1 + 6676) = 0;
      }
    }
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Transceive");
  return v16;
}

uint64_t sub_297F07378(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v25 = 0;
  v26 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RegUnRegSeEvent");
  if (!a1)
  {
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(&unk_2A18BDDC0 + 14 * v11 + 4);
    if (v10)
    {
      break;
    }

    v10 = 1;
    v11 = 1;
  }

  while (v12 != a1);
  if (v12 != a1)
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3u, 1u, "Stack not initialized (phNciNfc_RegUnRegSeEvent)");
    v13 = 49;
    goto LABEL_7;
  }

  if (!a2 || !a4)
  {
    v13 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameters (phNciNfc_RegUnRegSeEvent)");
    goto LABEL_7;
  }

  v13 = sub_297E8BB50(a1, a2, &v27);
  if (!v13)
  {
    v15 = *(a1 + 6528);
    v16 = (a1 + 4712);
    if (a3)
    {
      v28 = *(a1 + 6528);
      sub_297E4E1B4(0, &v28, 3u, 5u, "phLibNfc_GetRegisteredSlotIndex");
      v17 = 0;
      v18 = 1;
      while (1)
      {
        v19 = v18;
        v20 = &v16[32 * v17];
        if (*v20 == 1 && *(v20 + 1) == a2)
        {
          break;
        }

        v18 = 0;
        v17 = 1;
        if ((v19 & 1) == 0)
        {
          sub_297E4E0B0(0, &v28, 3u, 4u, "phLibNfc_GetAvailableSlotIndex: Registration not found");
          sub_297E4DFAC(0, &v28, 3u, 5u, "phLibNfc_GetRegisteredSlotIndex");
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_RegUnRegSeEvent: No registration found!");
          goto LABEL_28;
        }
      }

      sub_297E4DFAC(0, &v28, 3u, 5u, "phLibNfc_GetRegisteredSlotIndex");
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_RegUnRegSeEvent: Un-registering SE event");
      BYTE4(v26) = v27;
      LODWORD(v25) = 0;
      if (!sub_297F00C28(a1 + 936, &v25, a4))
      {
        v13 = 0;
        *v20 = 0;
        *(v20 + 2) = 0;
        *(v20 + 3) = 0;
        *(v20 + 1) = 0;
        goto LABEL_7;
      }

      v21 = "phNciNfc_RegUnRegSeEvent: Failed to unregister with Nci core";
      v22 = a1 + 6524;
      goto LABEL_27;
    }

    v28 = *(a1 + 6528);
    sub_297E4E1B4(0, &v28, 3u, 5u, "phLibNfc_GetAvailableSlotIndex");
    if (*v16)
    {
      if (*(a1 + 4744))
      {
        sub_297E4E0B0(0, &v28, 3u, 1u, "phLibNfc_GetAvailableSlotIndex: No Free slot available");
        sub_297E4DFAC(0, &v28, 3u, 5u, "phLibNfc_GetAvailableSlotIndex");
        v21 = "phNciNfc_RegUnRegSeEvent: No free slots available, registration failed!";
        v22 = a1 + 6524;
LABEL_27:
        sub_297E4E0B0(1, v22, 3u, 1u, v21);
LABEL_28:
        v13 = 255;
        goto LABEL_7;
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    sub_297E4DFAC(0, &v28, 3u, 5u, "phLibNfc_GetAvailableSlotIndex");
    *(a1 + 6648) = a2;
    sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_RegUnRegSeEvent: Registering SE event with NCI Core");
    BYTE5(v26) = 2;
    BYTE4(v26) = v27;
    LODWORD(v25) = 0;
    if (!sub_297E59AEC(a1 + 936, &v25, sub_297F07730, a1))
    {
      v13 = 0;
      v24 = &v16[32 * v23];
      *(v24 + 2) = a5;
      *(v24 + 3) = a4;
      *(v24 + 1) = a2;
      *v24 = 1;
      goto LABEL_7;
    }

    v21 = "phNciNfc_RegUnRegSeEvent: Failed to register with Nci core";
    v22 = a1 + 6524;
    goto LABEL_27;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RegUnRegSeEvent");
  return v13;
}

uint64_t sub_297F07730(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SeEventCb");
  if (a1)
  {
    if (!a2)
    {
      v17 = 0;
      LODWORD(v18) = 0;
      a2 = &v16;
    }

    v6 = 0;
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = 0;
      v10 = v7;
      do
      {
        v11 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
        if (v8)
        {
          break;
        }

        v8 = 1;
        v9 = 1;
      }

      while (v11 != a1);
      if (v11 == a1)
      {
        v12 = a1 + 4712 + 32 * v6;
        if (*v12 == 1 && *(a1 + 6648) == *(v12 + 8))
        {
          v13 = *(v12 + 24);
          if (v13)
          {
            v14 = *(v12 + 16);
            *a2 = a1;
            v13(v14, a2, a3);
          }
        }
      }

      v7 = 0;
      v6 = 1;
    }

    while ((v10 & 1) != 0);
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SeEventCb");
  return 255;
}

uint64_t sub_297F07864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CreateLogicalConn");
  if (a1)
  {
    if (a2)
    {
      v6 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *Memory_Typed = 1;
        *(Memory_Typed + 4) = 0;
        *(a1 + 3304) = Memory_Typed;
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
        v8 = sub_297E8B5FC(a1, Memory_Typed, sub_297F079B4, a1);
        if (v8 != 13)
        {
          *(a1 + 3424) = 0;
          *(a1 + 3752) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Failed to Open logical connection in loopback mode");
        v8 = 255;
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid input parameters!");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CreateLogicalConn");
  return v8;
}

uint64_t sub_297F079B4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v17 = 0;
  v16 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogicalConnOpen_CB");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid Nci handle passed!");
    a3 = 255;
    goto LABEL_26;
  }

  if (a3 == 81)
  {
    v7 = 0;
  }

  else
  {
    if (a3)
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Log conn in loop back mode creation failed!");
      v7 = 0;
    }

    else
    {
      *(a1 + 3296) = 1;
      *(a1 + 3297) = *a2;
      if (*(a1 + 3304))
      {
        v6 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        *(a1 + 3304) = 0;
      }

      v7 = a1 + 7008;
      if (!sub_297E8B9D0(a1, 1, 254, a1 + 7008) && !sub_297E8BD64(a1, a1 + 7008, &v17 + 1) && !sub_297E8BE80(a1, a1 + 7008, &v17) && !sub_297E8BB50(a1, a1 + 7008, &v16))
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_LogicalConnOpen_CB:Available number of credits and Max payload size updated in remote device structure");
        v15 = v16;
        sub_297F00CF4(a1 + 936, v16, SHIBYTE(v17));
        sub_297F00DF4(a1 + 936, v15, v17);
        a3 = 0;
        goto LABEL_16;
      }

      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Failed due to logical conn or unavailable memory");
      if (*(a1 + 4552))
      {
        v8 = *(a1 + 6524);
        phOsalNfc_FreeMemory();
        v7 = 0;
        *(a1 + 4552) = 0;
      }
    }

    a3 = 255;
  }

LABEL_16:
  v9 = *(a1 + 3424);
  if (v9)
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    v9(*(a1 + 3752), a3, v10);
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v13 = *(&unk_2A18BDDC0 + 14 * v12 + 4);
    if (v11)
    {
      break;
    }

    v11 = 1;
    v12 = 1;
  }

  while (v13 != a1);
  if (v13 == a1)
  {
    *(a1 + 3424) = 0;
    *(a1 + 3752) = 0;
  }

LABEL_26:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogicalConnOpen_CB");
  return a3;
}

uint64_t sub_297F07C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CloseLogicalConn");
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 3296) == 1)
      {
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
        v6 = sub_297E8B8A4(a1, 254, sub_297F07D30, a1);
        if (v6 != 13)
        {
          *(a1 + 3424) = 0;
          *(a1 + 3752) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "No Log conn in loop back mode exists");
        v6 = 255;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid input parameters!");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CloseLogicalConn");
  return v6;
}

uint64_t sub_297F07D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_LogicalConnClose_CB");
  if (a1)
  {
    if (a3 != 81)
    {
      if (a3)
      {
        a3 = 255;
      }

      else
      {
        *(a1 + 3296) = -256;
      }
    }

    v5 = *(a1 + 3424);
    if (v5)
    {
      v6 = *(a1 + 3752);
      *(a1 + 3424) = 0;
      *(a1 + 3752) = 0;
      v5(v6, a3, 0);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Invalid Nci handle passed!");
    a3 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_LogicalConnClose_CB");
  return a3;
}

uint64_t sub_297F07DF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SwpSelfTest");
  if (a1)
  {
    if (a3)
    {
      *(a1 + 3424) = a3;
      *(a1 + 3752) = a4;
      *(a1 + 3312) = a2;
      *(a1 + 3776) = off_2A1A90818;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90818);
      v8 = sub_297E5E830(a1, 0, 0);
      if (v8 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "SwpSelfTest: Swp self test sequence failed!");
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "SwpSelfTest: Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "SwpSelfTest: Stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SwpSelfTest");
  return v8;
}

uint64_t sub_297F07F1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PrbsTest");
  if (a1)
  {
    if (a3 && *a2 && *(a2 + 2) == 6)
    {
      v8 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        v10 = *(a1 + 6524);
        v11 = *a2;
        v12 = *(a2 + 2);
        phOsalNfc_MemCopy();
        *(a1 + 904) = *(a2 + 2);
        *(a1 + 3776) = off_2A1A90848;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90848);
        v13 = sub_297E5E830(a1, 0, 0);
        if (v13 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_PrbsTest: Prbs test sequence failed!");
          if (*(a1 + 896))
          {
            v14 = *(a1 + 6524);
            phOsalNfc_FreeMemory();
            *(a1 + 896) = 0;
          }

          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_PrbsTest: Memory allocation for payload buffer Failed!");
        v13 = 12;
      }
    }

    else
    {
      v13 = 1;
      sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_PrbsTest: Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_PrbsTest: Stack not initialized");
    v13 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PrbsTest");
  return v13;
}

uint64_t sub_297F080D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Reset");
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
    if (v8)
    {
      break;
    }

    v8 = 1;
    v9 = 1;
  }

  while (v10 != v7);
  if (v10 == v7)
  {
    if (a2 == 2)
    {
      sub_297E4E0B0(1, v7 + 6524, 3u, 4u, "Nci Reset - phNciNfc_NciReset_Mgt_Reset");
      sub_297E5B294(v7);
      v19 = *(v7 + 1568);
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(*(v7 + 1568), 0);
      v20 = *(v7 + 1568);
      phTmlNfc_ReadAbort();
      v11 = sub_297EBDFC0(v7);
      v7 = 0;
    }

    else
    {
      if (a2 == 1)
      {
        sub_297E4E0B0(1, v7 + 6524, 3u, 4u, "Nci Reset - phNciNfc_NciReset_DeInit_ResetConfig");
        sub_297E75D54(v7 + 936);
        sub_297E5B294(v7);
        v18 = *(v7 + 1568);
        phTmlNfc_WriteAbort();
        sub_297E5A3A8(*(v7 + 1568), 0);
        v14 = v7;
        v15 = a3;
        v16 = a4;
        v17 = 1;
      }

      else
      {
        if (a2)
        {
          v11 = 1;
          sub_297E4E0B0(1, v7 + 6524, 3u, 2u, "Invalid Nci Reset type");
          goto LABEL_7;
        }

        sub_297E4E0B0(1, v7 + 6524, 3u, 4u, "Nci Reset - phNciNfc_NciReset_DeInit_KeepConfig");
        sub_297E75D54(v7 + 936);
        sub_297E5B294(v7);
        v13 = *(v7 + 1568);
        phTmlNfc_WriteAbort();
        sub_297E5A3A8(*(v7 + 1568), 0);
        v14 = v7;
        v15 = a3;
        v16 = a4;
        v17 = 0;
      }

      v11 = sub_297F082EC(v14, v15, v16, v17);
    }
  }

  else
  {
LABEL_6:
    v11 = 1;
    sub_297E4E0B0(2, v7, 3u, 1u, "phNciNfc_Reset: Invalid NCINFC context!!");
  }

LABEL_7:
  sub_297E4DFAC(2, v7, 3u, 5u, "phNciNfc_Reset");
  return v11;
}

uint64_t sub_297F082EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_Release");
  v8 = 1;
  if (a1 && a2)
  {
    *(a1 + 3424) = a2;
    *(a1 + 3752) = a3;
    *(a1 + 3776) = off_2A1A90BB8;
    *(a1 + 3976) = 0;
    *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90BB8);
    *(a1 + 36) = a4;
    v8 = sub_297E5E830(a1, 0, 0);
    if (v8 == 13)
    {
      sub_297F090D8(a1);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Failed to Reset!");
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_Release");
  return v8;
}

uint64_t sub_297F083E0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_EnterNciRecoveryMode");
  if (a1)
  {
    sub_297E5B294(a1);
    v2 = *(a1 + 6524);
    v3 = *(a1 + 4696);
    phOsalNfc_Timer_Stop();
    *(a1 + 6512) = 0;
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_EnterNciRecoveryMode");
}

uint64_t sub_297F08468(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateAntennaConfigParams");
  if (a1 && a2)
  {
    v4 = *(a1 + 6524);
    phOsalNfc_MemCopy();
    if (*a2)
    {
      v6 = 0;
      *(a1 + 3728) = 8;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v6 = 255;
    }

    *(a1 + 3738) = v5;
  }

  else
  {
    sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_UpdateAntennaConfigParams: Failed!");
    v6 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateAntennaConfigParams");
  return v6;
}

uint64_t sub_297F08538(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_AntennaSelfTestCmd");
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
    if (v8)
    {
      break;
    }

    v8 = 1;
    v9 = 1;
  }

  while (v10 != a1);
  if (v10 == a1)
  {
    v11 = 1;
    if (a2)
    {
      if (a3)
      {
        v11 = sub_297F08468(a1, a2);
        if (!v11)
        {
          *(a1 + 3424) = a3;
          *(a1 + 3752) = a4;
          *(a1 + 3776) = off_2A1A93B60;
          *(a1 + 3976) = 0;
          *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93B60);
          v11 = sub_297E5E830(a1, 0, 0);
          if (v11 != 13)
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Antenna Self Test command failed!");
          }
        }
      }
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3u, 1u, "Stack not initialized");
    v11 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_AntennaSelfTestCmd");
  return v11;
}

uint64_t sub_297F08690(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SendRfOnOffCmd");
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
    if (v8)
    {
      break;
    }

    v8 = 1;
    v9 = 1;
  }

  while (v10 != a1);
  if (v10 == a1)
  {
    if (a3)
    {
      v13 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        if (a2 == 2 || a2 == 1)
        {
          v15 = 3;
        }

        else
        {
          v15 = 1;
        }

        *(a1 + 904) = v15;
        v16 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        *(a1 + 3776) = off_2A1A93B40;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93B40);
        v11 = sub_297E5E830(a1, 0, 0);
        if (v11 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Send RF On or Off command failed!");
          v17 = *(a1 + 6524);
          v18 = *(a1 + 896);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_SendRfOnOffCmd:Failed to allocate memory, insufficient resources");
        v11 = 12;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3u, 1u, "Stack not initialized");
    v11 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SendRfOnOffCmd");
  return v11;
}

uint64_t sub_297F0888C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TriggerRfOnNtf");
  if (a1)
  {
    if (a3)
    {
      v7 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        v9 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        *(a1 + 904) = 1;
        *(a1 + 3776) = off_2A1A93B20;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93B20);
        v10 = sub_297E5E830(a1, 0, 0);
        if (v10 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Trigger RF On command failed!");
          v11 = *(a1 + 6524);
          v12 = *(a1 + 896);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_TriggerRfOnNtf:Failed to allocate memory, insufficient resources");
        v10 = 12;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v10 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TriggerRfOnNtf");
  return v10;
}

uint64_t sub_297F08A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_EnablePropExtn");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A93BA0;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93BA0);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Extension Enable command failed!");
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_EnablePropExtn");
  return v6;
}

uint64_t sub_297F08B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_PresenceChk");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A93B80;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93B80);
      v6 = sub_297F00660(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Presence check (extension command) failed!");
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_PresenceChk");
  return v6;
}

uint64_t sub_297F08C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetConfigSignedRaw");
  if (a1)
  {
    if (a2 && a3)
    {
      v10 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        v12 = *(a1 + 6524);
        phOsalNfc_MemCopy();
        *(a1 + 3424) = a4;
        *(a1 + 3752) = a5;
        *(a1 + 3776) = off_2A1A93C00;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93C00);
        *(a1 + 904) = a3;
        v13 = sub_297E5DF3C(a1, 0, 0);
        if (v13 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "Set Config Raw Sequence failed!");
          v14 = *(a1 + 6524);
          v15 = *(a1 + 896);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_SetConfigSignedRaw:Failed to allocate memory, insufficient resources");
        v13 = 12;
      }
    }

    else
    {
      v13 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v13 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetConfigSignedRaw");
  return v13;
}

uint64_t sub_297F08DBC(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_AbortNciCtrPacket");
  if (a1)
  {
    sub_297E5B294(a1);
    sub_297E57090(a1);
    sub_297E76150(a1 + 936);
    *(a1 + 4776) = 0;
    sub_297E5A304(*(a1 + 6524), *(a1 + 4696));
    *(a1 + 6512) = 0;
    sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3u, 4u, "phNciNfc_AbortNciCtrPacket");
    v4 = *(a1 + 6524);
    phOsalNfc_SetMemory();
    *(a1 + 6521) = a2;
    if (*(a1 + 4640))
    {
      sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "De-allocating Send Request Payload Buffer...");
      v5 = *(a1 + 6524);
      v6 = *(a1 + 4640);
      phOsalNfc_FreeMemory();
      *(a1 + 4640) = 0;
      *(a1 + 4648) = 0;
    }

    sub_297F0522C(a1);
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_AbortNciCtrPacket");
}

uint64_t sub_297F08EEC(uint64_t a1, int a2)
{
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_AbortDataTransfer");
  if (a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 4);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a1);
    if (v6 == a1)
    {
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          v7 = a1;
          goto LABEL_24;
        }

        if (a2 == 3)
        {
          *(a1 + 6672) = 0;
          v7 = a1;
          goto LABEL_24;
        }
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          *(a1 + 6616) = 0;
          v7 = a1;
LABEL_24:
          sub_297E5B294(v7);
        }
      }

      else
      {
        sub_297E5B294(a1);
        *(a1 + 6483) = 0;
        *(a1 + 4616) = 0u;
        if (*(a1 + 3328) == 1)
        {
          *(a1 + 3328) = 0;
          if (*(a1 + 3336))
          {
            v8 = *(a1 + 6524);
            phOsalNfc_FreeMemory();
            *(a1 + 3336) = 0;
          }

          *(a1 + 3344) = 16711680;
        }

        v9 = *(a1 + 3352);
        if (v9 && v9 != 0xFFFFFFFFFFFFLL)
        {
          v10 = *(a1 + 6524);
          phOsalNfc_Timer_Stop();
          v11 = *(a1 + 6524);
          v12 = *(a1 + 3352);
          phOsalNfc_Timer_Delete();
          *(a1 + 3352) = 0xFFFFFFFFFFFFLL;
        }

        if (!sub_297E8BB50(a1, *(a1 + 4552), &v18))
        {
          LOBYTE(v15) = 1;
          v13 = v18;
          BYTE3(v15) = v18;
          v16 = a1;
          v17 = sub_297E76760;
          sub_297E75DFC(a1 + 936, &v15, 0);
          BYTE3(v15) = v13;
          v16 = a1;
          v17 = sub_297E70190;
          sub_297E75DFC(a1 + 936, &v15, 0);
        }

        *(a1 + 6672) = 0;
      }
    }
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_AbortDataTransfer");
}

uint64_t sub_297F090D8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phLibNfc_ClearSeEvents");
  if (a1)
  {
    *(a1 + 4712) = 0;
    *(a1 + 4744) = 0;
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phLibNfc_ClearSeEvents");
}

uint64_t sub_297F0914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TriggerAssertCb");
  if (a1)
  {
    if (*(a1 + 896))
    {
      v5 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
    }

    v6 = *(a1 + 3424);
    if (v6)
    {
      v6(*(a1 + 3752), a3, 0);
    }
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TriggerAssertCb");
  return a3;
}

uint64_t sub_297F091DC(uint64_t a1, char a2, int *a3, uint64_t a4, uint64_t a5)
{
  v19 = 0u;
  v20 = 0u;
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TriggerNfccAssert");
  if (a1)
  {
    if (a4)
    {
      v10 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        v12 = Memory_Typed;
        if (a3)
        {
          v13 = *a3;
          *Memory_Typed = 5;
          *(Memory_Typed + 1) = v13;
          sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "Configuring NFCC Assert Timeout for MFW");
          *(a1 + 896) = v12;
          *(a1 + 904) = 3;
          *(a1 + 3776) = off_2A1A90698;
          *(a1 + 3976) = 0;
          *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90698);
          v14 = sub_297E5E830(a1, 0, 0);
        }

        else
        {
          *Memory_Typed = a2;
          *(a1 + 896) = Memory_Typed;
          *(a1 + 904) = 1;
          v16 = *(a1 + 6524);
          phOsalNfc_SetMemory();
          *&v19 = 0xF00000001;
          DWORD2(v19) = 59;
          *&v20 = *(a1 + 896);
          DWORD2(v20) = *(a1 + 904);
          v14 = sub_297F00AB4(a1 + 936, &v19, sub_297F0914C, a1);
        }

        v15 = v14;
        if (v14 == 13)
        {
          *(a1 + 3424) = a4;
          *(a1 + 3752) = a5;
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_TriggerNfccAssert: Sequence failed!");
          if (*(a1 + 896))
          {
            v17 = *(a1 + 6524);
            phOsalNfc_FreeMemory();
          }

          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_TriggerNfccAssert: Insufficient Memory ");
        v15 = 12;
      }
    }

    else
    {
      v15 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Invalid input parameter!");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v15 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TriggerNfccAssert");
  return v15;
}

uint64_t sub_297F09440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetRfCalSignedData");
  if (a1)
  {
    if (a2 && *a2 && a3 && *(a2 + 8))
    {
      *(a1 + 3424) = a3;
      *(a1 + 3752) = a4;
      *(a1 + 3320) = a2;
      *(a1 + 3776) = off_2A1A90878;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90878);
      v8 = sub_297E5E830(a1, 0, 0);
      if (v8 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "SetRfCalSignedData: Sequence failed!");
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "SetRfCalSignedData: Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "SetRfCalSignedData: Stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetRfCalSignedData");
  return v8;
}

uint64_t sub_297F0957C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetRfCalSignedData");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "GetRfCalSignedData: Stack not initialized");
    v8 = 49;
    goto LABEL_10;
  }

  if (!a2 || !a3 || !*a2)
  {
    v9 = "GetRfCalSignedData: Invalid parameters";
    v8 = 1;
    goto LABEL_8;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
  *(a1 + 3320) = a2;
  *(a1 + 3776) = off_2A1A90898;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90898);
  v8 = sub_297E5E830(a1, 0, 0);
  if (v8 != 13)
  {
    v9 = "GetRfCalSignedData: Sequence failed!";
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v9);
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetRfCalSignedData");
  return v8;
}

uint64_t sub_297F0969C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetSwioPadVoltage");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_GetSwioPadVoltage: Stack not initialized");
    v8 = 49;
    goto LABEL_9;
  }

  if (!a3)
  {
    v9 = "phNciNfc_GetSwioPadVoltage: Invalid parameters";
    v8 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v9);
    goto LABEL_9;
  }

  *(a1 + 4881) = a2;
  *(a1 + 3776) = off_2A1A905B8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A905B8);
  v8 = sub_297E5E830(a1, 0, 0);
  if (v8 != 13)
  {
    v9 = "phNciNfc_GetSwioPadVoltage: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetSwioPadVoltage");
  return v8;
}

uint64_t sub_297F097B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetAteTrimVersion");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_GetAteTrimVersion: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_GetAteTrimVersion: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A905D8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A905D8);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_GetAteTrimVersion: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetAteTrimVersion");
  return v6;
}

uint64_t sub_297F098C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetEraseCounterInfo");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetEraseCounterInfo: Stack not initialized");
    v8 = 49;
    goto LABEL_9;
  }

  if (!a3)
  {
    v9 = "phNciNfc_GetEraseCounterInfo: Invalid parameters";
    v8 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v9);
    goto LABEL_9;
  }

  v7 = *(a1 + 6524);
  phOsalNfc_MemCopy();
  *(a1 + 3776) = off_2A1A905F8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A905F8);
  v8 = sub_297E5E830(a1, 0, 0);
  if (v8 != 13)
  {
    v9 = "phNciNfc_GetEraseCounterInfo: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetEraseCounterInfo");
  return v8;
}

uint64_t sub_297F099F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetProhibitTimerStatus");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetProhibitTimerStatus: Stack not initialized");
    v8 = 49;
    goto LABEL_9;
  }

  if (!a3)
  {
    v9 = "phNciNfc_GetProhibitTimerStatus: Invalid parameters";
    v8 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v9);
    goto LABEL_9;
  }

  *(a1 + 4880) = a2;
  *(a1 + 3776) = off_2A1A90618;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90618);
  v8 = sub_297E5E830(a1, 0, 0);
  if (v8 != 13)
  {
    v9 = "phNciNfc_GetProhibitTimerStatus: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
  *(a1 + 848) = a3;
  *(a1 + 856) = a4;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetProhibitTimerStatus");
  return v8;
}

uint64_t sub_297F09B18(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateCrcChkFlag");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6281) = a2;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "Stack not initialized");
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateCrcChkFlag");
  return v4;
}

uint64_t sub_297F09BB4(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateCrcAppendFlag");
  if (a1)
  {
    *(a1 + 6280) = a2;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateCrcAppendFlag");
  return 0;
}

uint64_t sub_297F09C20(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateCrcSkpFlag");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6282) = a2;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "UpdateCrcSkpFlag: Stack not initialized");
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateCrcSkpFlag");
  return v4;
}

uint64_t sub_297F09CBC(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_StoreReqCrcCfg");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6283) = a2;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "StoreReqCrcCfg: Stack not initialized");
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_StoreReqCrcCfg");
  return v4;
}

uint64_t sub_297F09D58(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_UpdateDtaStatusFlag");
  if (a1)
  {
    v4 = 0;
    *(a1 + 4777) = a2;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_UpdateDtaStatusFlag");
  return v4;
}

uint64_t sub_297F09DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetSmbLogInfo");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetSmbLogInfo: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_GetSmbLogInfo: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A90658;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90658);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_GetSmbLogInfo: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetSmbLogInfo");
  return v6;
}

uint64_t sub_297F09EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetLpcdCount");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetLpcdCount: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_GetLpcdCount: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A906B8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A906B8);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_GetLpcdCount: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetLpcdCount");
  return v6;
}

uint64_t sub_297F09FF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetGenericDbgLogInfo");
  if (a1)
  {
    if (a3)
    {
      v8 = *(a1 + 6524);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *Memory_Typed = a2;
        *(a1 + 896) = Memory_Typed;
        *(a1 + 904) = 1;
        *(a1 + 6464) = 0;
        *(a1 + 3776) = off_2A1A90678;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90678);
        v10 = sub_297E5E830(a1, 0, 0);
        if (v10 == 13)
        {
          *(a1 + 3424) = a3;
          *(a1 + 3752) = a4;
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GetGenericDbgLogInfo: Sequence failed!");
          v11 = *(a1 + 6524);
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_GetGenericDbgLogInfo: Insufficient Memory ");
        v10 = 12;
      }
    }

    else
    {
      v10 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_GetGenericDbgLogInfo: Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetGenericDbgLogInfo: Stack not initialized");
    v10 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetGenericDbgLogInfo");
  return v10;
}

uint64_t sub_297F0A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetFwType");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_GetFwType: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_GetFwType: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A906D8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A906D8);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_GetFwType: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetFwType");
  return v6;
}

uint64_t sub_297F0A2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_DetectTagRemoval");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 2u, "phNciNfc_DetectTagRemoval: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_DetectTagRemoval: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3u, 2u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A906F8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A906F8);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_DetectTagRemoval: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_DetectTagRemoval");
  return v6;
}

uint64_t sub_297F0A3C0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetNfccParams");
  if (a1)
  {
    if (a2 && a3)
    {
      *(a1 + 3432) = a2;
      v8 = *a2;
      if (*a2 == 3)
      {
        v9 = off_2A1A90718;
      }

      else if (v8 == 8)
      {
        v9 = off_2A1A90738;
      }

      else
      {
        if (v8 != 5)
        {
          v10 = 1;
          sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_SetNfccParams: Invalid eNfccParam");
          *(a1 + 3432) = 0;
          goto LABEL_15;
        }

        v9 = off_2A1A90778;
      }

      *(a1 + 3776) = v9;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, v9);
      v10 = sub_297E5E830(a1, 0, 0);
      if (v10 == 13)
      {
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        goto LABEL_16;
      }

LABEL_15:
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_SetNfccParams: Sequence failed!");
      goto LABEL_16;
    }

    v10 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_SetNfccParams: Invalid parameters");
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_SetNfccParams: Stack not initialized");
    v10 = 49;
  }

LABEL_16:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetNfccParams");
  return v10;
}

uint64_t sub_297F0A54C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetNfccParams");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_GetNfccParams: Stack not initialized");
    v8 = 49;
    goto LABEL_11;
  }

  if (!a3)
  {
    v9 = "phNciNfc_GetNfccParams: Invalid parameters";
    v8 = 1;
LABEL_10:
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, v9);
    goto LABEL_11;
  }

  if (a2 != 4)
  {
    v8 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_GetNfccParams: Invalid eGetNfccParams");
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A90758;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90758);
  v8 = sub_297E5E830(a1, 0, 0);
  if (v8 != 13)
  {
LABEL_9:
    v9 = "phNciNfc_GetNfccParams: Sequence failed!";
    goto LABEL_10;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
LABEL_11:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetNfccParams");
  return v8;
}

uint64_t sub_297F0A68C(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_RawCtrlMsgTransceive");
  if (a1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(&unk_2A18BDDC0 + 14 * v11 + 4);
      if (v10)
      {
        break;
      }

      v10 = 1;
      v11 = 1;
    }

    while (v12 != a1);
    if (v12 == a1)
    {
      if (a4)
      {
        if (*(a4 + 2))
        {
          v15 = *(a1 + 6524);
          Memory_Typed = phOsalNfc_GetMemory_Typed();
          if (Memory_Typed)
          {
            v17 = *(a4 + 2);
          }

          else
          {
            sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "Memory not available\n");
            if (*(a4 + 2))
            {
              v13 = 12;
              goto LABEL_18;
            }
          }
        }

        else
        {
          Memory_Typed = 0;
        }

        *(a1 + 7016) = a2;
        v18 = *(a1 + 6524);
        v19 = *a4;
        phOsalNfc_MemCopy();
        *(a1 + 896) = Memory_Typed;
        *(a1 + 904) = *(a4 + 2);
        *(a1 + 3776) = off_2A1A90798;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90798);
        v13 = sub_297E5E830(a1, 0, 0);
        if (v13 == 13)
        {
          *(a1 + 3424) = a3;
          *(a1 + 3752) = a5;
          goto LABEL_7;
        }
      }

      else
      {
        v13 = 1;
      }

LABEL_18:
      sub_297E4E0B0(1, a1 + 6524, 3u, 2u, "phNciNfc_RawCtrlMsgTransceive: Sequence failed!");
      v20 = *(a1 + 6524);
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      goto LABEL_7;
    }
  }

  sub_297E4E0B0(2, a1, 3u, 1u, "phNciNfc_RawCtrlMsgTransceive: Stack not initialized");
  v13 = 49;
LABEL_7:
  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_RawCtrlMsgTransceive");
  return v13;
}

uint64_t sub_297F0A87C(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(0, &v5, 3u, 5u, "phNciNfc_ChkFelicaTag");
  if (a2)
  {
    v3 = 255;
    if (*(a2 + 20) == 2)
    {
      if (*(a2 + 16) == 3)
      {
        v3 = 0;
      }

      else
      {
        v3 = 255;
      }
    }
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(0, &v5, 3u, 5u, "phNciNfc_ChkFelicaTag");
  return v3;
}

uint64_t sub_297F0A90C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetRfErrorStatus");
  if (a1)
  {
    v2 = *(a1 + 6618);
    *(a1 + 6618) = 0;
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetRfErrorStatus");
  return v2;
}

uint64_t sub_297F0A97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CoreReset");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 36) = 0;
      *(a1 + 3776) = off_2A1A90AF8;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90AF8);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_CoreReset:gphNciNfc_CoreResetSequence failed");
        *(a1 + 896) = 0;
        *(a1 + 904) = 0;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_CoreReset:Invalid parameter passed");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_CoreReset:Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CoreReset");
  return v6;
}

uint64_t sub_297F0AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_CoreInit");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 40) = 256;
      *(a1 + 3776) = off_2A1A90B18;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B18);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3u, 4u, "phNciNfc_CoreInit:gphNciNfc_CoreResetSequence failed");
        *(a1 + 896) = 0;
        *(a1 + 904) = 0;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3u, 1u, "phNciNfc_CoreInit:Invalid parameter passed");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3u, 1u, "phNciNfc_CoreInit:Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_CoreInit");
  return v6;
}

uint64_t sub_297F0ABE8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetDnldCoreContext");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6624) = a2;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetDnldCoreContext");
  return v4;
}

uint64_t sub_297F0AC64(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SetDnldEseCoreContext");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6632) = a2;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SetDnldEseCoreContext");
  return v4;
}

uint64_t sub_297F0ACE0(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SeDataPktDelayCfg");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 4);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 == a1)
  {
    if (*(a1 + 4828) == 1)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 6656) = v8;
    sub_297E50EBC(1, a1 + 6524, 3u, 4u, "phNciNfc_SeDataPktDelayCfg: pNciCtx->bSeTxDelay");
    v7 = 0;
  }

  else
  {
LABEL_6:
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SeDataPktDelayCfg");
  return v7;
}

uint64_t sub_297F0ADBC(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_SeEUiccSelectCfg");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 4);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 == a1)
  {
    *(a1 + 6657) = a2;
    sub_297E50EBC(1, a1 + 6524, 3u, 4u, "phNciNfc_SeEUiccSelectCfg: pNciCtx->bSeEUiccCfg");
    v7 = 0;
  }

  else
  {
LABEL_6:
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_SeEUiccSelectCfg");
  return v7;
}

uint64_t sub_297F0AE90(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_GetSeCreditToStatus");
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 4);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != a1);
  if (v4 == a1)
  {
    v5 = *(a1 + 6660);
  }

  else
  {
LABEL_6:
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_GetSeCreditToStatus");
  return v5;
}

uint64_t sub_297F0AF34(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciNfc_TagRemNtfClearRemDevInfo");
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(&unk_2A18BDDC0 + 14 * v3 + 4);
      if (v2)
      {
        break;
      }

      v2 = 1;
      v3 = 1;
    }

    while (v4 != a1);
    if (v4 == a1)
    {
      *(a1 + 172) = 3;
      sub_297E5B554(a1);
      sub_297F00E88(a1 + 936);
      sub_297E56EF8(a1 + 936, 0);
    }
  }

  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciNfc_TagRemNtfClearRemDevInfo");
}

uint64_t sub_297F0AFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 8u, 5u, "phFriNfc_TopazDynamicMap_ChkNdef");
  sub_297E57170(v12, &v11);
  v5 = 1;
  if (a3)
  {
    if (a2)
    {
      v6 = v11;
      if (v11)
      {
        *(v11 + 8) = a2;
        *(v6 + 40) = a3;
        *(v6 + 540) = 1;
        *(v6 + 547) = 1;
        *(v6 + 644) = 0;
        *(v6 + 656) = 0;
        *(v6 + 660) = 0;
        *(v6 + 918) = 0;
        *(v6 + 545) = 3;
        *(v6 + 642) = 0;
        v7 = *(v6 + 2720);
        phOsalNfc_SetMemory();
        v8 = *(v11 + 2720);
        phOsalNfc_SetMemory();
        v9 = v11;
        *(v11 + 544) = 5;
        *v9 = 1;
        v9[646] = 9;
        v9[266] = 16;
        v5 = sub_297F0B114(v9);
      }
    }
  }

  sub_297E4DFAC(0, &v12, 8u, 5u, "phFriNfc_TopazDynamicMap_ChkNdef");
  return v5;
}

uint64_t sub_297F0B114(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_NxpRead");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297F0BAA0;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 0;
  v2 = *(a1 + 266);
  if (v2 == 120)
  {
    v9 = *(a1 + 2720);
    phOsalNfc_MemCopy();
    v4 = 7;
    if (*(a1 + 266) == 120)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v2 == 16)
    {
      v3 = 16 * *(a1 + 660);
    }

    else
    {
      if (v2 != 2)
      {
        v8 = 245;
        goto LABEL_12;
      }

      v3 = *(a1 + 642);
    }

    *(a1 + 267) = v3;
    v4 = 2;
  }

  v5 = *(a1 + 2720);
  phOsalNfc_MemCopy();
  v6 = *(a1 + 2720);
  v7 = *(a1 + 224) + 8;
  phOsalNfc_MemCopy();
  v4 += 12;
LABEL_8:
  *(a1 + 526) = v4;
  v8 = sub_297E98D38(a1, sub_297F0DC00);
LABEL_12:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_NxpRead");
  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_297F0B298(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v39[33] = *MEMORY[0x29EDCA608];
  v38 = 0;
  v39[0] = a1;
  sub_297E4E1B4(0, v39, 8u, 5u, "phFriNfc_TopazDynamicMap_RdNdef");
  sub_297E57170(v39[0], &v38);
  v11 = 1;
  if (a4 <= 1)
  {
    if (a3)
    {
      if (a2)
      {
        if (a5)
        {
          v12 = v38;
          if (v38)
          {
            if (a4 == 1 || *(v38 + 540) != 3)
            {
              *(v38 + 16) = a5;
              *(v12 + 40) = a6;
              *(v12 + 547) = 2;
              *(v12 + 240) = a2;
              *(v12 + 248) = *a3;
              *(v12 + 552) = a3;
              *a3 = 0;
              *(v12 + 252) = 0;
              *(v12 + 560) = a4;
              *(v12 + 644) = 1;
              *(v12 + 647) = 0;
              *(v12 + 540) = 2;
              if (a4 || *(v12 + 645) != 1)
              {
                if (*(v12 + 545) && *(v12 + 922))
                {
                  if (a4 == 1)
                  {
                    *(v12 + 560) = 1;
                    *(v12 + 656) = 0;
                    *(v12 + 926) = 0;
                    *(v12 + 917) = 0;
                    *(v12 + 645) = 0;
                    *(v12 + 642) = 0;
                    *(v12 + 921) = 0;
                    v13 = sub_297F0B5FC(v12) >> 7;
                    v14 = v38;
                    *(v38 + 660) = v13;
                    v15 = v14[65] == 0;
                    if (v14[65])
                    {
                      v16 = 1;
                    }

                    else
                    {
                      v16 = 4;
                    }

                    *v14 = v16;
                    v14[645] = 0;
                    if (v15)
                    {
                      v17 = 120;
                    }

                    else
                    {
                      v17 = 16;
                    }

                    v14[266] = v17;
                    v11 = sub_297F0B114(v14);
                  }

                  else
                  {
                    *v12 = 1;
                    sub_297E4E1B4(2, v12, 8u, 5u, "phFriNfc_Tpz_H_RemainingReadDataCopy");
                    v18 = *(v12 + 917);
                    v19 = *(v12 + 252);
                    if (*(v12 + 917))
                    {
                      v20 = *(v12 + 248);
                      if (v20 >= v19)
                      {
                        v21 = v20 - v19;
                      }

                      else
                      {
                        v21 = 0;
                      }

                      if (v21 >= v18)
                      {
                        v29 = *(v12 + 2720);
                        v30 = *(v12 + 240);
                        v31 = *(v12 + 917);
                        phOsalNfc_MemCopy();
                      }

                      else
                      {
                        if (v20 >= v19)
                        {
                          v22 = v20 - v19;
                        }

                        else
                        {
                          v22 = 0;
                        }

                        v23 = *(v12 + 2720);
                        v24 = *(v12 + 240);
                        phOsalNfc_MemCopy();
                        v25 = *(v12 + 2720);
                        phOsalNfc_SetMemory();
                        v26 = *(v12 + 2720);
                        phOsalNfc_MemCopy();
                        v27 = *(v12 + 2720);
                        phOsalNfc_MemCopy();
                        LOWORD(v18) = v22;
                      }

                      LOWORD(v19) = *(v12 + 252) + v18;
                      *(v12 + 252) = v19;
                      v32 = *(v12 + 917);
                      if (v18 <= v32)
                      {
                        v33 = v32 - v18;
                      }

                      else
                      {
                        v33 = 0;
                      }

                      *(v12 + 917) = v33;
                      v34 = *(v12 + 926);
                      v35 = v34 >= v18;
                      v28 = v34 - v18;
                      if (!v35)
                      {
                        v28 = 0;
                      }

                      *(v12 + 926) = v28;
                    }

                    else
                    {
                      v28 = *(v12 + 926);
                    }

                    if (v28)
                    {
                      if (*(v12 + 248) == v19)
                      {
                        v11 = 0;
                        **(v12 + 552) = v19;
                      }

                      else
                      {
                        ++*(v12 + 660);
                        *(v12 + 266) = 16;
                        v11 = sub_297F0B114(v12);
                      }
                    }

                    else
                    {
                      v11 = 0;
                      **(v12 + 552) = v19;
                      *(v12 + 917) = 0;
                      *(v12 + 645) = 1;
                    }

                    sub_297E4DFAC(2, v12, 8u, 5u, "phFriNfc_Tpz_H_RemainingReadDataCopy");
                  }
                }

                else
                {
                  v11 = 20;
                }
              }

              else
              {
                v11 = 26;
              }
            }

            else
            {
              v11 = 245;
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, v39, 8u, 5u, "phFriNfc_TopazDynamicMap_RdNdef");
  v36 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_297F0B5FC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_GetNDEFValueFieldAddrForRead");
  v2 = 0;
  v3 = *(a1 + 918);
  do
  {
    if ((v3 + 1) == 104)
    {
      v4 = 128;
    }

    else
    {
      v4 = v3 + 1;
    }

    v3 = v4 + sub_297F0DC98(a1, v4);
  }

  while (*(a1 + 922) >= 0xFFu && v2++ < 2);
  if ((v3 + 1) == 104)
  {
    v6 = 128;
  }

  else
  {
    v6 = v3 + 1;
  }

  v7 = sub_297F0DC98(a1, v6) + v6;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_GetNDEFValueFieldAddrForRead");
  return v7;
}

uint64_t sub_297F0B6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8u, 5u, "phFriNfc_TopazDynamicMap_ConvertToReadOnly");
  sub_297E57170(v10, &v9);
  v5 = 1;
  if (a2)
  {
    v6 = v9;
    if (v9)
    {
      *(v9 + 32) = a2;
      *(v6 + 40) = a3;
      *(v6 + 547) = 6;
      *v6 = 17;
      *(v6 + 642) = 769;
      *(v6 + 266) = 83;
      if (sub_297E8EA44(*(v6 + 2712)) == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = 15;
      }

      byte_2A13A5C90 = v7;
      v5 = sub_297F0B7B8(v9, &byte_2A13A5C90, 1);
      if (v5 == 13)
      {
        *(v9 + 928) = 0;
      }
    }
  }

  sub_297E4DFAC(0, &v10, 8u, 5u, "phFriNfc_TopazDynamicMap_ConvertToReadOnly");
  return v5;
}

uint64_t sub_297F0B7B8(uint64_t a1, uint64_t a2, char a3)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_NxpWrite");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297F0BAA0;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 0;
  v5 = *(a1 + 266);
  if (v5 == 84)
  {
    v6 = *(a1 + 642);
  }

  else
  {
    if (v5 != 83)
    {
      v10 = 245;
      goto LABEL_7;
    }

    v6 = *(a1 + 643) | (8 * *(a1 + 642));
  }

  *(a1 + 267) = v6;
  v7 = *(a1 + 2720);
  phOsalNfc_MemCopy();
  v8 = *(a1 + 2720);
  v9 = *(a1 + 224);
  phOsalNfc_MemCopy();
  *(a1 + 526) = (a3 + 6);
  v10 = sub_297E98D38(a1, sub_297F0DC00);
LABEL_7:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_NxpWrite");
  return v10;
}

uint64_t sub_297F0B8E0(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v19 = a1;
  sub_297E4E1B4(0, &v19, 8u, 5u, "phFriNfc_TopazDynamicMap_WrNdef");
  sub_297E57170(v19, &v18);
  v11 = 1;
  if (a3 && a5 && v18)
  {
    v12 = *(v18 + 2720);
    phOsalNfc_MemCopy();
    v13 = v18;
    *(v18 + 2740) = 3;
    *(v13 + 24) = a5;
    *(v13 + 40) = a6;
    *(v13 + 547) = 3;
    *(v13 + 252) = 0;
    **(v13 + 528) = 0;
    v14 = v18;
    v15 = v18 + 2736;
    if (*a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = (v18 + 2740);
    }

    if (*a3)
    {
      v15 = a2;
    }

    *(v18 + 240) = v15;
    *(v14 + 248) = *v16;
    *(v14 + 252) = 0;
    *(v14 + 256) = v16;
    *v16 = 0;
    *(v14 + 644) = 2;
    *(v14 + 560) = a4;
    *(v14 + 540) = 3;
    if (*(v14 + 545) == 1)
    {
      v11 = 21;
    }

    else if (a4)
    {
      if (*(v14 + 918))
      {
        if (a4 == 1)
        {
          *(v14 + 560) = 1;
          *(v14 + 656) = 0;
          *v14 = 1;
          *(v14 + 645) = 0;
          *(v14 + 660) = 0;
          *(v14 + 642) = 1;
          *(v14 + 921) = 0;
          *(v14 + 266) = 2;
          v11 = sub_297F0B114(v14);
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 22;
      }
    }

    else if (*(v14 + 645) == 1)
    {
      v11 = 26;
    }

    else if (*(v14 + 918))
    {
      v11 = 0;
    }

    else
    {
      v11 = 22;
    }
  }

  sub_297E4DFAC(0, &v19, 8u, 5u, "phFriNfc_TopazDynamicMap_WrNdef");
  return v11;
}

uint64_t sub_297F0BAA0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v176[1] = *MEMORY[0x29EDCA608];
  v175 = a1;
  sub_297E4E1B4(0, &v175, 8u, 5u, "phFriNfc_TopazDynamicMap_Process");
  if (a3)
  {
    goto LABEL_470;
  }

  v5 = *a2;
  a3 = 245;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ChkReadID");
      if (*(a2 + 132) == 6)
      {
        if (a2[266] == 18)
        {
          v12 = *(a2 + 680);
          v13 = *(a2 + 28);
          if (phOsalNfc_MemCompare())
          {
            a3 = 22;
          }

          else
          {
            *a2 = 1;
            a2[266] = 16;
            a3 = sub_297F0B114(a2);
          }
        }

        else
        {
          a3 = 0;
        }
      }

      else
      {
        a3 = 27;
      }

      v54 = "phFriNfc_Tpz_H_ChkReadID";
      goto LABEL_469;
    }

    if (v5 != 16)
    {
      if (v5 != 17)
      {
        goto LABEL_471;
      }

      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProcessReadOnly");
      v6 = a2[928];
      a3 = 27;
      if (v6 <= 2)
      {
        if (!a2[928])
        {
          if (*(a2 + 132) == 1)
          {
            a3 = 0;
            LOBYTE(v6) = 0;
            a2[642] = a2[148];
          }

          else
          {
            LOBYTE(v6) = 0;
          }

          goto LABEL_304;
        }

        if (v6 == 1)
        {
          if (*(a2 + 132) == 8)
          {
            v176[0] = 0;
            sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_UpdateAndWriteLockBits");
            v42 = *(a2 + 680);
            phOsalNfc_MemCopy();
            LOBYTE(v43) = a2[140];
            if (*(a2 + 74) == a2[642])
            {
              v44 = *(a2 + 75);
              LODWORD(v45) = v44;
              if (v44 > 8u || (v46 = 64 - 8 * (v44 & 0xF), v46 > 0xFF))
              {
                v46 = 0;
              }
            }

            else
            {
              LODWORD(v45) = 0;
              LOBYTE(v43) = v43 - a2[929];
              v46 = 64;
            }

            if (v46 >= v43)
            {
              if ((v43 & 7) != 0)
              {
                LOBYTE(v176[0]) = LOBYTE(v176[0]) & (255 << (v43 & 7)) | 1;
              }

              else if (v43 && v45 <= 7)
              {
                LOBYTE(v165) = 0;
                v45 = v45;
                do
                {
                  *(v176 + v45) = -1;
                  if (v45 > 6)
                  {
                    break;
                  }

                  v165 = (v165 + 1);
                  ++v45;
                }

                while (v165 < v43 >> 3);
              }
            }

            else
            {
              v43 = v46 >> 3;
              if (v45 <= 7 && v46 >= 8)
              {
                LOBYTE(v121) = 0;
                v45 = v45;
                do
                {
                  *(v176 + v45) = -1;
                  if (v45 > 6)
                  {
                    break;
                  }

                  v121 = (v121 + 1);
                  ++v45;
                }

                while (v121 < v43);
              }
            }

            a2[929] = v43;
            a2[266] = 84;
            a3 = sub_297F0B7B8(a2, v176, 8);
            sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_UpdateAndWriteLockBits");
            if (a3 == 13)
            {
              LOBYTE(v6) = 2;
            }

            else
            {
              LOBYTE(v6) = 1;
            }

            goto LABEL_304;
          }

          goto LABEL_290;
        }

        if (v6 == 2)
        {
          if (*(a2 + 132) != 8)
          {
            LOBYTE(v6) = 2;
            goto LABEL_304;
          }

          ++a2[642];
          if (a2[140] == a2[929])
          {
            *(a2 + 321) = 14;
            a2[266] = 2;
            a3 = sub_297F0B114(a2);
            LOBYTE(v6) = 3;
            goto LABEL_304;
          }

          a2[266] = 2;
          a3 = sub_297F0B114(a2);
LABEL_290:
          LOBYTE(v6) = 1;
        }

LABEL_304:
        a2[928] = v6;
        v54 = "phFriNfc_Tpz_H_ProcessReadOnly";
        goto LABEL_469;
      }

      if (v6 == 3)
      {
        if (*(a2 + 132) != 8)
        {
          goto LABEL_304;
        }

        v40 = *(a2 + 680);
        v41 = a2[643];
        phOsalNfc_MemCopy();
        LOBYTE(v176[0]) = -1;
      }

      else
      {
        if (v6 != 4)
        {
          if (v6 == 5)
          {
            if (*(a2 + 132) == 1)
            {
              a3 = 0;
            }

            else
            {
              a3 = 27;
            }
          }

          goto LABEL_304;
        }

        if (*(a2 + 132) != 1)
        {
          goto LABEL_304;
        }

        LOBYTE(v176[0]) = byte_2A18BE726 | 0x7F;
        *(a2 + 321) = 270;
      }

      a2[266] = 83;
      a3 = sub_297F0B7B8(a2, v176, 1);
      if (a3 == 13)
      {
        LOBYTE(v6) = v6 + 1;
      }

      goto LABEL_304;
    }

    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProRdForWrResp");
    *a2 = 2;
    if (*(a2 + 132) != 8)
    {
      a3 = 27;
      goto LABEL_439;
    }

    v14 = a2[921];
    if (v14 > 9)
    {
LABEL_133:
      if (!a2[921])
      {
        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_UpdateNdefTypeField");
        v51 = *(a2 + 680);
        phOsalNfc_MemCopy();
        *(v176 + a2[643]) = 3;
        *a2 = 2;
        a2[266] = 84;
        a3 = sub_297F0B7B8(a2, v176, 8);
        v52 = a2;
        v53 = "phFriNfc_Tpz_H_UpdateNdefTypeField";
LABEL_438:
        sub_297E4DFAC(2, v52, 8u, 5u, v53);
        goto LABEL_439;
      }

      a3 = 0;
LABEL_439:
      v54 = "phFriNfc_Tpz_H_ProRdForWrResp";
      goto LABEL_469;
    }

    if (((1 << v14) & 0x1C) == 0)
    {
      if (((1 << v14) & 0x380) != 0)
      {
        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_UpdateLenFieldValuesAfterRead");
        if (*(a2 + 62) >= *(a2 + 462))
        {
          v15 = *(a2 + 462);
        }

        else
        {
          v15 = *(a2 + 62);
        }

        *a2 = 2;
        v16 = *(a2 + 680);
        phOsalNfc_MemCopy();
        v17 = a2[921];
        if (v17 == 7)
        {
          v18 = 0;
          word_2A18BE730 = 0;
        }

        else
        {
          v18 = word_2A18BE730;
        }

        v59 = a2[643];
        v60 = v18 + v59;
        if ((v18 + v59) <= 7u)
        {
          while (1)
          {
            word_2A18BE730 = 0;
            v61 = sub_297F0DC98(a2, 8 * a2[642] + v59);
            word_2A18BE730 = v61;
            if (!v61)
            {
              break;
            }

            if (v61 >= (8 - v60))
            {
              word_2A18BE730 = v61 - (8 - v60);
              goto LABEL_402;
            }

            LOBYTE(v59) = a2[643] + v61;
            a2[643] = v59;
            v60 += v61;
            word_2A18BE730 = 0;
            v62 = 1;
LABEL_180:
            if (v60 > 7u || (v62 & 1) == 0)
            {
              goto LABEL_402;
            }
          }

          if (v17 != 9)
          {
            if (v17 == 8)
            {
              v63 = a2[253];
              v62 = 1;
              goto LABEL_170;
            }

            if (v17 != 7)
            {
              v62 = 1;
LABEL_171:
              if (++v60 != 8 && v17 != 9 && v15 > 0xFEu)
              {
                ++v17;
              }

              LOBYTE(v59) = a2[643] + 1;
              a2[643] = v59;
              goto LABEL_180;
            }

            if (v15 > 0xFEu)
            {
              v62 = 1;
              v63 = -1;
              goto LABEL_170;
            }
          }

          v62 = 0;
          v63 = a2[252];
LABEL_170:
          *(v176 + v60) = v63;
          goto LABEL_171;
        }

LABEL_402:
        a2[921] = v17;
        a2[266] = 84;
        a3 = sub_297F0B7B8(a2, v176, 8);
        v53 = "phFriNfc_Tpz_H_UpdateLenFieldValuesAfterRead";
        goto LABEL_437;
      }

      if (((1 << v14) & 0x60) != 0)
      {
        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_CopyReadDataAndWrite");
        if (*(a2 + 62) >= *(a2 + 462))
        {
          v47 = *(a2 + 462);
        }

        else
        {
          v47 = *(a2 + 62);
        }

        v48 = *(a2 + 680);
        phOsalNfc_MemCopy();
        v49 = a2[642];
        if (v49 == sub_297F0D8A0(a2, v47) >> 3)
        {
          v50 = 0;
          word_2A18BE72E = 0;
        }

        else
        {
          v50 = word_2A18BE72E;
          if (word_2A18BE72E && word_2A18BE72E >= 8u)
          {
            word_2A18BE72E -= 8;
            v68 = (a2 + 252);
            LOWORD(v50) = v50 - 8;
LABEL_192:
            if (*v68 == v47 || !v50)
            {
LABEL_435:
              v69 = 5;
            }

            else
            {
              v69 = 6;
            }

            a2[921] = v69;
            a2[266] = 84;
            a3 = sub_297F0B7B8(a2, v176, 8);
            v53 = "phFriNfc_Tpz_H_CopyReadDataAndWrite";
            goto LABEL_437;
          }
        }

        v68 = (a2 + 252);
        if (*(a2 + 126) != v47)
        {
          v116 = a2[643];
          while (1)
          {
            word_2A18BE72E = 0;
            v117 = sub_297F0DC98(a2, 8 * a2[642] + v116);
            word_2A18BE72E = v117;
            if (v117)
            {
              v118 = 8 - v50;
              if (v117 >= (8 - v50))
              {
                LOWORD(v50) = v117 - v118;
                word_2A18BE72E = v117 - v118;
                a2[643] = 0;
                goto LABEL_192;
              }

              v116 = a2[643] + v117;
              a2[643] = v116;
              v50 += v117;
              word_2A18BE72E = 0;
              v119 = *(a2 + 126);
            }

            else
            {
              v120 = *(a2 + 126);
              *(v176 + v50++) = *(*(a2 + 30) + v120);
              v119 = v120 + 1;
              *(a2 + 126) = v119;
              v116 = a2[643] + 1;
              a2[643] = v116;
            }

            if (v50 >= 8u || v47 == v119)
            {
              goto LABEL_435;
            }
          }
        }

        goto LABEL_192;
      }

      goto LABEL_133;
    }

    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_UpdateLenFieldZeroAfterRead");
    if (*(a2 + 62) >= *(a2 + 462))
    {
      v30 = *(a2 + 462);
    }

    else
    {
      v30 = *(a2 + 62);
    }

    *a2 = 2;
    v31 = *(a2 + 680);
    phOsalNfc_MemCopy();
    v32 = a2[921];
    if (v32 == 2)
    {
      word_2A18BE732 = 0;
    }

    v33 = *(a2 + 126);
    v34 = a2[643];
    if (a2[643])
    {
      a2[643] = 0;
    }

    v35 = word_2A18BE732 + v34;
    if ((word_2A18BE732 + v34) > 7u)
    {
      v66 = v33;
LABEL_427:
      if (v66 != v30)
      {
        if (v32 == 5 && v33 == v66)
        {
          if (v30 >= 0xFFu)
          {
            LOBYTE(v32) = 4;
          }

          else
          {
            LOBYTE(v32) = 2;
          }
        }

        goto LABEL_434;
      }
    }

    else
    {
      v36 = 0;
      while (*(a2 + 126) != v30)
      {
        word_2A18BE732 = 0;
        v37 = sub_297F0DC98(a2, 8 * a2[642] + v36);
        word_2A18BE732 = v37;
        if (v37)
        {
          if (v37 >= (8 - v35))
          {
            word_2A18BE732 = v37 - (8 - v35);
LABEL_426:
            v66 = *(a2 + 126);
            goto LABEL_427;
          }

          v36 = a2[643] + v37;
          a2[643] = v36;
          v35 += v37;
          word_2A18BE732 = 0;
        }

        else
        {
          if ((v32 - 3) >= 2)
          {
            if (v32 == 2)
            {
              *(v176 + v35++) = 0;
              if (v35 == 8)
              {
                v38 = 2;
              }

              else
              {
                v38 = 3;
              }

              if (v30 >= 0xFFu)
              {
                v32 = v38;
              }

              else
              {
                v32 = 5;
              }
            }

            else
            {
              v39 = *(a2 + 126);
              *(v176 + v35++) = *(*(a2 + 30) + v39);
              *(a2 + 126) = v39 + 1;
            }
          }

          else
          {
            *(v176 + v35++) = 0;
            if (v35 != 8)
            {
              ++v32;
            }
          }

          v36 = a2[643] + 1;
          a2[643] = v36;
        }

        if (v35 >= 8u)
        {
          goto LABEL_426;
        }
      }
    }

    LOBYTE(v32) = 5;
LABEL_434:
    a2[921] = v32;
    a2[643] = 0;
    a2[266] = 84;
    a3 = sub_297F0B7B8(a2, v176, 8);
    v53 = "phFriNfc_Tpz_H_UpdateLenFieldZeroAfterRead";
LABEL_437:
    v52 = a2;
    goto LABEL_438;
  }

  if (v5 != 1)
  {
    if (v5 != 2)
    {
      goto LABEL_471;
    }

    LOBYTE(v176[0]) = 0;
    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProWrResp");
    a3 = 0;
    v7 = a2[921];
    v8 = *(a2 + 62);
    if (v8 >= *(a2 + 462))
    {
      LOWORD(v8) = *(a2 + 462);
    }

    if (a2[921] > 4u)
    {
      if (a2[921] <= 7u)
      {
        if (v7 != 5)
        {
          if (v7 == 6)
          {
            if (*(a2 + 132) == 8)
            {
              a2[643] = 0;
              v55 = a2[642];
              if (v55 == 12)
              {
                v56 = 16;
              }

              else
              {
                v56 = v55 + 1;
              }

              a2[642] = v56;
              goto LABEL_84;
            }
          }

          else if (*(a2 + 132) == 8)
          {
            if (v8 > 0xFEu)
            {
              a2[643] = 0;
              v9 = a2[642];
              if (v9 == 12)
              {
                v10 = 16;
              }

              else
              {
                v10 = v9 + 1;
              }

              a2[642] = v10;
              v11 = 8;
              goto LABEL_83;
            }

            goto LABEL_145;
          }

          goto LABEL_156;
        }

        if (*(a2 + 132) == 8)
        {
          if (*(a2 + 126) == v8)
          {
            **(a2 + 32) = v8;
            v11 = 7;
            goto LABEL_83;
          }

          a2[643] = 0;
          v157 = a2[642];
          if (v157 == 12)
          {
            v158 = 16;
          }

          else
          {
            v158 = v157 + 1;
          }

          a2[642] = v158;
LABEL_407:
          v29 = sub_297F0D97C(a2);
          goto LABEL_408;
        }

LABEL_156:
        a3 = 27;
        goto LABEL_409;
      }

      if (v7 != 8)
      {
        if (v7 == 9)
        {
          if (*(a2 + 132) == 8)
          {
LABEL_145:
            a2[266] = 83;
            *a2 = 2;
            LOBYTE(v176[0]) = -31;
            *(a2 + 321) = 1;
            a2[921] = 10;
            goto LABEL_146;
          }

          goto LABEL_156;
        }

        if (v7 == 10)
        {
          if (*(a2 + 132) != 1)
          {
            goto LABEL_156;
          }

          a3 = 0;
          v24 = *(a2 + 126);
          **(a2 + 32) = v24;
          *(a2 + 461) = v24;
        }

LABEL_409:
        v54 = "phFriNfc_Tpz_H_ProWrResp";
        goto LABEL_469;
      }

LABEL_78:
      if (*(a2 + 132) == 8)
      {
        a2[643] = 0;
        v27 = a2[642];
        if (v27 == 12)
        {
          v28 = 16;
        }

        else
        {
          v28 = v27 + 1;
        }

        a2[642] = v28;
        v11 = v7 + 1;
        goto LABEL_83;
      }

      goto LABEL_156;
    }

    if (a2[921] <= 1u)
    {
      if (a2[921])
      {
        if (*(a2 + 132) == 1)
        {
          v11 = 2;
LABEL_83:
          a2[921] = v11;
LABEL_84:
          v29 = sub_297F0D764(a2);
LABEL_408:
          a3 = v29;
          goto LABEL_409;
        }
      }

      else if (*(a2 + 132) == 8)
      {
        *a2 = 2;
        a2[921] = 1;
        *(a2 + 321) = 1;
        a2[266] = 83;
LABEL_146:
        v29 = sub_297F0B7B8(a2, v176, 1);
        goto LABEL_408;
      }

      goto LABEL_156;
    }

    if (v7 == 2)
    {
      if (*(a2 + 132) != 8)
      {
        goto LABEL_156;
      }

      v23 = v8;
      if (v8 >= 0xFFu)
      {
        a2[643] = 0;
        v57 = a2[642];
        if (v57 == 12)
        {
          v58 = 16;
        }

        else
        {
          v58 = v57 + 1;
        }

        a2[642] = v58;
        v11 = 3;
        goto LABEL_83;
      }
    }

    else
    {
      if (v7 == 3)
      {
        goto LABEL_78;
      }

      if (*(a2 + 132) != 8)
      {
        goto LABEL_156;
      }

      v23 = v8;
    }

    v67 = sub_297F0D8A0(a2, v23);
    a2[642] = v67 >> 3;
    a2[921] = 5;
    a2[643] = v67 & 7;
    if ((v67 & 7) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_407;
  }

  LOBYTE(v176[0]) = 0;
  sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ProReadResp");
  v19 = a2[540];
  if (v19 == 3)
  {
    if (*(a2 + 132) == 8)
    {
      v26 = *(a2 + 680);
      phOsalNfc_MemCopy();
      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_CheckCCBytesForWrite");
      if (a2[652] != 225 && a2[652] || a2[655])
      {
        sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_CheckCCBytesForWrite");
        a3 = 22;
      }

      else
      {
        sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_CheckCCBytesForWrite");
        if (a2[652] && a2[920] != 6)
        {
          a2[921] = 1;
          *(a2 + 321) = 1;
          *a2 = 2;
          a2[266] = 83;
          v123 = sub_297F0B7B8(a2, v176, 1);
        }

        else
        {
          *a2 = 16;
          a2[921] = 0;
          v122 = *(a2 + 459);
          a2[642] = v122 >> 3;
          a2[643] = v122 & 7;
          a2[266] = 2;
          v123 = sub_297F0B114(a2);
        }

        a3 = v123;
      }

      goto LABEL_468;
    }

    goto LABEL_74;
  }

  if (v19 == 2)
  {
    if (*(a2 + 132) == 128)
    {
      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_CopyReadData");
      if (a2[560])
      {
        v25 = *(a2 + 461);
      }

      else
      {
        v25 = *(a2 + 126) + *(a2 + 463);
      }

      v70 = *(a2 + 132);
      v71 = *(a2 + 62);
      if (v71 > v25)
      {
        LOWORD(v71) = v25;
      }

      v173 = v71;
      v72 = sub_297F0B5FC(a2);
      v73 = &unk_2A18BE000;
      if (a2[660] == v72 >> 7)
      {
        v74 = sub_297F0B5FC(a2);
        v73 = &unk_2A18BE000;
        v75 = v74 & 0x7F;
      }

      else
      {
        v75 = word_2A18BE728;
        if (!word_2A18BE728)
        {
LABEL_203:
          v76 = v173;
          v172 = v25;
          if (v75 >= v70)
          {
            goto LABEL_269;
          }

          v77 = 0;
          v78 = 0;
          v79 = 0;
LABEL_205:
          if (!v77 && !a2[660] || v75 <= 0x67u && !a2[660])
          {
            LOWORD(v81) = *(a2 + 132) - 24;
            v73[916] = 24;
            v77 = 1;
            goto LABEL_240;
          }

          v80 = a2[132];
          if (v80 == v79)
          {
            v81 = 0;
            goto LABEL_224;
          }

          v82 = a2[660];
          v81 = v82 << 7;
          v83 = v75 + (v82 << 7);
          while (1)
          {
            v84 = &a2[4 * v79 + 98];
            v85 = *v84;
            v86 = *(v84 + 1) + v85;
            if (v82 == v85 >> 7)
            {
              if (v83 <= v86)
              {
                v88 = sub_297F0DC98(a2, v85);
                v73 = &unk_2A18BE000;
                v76 = v173;
                word_2A18BE728 = v88;
                v81 = v85;
LABEL_223:
                ++v79;
LABEL_224:
                v89 = a2[186];
                if (v89 == v78)
                {
                  goto LABEL_240;
                }

                v90 = a2[660];
                v91 = v75 + (v90 << 7);
                while (1)
                {
                  v92 = &a2[4 * v78 + 152];
                  v93 = *v92;
                  v94 = *(v92 + 1) + v93;
                  if (v90 == v93 >> 7)
                  {
                    if (v91 <= v94)
                    {
                      v79 = (__PAIR64__(v79, v93) - v81) >> 32;
                      if (v93 <= (v81 - 1))
                      {
                        v81 = v93;
                      }

                      if (v81 == v93)
                      {
                        v96 = sub_297F0DC98(a2, v93);
                        v73 = &unk_2A18BE000;
                        v76 = v173;
                        word_2A18BE728 = v96;
                        ++v78;
                        LOWORD(v81) = v93;
                      }

LABEL_240:
                      v97 = v81;
                      v98 = v81 & 0x7F;
                      if (v81)
                      {
                        v99 = v81 & 0x7F;
                      }

                      else
                      {
                        v99 = v70;
                      }

                      if (v99 != v75)
                      {
                        v100 = v99 - v75;
                        v101 = *(a2 + 126);
                        if (v101 == v76)
                        {
                          v102 = v98 - v75;
                          if (v97)
                          {
                            v103 = v102;
                          }

                          else
                          {
                            v103 = v100;
                          }

                          if (a2[917] + v101 < v172)
                          {
                            v104 = v172 - v101;
                            if (v104 < v103)
                            {
                              v103 = v104;
                            }

                            v105 = *(a2 + 680);
                            phOsalNfc_MemCopy();
                            v73 = &unk_2A18BE000;
                            v76 = v173;
                            a2[917] += v103;
                          }

                          LOWORD(v75) = v103 + v75;
                        }

                        else
                        {
                          if (v173 - v101 >= v100)
                          {
                            v106 = v100;
                          }

                          else
                          {
                            v106 = v173 - v101;
                          }

                          v107 = *(a2 + 680);
                          v108 = *(a2 + 30);
                          phOsalNfc_MemCopy();
                          v73 = &unk_2A18BE000;
                          v76 = v173;
                          LOWORD(v75) = v106 + v75;
                          *(a2 + 126) += v106;
                          *(a2 + 463) -= v106;
                        }
                      }

                      if ((a2[660] << 7) + v75 == v97)
                      {
                        v109 = v75 + v73[916];
                        v110 = v109 > v70;
                        if (v73[916])
                        {
                          v111 = v70 - v75;
                          goto LABEL_262;
                        }
                      }

                      else
                      {
                        v110 = v75 > v70;
                        LOWORD(v109) = v75;
                      }

                      v111 = 0;
LABEL_262:
                      v112 = !v110;
                      if (v110)
                      {
                        v113 = v111;
                      }

                      else
                      {
                        v113 = 0;
                      }

                      if (v112)
                      {
                        LOWORD(v75) = v109;
                      }

                      else
                      {
                        LOWORD(v75) = v70;
                      }

                      v73[916] = v113;
                      if (v70 <= v75)
                      {
LABEL_269:
                        if (*(a2 + 126) == v76)
                        {
                          **(a2 + 69) = v76;
                          a3 = 0;
                          if (v76 == v172)
                          {
                            a2[917] = 0;
                            a2[645] = 1;
                          }

                          else
                          {
                            *(a2 + 463) = v172 - v76;
                          }
                        }

                        else
                        {
                          ++a2[660];
                          a2[266] = 16;
                          a3 = sub_297F0B114(a2);
                        }

                        v124 = "phFriNfc_Tpz_H_CopyReadData";
                        goto LABEL_467;
                      }

                      goto LABEL_205;
                    }
                  }

                  else if (v90 == v94 >> 7 && v91 <= v94)
                  {
                    ++v78;
                    LOWORD(v81) = v90 << 7;
                    goto LABEL_240;
                  }

                  if (v89 == ++v78)
                  {
                    v78 = a2[186];
                    goto LABEL_240;
                  }
                }
              }
            }

            else if (v82 == v86 >> 7 && v83 <= v86)
            {
              goto LABEL_223;
            }

            if (v80 == ++v79)
            {
              v81 = 0;
              v79 = a2[132];
              goto LABEL_224;
            }
          }
        }
      }

      v73[916] = 0;
      goto LABEL_203;
    }

LABEL_74:
    a3 = 27;
    goto LABEL_468;
  }

  if (v19 != 1)
  {
    goto LABEL_468;
  }

  if (*(a2 + 132) != 128)
  {
    goto LABEL_74;
  }

  if (!a2[660])
  {
    sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_CheckCCBytes");
    v114 = *(a2 + 680);
    phOsalNfc_MemCopy();
    if (a2[652] == 225 || !a2[652])
    {
      a3 = sub_297EE3220(a2, a2[653]);
      if (a3)
      {
LABEL_466:
        a2[545] = 3;
        v124 = "phFriNfc_Tpz_H_CheckCCBytes";
        goto LABEL_467;
      }

      if (a2[654] == 63)
      {
        *(a2 + 102) = 500;
        *(a2 + 320) = 512;
        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_Dynamic_H_ChkLockBits");
        v115 = a2[655];
        if (!a2[655])
        {
LABEL_280:
          a2[545] = v115;
          sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_Dynamic_H_ChkLockBits");
          sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_CheckCCBytes");
          goto LABEL_45;
        }

        if (v115 == 15)
        {
          LOBYTE(v115) = 1;
          goto LABEL_280;
        }

        a2[545] = 3;
        sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_Dynamic_H_ChkLockBits");
      }
    }

    a3 = 22;
    goto LABEL_466;
  }

LABEL_45:
  v20 = a2[920];
  sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ParseTLVs");
  v21 = *(a2 + 132);
  if (a2[660])
  {
    v22 = 0;
  }

  else
  {
    byte_2A18BE724[0] = 0;
    *&word_2A18BE72A = 0;
    if (v21 <= 0x17)
    {
      LOWORD(v21) = 0;
    }

    else
    {
      LOWORD(v21) = v21 - 24;
    }

    v22 = 12;
  }

  a3 = 0;
  v125 = v20 != 8;
  v126 = 1;
  if (v22 >= v21 || v20 == 8)
  {
    goto LABEL_412;
  }

  v127 = a2 + 266;
  v174 = a2 + 98;
  while (1)
  {
    v128 = word_2A18BE72A;
    if (word_2A18BE72A || (v128 = sub_297F0DC98(a2, (v22 + (a2[660] << 7))), word_2A18BE72A = v128, v128))
    {
      if (v21 - v22 < v128)
      {
        a3 = 0;
        v126 = 1;
        goto LABEL_411;
      }

      a3 = 0;
      v22 += v128;
      word_2A18BE72A = 0;
      goto LABEL_321;
    }

    a3 = 0;
    if (v20 <= 3)
    {
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v144 = byte_2A18BE724[0];
          byte_2A18BE724[byte_2A18BE724[0] + 16] = v127[v22++];
          byte_2A18BE724[0] = v144 + 1;
          if ((v144 + 1) == 3)
          {
            v145 = *(a2 + 680);
            phOsalNfc_MemCopy();
            sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_GetLockBytesInfo");
            v146 = byte_2A18BE734 >> 4;
            v147 = byte_2A18BE734 & 0xF;
            if ((byte_2A18BE735 & 7) != 0)
            {
              v148 = (byte_2A18BE735 >> 3) + 1;
            }

            else
            {
              v148 = byte_2A18BE735 >> 3;
            }

            v149 = a2[132];
            v150 = &v174[4 * v149];
            *(v150 + 1) = v148;
            v151 = (v146 << (byte_2A18BE736 & 0xF)) + v147;
            *v150 = v151;
            if (v151 < 0x78u || v148 + v151 > 8 * (a2[654] + 1))
            {
              *v150 = 0;
              a3 = 22;
            }

            else
            {
              a3 = 0;
              *(a2 + 74) = v151 >> 3;
              *(a2 + 75) = v151 & 7;
            }

            a2[132] = v149 + 1;
            sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_GetLockBytesInfo");
            byte_2A18BE724[0] = 0;
            v20 = 3;
            goto LABEL_321;
          }

          a3 = 0;
          goto LABEL_371;
        }

        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ParseMemTLVType");
        v142 = v127[v22];
        if (v127[v22])
        {
          if (v142 == 2)
          {
            ++v22;
            v20 = 4;
          }

          else if (v142 == 1)
          {
            ++v22;
            v20 = 1;
          }

          else
          {
            v20 = 6;
          }
        }

        else
        {
          ++v22;
          v20 = 3;
        }

        v155 = a2;
        v156 = "phFriNfc_Tpz_H_ParseMemTLVType";
      }

      else
      {
        if (v20)
        {
          if (v127[v22] != 3)
          {
            v126 = 0;
            a3 = 22;
            v20 = 1;
            goto LABEL_477;
          }

          a3 = 0;
          ++v22;
LABEL_371:
          v20 = 2;
          goto LABEL_321;
        }

        sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ParseLockTLVType");
        if (v127[v22])
        {
          if (v127[v22] == 1)
          {
            ++v22;
            v20 = 1;
          }

          else
          {
            v20 = 3;
          }
        }

        else
        {
          v20 = 0;
          ++v22;
        }

        v155 = a2;
        v156 = "phFriNfc_Tpz_H_ParseLockTLVType";
      }

      sub_297E4DFAC(2, v155, 8u, 5u, v156);
      a3 = 0;
      goto LABEL_321;
    }

    if (v20 <= 5)
    {
      if (v20 == 4)
      {
        if (v127[v22] != 3)
        {
          v126 = 0;
          a3 = 22;
          v20 = 4;
          goto LABEL_477;
        }

        a3 = 0;
        ++v22;
      }

      else
      {
        v131 = byte_2A18BE724[0];
        byte_2A18BE724[byte_2A18BE724[0] + 16] = v127[v22++];
        byte_2A18BE724[0] = v131 + 1;
        if ((v131 + 1) == 3)
        {
          word_2A18BE72C = v22 + (a2[660] << 7);
          sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_GetMemBytesInfo");
          v132 = byte_2A18BE734 >> 4;
          v133 = byte_2A18BE734 & 0xF;
          v134 = byte_2A18BE735;
          v135 = a2[186];
          v136 = &a2[4 * v135 + 152];
          *(v136 + 1) = byte_2A18BE735;
          v137 = (v132 << (byte_2A18BE736 & 0xF)) + v133;
          *v136 = v137;
          v138 = &v174[4 * a2[132]];
          v139 = *v138;
          if (v139 <= v137 && *(v138 + 1) + v139 > v137)
          {
            goto LABEL_396;
          }

          v140 = v137 + v134;
          if (v140 <= v139)
          {
            if (v137 < 0x78u)
            {
              goto LABEL_396;
            }

            v141 = v139 + *(v138 + 1);
          }

          else
          {
            if (v137 < 0x78u)
            {
              goto LABEL_396;
            }

            v141 = v139 + *(v138 + 1);
            if (v140 <= v141)
            {
              goto LABEL_396;
            }
          }

          if (v141 <= 8 * a2[654])
          {
            a3 = 0;
            *(a2 + 100) = v137 >> 3;
            *(a2 + 101) = v137 & 7;
            goto LABEL_397;
          }

LABEL_396:
          *v136 = 0;
          a3 = 22;
LABEL_397:
          a2[186] = v135 + 1;
          sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_GetMemBytesInfo");
          byte_2A18BE724[0] = 0;
          v20 = 6;
          goto LABEL_321;
        }

        a3 = 0;
      }

      v20 = 5;
      goto LABEL_321;
    }

    if (v20 == 6)
    {
      sub_297E4E1B4(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ParseNdefTLVType");
      v20 = 0;
      v152 = v127[v22];
      a3 = 22;
      if (v152 > 1)
      {
        if (v152 == 3)
        {
          a3 = 0;
          ++v22;
          v20 = 7;
        }

        else if (v152 == 2)
        {
          a3 = 0;
          ++v22;
          v20 = 4;
        }
      }

      else if (v127[v22])
      {
        if (v152 == 1)
        {
          a3 = 0;
          ++v22;
          v20 = 1;
        }
      }

      else
      {
        a3 = 0;
        ++v22;
        v20 = 6;
      }

      sub_297E4DFAC(2, a2, 8u, 5u, "phFriNfc_Tpz_H_ParseNdefTLVType");
      goto LABEL_321;
    }

    if (v20 == 7)
    {
      break;
    }

LABEL_321:
    v126 = a3 == 0;
    v125 = v20 != 8;
    if (v22 >= v21 || a3 != 0 || v20 == 8)
    {
      goto LABEL_412;
    }
  }

  v143 = byte_2A18BE724[0];
  if (byte_2A18BE724[0])
  {
    byte_2A18BE724[byte_2A18BE724[0] + 16] = v127[v22++];
    byte_2A18BE724[0] = v143 + 1;
    if ((v143 + 1) == 3)
    {
      a3 = 0;
      byte_2A18BE724[0] = 0;
      *(a2 + 461) = bswap32(*&byte_2A18BE735) >> 16;
      v126 = 1;
      v20 = 8;
      goto LABEL_477;
    }

    a3 = 0;
    v20 = 7;
    goto LABEL_321;
  }

  *(a2 + 459) = v22 + (a2[660] << 7) - 1;
  v153 = v127[v22];
  if ((*(a2 + 320) + (~v22 | 0xFFFF0000)) >= v153)
  {
    if (v153 == 255)
    {
      byte_2A18BE734 = -1;
      v154 = 1;
      v20 = 7;
    }

    else
    {
      v154 = 0;
      *(a2 + 461) = v153;
      v20 = 8;
    }

    a3 = 0;
    byte_2A18BE724[0] = v154;
    ++v22;
    goto LABEL_321;
  }

  v126 = 0;
  byte_2A18BE724[0] = 0;
  a3 = 22;
  v20 = 7;
LABEL_477:
  LOWORD(v21) = v22;
LABEL_411:
  v125 = v20 != 8;
  LOWORD(v22) = v21;
LABEL_412:
  sub_297E9C28C(a2, a2 + 98, a2[132]);
  sub_297E9C28C(a2, a2 + 38, a2[186]);
  a2[920] = v20;
  v159 = a2[660];
  v160 = *(a2 + 320);
  v161 = v160 - v22;
  if (v160 < v22)
  {
    v161 = 0;
  }

  v162 = v160 - v22 - 24;
  if (a2[660])
  {
    v162 = v161;
  }

  *(a2 + 320) = v162;
  v163 = !v126;
  if (v20 != 8)
  {
    v163 = 1;
  }

  if (v163)
  {
    if (a3 != 0 || !v125)
    {
      goto LABEL_448;
    }

    v164 = v159 + 1;
    a2[660] = v164;
    if (v164 != 4)
    {
      a2[266] = 16;
      a3 = sub_297F0B114(a2);
      goto LABEL_448;
    }

    a3 = 22;
LABEL_451:
    *(a2 + 459) = 0;
    *(a2 + 461) = 0;
LABEL_452:
    if (!a2[652] || v20 == 6 && a2[660] == 4)
    {
      *(a2 + 461) = 0;
      a2[545] = 0;
      v166 = word_2A18BE72C;
      if (word_2A18BE72C)
      {
        do
        {
          v167 = sub_297F0DC98(a2, v166);
          v166 = word_2A18BE72C + v167;
          word_2A18BE72C += v167;
        }

        while (v167);
        *(a2 + 459) = v166;
        v168 = v166 + 24;
        if (v168 <= (*(a2 + 102) + 12))
        {
          v169 = *(a2 + 102) + 12 - v168;
        }

        else
        {
          v169 = 0;
        }

        *(a2 + 320) = v169;
        sub_297F0DD5C(a2);
        a3 = 0;
        *(a2 + 462) -= 2;
        word_2A18BE72C = 0;
      }
    }
  }

  else
  {
    a3 = sub_297F0DD5C(a2);
    if (a2[545] != 1 && *(a2 + 461))
    {
      a2[545] = 2;
    }

LABEL_448:
    if (!a3)
    {
      goto LABEL_452;
    }

    if (a3 != 13)
    {
      if (a3 != 25)
      {
        goto LABEL_451;
      }

      goto LABEL_452;
    }
  }

  v124 = "phFriNfc_Tpz_H_ParseTLVs";
LABEL_467:
  sub_297E4DFAC(2, a2, 8u, 5u, v124);
LABEL_468:
  v54 = "phFriNfc_Tpz_H_ProReadResp";
LABEL_469:
  sub_297E4DFAC(2, a2, 8u, 5u, v54);
LABEL_470:
  if (a3 != 13)
  {
LABEL_471:
    sub_297EE2FD8(a2, a3);
  }

  result = sub_297E4DFAC(0, &v175, 8u, 5u, "phFriNfc_TopazDynamicMap_Process");
  v171 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297F0D764(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_RdForWrite");
  LOBYTE(v2) = 0;
  v3 = *(a1 + 921);
  *(a1 + 266) = 2;
  *a1 = 16;
  if (v3 > 9)
  {
    LOBYTE(v8) = 0;
    goto LABEL_13;
  }

  if (((1 << v3) & 0x318) != 0)
  {
    v4 = *(a1 + 643) + 8 * *(a1 + 642);
    do
    {
      v2 = v4;
      v5 = sub_297F0DC98(a1, v4);
      v4 = v5 + v2;
    }

    while (v5);
LABEL_12:
    LOWORD(v8) = v2 >> 3;
    goto LABEL_13;
  }

  if (((1 << v3) & 0x84) != 0)
  {
    v6 = *(a1 + 918) + 1;
    do
    {
      if ((v6 & 0xFFF8) == 0x68)
      {
        v2 = v6 + 24;
      }

      else
      {
        v2 = v6;
      }

      v7 = sub_297F0DC98(a1, v2);
      v6 = v2 + v7;
    }

    while (v7);
    goto LABEL_12;
  }

  LOBYTE(v8) = 0;
  if (v3 == 6)
  {
    v2 = *(a1 + 643) + 8 * *(a1 + 642);
    v8 = v2 >> 3;
  }

LABEL_13:
  *(a1 + 642) = v8;
  *(a1 + 643) = v2 & 7;
  v9 = sub_297F0B114(a1);
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_RdForWrite");
  return v9;
}

uint64_t sub_297F0D8A0(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_GetNDEFValueFieldAddrForWrite");
  LOBYTE(v4) = 0;
  v5 = *(a1 + 918);
  if (a2 <= 0xFE)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  do
  {
    if ((v5 + 1) == 104)
    {
      v7 = 128;
    }

    else
    {
      v7 = v5 + 1;
    }

    v5 = v7 + sub_297F0DC98(a1, v7);
    v4 = (v4 + 1);
  }

  while (v4 < v6);
  if ((v5 + 1) == 104)
  {
    v8 = 128;
  }

  else
  {
    v8 = v5 + 1;
  }

  v9 = sub_297F0DC98(a1, v8) + v8;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_GetNDEFValueFieldAddrForWrite");
  return v9;
}

uint64_t sub_297F0D97C(uint64_t a1)
{
  v20[1] = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CopySendWrData");
  if (*(a1 + 248) >= *(a1 + 924))
  {
    v2 = *(a1 + 924);
  }

  else
  {
    v2 = *(a1 + 248);
  }

  v3 = *(a1 + 642);
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CompareLockBlocks");
  v4 = *(a1 + 132);
  if (*(a1 + 132))
  {
    v5 = 98;
    while (1)
    {
      v6 = *(a1 + v5);
      if (v3 == v6 >> 3)
      {
        break;
      }

      v5 += 4;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CompareLockBlocks");
    if (v6)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_8:
    sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CompareLockBlocks");
  }

  v7 = *(a1 + 642);
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CompareMemBlocks");
  v8 = *(a1 + 186);
  if (*(a1 + 186))
  {
    v9 = 152;
    while (1)
    {
      v10 = *(a1 + v9);
      if (v7 == v10 >> 3)
      {
        break;
      }

      v9 += 4;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }

    sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CompareMemBlocks");
    if (v10)
    {
LABEL_21:
      *(a1 + 921) = 6;
      *(a1 + 643) = 0;
      v16 = sub_297F0D764(a1);
      goto LABEL_22;
    }
  }

  else
  {
LABEL_13:
    sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CompareMemBlocks");
  }

  *(a1 + 266) = 84;
  *a1 = 2;
  v11 = *(a1 + 2720);
  phOsalNfc_SetMemory();
  v12 = v2 - *(a1 + 252);
  v13 = *(a1 + 2720);
  v14 = *(a1 + 240);
  phOsalNfc_MemCopy();
  if (v12 < 8)
  {
    *(a1 + 252) += v12;
    v15 = *(a1 + 2720);
    phOsalNfc_SetMemory();
  }

  else
  {
    *(a1 + 252) += 8;
  }

  *(a1 + 266) = 84;
  v16 = sub_297F0B7B8(a1, v20, 8);
LABEL_22:
  v17 = v16;
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_CopySendWrData");
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t sub_297F0DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8u, 5u, "phFriNfc_TopazDynamic_CB_Transceive");
  sub_297E57170(v10, &v9);
  v7 = v9;
  if (v9)
  {
    if (a4)
    {
      *(v9 + 264) = *(a4 + 8);
    }

    (*(v7 + 48))(*(v7 + 2712), v7, a5);
  }

  return sub_297E4DFAC(0, &v10, 8u, 5u, "phFriNfc_TopazDynamic_CB_Transceive");
}

uint64_t sub_297F0DC98(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_GetSkipSize");
  v4 = *(a1 + 132);
  if (*(a1 + 132))
  {
    v5 = 0;
    v6 = (a1 + 100);
    do
    {
      if (*(v6 - 1) == a2)
      {
        v5 = *v6;
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 186);
  if (*(a1 + 186))
  {
    v8 = (a1 + 154);
    do
    {
      if (*(v8 - 1) == a2)
      {
        v5 = *v8;
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_GetSkipSize");
  return v5;
}

uint64_t sub_297F0DD5C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8u, 5u, "phFriNfc_Tpz_H_ActualCardSize");
  v2 = *(a1 + 640);
  v3 = sub_297F0B5FC(a1);
  v4 = *(a1 + 132);
  if (*(a1 + 132))
  {
    v5 = (a1 + 100);
    do
    {
      v6 = *(v5 - 1);
      if (v6 > v3 && (v6 & 0xFFF8) != 0x78)
      {
        v2 -= *v5;
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v7 = *(a1 + 186);
  if (*(a1 + 186))
  {
    v8 = (a1 + 154);
    do
    {
      v9 = *(v8 - 1);
      if (v9 > v3 && (v9 & 0xFFF8) != 0x78)
      {
        v2 -= *v8;
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 922);
  if (v10 <= v2)
  {
    if (v2 < 0x100u || v10 > 0xFE)
    {
      if (v2 != 255 || v10 > 0xFE)
      {
        v12 = 0;
        *(a1 + 924) = v2;
        goto LABEL_25;
      }

      v12 = 0;
      v13 = 254;
    }

    else
    {
      v12 = 0;
      v13 = v2 - 2;
    }

    *(a1 + 924) = v13;
  }

  else
  {
    sub_297E4E0B0(2, a1, 8u, 2u, "phFriNfc_Tpz_H_ActualCardSize: Current NDEF message exceeds the Maximum Tag NDEF size");
    v11 = *(a1 + 922);
    sub_297E50EBC(2, a1, 8u, 2u, "phFriNfc_Tpz_H_ActualCardSize:Current Ndef Message size");
    sub_297E50EBC(2, a1, 8u, 2u, "phFriNfc_Tpz_H_ActualCardSize:Maximum Ndef Message size");
    *(a1 + 922) = 0;
    if (v2 >= 0x100u)
    {
      *(a1 + 924) = v2;
    }

    *(a1 + 545) = 0;
    v12 = 25;
  }

LABEL_25:
  sub_297E4DFAC(2, a1, 8u, 5u, "phFriNfc_Tpz_H_ActualCardSize");
  return v12;
}

uint64_t sub_297F0DF0C(uint64_t a1, char a2)
{
  v18 = 0;
  v19 = 0;
  sub_297E4E1B4(2, a1, 6u, 5u, "phDnldNfc_CoreInit");
  if (a1)
  {
    sub_297E9F244(*(a1 + 16), &v19);
    v4 = v19;
    if (v19)
    {
      *(v19 + 48) = *(a1 + 16);
      *(a1 + 48) = v4;
      sub_297E966F4(1, a1 + 40, 6u, 4u, "####Primary NFCC, DriverHandle");
      v5 = *(a1 + 48);
      sub_297E966F4(1, a1 + 40, 6u, 4u, "DOWNLOAD-CORE context");
      v6 = v19;
      *(v19 + 8492) = *(a1 + 40);
      *(v6 + 8504) = a2;
      sub_297E67EB0(*(v6 + 48), &v18);
      v7 = sub_297E5B294(*(a1 + 32));
      *(a1 + 56) = 0;
      v8 = *(a1 + 40);
      v9 = phOsalNfc_Timer_Create();
      if (v9 != 0xFFFFFFFFFFFFLL && (v10 = v9) != 0)
      {
        sub_297E50EBC(1, a1 + 40, 6u, 4u, "phDnldNfc_CoreInit : Timer Create dwDnldRspTimerId!");
        *(v19 + 56) = v10;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 40, 6u, 1u, "phDnldNfc_CoreInit : Dnld Rsp Timer Create failed!!");
        v7 = 12;
      }

      v11 = *(a1 + 40);
      v12 = phOsalNfc_Timer_Create();
      if (v12 != 0xFFFFFFFFFFFFLL && (v13 = v12) != 0)
      {
        sub_297E50EBC(1, a1 + 40, 6u, 4u, "phDnldNfc_CoreInit : Timer Create dwDnldMuxTmlBusyTimerId!");
        *(v19 + 64) = v13;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 40, 6u, 1u, "phDnldNfc_CoreInit : Dnld Mux Tml Timer Create failed!!");
        v7 = 12;
      }

      v14 = *(a1 + 40);
      v15 = phOsalNfc_Timer_Create();
      if (v15 != 0xFFFFFFFFFFFFLL && (v16 = v15) != 0)
      {
        sub_297E50EBC(1, a1 + 40, 6u, 4u, "phDnldNfc_CoreInit : Timer Create dwDnldVenRstWaitTimerId!");
        *(v19 + 72) = v16;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 40, 6u, 1u, "phDnldNfc_CoreInit : Dnld Ven Reset wait Timer Create failed!!");
        v7 = 12;
      }
    }

    else
    {
      v7 = 255;
    }
  }

  else
  {
    v7 = 1;
  }

  sub_297E4DFAC(2, a1, 6u, 5u, "phDnldNfc_CoreInit");
  return v7;
}

uint64_t sub_297F0E16C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 6u, 5u, "phDnldNfc_CoreDeInit");
  if (a1)
  {
    v2 = *(a1 + 48);
    sub_297E5B294(*(a1 + 32));
    *(a1 + 56) = 0;
    v3 = *(v2 + 56);
    if (v3)
    {
      v4 = v3 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = *(v2 + 8492);
      phOsalNfc_Timer_Stop();
      v6 = *(v2 + 8492);
      v7 = *(v2 + 56);
      phOsalNfc_Timer_Delete();
      *(v2 + 56) = 0xFFFFFFFFFFFFLL;
    }

    v8 = *(v2 + 64);
    if (v8)
    {
      v9 = v8 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(v2 + 8492);
      phOsalNfc_Timer_Stop();
      v11 = *(v2 + 8492);
      v12 = *(v2 + 64);
      phOsalNfc_Timer_Delete();
      *(v2 + 64) = 0xFFFFFFFFFFFFLL;
    }

    v13 = *(v2 + 72);
    if (v13)
    {
      v14 = v13 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = *(v2 + 8492);
      phOsalNfc_Timer_Stop();
      v16 = *(v2 + 8492);
      v17 = *(v2 + 72);
      phOsalNfc_Timer_Delete();
      *(v2 + 72) = 0xFFFFFFFFFFFFLL;
    }

    v18 = *(v2 + 8492);
    phOsalNfc_SetMemory();
    v19 = 0;
    *(v2 + 8492) = 255;
    *(a1 + 48) = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_297E4DFAC(2, a1, 6u, 5u, "phDnldNfc_CoreDeInit");
  return v19;
}

uint64_t sub_297F0E294(uint64_t a1, int *a2)
{
  sub_297E4E1B4(3, a1, 6u, 5u, "phDnldNfc_BuildHdllPkt");
  if (a1)
  {
    v4 = *(a1 + 8492);
    v5 = a1 + 126;
    phOsalNfc_SetMemory();
    *(a1 + 124) = 6;
    v6 = a2[4];
    if (v6 && *(a2 + 1))
    {
      LOWORD(v7) = v6 + 3;
      *(a1 + 124) = v6 + 3;
      if (*a2 != 192)
      {
        goto LABEL_46;
      }

      if (*(a1 + 117) == 1)
      {
        *(a1 + 104) = v6;
        if ((*(a1 + 8480) - 8) > 2)
        {
          v8 = 0;
          *(a1 + 100) = 0;
        }

        else if (*(a2 + 40))
        {
          v8 = a2[1];
          *(a1 + 100) = v8;
          *(a1 + 104) = v6 - v8 + 12;
        }

        else
        {
          v8 = 12;
          *(a1 + 100) = 12;
        }
      }

      else
      {
        v8 = *(a1 + 100);
      }

      sub_297E50DB0(1, a1 + 8492, 6u, 4u, "Offset Address");
      v15 = *(a1 + 104);
      sub_297E50EBC(1, a1 + 8492, 6u, 4u, "phDnldNfc_BuildHdllPkt wRemBytes");
      if (*(a1 + 104) && !*(a1 + 116))
      {
        v16 = *(a2 + 1);
        v17 = *(v16 + v8);
        *(a1 + 110) = v17 << 8;
        *(a1 + 110) = *(v16 + v8 + 1) | (v17 << 8);
        sub_297E50EBC(1, a1 + 8492, 6u, 4u, "Size Of DNLD PKT");
      }

      v18 = *(a1 + 8480);
      if (v18 == 8)
      {
        v7 = *(a1 + 110);
        v19 = 4134;
      }

      else
      {
        v7 = *(a1 + 110);
        if ((v18 - 9) > 1)
        {
          if (v7 >= 0x227)
          {
LABEL_31:
            if (*(a1 + 118))
            {
              v7 = *(a1 + 108);
            }

            else
            {
              *(a1 + 108) = v7;
              *(a1 + 100) += 2;
            }

            if ((v18 - 9) > 1)
            {
              if (v18 == 8)
              {
                if (v7 >= 0x1027)
                {
                  LOWORD(v7) = 4136;
                  goto LABEL_44;
                }
              }

              else if (v7 >= 0x227)
              {
                LOWORD(v7) = 552;
                goto LABEL_44;
              }
            }

            else if (v7 >= 0x102B)
            {
              LOWORD(v7) = 4140;
LABEL_44:
              *(a1 + 124) = v7;
              *(a1 + 116) = 1;
              goto LABEL_46;
            }

            *(a1 + 124) = v7;
            *(a1 + 116) = 0;
            goto LABEL_46;
          }

          goto LABEL_34;
        }

        v19 = 4138;
      }

      if (v7 > v19)
      {
        goto LABEL_31;
      }

LABEL_34:
      LOWORD(v7) = v7 + 2;
      *(a1 + 124) = v7;
      *(a1 + 110) = 0;
      goto LABEL_46;
    }

    if (a2[8] && *(a2 + 3))
    {
      v9 = *a2;
      if (*a2 == 162)
      {
        LOWORD(v7) = 10;
        *(a1 + 124) = 10;
LABEL_46:
        *(a1 + 112) = v7;
        v20 = (v5 + *(a1 + 8444));
        *v20 = (v7 - 2) >> 8;
        v20[1] = v7 - 2;
        sub_297E4E0B0(1, a1 + 8492, 6u, 4u, "phDnldNfc_BuildHdllPkt : Inserting FrameId ..");
        *(*(a1 + 8444) + v5 + 2) = *a2;
        v21 = *a2;
        v22 = (*a2 - 162);
        if (v22 > 0x3E)
        {
          goto LABEL_53;
        }

        if (((1 << (*a2 + 94)) & 0x400000000000C020) != 0)
        {
          if (!a2[4] || !*(a2 + 1))
          {
            goto LABEL_60;
          }

          v23 = *(a1 + 8492);
LABEL_59:
          phOsalNfc_MemCopy();
LABEL_60:
          v11 = 0;
LABEL_61:
          v28 = sub_297E50CEC(*(a1 + 48), (v5 + *(a1 + 8444)), *(a1 + 124));
          v29 = *(a1 + 124);
          *(v5 + *(a1 + 8444) + v29) = HIBYTE(v28);
          *(v29 + v5 + *(a1 + 8444) + 1) = v28;
          *(a1 + 124) = v29 + *(a1 + 8444) + 2;
          sub_297E4E0B0(1, a1 + 8492, 6u, 4u, "phDnldNfc_BuildHdllPkt: Frame created successfully");
          goto LABEL_62;
        }

        if (v21 == 162)
        {
          if (*(a1 + 116))
          {
            v31 = *(a1 + 104);
            v32 = *(a1 + 110);
          }

          else
          {
            sub_297E4E0B0(1, a1 + 8492, 6u, 4u, "phDnldNfc_BuildHdllPkt : Verifying RspBuffInfo for Read Request..");
            v32 = 546;
            *(a1 + 110) = 546;
            v31 = a2[8];
            *(a1 + 104) = v31;
            *(a1 + 96) = a2[1];
            *(a1 + 100) = 0;
            *(a1 + 114) = 0;
            if (v31 - 547 <= 0xFFFFFDD8)
            {
              *(a1 + 116) = 1;
            }
          }

          if (v31 > v32)
          {
            LOWORD(v31) = v32;
          }

          *(a1 + 112) = v31;
          v33 = *(a1 + 8492);
          v34 = *(a1 + 8444) + v5;
          phOsalNfc_MemCopy();
          v35 = *(a1 + 8492);
          phOsalNfc_MemCopy();
          ++*(a1 + 4280);
          sub_297E50EBC(1, a1 + 8492, 6u, 1u, "phDnldNfc_BuildHdllPkt:DNLD Read COUNT");
          v36 = *(a1 + 96);
          sub_297E50DB0(1, a1 + 8492, 6u, 1u, "phDnldNfc_BuildHdllPkt:DNLD Read Address");
          goto LABEL_60;
        }

        if (v22 != 30)
        {
LABEL_53:
          v24 = v21 - 241;
          if (v24 > 3 || v24 == 2)
          {
            v11 = 1;
            sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "phDnldNfc_BuildHdllPkt : Invalid Dnld Opcode!!");
            goto LABEL_61;
          }
        }

        if (a2[4] && *(a2 + 1))
        {
          v25 = *(a1 + 8492);
          v26 = *(a1 + 124);
        }

        else
        {
          v27 = *(a1 + 8492);
        }

        goto LABEL_59;
      }
    }

    else
    {
      v9 = *a2;
    }

    LOWORD(v7) = 6;
    v14 = v9 - 167;
    if (v14 > 0x39 || ((1 << v14) & 0x200000002000001) == 0)
    {
      goto LABEL_46;
    }

    v10 = "phDnldNfc_BuildHdllPkt : Invalid Input Parameter(s)!!";
    v11 = 1;
    v13 = a1 + 8492;
    v12 = 1;
  }

  else
  {
    v10 = "Invalid Input Parameter!!";
    v11 = 1;
    v12 = 3;
    v13 = 0;
  }

  sub_297E4E0B0(v12, v13, 6u, 1u, v10);
LABEL_62:
  sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_BuildHdllPkt");
  return v11;
}

uint64_t sub_297F0E83C(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 6u, 5u, "phDnldNfc_ReqTmlRead");
  if (a1)
  {
    *(a1 + 8438) = 0;
    *(a1 + 8442) = 0;
    v2 = *(a1 + 48);
    if (phTmlNfc_Read() == 13)
    {
      v3 = 13;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "Read Request Failure");
      sub_297E96818(*(a1 + 48), 195);
      v3 = 255;
    }
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_ReqTmlRead");
  return v3;
}

uint64_t sub_297F0E918(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 6u, 5u, "phDnldNfc_TmlReadCommonCb");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 12);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 == a1 && (v8 = *(a1 + 8496)) != 0 && a2 && *(v8 + 6632) && (v9 = *(a2 + 8)) != 0 && *(a2 + 16) && !*a2 && *v9 <= -127)
  {
    sub_297F12210(a1, a2);
  }

  else
  {
LABEL_6:
    sub_297F0F6AC(a1, a2);
  }

  return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_TmlReadCommonCb");
}

uint64_t sub_297F0EA10(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 6u, 5u, "phDnldNfc_DnldValidateRxdPkt");
  if (a1)
  {
    if (!*a2 && (v6 = *(a2 + 16), *(a2 + 16)) && (v7 = *(a2 + 8)) != 0)
    {
      v65 = *(a1 + 48);
      sub_297E4E1B4(0, &v65, 6u, 5u, "phDnldNfc_DnldVldtCrcRcvd");
      v8 = sub_297E50CEC(v65, v7, (v6 - 2));
      v9 = *v7;
      if ((v7[v6 - 1] | (v7[v6 - 2] << 8)) != v8)
      {
        if (v9 == 96 && !v7[1] && v7[2] == 2 && v7[3] == 165)
        {
          sub_297E4E0B0(0, &v65, 6u, 1u, "phDnldNfc_DnldVldtCrcRcvd:RESET NTF- NO UART message Received");
          v4 = 132;
        }

        else
        {
          sub_297E4E0B0(0, &v65, 6u, 1u, "Invalid frame received");
          sub_297E50DB0(0, &v65, 6u, 1u, "Received CRC: ");
          sub_297E50DB0(0, &v65, 6u, 1u, "Calculated CRC: ");
          v4 = 255;
        }

        v15 = "phDnldNfc_DnldVldtCrcRcvd";
        v16 = &v65;
        v17 = 0;
        goto LABEL_144;
      }

      if ((v7[1] | (v9 << 8)) == (v6 - 4))
      {
        sub_297E4DFAC(0, &v65, 6u, 5u, "phDnldNfc_DnldVldtCrcRcvd");
        if (!*(*(a2 + 8) + 2) && !*(a1 + 8445))
        {
          *(a1 + 8445) = 1;
        }

        v65 = 0;
        sub_297E4E1B4(3, a1, 6u, 5u, "phDnldNfc_UpdateRsp");
        sub_297E67F6C(*(a1 + 48), &v65);
        v10 = *a1;
        v11 = v65;
        if (*a1 == 192 || !v65 || *(v65 + 56) == 2)
        {
LABEL_17:
          if (v10 > 223)
          {
            if ((v10 - 241) < 2)
            {
              goto LABEL_48;
            }

            if (v10 == 244)
            {
              if (*(a1 + 32) && *(a1 + 24))
              {
                v24 = *(a1 + 8492);
                v25 = *(a2 + 8);
                v26 = *(a2 + 16);
                phOsalNfc_MemCopy();
                v4 = 0;
                *(a1 + 32) = *(a2 + 16);
                goto LABEL_143;
              }

              sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "Cannot update Response buff with received data!!");
              goto LABEL_142;
            }

            if (v10 == 224)
            {
              goto LABEL_48;
            }

            goto LABEL_40;
          }

          if (v10 > 175)
          {
            if (v10 == 176)
            {
              if (!*(a1 + 32) || !*(a1 + 24))
              {
                goto LABEL_142;
              }

              v27 = *(a1 + 8492);
              v28 = *(a2 + 8);
              v22 = (v6 - 5) + 1;
              goto LABEL_51;
            }

            if (v10 != 177)
            {
              if (v10 == 192)
              {
                v12 = *(*(a2 + 8) + 2);
                if (*(*(a2 + 8) + 2))
                {
                  if (*(a1 + 118) == 1)
                  {
                    if (v12 == 46 && *(a1 + 116) == 1)
                    {
                      v4 = 0;
                      v38 = *(a1 + 112);
                      *(a1 + 108) -= v38;
                      v39 = *(a1 + 104) - v38;
                      *(a1 + 100) += v38;
                      *(a1 + 104) = v39;
                      goto LABEL_143;
                    }
                  }

                  else if (!*(a1 + 118) && v12 == 45 && *(a1 + 116) == 1)
                  {
                    *(a1 + 118) = 1;
                    v13 = *(a1 + 112);
                    *(a1 + 108) -= v13;
                    v14 = *(a1 + 104) - v13 - 2;
                    *(a1 + 100) += v13;
                    *(a1 + 104) = v14;
                    if (*(a1 + 117) == 1)
                    {
                      sub_297E4E0B0(1, a1 + 8492, 6u, 4u, "First Write Frame Success Status received!!");
                      v4 = 0;
                      *(a1 + 117) = 0;
LABEL_143:
                      v15 = "phDnldNfc_UpdateRsp";
                      v17 = 3;
                      v16 = a1;
LABEL_144:
                      sub_297E4DFAC(v17, v16, 6u, 5u, v15);
                      goto LABEL_6;
                    }

LABEL_142:
                    v4 = 0;
                    goto LABEL_143;
                  }

                  if (*(*(a2 + 8) + 2) > 0x20u)
                  {
                    switch(v12)
                    {
                      case '!':
                        sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "Signature Mismatch Error received!!");
                        v60 = 33;
                        break;
                      case '1':
                        sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "phDnldNfc_UpdateRsp:EDL_CERT_ERROR:Error during Certificate frame processing");
                        v60 = 49;
                        break;
                      case '$':
                        sub_297E4E0B0(1, a1 + 8492, 6u, 4u, "Firmware Already Up To Date!!");
                        v4 = 0;
                        *(a1 + 117) = 0;
                        *(a1 + 100) = 0;
                        *(a1 + 104) = 0;
                        goto LABEL_143;
                      default:
LABEL_132:
                        sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "Unsuccessful Status received!!");
                        v61 = *(*(a2 + 8) + 2);
                        if (v61 == 51)
                        {
                          v18 = "CHIPID_OR_MASK_ERROR:Wrong ChipId or ChipMask in First Frame";
                          goto LABEL_146;
                        }

                        if (v61 == 50)
                        {
                          v18 = "MISSING_CERTIFICATE:Missing certificate (missing 0xC1 frame)";
LABEL_146:
                          v35 = a1 + 8492;
                          goto LABEL_78;
                        }

                        v23 = a1 + 8492;
LABEL_55:
                        sub_297E50DB0(1, v23, 6u, 1u, "phDnldNfc_UpdateRsp:Received DNLD Error, Status:");
LABEL_79:
                        v4 = 255;
                        goto LABEL_143;
                    }

                    *(a1 + 8448) = v60;
                    v4 = 147;
                    goto LABEL_143;
                  }

                  if (v12 == 13)
                  {
                    sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "PLL Error Status received!!");
                    *(a1 + 8448) = 13;
                    v4 = 21;
                    goto LABEL_143;
                  }

                  if (v12 == 32)
                  {
                    sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "phDnldNfc_UpdateRsp:Memory Busy Status received!!");
                    *(a1 + 8448) = 32;
                    goto LABEL_79;
                  }

                  goto LABEL_132;
                }

                if (*(a1 + 117) == 1)
                {
                  sub_297E4E0B0(1, a1 + 8492, 6u, 4u, "First Write Frame Success Status received!!");
                  *(a1 + 117) = 0;
                }

                if (*(a1 + 118) == 1)
                {
                  if (*(a1 + 116))
                  {
                    v18 = "UnExpected Status received!!";
                    goto LABEL_77;
                  }

                  sub_297E4E0B0(1, a1 + 8492, 6u, 4u, "Chunked Write Frame Success Status received!!");
                  v40 = *(a1 + 112);
                  *(a1 + 108) -= v40;
                  *(a1 + 118) = 0;
                }

                else
                {
                  v40 = *(a1 + 112);
                }

                v56 = *(a1 + 104);
                v57 = *(a1 + 100) + v40;
                *(a1 + 100) = v57;
                *(a1 + 104) = v56 - v40;
                v58 = *(a1 + 4);
                if (!*(a1 + 40) && v58 == v57)
                {
                  sub_297E50DB0(1, a1 + 8492, 6u, 4u, "Regular FW Update Complete, Offset");
                  v4 = 0;
                  goto LABEL_125;
                }

                if (v58 != v57)
                {
                  if (v56 == v40)
                  {
                    v62 = *(a1 + 40);
                    sub_297E50DB0(1, a1 + 8492, 6u, 4u, "Download Completed (Degraded FW)");
                    v4 = 0;
                    *(a1 + 40) = 0;
                    goto LABEL_143;
                  }

                  goto LABEL_142;
                }

                v43 = "Start of Degraded FW Update, Offset";
                v59 = a1 + 8492;
LABEL_141:
                sub_297E50DB0(1, v59, 6u, 4u, v43);
                goto LABEL_142;
              }

              goto LABEL_40;
            }

LABEL_48:
            if (!*(a1 + 32) || !*(a1 + 24))
            {
              goto LABEL_142;
            }

            v20 = *(a1 + 8492);
            v21 = *(a2 + 8);
            v22 = (v6 - 5);
LABEL_51:
            phOsalNfc_MemCopy();
            v4 = 0;
            *(a1 + 32) = v22;
            goto LABEL_143;
          }

          if (v10 != 162)
          {
            if (v10 == 167)
            {
              goto LABEL_48;
            }

LABEL_40:
            v18 = "phDnldNfc_UpdateRsp:Unknown command id passed, while receive!!";
LABEL_77:
            v35 = a1 + 8492;
LABEL_78:
            sub_297E4E0B0(1, v35, 6u, 1u, v18);
            goto LABEL_79;
          }

          v29 = *(a2 + 8);
          if (*(v29 + 1) == 4 && *(v29 + 2) == 48)
          {
            *(a1 + 8508) = 0;
            if (v11 && *(v11 + 56) == 2)
            {
              sub_297E4E0B0(1, a1 + 8492, 6u, 2u, "Memory Read PH_DL_STATUS_READFLASH_PROTECTED_ERROR !!");
              v30 = *(a1 + 8492);
              v31 = *(a1 + 24);
              v32 = *(a1 + 100);
              v33 = *(a2 + 8);
              phOsalNfc_MemCopy();
              *(a1 + 32) = 1;
              *(a1 + 104) = 0;
              v4 = 48;
              goto LABEL_143;
            }

            v41 = *(a1 + 8484);
            if (v41 > 3)
            {
              if (v41 == 4)
              {
                *(a1 + 8484) = 5;
                v64 = *(a1 + 96);
                sub_297E50DB0(1, a1 + 8492, 6u, 4u, "M2 FAILED ADDRESS");
                ++*(a1 + 96);
                v43 = "M2 Fallback NEXT ADDRESS";
                goto LABEL_140;
              }

              if (v41 == 5)
              {
                v55 = *(a1 + 96);
                sub_297E50DB0(1, a1 + 8492, 6u, 4u, "phDnldNfc_UpdateRsp:Fallback Error Address");
                ++*(a1 + 96);
                v43 = "phDnldNfc_UpdateRsp:Fallback CONTINUED NEXT ADDRESS";
                goto LABEL_140;
              }
            }

            else
            {
              if (v41 == 2)
              {
                *(a1 + 8484) = 3;
                v63 = *(a1 + 96);
                sub_297E50DB0(1, a1 + 8492, 6u, 4u, "FIRST_SUCC FAILED ADDRESS");
                *(a1 + 96) = *(a1 + 4284) + 409;
                v43 = "FIRST_SUCC NEXT ADDRESS";
                goto LABEL_140;
              }

              if (v41 == 3)
              {
                *(a1 + 8484) = 5;
                v42 = *(a1 + 96);
                sub_297E50DB0(1, a1 + 8492, 6u, 4u, "M1 FAILED ADDRESS");
                ++*(a1 + 96);
                v43 = "M1 Fallback NEXT ADDRESS";
LABEL_140:
                v59 = a1 + 8492;
                goto LABEL_141;
              }
            }

            *(a1 + 96) += 546;
            sub_297E50DB0(1, a1 + 8492, 6u, 4u, "phDnldNfc_UpdateRsp:CHUNK READ ERROR ADDRESS");
            v4 = 0;
            *(a1 + 8484) = 1;
            goto LABEL_143;
          }

          v34 = *(a1 + 8484);
          if (v34 <= 2)
          {
            if (v34 == 1)
            {
              *(a1 + 8484) = 2;
              v46 = *(a1 + 96) - 546;
              *(a1 + 96) = v46;
              *(a1 + 4284) = v46;
              sub_297E50DB0(1, a1 + 8492, 6u, 4u, "phDnldNfc_UpdateRsp:First Success READ Address");
              *(a1 + 96) = *(a1 + 4284) + 273;
              v37 = "phDnldNfc_UpdateRsp:First Success READ, Midpoint0 read NEXT ADDRESS";
            }

            else
            {
              if (v34 != 2)
              {
                goto LABEL_108;
              }

              *(a1 + 8484) = 4;
              v36 = *(a1 + 96);
              sub_297E50DB0(1, a1 + 8492, 6u, 4u, "FIRST_SUCC,2nd SUCCESS ADDRESS");
              *(a1 + 96) = *(a1 + 4284) + 136;
              v37 = "FIRST_SUCC NEXT dwAddr";
            }
          }

          else if (v34 == 3)
          {
            v44 = *(a1 + 96);
            sub_297E50DB0(1, a1 + 8492, 6u, 4u, "phDnldNfc_UpdateRsp:M1 Success Address");
            *(a1 + 8484) = 5;
            *(a1 + 96) = *(a1 + 4284) + 273;
            v37 = "phDnldNfc_UpdateRsp:M1 NEXT Address";
          }

          else
          {
            if (v34 != 4)
            {
              if (v34 == 5)
              {
                if (!*(a1 + 8508))
                {
                  *(a1 + 8508) = *(a1 + 96);
                }

                sub_297E50DB0(1, a1 + 8492, 6u, 4u, "phDnldNfc_UpdateRsp:FOUND START ADDRESS");
                *(a1 + 104) = *(a1 + 120) - *(a1 + 96) + 1;
                *(a1 + 8484) = 0;
              }

LABEL_108:
              if (v65)
              {
                v47 = *(a2 + 8);
                if (*(v65 + 56) == 2 && *(v47 + 2))
                {
                  sub_297E50DB0(1, a1 + 8492, 6u, 2u, "Memory Read Error!!,status");
                  v4 = 48;
                  **(a1 + 24) = 48;
                  *(a1 + 32) = 1;
LABEL_125:
                  *(a1 + 104) = 0;
                  goto LABEL_143;
                }
              }

              else
              {
                v47 = *(a2 + 8);
              }

              v48 = *(v47 + 4);
              v49 = *(a1 + 8484);
              if (v48 == *(a1 + 112))
              {
                if (!*(a1 + 8484))
                {
                  v50 = *(a1 + 8492);
                  v51 = *(a1 + 24) + *(a1 + 100);
                  v52 = *(v47 + 4);
                  phOsalNfc_MemCopy();
                  v4 = 0;
                  v53 = *(a1 + 114) + v48;
                  *(a1 + 114) = v53;
                  *(a1 + 32) = v53;
                  v54 = *(a1 + 112);
                  *(a1 + 104) -= v54;
                  *(a1 + 96) = vadd_s32(*(a1 + 96), vdup_n_s32(v54));
                  goto LABEL_143;
                }

                goto LABEL_142;
              }

              if (*(a1 + 8484))
              {
                goto LABEL_142;
              }

              v18 = "Desired Length bytes not received!!";
              goto LABEL_77;
            }

            *(a1 + 8484) = 5;
            v45 = *(a1 + 96);
            sub_297E50DB0(1, a1 + 8492, 6u, 4u, "phDnldNfc_UpdateRsp:M2 Success, 3rd SUCCESS Address");
            *(a1 + 96) = *(a1 + 4284);
            v37 = "M2 NEXT dwAddr";
          }

          sub_297E50DB0(1, a1 + 8492, 6u, 4u, v37);
          *(a1 + 112) = 0;
          goto LABEL_108;
        }

        v19 = *(*(a2 + 8) + 2);
        if (v19 <= 0x30)
        {
          if (!*(*(a2 + 8) + 2) || v19 == 48)
          {
            goto LABEL_17;
          }
        }

        else
        {
          switch(v19)
          {
            case '3':
              v18 = "CHIPID_OR_MASK_ERROR:Wrong ChipId or ChipMask in First Frame";
              goto LABEL_77;
            case '2':
              v18 = "MISSING_CERTIFICATE:Missing certificate (missing 0xC1 frame)";
              goto LABEL_77;
            case '1':
              v18 = "EDL_CERT_ERROR:Error during Cert frame processing";
              goto LABEL_77;
          }
        }

        v23 = a1 + 8492;
        goto LABEL_55;
      }

      sub_297E4E0B0(0, &v65, 6u, 1u, "Invalid frame payload length received");
      sub_297E4DFAC(0, &v65, 6u, 5u, "phDnldNfc_DnldVldtCrcRcvd");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "phDnldNfc_DnldValidateRxdPkt:Download Command Request Failed!!");
    }

    v4 = 255;
  }

  else
  {
    v4 = 1;
    sub_297E4E0B0(3, 0, 6u, 1u, "Invalid Input Parameters!!");
  }

LABEL_6:
  sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_DnldValidateRxdPkt");
  return v4;
}

uint64_t sub_297F0F6AC(uint64_t a1, uint64_t a2)
{
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  sub_297E4E1B4(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
  if (!a1)
  {
    return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
  }

  v4 = 0;
  v5 = 0;
  v6 = (a1 + 8438);
  v7 = (a1 + 4288);
  do
  {
    v8 = *(&unk_2A18BDDC0 + 14 * v5 + 12);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v8 != a1);
  if (v8 != a1)
  {
    return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
  }

  v10 = *(a1 + 8496);
  if (!v10)
  {
    return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
  }

  if (!a2 || (v11 = *(a2 + 8)) == 0 || v11 != &v7[*v6] || !*(a2 + 16) || *a2)
  {
    v12 = 1;
    goto LABEL_12;
  }

  sub_297E67EB0(*(a1 + 48), &v48);
  v22 = *v6 + *(a2 + 16);
  *v6 = v22;
  if (v22 <= 1u)
  {
    *(a1 + 8442) = 2 - v22;
    v23 = *(a1 + 48);
LABEL_30:
    v24 = phTmlNfc_Read();
    if (v24 == 13)
    {
      return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
    }

    v12 = v24;
    goto LABEL_58;
  }

  v25 = *v7;
  if (*a1 != 162)
  {
    if (!*v7)
    {
      v26 = *(a1 + 4289);
      if (*(a1 + 4289))
      {
        goto LABEL_63;
      }
    }

LABEL_56:
    sub_297E4E880(1, a1 + 8492, 6u, 2u, "phDnldNfc_RecvDnldPkt:corrupted dnld packet rxd and dropped", a1 + 4288);
    v32 = *(a1 + 48);
    phTmlNfc_ReadAbort();
    v33 = *(a1 + 48);
    phTmlNfc_FlushTxRxBuffers();
    *v6 = 0;
    *(a1 + 8442) = 0;
    v34 = *(a1 + 48);
    v35 = phTmlNfc_Read();
    if (v35 == 13)
    {
      return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
    }

    v12 = v35;
    sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "phDnldNfc_RecvDnldPkt: dnld packet Read Request Failure");
LABEL_58:
    sub_297E96818(*(a1 + 48), 195);
    goto LABEL_59;
  }

  if (v25 > 3)
  {
    goto LABEL_56;
  }

  v26 = *(a1 + 4289);
LABEL_63:
  v36 = (v26 | (v25 << 8)) + 4;
  v37 = v36 - v22;
  if (v36 < v22)
  {
    v37 = 0;
  }

  *(a1 + 8442) = v37;
  if (v37 > 0x22Au)
  {
    v12 = 255;
    v41 = "Invalid length : Received size greater than maximum download frame size!!";
  }

  else
  {
    if (v36 == v22)
    {
      *(a2 + 8) = v7;
      *(a2 + 16) = v22;
      *(a1 + 8442) = 0;
      v12 = sub_297F0EA10(a1, a2);
      if (v12 != 48 && v12)
      {
LABEL_59:
        if (v12 <= 0x30 && ((1 << v12) & 0x1000000002001) != 0)
        {
          return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
        }

        goto LABEL_12;
      }

      if (sub_297F0E83C(a1) != 13)
      {
        if (v12 == 48)
        {
          *a2 = 48;
          *(v10 + 5996) = 4;
          sub_297E57FC4(v10, 8, a2);
          if (!v48)
          {
            return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
          }

          v43 = 0;
          v44 = 0;
          do
          {
            v40 = *(&unk_2A18BDDC0 + 14 * v44 + 4);
            if (v43)
            {
              break;
            }

            v43 = 1;
            v44 = 1;
          }

          while (v40 != v10);
LABEL_76:
          if (v40 == v10 && !*(v10 + 5992) && !sub_297E56AFC(*(v10 + 6528)))
          {
            sub_297F0FCA0(v10);
          }

          return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
        }

        if (v12)
        {
          goto LABEL_59;
        }
      }

      *(v10 + 5996) = 4;
      sub_297E57FC4(v10, 8, a2);
      if (!v48)
      {
        return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
      }

      v38 = 0;
      v39 = 0;
      do
      {
        v40 = *(&unk_2A18BDDC0 + 14 * v39 + 4);
        if (v38)
        {
          break;
        }

        v38 = 1;
        v39 = 1;
      }

      while (v40 != v10);
      goto LABEL_76;
    }

    if (v36 > v22)
    {
      v42 = *(a1 + 48);
      goto LABEL_30;
    }

    v12 = 1;
    v41 = "Critical failure in Download!!";
  }

  sub_297E4E0B0(1, a1 + 8492, 6u, 1u, v41);
LABEL_12:
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(&unk_2A18BDDC0 + 14 * v14 + 12);
    if (v13)
    {
      break;
    }

    v13 = 1;
    v14 = 1;
  }

  while (v15 != a1);
  if (v15 == a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    if (v15 == a1)
    {
      v17 = *(a2 + 8);
      if (v17)
      {
        if (*(v16 + 8438) <= 2u)
        {
          v18 = *(a2 + 16);
          if ((v18 - 3) < 0xFFFFFFFE || *a2)
          {
LABEL_24:
            sub_297E4E880(1, v16 + 8492, 6u, 2u, "phDnldNfc_RecvDnldPkt:corrupted packet rxd and dropped", v17);
            v19 = *(v16 + 48);
            phTmlNfc_ReadAbort();
            v20 = *(v16 + 48);
            phTmlNfc_FlushTxRxBuffers();
            *(v16 + 8438) = 0;
            *(v16 + 8442) = 0;
            v21 = *(v16 + 48);
            if (phTmlNfc_Read() != 13)
            {
              sub_297E4E0B0(1, v16 + 8492, 6u, 1u, "phDnldNfc_RecvDnldPkt: Read Request Failure");
              sub_297E96818(*(v16 + 48), 195);
            }

            return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
          }

          if (*v16 == 162)
          {
            if (*v17 >= 4u)
            {
              goto LABEL_24;
            }
          }

          else if (*v17 || v18 == 2 && !v17[1])
          {
            goto LABEL_24;
          }
        }
      }
    }
  }

  if (v12 == 132 || v12 == 147)
  {
    v28 = v12;
  }

  else
  {
    v28 = 255;
  }

  if (sub_297F0E83C(v16) != 13)
  {
    sub_297E4E0B0(1, v10 + 6524, 6u, 1u, "phDnldNfc_RecvDnldPkt: Read Request Failure");
    v28 = 255;
  }

  LOWORD(v45) = v28;
  v46 = 0;
  LOWORD(v47) = 0;
  *(v10 + 5996) = 4;
  sub_297E57FC4(v10, 9, &v45);
  v29 = 0;
  v30 = 0;
  do
  {
    v31 = *(&unk_2A18BDDC0 + 14 * v30 + 4);
    if (v29)
    {
      break;
    }

    v29 = 1;
    v30 = 1;
  }

  while (v31 != v10);
  if (v31 == v10 && *(v10 + 5994) == 1)
  {
    *(v10 + 5994) = 0;
    *(v10 + 5996) = 5;
    sub_297E57FC4(v10, 9, 0);
  }

  return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldPkt");
}

uint64_t sub_297F0FCA0(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  sub_297E4E1B4(2, a1, 3u, 5u, "phNciMuxNfc_InitiateNextPkt");
  sub_297E57FC4(a1, 7, v3);
  return sub_297E4DFAC(2, a1, 3u, 5u, "phNciMuxNfc_InitiateNextPkt");
}

uint64_t sub_297F0FD1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 56);
    if (v5)
    {
      v6 = v5 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      result = sub_297E5A304(*(result + 8492), v5);
    }

    v7 = *(v4 + 8464);
    if (v7)
    {
      v8 = *(v4 + 8472);

      return v7(v8, a3, v4 + 24);
    }
  }

  return result;
}

uint64_t sub_297F0FD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_297E4E1B4(4, a1, 3u, 5u, "phNciNfc_DnldCoreIfTxRx");
  v8 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        BYTE14(v13) = 1;
        v9 = *(a1 + 8492);
        phOsalNfc_MemCopy();
        v10 = *(a1 + 8492);
        phOsalNfc_MemCopy();
        *(a1 + 117) = 1;
        *(a1 + 4280) = 0;
        v8 = sub_297E57CC8(*(a1 + 8496), 4, v12, sub_297F0FD1C, a1);
        if (v8 == 13)
        {
          *(a1 + 8464) = a3;
          *(a1 + 8472) = a4;
        }
      }
    }
  }

  sub_297E4DFAC(4, a1, 3u, 5u, "phNciNfc_DnldCoreIfTxRx");
  return v8;
}

uint64_t sub_297F0FEB0(uint64_t a1, unsigned __int8 *a2)
{
  sub_297E4E1B4(3, a1, 6u, 5u, "phDnldNfc_CoreSendCb");
  if (a2)
  {
    v4 = *(a2 + 1);
    if (v4 <= 1)
    {
      sub_297E5A3A8(*(&unk_2A18BDDC0 + 14 * v4), 0);
    }

    if (a1)
    {
      if (*a2 == 179)
      {
        sub_297E4E0B0(1, a1 + 8492, 6u, 2u, "SPMI Nack");
      }

      else if (*a2)
      {
        sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "Tml Write error!!");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 8492, 6u, 4u, "Send Success");
      }

      sub_297E57FC4(*(a1 + 8496), 7, a2);
      goto LABEL_14;
    }
  }

  else if (a1)
  {
    sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "Invalid pInfo received from TML!!");
    goto LABEL_14;
  }

  sub_297E4E0B0(3, 0, 6u, 2u, "phDnldNfc_CoreSendCb:Nci context cleared, received send callback!!");
LABEL_14:

  return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_CoreSendCb");
}

uint64_t sub_297F10010(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  sub_297E4E1B4(3, a2, 6u, 5u, "phDnldNfc_RspTimeOutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 12);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 != a2)
  {
    goto LABEL_6;
  }

  v8 = a2[1062];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(&unk_2A18BDDC0 + 14 * v10 + 4);
    if (v9)
    {
      break;
    }

    v9 = 1;
    v10 = 1;
  }

  while (v11 != v8);
  if (v11 == v8)
  {
    sub_297E67EB0(a2[6], &v16);
    v12 = a2[1062];
    sub_297E5A304(*(v12 + 6524), a1);
    if (a2[7] == a1)
    {
      *(v12 + 5996) = 4;
      sub_297E57FC4(v12, 10, 0);
      if (v16)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(&unk_2A18BDDC0 + 14 * v14 + 4);
          if (v13)
          {
            break;
          }

          v13 = 1;
          v14 = 1;
        }

        while (v15 != v12);
        if (v15 == v12 && !*(v12 + 5992) && !sub_297E56AFC(*(v12 + 6528)))
        {
          sub_297F0FCA0(v12);
        }
      }
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(3, a2, 6u, 1u, "phDnldNfc_RspTimeOutCb: Invalid or NULL pDnldCoreCtx or pNciHandle");
  }

  return sub_297E4DFAC(3, a2, 6u, 5u, "phDnldNfc_RspTimeOutCb");
}

uint64_t sub_297F101A8(uint64_t a1)
{
  v20 = 0;
  v21 = a1;
  v19 = 0;
  sub_297E4E1B4(0, &v21, 6u, 5u, "phDnldEseNfc_CoreInit");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v21)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      sub_297E9F51C(v21, &v19);
LABEL_11:
      v6 = 1;
      goto LABEL_12;
    }
  }

  v5 = *(v4 + 2);
  sub_297E9F51C(v21, &v19);
  if (v5 > 1)
  {
    goto LABEL_11;
  }

  sub_297E8FA74(v5, &v20);
  v6 = 1;
  if (v21)
  {
    v7 = v20;
    if (v20)
    {
      *v20 = v21;
      *(v7 + 1368) = v5;
      v8 = v19;
      *(v7 + 1376) = v19;
      *(v7 + 1384) = 1;
      sub_297F0AC64(v8, v7);
      sub_297E5B294(v19);
      v9 = *v20;
      sub_297E966F4(0, &v21, 6u, 4u, "####Primary NFCC, DriverHandle");
      sub_297E966F4(0, &v21, 6u, 4u, "####Primary NFCC, DOWNLOAD-ESE-CORE context");
      v10 = *(v20 + 342);
      v11 = phOsalNfc_Timer_Create();
      if (v11 != 0xFFFFFFFFFFFFLL && (v12 = v11) != 0)
      {
        sub_297E50EBC(0, &v21, 6u, 4u, "phDnldEseNfc_CoreInit : Timer Create dwRspTimerId!");
        v15 = v20;
        v20[6] = v12;
        v16 = *(v15 + 1368);
        v17 = phOsalNfc_Timer_Create();
        if (v17 != 0xFFFFFFFFFFFFLL)
        {
          v18 = v17;
          if (v17)
          {
            sub_297E50EBC(0, &v21, 6u, 4u, "phDnldEseNfc_CoreInit : Timer Create dwCrdtTimerId!");
            v6 = 0;
            v20[7] = v18;
            goto LABEL_12;
          }
        }

        v13 = "phDnldEseNfc_CoreInit : Dnld Ese Credit Timer Create failed!!";
      }

      else
      {
        v13 = "phDnldEseNfc_CoreInit : Dnld Ese Rsp Timer Create failed!!";
      }

      sub_297E4E0B0(0, &v21, 6u, 1u, v13);
      v6 = 12;
    }
  }

LABEL_12:
  sub_297E4DFAC(0, &v21, 6u, 5u, "phDnldEseNfc_CoreInit");
  return v6;
}

uint64_t sub_297F103BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v17 = 0;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  sub_297E4E1B4(4, a1, 6u, 5u, "phNciNfc_DnldEseCoreIfTxOnly");
  v8 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        sub_297E9F51C(*a1, &v18);
        BYTE14(v16) = 1;
        v9 = *(a1 + 1368);
        phOsalNfc_SetMemory();
        v10 = *(a1 + 1368);
        phOsalNfc_SetMemory();
        v11 = *(a1 + 1368);
        phOsalNfc_MemCopy();
        v12 = *(a1 + 1368);
        phOsalNfc_MemCopy();
        v8 = sub_297E57CC8(v18, 5, v15, sub_297F1053C, a1);
        if (v8 == 13)
        {
          *(a1 + 80) = a3;
          *(a1 + 88) = a4;
          v13 = *(a1 + 48);
          if (v13)
          {
            if (v13 != 0xFFFFFFFFFFFFLL)
            {
              if (*(a1 + 16) == 1)
              {
                sub_297E5A304(*(a1 + 1368), v13);
                *(a1 + 16) = 0;
              }

              v8 = 13;
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(4, a1, 6u, 5u, "phNciNfc_DnldEseCoreIfTxOnly");
  return v8;
}

uint64_t sub_297F1053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(4, a1, 6u, 5u, "phNciNfc_DnldEseCoreIfTxOnlyComplete");
  if (a1)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = v5 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      sub_297E5A304(*(a1 + 1368), v5);
      *(a1 + 16) = 0;
    }

    v7 = *(a1 + 56);
    if (v7 && v7 != 0xFFFFFFFFFFFFLL)
    {
      sub_297E5A304(*(a1 + 1368), v7);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v8(*(a1 + 88), a3, a1 + 768);
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(&unk_2A18BDDC0 + 14 * v10 + 8);
        if (v9)
        {
          break;
        }

        v9 = 1;
        v10 = 1;
      }

      while (v11 != a1);
      if (v11 == a1 && !*(a1 + 264))
      {
        *(a1 + 80) = 0;
      }
    }
  }

  else
  {
    sub_297E4E0B0(4, 0, 6u, 1u, "phNciNfc_DnldEseCoreIfTxOnlyComplete:Invalid Download Ese Context!!");
  }

  return sub_297E4DFAC(4, a1, 6u, 5u, "phNciNfc_DnldEseCoreIfTxOnlyComplete");
}

uint64_t sub_297F10660(uint64_t a1, char a2)
{
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_UpdateCredits");
  v4 = *(a1 + 1376);
  if (v4)
  {
    *(a1 + 29) += a2;
    if (*(a1 + 17) == 1)
    {
      sub_297E5A304(*(a1 + 1368), *(a1 + 56));
      *(a1 + 17) = 0;
      *(v4 + 5996) = 5;
      sub_297E57FC4(v4, 11, 0);
    }
  }

  return sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_UpdateCredits");
}

uint64_t sub_297F10718(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_HciDeleteList");
  if (a1)
  {
    *(a1 + 232 + 4 * a2) = 0;
    v4 = *(a1 + 152 + 8 * a2);
    v5 = a2;
    if (v4)
    {
      v6 = *(v4 + 296);
      if (v6)
      {
        do
        {
          v7 = v6;
          v8 = *(a1 + 1368);
          phOsalNfc_FreeMemory();
          v6 = *(v7 + 296);
        }

        while (v6);
      }

      else
      {
        v9 = *(a1 + 152 + 8 * a2);
      }

      v10 = *(a1 + 1368);
      phOsalNfc_FreeMemory();
      *(a1 + 152 + 8 * v5) = 0;
      *(a1 + 2 * v5 + 216) = 1;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 1368, 6u, 4u, "phDnldEseNfc_HciDeleteList:List is empty");
      *(a1 + 2 * a2 + 216) = 1;
    }

    *(a1 + 232 + 4 * v5) = 0;
  }

  else
  {
    sub_297E4E0B0(4, 0, 6u, 1u, "phDnldEseNfc_HciDeleteList:Invalid Dnld Ese Core context!");
  }

  return sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_HciDeleteList");
}

uint64_t sub_297F10840(void *a1, unsigned __int8 *a2)
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = -1;
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_ProcessApduPipeEvts");
  if (!a2)
  {
    goto LABEL_39;
  }

  v4 = a1[172];
  if (v4)
  {
    v5 = a2[1];
    if (v5 != 2)
    {
      if (v5 == 17)
      {
        sub_297E4E0B0(1, (a1 + 171), 6u, 4u, "phDnldEseNfc_ProcessApduPipeEvts:EVENT_WTX_REQ received");
        v7 = a1[83];
        if (!v7)
        {
          sub_297E4E0B0(1, (a1 + 171), 6u, 4u, "phDnldEseNfc_ProcessApduPipeEvts:WTX Call Back not defined by App");
          goto LABEL_39;
        }

        v8 = *(a2 + 1);
        if (v8)
        {
          v9 = sub_297EEAB9C(*(a1 + 342), *v8);
          if (v9 <= 0x7CF)
          {
            v10 = v9 + 400;
          }

          else
          {
            v10 = v9;
          }

          v7 = a1[83];
        }

        else
        {
          v10 = 2000;
        }

        *(a1 + 24) = v10;
        *(a1 + 8) = v10;
        v7(*a1, a1[84], a1[1], a1 + 12, 74);
        v13 = a1[6];
        if (v13 == 0xFFFFFFFFFFFFLL)
        {
          goto LABEL_39;
        }

        sub_297E5A304(*(a1 + 342), v13);
        *(a1 + 16) = 0;
        v14 = *(a1 + 342);
        v15 = a1[6];
        v16 = *(a1 + 8);
        v4 = phOsalNfc_Timer_Start();
        if (!v4)
        {
          *(a1 + 16) = 1;
          goto LABEL_40;
        }

        v11 = "phDnldEseNfc_ProcessApduPipeEvts : Response Timer Start failed!!!";
      }

      else
      {
        if (v5 != 16)
        {
          goto LABEL_39;
        }

        if (a1[8])
        {
          v6 = *(a1 + 18);
          if (v6)
          {
            if (v6 < *(a2 + 8))
            {
              sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessApduPipeEvts:Could not copy entire received data");
              v4 = 8;
              goto LABEL_40;
            }

            v17 = *(a1 + 342);
            v18 = *(a2 + 1);
            phOsalNfc_MemCopy();
            *(a1 + 18) = *(a2 + 8);
            *(v4 + 5996) = 5;
            sub_297E57FC4(v4, 8, a2);
            v19 = 0;
            v20 = 0;
            do
            {
              v21 = *(&unk_2A18BDDC0 + 14 * v20 + 4);
              if (v19)
              {
                break;
              }

              v19 = 1;
              v20 = 1;
            }

            while (v21 != v4);
            if (v21 == v4 && !*(v4 + 5992) && !sub_297E56AFC(*(v4 + 6528)))
            {
              sub_297F0FCA0(v4);
            }

LABEL_39:
            v4 = 0;
            goto LABEL_40;
          }
        }

        v11 = "phDnldEseNfc_ProcessApduPipeEvts:Invalid User response buffer or length";
        v4 = 1;
      }

      sub_297E4E0B0(1, (a1 + 171), 6u, 1u, v11);
      goto LABEL_40;
    }

    if (sub_297F10D04(a1, *(a1 + 197), &v24))
    {
      v4 = 1;
      goto LABEL_40;
    }

    if (a1[81] && v24 == *a2)
    {
      sub_297E96818(*a1, 217);
      sub_297E5A304(*(a1 + 342), a1[6]);
      *(a1 + 16) = 0;
      sub_297E5A304(*(a1 + 342), a1[7]);
      *(a1 + 17) = 0;
      *(v4 + 5980) = 0;
      *(v4 + 5972) = 0;
      sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessApduPipeEvts: OS Reset Event received");
      phDnldEseNfc_ProcOsResetNtf(a1, 217, 0);
    }

    else if (a1[85])
    {
      v12 = *(a1 + 342);
      phOsalNfc_SetMemory();
      LODWORD(v25[0]) = sub_297E9EFAC(*(a1 + 342), *a2);
      (a1[85])(*a1, a1[86], 27, a1[1], v25, 217);
    }

    else
    {
      v22 = *a2;
      sub_297E50DB0(1, (a1 + 171), 6u, 2u, "phDnldEseNfc_ProcessApduPipeEvts: Ignoring SE OS Reset, PipeID");
    }

    goto LABEL_39;
  }

LABEL_40:
  sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_ProcessApduPipeEvts");
  return v4;
}

uint64_t sub_297F10BCC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(4, a2, 6u, 5u, "phDnldEseNfc_RspTimeOutCb");
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 8);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a2);
    if (v6 == a2)
    {
      v8 = *(a2 + 1376);
      if (v8)
      {
        if (*(a2 + 48) == a1)
        {
          sub_297E5A304(*(a2 + 1368), a1);
          *(a2 + 16) = 0;
          *(v8 + 5996) = 5;
          sub_297E57FC4(v8, 10, 0);
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = *(&unk_2A18BDDC0 + 14 * v10 + 4);
            if (v9)
            {
              break;
            }

            v9 = 1;
            v10 = 1;
          }

          while (v11 != v8);
          if (v11 == v8 && !*(v8 + 5992) && !sub_297E56AFC(*(v8 + 6528)))
          {
            sub_297F0FCA0(v8);
          }
        }
      }
    }
  }

  return sub_297E4DFAC(4, a2, 6u, 5u, "phDnldEseNfc_RspTimeOutCb");
}

uint64_t sub_297F10D04(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_MultiOSGetPipeId");
  if (a3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        a2 = 0;
        v6 = a1[144];
        goto LABEL_13;
      }

      if (a2 == 3)
      {
        a2 = 0;
        v6 = a1[148];
        goto LABEL_13;
      }
    }

    else
    {
      if (!a2)
      {
        v6 = a1[136];
        goto LABEL_13;
      }

      if (a2 == 1)
      {
        a2 = 0;
        v6 = a1[140];
LABEL_13:
        *a3 = v6;
        goto LABEL_14;
      }
    }

    *a3 = -1;
    a2 = 1;
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(4, a1, 6u, 1u, "phDnldEseNfc_MultiOSGetPipeId:Invalid Context or Pipe Id");
  }

LABEL_14:
  sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_MultiOSGetPipeId");
  return a2;
}

uint64_t sub_297F10DF8(void *a1, unsigned __int8 *a2)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_ProcessConnPipeEvts");
  if (!a2 || !*(a2 + 1))
  {
    goto LABEL_48;
  }

  LODWORD(v37) = sub_297E9EFAC(*(a1 + 342), *a2);
  v4 = a2[1];
  if (v4 <= 0x12)
  {
    if (v4 != 16)
    {
      if (v4 == 18)
      {
        v5 = *(a2 + 1);
        if (*v5 != 129)
        {
          sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed, error in packet");
          LOWORD(v15) = 0;
          LOBYTE(v14) = 0;
          v6 = 255;
          goto LABEL_70;
        }

        v6 = 0;
        v7 = v5[1];
        DWORD2(v35) = v7;
        *&v35 = v5 + 2;
        if (v7 <= 0xFE)
        {
          v8 = 254 - v7;
        }

        else
        {
          v8 = 0;
        }

        if (v7 - 17 <= 0xFFFFFFF3)
        {
          sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed AID Length Evaluation");
          v5 = *(a2 + 1);
          v6 = 255;
        }

        if (v5[-v8] != 130)
        {
          sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed, PARAMETER Field is not available");
          LOWORD(v15) = 0;
          v6 = 255;
          v14 = -v8;
          goto LABEL_70;
        }

        v9 = 1 - v8;
        v10 = (1 - v8);
        if ((v5[v10] & 0x80000000) == 0)
        {
          v11 = (1 - v8);
          v12 = 2;
LABEL_15:
          v13 = v12 - v8;
          if (v11 >= 0xFE)
          {
            LOBYTE(v14) = v9;
          }

          else
          {
            LOBYTE(v14) = v13;
          }

          if (v11 >= 0xFE)
          {
            v10 = 0;
          }

          v15 = v5[v10];
LABEL_21:
          DWORD2(v36) = v15;
LABEL_69:
          *&v36 = *(a2 + 1) + v14;
LABEL_70:
          if (*(a2 + 8) != (v15 + v14))
          {
            DWORD2(v36) = 0;
            DWORD2(v35) = 0;
            sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed,BER TLV parsing, Length Mismatch");
            v6 = 255;
          }

          v34 = a1[85];
          if (v34)
          {
            v34(*a1, a1[86], 2, a1[1], &v35, v6);
            goto LABEL_49;
          }

LABEL_74:
          sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Se notification callback is NULL");
          v6 = 255;
          goto LABEL_49;
        }

        if (v5[v10] == 130)
        {
          v29 = 2 - v8;
          v30 = (2 - v8);
          v31 = v30 >= 0xFE;
          if (v30 >= 0xFE)
          {
            v32 = 2 - v8;
          }

          else
          {
            v32 = 3 - v8;
          }

          if (v31)
          {
            v29 = 0;
          }

          v33 = v5[v29];
          if (v32 >= 0xFEu)
          {
            LOBYTE(v14) = v32;
          }

          else
          {
            LOBYTE(v14) = v32 + 1;
          }

          if (!v33)
          {
            sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed Parsing BER TLV Two BYTE");
            LOWORD(v15) = 0;
            v6 = 255;
            goto LABEL_69;
          }

          if (v32 >= 0xFEu)
          {
            v32 = 0;
          }

          v15 = v5[v32] | (v33 << 8);
          goto LABEL_21;
        }

        if (v5[v10] == 129)
        {
          v9 = 2 - v8;
          v10 = (2 - v8);
          if (v5[v10] < 0)
          {
            v11 = (2 - v8);
            v12 = 3;
            goto LABEL_15;
          }

          v28 = "phDnldEseNfc_ProcessConnPipeEvts:Failed Parsing BER TLV One BYTE";
        }

        else
        {
          v28 = "phDnldEseNfc_ProcessConnPipeEvts:Failed Parsing BER TLV";
        }

        sub_297E4E0B0(1, (a1 + 171), 6u, 1u, v28);
        LOWORD(v15) = 0;
        v6 = 255;
        LOBYTE(v14) = v9;
        goto LABEL_69;
      }

      goto LABEL_29;
    }

    v19 = *(a2 + 8);
    if (*(a2 + 8))
    {
      v20 = *(a2 + 1);
    }

    else
    {
      v20 = 0;
    }

    *&v36 = v20;
    DWORD2(v36) = v19;
    DWORD2(v35) = 0;
    *&v35 = 0;
    v22 = a1[85];
    if (!v22)
    {
      goto LABEL_74;
    }

    v23 = a1[86];
    v24 = *a1;
    v25 = a1[1];
    v18 = 3;
    goto LABEL_47;
  }

  if (v4 != 19)
  {
    if (v4 != 32)
    {
LABEL_29:
      sub_297E50DB0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessConnPipeEvts: Unknown HCI Event, Dropped Ins");
LABEL_48:
      v6 = 0;
      goto LABEL_49;
    }

    v16 = *(a2 + 8);
    if (*(a2 + 8) && (v17 = *(a2 + 1)) != 0)
    {
      if (*v17 == 1)
      {
        v18 = 23;
      }

      else if (*v17)
      {
        sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessConnPipeEvts:SE restricted mode Unknown Event\n");
        v17 = *(a2 + 1);
        v16 = *(a2 + 8);
        v18 = 255;
      }

      else
      {
        LODWORD(v37) = 255;
        v18 = 4;
      }

      *&v36 = v17;
      DWORD2(v36) = v16;
      DWORD2(v35) = 0;
      *&v35 = 0;
    }

    else
    {
      *&v35 = 0;
      DWORD2(v35) = 0;
      *&v36 = 0;
      v18 = 4;
      LODWORD(v37) = 255;
      DWORD2(v36) = 0;
    }

    v22 = a1[85];
    if (!v22)
    {
      goto LABEL_74;
    }

    v23 = a1[86];
    v24 = *a1;
    v25 = a1[1];
LABEL_47:
    v22(v24, v23, v18, v25, &v35, 0);
    goto LABEL_48;
  }

  *&v35 = 0;
  DWORD2(v35) = 0;
  *&v36 = 0;
  DWORD2(v36) = 0;
  v21 = a1[85];
  if (v21)
  {
    v21(*a1, a1[86], 17, a1[1], &v35, 0);
    v6 = 0;
  }

  else
  {
    sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Se notification callback is NULL");
    v6 = 255;
  }

  v26 = a2[1];
  sub_297E50DB0(1, (a1 + 171), 6u, 4u, "phDnldEseNfc_ProcessConnPipeEvts: phLibNfc_eSE_EvtEndOfOperation, Ins");
LABEL_49:
  sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_ProcessConnPipeEvts");
  return v6;
}

uint64_t sub_297F112BC(void *a1, int a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_GenErrNtfHandler");
  sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler:Generic Error Notification received");
  v4 = a2 | 0x100;
  if ((a2 | 0x100) > 270)
  {
    if (v4 <= 272)
    {
      if (v4 == 271)
      {
        sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0F,SE connectivity Pipe deleted");
        v5 = 271;
        goto LABEL_25;
      }

      if (v4 == 272)
      {
        sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x10,SE loopback Pipe deleted");
        v5 = 272;
        goto LABEL_25;
      }
    }

    else
    {
      switch(v4)
      {
        case 273:
          sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x11,SE Identity Management Pipe deleted");
          v5 = 273;
          goto LABEL_25;
        case 274:
          sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x12,SE APDU Pipe deleted");
          v5 = 274;
          goto LABEL_25;
        case 275:
          sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x13,Temperature Error");
          v5 = 275;
          goto LABEL_25;
      }
    }
  }

  else if (v4 <= 267)
  {
    if (v4 == 266)
    {
      sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0A,Message size exceeded maximum size");
      v5 = 266;
      goto LABEL_25;
    }

    if (v4 == 267)
    {
      sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0B,SE is not enabled");
      v5 = 267;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v4)
    {
      case 268:
        sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0C,Invalid Pipe");
        v5 = 268;
        goto LABEL_25;
      case 269:
        sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0D,Invalid HCP Packet");
        v5 = 269;
        goto LABEL_25;
      case 270:
        sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0E,SE cleared all Pipe");
        v5 = 270;
        goto LABEL_25;
    }
  }

  sub_297E50DB0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GenErrNtfHandler:Unknown Error Code: ");
  v5 = 256;
LABEL_25:
  v6 = a1[85];
  if (v6)
  {
    v6(*a1, a1[86], 26, a1[1], v8, v5);
  }

  return sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_GenErrNtfHandler");
}

uint64_t sub_297F1155C(void *a1, uint64_t a2)
{
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldNfc_DnldEseValidateRxdPkt");
  if (*a2 || (v6 = *(a2 + 16), !*(a2 + 16)) || (v7 = *(a2 + 8)) == 0)
  {
    sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldNfc_DnldEseValidateRxdPkt:Dnld eSE Cmd Request Failed!!");
LABEL_3:
    v4 = 255;
    goto LABEL_4;
  }

  *&v87[0] = *a1;
  sub_297E4E1B4(0, v87, 6u, 5u, "phDnldNfc_DnldEseVldtCrcRcvd");
  if ((v7[v6 - 1] | (v7[v6 - 2] << 8)) != sub_297E50CEC(*&v87[0], v7, (v6 - 2)))
  {
    sub_297E4E0B0(0, v87, 6u, 1u, "phDnldNfc_DnldEseVldtCrcRcvd:Invalid frame received");
    sub_297E50DB0(0, v87, 6u, 1u, "Received CRC: ");
    sub_297E50DB0(0, v87, 6u, 1u, "Calculated CRC: ");
LABEL_23:
    sub_297E4DFAC(0, v87, 6u, 5u, "phDnldNfc_DnldEseVldtCrcRcvd");
    goto LABEL_3;
  }

  if ((v7[1] | ((*v7 & 0x1F) << 8)) != (v6 - 4))
  {
    sub_297E4E0B0(0, v87, 6u, 1u, "phDnldNfc_DnldEseVldtCrcRcvd:Invalid frame payload length received");
    goto LABEL_23;
  }

  sub_297E4DFAC(0, v87, 6u, 5u, "phDnldNfc_DnldEseVldtCrcRcvd");
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_UpdateRsp");
  v8 = a1[172];
  if (!v8 || (v9 = *(v8 + 6624)) == 0)
  {
    v18 = "phDnldEseNfc_UpdateRsp:Invalid Context!!";
    v19 = 4;
    v20 = a1;
LABEL_37:
    sub_297E4E0B0(v19, v20, 6u, 1u, v18);
LABEL_38:
    v4 = 255;
    goto LABEL_39;
  }

  v10 = *(a1 + 186);
  if (v10 > 0x25 || ((1 << v10) & 0x3400000001) == 0)
  {
    v18 = "phDnldEseNfc_UpdateRsp:Unsuccessful Status received!!";
    goto LABEL_36;
  }

  v11 = *(a2 + 8);
  if (!v11)
  {
    v18 = "phDnldEseNfc_UpdateRsp:Invalid TML buffer received!!";
LABEL_36:
    v20 = (a1 + 171);
    v19 = 1;
    goto LABEL_37;
  }

  v12 = v6 - 5;
  v13 = v8 + 4096;
  v14 = *(v11 + 2);
  v15 = v14 >> 5;
  if (!(v14 >> 5))
  {
    v89 = 0;
    v90 = 0;
    v91 = 0;
    sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_HciRecvManager");
    v22 = *(v11 + 3);
    v23 = v12;
    v24 = *(v11 + 3) & 0x7F;
    sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_GetPipeIndx");
    v25 = 0;
    v26 = 136;
    while (*(a1 + v26) != v24)
    {
      ++v25;
      v26 += 2;
      if (v25 == 8)
      {
        sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_GetPipeIndx");
        LOBYTE(v25) = 0;
        goto LABEL_43;
      }
    }

    sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_GetPipeIndx");
    if (v25 >= 8)
    {
      v27 = "phDnldEseNfc_HciRecvManager: Data from unknown Pipe ID";
LABEL_45:
      v28 = (a1 + 171);
LABEL_46:
      sub_297E4E0B0(1, v28, 6u, 1u, v27);
      v4 = 255;
LABEL_47:
      sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_HciRecvManager");
      goto LABEL_39;
    }

LABEL_43:
    if (v12 >= 0x11Bu)
    {
      v27 = "phDnldEseNfc_HciRecvManager: Recvd HCP Pkt > PHDNLDNFC_ESE_HDLL_HCP_MAX_PACKET_SIZE";
      goto LABEL_45;
    }

    sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_GetNewNode");
    v84 = a1 + 19;
    v29 = a1[v25 + 19];
    if (v29)
    {
      do
      {
        v30 = v29;
        v29 = *(v29 + 296);
      }

      while (v29);
      v31 = *(a1 + 342);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(v30 + 296) = Memory_Typed;
      if (!Memory_Typed)
      {
        v40 = (a1 + 171);
        sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_GetNewNode:Memory allocation failed while creating new node!");
        sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_GetNewNode");
LABEL_73:
        sub_297E4E0B0(1, v40, 6u, 1u, " phDnldEseNfc_HciRecvManager:Failed To Allocate Memory for Node");
LABEL_74:
        if ((v22 & 0x80) == 0)
        {
          sub_297E4E0B0(1, v40, 6u, 4u, "phDnldEseNfc_HciRecvManager:Buffered Received Chained HCI packets");
          v13 = v8 + 4096;
          v15 = 0;
          if (a1[81] && *(a1 + 1384) == 1)
          {
            *(a1 + 1384) = 0;
            v50 = a1[6];
            if (v50 == 0xFFFFFFFFFFFFLL)
            {
              sub_297E4E0B0(1, v40, 6u, 1u, "phDnldEseNfc_HciRecvManager: Invalid response timer");
            }

            else
            {
              v68 = *(a1 + 196);
              if (v68 <= 0x2710)
              {
                v68 = 10000;
              }

              *(a1 + 8) = v68;
              sub_297E5A304(*(a1 + 342), v50);
              *(a1 + 16) = 0;
              v69 = *(a1 + 342);
              v70 = a1[6];
              v71 = *(a1 + 8);
              v72 = phOsalNfc_Timer_Start();
              if (v72)
              {
                v4 = v72;
                sub_297E4E0B0(1, v40, 6u, 1u, "phDnldEseNfc_HciRecvManager : Response Timer Start failed!!!");
                goto LABEL_47;
              }

              *(a1 + 16) = 1;
              v13 = v8 + 4096;
              v15 = 0;
            }
          }

          sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_HciRecvManager");
          goto LABEL_117;
        }

        *(a1 + 1384) = 1;
        v90 = 0;
        if (*(a1 + v25 + 58))
        {
          v51 = *v40;
          v52 = phOsalNfc_GetMemory_Typed();
          v28 = v40;
          v53 = v52;
          v90 = v52;
          if (!v52)
          {
            v27 = "phDnldEseNfc_HciRecvManager:Memory Allocation Failed";
            goto LABEL_46;
          }
        }

        else
        {
          v28 = v40;
          v53 = 0;
        }

        v83 = v9;
        v86 = v28;
        sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_ExtractHciData");
        v54 = v84[v25];
        v55 = *(a1 + v25 + 108);
        v81 = *v54 & 0x7F;
        LOBYTE(v89) = *v54 & 0x7F;
        v56 = *(v54 + 1);
        BYTE2(v89) = v56 >> 6;
        v82 = v56 & 0x3F;
        BYTE1(v89) = v56 & 0x3F;
        v57 = *(v54 + 288) - 2;
        v58 = *(a1 + 342);
        phOsalNfc_MemCopy();
        v85 = v55;
        v80 = v53;
        if (v55 >= 2)
        {
          v59 = *(v54 + 296);
          v60 = v57;
          if (v53)
          {
            v61 = v53 + v57;
          }

          else
          {
            v61 = 0;
          }

          v62 = 1;
          while (1)
          {
            v63 = *(v59 + 288);
            v64 = v63 - 1;
            if (v63 == 1)
            {
              sub_297E4E0B0(1, v86, 6u, 1u, "phDnldEseNfc_ExtractHciData: HCI Core Receive- Zero Payload Len");
            }

            else
            {
              v65 = *v86;
              phOsalNfc_MemCopy();
              v59 = *(v59 + 296);
              if (v60 <= -v63)
              {
                v60 += v64;
              }

              else
              {
                v60 = 0;
              }

              if (!v59)
              {
                goto LABEL_98;
              }

              v61 += v64;
            }

            if (++v62 >= v85)
            {
              goto LABEL_98;
            }
          }
        }

        v60 = v57;
LABEL_98:
        v66 = *(a1 + v25 + 58);
        LOWORD(v91) = v66;
        if (v60 != v66)
        {
          sub_297E4E0B0(1, v86, 6u, 1u, "phDnldEseNfc_ExtractHciData:HCI Core Receive- Mismatch in Number of Payload Bytes                Processed and Stored");
          sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_ExtractHciData");
          sub_297E4E0B0(1, v86, 6u, 1u, " phDnldEseNfc_HciRecvManager: HCI Packet Extraction Failed");
          v4 = 255;
          goto LABEL_113;
        }

        sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_ExtractHciData");
        sub_297F10718(a1, v25);
        sub_297E50DB0(1, v86, 6u, 4u, "Rx HCP:PipeID");
        sub_297E50DB0(1, v86, 6u, 4u, "Rx HCP:MsgType");
        sub_297E50DB0(1, v86, 6u, 4u, "Rx HCP:Ins");
        sub_297E4E880(1, v86, 6u, 4u, "Rx HCP:Data", v80);
        if (v81 <= 0x2D)
        {
          if (((1 << v81) & 0x38002000000) != 0)
          {
            if (v82 == 2 || !*(a1 + 186))
            {
              v67 = sub_297F10840(a1, &v89);
              goto LABEL_112;
            }
          }

          else if (((1 << v81) & 0x380000400000) != 0)
          {
            v67 = sub_297F10DF8(a1, &v89);
LABEL_112:
            v4 = v67;
LABEL_113:
            v13 = v8 + 4096;
            v15 = 0;
            v9 = v83;
            v73 = *(a1 + 342);
            phOsalNfc_FreeMemory();
            sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_HciRecvManager");
            if (!v4)
            {
              goto LABEL_117;
            }

            goto LABEL_39;
          }
        }

        sub_297E50DB0(1, v86, 6u, 2u, "phDnldEseNfc_HciRecvManager: Invalid PipeID/response received, packet dropped PipeID");
        v4 = 0;
        goto LABEL_113;
      }

      ++*(a1 + v25 + 108);
      v33 = *(a1 + 342);
      phOsalNfc_SetMemory();
      *(*(v30 + 296) + 296) = 0;
      v34 = *(v30 + 296);
      v35 = a1 + 4 * v25;
      v36 = *(v35 + 58);
      v37 = v23 - 1;
      if (!v23)
      {
        v37 = 0;
      }

      v38 = __CFADD__(v37, v36);
      v39 = v36 + v37;
      if (v38)
      {
        v39 = 0;
      }

      *(v35 + 58) = v39;
      sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_GetNewNode");
      v40 = (a1 + 171);
      if (!v34)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v46 = *(a1 + 342);
      v84[v25] = phOsalNfc_GetMemory_Typed();
      v47 = *(a1 + 342);
      phOsalNfc_SetMemory();
      v48 = v84[v25];
      *(v48 + 288) = 0;
      *(v48 + 296) = 0;
      v34 = v84[v25];
      *(v34 + 296) = 0;
      v40 = (a1 + 171);
      *(a1 + v25 + 58) = v23 - 2;
      sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_GetNewNode");
    }

    v49 = *v40;
    phOsalNfc_MemCopy();
    *(v34 + 288) = v23;
    goto LABEL_74;
  }

  if (v15 != 3)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + 194);
      if (v16 && v16 >= v12 && a1[96])
      {
        v17 = *(a1 + 342);
        phOsalNfc_MemCopy();
        *(a1 + 194) = v12;
LABEL_117:
        *(a1 + 10) = 0;
        v74 = *(v9 + 48);
        v75 = phTmlNfc_Read();
        v4 = 0;
        if (v75 != 13)
        {
          v76 = v75;
          sub_297E4E0B0(1, (a1 + 171), 6u, 1u, "phDnldEseNfc_UpdateRsp: dnld packet Read Request Failure");
          sub_297E96818(*a1, 195);
          v4 = v76;
        }

        if (v15 == 2 && !v4)
        {
          *(v8 + 5996) = 5;
          sub_297E57FC4(v8, 8, a2);
          v77 = 0;
          v78 = 0;
          do
          {
            v79 = *(&unk_2A18BDDC0 + 14 * v78 + 4);
            if (v77)
            {
              break;
            }

            v77 = 1;
            v78 = 1;
          }

          while (v79 != v8);
          if (v79 == v8 && !*(v13 + 1896) && !sub_297E56AFC(*(v8 + 6528)))
          {
            sub_297F0FCA0(v8);
          }

          v4 = 0;
        }

        goto LABEL_39;
      }

      v4 = 1;
LABEL_39:
      sub_297E4DFAC(4, a1, 6u, 5u, "phDnldEseNfc_UpdateRsp");
      goto LABEL_4;
    }

    v18 = "phDnldEseNfc_UpdateRsp:Unknown Resp passed, while receive!!";
    goto LABEL_36;
  }

  v21 = v14 & 0x1F;
  if (v21 == 3)
  {
    sub_297F112BC(a1, *(v11 + 3));
    goto LABEL_38;
  }

  if (v21 != 2)
  {
    if (!v21)
    {
      sub_297F10660(a1, *(v11 + 3));
      goto LABEL_117;
    }

    v18 = "phDnldEseNfc_UpdateRsp:Invalid opcode notification received!!";
    goto LABEL_36;
  }

  sub_297E5A304(*(a1 + 342), a1[6]);
  *(a1 + 16) = 0;
  sub_297E5A304(*(a1 + 342), a1[7]);
  *(a1 + 17) = 0;
  *(v8 + 5980) = 0;
  *(v8 + 5972) = 0;
  sub_297E4E0B0(1, (a1 + 171), 6u, 2u, "phDnldEseNfc_UpdateRsp:eSE Removed Notification");
  sub_297E96818(*a1, 214);
  v41 = a1[85];
  if (v41)
  {
    v42 = *(*(a2 + 8) + 3);
    v43 = 255;
    if (v42 < 0x10 || (v42 & 0xB0) == 0x20 || (v42 >> 4) - 6 >= 0xFFFFFFFE)
    {
      v44 = *(*(a2 + 8) + 3) > 0xFu;
      v45 = (v42 & 0xF) - 13 < 0xFFFFFFF4;
      v43 = v44 && v45 ? 255 : *(*(a2 + 8) + 3);
      if (!v44 || !v45)
      {
        LOBYTE(v42) = 0;
      }
    }

    LODWORD(v87[0]) = v43;
    BYTE4(v87[0]) = v42;
    v41(*a1, a1[86], 16, a1[1], v87, 0);
    v4 = 214;
    sub_297E8828C(a1, 214, a2);
  }

  else
  {
    sub_297E4E0B0(1, (a1 + 171), 6u, 2u, "phDnldEseNfc_UpdateRsp: Dropping SE Removed Notification as no callback registered");
    v4 = 214;
  }

LABEL_4:
  sub_297E4DFAC(4, a1, 6u, 5u, "phDnldNfc_DnldEseValidateRxdPkt");
  return v4;
}

uint64_t sub_297F12210(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 6u, 5u, "phDnldNfc_RecvDnldEsePkt");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 12);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 != a1)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 8496);
  if (!v8)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v9 = *(v8 + 6632);
  if (!v9 || *a2)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 8);
  if (*(a1 + 8438) || v10 != a1 + 4288 + *(a1 + 8438))
  {
    v14 = *(v9 + 42);
    if (v10 != v9 + v14 + 1075)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *(v9 + 1368);
    v12 = v9 + *(v9 + 42);
    v13 = *(a2 + 16);
    phOsalNfc_MemCopy();
    LOWORD(v14) = *(v9 + 42);
  }

  v15 = *(a2 + 16) + v14;
  *(v9 + 42) = v15;
  if (v15 <= 1u)
  {
    *(v9 + 40) = 2 - v15;
    v16 = *v9;
    if (phTmlNfc_Read() != 13)
    {
      sub_297E96818(*v9, 195);
    }

    goto LABEL_6;
  }

  v17 = *(v9 + 1075);
  v18 = *(v9 + 1076) | ((v17 & 0x1F) << 8);
  v19 = v18 + 4;
  *(v9 + 40) = (*(v9 + 1076) | ((v17 & 0x1F) << 8)) + 4;
  if (v18 > 0x120)
  {
    sub_297E4E0B0(1, v9 + 1368, 6u, 1u, "phDnldNfc_RecvDnldEsePkt: Invalid length; Received size greater than maximum download frame size!!");
    goto LABEL_27;
  }

  if (v19 == v15)
  {
    *(a2 + 8) = v9 + 1075;
    *(a2 + 16) = v15;
    *(v9 + 40) = 0;
    v20 = sub_297F1155C(v9, a2);
    if (!v20)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  if (v19 <= v15)
  {
    sub_297E4E0B0(1, v9 + 1368, 6u, 1u, "phDnldNfc_RecvDnldEsePkt:Critical failure in Download Ese mode!!");
    goto LABEL_6;
  }

  *(v9 + 40) = v19 - v15;
  v31 = *v9;
  v32 = phTmlNfc_Read();
  if (v32 != 13)
  {
    v20 = v32;
    sub_297E96818(*v9, 195);
    if (v20)
    {
LABEL_23:
      if (v20 == 13)
      {
        goto LABEL_6;
      }

      if (v20 != 255)
      {
        v21 = 0;
LABEL_28:
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = *(&unk_2A18BDDC0 + 14 * v24 + 8);
          if (v23)
          {
            break;
          }

          v23 = 1;
          v24 = 1;
        }

        while (v25 != v9);
        if (v25 == v9 && *v9)
        {
          phTmlNfc_ReadAbort();
          if (v21)
          {
            v26 = *v9;
            phTmlNfc_FlushTxRxBuffers();
          }

          *(v9 + 40) = 0;
          v27 = *(a1 + 48);
          if (phTmlNfc_Read() != 13)
          {
            sub_297E4E0B0(1, a1 + 8492, 6u, 1u, "phDnldNfc_RecvDnldEsePkt: Read Request Failure");
            sub_297E96818(*(a1 + 48), 195);
          }

          *a2 = v20;
          *(v8 + 5996) = 5;
          sub_297E57FC4(v8, 9, a2);
          v28 = 0;
          v29 = 0;
          do
          {
            v30 = *(&unk_2A18BDDC0 + 14 * v29 + 4);
            if (v28)
            {
              break;
            }

            v28 = 1;
            v29 = 1;
          }

          while (v30 != v8);
          if (v30 == v8 && !*(v8 + 5992) && !sub_297E56AFC(*(v8 + 6528)))
          {
            sub_297F0FCA0(v8);
          }
        }

        goto LABEL_6;
      }

LABEL_27:
      v22 = *(a2 + 16);
      v21 = 1;
      sub_297E4E880(1, a1 + 8492, 6u, 2u, "phDnldNfc_RecvDnldEsePkt:corrupted packet rxd and dropped", *(a2 + 8));
      LOWORD(v20) = 255;
      goto LABEL_28;
    }
  }

LABEL_6:

  return sub_297E4DFAC(3, a1, 6u, 5u, "phDnldNfc_RecvDnldEsePkt");
}

uint64_t sub_297F125DC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(4, a2, 6u, 5u, "phDnldEseNfc_CrdtTimeOutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 8);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 != a2)
  {
LABEL_6:
    v7 = "phDnldEseNfc_CrdtTimeOutCb:Invalid or NULL pDnldEseCoreCtx ";
LABEL_7:
    sub_297E4E0B0(4, a2, 6u, 1u, v7);
    goto LABEL_8;
  }

  if (*(a2 + 56) == a1)
  {
    v9 = *(a2 + 1376);
    sub_297E5A304(*(a2 + 1368), a1);
    *(a2 + 17) = 0;
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(&unk_2A18BDDC0 + 14 * v11 + 4);
      if (v10)
      {
        break;
      }

      v10 = 1;
      v11 = 1;
    }

    while (v12 != v9);
    if (v12 != v9)
    {
LABEL_17:
      v7 = "phDnldEseNfc_CrdtTimeOutCb:Invalid or NULL NCI context ";
      goto LABEL_7;
    }

    *(v9 + 5996) = 5;
    if (*(a2 + 29))
    {
      sub_297E57FC4(v9, 11, 0);
    }

    else
    {
      sub_297E57FC4(v9, 12, 0);
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(&unk_2A18BDDC0 + 14 * v14 + 4);
        if (v13)
        {
          break;
        }

        v13 = 1;
        v14 = 1;
      }

      while (v15 != v9);
      if (v15 == v9 && !*(v9 + 5992) && !sub_297E56AFC(*(v9 + 6528)))
      {
        sub_297F0FCA0(v9);
      }
    }
  }

LABEL_8:

  return sub_297E4DFAC(4, a2, 6u, 5u, "phDnldEseNfc_CrdtTimeOutCb");
}

uint64_t sub_297F12788(uint64_t a1, int *a2)
{
  sub_297E4E1B4(2, a1, 3u, 5u, "phDnldNfc_BuildDnldEsePkt");
  if (!a1 || ((v4 = *(a1 + 6624), (v5 = *(a1 + 6632)) != 0) ? (v6 = v4 == 0) : (v6 = 1), v6))
  {
    v7 = 1;
    v8 = 2;
    v9 = a1;
    goto LABEL_8;
  }

  v11 = *(v5 + 1368);
  phOsalNfc_SetMemory();
  *(v5 + 382) = 0;
  if (!a2[4] || !*(a2 + 1))
  {
    v12 = *a2;
    if (*a2 == 37)
    {
      goto LABEL_17;
    }

    v7 = 1;
    v9 = v5 + 1368;
    v8 = 1;
LABEL_8:
    sub_297E4E0B0(v8, v9, 6u, 1u, "phDnldNfc_BuildDnldEsePkt:Invalid Input Parameter!!");
    goto LABEL_9;
  }

  v12 = *a2;
  if ((*a2 - 36) < 2)
  {
LABEL_17:
    *(v5 + 386) = v12;
    if (*a2 != 37)
    {
      v14 = *(v5 + 1368);
      v15 = *(a2 + 1);
      v16 = a2[4];
      phOsalNfc_MemCopy();
    }

    v17 = a2[4];
    *(v5 + 385) = v17 + 1;
    *(v5 + 384) = ((v17 + 1) >> 8) & 0x1F | 0x80;
    v18 = v17 + 3;
LABEL_20:
    *(v5 + 382) = v18;
    v19 = sub_297E50CEC(*v5, (v5 + 384), v18);
    v20 = *(v5 + 382);
    *(v5 + 384 + v20) = __rev16(v19);
    *(v5 + 382) = v20 + 2;
    sub_297E4E0B0(1, v5 + 1368, 6u, 4u, "phDnldNfc_BuildDnldEsePkt: Frame created successfully");
    v7 = 0;
    goto LABEL_9;
  }

  if (v12)
  {
    if (v12 != 34)
    {
      v13 = "phDnldNfc_BuildDnldEsePkt:Invalid Input Parameter!!";
LABEL_29:
      sub_297E4E0B0(1, v5 + 1368, 6u, 1u, v13);
      v7 = 255;
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  if (*(v5 + 29))
  {
    *(v5 + 386) = 0;
    *(v5 + 382) = 1;
    if (*(v5 + 380))
    {
      v21 = *(v5 + 376);
      if (v21 <= 0xFE)
      {
        v22 = *(a2 + 1);
        v38 = *a2;
        v39 = v22;
        v40 = *(a2 + 2);
        v23 = sub_297F12B40(v5, &v38, v21, 1, 1);
        *(v5 + 380) = 0;
LABEL_37:
        if (v23)
        {
          v7 = 1;
          goto LABEL_9;
        }

        v35 = *(v5 + 382);
        *(v5 + 385) = v35;
        *(v5 + 384) = HIBYTE(v35) & 0x1F | 0x80;
        v18 = v35 + 2;
        goto LABEL_20;
      }

      v30 = *(a2 + 1);
      v38 = *a2;
      v39 = v30;
      v40 = *(a2 + 2);
      v27 = v5;
      v25 = 254;
      v28 = 0;
      v29 = 1;
    }

    else
    {
      v25 = a2[4];
      *(v5 + 376) = v25;
      if (v25 > 0xFD)
      {
        v34 = *(a2 + 1);
        v38 = *a2;
        v39 = v34;
        v40 = *(a2 + 2);
        v23 = sub_297F12B40(v5, &v38, 253, 0, 0);
        *(v5 + 380) = 1;
        goto LABEL_37;
      }

      v26 = *(a2 + 1);
      v38 = *a2;
      v39 = v26;
      v40 = *(a2 + 2);
      v27 = v5;
      v28 = 1;
      v29 = 0;
    }

    v23 = sub_297F12B40(v27, &v38, v25, v28, v29);
    goto LABEL_37;
  }

  v24 = *(v5 + 56);
  if (!v24 || v24 == 0xFFFFFFFFFFFFLL)
  {
    v13 = "phDnldNfc_BuildDnldEsePkt : Invalid Download Ese Credit Timer ID";
    goto LABEL_29;
  }

  *(v5 + 36) = 250;
  *(v5 + 17) = 1;
  sub_297E5A304(*(v5 + 1368), v24);
  v31 = *(v5 + 1368);
  v32 = *(v5 + 56);
  v33 = *(v5 + 36);
  if (phOsalNfc_Timer_Start())
  {
    sub_297E4E0B0(1, v5 + 1368, 6u, 1u, "phDnldNfc_BuildDnldEsePkt : Credit Timer Start failed!!!");
    v7 = 255;
  }

  else
  {
    v7 = 13;
  }

  v36 = *(v4 + 64);
  if (v36 && v36 != 0xFFFFFFFFFFFFLL && !*(v4 + 80))
  {
    v37 = *(v4 + 8492);
    if (!phOsalNfc_Timer_Start())
    {
      *(v4 + 80) = 1;
      goto LABEL_9;
    }

    v13 = "phNciCoreMuxNfc_eMuxEvtDnldTxCb : Failed to create start timer";
    goto LABEL_29;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 3u, 5u, "phDnldNfc_BuildDnldEsePkt");
  return v7;
}

uint64_t sub_297F12B40(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v18 = -1;
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldNfc_BuildDnldEseHciPkt");
  if (a3)
  {
    v10 = *(a1 + 1368);
    phOsalNfc_SetMemory();
    v11 = sub_297F10D04(a1, *(a1 + 788), &v18);
    if (v11 || v18 == 255)
    {
      sub_297E4E0B0(4, a1, 6u, 1u, "phDnldNfc_BuildDnldEseHciPkt:Invalid Pipe Id");
    }

    else
    {
      *(a1 + 792) = v18 | (a4 << 7);
      v12 = (*(a2 + 16) - *(a1 + 376));
      if (a5)
      {
        v13 = 1;
      }

      else
      {
        *(a1 + 793) = 80;
        v13 = 2;
      }

      v14 = *(a1 + 1368);
      v15 = *(a2 + 8);
      phOsalNfc_MemCopy();
      v16 = *(a1 + 1368);
      phOsalNfc_MemCopy();
      v11 = 0;
      *(a1 + 376) -= a3;
      *(a1 + 382) += v13 + a3;
    }
  }

  else
  {
    v11 = 1;
  }

  sub_297E4DFAC(4, a1, 6u, 5u, "phDnldNfc_BuildDnldEseHciPkt");
  return v11;
}

uint64_t sub_297F12CB0(uint64_t a1)
{
  sub_297E4E1B4(4, a1, 6u, 5u, "phDnldEseNfc_CoreDeInit");
  if (a1)
  {
    sub_297E5B294(*(a1 + 1376));
    v2 = *(a1 + 48);
    if (v2 && v2 != 0xFFFFFFFFFFFFLL)
    {
      v3 = *(a1 + 1368);
      phOsalNfc_Timer_Stop();
      v4 = *(a1 + 1368);
      v5 = *(a1 + 48);
      phOsalNfc_Timer_Delete();
      *(a1 + 48) = 0xFFFFFFFFFFFFLL;
    }

    v6 = *(a1 + 56);
    if (v6 && v6 != 0xFFFFFFFFFFFFLL)
    {
      v7 = *(a1 + 1368);
      phOsalNfc_Timer_Stop();
      v8 = *(a1 + 1368);
      v9 = *(a1 + 56);
      phOsalNfc_Timer_Delete();
      *(a1 + 56) = 0xFFFFFFFFFFFFLL;
    }

    sub_297E8FB48(*(a1 + 1368));
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_297E4DFAC(4, 0, 6u, 5u, "phDnldEseNfc_CoreDeInit");
  return v10;
}