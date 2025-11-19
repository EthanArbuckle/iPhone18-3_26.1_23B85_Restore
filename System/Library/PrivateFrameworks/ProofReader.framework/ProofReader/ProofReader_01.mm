uint64_t SFlstini(_WORD *a1, _WORD *a2, _BYTE *a3, _WORD *a4)
{
  *a1 = 0;
  *a2 = 0;
  *a4 = 0;
  *a3 = 0;
  return 10;
}

uint64_t SFmemory(void **a1, int a2, int a3)
{
  if (a3)
  {
    result = malloc_type_calloc(1uLL, 0x40uLL, 0x1004098A284A9uLL);
    *a1 = result;
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = malloc_type_calloc(8uLL, a2, 0x3317D5C5uLL);
    if (v7)
    {
      *v6 = v7;
      v6[1] = &v7[a2];
      v8 = &v7[a2 + a2];
      v6[4] = v8;
      v6[5] = &v8[a2];
      v9 = &v8[a2 + a2];
      v6[6] = v9;
      v6[7] = &v9[a2];
      v10 = &v9[a2 + a2];
      v6[2] = &v10[a2];
      v6[3] = v10;
      return 1;
    }

    free(*a1);
    result = 0;
    *a1 = 0;
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      if (*v11)
      {
        free(*v11);
      }

      free(v11);
      *a1 = 0;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t SFremacc(const char *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = strlen(a1);
  if (v6)
  {
    while (1)
    {
      v7 = *v5;
      v8 = *(a2 + 4 * v7);
      if (a3 != 8)
      {
        break;
      }

      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_6;
      }

LABEL_12:
      ++v5;
      if (!--v6)
      {
        return 0;
      }
    }

    if (a3 == 15)
    {
      v9 = v7 - ((v8 & 0x4020000) != 0);
    }

    else
    {
LABEL_6:
      if ((~*(a2 + 4 * v7) & 0x50000000) != 0 || (v8 & 0x4064000) == 0)
      {
        goto LABEL_12;
      }

      v9 = SFchkaccent[v7 - 192];
    }

    *v5 = v9;
    goto LABEL_12;
  }

  return 0;
}

uint64_t SFwild(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 68) < a2)
  {
    return 8;
  }

  v45 = v4;
  v46 = v5;
  v11 = *(a3 + 54);
  v12 = *(a3 + 1192);
  if (*a4 != 5)
  {
    *a4 = 5;
  }

  v44 = 0;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = a1;
    while (1)
    {
      v16 = *v15;
      if (v11 - 1 == v13 && v12 == 2)
      {
        break;
      }

      if (v12 != 2 || (v16 - 129) >= 0x1F)
      {
        goto LABEL_18;
      }

      if (v16 != 129)
      {
        goto LABEL_24;
      }

      v18 = v15[1];
      if (v18 == 72)
      {
        v26 = v14 + 1;
        *(*(*(a4 + 32) + 24) + v14) = 1;
        v14 += 2;
        *(*(*(a4 + 32) + 24) + v26) = 1;
LABEL_35:
        v21 = *v15;
        v22 = v21 - 129;
        if (v21 >= 0xF0)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v21 >= 0xE0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        if (v22 < 0x1F)
        {
          v24 = 2;
        }

        goto LABEL_45;
      }

      if (v18 != 150)
      {
        v16 = 129;
LABEL_24:
        if (a2 <= v14)
        {
          if (v12 == 2 && ((v16 - 129) < 0x1F || (v16 & 0xF0) == 0xE0))
          {
            v25 = v14 + 1;
            *(*(*(a4 + 32) + 24) + v14) = 32;
            v14 += 2;
            *(*(*(a4 + 32) + 24) + v25) = 32;
            goto LABEL_35;
          }

          LOBYTE(v16) = 32;
        }

        else if (v12 == 2 && ((v16 - 129) < 0x1F || (v16 & 0xF0) == 0xE0))
        {
          v19 = v14;
          *(*(*(a4 + 32) + 24) + v14) = v16;
          v14 += 2;
          *(*(*(a4 + 32) + 24) + v19 + 1) = v15[1];
          goto LABEL_35;
        }

LABEL_33:
        v20 = v14++;
        *(*(*(a4 + 32) + 24) + v20) = v16;
        goto LABEL_34;
      }

LABEL_22:
      while (v11 > v14)
      {
        *(*(*(a4 + 32) + 24) + v14++) = 1;
      }

LABEL_34:
      if (v12 == 2)
      {
        goto LABEL_35;
      }

      v24 = 1;
LABEL_45:
      v15 += v24;
      v13 = v14;
      if (v14 >= v11)
      {
        goto LABEL_49;
      }
    }

    v17 = -1;
    if ((v16 - 129) < 0x1F || (v16 & 0xF0) == 0xE0)
    {
      goto LABEL_50;
    }

LABEL_18:
    if (v16 != 42)
    {
      if (v16 != 63)
      {
        goto LABEL_24;
      }

      LOBYTE(v16) = 1;
      goto LABEL_33;
    }

    goto LABEL_22;
  }

LABEL_49:
  v17 = 0;
LABEL_50:
  v27 = SFbisrch(*(*(a4 + 32) + 24), 0, v17 + v11 - 1, &v44, a3);
  if (v11 <= a2)
  {
    v28 = v11;
  }

  else
  {
    v28 = a2;
  }

  if (v28 >= 1)
  {
    v29 = 0;
    v30 = a1;
    while (1)
    {
      v31 = *v30;
      if (v28 - 1 == v29 && v12 == 2)
      {
        break;
      }

      if (v12 == 2)
      {
        if ((v31 - 129) < 0x1F)
        {
          if (v31 != 129)
          {
            goto LABEL_68;
          }

          v32 = v30[1];
          if (v32 == 72)
          {
            v33 = v29;
            v34 = -1;
            *(*(*(a4 + 32) + 24) + v29) = -1;
            goto LABEL_71;
          }

          if (v32 != 150)
          {
            LOBYTE(v31) = -127;
LABEL_70:
            v33 = v29;
            *(*(*(a4 + 32) + 24) + v29) = v31;
            v34 = v30[1];
LABEL_71:
            v29 += 2;
            *(*(*(a4 + 32) + 24) + v33 + 1) = v34;
LABEL_77:
            v36 = *v30;
            v37 = v36 - 129;
            if (v36 >= 0xF0)
            {
              v38 = 1;
            }

            else
            {
              v38 = 2;
            }

            if (v36 >= 0xE0)
            {
              v39 = v38;
            }

            else
            {
              v39 = 1;
            }

            if (v37 < 0x1F)
            {
              v39 = 2;
            }

            goto LABEL_87;
          }

          goto LABEL_90;
        }

        goto LABEL_66;
      }

      if (v31 != 42)
      {
        if (v31 == 63)
        {
LABEL_74:
          LOBYTE(v31) = -1;
        }

LABEL_75:
        v35 = v29++;
        *(*(*(a4 + 32) + 24) + v35) = v31;
        goto LABEL_76;
      }

LABEL_90:
      while (v11 > v29)
      {
        *(*(*(a4 + 32) + 24) + v29++) = -1;
      }

LABEL_76:
      if (v12 == 2)
      {
        goto LABEL_77;
      }

      v39 = 1;
LABEL_87:
      v30 += v39;
      if (v29 >= v28)
      {
        goto LABEL_96;
      }
    }

    if ((v31 - 129) < 0x1F || (v31 & 0xF0) == 0xE0)
    {
      goto LABEL_96;
    }

LABEL_66:
    if (v31 == 63)
    {
      goto LABEL_74;
    }

    if ((v31 & 0xF0) == 0xE0 || v31 != 42)
    {
LABEL_68:
      if ((v31 - 129) < 0x1F || (v31 & 0xF0) == 0xE0)
      {
        goto LABEL_70;
      }

      goto LABEL_75;
    }

    goto LABEL_90;
  }

  v29 = 0;
LABEL_96:
  while (v11 > v29)
  {
    *(*(*(a4 + 32) + 24) + v29++) = 32;
  }

  v40 = *(*(a4 + 32) + 24);
  v41 = v11 - 1;
  if (*(v40 + v11 - 1) == 255)
  {
    *(v40 + v41) = -2;
    v40 = *(*(a4 + 32) + 24);
  }

  v42 = SFbisrch(v40, 0, v41, &v44, a3);
  v43 = (v42 - v27 + v44);
  v44 += v42 - v27;
  *(a4 + 40) = 0;
  *(a4 + 44) = 0;
  if (*(a4 + 3202) == 1)
  {
    PDdecod2(a1, a2, v27, v43, a3, a4);
  }

  else
  {
    SFdecode(a1, a2, v27, v43, a3, a4);
  }

  if (*(a4 + 40))
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

uint64_t SFdc(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 55);
  v8 = SLLngToA(*(a3 + 55));
  if (a2 > 64)
  {
    goto LABEL_31;
  }

  v9 = v8;
  v10 = **(a4 + 72);
  __strcpy_chk();
  if (v10)
  {
    SLrecap(v20, a2, v10, *(a4 + 80), v10, v9);
  }

  v19 = 0;
  *v18 = 0;
  *(a4 + 18) = 0;
  *(*(a4 + 112) + 62) = 0;
  if (v7)
  {
    v11 = 1 << (v7 - 1);
  }

  else
  {
    LODWORD(v11) = -1;
  }

  if ((v11 & 0x8000) != 0)
  {
    DCengan(v20, v10, v9, v18);
    v18[1] = 0;
    **(a4 + 3496) = atoi(v18);
    goto LABEL_31;
  }

  if ((v11 & 0x994) != 0)
  {
    DCposclt(v7, v20, a2, v18);
    if ((v11 & 0x814) == 0 || v18[0] != 49)
    {
      goto LABEL_26;
    }

    DCposcls(v7, v20, a2, v9, v18);
    v18[1] = 0;
    v12 = atoi(v18);
    if ((v11 & 0x94) != 0)
    {
      v13 = *(a4 + 112);
      v14 = 16 * (*(v13 + 62) | v12 & 7);
    }

    else
    {
      if ((v11 & 0x800) == 0)
      {
LABEL_26:
        if ((v11 & 0x114) != 0)
        {
          PDDCpreclt(v20, v9, v18);
          PDDCprecls(v7, v18);
          *(*(a4 + 112) + 62) |= atoi(v18) & 0xF;
        }

        if ((v11 & 0x80) != 0)
        {
          DCposacc(v20, a2, v9, v18);
          *(*(a4 + 112) + 62) |= atoi(v18) & 0xF;
        }

        SFcltdb(a3, a4);
        goto LABEL_31;
      }

      v13 = *(a4 + 112);
      v14 = *(v13 + 62) | v12 & 7;
    }

    *(v13 + 62) = v14;
    goto LABEL_26;
  }

  if ((v11 & 0x11660) != 0 && *(a4 + 102) >= 1)
  {
    v15 = 0;
    do
    {
      PDDCrmcc(v7, *(*(a4 + 72) + v15), v18);
      if (v18[0] == 49)
      {
        *(*(a4 + 3520) + 2 * v15) |= 8u;
      }

      *(*(a4 + 3528) + v15) = 0;
      *(*(a4 + 3536) + v15) = 0;
      if ((v11 & 0x1060) != 0)
      {
        *(*(a4 + 3536) + v15) |= PDDCdblend(v7, v20, v9, a2) & 3;
      }

      ++v15;
    }

    while (v15 < *(a4 + 102));
  }

LABEL_31:
  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t ICcapcod(char *a1, uint64_t a2)
{
  if (*(a2 + 1322))
  {
    return 10;
  }

  v4 = *(a2 + 3184);
  v5 = *(v4 + 264);
  v6 = *(*(v4 + 248) + 56);
  v7 = ICEndToken(a2);
  v8 = strlen(a1);
  if (!*(v5 + 102))
  {
    return 10;
  }

  v9 = 0;
  v10 = 0;
  v11 = v8;
  while (1)
  {
    v12 = *(*(v5 + 72) + v10);
    v39[v10] = v12;
    v13 = *(v5 + 88);
    if (v12 != 4)
    {
      goto LABEL_16;
    }

    if (v13 == 1)
    {
      if (v7)
      {
        goto LABEL_7;
      }
    }

    else if (v13 != 3 || v7 != 0)
    {
LABEL_7:
      v12 = 0;
      v39[v10] = 0;
      goto LABEL_16;
    }

    *(*(v5 + 80) + 8 * v10) = 0;
    if ((*(v5 + 92) & 0x80000000) != 0)
    {
      *(a2 + 1322) |= 0x400u;
    }

    v12 = 4;
LABEL_16:
    if ((v13 == 3 || v13 == 0) && v12 == 0 && v7 == 1)
    {
      if ((*(v5 + 92) & 0x80000000) == 0)
      {
        *(a2 + 1322) |= 0x800u;
      }

      v12 = 1;
      v39[v10] = 1;
      *(*(v5 + 80) + v9) |= 0x80000000;
    }

    result = SLchk(a1, v11, v13, (v5 + 92), v12, (*(v5 + 80) + v9));
    if (result)
    {
      goto LABEL_40;
    }

    if ((!*(a2 + 1414) || *(v5 + 88) != 3 || *(*(v5 + 72) + v10) != 3 || *(v5 + 92) == **(v5 + 80)) && (*(a2 + 8) != 11 || *a1 != 39 || *(*(v5 + 72) + v10) || *(v5 + 88) != 1))
    {
      break;
    }

    result = 8;
LABEL_40:
    ++v10;
    v9 += 8;
    if (v10 >= *(v5 + 102))
    {
      if (result != 8)
      {
        return result;
      }

      if (*(a2 + 8) == 6 && (*(a2 + 1328) & 0x40) != 0)
      {
        return 11;
      }

      v19 = strlen(a1);
      SFadd(a1, v19, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
      v20 = *(v5 + 102);
      if (*(v5 + 102))
      {
        v21 = 0;
        v22 = *(v5 + 88);
        v23 = v20 - 1;
        while (1)
        {
          if (v39[v21] == v22)
          {
            v24 = *(v5 + 80);
            if (v22 != 3 || *(v24 + 8 * v21) == *(v5 + 92))
            {
              SLrecap((a2 + 1690), v11, *(v5 + 88), v24 + 8 * v21, *(v5 + 88), v6);
              v27 = *(a2 + 1322);
              if ((v27 & 0x40) == 0)
              {
                goto LABEL_77;
              }

              v28 = strlen((a2 + 3090));
              v29 = *(v5 + 80) + 8 * v21;
              v30 = *(v5 + 88);
              v31 = v28;
              v32 = (a2 + 3090);
              v33 = v22;
              goto LABEL_76;
            }
          }

          if (v21 == v20 - 1)
          {
            break;
          }

          if (++v21 == v20)
          {
            goto LABEL_79;
          }
        }

        if (v20 >= 2)
        {
          if ((v20 & 0xFE) != 0)
          {
            LOBYTE(v23) = v20 - 1;
            v34 = (v20 - 1);
            if (v39[v34 - 1] <= v39[v34])
            {
              LOBYTE(v23) = v34 - 1;
            }

            v23 = v23;
          }

          else
          {
            v23 = 0;
          }
        }

        v21 = v23;
        if (v39[v23] <= 1u)
        {
          v35 = 1;
        }

        else
        {
          v35 = v39[v23];
        }

        if (*(v5 + 92) >= 0)
        {
          v36 = v39[v23];
        }

        else
        {
          v36 = v35;
        }

        SLrecap((a2 + 1690), v11, v36, *(v5 + 80) + 8 * v23, *(v5 + 88), v6);
        v27 = *(a2 + 1322);
        if ((v27 & 0x40) != 0)
        {
          v37 = strlen((a2 + 3090));
          v29 = *(v5 + 80) + 8 * v21;
          v30 = *(v5 + 88);
          v31 = v37;
          v32 = (a2 + 3090);
          v33 = v36;
LABEL_76:
          SLrecap(v32, v31, v33, v29, v30, v6);
          v27 = *(a2 + 1322);
        }

LABEL_77:
        if ((v27 & 0x20) != 0)
        {
          *(a2 + 3176) = *(*(*(*(*(a2 + 3184) + 232) + 104) + 8 * v21) + 66);
        }
      }

LABEL_79:
      v38 = *(a2 + 8);
      if (v38 != 5)
      {
        if (v38 == 15)
        {
          if (*(v5 + 88) != 2 && ((*(a2 + 24) & 0x40) == 0 || (*(v5 + 92) & 0x80000000) == 0))
          {
            goto LABEL_87;
          }

          v38 = 15;
LABEL_86:
          SFremacc((a2 + 1690), v6, v38);
          goto LABEL_87;
        }

        if (v38 != 8)
        {
LABEL_87:
          *(a2 + 1328) |= 0x400uLL;
          **(a2 + 3184) |= 4u;
          return 2;
        }
      }

      if ((*(a2 + 24) & 0x40) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }
  }

  SLrecap(a1, v11, v12, v5 + 92, *(v5 + 88), v6);
  v25 = *(a2 + 1322);
  if ((v25 & 0x40) != 0)
  {
    v26 = strlen((a2 + 3090));
    SLrecap((a2 + 3090), v26, v12, v5 + 92, *(v5 + 88), v6);
    v25 = *(a2 + 1322);
  }

  if ((v25 & 0x20) != 0)
  {
    *(a2 + 3176) = *(*(*(*(*(a2 + 3184) + 232) + 104) + 8 * v10) + 66);
  }

  return 10;
}

uint64_t ICEndToken(uint64_t a1)
{
  v2 = *(a1 + 3184);
  v3 = *(v2 + 80);
  v4 = *(*(v2 + 248) + 56);
  v5 = (v3 + 65);
  v6 = strlen((v3 + 65));
  v7 = strlen((a1 + 1339)) << 16;
  if (!v7 || v7 <= 0x10000 && *v5 == 46 || SLstrcmp(v3, (a1 + 1339)))
  {
    return 2;
  }

  if (v6 >= 1 && (*(v4 + 4 * v5[v6 - 1]) & 0x800000) != 0)
  {
    v10 = *(a1 + 1417);
    if (!*(a1 + 1417))
    {
      v8 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    v10 = *(a1 + 1417);
    if (!*(a1 + 1417) || (*(v4 + 4 * *(strlen((a1 + 1417)) + a1 + 1417 - 1)) & 0x800000) == 0)
    {
      if (v6 >= 2)
      {
        v11 = 0;
        while ((*(v4 + 4 * v5[v11]) & 0x800000) == 0)
        {
          v8 = 0;
          if (v6 - 1 <= ++v11)
          {
            return v8;
          }
        }

        v8 = 2;
        goto LABEL_28;
      }

      return 0;
    }
  }

  if ((*(v4 + 4 * v10) & 0xC00000) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

LABEL_22:
  if (v6 >= 3)
  {
    v12 = &v5[v6];
    if (*(v12 - 1) == 46 && *(v12 - 3) == 46)
    {
      v8 = 2;
    }
  }

  if (*(a1 + 1416) && *(a1 + 8) != 16)
  {
    return 0;
  }

LABEL_28:
  if ((*(v3 + 132) & 0xC00) != 0 && *v5 == 46)
  {
    v8 = 2;
  }

  if (*(a1 + 1414) | *(v4 + 4 * *(a1 + 1547)) & 0x8000000)
  {
    return 0;
  }

  return v8;
}

uint64_t ICcchadd(uint64_t a1, unsigned int a2, int a3, int a4, int a5, uint64_t a6)
{
  if (a3 == 3)
  {
    return 11;
  }

  v38 = v6;
  v39 = v7;
  v12 = *(a6 + 3184);
  v37 = 0;
  v13 = *(v12 + 264);
  SLfun(a1, 0, (a2 - 1), &v37 + 1, &v37);
  v14 = *(*(v13 + 24) + 2 * a4);
  v15 = *(v12 + 24);
  v16 = v37 & (v15 - 1);
  LOWORD(v37) = v16;
  v17 = *(v12 + 20);
  if (v17 < 0)
  {
    LOWORD(v25) = 0;
    LODWORD(v26) = 0;
    goto LABEL_35;
  }

  v18 = 0;
  LOWORD(v19) = 0;
  v20 = 0;
  LOWORD(v21) = 0;
  v22 = 3 - BYTE2(v37);
  v23 = v12 + 32;
  v24 = 2 * BYTE2(v37);
  while (1)
  {
    v25 = v16 >> 13;
    v26 = 4 * (v16 & 0x1FFF);
    v27 = *(v23 + 8 * v25);
    v28 = *(v27 + v26);
    v29 = *(v27 + (v26 | 1));
    v30 = *(v27 + v26 + 2);
    v31 = *(v27 + v26 + 3);
    if (v31 == BYTE2(v37))
    {
      break;
    }

    if (v18)
    {
      v18 = 1;
      goto LABEL_17;
    }

    if ((v28 & 0x80) == 0)
    {
      v18 = 1;
      v20 = 4 * (v16 & 0x1FFF);
      v19 = v16 >> 13;
      goto LABEL_17;
    }

    v18 = 0;
LABEL_25:
    if (v21 != v17)
    {
      do
      {
        v22 += v24;
      }

      while (v15 == v22);
      v16 = (v37 + v22) & (v15 - 1);
      LOWORD(v37) = v16;
      v21 = (v21 + 1);
      if (v21 <= v17)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if ((v30 & 0x7F) == HIBYTE(HIWORD(v37)) && ((v30 >> 7) & 0xFFFFFFF1 | (2 * (v29 & 7))) == (a2 & 0xF))
  {
    if (((v29 >> 4) & 0xFFFFF80F | (16 * (v28 & 0x7F))) != v14)
    {
      *(v27 + v26) = v28 | 0x80;
      goto LABEL_17;
    }

    if (a5)
    {
      *(v27 + (v26 | 1)) = v29 | 8;
      v27 = *(v23 + 8 * (v16 >> 13));
      LOBYTE(v28) = *(v27 + v26);
    }

    *(v27 + v26) = v28 | 0x80;
    return 11;
  }

LABEL_17:
  if (v28)
  {
    v33 = 0;
  }

  else
  {
    v33 = v29 == 0;
  }

  if (!v33 || (v31 | v30) != 0)
  {
    LOWORD(v17) = *(v12 + 20);
    goto LABEL_25;
  }

  LOBYTE(v28) = 0;
LABEL_32:
  if (v18)
  {
    LOBYTE(v28) = *(*(v23 + 8 * v19) + v20);
    LODWORD(v26) = v20;
    LOWORD(v25) = v19;
  }

  if ((v28 & 0x80) != 0)
  {
    *(*(v23 + 8 * v25) + v26) &= ~0x80u;
    return 11;
  }

LABEL_35:
  v35 = v12 + 8 * v25;
  *(*(v35 + 32) + v26) = v14 >> 4;
  v36 = (a2 >> 1) & 7 | (16 * v14);
  if (a5)
  {
    LOBYTE(v36) = v36 | 8;
  }

  *(*(v35 + 32) + v26 + 1) = v36;
  *(*(v35 + 32) + v26 + 2) = HIBYTE(v37) | (a2 << 7);
  *(*(v35 + 32) + v26 + 3) = BYTE2(v37);
  *(*(v35 + 32) + v26) |= 0x80u;
  return 10;
}

uint64_t ICcchver(uint64_t a1, int a2, _BYTE *a3, uint64_t a4)
{
  v5 = *(a4 + 3184);
  v6 = *(v5 + 248);
  v47 = *(v6 + 56);
  v50 = *(v5 + 264);
  v52 = *(v50 + 3488);
  v53 = 0;
  *a3 = 0;
  SLfun(a1, 0, (a2 - 1), &v53 + 1, &v53);
  v7 = *(v5 + 24);
  v8 = v7 - 1;
  v9 = (v7 - 1) & v53;
  LOWORD(v53) = v9;
  if ((*(v5 + 20) & 0x80000000) == 0)
  {
    LOWORD(v10) = 0;
    v11 = 0;
    v12 = 3 - BYTE2(v53);
    v13 = v5 + 32;
    v14 = a2 & 0xF;
    v15 = 2 * BYTE2(v53);
    v44 = a2;
    v16 = a2;
    result = 11;
    v46 = v6;
    v45 = v14;
    while (1)
    {
      v18 = v9 >> 13;
      v19 = 4 * (v9 & 0x1FFF);
      v20 = *(v13 + 8 * (v9 >> 13));
      v21 = (v20 + v19);
      if (*(v20 + v19 + 3) != BYTE2(v53))
      {
        goto LABEL_8;
      }

      v22 = v21[1];
      v23 = *(v20 + v19 + 2);
      v24 = v23 & 0x7F;
      v25 = (v23 >> 7) & 0xFFFFFFF1 | (2 * (v22 & 7));
      if (v24 != HIBYTE(HIWORD(v53)) || v25 != v14)
      {
        goto LABEL_8;
      }

      if (v11 > 5)
      {
        return result;
      }

      v27 = *v21;
      if ((v22 & 8) != 0)
      {
        *a3 = 1;
      }

      v28 = (v22 >> 4) & 0xFFFFF80F | (16 * (v27 & 0x7F));
      if (!v28)
      {
        **(v50 + 24) = 0;
        *(*(v13 + 8 * (v9 >> 13)) + 4 * (v9 & 0x1FFF)) |= 0x80u;
        return 10;
      }

      v29 = (*(v6 + 80) + 7 * (v28 - 1));
      v30 = v29[2];
      if (*(v6 + 55) == 16)
      {
        break;
      }

      v33 = (8 * *v29) & 0xC0;
      if ((v33 & v52) != 0)
      {
        goto LABEL_22;
      }

LABEL_10:
      v10 = (v10 + 1);
      if (v10 > *(v5 + 20))
      {
        return result;
      }
    }

    v31 = v29[6] >> 3;
    if (v31 > 2)
    {
      if (v31 != 3)
      {
        if (v31 == 4)
        {
          v33 = 16;
        }

        else
        {
          v33 = 0;
        }

        goto LABEL_46;
      }

      v32 = 144;
    }

    else
    {
      if (v31 == 1)
      {
        v33 = 128;
LABEL_46:
        v41 = v30 & 0x1F;
        if (v41 > 0xB)
        {
          switch(v41)
          {
            case 0xCu:
              v33 |= 4u;
              break;
            case 0xDu:
              v33 |= 2u;
              break;
            case 0x13u:
              v33 |= 1u;
              break;
          }
        }

        else if (v41 == 2 || v41 == 6 || v41 == 9)
        {
          v33 |= 8u;
        }

        if ((v33 & v52) < 0x10 || (v33 & 0xF) != 0 && (v33 & v52 & 0xF) == 0)
        {
          goto LABEL_10;
        }

LABEL_22:
        v34 = v30 >> 5;
        v35 = (*(v50 + 80) + 8 * v11);
        *v35 = 0;
        if (v34 == 1)
        {
          *v35 = 0x80000000;
        }

        else if (v34 == 2 && v44 >= 1)
        {
          v37 = 0;
          do
          {
            if ((*(v47 + 4 * *(a1 + v37)) & 0x60000040) != 0)
            {
              *(v35 + (v37 >> 5)) |= 1 << ~v37;
            }

            ++v37;
          }

          while (v16 != v37);
        }

        *(*(v50 + 72) + v11) = v34;
        *(*(v50 + 3504) + v11) = v33;
        *(*(v50 + 24) + 2 * v11) = v28;
        SFdecbit(0, *(a4 + 8), v11++, v29, *(v5 + 248), v50);
        *(v50 + 102) = v11;
        v13 = v5 + 32;
        *(*(v5 + 32 + 8 * v18) + v19) |= 0x80u;
        result = 10;
        v6 = v46;
        v14 = v45;
        v8 = v7 - 1;
        if (*a3)
        {
          return result;
        }

        do
        {
LABEL_8:
          v12 += v15;
        }

        while (v7 == v12);
        v9 = (v53 + v12) & v8;
        LOWORD(v53) = v9;
        goto LABEL_10;
      }

      v32 = 0;
      v33 = 0;
      if (v31 != 2)
      {
        goto LABEL_46;
      }
    }

    v38 = *v29 & 0xF8;
    v39 = v32 | 0x40;
    if (v38 != 8)
    {
      v32 |= 0x40u;
    }

    v40 = v32 | 0x20;
    if (v38 == 16)
    {
      v33 = v39;
    }

    else
    {
      v33 = v40;
    }

    goto LABEL_46;
  }

  return 11;
}

uint64_t ICclt(char *a1, size_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 3184);
  v5 = *(v4 + 264);
  v6 = *(v5 + 112);
  v7 = *(a2 + 8);
  v8 = strlen(a1);
  v9 = *(*(v4 + 248) + 56);
  v39 = 0;
  *(v5 + 3492) &= ~0x100u;
  v6[32] &= ~0x100u;
  v6[33] &= ~0x100u;
  v6[34] &= ~0x100u;
  v6[17] = 0;
  v10 = (v6 + 17);
  v11 = *(*(a2 + 3184) + 264);
  v12 = *(v11 + 112);
  *(v11 + 3492) &= ~0x80u;
  v12[32] &= ~0x200u;
  v12[33] &= ~0x200u;
  v12[34] &= ~0x200u;
  v12[22] = 0;
  v40 = 0;
  v41 = 0;
  *(a2 + 1328) &= 0xFFFFFFFFFFFFCBE8;
  v6[31] &= ~0x80u;
  *(v6 + 92) = 0;
  *(v6 + 18) = 0;
  v6[16] = 0;
  *(v6 + 22) = 0;
  v6[34] = 0;
  *(v6 + 16) = 0;
  if (*(a2 + 1415))
  {
    v13 = do_trailcheck(a2);
    if (v13)
    {
LABEL_23:
      v16 = v13;
      goto LABEL_24;
    }

    a1[*(a2 + 1612)] = 0;
    v14 = *(a2 + 1612);
  }

  else
  {
    v14 = v8;
  }

  if (v7 > 0xC || ((1 << v7) & 0x1028) == 0)
  {
LABEL_17:
    *(v5 + 42) = 100;
LABEL_18:
    v15 = ICverify(a1, v14, a2);
    goto LABEL_19;
  }

  if (!*(a2 + 1414))
  {
    if (v7 == 3)
    {
      if (*(a2 + 1416))
      {
        v13 = do_leadcheck(a1, a2);
        if (v13 != 11)
        {
          goto LABEL_23;
        }
      }

      *(v5 + 42) = 100;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v13 = do_leadcheck(a1, a2);
  if (v13 != 11)
  {
    goto LABEL_23;
  }

  *(v5 + 42) = 100;
  if (v7 != 3)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*(v5 + 3472))
  {
    v15 = middle_dot(a1, v14, a2);
  }

  else
  {
    v15 = middle_dot_ver(a1, v14, a2);
  }

LABEL_19:
  v16 = v15;
  if ((v15 & 0xFFFFFFF7) == 2)
  {
    goto LABEL_24;
  }

  v37 = v9;
  v42 = 0;
  if (v7 != 12)
  {
    if (v7 == 8)
    {
      v13 = spanish_accentchk(a1, a2, v15);
      if (v13)
      {
        goto LABEL_23;
      }
    }

    else if ((*(v5 + 3492) & 0x400) != 0)
    {
      v19 = preclitic_search(a1, &v45, a2, &v39);
      if (v19 != 11)
      {
        v16 = v19;
        if (v19)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v38 = *(*(a2 + 3184) + 4);
  v20 = v39;
  if (!v39)
  {
    __strcpy_chk();
  }

  if (v7 == 12 || v7 == 5)
  {
    if (!*(a2 + 1672))
    {
      goto LABEL_46;
    }
  }

  else if (v7 == 3 && (*(v5 + 3492) & 0x400) == 0 && !*(a2 + 1672))
  {
    v25 = 0;
    if (v20)
    {
      goto LABEL_58;
    }

LABEL_68:
    if (!*(a2 + 1412))
    {
      v31 = v25;
      __strcpy_chk();
      if (v14 >= 3 && !strcspn(v43, "cdjlmnstv"))
      {
        __strcpy_chk();
        *(v6 + 34) = *a1;
        v32 = *(v5 + 88);
        if (v32 == 1)
        {
          v32 = 0;
        }

        *(v6 + 76) = v32;
        if (v32 == 3)
        {
          if ((*(v5 + 92) & 0x7FFFFFFF) == 0x40000000)
          {
            *(v6 + 76) = 1;
          }

          else
          {
            *(v6 + 20) *= 2;
          }
        }

        *(v6 + 35) = 39;
        v33 = (v14 - 1);
        if (ICverify(&v45, v33, a2) == 10 && SFcltchk((v6 + 17), 0, 1, &v42 + 1, &v42, *v6, *(v6 + 1)) == 10 && (_byteswap_ushort(*(*(v6 + 1) + 4 * v42)) & v6[29]) != 0)
        {
          if (SFcltscr(&v45, v33, *(*(a2 + 3184) + 248), v6) == 10)
          {
            if (!v31 || ((v34 = *(v37 + 4 * v45), v45 == 104) || (v34 & 0x10000000) != 0) && (v45 != 105 || (*(v37 + 4 * v46) & 0x10000000) == 0) && ((v34 & 0x800) != 0 || *v10 != 99 || *(v6 + 35) != 39))
            {
              v36 = strlen(&v45);
              SFadd(&v45, v36, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
              ++*(v4 + 2);
              if (*(a2 + 8) == 3)
              {
                puntvolat_to_period_list(a2);
              }

              goto LABEL_66;
            }
          }

          v35 = *(a2 + 1322);
          if ((v35 & 0x20) != 0)
          {
            *(a2 + 1322) = v35 & 0xFFDF;
          }
        }

        clear_preorpost(a2, 1);
      }
    }

LABEL_87:
    v16 = 11;
    goto LABEL_24;
  }

  if (v20)
  {
    v21 = &v45;
    v22 = a2;
    v23 = v38;
    v24 = v20;
  }

  else
  {
    v21 = v43;
    v22 = a2;
    v23 = v38;
    v24 = 0;
  }

  v16 = postclitic_search(v21, v22, &v40, v23, v24);
  if ((v16 - 890) <= 0xFFFFFFFD)
  {
    if ((v7 == 9 || v7 == 5) && v41)
    {
      free(v41);
    }

    goto LABEL_24;
  }

LABEL_46:
  v25 = v7 == 9;
  if (v7 == 9 || v7 == 5)
  {
    v26 = v41;
    if (v41)
    {
      if (v7 == 5 && *v41)
      {
        __strcpy_chk();
      }

      free(v26);
      v25 = v7 == 9;
    }
  }

  if ((v7 & 0xFE) == 8)
  {
    v27 = *(*(a2 + 3184) + 264);
    v28 = *(v27 + 112);
    *(v27 + 3492) &= ~0x80u;
    v28[32] &= ~0x200u;
    v28[33] &= ~0x200u;
    v28[34] &= ~0x200u;
    v28[22] = 0;
    *(*(a2 + 3184) + 4) = v38;
  }

  v16 = 11;
  if (v7 > 9 || ((1 << v7) & 0x228) == 0)
  {
    goto LABEL_24;
  }

  if (!v20)
  {
    goto LABEL_68;
  }

LABEL_58:
  if (!*v10)
  {
    goto LABEL_87;
  }

  v16 = 11;
  if (*(v6 + 35) == 39)
  {
    if (v45)
    {
      if (v46)
      {
        __s[0] = *v10;
        __s[1] = 0;
        __strcat_chk();
        __strcat_chk();
        v29 = strlen(__s);
        if (ICverify(__s, v29, a2) == 10)
        {
          v30 = strlen(__s);
          SFadd(__s, v30, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
          if (*(a2 + 8) == 3)
          {
            puntvolat_to_period_list(a2);
          }

          clear_preorpost(a2, 1);
LABEL_66:
          *v4 |= 4u;
          *(a2 + 1328) |= 0x2000uLL;
          v16 = 2;
        }
      }
    }
  }

LABEL_24:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t clear_preorpost(uint64_t result, int a2)
{
  v2 = *(*(result + 3184) + 264);
  v3 = *(v2 + 112);
  if (a2)
  {
    v4 = -257;
  }

  else
  {
    v4 = -129;
  }

  *(v2 + 3492) &= v4;
  if (a2)
  {
    v5 = -257;
  }

  else
  {
    v5 = -513;
  }

  v3[32] &= v5;
  v3[33] &= v5;
  v3[34] &= v5;
  if (a2)
  {
    v3[17] = 0;
  }

  else
  {
    v3[22] = 0;
  }

  return result;
}

uint64_t do_trailcheck(uint64_t a1)
{
  v16 = 0;
  v2 = *(*(a1 + 3184) + 264);
  v3 = *(v2 + 112);
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v2 + 42) = 100;
  v6 = a1 + 1547;
  v7 = ICverify((a1 + 1547), *(a1 + 1612), a1);
  if (SFcltchk(v6, 0, (*(a1 + 1612) - 1), &v16 + 1, &v16, v4, v5) == 10)
  {
    *(v2 + 3492) |= 0x100u;
    *(a1 + 1328) |= 0x10uLL;
    return 3;
  }

  else if (v7 == 10 && *(a1 + 8) == 9)
  {
    return 10;
  }

  else
  {
    --*(*(a1 + 3184) + 4);
    v9 = *(a1 + 1612) - 1;
    *(a1 + 1612) = v9;
    *(v6 + v9) = 0;
    v10 = (a1 + 1482);
    v11 = strlen((a1 + 1482));
    if (v11)
    {
      v12 = v11 + 0xFFFFFFFFLL;
      v13 = (v11 + a1 + 1482);
      v14 = v11 - 1;
      do
      {
        *v13-- = v10[v12--];
      }

      while (v14--);
    }

    result = 0;
    *v10 = 39;
    v10[v11 + 1] = 0;
  }

  return result;
}

uint64_t do_leadcheck(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(*(a2 + 3184) + 264);
  v4 = *(v3 + 112);
  v5 = *v4;
  v6 = *(v4 + 1);
  if (*(a2 + 8) == 3 && *(a2 + 1416))
  {
    v7 = 39;
  }

  else
  {
    v7 = 45;
  }

  v12 = 0;
  v11 = 0;
  __s[0] = v7;
  __s[1] = 0;
  __strcat_chk();
  v8 = strlen(__s);
  result = SFcltchk(__s, 0, (v8 - 1), &v12, &v11, v5, v6);
  if (result != 11)
  {
    *(v3 + 3492) |= 0x80u;
    *(a2 + 1328) |= 0x10uLL;
    ++*(*(a2 + 3184) + 4);
    __strcpy_chk();
    if (__s[0] == 45 || __s[0] == 39)
    {
      *(strlen((a2 + 1417)) + a2 + 1417 - 1) = 0;
    }

    result = 3;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t middle_dot(unsigned __int8 *__src, int a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 < 3)
  {
    goto LABEL_25;
  }

  v6 = *(a3 + 3184);
  v7 = *(v6 + 264);
  v8 = *(v6 + 2);
  v9 = a2 - 1;
  v10 = 1;
  v11 = 1;
  while (((*(v7 + 3472 + 4 * ((v11 + v8) >> 5)) >> ~(v10 + v8)) & 1) == 0 || __PAIR64__(__src[v11 + 1], __src[v11]) != 0x6C0000006CLL)
  {
    v10 = ++v11;
    if (v9 <= v11)
    {
      v11 = 0;
      break;
    }
  }

  v12 = 1;
  while (1)
  {
    if (*(a3 + 8) == 3)
    {
      v13 = &__src[v12];
      if (*(v13 - 1) == 108 && v13[1] == 108 && (*(a3 + 24) & 0x40) != 0 && *v13 == 46)
      {
        break;
      }
    }

    if (v9 <= ++v12)
    {
      goto LABEL_14;
    }
  }

  *v13 = -73;
LABEL_14:
  if (v11)
  {
    if ((v11 & 0x8000) == 0)
    {
      v14 = (v11 + 1);
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      memcpy(__dst, __src, v15);
    }

    __dst[v11 + 1] = -73;
    for (i = (v11 + 2); i <= a2; i = (i + 1))
    {
      __dst[i] = __src[i - 1];
    }

    __dst[a2 + 1] = 0;
    result = ICverify(__dst, (a2 + 1), a3);
    if (result == 10)
    {
      *(a3 + 1322) |= 2u;
      *(v7 + 4 * (v11 >> 5) + 3480) |= 1 << ~v11;
    }

    v18 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_25:
    v19 = *MEMORY[0x1E69E9840];

    return ICverify(__src, a2, a3);
  }

  return result;
}

uint64_t middle_dot_ver(char *a1, int a2, uint64_t a3)
{
  result = ICverify(a1, a2, a3);
  if (result == 11)
  {
    if (a2 >= 3)
    {
      v7 = 1;
      do
      {
        v8 = &a1[v7];
        if (*v8 == 46 && *(v8 - 1) == 108 && v8[1] == 108)
        {
          *v8 = -73;
        }

        ++v7;
      }

      while (a2 - 1 > v7);
    }

    return ICverify(a1, a2, a3);
  }

  return result;
}

uint64_t spanish_accentchk(const char *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 3184);
  v6 = *(v5 + 264);
  v7 = strlen(a1);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *(*(v5 + 248) + 56);
    do
    {
      v12 = *(v11 + 4 * a1[v9]);
      if ((v12 & 0x4064000) != 0)
      {
        if ((v12 & 0x4000000) != 0)
        {
          ++v10;
        }

        else
        {
          *(v6 + 3492) |= 4u;
          v12 = *(v11 + 4 * a1[v9]);
        }

        if ((v12 & 0x64000) != 0)
        {
          v8 = 1;
        }
      }

      ++v9;
    }

    while (v7 > v9);
    if (v10 >= 2)
    {
      *(v6 + 3492) |= 8u;
    }

    if (v8)
    {
      if (a3 != 11)
      {
        return 0;
      }

      return 11;
    }
  }

  result = 0;
  if (a3 == 11 && (*(v6 + 3492) & 8) != 0)
  {
    return 11;
  }

  return result;
}

uint64_t preclitic_search(_BYTE *a1, char *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *(*(a3 + 3184) + 264);
  v9 = *(v8 + 112);
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    while (1)
    {
      v20[v11] = v10;
      if (v10 == 39)
      {
        break;
      }

      v12 = v11 + 1;
      if (v11 <= 7)
      {
        v10 = a1[++v11];
        if (v10)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  v20[v12] = 0;
  if (v12 != 2 && *(a3 + 8) == 3)
  {
    result = 11;
    goto LABEL_27;
  }

  v19 = 0;
  v18 = 0;
  result = SFcltchk(v20, 0, (v12 - 1), &v19, &v18, *v9, *(v9 + 1));
  if (result != 10)
  {
    goto LABEL_27;
  }

  *a4 = 1;
  if (!a1[v12])
  {
    v15 = *(a3 + 1328) | 0x10;
    goto LABEL_26;
  }

  strcpy(a2, &a1[v12]);
  *(*(a3 + 3184) + 2) = v12;
  *(v8 + 3492) |= 0x100u;
  __strcpy_chk();
  v9[44] = _byteswap_ushort(*(*(v9 + 1) + 4 * v18));
  if (*(a3 + 8) == 3)
  {
    v14 = strlen(a2);
    if (*(v8 + 3472))
    {
      result = middle_dot(a2, v14, a3);
    }

    else
    {
      result = middle_dot_ver(a2, v14, a3);
    }
  }

  else
  {
    v16 = strlen(a2);
    result = ICverify(a2, v16, a3);
  }

  if (result == 10)
  {
    if ((_byteswap_ushort(*(*(v9 + 1) + 4 * v18)) & v9[29]) != 0)
    {
      result = stemnpre(a2, a3);
      goto LABEL_27;
    }

    v15 = *(a3 + 1328) | 1;
LABEL_26:
    *(a3 + 1328) = v15;
    result = 3;
    goto LABEL_27;
  }

  if (*(a3 + 8) != 3)
  {
    result = prenotstem(a2, a3);
  }

LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t postclitic_search(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, int a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v38 = 0;
  v36 = *(*(a2 + 3184) + 264);
  v7 = *(v36 + 112);
  v8 = *(a2 + 8);
  v9 = strlen(a1);
  __strcpy_chk();
  if (v9 >= 12)
  {
    v10 = 12;
  }

  else
  {
    v10 = v9;
  }

  if ((v8 & 0xFE) != 8 && v8 != 3 || v9 <= 8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 8;
  }

  if (v8 == 9 || v8 == 5)
  {
    *(a3 + 8) = malloc_type_calloc(0xDuLL, 1uLL, 0x100004077774924uLL);
  }

  if (!v13)
  {
LABEL_78:
    v17 = 888;
    goto LABEL_79;
  }

  v35 = a3;
  v16 = v8 == 5 || v8 == 12;
  v17 = 888;
  v37 = v16;
  while (1)
  {
    v18 = v9 - v13;
    v19 = __src[v18];
    v20 = v19 != 45 && v16;
    if (v20 || v8 == 3 && v19 != 45 && v19 != 39)
    {
      goto LABEL_76;
    }

    v21 = v18;
    if (__src[v18])
    {
      v22 = 0;
      do
      {
        __s2[v22] = __src[v21];
        LODWORD(v18) = v18 + 1;
        v21 = v18;
        if (__src[v18])
        {
          v23 = v22 >= 0xB;
        }

        else
        {
          v23 = 1;
        }

        ++v22;
      }

      while (!v23);
      __s2[v22] = 0;
      if (v22 == 1 && v8 != 12)
      {
        goto LABEL_79;
      }

      v24 = v22;
    }

    else
    {
      LODWORD(v22) = 0;
      v24 = 0;
      __s2[0] = 0;
    }

    if (SFcltchk(__s2, 0, (v24 - 1), &v39, &v38, *v7, *(v7 + 1)) != 10)
    {
      v17 = 889;
      goto LABEL_51;
    }

    strcpy(a1, __src);
    v25 = v9 - v22;
    *(a1 + v25) = 0;
    if (*a1 && !*(a1 + 1) && v8 != 5)
    {
      v17 = 11;
LABEL_51:
      v16 = v37;
      goto LABEL_76;
    }

    *(*(a2 + 3184) + 4) = a4 - v24;
    *(v36 + 3492) |= 0x80u;
    if (v8 == 5 && *(v7 + 44))
    {
      strcpy(*(v35 + 8), v7 + 44);
    }

    __strcpy_chk();
    v7[45] = _byteswap_ushort(*(*(v7 + 1) + 4 * v38));
    if (!*a1)
    {
      v31 = *(a2 + 1328) | (v8 == 12) | 0x10;
      goto LABEL_81;
    }

    postclitic_search_spanflags = 0;
    byte_1EC72BE6A = 0;
    if (v8 == 3)
    {
      if (*(v36 + 3472))
      {
        v26 = middle_dot(a1, v25, a2);
      }

      else
      {
        v26 = middle_dot_ver(a1, v25, a2);
      }

      if (v26 != 10)
      {
        goto LABEL_78;
      }

      goto LABEL_68;
    }

    v27 = ICverify(a1, v25, a2);
    if (v8 == 12 && v27 == 10)
    {
      if ((v7[30] & 0x80) != 0)
      {
        v31 = *(a2 + 1328) | 2;
LABEL_81:
        *(a2 + 1328) = v31;
        v17 = 3;
        goto LABEL_79;
      }

      goto LABEL_68;
    }

    if (v27 != 10)
    {
      break;
    }

LABEL_68:
    if ((*(a2 + 1328) & 0x20) != 0)
    {
      v17 = 11;
    }

    else
    {
      v17 = stemnpost(a1, __s2, a2, v38, &postclitic_search_spanflags, v35, a5);
    }

    if (v8 != 9)
    {
      goto LABEL_79;
    }

    strcat(a1, __s2);
    if (v17 == 3)
    {
      goto LABEL_79;
    }

    if (v17 == 10)
    {
      goto LABEL_79;
    }

    v28 = *(v35 + 8);
    if (!v28)
    {
      goto LABEL_79;
    }

    v16 = v37;
    if (!*v28)
    {
      goto LABEL_79;
    }

LABEL_76:
    if (!--v13)
    {
      goto LABEL_79;
    }
  }

  v17 = postnotstem(a1, a2, v38, &postclitic_search_spanflags);
  if (v17 == 889)
  {
    goto LABEL_51;
  }

  if (v8 == 9)
  {
    strcat(a1, __s2);
  }

LABEL_79:
  v29 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t stemnpre(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 1328);
  if ((v2 & 0x20) != 0)
  {
    return 11;
  }

  if (*(a2 + 8) != 9)
  {
    return 10;
  }

  v5 = *(a2 + 3184);
  v6 = *(*(v5 + 248) + 56);
  v7 = *a1;
  v9 = (*(v6 + 4 * v7) & 0x10000000) == 0 && v7 != 104;
  if (v7 == 105 || v9)
  {
    if ((*(v6 + 4 * a1[1]) & 0x10000000) != 0)
    {
      goto LABEL_23;
    }

    return 10;
  }

  v10 = *(*(v5 + 264) + 112);
  if (((*(v10 + 88) & 0x40) == 0 || !SLstrcmp((v10 + 34), "grand'") || !SLstrcmp((v10 + 34), "d'") || !SLstrcmp((v10 + 34), "senz'")) && ((*(v6 + 4 * *a1) & 0x800) != 0 || SLstrcmp((v10 + 34), "c'") && SLstrcmp((v10 + 34), "ch'") && SLstrcmp((v10 + 34), "finch'")))
  {
    return 10;
  }

  v2 = *(a2 + 1328);
LABEL_23:
  *(a2 + 1328) = v2 | 1;
  return 3;
}

uint64_t prenotstem(char *__s, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 3184);
  v5 = *(v4 + 264);
  v6 = *__s;
  v7 = *(*(*(v4 + 248) + 56) + 4 * v6) & 0x10000000;
  if (v6 != 104 && v7 == 0)
  {
    *(a2 + 1328) |= 1uLL;
  }

  v9 = *(a2 + 8);
  if (v9 == 5 || v9 == 8)
  {
    if ((*(a2 + 24) & 0x40) == 0 || !*(v5 + 88))
    {
LABEL_19:
      result = 0;
      goto LABEL_26;
    }

    v11 = strlen(__s);
    if (ICcltuna(__s, v11, a2) == 10)
    {
      result = 10;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    if (v9 != 9)
    {
      result = 888;
      goto LABEL_26;
    }

    v13 = *(v5 + 112);
    if ((~*(v13 + 88) & 0x201) == 0)
    {
      goto LABEL_19;
    }

    if (*(v13 + 34) && *(v13 + 35) == 39 && (__sa[0] = *(v13 + 34), __sa[1] = 0, __strcat_chk(), v14 = strlen(__sa), ICverify(__sa, v14, a2) == 10))
    {
      v15 = strlen(__sa);
      SFadd(__sa, v15, (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
      clear_preorpost(a2, 1);
      **(a2 + 3184) |= 4u;
      *(a2 + 1328) = *(a2 + 1328) & 0xFFFFFFFFFFFFDFFELL | 0x2000;
      result = 2;
    }

    else
    {
      result = 11;
    }
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t pandstemfr(const char *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = *(*(a3 + 3184) + 264);
  v11 = *(v10 + 112);
  v12 = strlen(a1);
  v13 = *(v11 + 60);
  v14 = (*(v11 + 8) + 4 * a4);
  v15 = *v14;
  if (((v14[1] | (v15 << 8)) & v13) == 0)
  {
    if (*(a2 + 1) == 108 && *(a2 + 2) == 97 && *(a3 + 8) == 5 && (*(a3 + 24) & 0x40) != 0 && (v13 & 0x1A00) != 0 && *(v10 + 88) == 2)
    {
      return 10;
    }

    goto LABEL_52;
  }

  if ((v15 & 0x80000000) == 0)
  {
    return a5;
  }

  v16 = v12;
  v17 = &a1[v12];
  v18 = *(v17 - 1);
  if (v18 > 0x72)
  {
    if (*(v17 - 1) <= 0x77u)
    {
      if (v18 != 115)
      {
        if (v18 != 116)
        {
          goto LABEL_52;
        }

        goto LABEL_34;
      }

      if (!SLstrcmp((a2 + 1), "je") || !SLstrcmp((a2 + 1), "tu") || !SLstrcmp((a2 + 1), "y"))
      {
        return a5;
      }
    }

    else
    {
      if (v18 == 120)
      {
        if (!SLstrcmp((a2 + 1), "je"))
        {
          return a5;
        }

        v20 = "tu";
        goto LABEL_51;
      }

      if (v18 != 122)
      {
        if (v18 != 233)
        {
          goto LABEL_52;
        }

        v20 = "je";
        goto LABEL_51;
      }

      if (*(a2 + 1) == 121 && !*(a2 + 2))
      {
        return a5;
      }
    }

    if (!SLstrcmp((a2 + 1), "en"))
    {
      return a5;
    }

    v20 = "y-en";
    goto LABEL_51;
  }

  if (*(v17 - 1) <= 0x63u)
  {
    if (v18 != 97 && v18 != 99)
    {
      goto LABEL_52;
    }

    goto LABEL_29;
  }

  if (v18 == 100)
  {
LABEL_34:
    if (SLstrcmp((a2 + 1), "il") && SLstrcmp((a2 + 1), "elle") && SLstrcmp((a2 + 1), "on"))
    {
      if (SLstrcmp((a2 + 1), "ils"))
      {
        if (SLstrcmp((a2 + 1), "elles") || v16 <= 1)
        {
          goto LABEL_52;
        }
      }

      else if (v16 < 2)
      {
        goto LABEL_52;
      }

      if (*(v17 - 2) != 110 || *(v17 - 1) != 116)
      {
        goto LABEL_52;
      }
    }

    return a5;
  }

  if (v18 != 101)
  {
    if (v18 == 105 && !SLstrcmp((a2 + 1), "je") && v16 > 1 && a1[v16 - 2] == 97)
    {
      return a5;
    }

LABEL_52:
    *(a3 + 1328) |= 2uLL;
    return 3;
  }

LABEL_29:
  if (SLstrcmp((a2 + 1), "t-il") && SLstrcmp((a2 + 1), "t-elle"))
  {
    v20 = "t-on";
LABEL_51:
    if (!SLstrcmp((a2 + 1), v20))
    {
      return a5;
    }

    goto LABEL_52;
  }

  return a5;
}

uint64_t stemnpost(char *a1, char *a2, uint64_t a3, unsigned int a4, _BYTE *a5, uint64_t a6, int a7)
{
  v13 = *(a3 + 3184);
  v14 = *(v13 + 264);
  v15 = *(v14 + 112);
  v16 = *(a3 + 8);
  v17 = strlen(a1);
  if (!a7)
  {
    goto LABEL_4;
  }

  if ((*(v15 + 88) & *(v15 + 58)) != 0)
  {
    *(v14 + 3492) |= 0x100u;
LABEL_4:
    v18 = 10;
    goto LABEL_6;
  }

  *(a3 + 1328) |= 1uLL;
  v18 = 3;
LABEL_6:
  if (v16 <= 7)
  {
    if (v16 == 3)
    {
      if ((_byteswap_ushort(*(*(v15 + 8) + 4 * a4)) & *(v15 + 60)) != 0)
      {
        return v18;
      }

      v26 = *(a3 + 1328) | 2;
      goto LABEL_37;
    }

    if (v16 != 5)
    {
      return v18;
    }

    return pandstemfr(a1, a2, a3, a4, v18);
  }

  else
  {
    if (v16 != 8)
    {
      if (v16 != 9)
      {
        if (v16 == 12)
        {
          *(v13 + 4) = v17 - 1;

          return ICcltrp(a1, a2, a3);
        }

        return v18;
      }

      if (!*(v15 + 60))
      {
        if (*a2 && a2[1] && a2[2])
        {
          *a6 = *(v15 + 90);
          *(a6 + 2) = *(v13 + 4);
          strcpy(*(a6 + 8), a2);
        }

        else
        {
          v28 = *(a6 + 8);
          if (v28 && *v28)
          {
            *(v15 + 90) = *a6;
            *(v14 + 3492) |= 0x80u;
            v29 = *(a6 + 2);
            *(v13 + 4) = *(a6 + 2);
            SFadd(a1, v29, (v14 + 40), (v14 + 44), *(v14 + 42), *(v14 + 56), *(v14 + 48), *(v14 + 64));
            v30 = *(a6 + 8);
            __strcpy_chk();
          }
        }

        return 889;
      }

      if (v17 >= 2)
      {
        v23 = &a1[v17 & 0x7FFF];
        if (*(v23 - 1) == 101 && *(v23 - 2) == 114)
        {
          *(v23 - 1) = 0;
          v24 = strcat(a1, a2);
          v25 = strlen(v24);
          SFadd(a1, v25, (v14 + 40), (v14 + 44), *(v14 + 42), *(v14 + 56), *(v14 + 48), *(v14 + 64));
          **(a3 + 3184) |= 4u;
          *(a3 + 1328) |= 0x1000uLL;
          return 2;
        }
      }

      v27 = a1[v17 - 1];
      if (v27 == 114)
      {
        v18 = 10;
      }

      else
      {
        v18 = v18;
      }

      if (!a7 || v27 == 114)
      {
        return v18;
      }

      v26 = *(a3 + 1328) | 1;
LABEL_37:
      *(a3 + 1328) = v26;
      return 3;
    }

    v20 = *(v15 + 8);
    v21 = (4 * a4) | 1;
    v22 = *(v20 + v21);
    if ((v22 & 1) != 0 && a1[v17 - 1] == 115)
    {
      *a5 = 1;
      v22 = *(v20 + v21);
    }

    return ICcltstm(a1, v22, a5, (a3 + 1547), a3);
  }
}

uint64_t postnotstem(char *a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3184);
  v9 = *(v8 + 264);
  v10 = *(v9 + 112);
  v11 = *(a2 + 8);
  v12 = strlen(a1);
  result = 888;
  if (v11 > 8)
  {
    if (v11 == 9)
    {
      if (a1[v12 - 1] != 114)
      {
        strcat(a1, (v10 + 44));
        goto LABEL_32;
      }

      __strcpy_chk();
      __s[v12] = 101;
      __s[(v12 + 1)] = 0;
      if (ICverify(__s, (v12 + 1), a2) != 10 || !*(v10 + 60))
      {
LABEL_29:
        result = 888;
        goto LABEL_42;
      }

      strcat(a1, (v10 + 44));
      goto LABEL_28;
    }

    if (v11 != 12)
    {
      goto LABEL_42;
    }

    v21 = *(v10 + 90);
    if ((v21 & 0x18) != 0)
    {
LABEL_19:
      result = 11;
      goto LABEL_42;
    }

    v23 = &a1[v12];
    v24 = v21 & 0x67;
    if (v24 != 32)
    {
      if (v24 != 4)
      {
        if (v24 != 2)
        {
          goto LABEL_19;
        }

        *v23 = 115;
        v25 = v12 + 1;
        a1[v25] = 0;
        if (ICverify(a1, v25, a2) != 10 || (*(v10 + 60) & 0x100) == 0)
        {
          goto LABEL_19;
        }

LABEL_28:
        result = 10;
        goto LABEL_42;
      }

      *v23 = 115;
      v30 = v12 + 1;
      a1[v30] = 0;
      result = ICverify(a1, v30, a2);
      if (result == 10)
      {
        goto LABEL_42;
      }

      *v23 = 0;
      result = vowelchange(a1, a2);
      if (result == 10)
      {
        goto LABEL_42;
      }

      if (result == 2)
      {
        v31 = *(a2 + 1328) | 4;
LABEL_100:
        *(a2 + 1328) = v31;
        goto LABEL_101;
      }

      *v23 = 122;
      a1[v30] = 0;
      v37 = a1;
      v36 = v30;
LABEL_80:
      if (ICverify(v37, v36, a2) == 10)
      {
        result = 10;
      }

      else
      {
        result = 11;
      }

      goto LABEL_42;
    }

    v32 = *(v23 - 1);
    v33 = (v32 - 225) > 0x13 || ((1 << (v32 + 31)) & 0x81201) == 0;
    if (v33 && v32 != 105)
    {
      if (v32 == 114)
      {
        if (*(v10 + 45) != 108 || (v41 = *(v10 + 46), v41 != 111) && v41 != 97)
        {
          if (v12 < 3)
          {
            goto LABEL_19;
          }

          v49 = &a1[v12 & 0x7FFF];
          if (SLstrncmp(v49 - 3, "far", 3))
          {
            if (SLstrncmp(v49 - 3, "dir", 3) && (v12 == 3 || SLstrncmp(v49 - 4, "trar", 4)))
            {
              goto LABEL_19;
            }
          }

          goto LABEL_28;
        }

        *(v23 - 1) = 122;
        if (ICverify(a1, v12, a2) != 10)
        {
          goto LABEL_19;
        }

        v42 = (v12 - 1);
        v43 = &a1[(v12 - 1)];
        *v43 = 0;
        if (v42 < 2 || (v44 = &a1[(v12 - 1)], SLstrncmp(v44 - 2, "fa", 2)) && SLstrncmp(v44 - 2, "di", 2) && (v42 == 2 || SLstrncmp(v44 - 3, "tra", 3)))
        {
          *(a2 + 1328) |= 2uLL;
          result = 3;
          goto LABEL_42;
        }

        if (*(v43 - 1) == 97)
        {
          *(v43 - 1) = -31;
        }

        v31 = *(a2 + 1328) | 0x1004;
        goto LABEL_100;
      }

      result = 11;
      if (v12 < 3)
      {
        goto LABEL_42;
      }

      if (v32 != 233)
      {
        goto LABEL_42;
      }

      v45 = &a1[v12 & 0x7FFF];
      if (*(v45 - 2) != 117 || *(v45 - 3) != 113)
      {
        goto LABEL_42;
      }
    }

    if (*(v10 + 45) == 108)
    {
      v34 = *(v10 + 46);
      if (v34 == 111 || v34 == 97)
      {
        result = vowelchange(a1, a2);
        if (result == 10)
        {
          goto LABEL_42;
        }

        if (result == 2)
        {
LABEL_101:
          altstem(a1, v10 + 44, a2);
          result = 2;
          goto LABEL_42;
        }

        *v23 = 122;
        v35 = v12 + 1;
        a1[v35] = 0;
        v36 = v35;
        v37 = a1;
        goto LABEL_80;
      }
    }

    if (v12 < 3)
    {
      goto LABEL_97;
    }

    if (v32 == 233)
    {
      v38 = &a1[v12 & 0x7FFF];
      if (*(v38 - 2) == 117 && *(v38 - 3) == 113)
      {
        *(v23 - 1) = 101;
        *v38 = 25970;
        v38[2] = 114;
        v39 = v12 + 3;
        a1[v39] = 0;
        v40 = ICverify(a1, v39, a2);
        goto LABEL_98;
      }

LABEL_97:
      v40 = vowelchange(a1, a2);
LABEL_98:
      if (v40 != 10)
      {
        goto LABEL_19;
      }

      goto LABEL_99;
    }

    if (v12 == 3)
    {
      goto LABEL_97;
    }

    if (v32 != 234)
    {
      goto LABEL_97;
    }

    v46 = &a1[v12 & 0x7FFF];
    if (*(v46 - 2) != 122)
    {
      goto LABEL_97;
    }

    v47 = *(v46 - 3);
    if (v47 == 105)
    {
      if (*(v46 - 4) != 100)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v47 != 97)
      {
        goto LABEL_97;
      }

      v48 = *(v46 - 4);
      if (v48 != 102 && (v12 == 4 || v48 != 114 || *(v46 - 5) != 116))
      {
        goto LABEL_97;
      }
    }

    *(v46 - 2) = 114;
    *(v23 - 1) = 0;
LABEL_99:
    v31 = *(a2 + 1328) | 0x2000000;
    goto LABEL_100;
  }

  if (v11 == 5)
  {
    if ((*(a2 + 24) & 0x40) != 0)
    {
      if (*(v9 + 88))
      {
        result = ICcltuna(a1, v12, a2);
        if (result == 10)
        {
          goto LABEL_42;
        }
      }
    }

    goto LABEL_29;
  }

  if (v11 != 8)
  {
LABEL_42:
    v26 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (SFaccent(a1, v12, *(v8 + 248), v9))
  {
    a4[2] = 1;
    v14 = *(v10 + 8);
    v15 = (4 * a3) | 1;
    if ((*(v14 + v15) & 1) != 0 && *(strlen((a2 + 1690)) + a2 + 1690 - 1) == 115)
    {
      *a4 = 1;
    }

    if (*(v9 + 40) < 2)
    {
      LODWORD(result) = ICcltstm((a2 + 1690), *(v14 + v15), a4, (a2 + 1547), a2);
      if (result == 11)
      {
        result = 889;
      }

      else
      {
        result = result;
      }

      goto LABEL_42;
    }

    v16 = *(v9 + 112);
    __strcpy_chk();
    if (*(v9 + 40) >= 1)
    {
      v17 = 0;
      do
      {
        v18 = *(v10 + 64 + 2 * v17);
        *(v10 + 60) = *(v10 + 64 + 2 * v17) & 0xF;
        *(v10 + 92) = v18 >> 12;
        result = ICcltstm((a2 + 1690 + *(a2 + 2 * v17 + 2890)), *(*(v10 + 8) + v15), a4, (a2 + 1547), a2);
        if (result != 11)
        {
          break;
        }

        v19 = *(v9 + 40);
        if (v17 < v19)
        {
          v20 = *(v9 + 112);
          __strcpy_chk();
          v19 = *(v9 + 40);
        }

        ++v17;
        result = 889;
      }

      while (v17 < v19);
      goto LABEL_42;
    }

    goto LABEL_29;
  }

  v22 = (4 * a3) | 1;
  if ((*(*(v10 + 8) + v22) & 1) == 0 || (a1[v12] = 115, v27 = (v12 + 1), a1[(v12 + 1)] = 0, *a4 = 257, ICverify(a1, v27, a2) != 10) && !SFaccent(a1, v27, *(*(a2 + 3184) + 248), v9))
  {
LABEL_32:
    result = 889;
    goto LABEL_42;
  }

  a4[2] = 1;
  strcpy(a1, (a2 + 1690));
  v28 = *(*(v10 + 8) + v22);
  v29 = *MEMORY[0x1E69E9840];

  return ICcltstm(a1, v28, a4, (a2 + 1547), a2);
}

uint64_t vowelchange(char *a1, uint64_t a2)
{
  v4 = strlen(a1);
  v5 = (v4 - 1);
  v6 = &a1[v5];
  v7 = a1[v5];
  v8 = *(a2 + 3184);
  if (v7 > 0xEC)
  {
    if (v7 == 237)
    {
      if (v5 < 1 || (*(*(*(v8 + 248) + 56) + 4 * a1[v5 - 1]) & 0x10000000) == 0)
      {
        goto LABEL_44;
      }

      v9 = 105;
      goto LABEL_43;
    }

    if (v7 == 244)
    {
      v9 = 111;
      goto LABEL_43;
    }
  }

  else
  {
    if (v7 == 225)
    {
      v9 = 97;
      goto LABEL_43;
    }

    if (v7 == 234)
    {
      v9 = 101;
      if (v5 >= 3 && (*(*(*(v8 + 264) + 112) + 90) & 0x20) != 0)
      {
        v10 = &a1[v5];
        if (a1[v5 - 1] == 122)
        {
          v11 = *(v10 - 2);
          if (v11 == 105)
          {
            if (a1[(v4 - 4)] == 100)
            {
              *(v10 - 1) = 0;
              goto LABEL_34;
            }
          }

          else if (v11 == 97)
          {
            v12 = *(v10 - 3);
            if (v12 == 102)
            {
LABEL_10:
              *(v10 - 1) = 225;
LABEL_34:
              *(a2 + 1328) |= 0x2000000uLL;
              return 2;
            }

            v9 = 101;
            if (v5 < 4 || v12 != 114)
            {
              goto LABEL_43;
            }

            if (*(v10 - 4) == 116)
            {
              goto LABEL_10;
            }
          }
        }

        v9 = 101;
      }

LABEL_43:
      *v6 = v9;
      goto LABEL_44;
    }
  }

  v13 = v7 != 233 || v5 < 2;
  if (!v13 && (v14 = &a1[v5], a1[v5 - 1] == 117) && *(v14 - 2) == 113)
  {
    *v6 = 101;
    if ((*(*(*(*(a2 + 3184) + 264) + 112) + 90) & 0x20) != 0)
    {
      *(v14 + 1) = -5518;
      v6[3] = 0;
      goto LABEL_34;
    }
  }

  else if ((*(*(*(v8 + 264) + 112) + 90) & 4) != 0)
  {
    v6[1] = 122;
    v6[3] = 0;
    if (ICverify(a1, (v4 + 1), a2) == 10)
    {
      switch(v7)
      {
        case 'a':
          v15 = -31;
          break;
        case 'e':
          v15 = -22;
          break;
        case 'o':
          v15 = -12;
          break;
        default:
          v6[1] = 0;
          return 10;
      }

      *v6 = v15;
      v6[1] = 0;
      return 2;
    }
  }

LABEL_44:
  v6[1] = 114;
  a1[v5 + 2] = 0;
  if (ICverify(a1, (v5 + 2), a2) != 10)
  {
    return 11;
  }

  v16 = v7 != 101 || v5 < 2;
  if (!v16 && a1[v5 - 1] == 117 && a1[v5 - 2] == 113)
  {
    *v6 = 233;
    return 2;
  }

  return 10;
}

uint64_t altstem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(*(a3 + 3184) + 264);
  __strcpy_chk();
  __strcat_chk();
  v5 = strlen(__s);
  SFadd(__s, v5, (v4 + 40), (v4 + 44), *(v4 + 42), *(v4 + 56), *(v4 + 48), *(v4 + 64));
  **(a3 + 3184) |= 4u;
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t ICcltacc(char *__s, _BYTE *a2, char *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4[398];
  v8 = *(*(v7 + 248) + 56);
  v9 = *(*(v7 + 264) + 112);
  if (a2[2])
  {
    v10 = strlen(a3);
    __memmove_chk();
    __sa[v10 - strlen((v9 + 44))] = 0;
    if (a2[1])
    {
      *&__sa[strlen(__sa)] = 115;
    }

    v11 = strlen(__sa);
    memmove(__s, __sa, v11 + 1);
  }

  v12 = strlen(__s);
  v13 = (v12 - *(v9 + 92));
  v14 = __s[v13];
  if ((*(v8 + 4 * v14) & 0x4000000) == 0)
  {
    HIDWORD(v16) = v14 - 97;
    LODWORD(v16) = v14 - 97;
    v15 = v16 >> 1;
    if (v15 <= 0xA && ((0x495u >> v15) & 1) != 0)
    {
      __s[v13] = byte_1D2BF7938[v15];
    }

    if (v12 >= 1)
    {
      for (i = 0; (v12 & 0x7FFF) != i; ++i)
      {
        v18 = __s[i];
        if ((*(v8 + 4 * v18) & 0x4000000) == 0 || i == v12 - *(v9 + 92))
        {
          continue;
        }

        if (__s[i] <= 0xECu)
        {
          if (v18 == 225)
          {
            v19 = 97;
            goto LABEL_24;
          }

          if (v18 == 233)
          {
            v19 = 101;
            goto LABEL_24;
          }
        }

        else
        {
          switch(v18)
          {
            case 0xED:
              v19 = 105;
              goto LABEL_24;
            case 0xF3:
              v19 = 111;
              goto LABEL_24;
            case 0xFA:
              v19 = 117;
LABEL_24:
              __s[i] = v19;
              break;
          }
        }
      }
    }

    if (*a2)
    {
      __s[v12 - 1] = 0;
      v20 = strlen(__s);
      memmove(a4 + 1690, __s, v20 + 1);
      __strcat_chk();
      if (!a2[1])
      {
        a4[166] |= 0x1000uLL;
      }
    }

    else
    {
      v23 = strlen(__s);
      memmove(a4 + 1690, __s, v23 + 1);
      __strcat_chk();
    }

    v24 = 4;
    goto LABEL_34;
  }

  if (*a2)
  {
    __s[(v12 - 1)] = 0;
    v21 = strlen(__s);
    memmove(a4 + 1690, __s, v21 + 1);
    __strcat_chk();
    if (!a2[1])
    {
      v24 = 4096;
LABEL_34:
      a4[166] |= v24;
      *a4[398] |= 4u;
      result = 2;
      goto LABEL_35;
    }
  }

  result = 10;
LABEL_35:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICcltcap(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v67 = 0.0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v2 = *(a1 + 3184);
  v62 = *(*(v2 + 248) + 56);
  v3 = *(v2 + 264);
  v4 = *(v3 + 112);
  v5 = strlen((v4 + 34));
  v6 = strlen((v4 + 44));
  v7 = *(a1 + 8);
  *v2;
  __strcpy_chk();
  v61 = v2;
  if ((*v2 & 4) != 0 && (*(a1 + 1330) & 0x80) == 0)
  {
    v8 = strlen(__s);
    if (v8 >= v6)
    {
      __s[v8 - v6] = 0;
    }
  }

  v9 = ICEndToken(a1);
  v10 = *(v4 + 34);
  if (*(v4 + 34))
  {
    v11 = *(v4 + 16);
    if (v11 == 3)
    {
      if (v5 >= 1)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = 1 << ~v12;
          if ((*(v3 + 92 + 4 * (v13 >> 5)) & v14) != 0)
          {
            *&__s[4 * (v13 >> 5) - 1] |= v14;
          }

          v12 = ++v13;
        }

        while (v5 > v13);
      }

      v11 = 3;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *(v4 + 44);
  if (!*(v4 + 44))
  {
    v22 = 0;
    v16 = 0;
LABEL_25:
    v21 = 1;
    goto LABEL_26;
  }

  v16 = *(v4 + 17);
  if (v16 == 3 && v6 >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = 1 << ~v17;
      if ((*(v3 + 92 + 4 * (v18 >> 5)) & v19) != 0)
      {
        *(&v65 + (v18 >> 5)) |= v19;
      }

      v17 = ++v18;
    }

    while (v6 > v18);
  }

  if (v7 != 9)
  {
    v22 = 0;
    goto LABEL_25;
  }

  v20 = *(v4 + 90);
  v21 = v20 >= 0;
  v22 = v20 < 0;
LABEL_26:
  v23 = *(v4 + 76);
  v24 = *(v4 + 80);
  v64 = v24;
  v25 = *(v3 + 72);
  v26 = *v25;
  if (*(v3 + 102) == 2 && v26 == 1)
  {
    v26 = v25[1];
    if (!v25[1])
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      if (!v15)
      {
        goto LABEL_63;
      }

      goto LABEL_46;
    }

    v27 = 0;
    v28 = 0;
    v26 = 1;
  }

  else if (v26 == 4)
  {
    v27 = 0;
    if (v23 == 2 || !v24)
    {
      v28 = 0;
      v26 = 0;
    }

    else
    {
      if (v10 == 0 && v9 != 0)
      {
        v28 = 0;
      }

      else
      {
        v28 = 4;
      }

      if (v10 | v9)
      {
        v27 = v10 != 0 || v9 == 0;
        v26 = v28;
      }

      else
      {
        if ((*(v3 + 92) & 0x80000000) != 0)
        {
          *(a1 + 1322) |= 0x400u;
          v15 = *(v4 + 44);
        }

        v28 = 4;
        v27 = 1;
        v26 = 4;
      }
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v31 = *(v3 + 80);
  v29 = *v31;
  v30 = v31[1];
  if (!v15)
  {
    goto LABEL_63;
  }

LABEL_46:
  if (v29 != v24 && v26 >= v23 && v26 != 4)
  {
    if (v23 != 1)
    {
      if (v23 != 2)
      {
        if (v23 == 3)
        {
          v56 = 0;
          v63 = __PAIR64__(v30, v29);
          v58 = v16 == 0;
          v59 = v16 != 0;
          v27 = 1;
          v28 = v26;
          goto LABEL_69;
        }

        goto LABEL_63;
      }

      goto LABEL_65;
    }

LABEL_67:
    v58 = 0;
    v56 = 0;
    goto LABEL_68;
  }

  if (v16)
  {
    v32 = !v22;
    if (v16 != 1)
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      LODWORD(v66) = 0x80000000;
      v58 = 1;
      v59 = 0;
      goto LABEL_52;
    }

    if (v16 == 2 && v23 == 2)
    {
LABEL_63:
      v56 = 0;
      v58 = 1;
      v59 = 0;
      goto LABEL_69;
    }

    if (v23 != 2)
    {
      if (v21)
      {
        goto LABEL_67;
      }

      LODWORD(v66) = 0x80000000;
      v58 = 0;
      v59 = 1;
LABEL_52:
      v56 = 1;
      goto LABEL_69;
    }
  }

  else if (v23 != 2)
  {
    goto LABEL_63;
  }

LABEL_65:
  v58 = 0;
  v66 = -1;
  v56 = 2;
LABEL_68:
  v59 = 1;
LABEL_69:
  v60 = v7;
  v57 = v16;
  if (v9)
  {
    v33 = 0;
  }

  else
  {
    v33 = 4 * (*(v3 + 88) != 2);
  }

  v34 = v24;
  if (v26 != 4 && v24 != v29 && v26 > v23 || (v35 = 0, v23 == 3) && v26 != 3)
  {
    v63 = __PAIR64__(v30, v29);
    v38 = v26 != 2 && v23 != 2 && v11 == 2 || v11 == 3;
    v35 = v38;
    if (v38)
    {
      v33 = 4 * (v9 == 0);
    }

    v27 = 1;
    v28 = v26;
  }

  v39 = *(v4 + 34);
  if (*(v4 + 34))
  {
    v39 = v11 == 2 && v23 != 2;
    if (v11 == 3 || v39)
    {
      if (v11 == 2 && v9)
      {
        v39 = 0x80000000;
        LODWORD(v67) = 0x80000000;
        v35 = 1;
        v33 = 1;
      }

      else
      {
        v39 = 0;
        if (v9)
        {
          v33 = 0;
        }

        v35 = 1;
      }
    }

    if (v23 == 3 && v26 == 3 && v24 != v29)
    {
      v63 = __PAIR64__(v30, v29);
      v28 = 3;
      v27 = 1;
    }

    if (v11 || v9 != 1)
    {
      if (v11 == 1 && !v9)
      {
        v39 = 0;
        *(a1 + 1322) |= 0x400u;
        v67 = 0.0;
        v33 = 4;
        v35 = 1;
      }
    }

    else
    {
      *(a1 + 1322) |= 0x800u;
      v67 = -COERCE_DOUBLE(0x8000000080000000);
      v35 = 1;
      v39 = 0x80000000;
      v33 = 1;
    }
  }

  else if (!v23 && (v28 - 3) <= 0xFDu && v9 == 1)
  {
    v39 = 0;
    *(a1 + 1322) |= 0x800u;
    v27 = 1;
    v28 = 1;
  }

  if (*(v4 + 34))
  {
    if ((v35 & 1) != 0 || v33 == 4)
    {
      if (!v39 && (v68 & 0x80000000) != 0 && v9)
      {
        LODWORD(v67) = 0x80000000;
        v33 = 1;
      }

      v41 = strlen((v4 + 34));
      v42 = (v4 + 34);
      v43 = v33;
      v44 = v33;
    }

    else
    {
      v41 = strlen((v4 + 34));
      v42 = (v4 + 34);
      v43 = v33;
      v44 = v11;
    }

    SLrecap(v42, v41, v43, &v67, v44, v62);
  }

  if (v27)
  {
    if (v34 <= -1 && v28 == 0)
    {
      v46 = 1;
    }

    else
    {
      v46 = v28;
    }

    v47 = v60;
    if ((v60 == 8 || v60 == 5) && (*(a1 + 24) & 0x40) != 0 && (*(v3 + 3492) & 2) != 0 && *(a1 + 1690))
    {
      __strcpy_chk();
    }

    v48 = strlen(__s);
    v49 = v62;
    SLrecap(__s, v48, v46, &v63, v23, v62);
  }

  else
  {
    v50 = strlen(__s);
    v49 = v62;
    SLrecap(__s, v50, v23, &v64, v23, v62);
    v47 = v60;
  }

  if (*(v4 + 44))
  {
    v51 = strlen((v4 + 44));
    if (v58)
    {
      v52 = &v65;
      v53 = v57;
    }

    else
    {
      v52 = &v66;
      v53 = v56;
    }

    SLrecap((v4 + 44), v51, v53, v52, v53, v49);
  }

  if ((((v35 | v27) == 0) & ~v59) != 0)
  {
    if ((*v61 & 4) != 0)
    {
      __strcpy_chk();
      *(a1 + 1686) = 1;
    }

    else
    {
      __strcpy_chk();
    }

    result = 10;
  }

  else
  {
    *(a1 + 1328) |= 0x400uLL;
    if ((v47 == 8 || v47 == 5) && (*(a1 + 24) & 0x40) != 0)
    {
      if (*(v4 + 46) == 192)
      {
        SFremacc((v4 + 44), v49, v47);
      }

      __strcpy_chk();
      SFremacc((a1 + 1690), v49, v47);
    }

    else
    {
      __strcpy_chk();
      *(a1 + 1686) = 1;
    }

    *v61 |= 4u;
    result = 2;
  }

  v55 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICcltrp(char *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(a3 + 3184);
  v6 = *(*(v5 + 264) + 112);
  v7 = *(v6 + 60);
  v8 = *(*(v5 + 248) + 56);
  v9 = strlen(a1);
  v10 = (v9 - 1);
  if (((v9 - 1) & 0x8000) != 0)
  {
    v13 = 32;
    v12 = 32;
  }

  else
  {
    v11 = &a1[(v9 - 1)];
    v12 = *v11;
    if (v9 == 1)
    {
      v13 = 32;
    }

    else
    {
      v13 = *(v11 - 1);
      if (v10 != 1)
      {
        v14 = *(v11 - 2);
        goto LABEL_8;
      }
    }
  }

  v14 = 32;
LABEL_8:
  v15 = *(v6 + 90) & 0x7F;
  result = 11;
  if (v15 <= 7)
  {
    if (v15 == 2)
    {
      if ((*(v6 + 60) & 0x100) == 0)
      {
        return 10;
      }
    }

    else
    {
      if (v15 != 4)
      {
        return result;
      }

      if ((*(v6 + 60) & 0x100) == 0)
      {
        if ((*(v6 + 60) & 0x200) == 0)
        {
          if ((*(v6 + 60) & 0x400) == 0)
          {
            v19 = a2;
            if (SLstrcmp(a2, "-la"))
            {
              if (SLstrcmp(a2, "-las"))
              {
                if (SLstrcmp(a2, "-lo"))
                {
                  v20 = "-los";
LABEL_35:
                  if (SLstrcmp(v19, v20))
                  {
LABEL_125:
                    icmodpost(v19, a3);
LABEL_126:
                    v28 = a1;
                    v29 = v19;
                    goto LABEL_127;
                  }

                  v19[4] = 0;
                  v21 = 1936682541;
                  goto LABEL_124;
                }

LABEL_140:
                v21 = 7302701;
                goto LABEL_124;
              }

LABEL_122:
              v19[4] = 0;
              v42 = 28205;
LABEL_123:
              v21 = v42 | 0x73610000;
              goto LABEL_124;
            }

LABEL_100:
            v21 = 6385197;
            goto LABEL_124;
          }

          v38 = (v9 - 1);
          v39 = &a1[v38];
          v40 = a1[v38];
          if (v40 <= 0xE9)
          {
            v41 = a2;
            if (v40 == 105)
            {
              goto LABEL_130;
            }

            if (v40 != 225)
            {
LABEL_134:
              v39[1] = 115;
              a1[v38 + 2] = 0;
              v48 = (v9 + 1);
              v49 = a1;
LABEL_175:
              result = ICverify(v49, v48, a3);
              if (result != 10)
              {
                v39[1] = 0;

                return icpost2alt(a1, v41, a3);
              }

              return result;
            }
          }

          else
          {
            v41 = a2;
            if (v40 != 234 && v40 != 244)
            {
              if (v40 != 237)
              {
                goto LABEL_134;
              }

LABEL_130:
              v47 = *(v39 - 1);
              result = 10;
              if ((v47 - 97) <= 0x14 && ((1 << (v47 - 97)) & 0x104011) != 0 || v47 == 252)
              {
                return result;
              }

              v41 = a2;
              goto LABEL_134;
            }
          }

          switch(v12)
          {
            case 225:
              v43 = 97;
              break;
            case 234:
              v43 = 101;
              break;
            case 244:
              v43 = 111;
              break;
            default:
LABEL_173:
              v39[1] = 114;
              v58 = v38 + 2;
              a1[v38 + 2] = 0;
              v59 = (v9 + 1);
              result = ICverify(a1, (v38 + 2), a3);
              if (result == 10)
              {
                return result;
              }

              v39[1] = 122;
              a1[v58] = 0;
              v49 = a1;
              v48 = v59;
              goto LABEL_175;
          }

          *v39 = v43;
          goto LABEL_173;
        }

        icstem2(a1, a3);
LABEL_63:
        v27 = *(a3 + 1328) | 0x1000;
LABEL_64:
        *(a3 + 1328) = v27;
        v28 = a1;
        v29 = a2;
LABEL_127:
        altstem(v28, v29, a3);
        return 2;
      }

      if (*a3 == 100)
      {
        return result;
      }
    }

    a1[(v9 - 1)] = 0;
    goto LABEL_63;
  }

  if (v15 != 8)
  {
    if (v15 != 16)
    {
      if (v15 != 32)
      {
        return result;
      }

      if ((*(v6 + 60) & 0x200) == 0)
      {
        v17 = &a1[(v9 - 1)];
        v18 = *v17;
        if (v18 <= 0xE9)
        {
          if (v18 != 105)
          {
            if (v18 != 225)
            {
              goto LABEL_111;
            }

            goto LABEL_77;
          }
        }

        else
        {
          if (v18 == 234 || v18 == 244)
          {
LABEL_77:
            if (*(v6 + 45) != 108)
            {
              goto LABEL_111;
            }

            v33 = *(v6 + 46);
            if (v33 != 111 && v33 != 97)
            {
              goto LABEL_111;
            }

            v34 = *(v8 + 4 * *(v17 - 1));
            v36 = (v34 & 0x10000000) == 0 || v12 != 105;
            if ((v34 & 0x10000000) != 0 && v12 == 237)
            {
              *v17 = 105;
              v37 = a2;
            }

            else
            {
              v37 = a2;
              if (v18 - 225 <= 0x13 && ((1 << (v18 + 31)) & 0x80201) != 0)
              {
                icvowelchange(a1, a3);
              }
            }

            v17[1] = 114;
            a1[v10 + 2] = 0;
            if (ICverify(a1, (v10 + 2), a3) != 10)
            {
              if (v36)
              {
                return 11;
              }

              goto LABEL_111;
            }

            if (v36)
            {
              *(a3 + 1328) &= ~4uLL;
              return 10;
            }

            *v17 = 237;
            *(a3 + 1328) |= 0x1000uLL;
            v28 = a1;
            v29 = v37;
            goto LABEL_127;
          }

          if (v18 != 237)
          {
            goto LABEL_111;
          }
        }

        v31 = *(v17 - 1);
        v32 = (v31 - 97) > 0x14 || ((1 << (v31 - 97)) & 0x104011) == 0;
        if (v32 && v31 != 252 && v18 != 105)
        {
          goto LABEL_111;
        }

        goto LABEL_77;
      }

      if (v12 == 114)
      {
        if (v10 >= 3)
        {
          v23 = &a1[(v9 - 1)];
          v24 = v23 - 3;
          if (!SLstrcmp(v23 - 3, "quer"))
          {
            if (*(v6 + 45) == 108 && ((v44 = *(v6 + 46), v44 == 111) || v44 == 97))
            {
              v45 = v9 << 48;
              v46 = -22;
            }

            else
            {
              a1[v9] = 101;
              v45 = (v9 << 48) + 0x1000000000000;
              v46 = 114;
            }

            v29 = a2;
            v50 = &a1[v45 >> 48];
            *v50 = v46;
            v50[1] = 0;
            *(a3 + 1328) |= 0x2000000uLL;
            v28 = a1;
            goto LABEL_127;
          }

          if (v10 != 3 && v14 == 122 && v13 == 101)
          {
            v25 = *v24;
            if (v25 == 97)
            {
              v26 = *(v23 - 4);
              if (v26 != 102 && (v10 < 5 || v26 != 114 || *(v23 - 5) != 116))
              {
                goto LABEL_150;
              }

              goto LABEL_144;
            }

            if (v25 == 105 && *(v23 - 4) == 100)
            {
LABEL_144:
              if (*(v6 + 45) == 108 && ((v51 = *(v6 + 46), v51 == 111) || v51 == 97))
              {
                if (v25 == 97)
                {
                  *v24 = -31;
                }

                *(v23 - 2) = 0;
              }

              else
              {
                *(v23 - 1) = 114;
              }

              v27 = *(a3 + 1328) | 0x2000000;
              goto LABEL_64;
            }
          }
        }

LABEL_150:
        HIDWORD(v53) = v13 - 97;
        LODWORD(v53) = v13 - 97;
        v52 = v53 >> 1;
        v54 = 1;
        if (v52 > 3)
        {
          v19 = a2;
          if (v52 != 7)
          {
            v55 = 1;
            if (v52 != 4)
            {
              goto LABEL_162;
            }

            if ((v14 & 0xFFFFFFFB) == 0x61)
            {
              v55 = 0;
              v54 = 1;
              goto LABEL_162;
            }

            v55 = 0;
            v54 = 1;
            if (v14 == 111 || v14 == 117 || v14 == 252)
            {
              goto LABEL_162;
            }
          }
        }

        else
        {
          v19 = a2;
          if (v52)
          {
            v55 = 1;
            if (v52 != 2)
            {
              goto LABEL_162;
            }
          }
        }

        v54 = 0;
        v55 = 1;
LABEL_162:
        if (*(v6 + 45) != 108)
        {
          return 10;
        }

        v56 = *(v6 + 46);
        if (v56 != 111 && v56 != 97)
        {
          return 10;
        }

        v57 = &a1[(v9 - 1)];
        *v57 = 0;
        if (v55)
        {
          if ((v54 & 1) == 0)
          {
            icvowelchange(a1, a3);
          }
        }

        else
        {
          *(v57 - 1) = -19;
          *(a3 + 1328) |= 4uLL;
        }

        *(a3 + 1328) |= 0x1000uLL;
        goto LABEL_126;
      }

LABEL_111:
      *(a3 + 1328) |= 2uLL;
      return 3;
    }

    if ((*(v6 + 60) & 0x800) == 0)
    {
      if ((*(v6 + 60) & 0x300) != 0)
      {
        icstem2(a1, a3);
        v22 = *(a3 + 1328);
        v19 = a2;
        if ((v22 & 4) != 0)
        {
          altstem(a1, a2, a3);
          v22 = *(a3 + 1328);
        }

        *(a3 + 1328) = v22 | 0x1000;
        if (SLstrcmp(a2, "-na"))
        {
          if (SLstrcmp(a2, "-nas"))
          {
            if (SLstrcmp(a2, "-no"))
            {
              return 2;
            }

            v21 = 7302189;
            goto LABEL_124;
          }

          a2[4] = 0;
          v42 = 27693;
          goto LABEL_123;
        }

        v21 = 6384685;
LABEL_124:
        *v19 = v21;
        goto LABEL_125;
      }

      if ((*(v6 + 60) & 0x400) != 0)
      {
        v19 = a2;
        if (SLstrcmp(a2, "-na"))
        {
          if (!SLstrcmp(a2, "-nas"))
          {
            v21 = 7561517;
            goto LABEL_124;
          }

          if (SLstrcmp(a2, "-no"))
          {
            goto LABEL_111;
          }

          a2[2] = 0;
          v30 = 28461;
        }

        else
        {
          a2[2] = 0;
          v30 = 24877;
        }

        *a2 = v30;
        goto LABEL_125;
      }
    }

    return 10;
  }

  if ((*(v6 + 60) & 0x400) != 0)
  {
    return 10;
  }

  if ((*(v6 + 60) & 0x100) != 0)
  {
    a1[(v9 - 1)] = 0;
  }

  else
  {
    if ((*(v6 + 60) & 0x200) == 0)
    {
      if ((*(v6 + 60) & 0x800) == 0)
      {
        return result;
      }

      v19 = a2;
      if (SLstrcmp(a2, "-a"))
      {
        if (SLstrcmp(a2, "-as"))
        {
          if (SLstrcmp(a2, "-o"))
          {
            v20 = "-os";
            goto LABEL_35;
          }

          goto LABEL_140;
        }

        goto LABEL_122;
      }

      goto LABEL_100;
    }

    icstem2(a1, a3);
  }

  *(a3 + 1328) |= 0x1000uLL;

  return icpost3alt(a1, a2, a3);
}

uint64_t icstem2(const char *a1, uint64_t a2)
{
  v4 = strlen(a1);
  v5 = v4;
  v6 = v4 - 1;
  if (v4 >= 1)
  {
    v7 = (v4 & 0x7FFF) - 1;
    if (a1[v7] == 115)
    {
      a1[v7] = 0;
      return 0;
    }
  }

  v8 = v6;
  a1[v6] = 0;
  if (v6 < 3)
  {
    if (v6 != 2)
    {
LABEL_15:
      icvowelchange(a1, a2);
      return 0;
    }

    v10 = 2;
  }

  else
  {
    v9 = &a1[v6];
    if (!SLstrcmp(v9 - 3, "que"))
    {
      *(v9 - 1) = -23;
      goto LABEL_17;
    }

    v10 = v8;
  }

  v11 = &a1[v10];
  if (*(v11 - 1) != 105)
  {
    goto LABEL_15;
  }

  v12 = a1[(v5 - 3)];
  v13 = (v12 - 97) > 0x14 || ((1 << (v12 - 97)) & 0x104011) == 0;
  if (!v13 || v12 == 252)
  {
    *(v11 - 1) = -19;
LABEL_17:
    *(a2 + 1328) |= 4uLL;
  }

  return 0;
}

uint64_t icmodpost(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 3184) + 264) + 112);
  __strcpy_chk();
  *(v3 + 32) = *(v3 + 90);
  *(a2 + 1328) |= 0x80000uLL;
  __strcpy_chk();
  return 0;
}

uint64_t icpost2alt(uint64_t a1, char *a2, uint64_t a3)
{
  if (SLstrcmp(a2, "-la"))
  {
    if (!SLstrcmp(a2, "-las"))
    {
      v8 = 7561517;
LABEL_11:
      *a2 = v8;
      goto LABEL_12;
    }

    if (SLstrcmp(a2, "-lo"))
    {
      if (SLstrcmp(a2, "-los"))
      {
        *(a3 + 1328) |= 2uLL;
        return 3;
      }

      v8 = 7565101;
      goto LABEL_11;
    }

    a2[2] = 0;
    v7 = 28461;
  }

  else
  {
    a2[2] = 0;
    v7 = 24877;
  }

  *a2 = v7;
LABEL_12:
  v9 = *(*(*(a3 + 3184) + 264) + 112);
  if ((*(v9 + 90) & 4) != 0 && (*(v9 + 60) & 0x800) != 0)
  {
    v11 = 0;
    *__src = 28205;
    __strcat_chk();
    strcpy(a2, __src);
  }

  icmodpost(a2, a3);
  altstem(a1, a2, a3);
  return 2;
}

uint64_t icpost3alt(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (SLstrcmp(a2, "-a"))
  {
    if (SLstrcmp(a2, "-as"))
    {
      if (SLstrcmp(a2, "-o"))
      {
        if (SLstrcmp(a2, "-os"))
        {
          *(a3 + 1328) |= 2uLL;
          return 3;
        }

        a2[4] = 0;
        v7 = 1936682029;
      }

      else
      {
        v7 = 7302189;
      }
    }

    else
    {
      a2[4] = 0;
      v7 = 1935764525;
    }
  }

  else
  {
    v7 = 6384685;
  }

  *a2 = v7;
  icmodpost(a2, a3);
  altstem(a1, a2, a3);
  return 2;
}

uint64_t icvowelchange(const char *a1, uint64_t a2)
{
  v4 = (strlen(a1) - 1);
  v5 = a1[v4];
  if (v5 > 0xE0)
  {
    switch(v5)
    {
      case 0xF4u:
        v6 = 111;
        goto LABEL_14;
      case 0xEAu:
        v6 = 101;
        goto LABEL_14;
      case 0xE1u:
        v6 = 97;
        goto LABEL_14;
    }
  }

  else
  {
    switch(v5)
    {
      case 'a':
        v6 = -31;
        goto LABEL_14;
      case 'e':
        v6 = -22;
        goto LABEL_14;
      case 'o':
        v6 = -12;
LABEL_14:
        a1[v4] = v6;
        *(a2 + 1328) |= 4uLL;
        break;
    }
  }

  return 0;
}

uint64_t ICcltstm(char *a1, char a2, _BYTE *a3, char *a4, uint64_t a5)
{
  v10 = *(a5 + 3184);
  v11 = *(v10 + 264);
  v12 = *(v11 + 112);
  v13 = strlen(a1);
  v14 = 0;
  v15 = *(v12 + 92);
  if (v13 <= v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13 - v15;
  }

  if ((*(a5 + 24) & 0x40) != 0)
  {
    if (*(v11 + 88))
    {
      if (*(v11 + 88) == 2)
      {
LABEL_7:
        v14 = 1;
        goto LABEL_9;
      }

      v21 = v11 + 92;
      v22 = *(a5 + 1612);
      if ((*(v11 + 92) & 0x80000000) != 0)
      {
        LOWORD(v24) = 0;
        while (v22 > v24)
        {
          LOWORD(v24) = v24 + 1;
          if (((*(v21 + 4 * (v24 >> 5)) >> ~v24) & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v24 = v22 & ~(v22 >> 31);
LABEL_74:
        v23 = v24 == 1;
        if (!v16 && v24 == 1)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v23 = 0;
        LOWORD(v24) = 0;
      }

      v14 = v24 == v22;
      if (!v23 && v24 != v22)
      {
        v14 = 0;
        if (v16 >= v24 && v24 != 2)
        {
          v14 = 1;
          if (v22 > v24)
          {
            do
            {
              v25 = (1 << ~v24) & *(v21 + 4 * (v24 >> 5));
              v14 = v25 == 0;
              v24 = (v24 + 1);
              if (v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = v24 < v22;
              }
            }

            while (v26);
          }
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_9:
  if (!*(v12 + 60))
  {
    *(v11 + 3492) &= ~0x80u;
    *(v12 + 64) &= ~0x200u;
    *(v12 + 66) &= ~0x200u;
    *(v12 + 68) &= ~0x200u;
    *(v12 + 44) = 0;
    return 11;
  }

  if (v13 >= 1)
  {
    v17 = 0;
    while ((*(*(*(v10 + 248) + 56) + 4 * a1[v17]) & 0x4000000) == 0)
    {
      if ((v13 & 0x7FFF) == ++v17)
      {
        goto LABEL_14;
      }
    }

    if (*a3)
    {
      a1[(v13 - 1)] = 0;
      v20 = strlen(a1);
      memmove((a5 + 1690), a1, v20 + 1);
      __strcat_chk();
      if (!a3[1])
      {
        *(a5 + 1328) |= 0x1000uLL;
      }

      goto LABEL_55;
    }

    if (a3[2])
    {
      v28 = v14;
    }

    else
    {
      v28 = 1;
    }

    if ((v28 & 1) == 0)
    {
LABEL_55:
      if (a3[2])
      {
        v29 = v14;
      }

      else
      {
        v29 = 1;
      }

      if ((v29 & 1) == 0)
      {
        *(a5 + 1328) |= 4uLL;
        if (!*a3)
        {
          v30 = strlen(a1);
          memmove((a5 + 1690), a1, v30 + 1);
          __strcat_chk();
        }
      }

      goto LABEL_80;
    }

    return 10;
  }

LABEL_14:
  if (!a3[2])
  {
    if ((a2 & 2) != 0)
    {
      if ((*(v12 + 62) & 0x80) != 0)
      {
        return 10;
      }

      if (!*a3 && v14)
      {
        return 10;
      }
    }

    if (v14)
    {
      if (!*a3)
      {
        return 10;
      }
    }

    else
    {
      HIDWORD(v32) = a1[v16] - 97;
      LODWORD(v32) = HIDWORD(v32);
      v31 = v32 >> 1;
      if (v31 <= 0xA && ((0x495u >> v31) & 1) != 0)
      {
        a1[v16] = byte_1D2BF7943[v31];
      }

      if (!*a3)
      {
        v34 = strlen(a1);
        memmove((a5 + 1690), a1, v34 + 1);
LABEL_78:
        __strcat_chk();
LABEL_79:
        *(a5 + 1328) |= 4uLL;
LABEL_80:
        *v10 |= 4u;
        return 2;
      }
    }

    a1[(v13 - 1)] = 0;
    v33 = strlen(a1);
    memmove((a5 + 1690), a1, v33 + 1);
    __strcat_chk();
    if (!a3[1])
    {
      *(a5 + 1328) |= 0x1000uLL;
    }

    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  if ((a2 & 2) != 0 && (*(v12 + 62) & 0x80) != 0)
  {
    goto LABEL_78;
  }

  if (a3[1])
  {
    v18 = v14;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    return 10;
  }

  return ICcltacc(a1, a3, a4, a5);
}

uint64_t ICcltuna(char *__s, int a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 3184);
  v7 = *(v6 + 248);
  v8 = *(v6 + 264);
  *(v8 + 40) = 0;
  v9 = (v8 + 40);
  v10 = *(v7 + 56);
  *(v8 + 44) = 0;
  if (*(a3 + 8) == 8 && *(a3 + 24) == 64)
  {
    LOWORD(v11) = *(v8 + 88);
    if (!*(v8 + 88))
    {
LABEL_15:
      if ((*(v8 + 4 * (v11 >> 5) + 92) >> ~v11))
      {
        *(a3 + 1328) |= 0x1000000uLL;
      }

      goto LABEL_66;
    }

    v12 = strlen(__s);
    if (v12)
    {
      v11 = 0;
      while ((*(v10 + 4 * __s[v11]) & 0x4000000) == 0)
      {
        if (v12 == ++v11)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_15;
    }
  }

LABEL_8:
  if (*(v8 + 88) - 4 >= 0xFFFFFFFD && (*(v10 + 4 * *__s) & 0x10000000) != 0)
  {
    __strcpy_chk();
    v13 = (((v45[2] - 97) >> 1) | ((v45[2] - 97) << 7));
    if (v13 > 3)
    {
      v14 = &v44;
      switch(v13)
      {
        case 4u:
          v15 = 2;
          v16 = -18;
          v17 = -19;
          break;
        case 7u:
          v15 = 2;
          v16 = -12;
          v17 = -13;
          break;
        case 0xAu:
          v15 = 2;
          v16 = -5;
          v17 = -7;
          break;
        default:
          goto LABEL_26;
      }

LABEL_23:
      *v14 = v17;
      v18 = *(*(a3 + 3184) + 232);
      *(v18 + 2) = *(v8 + 3204);
      *v18 = 0;
      *(v18 + 42) = 0;
      *(v18 + 50) = 0;
      v45[2] = v16;
      strcpy(*(v18 + 8), &v45[2]);
      LODWORD(v19) = 0;
      while (1)
      {
        PDword(*(*(a3 + 3184) + 232), 1, 1);
        v20 = *(*(a3 + 3184) + 232);
        v21 = *(v20 + 50);
        if (*(v20 + 50))
        {
          break;
        }

        *v20 = 0;
        *(v20 + 42) = 0;
        v19 = v19 + 1;
        v45[2] = *(&v43 + v19);
        strcpy(*(v20 + 8), &v45[2]);
        if (v15 <= v19)
        {
          goto LABEL_26;
        }
      }

      v28 = *(v20 + 104);
      while (*(*v28 + 71) > *(v8 + 88) || *(*v28 + 70) != 1)
      {
        v28 += 8;
        if (!--v21)
        {
          *(v8 + 102) = 1;
          *(v8 + 3492) |= 2u;
          *(a3 + 1322) |= 0x20u;
          goto LABEL_69;
        }
      }

      goto LABEL_66;
    }

    v14 = v45;
    if (!(((v45[2] - 97) >> 1) | ((v45[2] - 97) << 7)))
    {
      v44 = -32;
      v15 = 3;
      v16 = -30;
      v17 = -31;
      goto LABEL_23;
    }

    if (v13 == 2)
    {
      v44 = -24;
      v15 = 3;
      v16 = -23;
      v17 = -22;
      goto LABEL_23;
    }
  }

LABEL_26:
  v45[2] = 0;
  if (!SFaccent(__s, a2, *(*(a3 + 3184) + 248), v8))
  {
    goto LABEL_66;
  }

  if (*(v8 + 88) == 2)
  {
    *(v8 + 102) = 1;
    goto LABEL_68;
  }

  v46[0] = 0;
  v22 = strlen((*(v8 + 112) + 34));
  v23 = *(a3 + 1612);
  if (v23 < 1)
  {
    goto LABEL_39;
  }

  v24 = 0;
  v25 = 0;
  v26 = v23 + v22;
  do
  {
    if ((*(v8 + 92 + 4 * ((v22 + v25) >> 5)) >> ~(v22 + v25)))
    {
      *(v46 + (v25 >> 5)) |= 1 << ~v25;
      ++v24;
    }

    ++v25;
  }

  while (v22 + v25 < v26);
  if (v24)
  {
    if (v24 == 1)
    {
      v27 = SLODWORD(v46[0]) < 0 ? 1 : 3;
    }

    else
    {
      v27 = v25 == v24 ? 2 : 3;
    }

    v42 = v27;
  }

  else
  {
LABEL_39:
    v42 = 0;
  }

  if (*v9 < 1)
  {
LABEL_66:
    result = 11;
    goto LABEL_70;
  }

  v29 = 0;
  v30 = a3 + 1690;
  v31 = a3 + 2890;
  while (1)
  {
    v32 = *(v31 + 2 * v29);
    LOBYTE(v33) = *(v30 + v32);
    if (v33)
    {
      v34 = 0;
      v35 = a3 + 1691 + v32;
      do
      {
        v45[v34 + 2] = v33;
        v33 = *(v35 + v34++);
      }

      while (v33);
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v45[v36 + 2] = 0;
    v37 = strlen(&v45[2]);
    SLrecap(&v45[2], v37, **(v8 + 72), *(v8 + 80), v42, v10);
    SFremacc(&v45[2], v10, *(a3 + 8));
    if (a2 < 1)
    {
      LODWORD(v38) = 0;
    }

    else
    {
      v38 = 0;
      while (((*(v46 + (v38 >> 5)) >> ~v38) & 1) != 0 || __s[v38] == (((*(v10 + 4 * v45[v38 + 2]) >> 25) & 0x20) + v45[v38 + 2]))
      {
        if (a2 == ++v38)
        {
          goto LABEL_67;
        }
      }
    }

    if (v38 == a2)
    {
      break;
    }

    ++v29;
    result = 11;
    v31 = a3 + 2890;
    v30 = a3 + 1690;
    if (v29 >= *v9)
    {
      goto LABEL_70;
    }
  }

LABEL_67:
  *(v8 + 102) = 1;
  SFlstini(v9, (v8 + 44), *(v8 + 48), *(v8 + 64));
  v40 = strlen(&v45[2]);
  SFadd(&v45[2], v40, v9, (v8 + 44), *(v8 + 42), *(v8 + 56), *(v8 + 48), *(v8 + 64));
LABEL_68:
  *(v8 + 3492) |= 2u;
  **(a3 + 3184) |= 0x40u;
LABEL_69:
  result = 10;
LABEL_70:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICcmp(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v90 = 0;
  v2 = *(a1 + 3184);
  v3 = *(v2 + 280);
  v88 = v2;
  v4 = *(v2 + 264);
  *(v3 + 1500) = 0;
  *(v3 + 1738) = 0;
  *(v3 + 1524) = 0;
  *(v3 + 1604) = 0;
  *(v3 + 1607) = 0;
  *(v3 + 1527) = 0;
  *(v3 + 1672) = 0;
  if (*(*(a1 + 3184) + 304) == 11 && (*(v4 + 18) & 0x100) != 0)
  {
    v85 = 0;
    v5 = 1;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v85 = 1;
  }

  v7 = *(a1 + 8);
  if (*(a1 + 1414))
  {
    result = ICcmprmc(a1, 0, (*(a1 + 1612) - 1));
    if (result == 10)
    {
      *(v3 + 1742) |= 0x800u;
      goto LABEL_156;
    }
  }

  v9 = ICcmplmc(a1);
  if (!v9)
  {
LABEL_155:
    result = 11;
    goto LABEL_156;
  }

  v81 = v6;
  v10 = 0;
  v86 = 0;
  v79 = (v3 + 1672);
  if (v7 == 17)
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  v87 = v11;
  v83 = v4;
  v84 = (a1 + 1547);
  v80 = 11;
  v78 = v9;
  LOWORD(v12) = v9;
  v82 = v7;
  while (1)
  {
    do
    {
      while (1)
      {
        if (!v12)
        {
          if (!*(a1 + 1690))
          {
            *(v3 + 1742) = 0;
            *(v83 + 3480) = 0;
            goto LABEL_155;
          }

          if (!*(v83 + 102))
          {
            *(v83 + 102) = 1;
          }

          if (!*(v3 + 1516))
          {
            *(v3 + 1516) = v10;
            *(v3 + 1520) = v86;
          }

          goto LABEL_139;
        }

        v12 = (v12 - 1);
        v13 = v3 + 100 * v12;
        v14 = *(v13 + 68);
        if (*(*(a1 + 3184) + 304) == 11)
        {
          LOWORD(v90) = 3 * *(v13 + 72);
          if ((v85 & 1) == 0)
          {
            *(v13 + 70) |= *(v13 + 90);
          }
        }

        v89 = *(v13 + 70);
        v15 = *(v13 + 66);
        *(v3 + 1500) = v15;
        v16 = *(v13 + 76);
        *(v3 + 1504) = v16;
        *(v3 + 1508) = *(v13 + 80);
        *(v3 + 1524) = *(v13 + 88);
        v17 = *(v13 + 92);
        *(v3 + 1516) = v17;
        if (!v10)
        {
          v10 = v17;
        }

        *(v3 + 1526) = *(v13 + 65);
        v18 = (*(v88 + 96) + v87 * v14);
        v19 = *v18;
        if (*v18)
        {
          __strcpy_chk();
        }

        else
        {
          __s[0] = 0;
        }

        v20 = strlen(__s);
        HIWORD(v90) = v20;
        if (v16 == 2 || *(a1 + 8) == 6 && (*(a1 + 20) & 0x10) != 0 && v84[v15 + v20] == 45)
        {
          if (!v20)
          {
            goto LABEL_28;
          }

          v21 = 0;
          v22 = 0;
          do
          {
            if (__s[v21] == 45)
            {
              break;
            }

            v21 = ++v22;
          }

          while (v20 > v22);
          if (v20 == v21)
          {
LABEL_28:
            __strcat_chk();
            v89 = 0;
            ++HIWORD(v90);
            v19 = 1;
          }
        }

        if (*(a1 + 1308) && (*(v13 + 88) & 0x40) != 0)
        {
          __strcpy_chk();
          v23 = *(v13 + 96);
          *(v3 + 1520) = v23;
          v24 = v86;
          if (!v86)
          {
            v24 = v23;
          }

          v86 = v24;
        }

        v25 = *(a1 + 1612);
        if (v25 != v15)
        {
          break;
        }

        if (*(a1 + 1413))
        {
          if ((v16 & 0xFE) != 2 && !v89 && __s[0] != 45)
          {
            if (v82 != 6 || *(v83 + 88))
            {
              *(a1 + 1328) |= 0x200uLL;
              *(v3 + 1742) |= 0x401u;
              *v88 |= 4u;
              v58 = *(v3 + 1738) + HIWORD(v90);
              *(v3 + 1738) = v58;
              *(v3 + 1740) = v58;
              __strcpy_chk();
              v59 = ICcmpalt(v15, v91, SHIWORD(v90), 1, a1);
              SFadd(v79, *(a1 + 1612), (v83 + 40), (v83 + 44), *(v83 + 42), *(v83 + 56), *(v83 + 48), *(v83 + 64));
              result = v59;
              goto LABEL_156;
            }

            *(a1 + 1328) |= 0x40uLL;
            goto LABEL_155;
          }

          v60 = v83;
          if (!*(v83 + 102))
          {
            *(v83 + 102) = 1;
          }

          if (*(a1 + 8) != 6 || HIWORD(v90) || (v61 = *(v83 + 88), v61 > 2))
          {
LABEL_152:
            *(v3 + 1742) |= 0x400u;
            *(a1 + 1322) &= 0xFFB9u;
            goto LABEL_153;
          }

LABEL_151:
          **(v60 + 72) = v61;
          goto LABEL_152;
        }
      }

      if (!v19)
      {
        goto LABEL_113;
      }

      v26 = __s[0];
      if (__s[0])
      {
        v27 = 0;
        v28 = v15;
        do
        {
          v29 = v26;
          v30 = v28++;
          v31 = v84[v30];
          v26 = __s[++v27];
          if (__s[v27])
          {
            v32 = v31 == v29;
          }

          else
          {
            v32 = 0;
          }
        }

        while (v32);
        if (v31 != v29)
        {
          if (!HIWORD(v90) && *(a1 + 1413))
          {
            *(a1 + 1328) |= 0x200uLL;
            *(v3 + 1742) |= 0x401u;
            *v88 |= 4u;
            __strcpy_chk();
            v76 = ICcmpalt(v15, v91, SHIWORD(v90), 0, a1);
            v77 = strlen(v79);
            SFadd(v79, v77, (v83 + 40), (v83 + 44), *(v83 + 42), *(v83 + 56), *(v83 + 48), *(v83 + 64));
            result = v76;
            goto LABEL_156;
          }

          HIWORD(v90) = 0;
          v38 = ICcmpprm(a1, v15, 0, v89);
          v39 = v5 ^ 1;
          if (v38 != 11)
          {
            v39 = 1;
          }

          if ((v39 & 1) == 0)
          {
            v38 = ICcmpexc(a1, v12, 0, &v90 + 1, &v90, v81);
            if (v38 == 10)
            {
              goto LABEL_153;
            }
          }

          v40 = v38 << 16;
          if (v38 << 16 == 655360)
          {
            v41 = *(v83 + 102);
            if (ICcmpexc(a1, v12, 1, &v90 + 1, &v90, v81) != 10)
            {
              *(v83 + 102) = v41;
              if (v89)
              {
                goto LABEL_180;
              }

LABEL_99:
              if (*(a1 + 8) == 6 && !*(v83 + 88))
              {
                goto LABEL_113;
              }

              if (v78 == 1)
              {
                v51 = v40 == 655360;
              }

              else
              {
                if (v40 != 655360)
                {
                  goto LABEL_113;
                }

                v51 = v84[v15] == 45;
              }

              v35 = v82;
              if (v51)
              {
                *(v3 + 1742) |= 8u;
                __strcpy_chk();
                HIWORD(v90) = strlen(__s);
                ICcmpalt(v15, v91, SHIWORD(v90), 1, a1);
                *(v3 + 1742) |= 2u;
                *(v83 + 102) = 1;
                goto LABEL_139;
              }

              continue;
            }

            *(v3 + 1742) |= 0x100u;
            v75 = *(v88 + 112) + v90 * v87;
LABEL_193:
            __strcpy_chk();
            goto LABEL_194;
          }

          if (v40 != 720896 && v89)
          {
LABEL_180:
            if (v82 == 11)
            {
              v72 = ICcmpvow(a1, v12, 1, 0);
            }

            else
            {
              v72 = ICcmpdbl(a1, v12, 1, v81);
            }

            *(v3 + 1742) |= 0x200u;
            result = v72;
            goto LABEL_156;
          }

          if (v40 != 720896)
          {
            goto LABEL_99;
          }

          if (v82 == 11)
          {
            v46 = ICcmpvow(a1, v12, 0, 0);
            v80 = v46;
            v47 = v46 << 16;
            if (v46 << 16 == 0x20000)
            {
              v48 = *(v83 + 102);
              __strcpy_chk();
              __strcpy_chk();
              if ((*(v3 + 1742) & 0x10) != 0)
              {
                --*(a1 + 1612);
              }

              v49 = ICcmpexc(a1, v12, 1, &v90 + 1, &v90, v81);
              *(v83 + 102) = v48;
              if (v49 != 10)
              {
                __strcpy_chk();
                __strcpy_chk();
                *(a1 + 1612) = strlen(v84);
                if (v89 || v78 == 1)
                {
                  if (v89)
                  {
                    result = 2;
                  }

                  else
                  {
                    result = 11;
                  }

                  goto LABEL_156;
                }

                *v79 = 0;
                *v88 &= ~4u;
                goto LABEL_99;
              }

              v73 = *(v3 + 1742) | 0x110;
LABEL_186:
              *(v3 + 1742) = v73;
              v74 = *(v88 + 112) + 4 * v90;
              goto LABEL_193;
            }
          }

          else
          {
            v50 = ICcmpdbl(a1, v12, 0, v81);
            if ((v50 & 0xFFF7) == 2)
            {
              result = v50 & 0xA;
              goto LABEL_156;
            }

            v80 = v50;
            v47 = v50 << 16;
          }

          if (v47 == 655360)
          {
            goto LABEL_153;
          }

          goto LABEL_99;
        }
      }

      if (SHIWORD(v90) + v15 == v25 && *(a1 + 1413))
      {
        v60 = v83;
        if (*(a1 + 8) != 6 || (v61 = *(v83 + 88), v61 >= 3))
        {
          LOBYTE(v61) = v16;
        }

        goto LABEL_151;
      }

      v33 = ICcmpprm(a1, v15, SHIWORD(v90), v89);
      v34 = v5 ^ 1;
      if (v33 != 11)
      {
        v34 = 1;
      }

      if (v34)
      {
        v35 = v82;
      }

      else
      {
        v33 = ICcmpexc(a1, v12, 0, &v90 + 1, &v90, v81);
        v35 = v82;
        if (v33 == 10)
        {
          goto LABEL_153;
        }
      }

      if (v33 != 11)
      {
        if (ICcmpexc(a1, v12, 1, &v90 + 1, &v90, v81) != 10)
        {
          if (v35 != 11)
          {
            if (v35 != 17 || v84[v15] != 115 || v84[v15 + 1] != 115)
            {
              goto LABEL_190;
            }

            __strcpy_chk();
            if (v15 >= *(a1 + 1612))
            {
              v71 = v15;
            }

            else
            {
              v69 = v15 << 48;
              v70 = v15;
              do
              {
                v79[v70] = *(a1 + 1548 + v70);
                v69 += 0x1000000000000;
                ++v70;
              }

              while (v70 < *(a1 + 1612));
              v71 = v69 >> 48;
            }

            v79[v71] = 0;
            *(v3 + 1740) = v15;
            SFadd(v79, (*(a1 + 1612) - 1), (v83 + 40), (v83 + 44), *(v83 + 42), *(v83 + 56), *(v83 + 48), *(v83 + 64));
            goto LABEL_139;
          }

          if (v14 != 8 && v14 != 2)
          {
            goto LABEL_190;
          }

          v37 = ICcmpvow(a1, v12, 1, 1) << 16;
          if (v37 != 720896)
          {
            goto LABEL_165;
          }

          continue;
        }

        *(v3 + 1742) |= 0x100u;
        v68 = *(v88 + 112);
        __strcpy_chk();
        if (*(a1 + 8) == 6 && (*(a1 + 20) & 0x10) != 0 && v84[v15 - 1 + SHIWORD(v90)] == 45)
        {
          __strcat_chk();
        }

LABEL_194:
        v64 = HIWORD(v90);
        v65 = v15;
        v66 = 0;
LABEL_195:
        result = ICcmpalt(v65, v91, v64, v66, a1);
        goto LABEL_156;
      }

      if (v35 == 11)
      {
        if (v14 == 8 || v14 == 2)
        {
          v36 = ICcmpvow(a1, v12, 0, 1);
          if (v36 << 16 == 0x20000)
          {
            goto LABEL_182;
          }

          if (v36 << 16 == 655360)
          {
            goto LABEL_153;
          }

          v80 = v36;
        }
      }

      else if (v35 == 17 && v84[v15] == 115)
      {
        v42 = SHIWORD(v90);
        v43 = (HIWORD(v90) + v15);
        LODWORD(v44) = ++*(a1 + 1612);
        if (v44 <= (v42 + v15))
        {
          v45 = v43;
        }

        else
        {
          v44 = v44;
          v45 = v43;
          do
          {
            *(a1 + v44 + 1547) = *(a1 + v44 + 1546);
            --v44;
          }

          while (v44 > v43);
        }

        v84[v45] = 115;
        v37 = ICcmpprm(a1, v15, v42, v89) << 16;
        if (v37 != 720896)
        {
LABEL_165:
          result = (v37 >> 16);
          goto LABEL_156;
        }

        LODWORD(v52) = *(a1 + 1612);
        if (v43 < v52)
        {
          do
          {
            *(a1 + v45 + 1547) = *(a1 + v45 + 1548);
            v52 = *(a1 + 1612);
            ++v45;
          }

          while (v45 < v52);
        }

        v53 = v52 - 1;
        *(a1 + 1612) = v53;
        v84[v53] = 0;
LABEL_113:
        v35 = v82;
      }
    }

    while (!v89);
    HIWORD(v90) = 0;
    v54 = ICcmpprm(a1, v15, 0, v89);
    v55 = v5 ^ 1;
    if (v54 != 11)
    {
      v55 = 1;
    }

    if ((v55 & 1) == 0)
    {
      v54 = ICcmpexc(a1, v12, 0, &v90 + 1, &v90, v81);
      if (v54 == 10)
      {
        goto LABEL_153;
      }
    }

    v56 = v54;
    if (v54 != 11)
    {
      break;
    }

    if (v35 == 11)
    {
      if (HIWORD(v90))
      {
        goto LABEL_125;
      }

      v57 = ICcmpvow(a1, v12, 0, 0);
      if (v57 << 16 == 0x20000)
      {
LABEL_182:
        __strcpy_chk();
        __strcpy_chk();
        if ((*(v3 + 1742) & 0x10) != 0)
        {
          --*(a1 + 1612);
        }

        if (ICcmpexc(a1, v12, 1, &v90 + 1, &v90, v81) == 10)
        {
          v73 = *(v3 + 1742) | 0x100;
          goto LABEL_186;
        }

        __strcpy_chk();
        __strcpy_chk();
        *(a1 + 1612) = strlen(v84);
LABEL_139:
        result = 2;
        goto LABEL_156;
      }

      if (v57 << 16 == 655360)
      {
        goto LABEL_153;
      }

      v80 = v57;
LABEL_125:
      result = 2;
      if (v80 == 2)
      {
        goto LABEL_156;
      }
    }

    else
    {
      LOWORD(result) = ICcmpdbl(a1, v12, 0, v81);
      v80 = result;
      if (result == 2)
      {
        if (v35 != 6)
        {
          goto LABEL_139;
        }

        result = 2;
        if ((*(a1 + 20) & 0x20) != 0)
        {
          goto LABEL_156;
        }
      }

      else if (result == 3 || result == 10)
      {
        result = result;
        goto LABEL_156;
      }
    }
  }

  HIWORD(v90) = 0;
  if (ICcmpexc(a1, v12, 1, &v90 + 1, &v90, v81) == 10)
  {
    *(v3 + 1742) |= 0x100u;
    v63 = *(v88 + 112);
    __strcpy_chk();
    v64 = HIWORD(v90);
    v65 = v15;
    v66 = 1;
    goto LABEL_195;
  }

  if (v35 == 11)
  {
    v67 = ICcmpvow(a1, v12, 1, 0);
LABEL_188:
    v56 = v67;
  }

  else if (v35 != 6 || (*(a1 + 20) & 0x20) != 0)
  {
    v67 = ICcmpdbl(a1, v12, 1, v81);
    goto LABEL_188;
  }

  if (v56 << 16 == 655360)
  {
LABEL_190:
    *(v3 + 1742) |= 0x200u;
LABEL_153:
    result = 10;
  }

  else
  {
    result = v56;
  }

LABEL_156:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICcmpalt(int a1, unsigned __int8 *a2, __int16 a3, int a4, uint64_t a5)
{
  v7 = a3;
  v8 = a1;
  v58[1] = *MEMORY[0x1E69E9840];
  v9 = *(a5 + 3184);
  v10 = v9[35];
  v11 = v9[33];
  v12 = *(v9[31] + 56);
  v13 = v10 + 1672;
  *(v10 + 1736) = 0;
  *(v10 + 1704) = 0u;
  *(v10 + 1720) = 0u;
  *(v10 + 1672) = 0u;
  *(v10 + 1688) = 0u;
  if (a1 < 1)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v14 = (a5 + 1547);
    v15 = a1;
    v16 = (v10 + 1672);
    do
    {
      v17 = *v14++;
      *v16++ = v17;
      --v15;
    }

    while (v15);
    LODWORD(v18) = a1;
  }

  *(v10 + 1738) = v18;
  v19 = *a2;
  if (*(a5 + 1308) && v19 == 45)
  {
    *(v11 + 4 * (v18 >> 5) + 3480) &= ~(1 << ~v18);
    v19 = *a2;
  }

  if (v19)
  {
    v20 = (a5 + 1547);
    v21 = a2 + 1;
    v22 = v18;
    while (1)
    {
      if (v19 == 45 && *(a5 + 8) == 6)
      {
        if (*(v10 + 1592) - 1 <= 2)
        {
          **(v11 + 72) = 3;
          if ((*(v12 + 4 * *v20) & 0x8000000) != 0)
          {
            **(v11 + 72) = *(v10 + 1592);
            v23 = *(v11 + 80);
          }

          else
          {
            v23 = *(v11 + 80);
            *v23 |= 0x80000000;
          }

          *(v23 + ((*(v10 + 1502) >> 3) & 0x1FFC)) |= 1 << ~*(v10 + 1502);
        }

        if (v20[v18] == 45)
        {
          v7 = a3 - 1;
          if (!a4)
          {
            goto LABEL_26;
          }

LABEL_24:
          *(a5 + 1612) += v7;
          goto LABEL_27;
        }

        LOBYTE(v19) = *(v21 - 1);
      }

      *(v13 + v22++) = v19;
      v24 = *v21++;
      v19 = v24;
      if (!v24)
      {
        goto LABEL_23;
      }
    }
  }

  v22 = v18;
LABEL_23:
  if (a4)
  {
    goto LABEL_24;
  }

LABEL_26:
  LOWORD(v18) = v7 + v18;
LABEL_27:
  *(v10 + 1740) = v22;
  if (*(a5 + 1547 + a1) == 45)
  {
    *(v10 + 1740) = v22 + 1;
  }

  if ((*(v10 + 1604) & 0x40) != 0 && (*(a5 + 1322) & 0x40) != 0)
  {
    strcat((v13 + v22), (v10 + 1607));
    if ((*(a5 + 1322) & 0x10) != 0)
    {
      v35 = 0;
      do
      {
        v36 = v35;
        v37 = *(v10 + 1596 + 4 * (v35 >> 5));
        v38 = ~v35++;
      }

      while (((v37 >> v38) & 1) == 0);
      if (((*(v11 + 4 * ((*(v10 + 1502) + v36) >> 5) + 3472) >> ~(*(v10 + 1502) + v36)) & 1) == 0)
      {
        *(a5 + 1328) |= 8uLL;
      }
    }
  }

  else
  {
    if (*(a5 + 1612) > v18)
    {
      v18 = v18;
      do
      {
        *(v13 + v22++) = *(a5 + 1547 + v18++);
      }

      while (v18 < *(a5 + 1612));
    }

    *(v13 + v22) = 0;
  }

  v58[0] = 0;
  if (*(v10 + 1504) == 2)
  {
    v25 = *(v10 + 1740);
    if (v25 > v8)
    {
      v26 = *(v11 + 80);
      LOWORD(v27) = v8;
      do
      {
        *(v26 + 4 * (v27 >> 5)) |= 1 << ~v27;
        v27 = (v27 + 1);
      }

      while (v27 < v25);
    }
  }

  else if (*(v10 + 1592) == 2)
  {
    v28 = *(v10 + 1740);
    if (v28 > v8)
    {
      v29 = *(v11 + 80);
      LOWORD(v30) = v8;
      do
      {
        v31 = 1 << ~v30;
        *(v29 + 4 * (v30 >> 5)) &= ~v31;
        *(v11 + 92 + 4 * (v30 >> 5)) &= ~v31;
        v30 = (v30 + 1);
      }

      while (v30 < v28);
    }

    v32 = *(a5 + 1612);
    if (v28 < v32)
    {
      v33 = *(v11 + 80);
      do
      {
        v34 = 1 << ~v28;
        *(v33 + 4 * (v28 >> 5)) |= v34;
        *(v11 + 92 + 4 * (v28 >> 5)) |= v34;
        v28 = (v28 + 1);
      }

      while (v28 < v32);
    }
  }

  else
  {
    v39 = *(v11 + 102);
    if (v39 >= 1)
    {
      v40 = 0;
      v41 = *(v11 + 72);
      do
      {
        if (*(v41 + v40) >= 2u)
        {
          v58[0] = 0;
          v42 = *(v10 + 1502);
          v43 = *(v11 + 80);
          v44 = v43 + 8 * v40;
          if (v42 >= 1)
          {
            LOWORD(v45) = 0;
            do
            {
              v46 = 1 << ~v45;
              if ((*(v44 + 4 * (v45 >> 5)) & v46) != 0)
              {
                *(v58 + (v45 >> 5)) |= v46;
              }

              v45 = (v45 + 1);
            }

            while (v45 < v42);
          }

          v47 = (*(a5 + 1612) - v7);
          if (v47 > v8)
          {
            v48 = *(v10 + 1740) - v42;
            v49 = v8 + v48;
            v50 = v8;
            do
            {
              if ((*(v44 + 4 * (v50 >> 5)) >> ~v50))
              {
                *(v58 + ((v48 + v50) >> 5)) |= 1 << ~v49;
              }

              ++v50;
              ++v49;
            }

            while (v50 < v47);
          }

          *(v43 + 8 * v40) = v58[0];
        }

        ++v40;
      }

      while (v40 != v39);
    }
  }

  if (a4 && *(a5 + 1308) && (*(v10 + 1742) & 0x1000) == 0)
  {
    v58[0] = 0;
    v51 = *(v10 + 1502);
    if (v51 >= 1)
    {
      LOWORD(v52) = 0;
      do
      {
        v53 = 1 << ~v52;
        if ((*(v11 + 3472 + 4 * (v52 >> 5)) & v53) != 0)
        {
          *(v58 + (v52 >> 5)) |= v53;
        }

        v52 = (v52 + 1);
      }

      while (v52 < v51);
    }

    v54 = (*(a5 + 1612) - v7);
    if (v54 > v8)
    {
      v55 = v8 + v7;
      do
      {
        if ((*(v11 + 3472 + 4 * (v8 >> 5)) >> ~v8))
        {
          *(v58 + ((v7 + v8) >> 5)) |= 1 << ~v55;
        }

        ++v8;
        ++v55;
      }

      while (v8 < v54);
    }

    *(v11 + 3472) = v58[0];
  }

  v56 = *MEMORY[0x1E69E9840];
  return 2;
}

uint64_t ICcmpdbl(uint64_t a1, int a2, int a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3 && *(a1 + 8) == 6 && (*(a1 + 20) & 0x10) != 0)
  {
    goto LABEL_27;
  }

  v7 = *(a1 + 3184);
  v8 = *(v7 + 280);
  v9 = (v8 + 100 * a2);
  if (!v9[35])
  {
    goto LABEL_34;
  }

  v10 = *(v7 + 264);
  *v36 = 0;
  v11 = v9[33];
  v12 = v9[33];
  v13 = v9[37];
  __strcpy_chk();
  v14 = *(a1 + 8);
  if (v14 == 6 && *(a1 + 20) == 64 && v36[v12 + 2] == 115)
  {
    v13 = 0;
  }

  if (a3)
  {
    if (v13 != 1)
    {
      if (v13 == 2 && v36[v12 + 2] == v36[v12 + 3])
      {
        *(v8 + 1742) |= 0x80u;
        v36[0] = 45;
        ICcmpalt(v12, v36, 1, 1, a1);
        v15 = *(v10 + 72);
        *(*(v10 + 80) + ((*(v8 + 1740) >> 3) & 0x1FFC)) |= 1 << ~*(v8 + 1740);
        *v15 = 3;
LABEL_14:
        result = 2;
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    v18 = v12 - 1;
    if (v36[v12 + 2] != v36[v12 + 3] || v14 == 6 && ((v19 = v36[v12 + 4], v19 == 114) || v19 == 108))
    {
LABEL_26:
      *(v8 + 1742) |= 0x200u;
LABEL_27:
      result = 10;
      goto LABEL_35;
    }

    *(v8 + 1742) |= 0xA000u;
    *(v10 + 3480) = 0;
    *(v8 + 1526) = 0;
    *(v10 + 3480 + 4 * ((v12 - 1) >> 5)) |= 1 << ~v18;
    if ((v14 != 6 || (*(a1 + 20) & 0x20) != 0) && (~*(a1 + 1322) & 0x42) == 0)
    {
      ICcmpalt(v12, "", 1, 0, a1);
      if (!a4)
      {
        v25 = strlen((v8 + 1672));
        SFadd((v8 + 1672), v25, (v10 + 40), (v10 + 44), *(v10 + 42), *(v10 + 56), *(v10 + 48), *(v10 + 64));
      }

      **(a1 + 3184) |= 4u;
      *(a1 + 1322) |= 0x10u;
    }

    v26 = "";
    v27 = v18;
    v28 = 0;
LABEL_54:
    result = ICcmpalt(v27, v26, 1, v28, a1);
    goto LABEL_35;
  }

  if (v13 == 1)
  {
    v20 = v12 - 1;
    if (ICcmprmc(a1, (v12 - 1), (*(a1 + 1612) - 1)) == 10)
    {
      v21 = *(a1 + 8);
      if (v21 == 6)
      {
        v22 = *(a1 + 20);
        if ((v22 & 0x10) != 0)
        {
          *v36 = v36[v20 + 3];
          if (*(a1 + 1672))
          {
            strcpy(&v36[1], "-");
            v34 = 2;
          }

          else
          {
            v34 = 1;
          }

          ICcmpalt((v12 - 1), v36, v34, 1, a1);
          v35 = strlen((v8 + 1672));
          SFadd((v8 + 1672), v35, (v10 + 40), (v10 + 44), *(v10 + 42), *(v10 + 56), *(v10 + 48), *(v10 + 64));
          **(a1 + 3184) |= 4u;
          goto LABEL_14;
        }

        v23 = v36[v12 + 3];
        if (v23 == 114 || v23 == 108)
        {
          *(v8 + 1742) |= 0x20u;
          v36[0] = v36[v20 + 3];
LABEL_53:
          v26 = v36;
          v27 = (v12 - 1);
          v28 = 1;
          goto LABEL_54;
        }

        v30 = *(v8 + 1742) | 0x1000;
        *(v8 + 1742) = v30;
        if ((v22 & 0x20) == 0)
        {
          goto LABEL_27;
        }

        v29 = (v8 + 1742);
      }

      else
      {
        v29 = (v8 + 1742);
        v30 = *(v8 + 1742) | 0x1000;
        *(v8 + 1742) = v30;
      }

      *v29 = v30 | 0x8000;
      v36[0] = v36[v20 + 3];
      v31 = *(a1 + 1322);
      if ((~v31 & 0x42) == 0)
      {
        ICcmpalt((v12 - 1), "", 1, 0, a1);
        if (!a4)
        {
          v32 = strlen((v8 + 1672));
          SFadd((v8 + 1672), v32, (v10 + 40), (v10 + 44), *(v10 + 42), *(v10 + 56), *(v10 + 48), *(v10 + 64));
        }

        **(a1 + 3184) |= 4u;
        LOWORD(v31) = *(a1 + 1322) & 0xFFED | 0x10;
        *(a1 + 1322) = v31;
        v21 = *(a1 + 8);
      }

      if (v21 != 6 || (v33 = v36[v11 + 3], v33 != 108) && v33 != 114)
      {
        *(a1 + 1322) = v31 | 4;
      }

      *(a1 + 3156) = 0;
      *(v8 + 1526) = 0;
      *(v8 + 1500) = *(v8 + 1502);
      *(a1 + 3156 + 4 * ((v12 - 1) >> 5)) |= 1 << ~v20;
      goto LABEL_53;
    }

LABEL_34:
    result = 11;
    goto LABEL_35;
  }

  if (v13 != 2 || v36[v12 + 3] != 45 || v36[v12 + 2] != v36[v12 + 4])
  {
    goto LABEL_34;
  }

  v17 = ICcmprmc(a1, (v12 + 1), (*(a1 + 1612) - 1));
  *(v8 + 1742) |= 0x200u;
  if (v17 == 10)
  {
    result = 10;
  }

  else
  {
    result = 11;
  }

LABEL_35:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICcmpexc(uint64_t a1, int a2, int a3, _WORD *a4, _WORD *a5, int a6)
{
  v68 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 3184);
  v65 = *(v8 + 264);
  v63 = v8;
  v61 = *(v8 + 92);
  v9 = *(v8 + 280) + 100 * a2;
  v10 = *(v9 + 72);
  v11 = 3 * v10;
  v12 = *(v9 + 66);
  v13 = *(v9 + 90);
  v14 = *a4;
  v15 = v14 + v12;
  v16 = *(a1 + 1612);
  v17 = v16 - (v14 + v12);
  if (v12 < 1)
  {
    v18 = 0;
  }

  else
  {
    memcpy(__dst, (a1 + 1547), v12);
    v18 = v12;
  }

  v66 = v17;
  __dst[v18] = 0;
  if (!a3)
  {
    if (v10 == 31 || v13 == 0)
    {
      goto LABEL_74;
    }

    v21 = 0;
    v22 = a1 + 1547;
    while (1)
    {
      v23 = *(a1 + 3184);
      v24 = *(v23 + 112);
      v25 = (v24 + 4 * v11);
      if (!*v25)
      {
        goto LABEL_74;
      }

      v26 = strlen(v25);
      LOWORD(v27) = v26;
      if (v26 <= 0)
      {
        v31 = v26;
      }

      else
      {
        v28 = 0;
        do
        {
          v29 = *(a1 + 1547 + v12 + v28);
          v30 = *(v24 + 4 * v11 + v28++);
        }

        while (v28 < (v26 & 0x7FFFu) && v29 == v30);
        if (v29 != v30)
        {
          goto LABEL_37;
        }

        v31 = v26 & 0x7FFF;
      }

      if (a6 && *(v23 + 304) == 11)
      {
        v27 = (v12 + v26);
        v32 = *(a1 + 1612);
        if (v27 >= v32)
        {
          v33 = 0;
        }

        else
        {
          LOWORD(v33) = 0;
          v34 = (v12 + v26);
          do
          {
            __dst[v33] = *(v22 + v34++);
            LOWORD(v33) = v33 + 1;
          }

          while (v34 < v32);
          v33 = v33;
        }

        __dst[v33] = 0;
        v39 = *(v63 + 280);
        *(v39 + 1500) = v12;
        *(v39 + 1502) = v27;
      }

      else
      {
        v35 = v66 - v31;
        if (v66 - v31 < 1)
        {
          v36 = 0;
        }

        else
        {
          v36 = 0;
          v37 = 0;
          v38 = v31 + v12;
          do
          {
            __dst[v12 + v36] = *(v22 + v38 + v36);
            v36 = ++v37;
          }

          while (v35 > v37);
        }

        __dst[v12 + v36] = 0;
        LOWORD(v32) = *(a1 + 1612);
      }

      if (ICverify(__dst, (v32 - v27), a1) == 10)
      {
        if (*(a1 + 8) != 6)
        {
          goto LABEL_74;
        }

        if (*(a1 + 1414))
        {
          goto LABEL_74;
        }

        v56 = *(v65 + 102);
        if (v56 < 1)
        {
          goto LABEL_74;
        }

        v57 = *(v65 + 72);
        result = 11;
        while (1)
        {
          v58 = *v57++;
          if (v58 == 1)
          {
            break;
          }

          if (!--v56)
          {
            goto LABEL_75;
          }
        }

        *a4 = v27;
        goto LABEL_49;
      }

LABEL_37:
      ++v11;
      v40 = v21++ >= 2;
      if (v40)
      {
        goto LABEL_74;
      }
    }
  }

  if (!v14 || !v13)
  {
LABEL_52:
    if (v10 <= ((43691 * v61) >> 19))
    {
      v45 = 0;
      v62 = a1 + v15;
      v46 = v16 + ~v15;
      v47 = v46;
      v48 = v46 + 1;
      while (1)
      {
        v49 = (*(*(a1 + 3184) + 112) + 4 * v11);
        if (!*v49)
        {
          break;
        }

        strcpy(&__dst[v12], (*(*(a1 + 3184) + 112) + 4 * v11));
        v50 = v12 + strlen(v49);
        if (v66 < 1)
        {
          v51 = 0;
        }

        else
        {
          memcpy(&__dst[v50], (v62 + 1547), v47 + 1);
          v51 = v48;
        }

        __dst[v51 + v50] = 0;
        v52 = *(v65 + 102);
        if (ICverify(__dst, (v66 + v50), a1) == 10)
        {
          if (*(a1 + 8) == 6 && !*(a1 + 1414))
          {
            v53 = *(v65 + 72);
            if (*v53 != 1 && v53[1] != 1)
            {
              goto LABEL_74;
            }
          }

          if (a6 && *(*(a1 + 3184) + 304) == 11)
          {
            v54 = *(v63 + 280);
            *(v54 + 1500) = v12;
            *(v54 + 1502) = v50;
          }

          *a5 = v11;
          if (*(a1 + 1308) && __dst[v12] == 45)
          {
            *(a1 + 4 * (v12 >> 5) + 3156) &= ~(1 << ~v12);
          }

          goto LABEL_50;
        }

        *(v65 + 102) = v52;
        ++v11;
        v40 = v45++ >= 2;
        if (v40)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_74;
  }

  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    memcpy(&__dst[v12], (a1 + v15 + 1547), (v16 + ~v15) + 1);
    v19 = (v16 + ~v15) + 1;
  }

  __dst[v12 + v19] = 0;
  v41 = *(v65 + 102);
  if (ICverify(__dst, (v16 - v14), a1) != 10)
  {
    *(v65 + 102) = v41;
    goto LABEL_52;
  }

  if (*(a1 + 8) == 6 && !*(a1 + 1414))
  {
    v42 = *(v65 + 72);
    if (*v42 != 1 && v42[1] != 1)
    {
LABEL_74:
      result = 11;
      goto LABEL_75;
    }
  }

  if (a6 && *(*(a1 + 3184) + 304) == 11)
  {
    v43 = *(v63 + 280);
    *(v43 + 1500) = v12;
    *(v43 + 1502) = v12;
  }

LABEL_49:
  *a5 = 0;
LABEL_50:
  result = 10;
LABEL_75:
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICcmpfnd(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3184);
  v3 = *(v2 + 35);
  v4 = *(v2 + 33);
  v5 = *(a1 + 1308);
  v6 = *(v4 + 102);
  if (v6 >= 1)
  {
    v7 = *(v4 + 80);
    memcpy(__dst, *(v4 + 72), *(v4 + 102));
    v8 = v48;
    do
    {
      v9 = *v7++;
      *v8++ = v9;
      --v6;
    }

    while (v6);
  }

  v10 = *(v3 + 1524);
  v11 = *(v3 + 1604);
  if (!(v5 | (v11 | v10) & 0x40))
  {
    goto LABEL_10;
  }

  v12 = *v2;
  if (v5 && (v12 & 8) != 0 && ((v11 | v10) & 0x40) == 0 && *(v3 + 1742) < 0)
  {
    *(v3 + 1516) = 0;
    *(v3 + 1596) = 0;
    *(v4 + 3480) = 0;
    ICcmphyp((a1 + 1547), a1);
LABEL_10:
    v13 = 10;
    goto LABEL_86;
  }

  *v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  *v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  if ((v12 & 4) != 0 && *(a1 + 1690))
  {
    __strcpy_chk();
    SFlstini((v4 + 40), (v4 + 44), *(v4 + 48), *(v4 + 64));
    v34 = 1;
  }

  else
  {
    __strcpy_chk();
    v34 = 0;
  }

  v14 = *v2;
  *v2 |= 8u;
  v15 = *(v3 + 1502);
  v35 = v11 | v10;
  if (!v15)
  {
    v15 = *(a1 + 1612);
    goto LABEL_23;
  }

  if ((v14 & 4) == 0)
  {
LABEL_23:
    v16 = *(v3 + 1500);
    v17 = *(v3 + 1500);
    goto LABEL_24;
  }

  if (*(v3 + 1740) > 0)
  {
    v15 = *(v3 + 1740);
  }

  v16 = *(v3 + 1500);
  if (*(v3 + 1738) <= 0)
  {
    v17 = *(v3 + 1500);
  }

  else
  {
    v17 = *(v3 + 1738);
  }

LABEL_24:
  if (!v16)
  {
    LOWORD(v16) = v15;
  }

  v18 = v16;
  if ((v10 & 0x40) != 0 && v5 && *(v3 + 1527))
  {
    __strcpy_chk();
  }

  else
  {
    __strncpy_chk();
  }

  if (v15 != v17 && (v15 - v17) <= 5)
  {
    __strncpy_chk();
  }

  if (v5 && (v11 & 0x40) != 0)
  {
    __strcpy_chk();
    goto LABEL_43;
  }

  if (strlen(__s) > v15)
  {
    __strcpy_chk();
  }

  if (!v5)
  {
    if ((v10 & 0x40) != 0)
    {
      icsfthypchk(v18, v3 + 1516, (v4 + 3472), 0, a1);
      ICcmpsmh(v43, __src, v3 + 1516, 1, v18, a1);
      __strcpy_chk();
    }

    __strcat_chk();
    if ((v11 & 0x40) != 0)
    {
      icsfthypchk(0, v3 + 1596, (v4 + 3472), v15, a1);
      v22 = strlen(__s);
      ICcmpsmh(v38, __src, v3 + 1596, 1, (v22 - v15), a1);
      __strcat_chk();
      v23 = v11 | v10;
      if ((*(a1 + 1322) & 0x40) != 0)
      {
        if ((*(v3 + 1742) & 0x1000) != 0)
        {
          v24 = (v15 + a1 + 3091);
LABEL_92:
          strcpy(v24, __src);
          if (((v11 | v10) & 0x40) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }

        if ((*(v3 + 1742) & 0x2000) != 0)
        {
          v24 = (v15 + a1 + 3089);
          goto LABEL_92;
        }
      }
    }

    else
    {
      __strcat_chk();
      v23 = v11 | v10;
    }

    if ((v23 & 0x40) == 0)
    {
LABEL_81:
      if (*(v4 + 102) >= 1)
      {
        v29 = 0;
        do
        {
          *(*(v4 + 72) + v29) = __dst[v29];
          *(*(v4 + 80) + 8 * v29) = v48[v29];
          ++v29;
        }

        while (v29 < *(v4 + 102));
      }

      v30 = strlen(v43);
      SFadd(v43, v30, (v4 + 40), (v4 + 44), *(v4 + 42), *(v4 + 56), *(v4 + 48), *(v4 + 64));
      *v2 |= 4u;
      goto LABEL_85;
    }

LABEL_80:
    *(a1 + 1322) |= 0x10u;
    goto LABEL_81;
  }

LABEL_43:
  if (*(a1 + 8) == 6 && (v10 & 0x40) != 0 && (*(a1 + 20) & 0x20) != 0)
  {
    if (!*(v3 + 1527) && ((v33 = v18 - 2, v43[v18 - 1] == 107) || v43[v33] == 107))
    {
      v43[v33] = 99;
      v13 = ICverify(v43, v18, a1);
      if (v13 != 10)
      {
        v43[v33] = 107;
      }
    }

    else
    {
      v13 = 10;
    }
  }

  else
  {
    v13 = 10;
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_65;
    }
  }

  v20 = strlen(v43);
  if (v20 >= v18)
  {
    if (v20 > v18)
    {
      LOWORD(v18) = v18 + 1;
      --v15;
      ++*(v3 + 1502);
      ++*(v3 + 1500);
      ++*(a1 + 1612);
    }
  }

  else
  {
    LOWORD(v18) = v18 - 1;
    --v15;
    --*(v3 + 1500);
    --*(a1 + 1612);
    if (*(v3 + 1502))
    {
      --*(v3 + 1502);
    }
  }

  icsfthypchk(v18, v3 + 1516, (v4 + 3472), 0, a1);
  *(v3 + 1516) = *(v3 + 1520);
  if ((*(v4 + 18) & 0x80) != 0)
  {
    v21 = *(v3 + 1524);
  }

  else
  {
    v21 = *(v3 + 1524) & 0xFF3F;
  }

  *(v3 + 1524) = v21 & 0xFFBF;
LABEL_65:
  __strcat_chk();
  if (*(v3 + 1742))
  {
    if (*(v3 + 1526))
    {
      ICcmpsup(v3 + 1516, *(v3 + 1526), v18);
    }
  }

  else
  {
    *(v3 + 1526) = 0;
  }

  __strcat_chk();
  if ((v11 & 0x40) != 0)
  {
    v25 = strlen(__s);
    icsfthypchk(v25, v3 + 1596, (v4 + 3472), v15, a1);
    *(v3 + 1596) = *(v3 + 1600);
    if ((*(v4 + 18) & 0x80) != 0)
    {
      v26 = *(v3 + 1604);
    }

    else
    {
      v26 = *(v3 + 1604) & 0xFF3F;
    }

    *(v3 + 1604) = v26 & 0xFFBF;
  }

  __strcpy_chk();
  if ((v35 & 0x40) != 0)
  {
    *v2 |= 4u;
    v28 = strlen(__src);
    SFadd(__src, v28, (v4 + 40), (v4 + 44), *(v4 + 42), *(v4 + 56), *(v4 + 48), *(v4 + 64));
    *(a1 + 1322) = *(a1 + 1322) & 0xFFA9 | 0x10;
LABEL_85:
    v13 = 2;
    goto LABEL_86;
  }

  *(a1 + 1322) &= 0xFFB9u;
  if (v34)
  {
    v27 = strlen(__src);
    SFadd(__s, v27, (v4 + 40), (v4 + 44), *(v4 + 42), *(v4 + 56), *(v4 + 48), *(v4 + 64));
  }

LABEL_86:
  v31 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t icsfthypchk(int a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5)
{
  if (!*a3)
  {
    goto LABEL_8;
  }

  if (a1 - a4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    while (((*(a2 + 4 * (v6 >> 5)) >> ~v5) & 1) == 0)
    {
      v5 = ++v6;
      if (a1 - a4 <= v6)
      {
        return 1;
      }
    }

    if (((a3[(v6 + a4) >> 5] >> ~(v5 + a4)) & 1) == 0)
    {
LABEL_8:
      *(a5 + 1328) |= 8uLL;
    }
  }

  return 1;
}

uint64_t uppercasedString(void *a1, uint64_t a2)
{
  if (uppercasedString_onceToken != -1)
  {
    uppercasedString_cold_1();
  }

  v4 = [a1 uppercaseStringWithLocale:a2];
  [v4 rangeOfCharacterFromSet:uppercasedString_greekUppercaseLetterCharacterSet];
  if (!v5)
  {
    return v4;
  }

  v6 = [a1 rangeOfComposedCharacterSequenceAtIndex:0];
  if (v6 + v7 >= [a1 length])
  {
    return v4;
  }

  v8 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v4 stringByReplacingOccurrencesOfString:@"Ά" withString:{@"Α", "stringByReplacingOccurrencesOfString:withString:", @"Έ", @"Ε", "stringByReplacingOccurrencesOfString:withString:", @"Ή", @"Η", "stringByReplacingOccurrencesOfString:withString:", @"Ί", @"Ι", "stringByReplacingOccurrencesOfString:withString:", @"Ό", @"Ο", "stringByReplacingOccurrencesOfString:withString:", @"Ύ", @"Υ", "stringByReplacingOccurrencesOfString:withString:", @"Ώ", @"Ω", "stringByReplacingOccurrencesOfString:withString:", @"Ά", @"Α", "stringByReplacingOccurrencesOfString:withString:", @"Έ", @"Ε", "stringByReplacingOccurrencesOfString:withString:", @"Ή", @"Η", "stringByReplacingOccurrencesOfString:withString:", @"Ί", @"Ι", "stringByReplacingOccurrencesOfString:withString:", @"Ό", @"Ο", "stringByReplacingOccurrencesOfString:withString:", @"Ύ", @"Υ"}];

  return [v8 stringByReplacingOccurrencesOfString:@"Ώ" withString:@"Ω"];
}

id __uppercasedString_block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithRange:{902, 38}];
  uppercasedString_greekUppercaseLetterCharacterSet = result;
  return result;
}

uint64_t initialCapitalizedString(void *a1, uint64_t a2)
{
  v4 = [a1 lowercaseStringWithLocale:a2];
  v5 = [a1 length];
  if (initialCapitalizedString_onceToken != -1)
  {
    initialCapitalizedString_cold_1();
  }

  if (![a1 isEqualToString:v4])
  {
    return a1;
  }

  if ([initialCapitalizedString_prohibitedSet containsObject:a1])
  {
    return a1;
  }

  v6 = [a1 rangeOfCharacterFromSet:initialCapitalizedString_internalCharacterSet];
  if (v7)
  {
    if (v7 != 1)
    {
      return a1;
    }

    v8 = v6;
    if (v6 + 1 != [a1 length] || !objc_msgSend(objc_msgSend(a1, "substringWithRange:", v8, 1), "isEqualToString:", @"."))
    {
      return a1;
    }
  }

  v9 = [a1 rangeOfComposedCharacterSequenceAtIndex:0];
  v11 = v9 + v10;
  if (v9 + v10 >= v5)
  {

    return [a1 capitalizedStringWithLocale:a2];
  }

  else
  {
    v12 = [objc_msgSend(a1 substringWithRange:{v9, v10), "capitalizedStringWithLocale:", a2}];
    v13 = [a1 substringFromIndex:v11];

    return [v12 stringByAppendingString:v13];
  }
}

uint64_t __initialCapitalizedString_block_invoke()
{
  initialCapitalizedString_internalCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".@_"];
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F4E16778];
  initialCapitalizedString_prohibitedSet = result;
  return result;
}

uint64_t secondCapitalizedString(void *a1, uint64_t a2)
{
  if (![a1 length])
  {
    return a1;
  }

  v4 = [a1 rangeOfComposedCharacterSequenceAtIndex:0];
  v6 = v5;
  v7 = v4 + v5;
  if (v4 + v5 >= [a1 length])
  {
    return a1;
  }

  v8 = [a1 substringWithRange:{v4, v6}];
  v9 = initialCapitalizedString([a1 substringFromIndex:v7], a2);

  return [v8 stringByAppendingString:v9];
}

uint64_t stringWithoutHamza(void *a1)
{
  if (stringWithoutHamza_onceToken != -1)
  {
    stringWithoutHamza_cold_1();
  }

  [a1 rangeOfCharacterFromSet:stringWithoutHamza_hamzaContainingCharacterSet];
  if (!v2)
  {
    return a1;
  }

  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a1 stringByReplacingOccurrencesOfString:@"أ" withString:{@"ا", "stringByReplacingOccurrencesOfString:withString:", @"ؤ", @"و", "stringByReplacingOccurrencesOfString:withString:", @"إ", @"ا", "stringByReplacingOccurrencesOfString:withString:", @"ئ", @"ي", "stringByReplacingOccurrencesOfString:withString:", @"أ", @"ا", "stringByReplacingOccurrencesOfString:withString:", @"ؤ", @"و", "stringByReplacingOccurrencesOfString:withString:", @"إ", @"ا"}];

  return [v3 stringByReplacingOccurrencesOfString:@"ئ" withString:@"ي"];
}

id __stringWithoutHamza_block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"أؤإئٕٔ"];
  stringWithoutHamza_hamzaContainingCharacterSet = result;
  return result;
}

uint64_t acceptAsCompletion(void *a1, uint64_t a2, void *a3)
{
  if ([a1 hasPrefix:a2])
  {
    return 1;
  }

  v7 = [a3 isHindi];
  v8 = [a3 isArabic];
  if (v7)
  {
    v9 = a1;
    v10 = a2;
    v11 = 9;
LABEL_8:
    [v9 rangeOfString:v10 options:v11];
    return v14 != 0;
  }

  v12 = v8;
  [a1 rangeOfString:a2 options:137];
  result = v13 != 0;
  if (!v13 && ((v12 ^ 1) & 1) == 0)
  {
    v9 = stringWithoutHamza(a1);
    v10 = a2;
    v11 = 137;
    goto LABEL_8;
  }

  return result;
}

uint64_t treatWordAsSentenceInitial(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a1 length];
  if (treatWordAsSentenceInitial_onceToken != -1)
  {
    treatWordAsSentenceInitial_cold_1();
  }

  if (a3 > a2)
  {
    v11 = [a1 rangeOfCharacterFromSet:treatWordAsSentenceInitial_nonSentenceTrailingCharacterSet options:0 range:{a2, a3 - a2}];
    v13 = v12;
    v14 = [a1 rangeOfCharacterFromSet:treatWordAsSentenceInitial_nonSentenceLeadingCharacterSet options:4 range:{a2, a3 - a2}];
    v16 = v14 + v15 - a2;
    if (v14 + v15 < a2)
    {
      v16 = 0;
    }

    if (!v15)
    {
      v16 = 0;
    }

    v17 = v16 + a2;
    if (!v13 || (v19 = v17 - v11, v18 = v17 == v11, v17 < v11) || (v17 = v11, v18))
    {
      if (v17 != a2)
      {
        return 0;
      }
    }

    else
    {
      [a1 rangeOfCharacterFromSet:treatWordAsSentenceInitial_nonSpaceCharacterSet options:0 range:{v11, v19}];
      v27 = v26 == 0;
      if (v26)
      {
        v28 = 0;
      }

      else
      {
        v28 = v11 == a2 + 2;
      }

      if (v28)
      {
        [a1 rangeOfString:@".." options:0 range:{a2, 2}];
        v27 = v29 == 0;
      }

      if (v27 && v11 == a2 + 3)
      {
        [a1 rangeOfString:@"..." options:0 range:{a2, 3}];
        if (v31)
        {
          return 0;
        }
      }

      else if (!v27)
      {
        return 0;
      }
    }
  }

  if (v10 <= a3 + a4)
  {
    v21 = 1;
  }

  else
  {
    [a1 rangeOfCharacterFromSet:treatWordAsSentenceInitial_followingCharacterSet options:8 range:{a3 + a4, v10 - (a3 + a4)}];
    v21 = v20 == 0;
    if (v20)
    {
      goto LABEL_22;
    }
  }

  if (a4 != 1 || (v22 = a3 + 1, v22 >= v10))
  {
LABEL_22:
    if (v21)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if ([a1 characterAtIndex:v22] == 46 || objc_msgSend(a1, "characterAtIndex:", v22) == 41)
  {
    return 0;
  }

LABEL_23:
  v23 = [a5 usesOrdinalPeriod];
  result = 1;
  if (a2 && v23 && v10 > a2)
  {
    if ([a1 characterAtIndex:a2] == 46)
    {
      [a1 rangeOfCharacterFromSet:treatWordAsSentenceInitial_decimalDigitCharacterSet options:12 range:{0, a2}];
      return !v25 && v21;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

id __treatWordAsSentenceInitial_block_invoke()
{
  treatWordAsSentenceInitial_nonSentenceTrailingCharacterSet = [objc_msgSend(MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@".!?։۔।።᙮‼‽⁈⁉。！．？｡'‘’“”»«", "invertedSet"}];
  treatWordAsSentenceInitial_nonSentenceLeadingCharacterSet = objc_retain([objc_msgSend(MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"¡¿'‘’“”„»«(", "invertedSet")}];
  treatWordAsSentenceInitial_nonSpaceCharacterSet = [objc_msgSend(MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"  ", "invertedSet"}];
  treatWordAsSentenceInitial_followingCharacterSet = objc_retain([MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"@#$%^&*_=+([]\\|>"];
  result = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  treatWordAsSentenceInitial_decimalDigitCharacterSet = result;
  return result;
}

unint64_t minutesAgo(double a1, double a2)
{
  if (a1 >= a2)
  {
    return 0;
  }

  else
  {
    return vcvtmd_u64_f64((a2 - a1) / 60.0);
  }
}

uint64_t _matchingRangeForCompletion(void *a1, void *a2)
{
  v3 = [a1 stringByReplacingOccurrencesOfString:@"<E2><80><99>" withString:@"'"];
  v4 = [a2 stringByReplacingOccurrencesOfString:@"<E2><80><99>" withString:@"'"];
  if ([v4 rangeOfString:v3 options:137])
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (v6 || v5 >= [v4 length])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _NSPathForSystemFramework(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v4 = [(NSArray *)v3 count];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v7 = [(NSArray *)v3 objectAtIndex:v6];
    v8 = [objc_msgSend(v7 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", a1}];
    if ([v2 fileExistsAtPath:v8])
    {
      break;
    }

    v8 = [objc_msgSend(v7 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", a1}];
    if ([v2 fileExistsAtPath:v8])
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return v8;
}

void _addEmojiForStringToArray(uint64_t a1, void *a2, void *a3, char a4, int a5)
{
  if (_addEmojiForStringToArray_onceToken == -1)
  {
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    _addEmojiForStringToArray_cold_1();
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  if ([a2 isPortuguese])
  {
    return;
  }

LABEL_4:
  EmojiKit = _loadEmojiKit();
  if (a2)
  {
    if (EmojiKit)
    {
      if (_addEmojiForStringToArray_emojiDatasByLanguage)
      {
        Value = CFDictionaryGetValue(_addEmojiForStringToArray_emojiDatasByLanguage, [a2 identifier]);
        v12 = *MEMORY[0x1E695E738];
        if (Value != *MEMORY[0x1E695E738])
        {
          v13 = Value;
          if (Value || ((v13 = (_CEMCreateEmojiLocaleData)([a2 identifier]), v14 = _addEmojiForStringToArray_emojiDatasByLanguage, v15 = objc_msgSend(a2, "identifier"), v13) ? (v16 = v13) : (v16 = v12), CFDictionarySetValue(v14, v15, v16), v13))
          {
            if (_CEMStringIsSingleEmoji(a1))
            {
              v17 = _CEMEmojiTokenCreateWithString(a1, v13);
              if (!v17)
              {
                return;
              }

              v18 = v17;
              EmojiTokensForString = _CEMEmojiTokenCopyRelatedEmoji(v17, 0);
              CFRelease(v18);
              if (!EmojiTokensForString)
              {
                return;
              }
            }

            else
            {
              if (a4)
              {
                return;
              }

              EmojiTokensForString = _CEMEmojiLocaleDataCreateEmojiTokensForString(v13, a1, 0, 17, 1, 0);
              if (!EmojiTokensForString)
              {
                return;
              }
            }

            Count = CFArrayGetCount(EmojiTokensForString);
            if (Count >= 1)
            {
              v21 = Count;
              for (i = 0; i != v21; ++i)
              {
                v23 = _CEMEmojiTokenGetString;
                ValueAtIndex = CFArrayGetValueAtIndex(EmojiTokensForString, i);
                v25 = v23(ValueAtIndex);
                if (([a3 containsObject:v25] & 1) == 0)
                {
                  [a3 addObject:v25];
                }
              }

              if (v21 == 1)
              {
                v26 = _CEMEmojiTokenCopyRelatedEmoji;
                v27 = CFArrayGetValueAtIndex(EmojiTokensForString, 0);
                v28 = v26(v27, 0);
                if (v28)
                {
                  v29 = v28;
                  v30 = CFArrayGetCount(v28);
                  if (v30 >= 1)
                  {
                    v31 = v30;
                    for (j = 0; j != v31; ++j)
                    {
                      v33 = _CEMEmojiTokenGetString;
                      v34 = CFArrayGetValueAtIndex(v29, j);
                      v35 = v33(v34);
                      if (([a3 containsObject:v35] & 1) == 0)
                      {
                        [a3 addObject:v35];
                      }
                    }
                  }

                  CFRelease(v29);
                }
              }
            }

            CFRelease(EmojiTokensForString);
          }
        }
      }
    }
  }
}

BOOL _loadEmojiKit()
{
  if (_loadEmojiKit_onceToken != -1)
  {
    _loadEmojiKit_cold_1();
  }

  if (_CEMStringIsSingleEmoji)
  {
    v0 = _CEMEmojiTokenCreateWithString == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && _CEMEmojiTokenGetString != 0 && _CEMEmojiTokenCopyRelatedEmoji != 0 && _CEMCreateEmojiLocaleData != 0 && _CEMEmojiLocaleDataCreateEmojiTokensForString != 0 && _CEMEmojiTokenGetSkinTone != 0;
}

void ___loadEmojiKit_block_invoke()
{
  v0 = [objc_msgSend(_NSPathForSystemFramework(@"CoreEmoji.framework") stringByAppendingString:{@"/Versions/A", "stringByAppendingPathComponent:", @"CoreEmoji"}];
  if (v0)
  {
    v1 = dlopen([v0 fileSystemRepresentation], 256);
    v2 = v1;
    if (v1)
    {
      _CEMStringIsSingleEmoji = dlsym(v1, "CEMStringIsSingleEmoji");
      _CEMEmojiTokenCreateWithString = dlsym(v2, "CEMEmojiTokenCreateWithString");
      _CEMEmojiTokenGetString = dlsym(v2, "CEMEmojiTokenGetString");
      _CEMEmojiTokenCopyRelatedEmoji = dlsym(v2, "CEMEmojiTokenCopyRelatedEmoji");
      _CEMCreateEmojiLocaleData = dlsym(v2, "CEMCreateEmojiLocaleData");
      _CEMEmojiLocaleDataCreateEmojiTokensForString = dlsym(v2, "CEMEmojiLocaleDataCreateEmojiTokensForString");
      _CEMEmojiTokenGetSkinTone = dlsym(v2, "CEMEmojiTokenGetSkinTone");
    }
  }

  else
  {
    v2 = 0;
  }

  if (!_CEMStringIsSingleEmoji || !_CEMEmojiTokenCreateWithString || !_CEMEmojiTokenGetString || !_CEMEmojiTokenCopyRelatedEmoji || !_CEMCreateEmojiLocaleData || !_CEMEmojiLocaleDataCreateEmojiTokensForString || !_CEMEmojiTokenGetSkinTone)
  {
    NSLog(@"Failed to load CoreEmoji, handle %p results %p %p %p %p %p %p %p", v2, _CEMStringIsSingleEmoji, _CEMEmojiTokenCreateWithString, _CEMEmojiTokenGetString, _CEMEmojiTokenCopyRelatedEmoji, _CEMCreateEmojiLocaleData, _CEMEmojiLocaleDataCreateEmojiTokensForString, _CEMEmojiTokenGetSkinTone);
  }
}

uint64_t __PRUseSingleCompletions_block_invoke()
{
  PRUseSingleCompletions_allowList = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:&unk_1F4E16790];
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:&unk_1F4E167A8];
  PRUseSingleCompletions_denyList = result;
  return result;
}

CFMutableDictionaryRef ___addEmojiForStringToArray_block_invoke()
{
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  _addEmojiForStringToArray_emojiDatasByLanguage = result;
  return result;
}

uint64_t ICcmphhy(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  v73 = *(a1 + 3184);
  v78 = *(v73 + 280);
  v2 = *(v73 + 264);
  v3 = *(*(v73 + 248) + 56);
  v82[0] = 0;
  v82[1] = 0;
  v4 = (a1 + 1547);
  v5 = *(a1 + 1547);
  if (v5 == 45)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      __src[v8] = v5;
      v7 = v8 + 1;
      if (v8 > 0x3E)
      {
        break;
      }

      v5 = *(a1 + 1548 + v8++);
    }

    while (v5 != 45);
    v6 = v7;
  }

  v83 = 0;
  v81 = 0;
  __src[v7] = 0;
  v9 = v6 + 1;
  v10 = strlen(&v4[(v6 + 1)]);
  if (v10 >= 0x40)
  {
    v11 = 64;
  }

  else
  {
    v11 = v10;
  }

  if (v10)
  {
    __strncpy_chk();
  }

  __s[v11] = 0;
  v12 = *(v2 + 88);
  v83 = *(v2 + 92);
  v13 = strlen(v4);
  if (v13 >= 0x40)
  {
    v14 = 64;
  }

  else
  {
    v14 = v13;
  }

  v77 = v12;
  v15 = v12;
  if (v13)
  {
    __strncpy_chk();
    v15 = *(v2 + 88);
  }

  v84[v14] = 0;
  if (v15)
  {
    if (*(a1 + 1612) >= 64)
    {
      v16 = 64;
    }

    else
    {
      v16 = *(a1 + 1612);
    }

    SLrecap(v84, v16, v15, v2 + 92, v15, v3);
  }

  v74 = v4;
  v76 = v6;
  *(v2 + 88) = SLcap(v84, 0, v6, (v2 + 92), v3);
  if ((*(a1 + 8) != 6 || (*(a1 + 20) & 0x10) != 0) && SLisint(__src, v3))
  {
    v17 = 1;
    *(v2 + 102) = 1;
    **(v2 + 72) = 5;
    **(v2 + 80) = 0;
    v18 = v78;
LABEL_28:
    v20 = *(v2 + 102);
    if (v20 >= 1)
    {
      v79 = v9;
      v21 = *(v2 + 72);
      v22 = *(v2 + 80);
      v23 = v82;
      v24 = v80;
      v25 = *(v2 + 102);
      do
      {
        v26 = *v21++;
        *v24++ = v26;
        v27 = *v22++;
        *v23++ = v27;
        --v25;
      }

      while (v25);
      v28 = 0;
      v29 = v9 >> 5;
      v30 = 1 << ~v9;
      v75 = (v18 + 1607);
      LOWORD(v31) = -1;
      v72 = v20;
      v71 = v17;
      while (1)
      {
        v32 = v80[v28];
        if (v32 != 2 && (v32 != 3 || *(a1 + 8) != 11) && (((*(*(v2 + 3520) + 2 * v28) & 0x400) == 0) & ~v17) != 0)
        {
          break;
        }

        *(v18 + 1504) = v32;
        v33 = strlen(__s);
        v34 = ICverify(__s, v33, a1);
        v35 = v17 ^ 1;
        if (v34 != 10)
        {
          v35 = 1;
        }

        if (v35)
        {
          if (v34 != 10)
          {
            break;
          }
        }

        else
        {
          v36 = *(v2 + 102);
          if (v36 < 1)
          {
            LODWORD(v37) = 0;
          }

          else
          {
            v37 = 0;
            while ((*(*(v2 + 3520) + 2 * v37) & 0x10) == 0)
            {
              if (v36 == ++v37)
              {
                goto LABEL_63;
              }
            }

            *(v2 + 102) = 1;
            **(v2 + 72) = *(*(v2 + 72) + v37);
            **(v2 + 80) = *(*(v2 + 80) + 8 * v37);
            **(v2 + 3520) = *(*(v2 + 3520) + 2 * v37);
          }

          if (v37 == v36)
          {
            break;
          }
        }

        v38 = *(v2 + 102);
        *(v18 + 1596) = *(v2 + 3480);
        *(v2 + 3480) = 0;
        *(v18 + 1500) = v76;
        *(v18 + 1502) = v79;
        if (v38 >= 1)
        {
          v39 = 0;
          v40 = v75;
          while (1)
          {
            v41 = *(*(v2 + 3520) + 2 * v39);
            if ((v41 & 0x18) != 0 && (*(a1 + 8) != 6 || (*&v84[4 * v29 - 4] & v30) != 0))
            {
              break;
            }

            if ((v41 & 2) != 0 && (*&v84[4 * v29 - 4] & v30) == 0)
            {
              break;
            }

            if (v38 == ++v39)
            {
              goto LABEL_56;
            }
          }

          LOWORD(v31) = v39;
LABEL_56:
          if (v31 == 0xFFFF)
          {
            LOWORD(v31) = 0;
            while ((*(*(v2 + 3520) + 2 * v31) & 0x1A) == 0)
            {
              v31 = (v31 + 1);
              if (v31 >= v38)
              {
                goto LABEL_82;
              }
            }
          }

LABEL_65:
          v42 = *(v2 + 80);
          *(v18 + 1592) = *(*(v2 + 72) + v31);
          v81 = *(v42 + 8 * v31);
          if (*(a1 + 1308))
          {
            v43 = *(*(a1 + 3184) + 216);
            if (*(v43 + 747))
            {
              v44 = strlen((v43 + 680));
              v45 = v40;
              if (v44 >= 0x40)
              {
                v46 = 64;
              }

              else
              {
                v46 = v44;
              }

              if (v44)
              {
                strncpy(v45, (v43 + 680), v46);
              }

              v45[v46] = 0;
              *(v78 + 1600) = *(a1 + 3156);
            }
          }

          *(v78 + 1606) = *(*(v2 + 3496) + v31);
          v18 = v78;
          *(v78 + 1604) = *(*(v2 + 3520) + 2 * v31);
          v47 = *(v78 + 1504);
          if ((v47 | 4) == 4)
          {
            v47 = ICEndToken(a1);
            v17 = v71;
            if (v47 == 1)
            {
              *(v78 + 1504) = 1;
              *(v78 + 1508) |= 0x80000000;
              v20 = v72;
              if ((v83 & 0x80000000) == 0)
              {
                *(a1 + 1322) |= 0x800u;
                v47 = 1;
              }

              goto LABEL_80;
            }

            v47 = *(v78 + 1504);
          }

          else
          {
            v17 = v71;
          }

          v20 = v72;
LABEL_80:
          **(v2 + 72) = ICcomcap(v47, &v82[v28], v79, *(v78 + 1592), &v81, *(v2 + 80), 0);
          v48 = SLchk(v74, *(a1 + 1612), v77, &v83, **(v2 + 72), *(v2 + 80));
          *(v2 + 102) = 1;
          *(v2 + 18) = 0;
          *v73 |= 8u;
          if (!v48)
          {
            goto LABEL_99;
          }

          v19 = 10;
          goto LABEL_83;
        }

        v40 = v75;
        if (v31 != 0xFFFF)
        {
          goto LABEL_65;
        }

LABEL_82:
        v19 = 11;
        LOWORD(v31) = -1;
LABEL_83:
        if (++v28 == v20)
        {
          goto LABEL_84;
        }
      }

LABEL_63:
      v19 = 11;
      goto LABEL_83;
    }

LABEL_99:
    *(v2 + 88) = v77;
    *(v2 + 92) = v83;
    v19 = 10;
    goto LABEL_148;
  }

  v19 = ICverify(__src, v6, a1);
  v18 = v78;
  if (v19 == 10)
  {
    v17 = 0;
    goto LABEL_28;
  }

LABEL_84:
  *(v2 + 88) = v77;
  *(v2 + 92) = v83;
  if (v19 == 11)
  {
    v49 = strlen(v74);
    if (v49 >= 0x40)
    {
      v50 = 64;
    }

    else
    {
      v50 = v49;
    }

    if (v49)
    {
      __strncpy_chk();
    }

    v87[v50] = 0;
    --*(a1 + 1612);
    __strlcat_chk();
    v51 = strlen(__src);
    if (v51 >= 0x40)
    {
      v52 = 64;
    }

    else
    {
      v52 = v51;
    }

    if (v51)
    {
      strncpy(v74, __src, v52);
    }

    v74[v52] = 0;
    *(v18 + 1516) = 0;
    *(v2 + 3480) = 0;
    v53 = ICcmp(a1);
    if (v53 == 11)
    {
      if (*(a1 + 8) != 6 || (*(a1 + 20) & 0x20) == 0)
      {
        v54 = 11;
        goto LABEL_106;
      }

      v54 = ICcmpnum(v74, *(a1 + 1612), a1);
      if (v54 == 10)
      {
        *(a1 + 1328) |= 0x400000uLL;
        *(v18 + 1738) = *(v18 + 1500);
        goto LABEL_106;
      }
    }

    else
    {
      v54 = v53;
    }

    if (v54 == 2)
    {
      if (*(v18 + 1742) < 0)
      {
        SFadd(v74, *(a1 + 1612), (v2 + 40), (v2 + 44), *(v2 + 42), *(v2 + 56), *(v2 + 48), *(v2 + 64));
        v60 = strlen(v87);
        if (v60 >= 0x40)
        {
          v61 = 64;
        }

        else
        {
          v61 = v60;
        }

        if (v60)
        {
          strncpy(v74, v87, v61);
        }

        v74[v61] = 0;
        v62 = *(a1 + 1322);
        *(a1 + 1322) = v62 | 0x40;
        if ((*(v18 + 1743) & 0x20) != 0)
        {
          *(a1 + 1322) = v62 | 0x42;
        }

        *(a1 + 1612) = strlen(v74);
        goto LABEL_132;
      }

      v54 = 2;
    }

LABEL_106:
    v55 = strlen(v87);
    if (v55 >= 0x40)
    {
      v56 = 64;
    }

    else
    {
      v56 = v55;
    }

    if (v55)
    {
      strncpy(v74, v87, v56);
    }

    v74[v56] = 0;
    *(a1 + 1612) = strlen(v74);
    if (v54 == 10)
    {
      v57 = strlen(__src);
      if (v57 >= 0x40)
      {
        v58 = 64;
      }

      else
      {
        v58 = v57;
      }

      if (v57)
      {
        strncpy((v18 + 1672), __src, v58);
      }

      *(v18 + 1672 + v58) = 0;
      if ((*(v2 + 3492) & 0x40) == 0 && (*(v18 + 1524) & 0x40) == 0 && (*(v18 + 1604) & 0x40) == 0)
      {
        SFadd((v18 + 1672), *(a1 + 1612), (v2 + 40), (v2 + 44), *(v2 + 42), *(v2 + 56), *(v2 + 48), *(v2 + 64));
      }

      v59 = v73;
      *v73 |= 8u;
      goto LABEL_144;
    }

    if (v54 == 11)
    {
      *(v2 + 3480) = 0;
LABEL_136:
      v19 = 11;
      goto LABEL_152;
    }

LABEL_132:
    if (*(a1 + 8) == 6 && (*(v18 + 1742) & 2) != 0)
    {
      goto LABEL_136;
    }

    if ((*(a1 + 1322) & 0x40) != 0)
    {
      v64 = strlen((v18 + 1672));
      if (v64 >= 0x40)
      {
        v65 = 64;
      }

      else
      {
        v65 = v64;
      }

      if (v64)
      {
        strncpy((a1 + 3090), (v18 + 1672), v65);
      }

      *(a1 + 3090 + v65) = 0;
    }

    else
    {
      v63 = strlen((v18 + 1672));
      SFadd((v18 + 1672), v63, (v2 + 40), (v2 + 44), *(v2 + 42), *(v2 + 56), *(v2 + 48), *(v2 + 64));
    }

    v59 = v73;
LABEL_144:
    v66 = *(v18 + 1742);
    *(a1 + 1328) |= 0x200uLL;
    v67 = *v59;
    *v59 |= 4u;
    if (!*(v18 + 1740))
    {
      *(v18 + 1738) = *(v18 + 1500);
    }

    *(v18 + 1742) = v66 & 0xFDEF | 0x10;
    if ((v66 & 0x100) != 0)
    {
      *v59 = v67 | 0xC;
      v19 = 2;
      goto LABEL_152;
    }

    v19 = 2;
  }

LABEL_148:
  v68 = *(v18 + 1738);
  if (v68 == *(v18 + 1740) || !*(v18 + 1526))
  {
    *(v18 + 1526) = 0;
  }

  else
  {
    ICcmpsup(v18 + 1516, *(v18 + 1526), v68);
  }

LABEL_152:
  v69 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t ICcmphyp(char *__s, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 3184);
  if ((*v2 & 0xC) != 0)
  {
    v5 = *(v2 + 280);
    v6 = *(v5 + 1742);
    if ((v6 & 0x1000) != 0 || (v7 = *(v5 + 1740), !*(v5 + 1740)))
    {
      v7 = *(v5 + 1502);
    }

    v8 = *(*(v2 + 248) + 56);
    v19[0] = 0;
    if (*(v5 + 1516))
    {
      if ((*(v5 + 1524) & 0x40) == 0)
      {
        v9 = *(v5 + 1500);
        if (*(v5 + 1500))
        {
          v10 = 0;
          do
          {
            v11 = 1 << ~v10;
            if ((*(v5 + 1516 + 4 * (v10 >> 5)) & v11) != 0)
            {
              *(v19 + (v10 >> 5)) |= v11;
            }

            ++v10;
          }

          while (v9 != v10);
        }
      }
    }

    if (*(v5 + 1596))
    {
      if ((*(v5 + 1604) & 0x40) == 0)
      {
        v12 = strlen(__s);
        if (v12 > v7)
        {
          v13 = 0;
          v14 = v7;
          do
          {
            if ((*(v5 + 1596 + 4 * (v13 >> 5)) >> ~v13))
            {
              *(v19 + (v14 >> 5)) |= 1 << ~v14;
            }

            ++v13;
            ++v14;
          }

          while (v12 > v14);
        }
      }
    }

    v15 = 0;
    if ((v6 & 0x400) == 0)
    {
      if (v7)
      {
        v15 = *(v5 + 1500);
        if (v15)
        {
          v15 = 0;
          if ((v6 & 0x7080) == 0)
          {
            v16 = v7 - 1;
            if (__s[v16] != 45)
            {
              *(v19 + (v16 >> 5)) |= 1 << ~v16;
              v15 = v7 - 1;
            }
          }
        }
      }
    }

    if (*(a2 + 8) == 6 && (*(v8 + 4 * __s[v15]) & 0x8000000) != 0)
    {
      *(v19 + (v15 >> 5)) &= ~(1 << ~v15);
    }

    if ((~*(a2 + 1322) & 0x42) != 0)
    {
      *(*(v2 + 264) + 3480) = v19[0];
    }

    else
    {
      *(a2 + 3156) = v19[0];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t ICcmplmc(uint64_t a1)
{
  v1 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3184);
  v3 = *(v2 + 280);
  v4 = *(v2 + 264);
  v5 = *(v2 + 248);
  v6 = *(v2 + 90);
  v49 = v2;
  v7 = *(v2 + 88);
  if (*(v2 + 88))
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  *(v3 + 96) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v44 = v3;
  v9 = strlen((a1 + 1547));
  if (v9 >= 0x40)
  {
    v10 = 64;
  }

  else
  {
    v10 = v9;
  }

  if (v9)
  {
    __strncpy_chk();
  }

  LOWORD(v11) = 0;
  LOWORD(v12) = 0;
  __s[v10 + 65] = 0;
  v13 = *(v1 + 1612);
  if (v6 < v13)
  {
    LOWORD(v13) = v6;
  }

  if (v7 >= 2)
  {
    v14 = 0;
    LOWORD(v12) = 0;
    LOWORD(v11) = 0;
    do
    {
      if ((((v11 & 0x7F) << 8) + 19 * (v11 >> 7) + __s[v14 + 65]) <= 0x7FECu)
      {
        LOWORD(v11) = ((v11 & 0x7F) << 8) + 19 * (v11 >> 7) + __s[v14 + 65];
      }

      else
      {
        LOWORD(v11) = ((v11 & 0x7F) << 8) + 19 * (v11 >> 7) + __s[v14 + 65] - 32749;
      }

      LOWORD(v12) = v11 ^ v12;
      ++v14;
    }

    while (v14 < v8);
  }

  v15 = v44;
  v16 = 0;
  if (v8 < v13)
  {
    v17 = v8;
    v43 = *(v4 + 88);
    v45 = v4;
    v46 = v13;
    while (1)
    {
      if ((((v11 & 0x7F) << 8) + 19 * (v11 >> 7) + __s[v17 + 65]) <= 0x7FECu)
      {
        v11 = ((v11 & 0x7F) << 8) + 19 * (v11 >> 7) + __s[v17 + 65];
      }

      else
      {
        v11 = ((v11 & 0x7F) << 8) + 19 * (v11 >> 7) + __s[v17 + 65] - 32749;
      }

      v12 = (v11 ^ v12) & 0x7FFF;
      v18 = *(v5 + 88);
      LOWORD(v19) = v12;
      if (v12 > (v18 - 1))
      {
        v19 = v12 % v18;
      }

      v20 = 0;
      v21 = 3 - v11;
      while (*(*(v5 + 96) + v19) != v11)
      {
        if (*(*(v5 + 96) + v19))
        {
          v21 += 2 * v11;
          LOWORD(v19) = v19 + v21;
          if (v19 > (v18 - 1))
          {
            v19 = v19 % v18;
          }

          if (v20++ < 0x31)
          {
            continue;
          }
        }

        goto LABEL_57;
      }

      v23 = v16;
      v50 = v17;
      v24 = v17 + 1;
      __strncpy_chk();
      __s[v24] = 0;
      if (*(v1 + 8) == 6)
      {
        *(v4 + 88) = 1;
      }

      v48 = v24;
      v25 = ICverify(__s, v24, v1);
      *(v4 + 88) = v43;
      if (v25 != 11)
      {
        break;
      }

      v16 = v23;
      v17 = v50;
LABEL_57:
      if (++v17 >= v46)
      {
        if (v16 >= 1 && !*(v4 + 102))
        {
          *(v4 + 102) = 1;
        }

        goto LABEL_65;
      }
    }

    v16 = v23;
    v17 = v50;
    v26 = v24;
    if (*(v1 + 8) == 6 && (*v49 & 0x20) != 0)
    {
      v27 = *(v4 + 102);
      if (v27 != 1)
      {
        goto LABEL_39;
      }

      if ((**(v4 + 3520) & 4) == 0)
      {
        ICget(__s, v24, v1);
        v26 = v24;
        v17 = v50;
        v16 = v23;
      }
    }

    LOWORD(v27) = *(v4 + 102);
LABEL_39:
    if (v27 < 1)
    {
      goto LABEL_57;
    }

    v28 = 0;
    v29 = 0;
    while (1)
    {
      v30 = *(v4 + 3520);
      if ((*(v30 + 2 * v29) & 0x1004) != 0)
      {
        break;
      }

LABEL_56:
      ++v29;
      v28 += 8;
      if (v29 >= v27)
      {
        goto LABEL_57;
      }
    }

    v31 = v15 + 100 * v16;
    *(v31 + 66) = v26;
    *(v31 + 68) = *(*(v4 + 3528) + v29);
    v32 = *(v4 + 3536);
    v33 = (*(v32 + v29) >> 7) ^ 1;
    *(v31 + 70) = (*(v32 + v29) >> 7) ^ 1;
    *(v31 + 72) = (*(v32 + v29) >> 2) & 0x1F;
    *(v31 + 74) = *(v32 + v29) & 3;
    v34 = *(v4 + 80);
    *(v31 + 76) = *(*(v4 + 72) + v29);
    *(v31 + 80) = *(v34 + v28);
    *(v31 + 84) = *(v34 + v28 + 4);
    *(v31 + 90) = 0;
    *(v31 + 65) = *(*(v4 + 3496) + v29);
    *(v31 + 92) = *(v4 + 3480);
    v35 = *(v30 + 2 * v29);
    *(v31 + 88) = v35;
    if (*(v1 + 1308))
    {
      v36 = v5;
      v37 = v1;
      v38 = *(*(v1 + 3184) + 216);
      if (!*(v38 + 747))
      {
        *(v31 + 88) = v35 & 0xFFBF;
        v1 = v37;
        v5 = v36;
        v4 = v45;
        if (v33)
        {
LABEL_51:
          if (!*(*(v49 + 104) + *(v31 + 68)))
          {
            *(v31 + 70) = 0;
            *(v31 + 90) = 1;
          }
        }

LABEL_54:
        v16 = (v16 + 1);
        if (v16 > 15)
        {
          goto LABEL_65;
        }

        LOWORD(v27) = *(v4 + 102);
        goto LABEL_56;
      }

      v47 = v16;
      v39 = strlen((v38 + 680));
      if (v39 >= 0x40)
      {
        v40 = 64;
      }

      else
      {
        v40 = v39;
      }

      if (v39)
      {
        strncpy(v31, (v38 + 680), v40);
        v33 = *(v31 + 70);
      }

      *(v31 + v40) = 0;
      v1 = v37;
      *(v31 + 96) = *(*(*(v37 + 3184) + 216) + 16);
      v5 = v36;
      v15 = v44;
      v4 = v45;
      LOWORD(v16) = v47;
      v26 = v48;
      v17 = v50;
    }

    if (v33)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

LABEL_65:
  v41 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t ICcmpmnd(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 3184) + 264);
  if (*(a1 + 1308) && (*(v2 + 3492) & 0x40) != 0)
  {
    result = 11;
  }

  else
  {
    *(a1 + 1690);
    __strcpy_chk();
    v3 = **(v2 + 72);
    v4 = **(v2 + 80);
    v5 = *(v2 + 18);
    result = ICcmpsmh(__src, __dst, v2 + 3480, v5 & 0x40, *(a1 + 1612), a1);
    if (result != 11)
    {
      v7 = result;
      __strcpy_chk();
      v8 = *(a1 + 1322);
      if (v7 == 2)
      {
        v9 = v8 | 4;
        *(a1 + 3156) = *(v2 + 3480);
        *(a1 + 3160) = *(v2 + 3484);
        *(v2 + 3480) = 0;
      }

      else
      {
        v9 = v8 | 2;
      }

      *(a1 + 1322) = v9 | 0x40;
      result = 10;
    }

    *(v2 + 18) = v5;
    **(v2 + 72) = v3;
    **(v2 + 80) = v4;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t isAnyAlphaX(unsigned int a1, int a2)
{
  if (a2 > 1279)
  {
    if (a2 == 1284 || a2 == 1280)
    {
      v4 = 1;
      if (a1 - 216 >= 0x1F)
      {
        v5 = a1 == 138 || (a1 & 0xFFFFFFF8) == 248;
        v6 = a1 & 0xFFFFFFFD;
        v11 = v5 || v6 == 140 || a1 == 154 || v6 == 156 || a1 == 159;
        if ((a1 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          v12 = v11;
        }

        else
        {
          v12 = 1;
        }

        if (a1 - 192 >= 0x17)
        {
          return v12;
        }

        else
        {
          return 1;
        }
      }

      return v4;
    }

    return (a1 & 0xFFFFFFDF) - 65 < 0x1A;
  }

  if (a2 != 514)
  {
    if (a2 == 517)
    {
      v3 = a1 - 241 < 0xC || (a1 & 0xFFFFFFFE) == 254;
      LODWORD(v4) = (a1 & 0xFFFFFFDF) - 65 < 0x1A || v3;
      if (a1 - 161 < 0xC)
      {
        LODWORD(v4) = 1;
      }

      if (a1 - 174 >= 0x42)
      {
        return v4;
      }

      else
      {
        return 1;
      }
    }

    return (a1 & 0xFFFFFFDF) - 65 < 0x1A;
  }

  return isAnyAlphaPolish(a1);
}

uint64_t toLowerX(uint64_t result, int a2)
{
  v2 = result - 65;
  if (a2 <= 1279)
  {
    if (a2 == 514)
    {
      if (v2 >= 0x1A && (result - 192) >= 0x17 && ((result - 161) > 0x3D || ((1 << (result + 95)) & 0x3F80000000006F35) == 0))
      {
        return result;
      }

      if (result - 161) < 0xF && ((0x6F35u >> (result + 95)))
      {
        return dword_1D2BF7A58[(result - 161)];
      }

      return (result + 32);
    }

    if (a2 == 517)
    {
      if (v2 >= 0x1A && (result - 176) > 0x1F)
      {
        if ((result & 0xFFFFFFFE) != 0xAE && (result - 161) >= 0xC)
        {
          return result;
        }

        else
        {
          return (result + 80);
        }
      }

      return (result + 32);
    }

LABEL_18:
    if (v2 >= 0x1A)
    {
      return result;
    }

    else
    {
      return (result + 32);
    }
  }

  if (a2 != 1284)
  {
    if (a2 != 1280)
    {
      goto LABEL_18;
    }

    if (v2 >= 0x1A && (result - 192) >= 0x17)
    {
      if ((result - 216) < 7)
      {
        return (result + 32);
      }

      goto LABEL_44;
    }

    if (result - 138 > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      return (result + 32);
    }

LABEL_46:
    if (result == 159)
    {
      return 255;
    }

    else
    {
      return (result + 16);
    }
  }

  if (v2 < 0x1A || (result - 192) < 0x17)
  {
    if (result - 138 > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      if (result == 73)
      {
        return 253;
      }

      return (result + 32);
    }

    goto LABEL_46;
  }

  if (result <= 215)
  {
LABEL_44:
    if ((result - 138) > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      return result;
    }

    goto LABEL_46;
  }

  if ((result - 216) < 5)
  {
    return (result + 32);
  }

  if (result == 221)
  {
    return 105;
  }

  if (result == 222)
  {
    return (result + 32);
  }

  return result;
}

uint64_t toUpperX(uint64_t result, int a2)
{
  v2 = result - 97;
  if (a2 > 1279)
  {
    if (a2 == 1284)
    {
      if ((result - 223) < 0x18 || result > 247 || v2 < 0x1A)
      {
        if (result <= 157)
        {
          if (result == 105)
          {
            return 221;
          }

          if (result != 154 && result != 156)
          {
            return (result - 32);
          }
        }

        else
        {
          if (result > 252)
          {
            if (result == 253)
            {
              return 73;
            }

            if (result == 255)
            {
              return 159;
            }

            return (result - 32);
          }

          if (result != 158)
          {
            if (result == 223)
            {
              return result;
            }

            return (result - 32);
          }
        }

        return (result - 16);
      }
    }

    else
    {
      if (a2 != 1280)
      {
        goto LABEL_25;
      }

      if ((result - 223) < 0x18 || result > 247 || v2 < 0x1A)
      {
        if ((result - 154) > 4 || ((1 << (result + 102)) & 0x15) == 0)
        {
          if (result == 255)
          {
            v4 = 159;
          }

          else
          {
            v4 = result - 32;
          }

          if (result == 223)
          {
            return 223;
          }

          else
          {
            return v4;
          }
        }

        return (result - 16);
      }
    }

    if ((result - 154) > 4 || ((1 << (result + 102)) & 0x15) == 0)
    {
      return result;
    }

    return (result - 16);
  }

  if (a2 != 514)
  {
    if (a2 == 517)
    {
      if (v2 >= 0x1A && (result - 208) > 0x1F)
      {
        if ((result - 241) >= 0xC && result <= 253)
        {
          return result;
        }

        else
        {
          return (result - 80);
        }
      }

      return (result - 32);
    }

LABEL_25:
    if (v2 >= 0x1A)
    {
      return result;
    }

    else
    {
      return (result - 32);
    }
  }

  if (v2 < 0x1A || (result - 223) < 0x18 || (result - 177) <= 0xE && ((1 << (result + 79)) & 0x6F35) != 0 || (result - 248) < 7)
  {
    if (result - 177) < 0xF && ((0x6F35u >> (result + 79)))
    {
      return dword_1D2BF7A94[(result - 177)];
    }

    return (result - 32);
  }

  return result;
}

void sub_1D2B5D164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2B5DB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t correctionFlags(unsigned int a1, int a2, int a3, int a4, int a5)
{
  v5 = 2;
  if (!a2)
  {
    v5 = 0;
  }

  v6 = v5 | a1;
  v7 = 4;
  if (!a3)
  {
    v7 = 0;
  }

  v8 = 8;
  if (!a4)
  {
    v8 = 0;
  }

  v9 = v6 | v7 | v8;
  v10 = 16;
  if (!a5)
  {
    v10 = 0;
  }

  return v9 | v10;
}

uint64_t removeDiacriticsX(uint64_t result, int a2)
{
  if (a2 == 514)
  {
    if (result < 161)
    {
      return result;
    }

    if ((result & 0x7FFFFFF8) == 0xF8 || (result - 216) < 0x1F || (result - 192) < 0x17 || (result & 0x7FFFFFDF) - 65 < 0x1A)
    {
      if (result == 161)
      {
        return 65;
      }
    }

    else
    {
      if ((result - 161) > 0x1E)
      {
        return result;
      }

      if (((1 << (result + 95)) & 0x6F356F34) == 0)
      {
        if (result == 161)
        {
          return 65;
        }

        return result;
      }
    }

    if (result < 0xA6)
    {
      return 76;
    }

    if (result < 0xAB)
    {
      return 83;
    }

    if (result == 171)
    {
      return 84;
    }

    if (result < 0xB0)
    {
      return 90;
    }

    if (result == 177)
    {
      return 97;
    }

    if (result < 0xB6)
    {
      return 108;
    }

    if (result < 0xBB)
    {
      return 115;
    }

    if (result == 187)
    {
      return 116;
    }

    if (result < 0xC0)
    {
      return 122;
    }

    if (result == 192)
    {
      return 82;
    }

    if (result < 0xC5)
    {
      return 65;
    }

    if (result == 197)
    {
      return 76;
    }

    if (result >= 0xC9)
    {
      if (result < 0xCD)
      {
        return 69;
      }

      if (result < 0xCF)
      {
        return 73;
      }

      if (result == 208)
      {
        return 68;
      }

      if (result < 0xD3)
      {
        return 78;
      }

      if (result < 0xD7)
      {
        return 79;
      }

      if (result == 216)
      {
        return 82;
      }

      v3 = result - 221;
      if (result < 0xDD)
      {
        return 85;
      }

      if (v3 < 4)
      {
        return dword_1D2BF7A40[v3];
      }

      if (result < 0xE5)
      {
        return 65;
      }

      if (result == 229)
      {
        return 76;
      }

      if (result >= 0xE9)
      {
        if (result < 0xED)
        {
          return 69;
        }

        if (result < 0xEF)
        {
          return 73;
        }

        if (result == 240)
        {
          return 68;
        }

        if (result < 0xF3)
        {
          return 78;
        }

        if (result < 0xF7)
        {
          return 79;
        }

        if (result == 248)
        {
          return 82;
        }

        if (result >= 0xFD)
        {
          if (result == 254)
          {
            v4 = 84;
          }

          else
          {
            v4 = 255;
          }

          if (result == 253)
          {
            return 89;
          }

          else
          {
            return v4;
          }
        }

        return 85;
      }
    }

    return 67;
  }

  if (a2 != 1284 && a2 != 1280 || result < 193)
  {
    return result;
  }

  if (result < 0xC6)
  {
    return 65;
  }

  if (result == 199)
  {
    return 67;
  }

  v2 = result & 0x7FFFFFFC;
  if ((result & 0x7FFFFFFC) == 0xC8)
  {
    return 69;
  }

  if (v2 == 204)
  {
    return 73;
  }

  if (result - 209) < 8 && ((0xBFu >> (result + 47)))
  {
    return dword_1D2BF7AD0[(result - 209)];
  }

  if ((result - 217) < 4)
  {
    return 85;
  }

  if (result == 221)
  {
    return 89;
  }

  if ((result - 224) < 6)
  {
    return 97;
  }

  if (result == 231)
  {
    return 99;
  }

  if (v2 == 232)
  {
    return 101;
  }

  if (v2 == 236)
  {
    return 105;
  }

  if (result - 241) < 8 && ((0xBFu >> (result + 15)))
  {
    return dword_1D2BF7AF0[(result - 241)];
  }

  if ((result - 249) < 4)
  {
    return 117;
  }

  if ((result & 0x7FFFFFFD) == 0xFD)
  {
    return 121;
  }

  return result;
}

uint64_t isUpperCase(int a1)
{
  v2 = a1 - 65;
  result = 1;
  if (v2 >= 0x1A && (a1 - 192) >= 0x17 && (a1 - 216) >= 7)
  {
    v4 = a1 - 138;
    if (v4 > 0x15 || ((1 << v4) & 0x200015) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t isAnyAlphaPolish(unsigned int a1)
{
  v1 = 1;
  if (a1 - 216 >= 0x1F && a1 - 192 >= 0x17 && (a1 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v2 = vdupq_n_s32(a1);
    v1 = vmaxv_u16(vmovn_s32(vorrq_s8(vceqq_s32(vandq_s8(v2, xmmword_1D2BF7A00), xmmword_1D2BF7A30), vcgtq_u32(xmmword_1D2BF7A20, vaddq_s32(v2, xmmword_1D2BF7A10))))) | ((a1 & 0xFFFFFFF8) == 248);
  }

  return v1 & 1;
}

uint64_t ICcmpnum(char *__s, unsigned int a2, uint64_t a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 3184);
  v7 = *(v6 + 264);
  v8 = *(*(v6 + 248) + 56);
  v31 = 45;
  if (__s)
  {
    v9 = strlen(__s);
    if (v9 >= 0x40)
    {
      v10 = 64;
    }

    else
    {
      v10 = v9;
    }

    if (v9)
    {
      __strncpy_chk();
    }

    __sa[v10] = 0;
  }

  if (!a2)
  {
    goto LABEL_37;
  }

  v11 = 0;
  while ((*(v8 + 4 * __sa[v11]) & 0x8000000) != 0)
  {
    if (a2 <= ++v11)
    {
      v11 = a2;
      goto LABEL_14;
    }
  }

  if (!v11)
  {
    goto LABEL_37;
  }

LABEL_14:
  if (__s)
  {
    v12 = strlen(&__sa[v11]);
    if (v12 >= 0x40)
    {
      v13 = 64;
    }

    else
    {
      v13 = v12;
    }

    if (v12)
    {
      strncpy(__s, &__sa[v11], v13);
    }

    __s[v13] = 0;
    v14 = ICverify(__s, (a2 - v11), a3);
    v15 = strlen(__sa);
    if (v15 >= 0x40)
    {
      v16 = 64;
    }

    else
    {
      v16 = v15;
    }

    if (v15)
    {
      strncpy(__s, __sa, v16);
    }

    __s[v16] = 0;
  }

  else
  {
    v14 = ICverify(0, (a2 - v11), a3);
  }

  if (!*(v7 + 102))
  {
    goto LABEL_36;
  }

  v17 = 0;
  v18 = v11;
  v19 = *(v7 + 3520);
  while ((v19[v17] & 0x10) == 0)
  {
    if (*(v7 + 102) <= ++v17)
    {
      goto LABEL_36;
    }
  }

  if (v14 != 10)
  {
LABEL_36:
    *(v7 + 3480) = 0;
LABEL_37:
    result = 11;
    goto LABEL_38;
  }

  *v6 |= 8u;
  *(v7 + 18) &= 0xFFEEu;
  *v19 &= 0xFFEEu;
  *(a3 + 1328) &= ~0x10uLL;
  v20 = *(v6 + 280);
  *(v20 + 1500) = v11;
  *(v20 + 1502) = v11;
  *(v20 + 1604) = *(v7 + 18);
  *(v20 + 1596) = *(v7 + 3480);
  if (*(a3 + 8) == 6 && (*(a3 + 20) & 0x20) != 0)
  {
    *(*(v7 + 72) + v17) = 4;
    *(v7 + 102) = 1;
  }

  else
  {
    *(v20 + 1592) = *(*(v7 + 72) + v17);
  }

  if ((*(a3 + 1322) & 0x40) != 0)
  {
    v23 = (*(v6 + 280) + 1607);
    v24 = strlen((a3 + 3090));
    if (v24 >= 0x40)
    {
      v25 = 64;
    }

    else
    {
      v25 = v24;
    }

    if (v24)
    {
      strncpy(v23, (a3 + 3090), v25);
    }

    v23[v25] = 0;
  }

  if (*(a3 + 1308))
  {
    v26 = (v7 + 3480);
    v33[0] = 0;
    if (*(v7 + 3480))
    {
      v33[0] = 0;
      v27 = 0;
      v28 = v11;
      do
      {
        if ((*(v26 + (v27 >> 5)) >> ~v27))
        {
          *(v33 + (v28 >> 5)) |= 1 << ~v28;
        }

        ++v27;
        ++v28;
      }

      while (a2 > v27);
      *v26 = v33[0];
    }

    if (*(a3 + 3156))
    {
      v29 = (a3 + 3156);
      v33[0] = 0;
      v30 = 0;
      do
      {
        if ((*(v29 + (v30 >> 5)) >> ~v30))
        {
          *(v33 + (v11 >> 5)) |= 1 << ~v11;
        }

        ++v30;
        ++v11;
      }

      while (a2 > v30);
      *v29 = v33[0];
    }
  }

  if (*(a3 + 8) != 6 || (*(a3 + 20) & 0x10) != 0)
  {
    result = ICcmpalt(v18, &v31, 1, 1, a3);
  }

  else
  {
    result = 10;
  }

LABEL_38:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ICcmpprm(uint64_t a1, int a2, int a3, unsigned __int16 a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 3184);
  v48 = *(*(v7 + 248) + 56);
  v8 = *(v7 + 280);
  v9 = *(v7 + 264);
  v47 = *(v9 + 88);
  v46 = v9;
  v45 = (v9 + 92);
  v49 = *(v9 + 92);
  v10 = a1 + 1547;
  v11 = (a1 + 1547 + a3 + a2);
  v12 = *v11;
  v13 = *(v11 - 1);
  if (v12 == 45)
  {
    v14 = a3 + 1;
  }

  else
  {
    v14 = a3;
  }

  v15 = v14 + a2;
  result = ICcmprmc(a1, (v14 + a2), (*(a1 + 1612) - 1));
  if (result != 2)
  {
    if (v12 != 45 || result != 10)
    {
      goto LABEL_35;
    }

    v21 = *(a1 + 8);
    if ((!*(a1 + 8) || ((1 << (v21 - 1)) & 0x1240) != 0) && (v22 = a2 + (v14 - 1), (*(v48 + 4 * *(v22 + v10 - 1)) & 0x10000000) != 0) && (*(v48 + 4 * *(v10 + v22 + 1)) & 0x10000000) != 0 || v21 == 6 && v47 == 2 && (v23 = a2 + v10, *(v23 - 1) == 223) && *(v23 + 1) == 115 && (*(a1 + 20) & 0x80) != 0)
    {
      result = 10;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (*(a1 + 8) == 11)
  {
    *(v8 + 1604) &= ~0x40u;
  }

  result = 10;
  if (v12 != 45 && v13 != 45)
  {
    if (v14 | a4)
    {
      v17 = (*(a1 + 4 * (v15 >> 5) + 1672) & (1 << ~(a2 + v14))) == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      *(v8 + 1502) = a2 + v14;
      v18 = *(a1 + 1612);
      __strncpy_chk();
      __s[*(a1 + 1612)] = 0;
      if ((*(v46 + 3492) & 0x40) != 0 && ReplaceSharf(__s, a1))
      {
        v19 = *(v8 + 1502) + 1;
      }

      else
      {
        v19 = *(v8 + 1502);
      }

      __strcpy_chk();
      SLrecap(v51, *(a1 + 1612), v47, &v49, v47, v48);
      v24 = SLcap(v51, *(v8 + 1502), *(a1 + 1612), &v49, v48);
      if (v24 >= 2 && (v24 != 3 || *(a1 + 8) != 6))
      {
        *&__s[v19] = 45;
        v26 = *(v8 + 1502);
        __strcat_chk();
        __s[*(a1 + 1612) + 2] = 0;
        if ((*(v46 + 3492) & 0x40) != 0)
        {
          ReplaceSharf(__s, a1);
        }

        v50 = 0;
        *(a1 + 1328) |= 0x200uLL;
        __strcpy_chk();
        ++*(v8 + 1502);
        ++*(a1 + 1612);
        v27 = strlen(__s);
        SFadd(__s, v27, (v46 + 40), (v46 + 44), *(v46 + 42), *(v46 + 56), *(v46 + 48), *(v46 + 64));
        *v7 |= 4u;
        v28 = *(v46 + 102);
        v29 = v19;
        if (v28 >= 1)
        {
          v30 = 0;
          v31 = *(v46 + 72);
          do
          {
            if (*(v31 + v30) >= 2u)
            {
              v50 = 0;
              v32 = *(v46 + 80);
              v33 = v32 + 8 * v30;
              if (v19 >= 1)
              {
                LOWORD(v34) = 0;
                do
                {
                  v35 = 1 << ~v34;
                  if ((*(v33 + 4 * (v34 >> 5)) & v35) != 0)
                  {
                    *&v51[4 * (v34 >> 5) - 2] |= v35;
                  }

                  v34 = (v34 + 1);
                }

                while (v34 < v19);
              }

              v36 = *(a1 + 1612);
              if (v36 > v19)
              {
                v37 = v19;
                do
                {
                  v38 = ~v37;
                  v39 = *(v33 + 4 * (v37++ >> 5));
                  if ((v39 >> v38))
                  {
                    *&v51[4 * (v37 >> 5) - 2] |= 1 << ~v37;
                  }
                }

                while (v36 != v37);
              }

              *(v32 + 8 * v30) = v50;
            }

            ++v30;
          }

          while (v30 != v28);
        }

        v50 = 0;
        if (v19 >= 1)
        {
          LOWORD(v40) = 0;
          do
          {
            v41 = 1 << ~v40;
            if ((*(v45 + (v40 >> 5)) & v41) != 0)
            {
              *&v51[4 * (v40 >> 5) - 2] |= v41;
            }

            v40 = (v40 + 1);
          }

          while (v40 < v19);
        }

        v42 = *(a1 + 1612);
        if (v42 > v19)
        {
          do
          {
            v43 = ~v29;
            v44 = *(v45 + (v29++ >> 5));
            if ((v44 >> v43))
            {
              *&v51[4 * (v29 >> 5) - 2] |= 1 << ~v29;
            }
          }

          while (v42 != v29);
        }

        *v45 = v50;
        result = 2;
        goto LABEL_35;
      }
    }

LABEL_34:
    result = 11;
  }

LABEL_35:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}