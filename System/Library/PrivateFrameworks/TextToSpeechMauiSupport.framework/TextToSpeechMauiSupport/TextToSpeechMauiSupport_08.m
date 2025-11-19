uint64_t GetInternalTagIndex(uint64_t a1, const char *a2, unsigned __int8 a3)
{
  v5 = **(a1 + 2464);
  if (v5)
  {
    v7 = cstdlib_strcmp(v5, a2);
    v8 = *(a1 + 2464);
    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v10 = ++v9;
        v11 = *(v8 + 8 * v9);
        if (!v11)
        {
          break;
        }

        v12 = cstdlib_strcmp(v11, a2);
        v8 = *(a1 + 2464);
        if (!v12)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
LABEL_8:
      if (*(v8 + 8 * v10))
      {
        return v9;
      }
    }
  }

  return a3;
}

size_t HandleInternalTag(uint64_t a1, uint64_t a2, __int16 *a3, int a4, unsigned __int8 a5, unsigned __int8 *a6, char *a7)
{
  v11 = 0;
  v12 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v13 = *a3;
  v14 = a4;
  do
  {
    v15 = v14 + 1;
    if (v15 >= v13)
    {
      break;
    }

    v16 = *(*(a2 + 16) + v15);
    if (v16 == 92)
    {
      break;
    }

    __s1[v11] = v16;
    ++v14;
    ++v11;
  }

  while (v11 != 10);
  __s1[v11] = 0;
  if (__s1[0] == 47)
  {
    *a6 = a5;
    *a7 = 2;
  }

  else if ((*(a1 + 3092) & 0x80000000) != 0)
  {
    if (cstdlib_strcmp(__s1, "TM"))
    {
      if (cstdlib_strcmp(__s1, "TQ"))
      {
        v17 = 2;
        if (cstdlib_strcmp(__s1, "TS"))
        {
          if (cstdlib_strcmp(__s1, "TW"))
          {
            v17 = 2;
          }

          else
          {
            v17 = 3;
          }
        }
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
    }

    *a7 = v17;
  }

  else
  {
    *a6 = GetInternalTagIndex(a1, __s1, a5);
  }

  if (!*(a2 + 24))
  {
    goto LABEL_25;
  }

    ;
  }

  if (*(a2 + 24) && (v19 = *a3, v19 - cstdlib_strlen(__s1) - 2 == v12))
  {
    *(*(a2 + 24) + a4 - 1) += *(*(a2 + 24) + a4);
  }

  else
  {
LABEL_25:
    v20 = *a3;
    if (v20 - cstdlib_strlen(__s1) - 2 > v12)
    {
      v21 = v12;
      do
      {
        v22 = *(a2 + 16);
        v23 = v21 + 2;
        v24 = v12;
        *(v22 + v12) = *(v22 + cstdlib_strlen(__s1) + v23);
        v25 = *(a2 + 24);
        if (v25)
        {
          v26 = *(v25 + v23 + cstdlib_strlen(__s1));
          v27 = *(a2 + 24);
          if (v24 == a4)
          {
            v26 += *(v27 + v24);
          }

          *(v27 + v24) = v26;
        }

        LOWORD(v12) = v24 + 1;
        v21 = (v24 + 1);
        v28 = *a3;
      }

      while (v28 - cstdlib_strlen(__s1) - 2 > v12);
    }
  }

  result = cstdlib_strlen(__s1);
  *a3 = *a3 - result - 2;
  return result;
}

unsigned __int16 *HandleRecordedPrompts(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(a2 + 10);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a2 + 3608);
      v6 = v4;
      if (v5)
      {
        v7 = v4;
        do
        {
          v6 = v7;
          v8 = *(v5 + 4 * *(*a2 + 3578) * v7++);
        }

        while (v8 == -2);
      }

      v9 = v6;
      if (v6 != v4)
      {
        if (v6 > v4)
        {
          v10 = *(a2 + 1800);
          v11 = *(v10 + 2 * v6);
          v12 = (v10 + 2 * v4);
          v13 = v9 - v4;
          do
          {
            v14 = *v12++;
            v11 += v14;
            *(v10 + 2 * v9) = v11;
            --v13;
          }

          while (v13);
          LOWORD(v2) = *(a2 + 10);
        }

        v15 = v2 - v9;
        if (v15 >= 1)
        {
          v16 = 0;
          v17 = v4;
          v18 = v9;
          do
          {
            v19 = 0;
            v20 = v16 + v9;
            v21 = v16 + v3;
            do
            {
              v22 = *(a2 + v19 + 32);
              if (v22)
              {
                *(v22 + v21) = *(v22 + v20);
              }

              v23 = *(a2 + v19 + 1776);
              if (v23)
              {
                *(v23 + 2 * v21) = *(v23 + 2 * v20);
              }

              v19 += 8;
            }

            while (v19 != 448);
            v24 = *(a2 + 3552);
            if (v24)
            {
              *(v24 + 8 * v21) = *(v24 + 8 * v20);
            }

            v25 = *(a2 + 3560);
            if (v25)
            {
              v26 = (v25 + 9 * v20);
              v27 = *v26;
              v28 = v25 + 9 * v21;
              *(v28 + 8) = *(v26 + 8);
              *v28 = v27;
            }

            v29 = *(a2 + 3608);
            if (v29)
            {
              v30 = result[1789];
              if (result[1789])
              {
                v31 = (v29 + 4 * v17 * v30);
                v32 = (v29 + 4 * v18 * v30);
                do
                {
                  v33 = *v32++;
                  *v31++ = v33;
                  --v30;
                }

                while (v30);
              }
            }

            if (result[1483])
            {
              v34 = 0;
              do
              {
                v35 = *(*a2 + 2966);
                v36 = v34 + v18 * *(*a2 + 2966);
                v37 = v34 + v17 * *(*a2 + 2966);
                *(*(a2 + 3568) + 4 * v37) = *(*(a2 + 3568) + 4 * v36);
                *(*(a2 + 3576) + 4 * v37) = *(*(a2 + 3576) + 4 * v36);
                *(*(a2 + 3600) + v17 * v35 + v34) = *(*(a2 + 3600) + v18 * v35 + v34);
                ++v34;
              }

              while (v34 < result[1483]);
            }

            v38 = result[1680];
            if (result[1680])
            {
              v39 = *(a2 + 3584);
              v40 = *(a2 + 3592);
              v41 = 4 * *(*a2 + 3360);
              v42 = v41 * v17;
              v43 = v41 * v18;
              do
              {
                *(v39 + v42) = *(v39 + v43);
                *(v40 + v42) = *(v40 + v43);
                v39 += 4;
                v40 += 4;
                --v38;
              }

              while (v38);
            }

            v44 = v16 + 1;
            v16 = (v16 + 1);
            v15 = *(a2 + 10) - v9;
            ++v17;
            ++v18;
          }

          while (v15 > v44);
        }

        LOWORD(v2) = v4 + v15;
        *(a2 + 10) = v4 + v15;
      }

      v3 = ++v4;
    }

    while (v4 < v2);
  }

  return result;
}

uint64_t uselect_CountPrompts(uint64_t a1, int a2)
{
  v2 = (a2 - 1);
  if (a2 == 1)
  {
    return 0;
  }

  result = 0;
  v5 = (a1 + 1);
  do
  {
    if (*(v5 - 1) == 16)
    {
      if ((*v5 & 0xFE) == 0x12)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }
    }

    ++v5;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t usextract_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v14 = *a6;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 4;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v68 = 0;
  __src = 0;
  v66 = 0;
  *a7 = 0;
  v15 = (*(a3 + 272))(a4, a5, 114, 3, 0, 0);
  if ((v15 & 0x80000000) != 0 || (v15 = (*(a3 + 104))(a4, a5, 1, 0, &v74 + 2), (v15 & 0x80000000) != 0))
  {
    v17 = v15;
    goto LABEL_14;
  }

  v17 = (*(a3 + 168))(a4, a5, HIWORD(v74), 3, 1, a7, &v73);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v74), 1, &v66) & 0x80000000) != 0 || v66 != 1)
  {
    LODWORD(v23) = *(a6 + 3520);
  }

  else
  {
    v17 = (*(a3 + 176))(a4, a5, HIWORD(v74), 1, &__src, &v73);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    v18 = heap_Alloc(*(a1 + 8), 32 * v73);
    *(a6 + 3512) = v18;
    if (!v18)
    {
      goto LABEL_46;
    }

    cstdlib_memcpy(v18, __src, 32 * v73);
    LODWORD(v23) = v73;
    *(a6 + 3520) = v73;
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      while (marker_copyParts(*(a6 + 3512) + v24, *(a1 + 8), *(a6 + 3512) + v24))
      {
        ++v25;
        v23 = *(a6 + 3520);
        v24 += 32;
        if (v25 >= v23)
        {
          goto LABEL_18;
        }
      }

      if (v25)
      {
        v38 = 0;
        do
        {
          marker_freeParts((*(a6 + 3512) + 32 * v38++), *(a1 + 8));
        }

        while (v25 > v38);
      }

      heap_Free(*(a1 + 8), *(a6 + 3512));
      *(a6 + 3512) = 0;
LABEL_46:
      log_OutPublic(*(a1 + 32), a2, 19000, 0, v19, v20, v21, v22, v62);
      LOWORD(v26) = 0;
      v17 = 2229280778;
      goto LABEL_15;
    }
  }

LABEL_18:
  v28 = v23 ? *(*(a6 + 3512) + 12) : 0;
  if (((*(a3 + 184))(a4, a5, HIWORD(v74), 0, &v66) & 0x80000000) != 0 || v66 != 1)
  {
    if (((*(a3 + 184))(a4, a5, HIWORD(v74), 4, &v66) & 0x80000000) != 0 || v66 != 1)
    {
      goto LABEL_30;
    }

    v29 = (*(a3 + 176))(a4, a5, HIWORD(v74), 4, &v75, &v73);
  }

  else
  {
    v29 = (*(a3 + 176))(a4, a5, HIWORD(v74), 0, &v75, &v73);
  }

  v17 = v29;
  if ((v29 & 0x80000000) != 0)
  {
LABEL_14:
    LOWORD(v26) = 0;
    goto LABEL_15;
  }

  if (v73 <= 1u)
  {
    v75 = 0;
    goto LABEL_36;
  }

LABEL_30:
  if (!v75)
  {
LABEL_36:
    v34 = *(a6 + 3520);
    if (v34)
    {
      v35 = *(a6 + 3512);
      while (1)
      {
        v36 = *v35;
        v35 += 8;
        v37 = v36 - 8;
        if (v36 - 8) < 0x16 && ((0x270F01u >> v37))
        {
          break;
        }

        if (!--v34)
        {
          goto LABEL_123;
        }
      }

      LOWORD(v34) = 2;
    }

    goto LABEL_123;
  }

  v30 = *(a6 + 3520);
  if (v30)
  {
    v31 = 0;
    v32 = (*(a6 + 3512) + 12);
    while (1)
    {
      v33 = *v32;
      v32 += 8;
      if (v33 != v28)
      {
        break;
      }

      if (v30 == ++v31)
      {
        goto LABEL_48;
      }
    }

    LODWORD(v30) = v31;
  }

LABEL_48:
  HIDWORD(v70) = v30;
  v39 = (*(a3 + 152))(a4, a5, 2, HIWORD(v74), &v66);
  v40 = 3;
  if (v39 < 0 || !v66)
  {
LABEL_122:
    LOWORD(v34) = v40 + *(a6 + 14);
LABEL_123:
    *(a6 + 10) = v34;
    *(a6 + 3524) = *(v14 + 3578) * v34;
    return v17;
  }

  v17 = (*(a3 + 104))(a4, a5, 2, HIWORD(v74), &v74);
  if ((v17 & 0x80000000) != 0)
  {
    LOWORD(v26) = 1;
    goto LABEL_15;
  }

  v41 = v74;
  if (!v74)
  {
    v40 = 3;
    goto LABEL_122;
  }

  v64 = 0;
  v26 = 1;
  while (1)
  {
    v42 = (*(a3 + 168))(a4, a5, v41, 0, 1, &v72, &v73);
    if ((v42 & 0x80000000) != 0)
    {
      break;
    }

    if ((v72 - 9) >= 6 && v72 != 4)
    {
      goto LABEL_106;
    }

    v63 = v72;
    v44 = v64;
    if (v72 != 12)
    {
      v44 = 0;
    }

    v65 = v44;
    v42 = usextract_readFromPos(a3, a4, a5, v74, &v69);
    if ((v42 & 0x80000000) != 0)
    {
      break;
    }

    v73 = 0;
    if (((*(a3 + 184))(a4, a5, v74, 3, &v66) & 0x80000000) == 0 && v66 == 1)
    {
      v42 = (*(a3 + 176))(a4, a5, v74, 3, &v71, &v73);
      if ((v42 & 0x80000000) != 0)
      {
        break;
      }
    }

    if (v73 <= 1u)
    {
      v45 = v72;
      if (v72 != 14)
      {
        v71 = 0;
        goto LABEL_92;
      }

      v46 = "M";
      v71 = "M";
LABEL_69:
      if (*v46)
      {
        v47 = v69;
        v48 = *(a6 + 3520);
        v49 = v26;
        v50 = v48 >= v30;
        v51 = v48 - v30;
        if (v51 != 0 && v50)
        {
          v52 = (*(a6 + 3512) + 32 * v30);
          while (v52[3] - v28 <= v69)
          {
            if (*v52 == 26)
            {
              v53 = v65;
              if (v63 == 14)
              {
                v53 = v64;
              }

              if (!v53)
              {
                v55 = v26 > 1;
                if (v72 == 14 || v70 != 0 || v26 < 2)
                {
                  v54 = v72 != 14;
                }

                else
                {
                  usextract_assureMinimalPause(a6, v30, v28, v69, &v70);
                  v49 = v26;
                  v55 = 1;
                  v68 = 1;
                  v54 = 1;
                }

                goto LABEL_82;
              }

              break;
            }

            v52 += 8;
            if (!--v51)
            {
              break;
            }
          }
        }

        v54 = 0;
        v55 = v26 > 1;
LABEL_82:
        if (v70)
        {
          v56 = !v55;
        }

        else
        {
          v56 = 1;
        }

        if (!v56)
        {
          usextract_insertPause(0, a6, v70, v68, v49, v28, v47, &v70 + 1);
          ++v26;
        }

        if (v54 && (cstdlib_strstr((*a6 + 152), "bet4") || cstdlib_strstr((*a6 + 152), "bet5")))
        {
          usextract_insertPause(0, a6, 5u, 1, v26++, v28, v69, &v70 + 1);
        }
      }

      goto LABEL_91;
    }

    v46 = v71;
    if (v71)
    {
      goto LABEL_69;
    }

LABEL_91:
    v45 = v72;
LABEL_92:
    if (v45 == 13)
    {
      goto LABEL_95;
    }

    if (v45 == 14)
    {
      v65 = 1;
LABEL_95:
      ++*(a6 + 14);
    }

    v42 = usextract_readSilDur(a3, a4, a5, v74, &v70, &v68);
    if ((v42 & 0x80000000) != 0)
    {
      break;
    }

    v57 = *(a6 + 3520);
    LODWORD(v30) = HIDWORD(v70);
    if (HIDWORD(v70) < v57)
    {
      v58 = (*(a6 + 3512) + 32 * HIDWORD(v70) + 12);
      while (1)
      {
        v59 = *v58;
        v58 += 8;
        if (v59 - v28 > v69)
        {
          break;
        }

        LODWORD(v30) = v30 + 1;
        if (v57 == v30)
        {
          LODWORD(v30) = *(a6 + 3520);
          break;
        }
      }
    }

    HIDWORD(v70) = v30;
    if (v71 && *v71)
    {
      v26 += usextract_nrOfValidPhonemes(v14, v71);
    }

    v64 = v65;
LABEL_106:
    v17 = (*(a3 + 120))(a4, a5, v74, &v74);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_15;
    }

    v41 = v74;
    if (!v74)
    {
      v40 = v26 + 2;
      goto LABEL_122;
    }
  }

  v17 = v42;
LABEL_15:
  *(a6 + 10) = v26;
  *(a6 + 3524) = *(v14 + 3578) * v26;
  usextract_ProcessEnd(a1, v16, a6);
  return v17;
}

uint64_t usextract_readFromPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v12 = 0;
  *a5 = 0;
  v10 = (*(a1 + 184))(a2, a3, a4, 1, &v12 + 2);
  result = 0;
  if ((v10 & 0x80000000) == 0 && HIWORD(v12) == 1)
  {
    return (*(a1 + 168))(a2, a3, a4, 1, 1, a5, &v12);
  }

  return result;
}

uint64_t usextract_assureMinimalPause(uint64_t result, unsigned int a2, int a3, unsigned int a4, _DWORD *a5)
{
  v5 = *(result + 3520);
  v6 = v5 - a2;
  if (v5 > a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = (*(result + 3512) + 32 * a2);
    do
    {
      if (v9[3] - a3 > a4)
      {
        break;
      }

      v11 = *v9;
      v9 += 8;
      v10 = v11;
      v12 = v11 == 8 ? v8 + 1 : v8;
      if (v10 == 26)
      {
        ++v7;
      }

      else
      {
        v8 = v12;
      }

      --v6;
    }

    while (v6);
    if (!v8)
    {
      if (v7)
      {
        *a5 = 5;
      }
    }
  }

  return result;
}

char *usextract_insertPause(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, unsigned int a7, _DWORD *a8)
{
  v16 = cstdlib_strstr((*a2 + 152), "bet4");
  v17 = cstdlib_strstr((*a2 + 152), "bet5");
  result = cstdlib_strstr((*a2 + 152), "bet6");
  if (a1 && *(a1 + 674) < a5)
  {
    v33 = result;
    cstdlib_memset((*(a2 + 104) + *(a1 + 674)), 4, (a5 - *(a1 + 674)) & ~((a5 - *(a1 + 674)) >> 31));
    result = v33;
  }

  v19 = *a8;
  v20 = *(a2 + 3520);
  v21 = v20 - v19;
  if (v20 <= v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = (*(a2 + 3512) + 32 * v19);
    do
    {
      if (v23[3] - a6 > a7)
      {
        break;
      }

      v24 = *v23;
      v23 += 8;
      if (v24 == 8)
      {
        ++v22;
      }

      --v21;
    }

    while (v21);
  }

  if (a4)
  {
    v25 = 1;
  }

  else
  {
    v25 = (v17 | result) == 0;
  }

  v26 = !v25;
  if (v16)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    v26 = 1;
  }

  if (a3 >= 0xFFFF)
  {
    v28 = -1;
  }

  else
  {
    v28 = a3;
  }

  if (v22)
  {
    v29 = *(a2 + 3512);
    do
    {
      v30 = *(v29 + 32 * v19) == 8;
      if (a1)
      {
        ++*(*(a2 + 1800) + 2 * a5);
      }

      LODWORD(v19) = v19 + 1;
      *a8 = v19;
      v22 -= v30;
    }

    while (v22);
  }

  if (a1)
  {
    ++*(a1 + 720);
    *(a1 + 716) = 0;
    *(a1 + 682) = a5;
    *(*(a2 + 32) + a5) = 35;
    if (*(a1 + 666) == a5)
    {
      *(a1 + 666) = a5 + 1;
    }

    if (*(a1 + 668) == a5)
    {
      *(a1 + 668) = a5 + 1;
    }

    v31 = *(a2 + 576);
    if (v31)
    {
      *(v31 + a5) = *(v31 + a5 - 1);
    }

    if (v26)
    {
      v32 = 0;
    }

    else
    {
      v32 = v28;
    }

    *(*(a2 + 1784) + 2 * a5) = v32;
    *(*(a2 + 112) + a5 - 1) = 3;
    *(*(a2 + 104) + a5) = 3;
    *(a1 + 12) = 3;
    *(*(a2 + 120) + a5) = *(a1 + 14);
    *(a1 + 15) = 0;
  }

  return result;
}

uint64_t usextract_readSilDur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v16 = 0;
  *a5 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  v15 = 0;
  __s1 = 0;
  v12 = 0;
  if (((*(a1 + 184))(a2, a3, a4, 8, &v16 + 2) & 0x80000000) == 0 && HIWORD(v16) == 1)
  {
    v12 = (*(a1 + 168))(a2, a3, a4, 8, 1, &v15, &v16);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    *a5 = v15;
  }

  if (a6)
  {
    if (((*(a1 + 184))(a2, a3, a4, 18, &v16 + 2) & 0x80000000) == 0 && HIWORD(v16) == 1)
    {
      v12 = (*(a1 + 176))(a2, a3, a4, 18, &__s1, &v16);
      if ((v12 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "external"))
      {
        *a6 = 1;
      }
    }
  }

  return v12;
}

uint64_t usextract_nrOfValidPhonemes(uint64_t a1, unsigned __int8 *a2)
{
  v6 = a2;
  skipUnvalidPhonemes(a1, &v6);
  v3 = v6;
  if (*v6)
  {
    v4 = 0;
    do
    {
      ++v4;
      v6 = v3 + 1;
      skipUnvalidPhonemes(a1, &v6);
      v3 = v6;
    }

    while (*v6);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t usextract_ProcessEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 3512);
  if (v3)
  {
    if (*(a3 + 3520))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        marker_freeParts((*(a3 + 3512) + v6), *(a1 + 8));
        ++v7;
        v6 += 32;
      }

      while (v7 < *(a3 + 3520));
      v3 = *(a3 + 3512);
    }

    heap_Free(*(a1 + 8), v3);
    *(a3 + 3512) = 0;
  }

  return 0;
}

uint64_t usextract_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  v11 = 0;
  v391 = *MEMORY[0x277D85DE8];
  v12 = *a6;
  v367 = 0;
  v366 = 0;
  v365 = 4;
  v363 = 0;
  v364 = 0;
  v362 = 0;
  v361 = 0;
  v360 = 0;
  v13 = *(a6 + 10);
  v14 = v13 & ~(v13 >> 31);
  v359 = 0u;
  memset(__s1, 0, sizeof(__s1));
  *v357 = 0u;
  memset(v378, 0, 448);
  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  v350 = *(v12 + 2744);
  v356 = 0;
  LODWORD(v357[0]) = 0;
  __s1[3] = 0;
  *&v359 = 0x100000000;
  WORD4(v359) = -1;
  __s2 = 0;
  v355 = 0;
  v15 = a6 + 16;
  v357[1] = 0;
  __s1[0] = 0;
  v16 = &word_26ECCE704;
  v17 = 9;
  v18 = 33;
  LOWORD(__s1[1]) = 0;
  do
  {
    *(&v374 + v17 + 1) = *(v16 - 2);
    if (*(v15 + 8 * v17))
    {
      *(&v378[9] + v11++ + 6) = v17;
    }

    v19 = *v16;
    v16 += 2;
    v17 = v19;
    --v18;
  }

  while (v18);
  *(&v378[9] + v11 + 6) = 218;
  BYTE6(v376) = 0;
  v20 = *(v12 + 3336);
  if (v20)
  {
    if (*v20)
    {
      v21 = 0;
      v22 = v20 + 1;
        ;
      }

      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    v379 = heap_Alloc(*(a1 + 8), v24);
    if (!v379)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v379 = 0;
  }

  LOBYTE(v374) = 0;
  v389 = 0;
  v390 = 0;
  v385 = 0;
  v386 = 0;
  v387 = 0;
  v388 = -1;
  v380 = xmmword_26ECCE6E0;
  __len = 0xFFFF;
  if (v13 <= 1)
  {
    log_OutPublic(*(v10 + 32), a2, 19010, 0, a5, a6, a7, a8, v326);
    v25 = 0;
    v26 = 0;
    v27 = 2229280785;
    goto LABEL_561;
  }

  if (*(a6 + 14) >= 1)
  {
    v28 = heap_Alloc(*(v10 + 8), 500);
    v357[1] = v28;
    if (v28)
    {
      *v28 = 0;
      v29 = heap_Alloc(*(v10 + 8), 500);
      __s1[0] = v29;
      if (v29)
      {
        *v29 = 0;
        goto LABEL_19;
      }
    }

LABEL_23:
    v27 = 2229280778;
    log_OutPublic(*(v10 + 32), a2, 19000, 0, a5, a6, a7, a8, v326);
    v25 = 0;
    v26 = 0;
    goto LABEL_561;
  }

LABEL_19:
  if (*(a6 + 456))
  {
    v26 = heap_Calloc(*(v10 + 8), 1, (v14 + 3));
    if (!v26 || (v340 = v14 + 2, (v343 = heap_Alloc(*(v10 + 8), (v14 + 2))) == 0))
    {
      v27 = 2229280778;
      log_OutPublic(*(v10 + 32), a2, 19000, 0, v30, v31, v32, v33, v326);
      v25 = 0;
      goto LABEL_561;
    }
  }

  else
  {
    v343 = 0;
    v340 = 0;
    v26 = 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(v10 + 32)))
  {
    log_OutTraceTuningData(*(v10 + 32), 301, "%s%s %s%.*s %s%s", v34, v35, v36, v37, v38, "BEG");
  }

  v342 = v12;
  SentType = usextract_GetSentType(v10, a2, v12, "\\TS\", 0, 0, &v361);
  LOBYTE(v374) = SentType;
  BYTE14(v375) = SentType;
  cstdlib_memset(*(a6 + 184), 4, v14);
  cstdlib_memset(*(a6 + 96), 3, v14);
  cstdlib_memset(*(a6 + 248), SentType, v14);
  if (*(v342 + 2604) == 2)
  {
    v40 = 87;
  }

  else
  {
    v40 = 88;
  }

  cstdlib_memset(*(a6 + 48), v40, v14);
  v41 = *(a6 + 288);
  if (v41)
  {
    cstdlib_memset(v41, 1, v14);
  }

  v349 = a3;
  v42 = *(a6 + 312);
  if (v42)
  {
    cstdlib_memset(v42, 1, v14);
  }

  v43 = a5;
  if (!*(v342 + 2516))
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = *a6;
    LODWORD(v48) = *(*a6 + 2966);
    if (v14 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v13 & ~(v13 >> 31);
    }

    do
    {
      if (v48)
      {
        v50 = 0;
        v51 = 0;
        do
        {
          v52 = *(v47 + 2968) + v50;
          v53 = *(v52 + 4);
          v54 = v45 * *(*a6 + 2966);
          *(*(a6 + 3568) + 4 * (v51 + v54)) = v53;
          *(*(a6 + 3576) + 4 * (v51 + v54)) = v53;
          *(*(a6 + 3600) + v54 + v51++) = *(v52 + 10);
          v48 = *(v47 + 2966);
          v50 += 32;
        }

        while (v51 < v48);
      }

      v55 = *(v47 + 3360);
      if (*(v47 + 3360))
      {
        v56 = (*(v47 + 3368) + 4);
        v57 = v44 * *(*a6 + 3360);
        v58 = (*(a6 + 3592) + v57);
        v59 = (*(a6 + 3584) + v57);
        do
        {
          v60 = *v56;
          v56 += 3;
          *v59++ = v60;
          *v58++ = v60;
          --v55;
        }

        while (v55);
      }

      ++v46;
      ++v45;
      v44 += 4;
    }

    while (v46 != v49);
  }

  **(a6 + 104) = 1;
  *(*(a6 + 104) + 1) = 5;
  **(a6 + 120) = 1;
  *(*(a6 + 120) + 1) = 1;
  v61 = a4;
  v62 = (*(v349 + 104))(a4, a5, 1, 0, &v367 + 2);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_559;
  }

  v63 = *(a6 + 3520) ? *(*(a6 + 3512) + 12) : 0;
  v64 = cstdlib_strstr((*a6 + 152), "bet4");
  v65 = *(a6 + 3520);
  v341 = v63;
  if (v65)
  {
    v66 = *(a6 + 3512);
    if (*(v66 + 12) == v63)
    {
      v67 = 0;
      v68 = 0;
      v69 = *(a6 + 1800);
      v70 = *v69;
      v71 = (v66 + 24);
      while (1)
      {
        if (*(v71 - 6) == 8)
        {
          v67 += *v71;
        }

        *v69 = ++v70;
        if (v65 - 1 == v68)
        {
          break;
        }

        ++v68;
        v72 = v71[5];
        v71 += 8;
        if (v72 != v63)
        {
          goto LABEL_60;
        }
      }

      LODWORD(v68) = v65;
    }

    else
    {
      LODWORD(v68) = 0;
      v67 = 0;
    }

LABEL_60:
    HIDWORD(v363) = v68;
  }

  else
  {
    v67 = 0;
  }

  **(a6 + 32) = 35;
  if (v67 >= 0xFFFF)
  {
    LOWORD(v67) = -1;
  }

  if (v64)
  {
    LOWORD(v67) = 0;
  }

  **(a6 + 1784) = v67;
  LODWORD(v363) = 0;
  v373 = 0;
  v371 = 0;
  v370 = 4;
  v369 = 0;
  v368 = 0;
  __s = 0;
  v62 = (*(v349 + 104))(a4, a5, 1, 0, &v373 + 2);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_559;
  }

  if (((*(v349 + 152))(a4, a5, 2, HIWORD(v373), &v369) & 0x80000000) != 0 || !v369)
  {
    goto LABEL_116;
  }

  v62 = (*(v349 + 104))(a4, a5, 2, HIWORD(v373), &v373);
  if ((v62 & 0x80000000) != 0)
  {
    goto LABEL_559;
  }

  v73 = v373;
  if (!v373)
  {
    goto LABEL_116;
  }

  v330 = v26;
  v332 = v10;
  v346 = 0;
  LOWORD(v26) = 0;
  do
  {
    if (!v26)
    {
      v43 = a5;
      v83 = a4;
LABEL_85:
      v80 = v349;
      goto LABEL_90;
    }

    v74 = v26;
    v43 = a5;
    v75 = (*(v349 + 168))(a4, a5, v73, 0, 1, &v370, &v371 + 2);
    if ((v75 & 0x80000000) != 0)
    {
      v27 = v75;
      v61 = a4;
LABEL_109:
      v10 = v332;
      goto LABEL_113;
    }

    __s = 0;
    if (((*(v349 + 184))(a4, a5, v26, 14, &v369) & 0x80000000) == 0 && v369 == 1)
    {
      v76 = (*(v349 + 176))(a4, a5, v26, 14, &__s, &v371 + 2);
      if ((v76 & 0x80000000) != 0)
      {
        v27 = v76;
        v61 = a4;
        goto LABEL_109;
      }
    }

    if ((v370 - 9) < 6)
    {
      goto LABEL_77;
    }

    if (v370 != 15)
    {
      if (v370 == 4)
      {
LABEL_77:
        if (!__s)
        {
          goto LABEL_88;
        }

        v368 = __s;
        do
        {
          v77 = __s;
          v78 = cstdlib_strlen("BNDSHAPE");
          if (cstdlib_strncmp(v77, "BNDSHAPE", v78))
          {
            v79 = hlp_NLUStrNext(v368);
          }

          else
          {
            v79 = hlp_NLUStrStrip(v368);
          }

          v368 = v79;
        }

        while (v79);
        hlp_NLUStrJoin(__s, "");
        v80 = v349;
        v81 = *(v349 + 160);
        v82 = cstdlib_strlen(__s);
        v43 = a5;
        v83 = a4;
        v81(a4, a5, v74, 14, (v82 + 1), __s, &v371);
      }

      else
      {
LABEL_88:
        v83 = a4;
        v80 = v349;
      }

LABEL_89:
      v10 = v332;
      goto LABEL_90;
    }

    if (!__s)
    {
      v80 = v349;
      v83 = a4;
      (*(v349 + 160))(a4, a5, v26, 14, 12, "BNDSHAPE:L%", &v371);
      goto LABEL_89;
    }

    v10 = v332;
    if (hlp_NLUStrFind(__s, "BNDSHAPE", &v368, &v371 + 1))
    {
      v83 = a4;
      goto LABEL_85;
    }

    v84 = *(v332 + 8);
    v85 = cstdlib_strlen(__s);
    v86 = heap_Realloc(v84, v346, v85 + 13);
    v368 = v86;
    if (!v86)
    {
      goto LABEL_111;
    }

    v91 = v86;
    cstdlib_strcpy(v86, __s);
    hlp_NLUStrJoin(v91, "BNDSHAPE:L%");
    v80 = v349;
    v344 = v91;
    v347 = *(v349 + 160);
    v92 = cstdlib_strlen(v91);
    v83 = a4;
    v347(a4, a5, v26, 14, (v92 + 1), v91, &v371);
    v43 = a5;
    v346 = v344;
LABEL_90:
    v26 = v373;
    v27 = (*(v80 + 120))(v83, v43, v373, &v373);
    if ((v27 & 0x80000000) != 0)
    {
      goto LABEL_112;
    }

    v73 = v373;
  }

  while (v373);
  if (!v26)
  {
    goto LABEL_112;
  }

  __s = 0;
  v61 = a4;
  if (((*(v349 + 184))(a4, v43, v26, 14, &v369) & 0x80000000) != 0 || v369 != 1 || (v27 = (*(v349 + 176))(a4, v43, v26, 14, &__s, &v371 + 2), (v27 & 0x80000000) == 0))
  {
    if (__s)
    {
      if (hlp_NLUStrFind(__s, "BNDSHAPE", &v368, &v371 + 1))
      {
        goto LABEL_113;
      }

      v93 = *(v10 + 8);
      v94 = cstdlib_strlen(__s);
      v95 = heap_Realloc(v93, v346, v94 + 13);
      v368 = v95;
      if (v95)
      {
        v96 = v95;
        cstdlib_strcpy(v95, __s);
        hlp_NLUStrJoin(v96, "BNDSHAPE:L%");
        v97 = *(v349 + 160);
        v98 = cstdlib_strlen(v96);
        v97(a4, a5, v26, 14, (v98 + 1), v96, &v371);
        v43 = a5;
        v99 = v96;
        v61 = a4;
        v26 = v330;
        goto LABEL_114;
      }

LABEL_111:
      v27 = 2229280778;
      log_OutPublic(*(v10 + 32), a2, 19000, 0, v87, v88, v89, v90, v326);
      v43 = a5;
LABEL_112:
      v61 = a4;
    }

    else
    {
      (*(v349 + 160))(a4, v43, v26, 14, 12, "BNDSHAPE:L%", &v371);
    }
  }

LABEL_113:
  v26 = v330;
  v99 = v346;
  if (!v346)
  {
    goto LABEL_115;
  }

LABEL_114:
  heap_Free(*(v10 + 8), v99);
LABEL_115:
  if ((v27 & 0x80000000) != 0)
  {
    goto LABEL_560;
  }

LABEL_116:
  v100 = (*(v349 + 152))(v61, v43, 2, HIWORD(v367), &v361 + 2);
  v104 = 0;
  v105 = 1;
  if (v100 < 0 || !HIWORD(v361))
  {
LABEL_578:
    v281 = a2;
    if (HIDWORD(v356))
    {
      usextract_finishPrompt(&__s2, v10, a2, a6, v105, v101, v102, v103);
    }

    if (*(a6 + 576))
    {
      LOWORD(v282) = v105 - 1;
      do
      {
        *(*(a6 + 576) + v282) = 5;
        v282 = (v282 - 1);
      }

      while (v282 >= 1 && *(*(a6 + 32) + v282) == 35);
    }

    v283 = WORD3(v380);
    v284 = SWORD4(v380);
    v285 = SWORD4(v380);
    if (SWORD4(v380) < v105)
    {
      cstdlib_memset((*(a6 + 120) + SWORD4(v380)), 3, (v105 - SWORD4(v380)) & ~((v105 - SWORD4(v380)) >> 31));
      if (*(a6 + 592))
      {
        v286 = v285;
        do
        {
          *(*(a6 + 592) + v286++) = 5;
        }

        while (v105 != v286);
      }
    }

    v287 = v283 != v285;
    if (v284 < v105 && (v285 & 0x80000000) == 0 && *(a6 + 544))
    {
      v288 = v285;
      do
      {
        v289 = *(a6 + 544);
        if (*(v289 + v288) > v287)
        {
          *(v289 + v288) = v287;
        }

        ++v288;
      }

      while (v105 != v288);
    }

    if (v285 < v105 && (v285 & 0x80000000) == 0 && *(a6 + 1440))
    {
      do
      {
        v290 = *(a6 + 1440);
        if (*(v290 + v285) > v287)
        {
          *(v290 + v285) = v287;
        }

        ++v285;
      }

      while (v105 != v285);
    }

    v291 = SWORD5(v380);
    if (SWORD5(v380) < v105)
    {
      v292 = WORD3(v380);
      v293 = SWORD5(v380);
      cstdlib_memset((*(a6 + 104) + SWORD5(v380)), 5, (v105 - SWORD5(v380)) & ~((v105 - SWORD5(v380)) >> 31));
      if (*(a6 + 608))
      {
        v294 = v291;
        do
        {
          *(*(a6 + 608) + v294++) = 5;
        }

        while (v105 != v294);
      }

      v295 = v292 != v291;
      if (*(a6 + 560))
      {
        v296 = v291;
        do
        {
          *(*(a6 + 560) + v296++) = v295;
        }

        while (v105 != v296);
      }

      v281 = a2;
      if (*(a6 + 1496))
      {
        do
        {
          *(*(a6 + 1496) + v293++) = v295;
        }

        while (v105 != v293);
      }
    }

    usextract_updateLastStrAcc(a6, v105, SWORD6(v380), 1u);
    usextract_updateLastStrAccShp(a6, v105, SHIWORD(v380), 6u, 1u);
    if (SHIWORD(__len) >= 1)
    {
      cstdlib_memset(*(a6 + 136), 1, SHIWORD(__len));
    }

    v297 = cstdlib_strstr((*a6 + 152), "bet4");
    v298 = cstdlib_strstr((*a6 + 152), "bet5");
    v303 = HIDWORD(v363);
    v304 = *(a6 + 3520);
    v25 = v343;
    if (v297 | v298 && HIDWORD(v363) < v304)
    {
      v305 = HIDWORD(v363) + 1;
      v306 = (*(a6 + 3512) + 32 * HIDWORD(v363));
      do
      {
        v308 = *v306;
        v306 += 8;
        v307 = v308;
      }

      while (v308 != 26 && v305++ < v304);
      if (v307 == 26)
      {
        *(*(a6 + 32) + v105) = 35;
        if (*(a6 + 576))
        {
          LOWORD(v310) = v105;
          do
          {
            *(*(a6 + 576) + v310) = 5;
            v310 = (v310 - 1);
          }

          while (v310 >= 1 && *(*(a6 + 32) + v310) == 35);
        }

        *(*(a6 + 104) + v105) = 5;
        *(*(a6 + 120) + v105) = 3;
        *(*(a6 + 248) + v105) = *(*(a6 + 248) + v105 - 1);
        ++v105;
        LODWORD(v304) = *(a6 + 3520);
      }
    }

    if (v303 >= v304)
    {
      v311 = 0;
      v313 = v105;
    }

    else
    {
      v311 = 0;
      v312 = *(a6 + 1800);
      v313 = v105;
      v314 = *(v312 + 2 * v105);
      v315 = v304 - v303;
      v316 = (*(a6 + 3512) + 32 * v303);
      do
      {
        if (*v316 == 8)
        {
          v311 += v316[6];
        }

        *(v312 + 2 * v105) = ++v314;
        v316 += 8;
        --v315;
      }

      while (v315);
      HIDWORD(v363) = v304;
    }

    *(*(a6 + 32) + v313) = 35;
    if (*(a6 + 576))
    {
      LOWORD(v317) = v105;
      do
      {
        *(*(a6 + 576) + v317) = 5;
        v317 = (v317 - 1);
      }

      while (v317 >= 1 && *(*(a6 + 32) + v317) == 35);
    }

    if (v311 >= 0xFFFF)
    {
      v318 = -1;
    }

    else
    {
      v318 = v311;
    }

    if (v297)
    {
      v318 = 0;
    }

    *(*(a6 + 1784) + 2 * v313) = v318;
    *(*(a6 + 104) + v313) = 5;
    *(*(a6 + 120) + v313) = 3;
    *(*(a6 + 248) + v313) = *(*(a6 + 248) + v313 - 1);
    v319 = (v105 + 1);
    v320 = *(a6 + 456);
    if (v320 && *(*(a6 + 32) + (v105 + 1)) == *(v26 + v104))
    {
      *(v320 + (v105 + 1)) = v343[v104];
    }

    if (*(a6 + 10) >= v319)
    {
      *(a6 + 10) = v319;
      usextract_setUnknownOnPauses(a6);
      if ((*(v342 + 3104) & 0x80000000) == 0 && (*(v342 + 3208) & 0x80000000) == 0)
      {
        usextract_setNextDifferentiator(v342, a6);
      }

      if ((*(v342 + 3092) & 0x80000000) != 0)
      {
        v321 = BYTE14(v375);
        if (BYTE14(v375) == 2 && WORD5(v380) == 1 && WORD4(v380) == 1)
        {
          v321 = 0;
          BYTE14(v375) = 0;
        }

        cstdlib_memset(*(a6 + 248), v321, v319 & ~(v319 >> 31));
      }

      usextract_setPrePostSylBnd(a6);
      if (!*(v342 + 2516) && *(v342 + 2604) != 2)
      {
        v322 = *(a6 + 10);
        if (v322 >= 1)
        {
          v323 = 0;
          do
          {
            v324 = *(*(a6 + 32) + v323);
            if (v324 != 35)
            {
              *(*(a6 + 48) + v323) = *(v342 + 1373 + *(v342 + 2144 + v324));
              LOWORD(v322) = *(a6 + 10);
            }

            ++v323;
          }

          while (v323 < v322);
        }
      }

      usextract_setWordPhrs(a6);
      usextract_setFineSylPosInPhrs(a6);
      usextract_finalizeSylType(a6);
      usextract_setSylPos(a6, SHIWORD(__len));
      usextract_finalizeNrSylInPhrs(a6);
      usextract_finalizePhnCntSyl(a6);
      if (*(a6 + 576))
      {
        if (!*(a6 + 1416) || !*(a6 + 1408) || (usextract_setNrSylInIP4(a6), *(a6 + 576)))
        {
          if (!*(a6 + 1456) || (usextract_setSylNrInIP4(a6), usextract_finalizeFineSylPosInIP4(a6), *(a6 + 576)))
          {
            if (!*(a6 + 1432) || !*(a6 + 1424) || !*(a6 + 1464) || !*(a6 + 1472) || (usextract_setSylStressedPrm(a6), *(a6 + 576)))
            {
              if (!*(a6 + 1400) || !*(a6 + 1480) || !*(a6 + 1488) || (usextract_setWrdBndTone(a6), *(a6 + 576)))
              {
                if (!*(a6 + 1504) || !*(a6 + 1512) || (usextract_setIP4PosInSent(a6), *(a6 + 576)))
                {
                  if (*(a6 + 1432))
                  {
                    if (!*(a6 + 1528) || !*(a6 + 1544) || !*(a6 + 1560) || !*(a6 + 1576) || (usextract_setRhythmRelated(a6), *(a6 + 576)))
                    {
                      if (*(a6 + 1432) && *(a6 + 1520) && *(a6 + 1536) && *(a6 + 1552) && *(a6 + 1568))
                      {
                        usextract_setRhythmRelatedBackward(a6);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (*(a6 + 568) && *(a6 + 1432) && *(a6 + 1584))
      {
        usextract_finalizeFineSylBndShape(a6);
      }

      if (*(a6 + 1384))
      {
        usextract_setSylIndexInWordFromStart(a6);
      }

      if (*(a6 + 1392))
      {
        usextract_setSylIndexInWordFromEnd(a6);
      }

      if (*(a6 + 304))
      {
        usextract_setSylPosInWordRelEnd(a6);
      }

      if (*(a6 + 296))
      {
        usextract_setSylPosInSenRelStr(a6, __len, v388);
      }

      usextract_setPitchAndDurFromCart(v342, a6);
      if ((*(v342 + 3392) & 0x80000000) == 0 || (*(v342 + 3396) & 0x80000000) == 0)
      {
        usextract_setSylTrans(v342, a6);
      }

      if (*(v342 + 2560))
      {
        usextract_setSylChunk(a6);
      }

      v325 = usextract_applyGenericContextRules(v342, a6);
      if ((v325 & 0x80000000) != 0)
      {
        v27 = v325;
      }

      else
      {
        if (*(a6 + 14) >= 1 && !cstdlib_strstr((*a6 + 152), "bet5"))
        {
          usextract_removePromptColumns(a6);
        }

        usextract_setMNXfeatures(v10, v281, a6);
        if (log_GetLogLevel(*(v10 + 32)) >= 6)
        {
          usextract_logAllFeatures(v10, v281, a6);
        }

        v27 = 0;
      }
    }

    else
    {
      log_OutPublic(*(v10 + 32), v281, 19011, "%s%d%s%d", v299, v300, v301, v302, "allocated");
      v27 = 2229281030;
    }

    goto LABEL_561;
  }

  v106 = v349;
  v62 = (*(v349 + 104))(v61, a5, 2, HIWORD(v367), &v367);
  if ((v62 & 0x80000000) != 0)
  {
LABEL_559:
    v27 = v62;
    goto LABEL_560;
  }

  v104 = 0;
  v329 = 0;
  if (v343)
  {
    v107 = v26 == 0;
  }

  else
  {
    v107 = 1;
  }

  v108 = v107;
  v327 = v108;
  v339 = v342 + 2144;
  v345 = 0;
  v348 = 1;
  v331 = v26;
  v333 = v10;
  while (1)
  {
    if (!v367)
    {
      v104 = v104;
      v105 = v348;
      goto LABEL_578;
    }

    v62 = (*(v106 + 168))(v61, a5);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_559;
    }

    v112 = v365;
    if (v365 - 9 >= 6)
    {
      if (v365 == 15)
      {
        usextract_handlePhraseRecord(&v374, v106, v61, a5, v367, a6, v348);
        goto LABEL_548;
      }

      if (v365 != 4)
      {
        goto LABEL_548;
      }
    }

    if (v365 != 11 && HIDWORD(v356) != 0)
    {
      usextract_finishPrompt(&__s2, v10, a2, a6, v348, v109, v110, v111);
      v329 = 1;
      v112 = v365;
    }

    v334 = v104;
    LODWORD(v357[0]) = 0;
    if (v112 != 12 && v356)
    {
      LODWORD(v356) = 0;
      LODWORD(v357[0]) = v112 == 14;
    }

    v62 = usextract_readFromPos(v106, v61, a5, v367, &v360);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_559;
    }

    v366 = 0;
    if (((*(v106 + 184))(v61, a5, v367, 3, &v361 + 2) & 0x80000000) == 0 && HIWORD(v361) == 1)
    {
      v62 = (*(v106 + 176))(v61, a5, v367, 3, &v364, &v366);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_559;
      }
    }

    if (v366 > 1u)
    {
      if (v364)
      {
        v118 = cstdlib_strlen(v364);
        v119 = v364;
        LOWORD(__s) = 0;
        v345 = v118;
        if (!v118 || !v364)
        {
          goto LABEL_162;
        }

        v120 = 0;
        v121 = 0;
        do
        {
          while (v120)
          {
            v122 = &v119[v120];
            if (*v122 != 42 || *(v122 - 1) == 45)
            {
              break;
            }

            *v122 = 45;
            ++v120;
            v121 = 1;
            if (v118 <= v120)
            {
              goto LABEL_160;
            }
          }

          ++v120;
        }

        while (v118 > v120);
        if (v121)
        {
LABEL_160:
          v123 = *(v106 + 160);
          cstdlib_strlen(v119);
          v61 = a4;
          v62 = v123();
          if ((v62 & 0x80000000) != 0)
          {
            goto LABEL_559;
          }
        }

        else
        {
LABEL_162:
          v61 = a4;
        }
      }

      v117 = v364;
    }

    else
    {
      log_OutText(*(v10 + 32), a2, 5, 0, "Word record with empty phonetization, eTokenType=%d", v114, v115, v116, v365);
      v345 = v365 == 14;
      if (v365 == 14)
      {
        v117 = "M";
      }

      else
      {
        v117 = 0;
      }
    }

    if (*(a6 + 536) && (WordPrm = usextract_readWordPrm(v106, v61, a5, v367, v378 + 2), (WordPrm & 0x80000000) != 0) || *(a6 + 1424) && (WordPrm = usextract_readWordPrm(v106, v61, a5, v367, &v378[7] + 1), (WordPrm & 0x80000000) != 0))
    {
LABEL_575:
      v27 = WordPrm;
      goto LABEL_576;
    }

    if (*(a6 + 3504))
    {
      v125 = v367;
      v126 = v379;
      LOWORD(v368) = 0;
      LOWORD(v370) = 0;
      __s = 0;
      v127 = *(v342 + 3336);
      if (*v127)
      {
        v128 = v127 + 1;
        v129 = v379;
        do
        {
          *v129++ = 0;
        }

        while (*v128++);
      }

      v335 = v126;
      if (((*(v106 + 184))(v61, a5, v125, 14, &v368) & 0x80000000) != 0 || v368 != 1)
      {
LABEL_188:
        v61 = a4;
        goto LABEL_212;
      }

      v27 = (*(v106 + 176))(a4, a5, v125, 14, &__s, &v370);
      if ((v27 & 0x80000000) == 0 && v370)
      {
        v131 = __s;
        v10 = v333;
        if (!__s)
        {
          goto LABEL_188;
        }

        LOBYTE(v132) = *__s;
        if (*__s)
        {
          v133 = 0;
          do
          {
            if (v131[1] == 95 && (v134 = cstdlib_strchr("SsEeIi", v132), v132 = *v131, v134))
            {
              v135 = cstdlib_strlen(v131 + 2);
              cstdlib_memmove(v131, v131 + 2, v135 + 1);
            }

            else if (v132 == 58 && v133)
            {
              v136 = cstdlib_strlen(v131 + 1);
              cstdlib_memmove(v131 + 3, v131 + 1, v136 + 1);
              v132 = 0;
              v131[2] = 95;
              v131 += 2;
              *(v131 - 1) = v133;
            }

            else
            {
              v132 = v133;
            }

            v133 = v132;
            v137 = *++v131;
            LOBYTE(v132) = v137;
          }

          while (v137);
          v131 = __s;
          goto LABEL_208;
        }

        while (*v131)
        {
          v138 = v131 - 1;
          do
          {
            v139 = *++v138;
          }

          while (cstdlib_strchr(";: \t", v139));
          v140 = cstdlib_strchr(v138, 58);
          if (!v140)
          {
            log_OutPublic(*(v333 + 32), a2, 19021, "%s%s", v141, v142, v143, v144, "missing feature value");
            break;
          }

          v145 = v140;
          v146 = v140 - 1;
          do
          {
            v147 = v145;
            v148 = v146;
            if (v145 <= v138)
            {
              break;
            }

            --v145;
            v149 = cstdlib_strchr(" \t", *(v147 - 1));
            v146 = v148 - 1;
          }

          while (v149);
          Index = usextract_getIndex(*(v342 + 3336), v138, v147);
          if ((Index & 0x80000000) != 0)
          {
            log_OutText(*(v333 + 32), a2, 3, 0, "unknown generic feature", v150, v151, v152, v326);
          }

          do
          {
            v154 = *++v148;
          }

          while (cstdlib_strchr(": \t", v154));
          v155 = cstdlib_strchr(v148, 59);
          if (!v155)
          {
            v155 = &v148[cstdlib_strlen(v148)];
          }

          do
          {
            v131 = v155;
            if (v155 <= v148)
            {
              break;
            }

            --v155;
          }

          while (cstdlib_strchr(" \t", *(v131 - 1)));
          if ((Index & 0x80000000) == 0)
          {
            v156 = usextract_getIndex(*(*(v342 + 3344) + 8 * Index), v148, v131);
            if ((v156 & 0x80000000) != 0)
            {
              log_OutText(*(v333 + 32), a2, 3, 0, "unknown generic feature", v157, v158, v159, v326);
            }

            else
            {
              *(v335 + Index) = *(*(*(v342 + 3352) + 8 * Index) + v156);
            }
          }

LABEL_208:
          v106 = v349;
          if (!v131)
          {
            break;
          }
        }
      }

      v10 = v333;
      v61 = a4;
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_576;
      }
    }

LABEL_212:
    if (*(a6 + 456))
    {
      v160 = v367;
      __s = 0;
      HIWORD(v371) = 0;
      if (v327)
      {
        v27 = 2229280775;
        goto LABEL_576;
      }

      LOWORD(v368) = 0;
      LOWORD(v370) = 0;
      v373 = 0;
      v161 = (*(v106 + 152))(v61, a5, 4, v367, &v371 + 2);
      v162 = 0;
      if ((v161 & 0x80000000) == 0 && HIWORD(v371))
      {
        v163 = (*(v106 + 104))(v61, a5, 4, v160, &v368);
        if ((v163 & 0x80000000) != 0 || (v163 = (*(v106 + 104))(v61, a5, 5, v368, &v370), (v163 & 0x80000000) != 0))
        {
LABEL_574:
          v27 = v163;
          v26 = v331;
          *v331 = 0;
          goto LABEL_560;
        }

        v162 = 0;
        if (v340)
        {
          v164 = v370;
          if (v370)
          {
            v165 = a5;
            v166 = 0;
            do
            {
              v163 = (*(v106 + 176))(v61, v165, v164, 0, &__s, &v373);
              if ((v163 & 0x80000000) != 0)
              {
                goto LABEL_574;
              }

              if (__s)
              {
                v167 = *__s;
                if (v167 == 35 || *(v339 + v167) != 255)
                {
                  v163 = (*(v106 + 168))(v61, a5, v370, 1, 1, &v373 + 2, &v373);
                  if ((v163 & 0x80000000) != 0)
                  {
                    goto LABEL_574;
                  }

                  v331[v166] = *__s;
                  v343[v166++] = BYTE2(v373);
                }
              }

              v165 = a5;
              (*(v106 + 112))(v61, a5, v370, &v370);
              v164 = v370;
              if (v370)
              {
                v168 = v340 > v166;
              }

              else
              {
                v168 = 0;
              }
            }

            while (v168);
            v162 = v166;
          }
        }
      }

      v334 = 0;
      v331[v162] = 0;
      if (*v331 == 35 && v348 >= 1)
      {
        v169 = v348 - 1;
        if (*(*(a6 + 32) + v169) == 35)
        {
          *(*(a6 + 456) + v169) = *v343;
          v334 = 1;
        }

        else
        {
          v334 = 0;
        }
      }
    }

    if (!v117)
    {
      goto LABEL_273;
    }

    v170 = v350;
    if (!*v117)
    {
      v336 = 0;
      goto LABEL_275;
    }

    v171 = v360;
    v172 = *(a6 + 3520);
    v173 = v334;
    if (v172 > HIDWORD(v363))
    {
      v174 = v172 - HIDWORD(v363);
      v175 = (*(a6 + 3512) + 32 * HIDWORD(v363));
      while (v175[3] - v341 <= v360)
      {
        if (*v175 == 26)
        {
          if (v356 | LODWORD(v357[0]))
          {
            break;
          }

          v177 = v348 > 1;
          v176 = v365 != 14;
          if (v365 != 14 && v363 == 0 && v348 >= 2)
          {
            usextract_assureMinimalPause(a6, HIDWORD(v363), v341, v360, &v363);
            v177 = 1;
            v362 = 1;
            v176 = 1;
          }

          goto LABEL_248;
        }

        v175 += 8;
        if (!--v174)
        {
          break;
        }
      }
    }

    v176 = 0;
    v177 = v348 > 1;
LABEL_248:
    if (v363)
    {
      v178 = !v177;
    }

    else
    {
      v178 = 1;
    }

    if (v178)
    {
      if (v329 && v348 >= 1 && !*(v342 + 2692))
      {
        *(*(a6 + 3608) + ((((v348 * *(v342 + 3578)) << 32) - 0x100000000) >> 30)) = -1;
      }
    }

    else
    {
      v337 = v176;
      usextract_insertPause(&v374, a6, v363, v362, v348, v341, v171, &v363 + 1);
      v179 = *(a6 + 456);
      if (v179)
      {
        v173 = v334;
        if (*(*(a6 + 32) + v348) == v331[v334])
        {
          *(v179 + v348) = v343[v334];
          v173 = (v334 + 1);
        }
      }

      else
      {
        v173 = v334;
      }

      v176 = v337;
      if (v356 && *(v342 + 3578))
      {
        memset_pattern16((*(a6 + 3608) + 4 * v348 * *(v342 + 3578)), &unk_26ECCE6F0, 4 * *(v342 + 3578));
        v176 = v337;
      }

      ++v348;
    }

    if (!v176)
    {
      v334 = v173;
      v329 = 0;
LABEL_273:
      v336 = 0;
LABEL_274:
      v170 = v350;
      goto LABEL_275;
    }

    if (!cstdlib_strstr((*a6 + 152), "bet4") && !cstdlib_strstr((*a6 + 152), "bet5"))
    {
      v334 = v173;
      v329 = 0;
      v336 = 1;
      goto LABEL_274;
    }

    usextract_insertPause(&v374, a6, 5u, 1, v348, v341, v360, &v363 + 1);
    v180 = *(a6 + 456);
    if (v180 && *(*(a6 + 32) + v348) == v331[v173])
    {
      *(v180 + v348) = v343[v173];
      v173 = (v173 + 1);
    }

    v334 = v173;
    v170 = v350;
    v329 = 0;
    ++v348;
    v336 = 1;
LABEL_275:
    if (v365 == 11)
    {
      break;
    }

    if (v365 == 14)
    {
      LODWORD(v356) = 1;
      goto LABEL_304;
    }

    if (v365 == 13)
    {
      break;
    }

LABEL_304:
    WordPrm = usextract_readSilDur(v106, v61, a5, v367, &v363, &v362);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_575;
    }

    v198 = HIDWORD(v363);
    if (HIDWORD(v363) < *(a6 + 3520))
    {
      v199 = (32 * HIDWORD(v363)) | 0xC;
      while (1)
      {
        if (*(*(a6 + 3512) + v199) - v341 > v360)
        {
LABEL_319:
          v10 = v333;
          v61 = a4;
          v106 = v349;
          goto LABEL_320;
        }

        if (!v336)
        {
          break;
        }

        if (cstdlib_strstr((*a6 + 152), "bet4"))
        {
          if (v348 < 1)
          {
            break;
          }
        }

        else
        {
          if (cstdlib_strstr((*a6 + 152), "bet5"))
          {
            v201 = v348 <= 0;
          }

          else
          {
            v201 = 1;
          }

          if (v201)
          {
            break;
          }
        }

        v200 = (*(a6 + 1800) + 2 * v348 - 2);
LABEL_318:
        ++*v200;
        ++v198;
        v199 += 32;
        if (v198 >= *(a6 + 3520))
        {
          goto LABEL_319;
        }
      }

      v200 = (*(a6 + 1800) + 2 * v348);
      goto LABEL_318;
    }

LABEL_320:
    HIDWORD(v363) = v198;
    if (v117 && *v117)
    {
      usextract_handleWordStart(&v374, a6, v117, v348);
      if (*(a6 + 280))
      {
        v202 = 0;
        do
        {
          v203 = v117[v202];
          if (v203 <= 0x2D && ((1 << v203) & 0x200800000001) != 0)
          {
            break;
          }

          v205 = v203 - 49;
          if ((v203 - 49) < 4u)
          {
            goto LABEL_332;
          }

          ++v202;
        }

        while (v203 != 53);
        v205 = 0;
LABEL_332:
        BYTE2(v376) = v205;
      }

      usextract_handleBoundaryShape(&v374, v342);
      LOWORD(v361) = 0;
      if (v345)
      {
        v210 = 0;
        LOWORD(v211) = 0;
        v338 = v117 + 1;
        do
        {
          if (!v170)
          {
            goto LABEL_372;
          }

          if (__len_4 == -1)
          {
            v215 = 0;
          }

          else
          {
            v212 = __len_6;
            if (__len_6 == -1 || v210 <= __len_6)
            {
              if (v210 > v384)
              {
                LOWORD(v215) = v384;
                v214 = 1;
                goto LABEL_362;
              }

              goto LABEL_372;
            }

            v215 = __len_6;
          }

          __len_4 = v215;
          v212 = v215;
          do
          {
            __len_6 = ++v212;
            v216 = v117[v212];
            if (v117[v212])
            {
              v217 = v170 == v216;
            }

            else
            {
              v217 = 1;
            }
          }

          while (!v217);
          v214 = 0;
          if (v215)
          {
            v218 = 2;
          }

          else
          {
            v218 = 1;
          }

          if (v215)
          {
            v219 = 3;
          }

          else
          {
            v219 = 0;
          }

          if (v170 == v216)
          {
            v220 = v218;
          }

          else
          {
            v220 = v219;
          }

          BYTE9(v378[9]) = v220;
          v384 = v215;
          if (v338[v215] == 45)
          {
            LOWORD(v215) = v215 + 1;
          }

          while (1)
          {
LABEL_362:
            LOWORD(v215) = v215 + 1;
            v384 = v215;
            if (!v117[v215])
            {
LABEL_365:
              if (v214)
              {
                v221 = 3;
              }

              else
              {
                v221 = 0;
              }

              goto LABEL_371;
            }

            if (v117[v215] == 45)
            {
              break;
            }

            if (v215 >= v212)
            {
              goto LABEL_365;
            }
          }

          if (v214)
          {
            v221 = 2;
          }

          else
          {
            v221 = 1;
          }

LABEL_371:
          BYTE10(v378[9]) = v221;
LABEL_372:
          v222 = &v117[v211];
          v223 = *v222;
          v224 = *a6;
          if (*(v339 + v223) != 255)
          {
            if (BYTE7(v375) != 255)
            {
              ++BYTE7(v375);
              LOBYTE(v223) = *v222;
            }

            *(*(a6 + 32) + v348) = v223;
            v225 = WORD6(v378[9]);
            if (WORD6(v378[9]) != 218)
            {
              v226 = 1;
              do
              {
                *(*(v15 + 8 * v225) + v348) = *(&v374 + v225 + 1);
                v225 = *(&v378[9] + v226++ + 6);
              }

              while (v225 != 218);
            }

            v227 = *(*a6 + 3336);
            if (v227 && *v227)
            {
              v228 = 0;
              v229 = v227 + 1;
              do
              {
                *(*(*(a6 + 3504) + 8 * v228) + v348) = v379[v228];
              }

              while (v229[v228++]);
            }

            if (*(a6 + 264))
            {
              v231 = v210 + 1;
              if (v231 < v345)
              {
                v232 = cstdlib_strchr((v224 + 2400), v117[v231]);
                if (v232)
                {
                  *(*(a6 + 264) + v348) = v232 - (v224 + 96) + 1;
                }
              }

              v233 = *(a6 + 272);
              v170 = v350;
              if (v233)
              {
                v234 = v348 - 1;
                if (*(*(a6 + 32) + v234) == 35)
                {
                  v235 = cstdlib_strlen((v224 + 2400)) + 1;
                  v233 = *(a6 + 272);
                }

                else if (*(*(a6 + 112) + v234))
                {
                  v235 = *(*(a6 + 264) + v234);
                }

                else
                {
                  v235 = *(v233 + v234);
                }

                *(v233 + v348) = v235;
              }
            }

            if (BYTE6(v375) <= 1u)
            {
              BYTE6(v375) = 2;
            }

            BYTE6(v378[0]) = 0;
            v242 = *(a6 + 456);
            if (v242 && *(*(a6 + 32) + v348) == v331[v334])
            {
              *(v242 + v348) = v343[v334];
              v334 = (v334 + 1);
            }

            v243 = *a6;
            if (v356)
            {
              if (*(v243 + 3578))
              {
                memset_pattern16((*(a6 + 3608) + 4 * v348 * *(v243 + 3578)), &unk_26ECCE6F0, 4 * *(v243 + 3578));
              }
            }

            else if (HIDWORD(v356))
            {
              if (LOBYTE(__s1[1]))
              {
                --LOBYTE(__s1[1]);
              }

              else
              {
                if (HIDWORD(__s1[1]))
                {
                  DWORD1(v359) = 0;
                }

                else
                {
                  v250 = *(a6 + 32);
                  v251 = *(v250 + v348);
                  v252 = v355;
                  v253 = *v355;
                  if (v251 != 35 && v253 == 35)
                  {
                    do
                    {
                      v355 = v252 + 1;
                      skipUnvalidPhonemes(v243, &v355);
                      v252 = v355;
                      __s1[3] += 4 * *(v243 + 3578);
                      v253 = *v355;
                    }

                    while (v253 == 35);
                    v251 = *(v250 + v348);
                  }

                  v170 = v350;
                  if (v251 != v253)
                  {
                    HIDWORD(__s1[1]) = 1;
                    if (cstdlib_strlen(v252) >= 2)
                    {
                      DWORD1(v359) = 0;
                    }
                  }

                  if (!HIDWORD(__s1[1]))
                  {
                    if (LODWORD(__s1[2]))
                    {
                      LODWORD(__s1[2]) = 0;
                      v263 = *(v243 + 3578);
                    }

                    else
                    {
                      v263 = *(v243 + 3578);
                      *(*(a6 + 3608) + 4 * v348 * *(v243 + 3578)) = *__s1[3];
                    }

                    if (v263 >= 2)
                    {
                      v268 = v263;
                      v269 = v263 - 1;
                      v270 = (*(a6 + 3608) + 4 * v348 * v268 + 4);
                      v271 = __s1[3] + 4;
                      do
                      {
                        v272 = *v271;
                        v271 += 4;
                        *v270++ = v272;
                        --v269;
                      }

                      while (v269);
                    }

                    if (*v355)
                    {
                      ++v355;
                      skipUnvalidPhonemes(v243, &v355);
                      __s1[3] += 4 * *(v243 + 3578);
                    }

                    goto LABEL_429;
                  }
                }

                if (v348 >= 1 && *(*(a6 + 32) + v348) != 35 && !*(v243 + 2692))
                {
                  *(*(a6 + 3608) + ((((v348 * *(v243 + 3578)) << 32) - 0x100000000) >> 30)) = -1;
                }
              }
            }

LABEL_429:
            ++v348;
            goto LABEL_430;
          }

          LOWORD(__s) = 0;
          if (v223 <= 48)
          {
            switch(v223)
            {
              case '""':
                if (WORD4(v380) != v348)
                {
                  log_OutPublic(*(v333 + 32), a2, 19013, "%s%s", v206, v207, v208, v209, "word");
                }

                v244 = v389++;
                BYTE10(v374) = 3;
                LOWORD(__len) = v348;
                BYTE3(v376) = 2;
                v61 = a4;
                if (BYTE4(v375) <= 1u)
                {
                  BYTE4(v375) = 2;
                }

                if (BYTE4(v378[7]) <= 2u)
                {
                  if (BYTE1(v378[7]) <= 1u)
                  {
                    v245 = 3;
                  }

                  else
                  {
                    v245 = 4;
                  }

                  BYTE4(v378[7]) = v245;
                }

                if (v388 == -1)
                {
                  v388 = v348;
                }

                if (v390)
                {
                  v246 = 4;
                }

                else
                {
                  v246 = 3;
                }

                if (v244)
                {
                  v247 = 2;
                }

                else
                {
                  v247 = v246;
                }

                BYTE3(v375) = v247;
                if (BYTE2(v378[0]) != 3)
                {
                  if (BYTE2(v378[0]) != 2)
                  {
                    goto LABEL_464;
                  }

                  goto LABEL_454;
                }

                v248 = 0;
LABEL_498:
                v249 = 1;
                goto LABEL_501;
              case '\'':
                if (WORD4(v380) != v348)
                {
                  log_OutPublic(*(v333 + 32), a2, 19014, "%s%s", v206, v207, v208, v209, "word");
                }

                BYTE10(v374) = 2;
                LOWORD(__len) = v348;
                BYTE3(v376) = 2;
                v61 = a4;
                if (v388 == -1)
                {
                  v388 = v348;
                }

                v249 = 1;
                BYTE3(v375) = 1;
                if (BYTE2(v378[0]) == 3)
                {
                  v248 = 0;
                }

                else
                {
                  if (BYTE2(v378[0]) != 2)
                  {
LABEL_464:
                    v249 = 0;
                    v248 = 6;
                    goto LABEL_501;
                  }

LABEL_454:
                  if (HIDWORD(v385))
                  {
                    if (v385)
                    {
                      v248 = 5;
                    }

                    else
                    {
                      v248 = 4;
                    }

                    goto LABEL_498;
                  }

                  v249 = 1;
                  v248 = 3;
                }

LABEL_501:
                BYTE4(v378[0]) = v248;
                if (BYTE1(v378[7]) != 4)
                {
                  if (BYTE1(v378[7]) == 3)
                  {
                    if (HIDWORD(v386))
                    {
                      v259 = v386 == 0;
                      v260 = 4;
                      goto LABEL_508;
                    }

                    v262 = 1;
                    v261 = 3;
                  }

                  else if (BYTE1(v378[7]) == 2)
                  {
                    if (HIDWORD(v386))
                    {
                      v259 = v386 == 0;
                      v260 = 9;
LABEL_508:
                      if (v259)
                      {
                        v261 = v260;
                      }

                      else
                      {
                        v261 = v260 + 1;
                      }

LABEL_512:
                      v262 = 1;
                    }

                    else
                    {
                      v262 = 1;
                      v261 = 8;
                    }
                  }

                  else
                  {
                    v262 = 0;
                    v261 = 11;
                  }

                  BYTE2(v378[7]) = v261;
                  if (v249)
                  {
                    v385 = 0x100000001;
                    WORD6(v380) = v348;
                  }

                  if (v262)
                  {
                    v386 = 0x100000001;
                    HIWORD(v380) = v348;
                  }

                  goto LABEL_431;
                }

                v261 = 0;
                goto LABEL_512;
              case '-':
                if (WORD4(v380) != v348)
                {
                  WORD4(v380) = v348;
                  v254 = v348 - 1;
                  *(*(a6 + 112) + v254) = 1;
                  BYTE10(v374) = 0;
                  BYTE6(v375) = 1;
                  if (BYTE6(v376) != 255)
                  {
                    ++BYTE6(v376);
                  }

                  if (HIBYTE(v374) != 255)
                  {
                    ++HIBYTE(v374);
                  }

                  if (cstdlib_strchr(v222 + 1, 45))
                  {
                    v255 = 2;
                  }

                  else
                  {
                    v255 = 3;
                  }

                  BYTE11(v374) = v255;
                  BYTE7(v375) = 0;
                  BYTE14(v374) = 2;
                  BYTE3(v375) = 0;
                  BYTE3(v378[0]) = 12;
                  BYTE3(v378[7]) = 12;
                  BYTE6(v378[0]) = 1;
                  BYTE8(v378[0]) = 1;
                  BYTE14(v378[0]) = 1;
                  v256 = *(a6 + 576);
                  if (v256)
                  {
                    *(v256 + v254) = 1;
                  }

                  v211 = v361;
                  v61 = a4;
                  if (v361)
                  {
                    v257 = *(a6 + 184);
                    if (*(v257 + v254) == 2)
                    {
                      *(v257 + v254) = 3;
                    }
                  }

                  BYTE4(v378[0]) = 8;
                  BYTE2(v378[7]) = 13;
                  if (BYTE3(v376) == 2)
                  {
                    BYTE3(v376) = 1;
                  }

                  if (BYTE4(v375) == 2)
                  {
                    v258 = 3;
LABEL_523:
                    BYTE4(v375) = v258;
                  }

                  else if (BYTE4(v375) == 3)
                  {
                    v258 = 4;
                    goto LABEL_523;
                  }

                  if (BYTE4(v378[7]) - 3 <= 3)
                  {
                    BYTE4(v378[7]) += 2;
                  }

                  if (*(a6 + 280))
                  {
                    v264 = 0;
                    do
                    {
                      v265 = v338[v211 + v264];
                      if (v265 <= 0x2D && ((1 << v265) & 0x200800000001) != 0)
                      {
                        break;
                      }

                      v267 = v265 - 49;
                      if ((v265 - 49) < 4u)
                      {
                        goto LABEL_536;
                      }

                      ++v264;
                    }

                    while (v265 != 53);
                    v267 = 0;
LABEL_536:
                    BYTE2(v376) = v267;
                  }

                  if (v338[v211] == 42)
                  {
                    log_OutPublic(*(v333 + 32), a2, 19016, "%s%s", v206, v207, v208, v209, "word");
                    LOWORD(v211) = v211 + 1;
                    LOWORD(v361) = v211;
                  }

                  goto LABEL_431;
                }

                log_OutPublic(*(v333 + 32), a2, 19019, "%s%s", v206, v207, v208, v209, "word");
                goto LABEL_430;
            }
          }

          else if ((v223 - 49) >= 5)
          {
            if (v223 == 96)
            {
              if (WORD4(v380) != v348)
              {
                log_OutPublic(*(v333 + 32), a2, 19015, "%s%s", v206, v207, v208, v209, "word");
              }

              BYTE10(v374) = 1;
              BYTE3(v375) = 7;
              BYTE4(v378[0]) = 7;
              BYTE2(v378[7]) = 12;
              goto LABEL_430;
            }

            if (v223 == 92)
            {
              BYTE14(v375) = usextract_GetSentType(v333, a2, v224, &v117[v211], v374, 1, &__s);
              v241 = __s - 1;
              if (__s <= 1u)
              {
                v241 = 1;
              }

              LOWORD(v211) = v241 + v361;
              goto LABEL_430;
            }
          }

          else if (*(a6 + 280))
          {
            v236 = 0;
            v237 = (v222 + 1);
            v61 = a4;
            do
            {
              v238 = v237[v236];
              if (v238 <= 0x2D && ((1 << v238) & 0x200800000001) != 0)
              {
                break;
              }

              v240 = v238 - 49;
              if ((v238 - 49) < 4u)
              {
                goto LABEL_401;
              }

              ++v236;
            }

            while (v238 != 53);
            v240 = 0;
LABEL_401:
            BYTE2(v376) = v240;
            goto LABEL_431;
          }

          if (!cstdlib_strchr((v224 + 2400), v223))
          {
            log_OutPublic(*(v333 + 32), a2, 19012, "%s%d%s%s", v206, v207, v208, v209, "phoneme");
          }

LABEL_430:
          v61 = a4;
LABEL_431:
          LOWORD(v211) = v211 + 1;
          LOWORD(v361) = v211;
          v210 = v211;
        }

        while (v345 > v211);
      }

      v10 = v333;
      usextract_handleWordEnd(&__s2, &v374, v333, a2, a6, v117, v348, v209);
      v26 = v331;
      v106 = v349;
    }

    else
    {
      v26 = v331;
    }

    v104 = v334;
LABEL_548:
    v62 = (*(v106 + 120))(v61, a5, v367, &v367);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_559;
    }
  }

  HIDWORD(v356) = 1;
  v181 = v61;
  v182 = *a6;
  LOWORD(v368) = 0;
  LOWORD(v370) = 0;
  LODWORD(__s) = 0;
  v328 = v367;
  WordPrm = (*(v106 + 176))(v181, a5);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_575;
  }

  WordPrm = (*(v106 + 176))(a4, a5, v328, 15, &v355, &v368);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_575;
  }

  valid = usextract_nrOfValidPhonemes(v182, v355);
  v184 = usextract_readSilDur(v106, a4, a5, v328, &__s, 0);
  if ((v184 & 0x80000000) == 0)
  {
    v188 = *(v182 + 3578);
    if (__s)
    {
      v189 = v370;
      v106 = v349;
      v170 = v350;
      if (v188 + v188 * valid == v370)
      {
        LODWORD(v359) = 1;
LABEL_288:
        __s2 = v355;
        skipUnvalidPhonemes(v182, &v355);
        if (v365 == 13)
        {
          usextract_startNewPrompt(&__s2, a6, v117, v348);
        }

        v10 = v333;
        v61 = a4;
        if (__s1[0] && __s2)
        {
          v190 = cstdlib_strlen(__s1[0]);
          if (cstdlib_strlen(__s2) + v190 > 0x1EF)
          {
            if (cstdlib_strlen(__s1[0]) <= 0x1EF)
            {
              cstdlib_strcat(__s1[0], "...");
            }

            log_OutText(*(v333 + 32), a2, 3, 0, "prompt too long for logging", v191, v192, v193, v326);
          }

          else
          {
            cstdlib_strcat(__s1[0], __s2);
          }
        }

        if (v117 && v357[1])
        {
          v194 = cstdlib_strlen(v357[1]);
          if (cstdlib_strlen(v117) + v194 > 0x1EF)
          {
            if (cstdlib_strlen(v357[1]) <= 0x1EF)
            {
              cstdlib_strcat(v357[1], "...");
            }

            log_OutText(*(v333 + 32), a2, 3, 0, "phon too long for prompt logging", v195, v196, v197, v326);
          }

          else
          {
            cstdlib_strcat(v357[1], v117);
          }
        }

        goto LABEL_304;
      }
    }

    else
    {
      v189 = v370;
      v106 = v349;
      v170 = v350;
    }

    LODWORD(v359) = 0;
    if (v188 * valid != v189)
    {
      log_OutText(*(v333 + 32), a2, 3, 0, "Warning (incoherent prompt): %d segment ids for %d valid phones", v185, v186, v187, v189);
      HIDWORD(__s1[1]) = 1;
      DWORD1(v359) = 0;
    }

    goto LABEL_288;
  }

  v27 = v184;
  v10 = v333;
LABEL_576:
  v26 = v331;
LABEL_560:
  v25 = v343;
LABEL_561:
  if (log_HasTraceTuningDataSubscriber(*(v10 + 32)))
  {
    log_OutTraceTuningData(*(v10 + 32), 301, "%s%s %s%.*s", v275, v276, v277, v278, v279, "END");
  }

  if (v357[1])
  {
    heap_Free(*(v10 + 8), v357[1]);
  }

  if (__s1[0])
  {
    heap_Free(*(v10 + 8), __s1[0]);
  }

  if (v26)
  {
    heap_Free(*(v10 + 8), v26);
  }

  if (v25)
  {
    heap_Free(*(v10 + 8), v25);
  }

  if (v379)
  {
    heap_Free(*(v10 + 8), v379);
  }

  return v27;
}

uint64_t usextract_GetSentType(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned __int8 a5, int a6, _WORD *a7)
{
  *a7 = 0;
  if (*a4 != 92)
  {
    return a5;
  }

  v10 = a4;
  v14 = a4 + 1;
  v15 = cstdlib_strchr(a4 + 1, 92);
  if (!v15)
  {
    return a5;
  }

  *a7 = v15 - v10 + 1;
  if ((v15 - v10 + 1) < 3u || *v14 == 47)
  {
    return a5;
  }

  v20 = v15 - v10 - 1;
  if ((*(a3 + 3092) & 0x80000000) == 0)
  {
    v21 = **(a3 + 2464);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v24 = v20;
      while (1)
      {
        v25 = cstdlib_strncmp(v21, v14, v24);
        v26 = *(a3 + 2464);
        if (!v25 && !*(*(v26 + 8 * v22) + v24))
        {
          return v23;
        }

        v22 = ++v23;
        v21 = *(v26 + 8 * v23);
        if (!v21)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      if (a6)
      {
        log_OutText(*(a1 + 32), a2, 3, 0, "Internal tag doesn't match the voice's tag alphabet, tag = %s", v17, v18, v19, v14);
      }
    }

    return a5;
  }

  if ((v15 - v10 - 1) != 2)
  {
LABEL_18:
    if (a6)
    {
      log_OutPublic(*(a1 + 32), a2, 19018, "%s%.*s", v16, v17, v18, v19, "tag");
    }

    return 2;
  }

  if (!cstdlib_strncmp(v14, "TM", 2uLL))
  {
    return 0;
  }

  if (!cstdlib_strncmp(v14, "TQ", 2uLL))
  {
    return 1;
  }

  a5 = 2;
  if (cstdlib_strncmp(v14, "TS", 2uLL))
  {
    if (!cstdlib_strncmp(v14, "TW", 2uLL))
    {
      return 3;
    }

    goto LABEL_18;
  }

  return a5;
}

uint64_t usextract_finishPrompt(uint64_t result, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (*(result + 32) && *(result + 40))
  {
    result = log_HasTraceTuningDataSubscriber(*(a2 + 32));
    if (result)
    {
      log_OutTraceTuningData(*(a2 + 32), 302, "%s%s %s%s %s%s", v13, v14, a6, a7, a8, "BEG");
      result = log_OutTraceTuningData(*(a2 + 32), 302, "%s%s %s%s", v15, v16, v17, v18, v19, "END");
    }

    if (!*(v12 + 76))
    {
      log_OutText(*(a2 + 32), a3, 3, 0, "    Warning: no match, conflicting phonetics", a6, a7, a8, v32);
      log_OutText(*(a2 + 32), a3, 3, 0, "    Carrier:  %s", v20, v21, v22, *(v12 + 40));
      result = log_OutText(*(a2 + 32), a3, 3, 0, "    Phonemes: %s", v23, v24, v25, *(v12 + 32));
    }
  }

  if (!*(v12 + 76))
  {
    v26 = *(v12 + 80);
    if (v26 == -1)
    {
      result = log_OutText(*(a2 + 32), a3, 3, 0, "    Warning: uninitialized prompt", a6, a7, a8, v32);
    }

    else if (v26 < a5)
    {
      v27 = *(*a4 + 3578);
      v28 = (v26 * v27) << 32;
      do
      {
        if (v27)
        {
          v29 = a4[451];
          v30 = v28;
          v31 = v27;
          do
          {
            result = v30 >> 30;
            *(v29 + (v30 >> 30)) = -1;
            v30 += 0x100000000;
            --v31;
          }

          while (v31);
        }

        ++v26;
        v28 += v27 << 32;
      }

      while (v26 != a5);
    }
  }

  *(v12 + 76) = 1;
  *(v12 + 52) = 0;
  *(v12 + 20) = 0;
  return result;
}

uint64_t usextract_readWordPrm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = 0;
  v12 = 0;
  *a5 = 0;
  v10 = 0;
  if (((*(a1 + 184))(a2, a3, a4, 13, &v13 + 2) & 0x80000000) == 0 && HIWORD(v13) == 1)
  {
    v10 = (*(a1 + 176))(a2, a3, a4, 13, &v12, &v13);
    if ((v10 & 0x80000000) == 0)
    {
      *a5 = cstdlib_atoi(v12);
    }
  }

  return v10;
}

uint64_t usextract_startNewPrompt(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, int a4)
{
  v8 = *a2;
  *(a1 + 80) = a4;
  cstdlib_strcpy(*(a1 + 40), "");
  cstdlib_strcpy(*(a1 + 32), "");
  v10 = (a1 + 8);
  v9 = *(a1 + 8);
  *(a1 + 48) = 0;
  result = usextract_matchPhon(*a2, a3, 0, v9, 0);
  if (result || (*(a1 + 48) = 1, result = usextract_matchPhon(*a2, a3, 1, *(a1 + 8), 0), result) || (*(a1 + 48) = 256, result = usextract_matchPhon(*a2, a3, 0, *(a1 + 8), 1), result) || (*(a1 + 48) = 257, result = usextract_matchPhon(*a2, a3, 1, *(a1 + 8), 1), result))
  {
    v12 = *(a1 + 49);
    if (*(a1 + 49))
    {
      do
      {
        if (**v10)
        {
          *(a1 + 8) = *v10 + 1;
          result = skipUnvalidPhonemes(v8, (a1 + 8));
          *(a1 + 64) += 4 * *(v8 + 3578);
          v12 = *(a1 + 49);
        }

        *(a1 + 49) = --v12;
      }

      while (v12);
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 52) = 1;
    *(a1 + 76) = 0;
  }

  if (a4 >= 1 && *(a2[4] + a4 - 1) != 35 && !*(v8 + 2692))
  {
    *(a1 + 56) = 1;
  }

  return result;
}

char *usextract_handleWordStart(uint64_t a1, void *a2, char *__s, int a4)
{
  if (a4 >= 1)
  {
    v8 = a2[72];
    if (v8)
    {
      v9 = v8 + a4;
      if (*(v9 - 1) <= 1u)
      {
        *(v9 - 1) = 2;
      }
    }
  }

  v10 = *(a1 + 672);
  LODWORD(v11) = *(a1 + 672);
  if (v10 < a4 && (v10 & 0x80000000) == 0 && a2[74])
  {
    v12 = *(a1 + 672);
    do
    {
      v13 = a2[74];
      if (*(v13 + v12) <= 1u)
      {
        *(v13 + v12) = 2;
      }

      ++v12;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a1 + 672);
  }

  v16 = (v11 & 0x8000u) == 0 && a2[68] != 0 && v11 < a4;
  if (v11 == *(a1 + 674))
  {
    if (v16)
    {
      v11 = v11;
      do
      {
        v17 = a2[68];
        if (*(v17 + v11) >= 0xAu)
        {
          *(v17 + v11) = 9;
        }

        ++v11;
      }

      while (a4 != v11);
      LODWORD(v11) = *(a1 + 672);
    }

    if (v11 < a4 && (v11 & 0x80000000) == 0 && a2[180])
    {
      v11 = v11;
      do
      {
        v18 = a2[180];
        if (*(v18 + v11) >= 0xAu)
        {
          *(v18 + v11) = 9;
        }

        ++v11;
      }

      while (a4 != v11);
    }
  }

  else
  {
    if (v16)
    {
      v11 = v11;
      do
      {
        v19 = a2[68];
        if (*(v19 + v11) >= 0xBu)
        {
          *(v19 + v11) = 10;
        }

        ++v11;
      }

      while (a4 != v11);
      LODWORD(v11) = *(a1 + 672);
    }

    if (v11 < a4 && (v11 & 0x80000000) == 0 && a2[180])
    {
      v11 = v11;
      do
      {
        v20 = a2[180];
        if (*(v20 + v11) >= 0xBu)
        {
          *(v20 + v11) = 10;
        }

        ++v11;
      }

      while (a4 != v11);
    }
  }

  *(a1 + 672) = a4;
  *(a1 + 674) = a4;
  *(a1 + 684) = -1;
  *(a1 + 688) = -1;
  *(a1 + 10) = 0;
  *(a1 + 22) = 0;
  *(a1 + 35) = 1;
  *(a1 + 38) = 1;
  if (cstdlib_strchr(__s, 45))
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  *(a1 + 11) = v21;
  *(a1 + 23) = 0;
  *(a1 + 19) = 0;
  *(a1 + 20) = cstdlib_strchr(__s, 34) != 0;
  result = cstdlib_strchr(__s, 34);
  if (result)
  {
    if (*(a1 + 177) <= 1u)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 180) = v23;
  if (*(a1 + 70) <= 1u)
  {
    *(a1 + 70) = 2;
  }

  if (*(a1 + 72) <= 1u)
  {
    *(a1 + 72) = 2;
  }

  if (*(a1 + 78) <= 1u)
  {
    *(a1 + 78) = 2;
  }

  if (*(a1 + 74) <= 1u)
  {
    *(a1 + 74) = 2;
  }

  if (*(a1 + 67) >= 0xCu)
  {
    *(a1 + 67) = 11;
  }

  if (*(a1 + 179) >= 0xCu)
  {
    *(a1 + 179) = 11;
  }

  if (a4 >= 2)
  {
    *(a2[14] + a4 - 1) = 2;
  }

  *(a1 + 217) = 0;
  return result;
}

uint64_t usextract_handleBoundaryShape(uint64_t a1, void *a2)
{
  result = a2[417];
  if (result && (result = usextract_getIndex(result, "BNDSHAPE", ""), (result & 0x80000000) == 0) && (v5 = *(*(a1 + 656) + result), v6 = *(*(a2[418] + 8 * result) + 8 * v5), *(a1 + 197) = v5, (v7 = *a2[309]) != 0))
  {
    v8 = 0;
    while (1)
    {
      result = cstdlib_strcmp(v6, v7);
      if (!result)
      {
        break;
      }

      v9 = a2[309] + 8 * v8++;
      v7 = *(v9 + 8);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 708) = 1;
  }

  else
  {
LABEL_7:
    LOBYTE(v8) = 0;
    *(a1 + 708) = 0;
  }

  *(a1 + 174) = v8;
  return result;
}

uint64_t usextract_handleWordEnd(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  if (*(result + 72) == 1)
  {
    if (*(result + 20))
    {
      v11 = *(*a5 + 3578);
      if (*(*a5 + 3578))
      {
        v12 = *(result + 64);
        v13 = (a5[451] + 4 * *(*a5 + 3578) * a7);
        do
        {
          v14 = *v12++;
          *v13++ = v14;
          --v11;
        }

        while (v11);
      }
    }
  }

  *(a2 + 67) = 2060;
  *(a2 + 74) = 2;
  *(a2 + 78) = 2;
  *(a2 + 69) = 9;
  *(a2 + 186) = 9;
  *(a2 + 178) = 3085;
  if (*(a2 + 674) == a7)
  {
    v15 = 19017;
  }

  else
  {
    if (*(a2 + 672) != a7)
    {
      goto LABEL_11;
    }

    v15 = 19013;
  }

  result = log_OutPublic(*(a3 + 32), a4, v15, "%s%s", a5, a6, a7, a8, "word");
LABEL_11:
  v16 = *(a2 + 15);
  if (v16 != 255)
  {
    *(a2 + 15) = v16 + 1;
  }

  *(a2 + 14) = 2;
  if (a5[36])
  {
    v17 = *(a2 + 680);
    if (v17 >= *(a2 + 674) && v17 < v8)
    {
      v18 = *(a2 + 680);
      do
      {
        v19 = a5[36];
        if (*(v19 + v18) == 1)
        {
          *(v19 + v18) = 3;
        }

        ++v18;
      }

      while (v8 != v18);
    }
  }

  v20 = a5[23] + v8;
  if (*(v20 - 1) >= 2u)
  {
    *(v20 - 1) = 4;
  }

  v21 = a5[39];
  if (v21)
  {
    v22 = *(a2 + 38);
    if (v22 >= 2)
    {
      result = cstdlib_memset((v21 + *(a2 + 674)), v22, (v8 - *(a2 + 674)) & ~((v8 - *(a2 + 674)) >> 31));
    }
  }

  if ((*(a2 + 12) | 2) == 3)
  {
    *(a2 + 12) = 2;
  }

  return result;
}

uint64_t usextract_handlePhraseRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, signed int a7)
{
  v49 = 0;
  v48 = 0;
  if (a6[78])
  {
    result = (*(a2 + 176))(a3, a4, a5, 4, &v48, &v49 + 2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (*v48 - 80 > 9)
    {
      v15 = 3;
    }

    else
    {
      v15 = byte_26ECCE788[(*v48 - 80)];
    }

    *(a1 + 77) = v15;
  }

  result = (*(a2 + 168))(a3, a4, a5, 7, 1, &v49, &v49 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (*(a1 + 708))
    {
      v16 = v49 == 2;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = 7;
      *(a1 + 78) = 7;
      *(a1 + 70) = 117901063;
      *(a1 + 74) = 1799;
      LODWORD(v18) = *(a1 + 672);
      v27 = *(a1 + 664);
      if (v18 == v27)
      {
        v20 = 6;
      }

      else
      {
        v20 = 7;
      }

      v21 = 8;
      *(a1 + 67) = 8;
      v28 = *(a1 + 666);
      if (v18 == v28)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      *(a1 + 179) = 5;
      v29 = *(a1 + 674);
      if (v29 == v27)
      {
        v22 = 6;
      }

      else
      {
        v22 = 7;
      }

      if (v29 == v28)
      {
        v25 = 3;
      }

      else
      {
        v25 = 4;
      }

      *(a1 + 69) = 8;
      *(a1 + 186) = 5;
      *(a1 + 666) = a7;
      *(a1 + 664) = a7;
      *(a1 + 700) = 0;
      v26 = 2;
      v23 = 7;
    }

    else if (v49 == 2)
    {
      v17 = 3;
      *(a1 + 78) = 3;
      *(a1 + 70) = 50529027;
      *(a1 + 74) = 771;
      LODWORD(v18) = *(a1 + 672);
      v19 = *(a1 + 664);
      if (v18 == v19)
      {
        v20 = 6;
      }

      else
      {
        v20 = 7;
      }

      v21 = 8;
      *(a1 + 67) = 8;
      *(a1 + 179) = 8;
      if (*(a1 + 674) == v19)
      {
        v22 = 6;
      }

      else
      {
        v22 = 7;
      }

      *(a1 + 69) = 8;
      *(a1 + 186) = 8;
      *(a1 + 664) = a7;
      v23 = 13;
      v24 = v20;
      v25 = v22;
      v26 = 13;
    }

    else if (v49 == 1)
    {
      v17 = 4;
      *(a1 + 78) = 4;
      *(a1 + 70) = 67372036;
      *(a1 + 74) = 1028;
      LODWORD(v18) = *(a1 + 672);
      v44 = *(a1 + 668);
      if (v18 == v44)
      {
        v20 = 3;
      }

      else
      {
        v20 = 4;
      }

      *(a1 + 67) = 5;
      v45 = *(a1 + 666);
      if (v18 == v45)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      *(a1 + 179) = 5;
      v46 = *(a1 + 674);
      if (v46 == v44)
      {
        v22 = 3;
      }

      else
      {
        v22 = 4;
      }

      if (v46 == v45)
      {
        v25 = 3;
      }

      else
      {
        v25 = 4;
      }

      *(a1 + 69) = 5;
      *(a1 + 186) = 5;
      *(a1 + 668) = a7;
      *(a1 + 666) = a7;
      *(a1 + 664) = a7;
      *(a1 + 700) = 0;
      *(a1 + 692) = 0;
      v23 = 7;
      v21 = 2;
      v26 = 2;
    }

    else
    {
      v17 = 5;
      *(a1 + 78) = 5;
      *(a1 + 70) = 84215045;
      *(a1 + 74) = 1285;
      LODWORD(v18) = *(a1 + 672);
      v47 = *(a1 + 670);
      v20 = v18 != v47;
      *(a1 + 67) = 2;
      *(a1 + 179) = 2;
      v22 = *(a1 + 674) != v47;
      *(a1 + 69) = 2;
      *(a1 + 186) = 2;
      *(a1 + 664) = vdup_n_s16(a7);
      v23 = 6;
      *(a1 + 692) = 0u;
      v21 = 1;
      v24 = v18 != v47;
      v25 = v22;
      v26 = 1;
    }

    if (a7 != -32768)
    {
      v30 = a6[72];
      if (v30)
      {
        *(v30 + a7 - 1) = v17;
        LOWORD(v18) = *(a1 + 672);
        v17 = *(a1 + 73);
      }
    }

    *(a1 + 71) = 0;
    if (a7 > v18 && a6[74])
    {
      v18 = v18;
      do
      {
        *(a6[74] + v18++) = v17;
      }

      while (v18 != a7);
    }

    *(a1 + 73) = 1;
    if (*(a1 + 674) < a7 && a6[76] != 0)
    {
      v32 = *(a1 + 674);
      v33 = *(a1 + 75);
      do
      {
        *(a6[76] + v32++) = v33;
      }

      while (v32 != a7);
    }

    *(a1 + 75) = 2;
    v34 = *(a1 + 672);
    if (v34 < a7 && (v34 & 0x80000000) == 0 && a6[68])
    {
      v35 = *(a1 + 672);
      do
      {
        v36 = a6[68];
        if (*(v36 + v35) > v20)
        {
          *(v36 + v35) = v20;
        }

        ++v35;
      }

      while (a7 != v35);
      LOWORD(v34) = *(a1 + 672);
    }

    if (a7 > v34 && (v34 & 0x8000) == 0 && a6[180])
    {
      v37 = v34;
      do
      {
        v38 = a6[180];
        if (*(v38 + v37) > v24)
        {
          *(v38 + v37) = v24;
        }

        ++v37;
      }

      while (a7 != v37);
    }

    v39 = *(a1 + 674);
    if (v39 < a7 && (v39 & 0x80000000) == 0 && a6[70])
    {
      v40 = *(a1 + 674);
      do
      {
        v41 = a6[70];
        if (*(v41 + v40) > v22)
        {
          *(v41 + v40) = v22;
        }

        ++v40;
      }

      while (a7 != v40);
      LOWORD(v39) = *(a1 + 674);
    }

    if (a7 > v39 && (v39 & 0x8000) == 0 && a6[187])
    {
      v42 = v39;
      do
      {
        v43 = a6[187];
        if (*(v43 + v42) > v25)
        {
          *(v43 + v42) = v25;
        }

        ++v42;
      }

      while (a7 != v42);
    }

    usextract_updateLastStrAcc(a6, a7, *(a1 + 676), v21);
    return usextract_updateLastStrAccShp(a6, a7, *(a1 + 678), v23, v26);
  }

  return result;
}

uint64_t usextract_updateLastStrAcc(uint64_t result, int a2, int a3, unsigned int a4)
{
  if (a3 >= 1 && a2 >= 1)
  {
    LODWORD(v4) = (a2 - 1);
    if (*(result + 552) && v4 >= a3)
    {
      do
      {
        v6 = *(result + 552);
        v4 = v4;
        v7 = *(v6 + v4);
        if (v7 <= 5 && v7 > a4)
        {
          *(v6 + v4) = a4;
        }

        LODWORD(v4) = (v4 - 1);
      }

      while (v4 >= a3);
    }
  }

  return result;
}

uint64_t usextract_updateLastStrAccShp(uint64_t result, int a2, int a3, unsigned int a4, unsigned int a5)
{
  if (a3 >= 1 && a2 >= 1)
  {
    LODWORD(v5) = (a2 - 1);
    if (*(result + 1432) && v5 >= a3)
    {
      do
      {
        v7 = *(result + 1432);
        v5 = v5;
        v8 = *(v7 + v5);
        v9 = v8 <= 5 && v8 > a5;
        v10 = a5;
        if (v9 || (v8 <= 0xA ? (v11 = v8 > a4) : (v11 = 0), v10 = a4, v11))
        {
          *(v7 + v5) = v10;
        }

        LODWORD(v5) = (v5 - 1);
      }

      while (v5 >= a3);
    }
  }

  return result;
}

uint64_t usextract_setUnknownOnPauses(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    do
    {
      if (*(*(result + 32) + v1) == 35)
      {
        v2 = *(result + 536);
        if (v2)
        {
          *(v2 + v1) = 4;
        }

        v3 = *(result + 1424);
        if (v3)
        {
          *(v3 + v1) = 100;
        }

        v4 = *(result + 544);
        if (v4)
        {
          *(v4 + v1) = 13;
        }

        v5 = *(result + 1440);
        if (v5)
        {
          *(v5 + v1) = 100;
        }

        v6 = *(result + 552);
        if (v6)
        {
          *(v6 + v1) = 9;
        }

        v7 = *(result + 1432);
        if (v7)
        {
          *(v7 + v1) = 100;
        }

        v8 = *(result + 560);
        if (v8)
        {
          *(v8 + v1) = 10;
        }

        v9 = *(result + 1496);
        if (v9)
        {
          *(v9 + v1) = 100;
        }

        v10 = *(result + 568);
        if (v10)
        {
          *(v10 + v1) = 6;
        }

        v11 = *(result + 576);
        if (v11)
        {
          *(v11 + v1) = 6;
        }

        v12 = *(result + 584);
        if (v12)
        {
          *(v12 + v1) = 6;
        }

        v13 = *(result + 632);
        if (v13)
        {
          *(v13 + v1) = 6;
        }

        v14 = *(result + 592);
        if (v14)
        {
          *(v14 + v1) = 6;
        }

        v15 = *(result + 600);
        if (v15)
        {
          *(v15 + v1) = 6;
        }

        v16 = *(result + 608);
        if (v16)
        {
          *(v16 + v1) = 6;
        }

        v17 = *(result + 624);
        if (v17)
        {
          *(v17 + v1) = 3;
        }
      }

      ++v1;
    }

    while (v1 < *(result + 10));
  }

  return result;
}

size_t usextract_setNextDifferentiator(size_t result, uint64_t a2)
{
  if (((*(a2 + 10) - 2) & 0x8000) == 0)
  {
    v3 = result;
    v4 = (*(a2 + 10) - 2);
    do
    {
      v5 = *(a2 + 32);
      if (*(v5 + v4 + 1) == 35)
      {
        result = cstdlib_strlen((v3 + 2400));
        v6 = result + 1;
      }

      else if (*(v5 + v4) == 35)
      {
        v6 = 0;
      }

      else
      {
        if (!*(*(a2 + 112) + v4))
        {
          v7 = *(a2 + 616);
          v6 = *(v7 + v4 + 1);
          goto LABEL_10;
        }

        v6 = *(*(a2 + 264) + v4 + 1);
      }

      v7 = *(a2 + 616);
LABEL_10:
      *(v7 + v4) = v6;
    }

    while (v4-- > 0);
  }

  return result;
}

uint64_t usextract_setPrePostSylBnd(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    do
    {
      if (*(*(result + 32) + v1) == 35)
      {
        *(*(result + 72) + v1) = 1;
        *(*(result + 80) + v1) = 1;
        if (v1 + 1 < *(result + 10))
        {
          *(*(result + 80) + v1 + 1) = 1;
        }
      }

      if (v1 && v1 + 1 < *(result + 10) && *(*(result + 32) + v1 + 1) == 35)
      {
        *(*(result + 112) + v1) = 3;
      }

      if (*(*(result + 112) + v1))
      {
        *(*(result + 72) + v1++) = 1;
        if (v1 < *(result + 10))
        {
          *(*(result + 80) + v1) = 1;
        }
      }

      else
      {
        ++v1;
      }
    }

    while (v1 < *(result + 10));
  }

  return result;
}

uint64_t usextract_setWordPhrs(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    for (i = 0; i < *(result + 10); ++i)
    {
      if (*(*(result + 32) + i) == 35)
      {
        v2 = *(result + 176);
      }

      else
      {
        v3 = *(*(result + 104) + i);
        v2 = *(result + 176);
        if (v3 > 2)
        {
          if (v3 == 3)
          {
            *(v2 + i) = 0;
            continue;
          }

          if (v3 == 4)
          {
            *(v2 + i) = 2;
            continue;
          }
        }

        else
        {
          if (v3 == 1)
          {
            *(v2 + i) = 3;
            continue;
          }

          if (v3 == 2)
          {
            *(v2 + i) = 1;
            continue;
          }
        }
      }

      *(v2 + i) = 4;
    }
  }

  return result;
}

uint64_t usextract_setFineSylPosInPhrs(uint64_t result)
{
  if (((*(result + 10) - 1) & 0x8000) == 0)
  {
    v1 = result;
    v2 = 0;
    v3 = (*(result + 10) - 1);
    do
    {
      if (!v3 || v3 == *(v1 + 10) - 1 || *(*(v1 + 112) + v3) == 3)
      {
        v4 = *(*(v1 + 128) + v3);
        v2 = *(*(v1 + 128) + v3);
      }

      else
      {
        v4 = *(*(v1 + 128) + v3);
      }

      result = usextract_getCurFineSyl(v4, v2);
      *(*(v1 + 144) + v3) = result;
    }

    while (v3-- > 0);
  }

  return result;
}

uint64_t usextract_finalizeSylType(uint64_t result)
{
  LOWORD(v1) = *(result + 10) - 1;
  if ((v1 & 0x8000) == 0)
  {
    v2 = 0;
    v3 = 0;
    v1 = v1;
    while (1)
    {
      v4 = v2;
      if (*(*(result + 112) + v1) == 3)
      {
        ++v3;
        v2 = 0;
      }

      if (*(*(result + 88) + v1) != 3)
      {
        goto LABEL_16;
      }

      if (*(*(result + 112) + v1))
      {
        ++v2;
      }

      else
      {
        v2 = v4;
      }

      if (v2 != 1)
      {
        goto LABEL_16;
      }

      v5 = *(result + 160);
      if (v3 == 1)
      {
        break;
      }

      if (*(v5 + v1) == 2)
      {
        v6 = 5;
        goto LABEL_14;
      }

LABEL_15:
      v2 = 1;
LABEL_16:
      v7 = *(result + 160);
      if (*(v7 + v1) == 4 && *(*(result + 144) + v1) == 4 && !*(*(result + 128) + v1))
      {
        if (v3 == 1)
        {
          v8 = 6;
        }

        else
        {
          v8 = 5;
        }

        *(v7 + v1) = v8;
      }

      if (v1-- <= 0)
      {
        return result;
      }
    }

    v6 = 6;
LABEL_14:
    *(v5 + v1) = v6;
    goto LABEL_15;
  }

  return result;
}

uint64_t usextract_setSylPos(uint64_t result, int a2)
{
  if (((*(result + 10) - 1) & 0x8000) == 0)
  {
    v2 = (*(result + 10) - 1) + 1;
    do
    {
      v3 = v2 - 1;
      if (*(*(result + 32) + v2 - 1) == 35)
      {
        v4 = *(result + 152) + v2;
      }

      else
      {
        if (*(*(result + 144) + v2 - 1) != 4)
        {
          if (*(*(result + 128) + v2 - 1))
          {
            v5 = *(*(result + 96) + v2 - 1);
            switch(v5)
            {
              case 3:
                *(*(result + 152) + v2 - 1) = 6;
                break;
              case 2:
                *(*(result + 152) + v2 - 1) = 5;
                break;
              case 1:
                *(*(result + 152) + v2 - 1) = 4;
                break;
            }
          }

          else
          {
            *(*(result + 152) + v2 - 1) = 0;
          }

          goto LABEL_6;
        }

        if (!*(*(result + 128) + v2 - 1))
        {
          *(*(result + 152) + v2 - 1) = 2;
          goto LABEL_6;
        }

        v4 = *(result + 152) + v2;
        if (v3 < a2)
        {
          *(v4 - 1) = 1;
          goto LABEL_6;
        }
      }

      *(v4 - 1) = 3;
LABEL_6:
      v2 = v3;
    }

    while (v3 > 0);
  }

  return result;
}

uint64_t usextract_finalizeNrSylInPhrs(uint64_t result)
{
  LOWORD(v1) = *(result + 10) - 1;
  if ((v1 & 0x8000) == 0)
  {
    v1 = v1;
    LOBYTE(v2) = 1;
    do
    {
      v3 = *(result + 128);
      if (*(*(result + 112) + v1) == 3)
      {
        v2 = *(v3 + v1);
        if (v2 != 255)
        {
          *(v3 + v1) = v2 + 1;
          LOBYTE(v2) = *(*(result + 128) + v1);
        }
      }

      else
      {
        *(v3 + v1) = v2;
      }
    }

    while (v1-- > 0);
  }

  return result;
}

uint64_t usextract_finalizePhnCntSyl(uint64_t result)
{
  if (((*(result + 10) - 1) & 0x8000) == 0)
  {
    v1 = (*(result + 10) - 1);
    v2 = 1;
    do
    {
      if (*(*(result + 32) + v1) == 35)
      {
        *(*(result + 192) + v1) = 1;
      }

      else
      {
        v3 = *(result + 192);
        if (*(*(result + 112) + v1))
        {
          v2 = *(v3 + v1);
        }

        else
        {
          *(v3 + v1) = v2;
        }
      }
    }

    while (v1-- > 0);
  }

  return result;
}

uint64_t usextract_setNrSylInIP4(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = -1;
    v3 = 0xFFFFLL;
    v4 = 1;
    v5 = 1;
    do
    {
      v6 = *(*(result + 576) + v1);
      if (v6 <= 7)
      {
        if (((1 << v6) & 0x36) != 0)
        {
          if (((v4 + 1) & 0x100) != 0)
          {
            v4 = -1;
          }

          else
          {
            ++v4;
          }

          if (((v5 + 1) & 0x100) != 0)
          {
            v5 = -1;
          }

          else
          {
            ++v5;
          }
        }

        else
        {
          v7 = v1;
          if (((1 << v6) & 0xC0) != 0)
          {
            LOWORD(v8) = v3 + 1;
            v9 = v1 + 1;
            if (v1 >= v8 && *(result + 1416))
            {
              v8 = v8;
              do
              {
                *(*(result + 1416) + v8++) = v4;
              }

              while (v9 != v8);
            }

            LOWORD(v10) = v2 + 1;
            v4 = 1;
            if (v1 >= v10 && *(result + 1408))
            {
              v10 = v10;
              do
              {
                *(*(result + 1408) + v10++) = v5;
              }

              while (v9 != v10);
              v5 = 1;
              v4 = 1;
            }

            else
            {
              v5 = 1;
            }

            v2 = v1;
            goto LABEL_33;
          }

          if (v6 == 3)
          {
            LOWORD(v11) = v3 + 1;
            if (v1 >= (v3 + 1) && *(result + 1416))
            {
              v11 = v11;
              do
              {
                *(*(result + 1416) + v11++) = v4;
              }

              while (v1 + 1 != v11);
            }

            if (((v5 + 1) & 0x100) != 0)
            {
              v5 = -1;
            }

            else
            {
              ++v5;
            }

            v4 = 1;
            goto LABEL_33;
          }
        }
      }

      v7 = v3;
LABEL_33:
      ++v1;
      v3 = v7;
    }

    while (v1 < *(result + 10));
  }

  return result;
}

uint64_t usextract_setSylNrInIP4(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = 0;
    v3 = -1;
    do
    {
      v4 = *(*(result + 576) + v1);
      if (v4 <= 7)
      {
        if (((1 << v4) & 0xE) != 0)
        {
          if (((v2 + 1) & 0x100) != 0)
          {
            v2 = -1;
          }

          else
          {
            ++v2;
          }

          goto LABEL_21;
        }

        if (((1 << v4) & 0xB0) != 0)
        {
          LOWORD(v5) = v3 + 1;
          if (v1 >= (v3 + 1) && *(result + 1456))
          {
            v5 = v5;
            do
            {
              *(*(result + 1456) + v5++) = v2;
            }

            while (v1 + 1 != v5);
          }

LABEL_19:
          v2 = 0;
          goto LABEL_20;
        }

        if (v4 == 6)
        {
          v2 = 0;
          LOWORD(v6) = v3 + 1;
          if (v1 >= v6 && *(result + 1456))
          {
            v6 = v6;
            do
            {
              *(*(result + 1456) + v6++) = 0;
            }

            while (v1 + 1 != v6);
            goto LABEL_19;
          }

LABEL_20:
          v3 = v1;
        }
      }

LABEL_21:
      ++v1;
    }

    while (v1 < *(result + 10));
  }

  return result;
}

uint64_t usextract_finalizeFineSylPosInIP4(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = 0xFFFFLL;
    while (1)
    {
      v5 = *(*(v1 + 576) + v2);
      if (v5 > 7)
      {
        break;
      }

      if (((1 << v5) & 0xE) != 0)
      {
        v10 = v4 + 1;
        v7 = v2 + 1;
        v11 = *(v1 + 1456);
        v12 = v3;
        result = usextract_getCurFineSyl(v3, *(v11 + v2));
        if (v2 >= v10 && v11)
        {
          v13 = v10;
          do
          {
            *(*(v1 + 1456) + v13++) = result;
          }

          while (v7 != v13);
        }

        if (((v12 + 1) & 0x100) != 0)
        {
          v3 = -1;
        }

        else
        {
          v3 = v12 + 1;
        }

        goto LABEL_25;
      }

      if (((1 << v5) & 0xB0) != 0)
      {
        v6 = v4 + 1;
        v7 = v2 + 1;
        v8 = *(v1 + 1456);
        result = usextract_getCurFineSyl(v3, *(v8 + v2));
        v3 = 0;
        if (v2 < v6 || !v8)
        {
          goto LABEL_25;
        }

        v9 = v6;
        do
        {
          *(*(v1 + 1456) + v9++) = result;
        }

        while (v7 != v9);
      }

      else
      {
        if (v5 != 6)
        {
          break;
        }

        v3 = 0;
        v14 = v4 + 1;
        v7 = v2 + 1;
        if (v2 < v14 || !*(v1 + 1456))
        {
          goto LABEL_25;
        }

        v15 = v14;
        do
        {
          *(*(v1 + 1456) + v15++) = 7;
        }

        while (v7 != v15);
      }

      v3 = 0;
LABEL_25:
      v4 = v2;
      v2 = v7;
      if (v7 >= *(v1 + 10))
      {
        return result;
      }
    }

    v7 = v2 + 1;
    v2 = v4;
    goto LABEL_25;
  }

  return result;
}

uint64_t usextract_setSylStressedPrm(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = -1;
    while (1)
    {
      v3 = *(*(result + 576) + v1);
      if ((v3 - 1) < 5)
      {
        break;
      }

      if (v3 == 6)
      {
        v7 = v1 + 1;
        v13 = (v2 + 1);
        if (v1 >= v13 && *(result + 1472))
        {
          v14 = v13;
          do
          {
            *(*(result + 1472) + v14++) = 0;
          }

          while (v7 != v14);
        }

        if (v1 >= v13 && *(result + 1464))
        {
          do
          {
            *(*(result + 1464) + v13++) = 0;
          }

          while (v7 != v13);
        }

        goto LABEL_31;
      }

      if (v3 == 7)
      {
        break;
      }

      v7 = v1 + 1;
LABEL_32:
      v1 = v7;
      if (v7 >= *(result + 10))
      {
        return result;
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      v4 = *(result + 1472);
    }

    else
    {
      v4 = *(result + 1472);
      if (*(*(result + 1432) + v2) <= 0xBu)
      {
        LOWORD(v5) = v2 + 1;
        if (v1 >= (v2 + 1) && v4)
        {
          v6 = *(*(result + 1424) + v2);
          v5 = v5;
          do
          {
            *(*(result + 1472) + v5++) = v6;
          }

          while (v1 + 1 != v5);
        }

        goto LABEL_19;
      }
    }

    LOWORD(v8) = v2 + 1;
    if (v1 >= (v2 + 1) && v4)
    {
      v8 = v8;
      do
      {
        *(*(result + 1472) + v8++) = 0;
      }

      while (v1 + 1 != v8);
    }

LABEL_19:
    v7 = v1 + 1;
    if (*(result + 10) - 1 <= v1)
    {
      v9 = *(result + 1464);
    }

    else
    {
      v9 = *(result + 1464);
      if (*(*(result + 1432) + v7) <= 0xBu)
      {
        if ((v2 + 1) < v7 && v9)
        {
          v10 = *(*(result + 1424) + v7);
          v11 = (v2 + 1);
          do
          {
            *(*(result + 1464) + v11++) = v10;
          }

          while (v11 != v7);
        }

LABEL_31:
        v2 = v1;
        goto LABEL_32;
      }
    }

    LOWORD(v12) = v2 + 1;
    if (v1 >= v12 && v9)
    {
      v12 = v12;
      do
      {
        *(*(result + 1464) + v12++) = 0;
      }

      while (v7 != v12);
    }

    goto LABEL_31;
  }

  return result;
}

uint64_t usextract_setWrdBndTone(uint64_t result)
{
  v1 = *(result + 10);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = -1;
    while (1)
    {
      v4 = *(result + 576);
      v5 = *(v4 + v2);
      if ((v5 - 2) < 4)
      {
        break;
      }

      if (v5 == 6)
      {
        v10 = v2 + 1;
        v19 = (v3 + 1);
        if (v2 >= v19 && *(result + 1488))
        {
          v20 = (v3 + 1);
          do
          {
            *(*(result + 1488) + v20++) = 0;
          }

          while (v10 != v20);
        }

        if (v2 >= v19 && *(result + 1480))
        {
          do
          {
            *(*(result + 1480) + v19++) = 0;
          }

          while (v10 != v19);
        }

        goto LABEL_33;
      }

      if (v5 == 7)
      {
        break;
      }

      v10 = v2 + 1;
LABEL_34:
      LOWORD(v1) = *(result + 10);
      v2 = v10;
      if (v10 >= v1)
      {
        return result;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v6 = *(v4 + v3);
      if (v3)
      {
        v7 = v6 == 6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      v9 = *(*(result + 1400) + v3 - v8);
    }

    LODWORD(v11) = (v3 + 1);
    v10 = v2 + 1;
    v12 = (v2 + 1);
    if (v11 < (v2 + 1) && *(result + 1488))
    {
      v13 = v11;
      do
      {
        *(*(result + 1488) + v13++) = v9;
      }

      while (v12 != v13);
      LOWORD(v1) = *(result + 10);
    }

    if (v2 >= v1 - 1)
    {
      v18 = 0;
    }

    else
    {
      v14 = v2 < v1 - 2 && *(*(result + 576) + v10) == 6;
      v15 = *(result + 1400);
      v16 = v15 + v2 + 2;
      v17 = (v15 + v10);
      if (v14)
      {
        v17 = v16;
      }

      v18 = *v17;
    }

    if (v11 < v12 && *(result + 1480))
    {
      v11 = v11;
      do
      {
        *(*(result + 1480) + v11++) = v18;
      }

      while (v12 != v11);
    }

LABEL_33:
    v3 = v2;
    goto LABEL_34;
  }

  return result;
}

uint64_t usextract_setIP4PosInSent(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = 1;
    v3 = -1;
    v4 = -1;
    v5 = 1;
    do
    {
      v6 = *(*(result + 576) + v1);
      if (v6 <= 4)
      {
        if (v6 == 3)
        {
          LOWORD(v15) = v4 + 1;
          v8 = v1 + 1;
          if (v1 >= v15 && *(result + 1512))
          {
            v15 = v15;
            do
            {
              *(*(result + 1512) + v15++) = v2;
            }

            while (v8 != v15);
          }

          v2 = 0;
          v4 = v1;
          goto LABEL_39;
        }

        if (v6 == 4)
        {
LABEL_7:
          LOWORD(v7) = v4 + 1;
          v8 = v1 + 1;
          if (v1 >= (v4 + 1) && *(result + 1512))
          {
            v7 = v7;
            do
            {
              *(*(result + 1512) + v7++) = 2;
            }

            while (v8 != v7);
          }

          v9 = v3 + 1;
          v2 = 1;
          if (v1 >= v9 && *(result + 1504))
          {
            v10 = v9;
            do
            {
              *(*(result + 1504) + v10++) = v5;
            }

            while (v8 != v10);
            v5 = 0;
            v2 = 1;
          }

          else
          {
            v5 = 0;
          }

LABEL_38:
          v4 = v1;
          v3 = v1;
          goto LABEL_39;
        }
      }

      else
      {
        switch(v6)
        {
          case 5u:
            LOWORD(v11) = v4 + 1;
            v8 = v1 + 1;
            if (v1 >= v11 && *(result + 1512))
            {
              v11 = v11;
              do
              {
                *(*(result + 1512) + v11++) = 2;
              }

              while (v8 != v11);
            }

            LOWORD(v12) = v3 + 1;
            if (v1 >= v12 && *(result + 1504))
            {
              v12 = v12;
              do
              {
                *(*(result + 1504) + v12++) = 2;
              }

              while (v8 != v12);
            }

            goto LABEL_38;
          case 6u:
            LOWORD(v13) = v4 + 1;
            v8 = v1 + 1;
            if (v1 >= v13 && *(result + 1512))
            {
              v13 = v13;
              do
              {
                *(*(result + 1512) + v13++) = 100;
              }

              while (v8 != v13);
            }

            LOWORD(v14) = v3 + 1;
            if (v1 >= v14 && *(result + 1504))
            {
              v14 = v14;
              do
              {
                *(*(result + 1504) + v14++) = 100;
              }

              while (v8 != v14);
            }

            goto LABEL_38;
          case 7u:
            goto LABEL_7;
        }
      }

      v8 = v1 + 1;
LABEL_39:
      v1 = v8;
    }

    while (v8 < *(result + 10));
  }

  return result;
}

uint64_t usextract_setRhythmRelated(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0xFFFFLL;
    do
    {
      v11 = *(*(result + 576) + v1);
      if ((v11 - 1) < 5)
      {
        goto LABEL_4;
      }

      if (v11 == 6)
      {
        v15 = v1 + 1;
        v23 = (v10 + 1);
        if (v1 >= v23 && *(result + 1528))
        {
          v24 = (v10 + 1);
          do
          {
            *(*(result + 1528) + v24++) = 100;
          }

          while (v15 != v24);
        }

        if (v1 >= v23 && *(result + 1544))
        {
          v25 = (v10 + 1);
          do
          {
            *(*(result + 1544) + v25++) = 100;
          }

          while (v15 != v25);
        }

        if (v1 >= v23 && *(result + 1560))
        {
          v26 = (v10 + 1);
          do
          {
            *(*(result + 1560) + v26++) = 100;
          }

          while (v15 != v26);
        }

        v9 = 0;
        if (v1 >= v23 && *(result + 1576))
        {
          do
          {
            *(*(result + 1576) + v23++) = 100;
          }

          while (v15 != v23);
          v9 = 0;
          v8 = 0;
          v7 = 0;
          v6 = 0;
          v5 = 0;
          v4 = 0;
          v3 = 0;
          v2 = 0;
        }

        else
        {
          v8 = 0;
          v7 = 0;
          v6 = 0;
          v5 = 0;
          v4 = 0;
          v3 = 0;
          v2 = 0;
        }

        goto LABEL_68;
      }

      if (v11 == 7)
      {
LABEL_4:
        v12 = *(*(result + 1432) + v1);
        if (v12 > 0xB)
        {
          v9 = 0;
          v5 = 1;
        }

        v13 = (v12 - 1);
        if (v13 < 0xB)
        {
          v8 = 0;
          v4 = 1;
        }

        if (v13 < 0xA)
        {
          v7 = 0;
          v3 = 1;
        }

        v14 = v12 - 6;
        if ((v12 - 6) >= 0xFBu)
        {
          v6 = 0;
        }

        v15 = v1 + 1;
        v16 = (v10 + 1);
        if (v1 >= v16 && *(result + 1528))
        {
          v17 = v16;
          do
          {
            *(*(result + 1528) + v17++) = v9;
          }

          while (v15 != v17);
        }

        if (v1 >= v16 && *(result + 1544))
        {
          v18 = v16;
          do
          {
            *(*(result + 1544) + v18++) = v8;
          }

          while (v15 != v18);
        }

        if (v1 >= v16 && *(result + 1560))
        {
          v19 = v16;
          do
          {
            *(*(result + 1560) + v19++) = v7;
          }

          while (v15 != v19);
        }

        if (v1 >= v16 && *(result + 1576))
        {
          do
          {
            *(*(result + 1576) + v16++) = v6;
          }

          while (v15 != v16);
        }

        if (v9 != -1 && v5 != 0)
        {
          ++v9;
        }

        if (v8 != -1 && v4 != 0)
        {
          ++v8;
        }

        if (v7 != -1 && v3 != 0)
        {
          ++v7;
        }

        if (v14 > 0xFAu || v2)
        {
          if (((v6 + 1) & 0x100) != 0)
          {
            v6 = -1;
          }

          else
          {
            ++v6;
          }

          v2 = 1;
        }
      }

      else
      {
        v15 = v1 + 1;
        v1 = v10;
      }

LABEL_68:
      v10 = v1;
      v1 = v15;
    }

    while (v15 < *(result + 10));
  }

  return result;
}

uint64_t usextract_setRhythmRelatedBackward(uint64_t result)
{
  v1 = *(result + 10);
  LOWORD(v2) = v1 - 1;
  if (((v1 - 1) & 0x8000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v2 = v2;
    do
    {
      v11 = *(*(result + 568) + v2);
      if ((v11 - 1) >= 5)
      {
        if (v11 == 6)
        {
          if (v2 < v1 && *(result + 1520))
          {
            v23 = v2;
            do
            {
              *(*(result + 1520) + v23++) = 100;
            }

            while (v1 != v23);
          }

          if (v2 < v1 && *(result + 1536))
          {
            v24 = v2;
            do
            {
              *(*(result + 1536) + v24++) = 100;
            }

            while (v1 != v24);
          }

          if (v2 < v1 && *(result + 1552))
          {
            v25 = v2;
            do
            {
              *(*(result + 1552) + v25++) = 100;
            }

            while (v1 != v25);
          }

          v10 = 0;
          if (v2 < v1 && *(result + 1568))
          {
            v26 = v2;
            do
            {
              *(*(result + 1568) + v26++) = 100;
            }

            while (v1 != v26);
            v10 = 0;
            v9 = 0;
            v8 = 0;
            v7 = 0;
            v6 = 0;
            v5 = 0;
            v4 = 0;
            v3 = 0;
          }

          else
          {
            v9 = 0;
            v8 = 0;
            v7 = 0;
            v6 = 0;
            v5 = 0;
            v4 = 0;
            v3 = 0;
          }

          goto LABEL_49;
        }

        if (v11 != 7)
        {
          continue;
        }
      }

      v12 = *(*(result + 1432) + v2);
      if (v12 > 0xB)
      {
        v10 = 0;
        v6 = 1;
      }

      v13 = (v12 - 1);
      if (v13 < 0xB)
      {
        v9 = 0;
        v5 = 1;
      }

      if (v13 < 0xA)
      {
        v8 = 0;
        v4 = 1;
      }

      v14 = v12 - 6;
      if (v14 >= 0xFBu)
      {
        v7 = 0;
      }

      if (v2 < v1 && *(result + 1520))
      {
        v15 = v2;
        do
        {
          *(*(result + 1520) + v15++) = v10;
        }

        while (v1 != v15);
      }

      if (v2 < v1 && *(result + 1536))
      {
        v16 = v2;
        do
        {
          *(*(result + 1536) + v16++) = v9;
        }

        while (v1 != v16);
      }

      if (v2 < v1 && *(result + 1552))
      {
        v17 = v2;
        do
        {
          *(*(result + 1552) + v17++) = v8;
        }

        while (v1 != v17);
      }

      if (v2 < v1 && *(result + 1568))
      {
        v18 = v2;
        do
        {
          *(*(result + 1568) + v18++) = v7;
        }

        while (v1 != v18);
      }

      if (v10 != -1 && v6 != 0)
      {
        ++v10;
      }

      if (v9 != -1 && v5 != 0)
      {
        ++v9;
      }

      if (v8 != -1 && v4 != 0)
      {
        ++v8;
      }

      if (v14 > 0xFAu || v3)
      {
        if (((v7 + 1) & 0x100) != 0)
        {
          v7 = -1;
        }

        else
        {
          ++v7;
        }

        v3 = 1;
      }

LABEL_49:
      v1 = v2;
    }

    while (v2-- > 0);
  }

  return result;
}

uint64_t usextract_finalizeFineSylBndShape(uint64_t result)
{
  v1 = *(result + 10);
  LOWORD(v2) = v1 - 1;
  if (((v1 - 1) & 0x8000) == 0)
  {
    v3 = 0;
    v2 = v2;
    v4 = 1;
    v5 = 1;
    do
    {
      v6 = *(*(result + 568) + v2);
      if (v6 <= 7)
      {
        v7 = v2;
        if (((1 << v6) & 0xB8) != 0)
        {
          v8 = *(result + 1584);
          if (v5 && !v3)
          {
            v3 = *(v8 + v2);
            if (v4)
            {
              v3 += 100;
            }

            v4 = 0;
          }

          v5 = 1;
          if (v2 < v1 && v8)
          {
            v9 = v2;
            do
            {
              *(*(result + 1584) + v9++) = v3;
            }

            while (v1 != v9);
            v3 = 0;
            v5 = 1;
          }

          else
          {
            v3 = 0;
          }

          goto LABEL_36;
        }

        if (((1 << v6) & 6) != 0)
        {
          v10 = *(result + 1584);
          if (v5 && !v3)
          {
            v3 = *(v10 + v2);
            if (v4)
            {
              v3 += 100;
            }

            v4 = 0;
          }

          if (v2 < v1 && v10)
          {
            v11 = v2;
            do
            {
              *(*(result + 1584) + v11++) = v3;
            }

            while (v1 != v11);
          }

          if (*(*(result + 1432) + v2) - 1 < 0xA)
          {
            v3 = 0;
            v5 = 0;
          }

          goto LABEL_36;
        }

        if (v6 == 6)
        {
          if (v2 < v1 && *(result + 1584))
          {
            v12 = v2;
            do
            {
              *(*(result + 1584) + v12++) = 0;
            }

            while (v1 != v12);
          }

          goto LABEL_36;
        }
      }

      v7 = v1;
LABEL_36:
      v1 = v7;
    }

    while (v2-- > 0);
  }

  return result;
}

uint64_t usextract_setSylIndexInWordFromStart(uint64_t result)
{
  if (*(result + 10) >= 1)
  {
    **(result + 1384) = 0;
    if (*(result + 10) >= 3)
    {
      v1 = 1;
      v2 = 1;
      do
      {
        v3 = *(result + 32);
        if (*(v3 + v2) == 35)
        {
          v4 = 0;
        }

        else
        {
          v5 = v1 - 1;
          v6 = *(*(result + 112) + v5);
          if (v6 <= 1 && *(v3 + v5) != 35)
          {
            v7 = *(result + 1384);
            v4 = *(v7 + v5);
            if (v6 == 1 && v4 < 7u)
            {
              ++v4;
            }

            goto LABEL_10;
          }

          v4 = 1;
        }

        v7 = *(result + 1384);
LABEL_10:
        *(v7 + v2++) = v4;
        v1 = v2;
      }

      while (*(result + 10) - 1 > v2);
    }
  }

  return result;
}

uint64_t usextract_setSylIndexInWordFromEnd(uint64_t result)
{
  v1 = *(result + 10);
  if (v1 >= 1)
  {
    *(*(result + 1392) + (v1 - 1)) = 0;
    LOWORD(v1) = *(result + 10);
  }

  LOWORD(v1) = v1 - 2;
  if ((v1 & 0x8000) == 0)
  {
    v1 = v1;
    do
    {
      if (*(*(result + 32) + v1) == 35)
      {
        *(*(result + 1392) + v1) = 0;
      }

      else
      {
        v2 = *(*(result + 112) + v1);
        if (v2 < 2)
        {
          v3 = (*(result + 1392) + v1);
          v4 = v3[1];
          v5 = v2 != 1 || v4 > 6;
          if (v5)
          {
            *v3 = v4;
          }

          else
          {
            *v3 = v4 + 1;
          }
        }

        else
        {
          *(*(result + 1392) + v1) = 1;
        }
      }

      v5 = v1-- <= 0;
    }

    while (!v5);
  }

  return result;
}

uint64_t usextract_setSylPosInWordRelEnd(uint64_t result)
{
  LOWORD(v1) = *(result + 10) - 1;
  if ((v1 & 0x8000) == 0)
  {
    v1 = v1;
    do
    {
      if (*(*(result + 32) + v1) == 35 || (v2 = *(*(result + 112) + v1), (v2 - 2) < 2))
      {
        *(*(result + 304) + v1) = 1;
      }

      else if (v2 == 1)
      {
        *(*(result + 304) + v1) = *(*(result + 304) + v1 + 1) + 1;
      }

      else if (v1 + 1 < *(result + 10))
      {
        *(*(result + 304) + v1) = *(*(result + 304) + (v1 + 1));
      }
    }

    while (v1-- > 0);
  }

  return result;
}

void *usextract_setSylPosInSenRelStr(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a2;
  if (a2 < 0)
  {
    v3 = *(a1 + 10) - 1;
  }

  v5 = *(a1 + 10);
  if ((a3 & 0x80000000) == 0)
  {
    if (v5 <= a3)
    {
      v6 = 0;
    }

    else
    {
      a3 = a3;
      while (*(*(a1 + 72) + a3) != 1)
      {
        if (v5 <= ++a3)
        {
          v6 = 0;
          LOWORD(a3) = *(a1 + 10);
          goto LABEL_11;
        }
      }

      v6 = 1;
    }

LABEL_11:
    LOWORD(v5) = a3 + v6;
  }

  v7 = *(a1 + 296);
  v8 = v5;
  if (v5 >= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  result = cstdlib_memset(v7, 1, v9);
  if (v8 < v3)
  {
    result = cstdlib_memset((*(a1 + 296) + v8), 2, (v3 - v8) & ~((v3 - v8) >> 31));
  }

  v11 = *(a1 + 10);
  if (v11 > v3)
  {
    v12 = (*(a1 + 296) + v3);

    return cstdlib_memset(v12, 3, (v11 - v3) & ~((v11 - v3) >> 31));
  }

  return result;
}

uint64_t usextract_setPitchAndDurFromCart(uint64_t result, uint64_t a2)
{
  if (*(a2 + 10) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 2144;
    v6 = result + 859;
    do
    {
      v7 = *(v5 + *(*(a2 + 32) + v4));
      if ((*(v3 + 3068) & 0x80000000) == 0 && *(v6 + v7) == 118)
      {
        v8 = *(a2 + 1712);
        if (v8)
        {
          v9 = v8 + v4;
        }

        else
        {
          v9 = 0;
        }

        v10 = *(a2 + 1720);
        if (v10)
        {
          v11 = v10 + v4;
        }

        else
        {
          v11 = 0;
        }

        result = (*(v3 + 28168))(v3 + 28176, v3 + 28200, 0, a2, v4, *(a2 + 216) + v4, *(a2 + 224) + v4, v9, v11);
      }

      if ((*(v3 + 3072) & 0x80000000) == 0)
      {
        v12 = *(a2 + 1728);
        if (v12)
        {
          v13 = v12 + v4;
        }

        else
        {
          v13 = 0;
        }

        v14 = *(a2 + 1736);
        if (v14)
        {
          v15 = v14 + v4;
        }

        else
        {
          v15 = 0;
        }

        result = (*(v3 + 28168))(v3 + 28208, *(v3 + 28232) + 8 * v7, 1, a2, v4, *(a2 + 232) + v4, *(a2 + 240) + v4, v13, v15);
      }

      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  return result;
}

uint64_t usextract_setSylTrans(uint64_t result, uint64_t a2)
{
  if (*(a2 + 10) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(a2 + 248);
    v5 = *(result + 3528);
    v6 = *(a2 + 80);
    v7 = 1;
    do
    {
      v8 = *(v4 + v2);
      if (*(v6 + v2) == 1)
      {
        v7 = 1;
      }

      v9 = *(v5 + 2 * v8);
      v10 = *(v5 + 2 + 2 * v8);
      if (v9 < v10)
      {
        v11 = *(result + 1116 + *(result + 2144 + *(*(a2 + 32) + v2))) == 86 && v7 == 1;
        if (v11)
        {
          if (v3)
          {
            v12 = v3;
            if ((*(result + 3392) & 0x80000000) != 0)
            {
              v17 = *(a2 + 160);
              v18 = *(v17 + v3);
              v15 = (*(result + 3544) + 16 * v9);
              v19 = v9 + 1;
              while (1)
              {
                if (v18 == v15[4])
                {
                  v20 = *(a2 + 152);
                  if (*(v20 + v12) == v15[5] && *(v17 + v2) == v15[6] && *(v20 + v2) == v15[7])
                  {
                    break;
                  }
                }

                v15 += 8;
                v11 = v10 == v19++;
                if (v11)
                {
                  goto LABEL_26;
                }
              }
            }

            else
            {
              v13 = *(a2 + 264);
              v14 = *(v13 + v3);
              v15 = (*(result + 3536) + 12 * v9);
              v16 = v9 + 1;
              while (v14 != v15[4] || *(v13 + v2) != v15[5])
              {
                v15 += 6;
                v11 = v10 == v16++;
                if (v11)
                {
                  goto LABEL_26;
                }
              }
            }

            v7 = 0;
            v21 = *(a2 + 3552);
            v24 = (v21 + 8 * v2);
            *v24 = *v15;
            v24[1] = v15[1];
            v24[2] = v15[2];
            v23 = v15[3];
            v3 = v2;
            goto LABEL_28;
          }

LABEL_26:
          v7 = 0;
          v3 = v2;
        }
      }

      v21 = *(a2 + 3552);
      v22 = v21 + 8 * v2;
      *v22 = -13041864;
      v23 = 200;
      *(v22 + 4) = 200;
LABEL_28:
      *(v21 + 8 * v2++ + 6) = v23;
    }

    while (v2 < *(a2 + 10));
  }

  return result;
}

__int16 *usextract_setSylChunk(__int16 *result)
{
  v1 = result[5];
  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      v5 = 9 * v3;
      if (v3 + 1 == v1)
      {
        v6 = (*(v2 + 445) + v5);
        v6[5] = *(*(v2 + 4) + v3 - 1);
        v6[6] = 35;
        *v6 = 35;
      }

      else if (*(*(v2 + 10) + v3) == 1)
      {
        v7 = *(v2 + 4);
        if (v3)
        {
          v8 = *(v7 + v3 - 1);
        }

        else
        {
          v8 = 35;
        }

        v10 = (*(v2 + 445) + v5);
        v10[5] = v8;
        v11 = *(v7 + v3);
        *v10 = v11;
        *(*(v2 + 445) + v5 + 7) = v11;
        v12 = v2[5];
        if (v3)
        {
          if (v4 >= v2[5] || *(*(v2 + 14) + v3))
          {
            v13 = v3;
          }

          else
          {
            v18 = 1;
            v13 = v3;
            do
            {
              if (v18 > 4)
              {
                if (v18 == 5)
                {
                  result = cstdlib_memset((*(v2 + 445) + v5), 0, 9uLL);
                }
              }

              else
              {
                *(*(v2 + 445) + v5 + v18) = *(*(v2 + 4) + v4);
              }

              v4 = ++v13 + 1;
              v12 = v2[5];
              if (v4 >= v12)
              {
                break;
              }

              ++v18;
            }

            while (!*(*(v2 + 14) + v13));
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = v13 + 1;
        v15 = *(v2 + 4);
        if (v14 >= v12)
        {
          v16 = 35;
        }

        else
        {
          v16 = *(v15 + v14);
        }

        v17 = *(v2 + 445) + v5;
        *(v17 + 6) = v16;
        *(v17 + 8) = *(v15 + v13);
      }

      else
      {
        v9 = *(v2 + 445) + v5;
        *v9 = *(v9 - 9);
        *(v9 + 8) = *(v9 - 1);
      }

      ++v3;
      LOWORD(v1) = v2[5];
    }

    while (v3 < v1);
  }

  return result;
}

uint64_t usextract_applyGenericContextRules(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 3520);
  if (v2)
  {
    v3 = *(a2 + 10);
    if (v3 >= 2)
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = *(a1 + 3520);
        if (v6)
        {
          break;
        }

LABEL_62:
        v2 = 0;
        v4 = ++v5;
        if (v3 - 1 <= v5)
        {
          return v2;
        }
      }

      while (1)
      {
        for (i = *v6; i; i = *(i + 40))
        {
          v8 = v5 + *(i + 2);
          if (v8 < 0 || *(a2 + 10) <= v8)
          {
            if (*(i + 1) != 2)
            {
              goto LABEL_60;
            }

            v10 = 35;
          }

          else
          {
            v9 = (*i ? *(a2 + 3504) + 8 * *(i + 1) : a2 + 16 + 8 * *(i + 1));
            v10 = *(*v9 + v8);
          }

          if (((*(i + (v10 >> 3) + 3) >> (v10 & 7)) & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        v11 = v6[1];
        if (v11)
        {
          break;
        }

LABEL_60:
        v6 = v6[2];
        if (!v6)
        {
          LOWORD(v3) = *(a2 + 10);
          goto LABEL_62;
        }
      }

      while (1)
      {
        v12 = *v11;
        if (*v11 > 4)
        {
          break;
        }

        if (v12 > 2)
        {
          if (v12 != 3)
          {
            if (v12 != 4)
            {
              return 2229280769;
            }

            *(*(a2 + 3600) + *(v11 + 4) + *(*a2 + 2966) * v4) = *(v11 + 8);
            goto LABEL_59;
          }

          v13 = 0;
          v14 = *(a2 + 3592);
LABEL_37:
          v19 = *(*a2 + 3360);
LABEL_38:
          v18 = (v14 + 4 * (*(v11 + 4) + v4 * v19));
          if (!v18)
          {
            goto LABEL_59;
          }

          goto LABEL_39;
        }

        if (v12 != 1)
        {
          if (v12 != 2)
          {
            return 2229280769;
          }

          v13 = 0;
          v14 = *(a2 + 3584);
          goto LABEL_37;
        }

        v17 = *(v11 + 4) + v4 * *(*a2 + 2966);
        v18 = (*(a2 + 3568) + 4 * v17);
        v13 = (*(a2 + 3576) + 4 * v17);
        if (!v18)
        {
          goto LABEL_59;
        }

LABEL_39:
        v20 = *(v11 + 8);
        if (v20 == 10)
        {
          *v18 *= 5;
          if (v13)
          {
            *v13 *= 5;
          }

          v20 = *(v11 + 8);
        }

        if (!v20)
        {
          *v18 = 0;
          if (v13)
          {
            *v13 = 0;
          }

          goto LABEL_59;
        }

        v21 = *v18;
        if (*v18 < 0x80000000 / v20)
        {
          *v18 = v21 * v20 / 0xA;
          if (v13)
          {
            *v13 = *(v11 + 8) * *v13 / 0xA;
          }

          goto LABEL_59;
        }

        if (v21 % 0xA && (!(v20 % 0xA) || v21 <= v20))
        {
          *v18 = v21 * (v20 / 0xA);
          if (v13)
          {
            v22 = *(v11 + 8) / 0xAu * *v13;
            goto LABEL_58;
          }
        }

        else
        {
          *v18 = v21 / 0xA * v20;
          if (v13)
          {
            v22 = *v13 / 0xA * *(v11 + 8);
LABEL_58:
            *v13 = v22;
          }
        }

LABEL_59:
        v11 = *(v11 + 16);
        if (!v11)
        {
          goto LABEL_60;
        }
      }

      if (v12 > 6)
      {
        if (v12 == 8)
        {
          v15 = *(v11 + 8);
          v16 = *(a2 + 1704);
        }

        else
        {
          if (v12 != 7)
          {
            return 2229280769;
          }

          v15 = *(v11 + 8);
          v16 = *(a2 + 1696);
        }

        *(v16 + v5) = v15;
        goto LABEL_59;
      }

      if (v12 == 5)
      {
        v13 = 0;
        v14 = *(a2 + 3568);
      }

      else
      {
        if (v12 != 6)
        {
          return 2229280769;
        }

        v13 = 0;
        v14 = *(a2 + 3576);
      }

      v19 = *(*a2 + 2966);
      goto LABEL_38;
    }

    return 0;
  }

  return v2;
}

void *usextract_removePromptColumns(uint64_t a1)
{
  result = cstdlib_strstr((*a1 + 152), "bet4");
  v3 = *(a1 + 10);
  if (v3 >= 1)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v3; v5 = ++i)
    {
      v7 = v3 - 1;
      if (v7 > i)
      {
        v8 = i;
        v9 = i;
        v10 = i;
        do
        {
          v11 = *(*(a1 + 3608) + 4 * v9 * *(*a1 + 3578));
          if (v11 != -2)
          {
            break;
          }

          v9 = ++v10;
        }

        while (v7 > v10);
        if (v10 != i)
        {
          if (v5 >= v9)
          {
            v12 = 0;
          }

          else
          {
            v12 = 0;
            v13 = (*(a1 + 1800) + 2 * v5);
            v14 = v9 - v5;
            do
            {
              v15 = *v13++;
              v12 += v15;
              --v14;
            }

            while (v14);
          }

          v16 = (v3 - v9) & ~((v3 - v9) >> 31);
          if (v4)
          {
            v17 = 0;
          }

          else
          {
            v17 = v11 == -2;
          }

          v18 = !v17;
          if (i < 1 || !v18)
          {
            goto LABEL_28;
          }

          v19 = (*(a1 + 32) + i);
          if (*(v19 - 1) != 35)
          {
            *v19 = 35;
            *(*(a1 + 1800) + 2 * i) = 0;
            *(*(a1 + 1784) + 2 * i) = 1;
            if (*(*a1 + 3578))
            {
              result = memset((*(a1 + 3608) + 4 * v5 * *(*a1 + 3578)), 255, 4 * *(*a1 + 3578));
            }

            v8 = ++i;
          }

          if (v4 && i >= 1 && (v20 = *(a1 + 32), *(v20 + v10) != 35))
          {
            if (i == v10)
            {
              result = hlpMoveColumns(a1, v10, (v10 + 1), v16);
              v20 = *(a1 + 32);
              ++v10;
            }

            *(v20 + i) = 35;
            *(*(a1 + 1800) + 2 * i) = 0;
            *(*(a1 + 1784) + 2 * i) = 1;
            if (*(*a1 + 3578))
            {
              result = memset((*(a1 + 3608) + 4 * v8 * *(*a1 + 3578)), 255, 4 * *(*a1 + 3578));
            }

            ++i;
          }

          else
          {
LABEL_28:
            v8 = v9;
          }

          *(*(a1 + 1800) + 2 * v8) += v12;
          if (i < v10)
          {
            result = hlpMoveColumns(a1, v10, i, v16);
          }
        }
      }

      v3 = *(a1 + 10);
    }
  }

  return result;
}

uint64_t usextract_logAllFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  __dst[0] = 0;
  result = LH_itoa(0x4Eu, v23, 0xAu);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = 0;
    v10 = *(a3 + 10);
    if (v10 >= 1)
    {
      v11 = *(a3 + 10);
    }

    else
    {
      v11 = 0;
    }

    v12 = 99;
    if (v7 - 2 < 4 || !v7)
    {
      goto LABEL_6;
    }

    v13 = *(*a3 + v7 + 2748);
    if (v7 == 1)
    {
      v8 = "application/x-realspeak-marker-counts;version=4.0";
      goto LABEL_38;
    }

    v9 = 0;
    if (!*(*a3 + v7 + 2748))
    {
      goto LABEL_6;
    }

    if (v7 <= 0x33u)
    {
      v17 = (a3 + 3552);
      if (v7 == 24 || (v17 = (a3 + 3560), v7 == 46))
      {
        v9 = *v17;
LABEL_28:
        v14 = v13 == 1;
        v18 = "application/x-realspeak-u32-feat-";
        if (v13 == 2)
        {
          v18 = "application/x-realspeak-u16-feat-";
        }

        goto LABEL_34;
      }

      if (v7 != 51)
      {
        goto LABEL_28;
      }

      v14 = 0;
      v13 = 4;
      v15 = 2966;
      v16 = (a3 + 3568);
    }

    else if (v7 > 0x35u)
    {
      if (v7 == 56)
      {
        v14 = 1;
        v15 = 2966;
        v13 = 1;
        v16 = (a3 + 3600);
      }

      else
      {
        if (v7 != 54)
        {
          goto LABEL_28;
        }

        v14 = 0;
        v13 = 4;
        v15 = 3360;
        v16 = (a3 + 3592);
      }
    }

    else if (v7 == 52)
    {
      v14 = 0;
      v13 = 4;
      v15 = 2966;
      v16 = (a3 + 3576);
    }

    else
    {
      if (v7 != 53)
      {
        goto LABEL_28;
      }

      v14 = 0;
      v13 = 4;
      v15 = 3360;
      v16 = (a3 + 3584);
    }

    v9 = *v16;
    v11 = *(*a3 + v15) * v10;
    v18 = "application/x-realspeak-u32-feat-";
LABEL_34:
    if (v14)
    {
      v19 = "application/x-realspeak-u8-feat-";
    }

    else
    {
      v19 = v18;
    }

    v8 = __dst;
    cstdlib_strcpy(__dst, v19);
    v20 = cstdlib_strlen(__dst);
    result = LH_itoa(v7, &__dst[v20], 0xAu);
    v12 = 100;
LABEL_38:
    if (v13 <= 1)
    {
      if (!v13)
      {
LABEL_6:
        if (v7 != 1 || !*(a3 + 24))
        {
          goto LABEL_48;
        }
      }

      if (!v9)
      {
        v9 = *(a3 + 8 * v7 + 16);
      }

      result = log_OutBinary(*(a1 + 32), a2, v12, 0, v23, v8, v9, v11, 0);
      goto LABEL_48;
    }

    if (v13 == 2)
    {
      if (!v9)
      {
        v9 = *(a3 + 8 * v7 + 1760);
      }

      v21 = *(a1 + 32);
      v22 = 2 * v11;
    }

    else
    {
      if (v13 != 4)
      {
        goto LABEL_48;
      }

      v21 = *(a1 + 32);
      v22 = 4 * v11;
    }

    result = log_OutBinary(v21, a2, v12, 0, v23, v8, v9, v22, 0);
LABEL_48:
    ++v7;
  }

  while (v7 != 218);
  return result;
}

uint64_t usextract_allocateLayers(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v8 = 0;
  v9 = 0;
  do
  {
    if (*(*a3 + 2748 + v8) == 1)
    {
      ++v9;
    }

    ++v8;
  }

  while (v8 != 218);
  v10 = heap_Calloc(*(a1 + 8), v9 * a4, 1);
  if (!v10)
  {
    goto LABEL_52;
  }

  v15 = v10;
  for (i = 0; i != 218; ++i)
  {
    v17 = *a3;
    v18 = *(*a3 + i + 2748);
    if (!*(*a3 + i + 2748))
    {
      continue;
    }

    if (v18 == 2)
    {
      v19 = heap_Calloc(*(a1 + 8), a4, 2);
      a3[i + 220] = v19;
      if (!v19)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v18 == 1)
      {
        a3[i + 2] = v15;
        v15 += a4;
        continue;
      }

      if (i <= 0x33u)
      {
        switch(i)
        {
          case 0x18u:
            v26 = heap_Calloc(*(a1 + 8), a4, 8);
            a3[444] = v26;
            if (!v26)
            {
              goto LABEL_52;
            }

            break;
          case 0x2Eu:
            v31 = heap_Calloc(*(a1 + 8), a4, 9);
            a3[445] = v31;
            if (!v31)
            {
              goto LABEL_52;
            }

            break;
          case 0x33u:
            v22 = *(v17 + 2966);
            if (v22)
            {
              v23 = heap_Calloc(*(a1 + 8), v22 * a4, 4);
              a3[446] = v23;
              if (!v23)
              {
                goto LABEL_52;
              }
            }

            break;
          default:
            goto LABEL_34;
        }
      }

      else if (i > 0x35u)
      {
        if (i == 54)
        {
          v29 = *(v17 + 3360);
          if (v29)
          {
            v30 = heap_Calloc(*(a1 + 8), v29 * a4, 4);
            a3[449] = v30;
            if (!v30)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          if (i != 56)
          {
LABEL_34:
            if (a2)
            {
              log_OutPublic(*(a1 + 32), a2, 55007, "%s%u", v11, v12, v13, v14, "feature");
            }

            continue;
          }

          v24 = *(v17 + 2966);
          if (v24)
          {
            v25 = heap_Calloc(*(a1 + 8), v24 * a4, 1);
            a3[450] = v25;
            if (!v25)
            {
              goto LABEL_52;
            }
          }
        }
      }

      else if (i == 52)
      {
        v27 = *(v17 + 2966);
        if (v27)
        {
          v28 = heap_Calloc(*(a1 + 8), v27 * a4, 4);
          a3[447] = v28;
          if (!v28)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
        if (i != 53)
        {
          goto LABEL_34;
        }

        v20 = *(v17 + 3360);
        if (v20)
        {
          v21 = heap_Calloc(*(a1 + 8), v20 * a4, 4);
          a3[448] = v21;
          if (!v21)
          {
            goto LABEL_52;
          }
        }
      }
    }
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(a1, a2, a3, a4);
  if ((GenericFeatureLayers & 0x80000000) != 0)
  {
    return GenericFeatureLayers;
  }

  v37 = *(*a3 + 3578);
  if (v37 >= 4)
  {
    log_OutPublic(*(a1 + 32), a2, 55000, "Invalid number of states per phoneme", v33, v34, v35, v36, "%s%u");
    return 2229280783;
  }

  v39 = heap_Calloc(*(a1 + 8), v37 * a4, 4);
  a3[451] = v39;
  if (v39)
  {
    if (*(*a3 + 3578) * a4)
    {
      memset(v39, 255, 4 * *(*a3 + 3578) * a4);
    }

    return 0;
  }

LABEL_52:
  v38 = 2229280778;
  if (a2)
  {
    log_OutPublic(*(a1 + 32), a2, 55000, 0, v11, v12, v13, v14, v41);
  }

  return v38;
}

uint64_t usextract_allocateGenericFeatureLayers(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v5 = *(*a3 + 3336);
  if (!v5 || !*v5)
  {
    v19 = 0;
    a3[438] = 0;
    return v19;
  }

  v9 = 0;
  v10 = v5 + 1;
    ;
  }

  v12 = heap_Calloc(*(a1 + 8), v9, 8);
  a3[438] = v12;
  if (v12)
  {
    if (!v9)
    {
      return 0;
    }

    v17 = 0;
    v18 = 8 * v9;
    while (1)
    {
      *(a3[438] + v17) = heap_Calloc(*(a1 + 8), a4, 1);
      if (!*(a3[438] + v17))
      {
        break;
      }

      v17 += 8;
      if (v18 == v17)
      {
        return 0;
      }
    }
  }

  v19 = 2229280778;
  if (a2)
  {
    log_OutPublic(*(a1 + 32), a2, 55000, 0, v13, v14, v15, v16, v21);
  }

  return v19;
}

uint64_t usextract_freeLayers(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = 0;
  v12 = 1;
  do
  {
    v13 = *(*a3 + v11 + 2748);
    if (!*(*a3 + v11 + 2748))
    {
      goto LABEL_11;
    }

    if (v13 == 2)
    {
      a2 = a3[v11 + 220];
      if (!a2)
      {
        goto LABEL_11;
      }

LABEL_10:
      heap_Free(*(a1 + 8), a2);
      goto LABEL_11;
    }

    if (v13 == 1)
    {
      if (v12)
      {
        a2 = a3[v11 + 2];
        if (a2)
        {
          heap_Free(*(a1 + 8), a2);
        }

        v12 = 0;
      }

      goto LABEL_11;
    }

    if (v11 <= 0x33u)
    {
      switch(v11)
      {
        case 0x18u:
          a2 = a3[444];
          if (a2)
          {
            goto LABEL_10;
          }

          break;
        case 0x2Eu:
          a2 = a3[445];
          if (a2)
          {
            goto LABEL_10;
          }

          break;
        case 0x33u:
          a2 = a3[446];
          if (a2)
          {
            goto LABEL_10;
          }

          break;
        default:
          goto LABEL_30;
      }
    }

    else if (v11 > 0x35u)
    {
      if (v11 == 54)
      {
        a2 = a3[449];
        if (a2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v11 != 56)
        {
LABEL_30:
          if (v9)
          {
            log_OutPublic(*(a1 + 32), v9, 55010, "%s%u", a5, a6, a7, a8, "feature");
          }

          goto LABEL_11;
        }

        a2 = a3[450];
        if (a2)
        {
          goto LABEL_10;
        }
      }
    }

    else if (v11 == 52)
    {
      a2 = a3[447];
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v11 != 53)
      {
        goto LABEL_30;
      }

      a2 = a3[448];
      if (a2)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    ++v11;
  }

  while (v11 != 218);
  usextract_freeGenericFeatureLayers(a1, a2, a3);
  v14 = a3[451];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  cstdlib_memset(a3, 0, 8uLL);
  return 0;
}

void *usextract_freeGenericFeatureLayers(void *result, uint64_t a2, void *a3)
{
  v3 = *(*a3 + 3336);
  if (v3)
  {
    v5 = a3[438];
    if (v5)
    {
      v6 = result;
      if (!*v3)
      {
        goto LABEL_9;
      }

      v7 = 0;
      v8 = v3 + 1;
      do
      {
        v9 = *(a3[438] + 8 * v7);
        if (v9)
        {
          result = heap_Free(v6[1], v9);
        }
      }

      while (v8[v7++]);
      v5 = a3[438];
      if (v5)
      {
LABEL_9:
        result = heap_Free(v6[1], v5);
      }

      a3[438] = 0;
    }
  }

  return result;
}

uint64_t usextract_getIndex(const char **a1, char *__s1, unint64_t a3)
{
  if (a3 <= __s1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = (a3 - __s1);
  for (i = a1 + 1; cstdlib_strncmp(__s1, v4, v6) || cstdlib_strlen(*(i - 1)) != v6; ++i)
  {
    v5 = (v5 + 1);
    v8 = *i;
    v4 = v8;
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

BOOL usextract_matchPhon(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5)
{
  result = 0;
  v13 = a4;
  v14 = a2;
  if (a2 && a4)
  {
    skipUnvalidPhonemes(a1, &v14);
    if (a3)
    {
      do
      {
        if (!*v14)
        {
          break;
        }

        --a3;
        ++v14;
        skipUnvalidPhonemes(a1, &v14);
      }

      while (a3);
    }

    v9 = v14;
    v10 = *v14;
    if (*v14)
    {
      skipUnvalidPhonemes(a1, &v13);
      if (a5)
      {
        do
        {
          if (!*v13)
          {
            break;
          }

          --a5;
          ++v13;
          skipUnvalidPhonemes(a1, &v13);
        }

        while (a5);
      }

      if (*v13)
      {
        v11 = v13;
        v12 = *v13;
        if (v10 == v12)
        {
          while (1)
          {
            v14 = v9 + 1;
            skipUnvalidPhonemes(a1, &v14);
            v13 = v11 + 1;
            skipUnvalidPhonemes(a1, &v13);
            v9 = v14;
            if (!*v14)
            {
              break;
            }

            v11 = v13;
            if (*v14 != *v13)
            {
              goto LABEL_14;
            }
          }

LABEL_15:
          if (usextract_nrOfValidPhonemes(a1, v9) <= 1)
          {
            return usextract_nrOfValidPhonemes(a1, v13) < 2;
          }

          return 0;
        }

LABEL_14:
        if (v10 == v12)
        {
          goto LABEL_15;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t usextract_getCurFineSyl(uint64_t result, int a2)
{
  if (result == a2)
  {
    return 4;
  }

  if (a2 - 1 == result)
  {
    return 6;
  }

  if (result >= 2)
  {
    if ((19662 * a2) >> 16 <= result)
    {
      v2 = 5;
    }

    else
    {
      v2 = 3;
    }

    if ((a2 - ((19662 * a2) >> 16)) >= result)
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void *hlpMoveColumns(unsigned __int16 **a1, int a2, int a3, size_t __len)
{
  v8 = 0;
  v9 = a3;
  v10 = a2;
  v11 = 2 * __len;
  do
  {
    v12 = a1[v8 + 4];
    if (v12)
    {
      cstdlib_memmove(v12 + v9, v12 + v10, __len);
    }

    v13 = a1[v8 + 222];
    if (v13)
    {
      cstdlib_memmove(&v13[v9], &v13[v10], v11);
    }

    ++v8;
  }

  while (v8 != 216);
  v14 = a1[444];
  if (v14)
  {
    cstdlib_memmove(&v14[4 * v9], &v14[4 * v10], 8 * __len);
  }

  v15 = a1[445];
  if (v15)
  {
    cstdlib_memmove(v15 + 9 * v9, v15 + 9 * v10, 9 * __len);
  }

  v16 = *a1;
  v17 = 4 * __len;
  if ((*a1)[1483])
  {
    cstdlib_memmove(&a1[446][2 * (*a1)[1483] * a3], &a1[446][2 * (*a1)[1483] * a2], v17 * (*a1)[1483]);
    cstdlib_memmove(&a1[447][2 * (*a1)[1483] * a3], &a1[447][2 * (*a1)[1483] * a2], v17 * (*a1)[1483]);
    v16 = *a1;
  }

  if (v16[1680])
  {
    cstdlib_memmove(&a1[448][2 * v16[1680] * a3], &a1[448][2 * v16[1680] * a2], v17 * v16[1680]);
    cstdlib_memmove(&a1[449][2 * (*a1)[1680] * a3], &a1[449][2 * (*a1)[1680] * a2], v17 * (*a1)[1680]);
    v16 = *a1;
  }

  if (v16[1483])
  {
    cstdlib_memmove(a1[450] + v16[1483] * v9, a1[450] + v16[1483] * v10, v16[1483] * __len);
    v16 = *a1;
  }

  result = cstdlib_memmove(&a1[451][2 * a3 * v16[1789]], &a1[451][2 * a2 * v16[1789]], 4 * __len * v16[1789]);
  if (a1[438])
  {
    v19 = *a1;
    if (**(*a1 + 417))
    {
      v20 = 0;
      do
      {
        v21 = *&a1[438][v20];
        if (v21)
        {
          result = cstdlib_memmove((v21 + v9), (v21 + v10), __len);
          v19 = *a1;
        }

        v22 = *(*(v19 + 417) + v20 * 2 + 8);
        v20 += 4;
      }

      while (v22);
    }
  }

  *(a1 + 5) += a3 - a2;
  return result;
}

uint64_t usextract_setMNXfeatures(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v86 = *MEMORY[0x277D85DE8];
  LODWORD(v6) = *(a3 + 5);
  if (v6 < 1)
  {
    v16 = 1;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = a3[128];
      if (v8)
      {
        if ((v7 + 2) >= v6)
        {
          v9 = 45;
        }

        else
        {
          v9 = *(a3[4] + v7 + 2);
        }

        *(v8 + v7) = v9;
      }

      v10 = a3[126];
      if (v10 && a3[127])
      {
        if ((v7 + 1) >= *(a3 + 5))
        {
          *(v10 + v7) = 45;
          v11 = 6;
        }

        else
        {
          *(v10 + v7) = *(a3[4] + v7 + 1);
          v11 = *(a3[72] + v7 + 1);
        }

        *(a3[127] + v7) = v11;
      }

      v12 = a3[123];
      if (v12)
      {
        if (v7 >= 2)
        {
          v13 = *(a3[4] + v7 - 2);
        }

        else
        {
          v13 = 45;
        }

        *(v12 + v7) = v13;
      }

      v14 = a3[125];
      if (v14 && a3[124])
      {
        if (v7)
        {
          v14[v7] = *(a3[4] + v7 - 1);
          v15 = *(a3[71] + v7 - 1);
        }

        else
        {
          *v14 = 45;
          v15 = 6;
        }

        *(a3[124] + v7) = v15;
      }

      ++v7;
      v6 = *(a3 + 5);
    }

    while (v7 < v6);
    v16 = v6 < 1;
  }

  if (a3[132] && a3[133])
  {
    if (!a3[134])
    {
      v16 = 1;
    }

    if (!v16)
    {
      v54 = 0;
      v55 = 0uLL;
      do
      {
        v56 = a3[4];
        if (*(v56 + v54) == 35)
        {
          *(a3[132] + v54) = 35;
          *(a3[133] + v54) = 35;
          *(a3[134] + v54) = 35;
        }

        else if (*(a3[10] + v54) == 1)
        {
          v57 = 0;
          v84 = v55;
          v85 = v55;
          v82 = v55;
          v83 = v55;
          v80 = v55;
          v81 = v55;
          *__s = v55;
          v79 = v55;
          *(a3[132] + v54) = *(v56 + v54);
          v58 = a3[9];
          v59 = a3[4];
          v60 = v54;
          while (1)
          {
            v61 = *(v59 + v60);
            if (*(v58 + v60) == 1)
            {
              break;
            }

            __s[v57] = v61;
            ++v60;
            if (++v57 == 128)
            {
              goto LABEL_33;
            }
          }

          __s[v57] = v61;
          *(a3[134] + v54) = v61;
          *(a3[133] + v54) = 48;
          if (cstdlib_strlen((*a3 + 28272)))
          {
            v65 = 0;
            v66 = 28272;
            while (!cstdlib_strchr(__s, *(*a3 + v66)))
            {
              ++v66;
              if (++v65 >= cstdlib_strlen((*a3 + 28272)))
              {
                goto LABEL_156;
              }
            }

            *(a3[133] + v54) = *(*a3 + v66);
          }

LABEL_156:
          if (*(a3[133] + v54) == 48)
          {
            log_OutText(*(a1 + 32), a2, 3, 0, "Warning: the syllable: %s doesn't have NUCLEUS, the first phonme %c is set to be the default", v62, v63, v64, __s);
            *(a3[133] + v54) = __s[0];
          }

          v55 = 0uLL;
        }

        else
        {
          *(a3[132] + v54) = *(a3[132] + v54 - 1);
          *(a3[133] + v54) = *(a3[133] + v54 - 1);
          *(a3[134] + v54) = *(a3[134] + v54 - 1);
        }

        ++v54;
      }

      while (v54 < *(a3 + 5));
    }
  }

LABEL_33:
  if (a3[129] && a3[131] && a3[130] && a3[159] && a3[158] && a3[10] && *(a3 + 5) >= 1)
  {
    v17 = 0;
    while (v17)
    {
      v18 = (v17 - 1);
      if (*(a3[10] + v17) == 1)
      {
        *(a3[129] + v17) = *(a3[132] + v18);
        *(a3[131] + v17) = *(a3[134] + v18);
        *(a3[130] + v17) = *(a3[133] + v18);
        v19 = a3[11];
        v20 = a3[159];
      }

      else
      {
        *(a3[129] + v17) = *(a3[129] + v18);
        *(a3[131] + v17) = *(a3[131] + v18);
        *(a3[130] + v17) = *(a3[130] + v18);
        v20 = a3[159];
        v19 = v20;
      }

      *(v20 + v17) = *(v19 + v18);
      if (v17 == 1)
      {
        goto LABEL_47;
      }

      if (*(a3[10] + v17) != 1)
      {
        v22 = a3[158];
        v21 = *(v22 + v17 - 1);
        goto LABEL_49;
      }

      v21 = *(a3[159] + v17 - 1);
LABEL_48:
      v22 = a3[158];
LABEL_49:
      *(v22 + v17++) = v21;
      if (v17 >= *(a3 + 5))
      {
        goto LABEL_54;
      }
    }

    *a3[129] = 45;
    *a3[131] = 45;
    *a3[130] = 45;
    *a3[159] = 0;
LABEL_47:
    v21 = 0;
    goto LABEL_48;
  }

LABEL_54:
  if (a3[135])
  {
    if (a3[137])
    {
      if (a3[136])
      {
        if (a3[160])
        {
          if (a3[161])
          {
            if (a3[10])
            {
              LOWORD(v23) = *(a3 + 5) - 1;
              if ((v23 & 0x8000) == 0)
              {
                v23 = v23;
                while (1)
                {
                  v24 = v23 + 1;
                  if (v23 + 1 >= *(a3 + 5))
                  {
                    break;
                  }

                  if (*(a3[9] + v23) == 1)
                  {
                    *(a3[135] + v23) = *(a3[132] + v24);
                    *(a3[137] + v23) = *(a3[134] + v24);
                    *(a3[136] + v23) = *(a3[133] + v24);
                    v25 = *(a3[11] + v24);
LABEL_66:
                    v26 = a3[160];
                    goto LABEL_68;
                  }

                  *(a3[135] + v23) = *(a3[135] + v24);
                  *(a3[137] + v23) = *(a3[137] + v24);
                  *(a3[136] + v23) = *(a3[136] + v24);
                  v26 = a3[160];
                  v25 = *(v26 + v24);
LABEL_68:
                  *(v26 + v23) = v25;
                  if (v23 + 2 >= *(a3 + 5))
                  {
                    v27 = 0;
                  }

                  else
                  {
                    if (*(a3[9] + v23) != 1)
                    {
                      v28 = a3[161];
                      v27 = *(v28 + v24);
                      goto LABEL_74;
                    }

                    v27 = *(a3[160] + v24);
                  }

                  v28 = a3[161];
LABEL_74:
                  *(v28 + v23) = v27;
                  v29 = v23-- <= 0;
                  if (v29)
                  {
                    goto LABEL_76;
                  }
                }

                v25 = 0;
                *(a3[135] + v23) = 45;
                *(a3[137] + v23) = 45;
                *(a3[136] + v23) = 45;
                goto LABEL_66;
              }
            }
          }
        }
      }
    }
  }

LABEL_76:
  if (a3[139] && a3[141] && a3[145] && a3[147] && a3[150] && a3[153] && *(a3 + 5) >= 1)
  {
    v30 = 0;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    do
    {
      v37 = *(a3[72] + v30);
      *(a3[138] + v30) = v36;
      *(a3[139] + v30) = v36;
      *(a3[141] + v30) = v35;
      *(a3[143] + v30) = v34;
      *(a3[145] + v30) = v34;
      *(a3[146] + v30) = v33;
      *(a3[147] + v30) = v33;
      *(a3[149] + v30) = v32;
      *(a3[150] + v30) = v32;
      *(a3[152] + v30) = v31;
      *(a3[153] + v30) = v31;
      if (v37 && v37 != 6)
      {
        ++v34;
        if (v37 == 1)
        {
          ++v36;
          ++v35;
        }

        else if (v37 == 5)
        {
          v36 = 1;
          v35 = 1;
          v34 = 1;
          v33 = 1;
          v32 = 1;
          v31 = 1;
        }

        else
        {
          ++v31;
          if (v37 == 3)
          {
            ++v35;
            ++v32;
            v36 = 1;
            v33 = 1;
          }

          else if (v37 == 2)
          {
            ++v36;
            ++v35;
            ++v33;
            ++v32;
          }

          else
          {
            v36 = 1;
            v35 = 1;
            v33 = 1;
            v32 = 1;
          }
        }
      }

      ++v30;
    }

    while (v30 < *(a3 + 5));
  }

  if (a3[138] && a3[143] && a3[146] && a3[149] && a3[152] && a3[140] && a3[142] && a3[144] && a3[148] && a3[151] && a3[154] && ((*(a3 + 5) - 1) & 0x8000) == 0)
  {
    v38 = (*(a3 + 5) - 1);
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    do
    {
      v44 = *(a3[72] + v38);
      if (v44 > 6 || ((1 << v44) & 0x47) == 0)
      {
        v43 = *(a3[138] + v38);
        v41 = *(a3[146] + v38);
        if (v44 != 3)
        {
          v46 = a3[149];
          if (v46)
          {
            v40 = *(v46 + v38);
          }

          if (v44 != 4)
          {
            v47 = a3[143];
            if (v47)
            {
              v42 = *(v47 + v38);
            }

            v48 = a3[152];
            if (v48)
            {
              v39 = *(v48 + v38);
            }
          }
        }
      }

      *(a3[138] + v38) = v43;
      *(a3[143] + v38) = v42;
      *(a3[146] + v38) = v41;
      *(a3[149] + v38) = v40;
      *(a3[152] + v38) = v39;
      *(a3[140] + v38) = *(a3[138] + v38) - *(a3[139] + v38) + 1;
      *(a3[142] + v38) = *(a3[16] + v38) - *(a3[141] + v38) + 1;
      *(a3[144] + v38) = *(a3[143] + v38) - *(a3[145] + v38) + 1;
      *(a3[148] + v38) = *(a3[146] + v38) - *(a3[147] + v38) + 1;
      *(a3[151] + v38) = *(a3[149] + v38) - *(a3[150] + v38) + 1;
      *(a3[154] + v38) = *(a3[152] + v38) - *(a3[153] + v38) + 1;
      v29 = v38-- <= 0;
    }

    while (!v29);
  }

  if (!a3[33] || !a3[157] || !a3[156] || ((*(a3 + 5) - 1) & 0x8000) != 0)
  {
    goto LABEL_173;
  }

  v49 = *a3;
  v50 = (*(a3 + 5) - 1);
  do
  {
    v51 = a3[4];
    if (*(v51 + v50) == 35)
    {
      v52 = 0;
LABEL_136:
      v53 = a3[157];
      goto LABEL_137;
    }

    if (*(v51 + v50 + 1) == 35)
    {
      v52 = cstdlib_strlen((v49 + 2400)) + 1;
      goto LABEL_136;
    }

    if (*(a3[14] + v50))
    {
      v52 = *(a3[77] + v50 + 1);
      goto LABEL_136;
    }

    v53 = a3[157];
    v52 = *(v53 + v50 + 1);
LABEL_137:
    *(v53 + v50) = v52;
    v29 = v50-- <= 0;
  }

  while (!v29);
  if (*(a3 + 5) >= 1)
  {
    for (i = 0; i < *(a3 + 5); ++i)
    {
      v68 = a3[4];
      if (*(v68 + i) == 35)
      {
        v69 = 0;
      }

      else if (*(v68 + i - 1) == 35)
      {
        v69 = cstdlib_strlen((v49 + 2400)) + 1;
      }

      else
      {
        if (!*(a3[14] + i - 1))
        {
          v70 = a3[156];
          v69 = *(v70 + i - 1);
          goto LABEL_170;
        }

        v69 = *(a3[34] + i - 1);
      }

      v70 = a3[156];
LABEL_170:
      *(v70 + i) = v69;
    }
  }

LABEL_173:
  if (a3[163])
  {
    LODWORD(v71) = *(a3 + 5);
    if (v71 >= 1)
    {
      v72 = 0;
      do
      {
        if (*(a3[4] + v72) == 35)
        {
          *(a3[163] + v72) = 119;
        }

        else if (*(a3[71] + v72) <= 1u)
        {
          *(a3[163] + v72) = *(a3[163] + v72 - 1);
        }

        ++v72;
      }

      while (v72 < *(a3 + 5));
      LOWORD(v71) = *(a3 + 5);
    }

    v73 = a3[162];
    if (v73)
    {
      *v73 = 84;
      LODWORD(v71) = *(a3 + 5);
      if (v71 >= 2)
      {
        v74 = 0;
        do
        {
          if (*(a3[71] + v74 + 1) > 1u)
          {
            *(a3[162] + v74 + 1) = *(a3[163] + v74);
          }

          else
          {
            *(a3[162] + v74 + 1) = *(a3[162] + v74);
          }

          v75 = v74 + 2;
          ++v74;
        }

        while (v75 < *(a3 + 5));
        LOWORD(v71) = *(a3 + 5);
      }
    }

    v76 = a3[164];
    if (v76)
    {
      *(v76 + v71 - 1) = 84;
      LOWORD(v71) = *(a3 + 5) - 2;
      if ((v71 & 0x8000) == 0)
      {
        v71 = v71;
        do
        {
          if (*(a3[72] + v71) > 1u)
          {
            *(a3[164] + v71) = *(a3[163] + v71 + 1);
          }

          else
          {
            *(a3[164] + v71) = *(a3[164] + v71 + 1);
          }

          v29 = v71-- <= 0;
        }

        while (!v29);
      }
    }
  }

  return 0;
}

uint64_t initLDO(uint64_t a1, void *a2)
{
  v2 = PNEW_LDO_ConFromText(a1, a1, "", "SENTENCE", "SENTENCE", a2);

  return LH_ERROR_to_VERROR(v2);
}

uint64_t deinitLDO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return OOC_PlacementDeleteObject(a1, a2);
  }

  return a1;
}

uint64_t importFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v18 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a2 + 176))(a3, a4, HIWORD(v18), 0, &v16, &v18);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a2 + 168))(a3, a4, HIWORD(v18), 3, 1, &v17, &v18);
      if ((result & 0x80000000) == 0)
      {
        v11 = *a5;
        v12 = *(*a5 + 16);
        v13 = LDOTreeNode_SetText(v12, v16);
        result = LH_ERROR_to_VERROR(v13);
        if ((result & 0x80000000) == 0)
        {
          LDOObject_SetU32Attribute(v12, "EOS", v17 != 0);
          result = LH_ERROR_to_VERROR(v14);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a2 + 176))(a3, a4, HIWORD(v18), 1, &v15, &v18);
            if ((result & 0x80000000) == 0)
            {
              result = loc_importTokenRecFromLingDB(a1, a2, a3, a4, v11, HIWORD(v18), 0);
              if ((result & 0x80000000) == 0)
              {
                result = loc_importTokenRecFromLingDB(a1, a2, a3, a4, v11, HIWORD(v18), 1);
                if ((result & 0x80000000) == 0)
                {
                  return loc_importMrkFromLingDB(v11, v15, v18, v12, 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t loc_importTokenRecFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v34 = 0;
  v33 = 0;
  result = (*(a2 + 104))(a3, a4, 3, a6, &v34);
  if ((result & 0x80000000) == 0)
  {
    v14 = v34;
    if (v34)
    {
      while (1)
      {
        LOWORD(v35) = 0;
        LOWORD(v37) = 0;
        LOWORD(v36) = 0;
        __s1 = 0;
        result = (*(a2 + 168))(a3, a4, v14, 0, 1, &v33, &v35);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v15 = 0;
            v16 = "TOKEN_PUNCT";
            goto LABEL_14;
          }

          if (v33 != 3)
          {
            goto LABEL_11;
          }

          v15 = 0;
          v16 = "TOKEN_WSPACE";
        }

        else
        {
          if (!v33)
          {
            v15 = 0;
            v16 = "TOKEN_ALPHA";
            goto LABEL_14;
          }

          if (v33 != 1)
          {
LABEL_11:
            v16 = 0;
            v15 = 1;
            goto LABEL_14;
          }

          v15 = 0;
          v16 = "TOKEN_DIGIT";
        }

LABEL_14:
        result = (*(a2 + 168))(a3, a4, v14, 1, 1, &v37, &v35);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(a2 + 168))(a3, a4, v14, 2, 1, &v36, &v35);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v33 != 6)
        {
          goto LABEL_20;
        }

        result = (*(a2 + 176))(a3, a4, v14, 4, &__s1, &v35);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v35 && !cstdlib_strcmp(__s1, "_PR_"))
        {
          v15 = 0;
          v17 = v37;
          v18 = v36;
          v16 = "TOKEN_INT_TN";
        }

        else
        {
LABEL_20:
          v17 = v37;
          v18 = v36;
          v19 = v15 ^ 1;
          if (!a7)
          {
            v19 = 1;
          }

          if ((v19 & 1) == 0)
          {
            v20 = v34;
            v21 = v33;
            v35 = 0;
            v36 = v36;
            v37 = v37;
            v22 = LDO_AddLabelOnSubstring(a5, "TOKEN", "TOKEN", &v37, &v36, &v35);
            result = LH_ERROR_to_VERROR(v22);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            LDOObject_SetU32Attribute(v35, "_TTYPE", v21);
            result = LH_ERROR_to_VERROR(v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            switch(v21)
            {
              case 4:
                v32 = v35;
                goto LABEL_50;
              case 5:
                v28 = v35;
                __s1 = 0;
                v38 = 0;
                result = (*(a2 + 176))(a3, a4, v20, 4, &__s1, &v38 + 2);
                if ((result & 0x80000000) == 0)
                {
                  v29 = LDOObject_SetStringAttribute(v28, "TNTAG", __s1);
                  result = LH_ERROR_to_VERROR(v29);
                  if ((result & 0x80000000) == 0)
                  {
                    result = (*(a2 + 184))(a3, a4, v20, 3, &v38);
                    if ((result & 0x80000000) == 0)
                    {
                      if (!v38 || (result = (*(a2 + 176))(a3, a4, v20, 3, &__s1, &v38 + 2), (result & 0x80000000) == 0) && (v30 = LDOObject_SetStringAttribute(v28, "NORM", __s1), result = LH_ERROR_to_VERROR(v30), (result & 0x80000000) == 0))
                      {
                        result = (*(a2 + 184))(a3, a4, v20, 6, &v38);
                        if ((result & 0x80000000) == 0)
                        {
                          if (v38)
                          {
                            result = (*(a2 + 176))(a3, a4, v20, 6, &__s1, &v38 + 2);
                            if ((result & 0x80000000) == 0)
                            {
                              v31 = LDOObject_SetStringAttribute(v28, "LANGMAP", __s1);
                              result = LH_ERROR_to_VERROR(v31);
                            }
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_51;
              case 6:
                v24 = v35;
LABEL_37:
                result = loc_importTokenIntTnFieldsFromLingDB(a1, a2, a3, a4, v24, v20);
                goto LABEL_51;
            }

            goto LABEL_52;
          }
        }

        if ((v15 & 1) == 0 && !a7)
        {
          v20 = v34;
          v25 = v33;
          __s1 = 0;
          appended = LDO_AppendNewNode(a5, *(a5 + 16), "TOKEN", v16, v17, v18, &__s1);
          result = LH_ERROR_to_VERROR(appended);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LDOObject_SetU32Attribute(__s1, "_TTYPE", v25);
          result = LH_ERROR_to_VERROR(v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v25 == 4)
          {
            v32 = __s1;
LABEL_50:
            result = loc_importTokenDctFieldsFromLingDB(a2, a3, a4, v32, v20);
LABEL_51:
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            goto LABEL_52;
          }

          if (v25 == 6)
          {
            v24 = __s1;
            goto LABEL_37;
          }
        }

LABEL_52:
        result = (*(a2 + 120))(a3, a4, v34, &v34, v17, v18);
        if ((result & 0x80000000) == 0)
        {
          v14 = v34;
          if (v34)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t loc_importMrkFromLingDB(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v45 = 0;
  v46 = 0;
  v42 = 0;
  if (a3)
  {
    v6 = a1;
    v7 = 0;
    v8 = a3;
    v37 = 1;
    while (1)
    {
      v41 = 0;
      v9 = *a2;
      if (*a2 <= 50)
      {
        break;
      }

      if (v9 <= 60)
      {
        switch(v9)
        {
          case '3':
            v10 = 0;
            v11 = "MARKER_NLU";
            goto LABEL_36;
          case '9':
            v10 = 0;
            v11 = "MARKER_NEW";
            goto LABEL_36;
          case '<':
            v10 = 0;
            v11 = "MARKER_SET_STYLE";
            goto LABEL_36;
        }

LABEL_35:
        v10 = 0;
        v11 = "MARKER";
        goto LABEL_36;
      }

      if (v9 == 61)
      {
        v10 = 0;
        v11 = "MARKER_AGREEMENT";
        goto LABEL_36;
      }

      if (v9 == 99)
      {
        v10 = 0;
        v11 = "MARKER_SET_PINYIN";
        goto LABEL_36;
      }

      if (v9 != 0x4000)
      {
        goto LABEL_35;
      }

      v12 = v37;
      if (v37 == 1)
      {
        v7 = *(a2 + 12);
      }

      else
      {
        v7 = v7;
      }

      if (v37 == 1)
      {
        v12 = 0;
      }

      v37 = v12;
      v10 = 1;
      v11 = "MARKER_SYNC";
LABEL_36:
      v13 = *(a2 + 12);
      v14 = v13 >= v7;
      v15 = v13 - v7;
      if (!v14)
      {
        return 2147499534;
      }

      v44 = v15;
      v43 = *(a2 + 16) + v15;
      v16 = loc_compute_overflow(v6, &v44, &v43, &v46, &v45);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      v17 = LDO_CountLeafNodesOnRange(v6, &v44, &v43, &v42, 0);
      v34 = LH_ERROR_to_VERROR(v17);
      if ((v34 & 0x80000000) != 0)
      {
        return v34;
      }

      if (*a2 == 40)
      {
        goto LABEL_41;
      }

      if (!v42 && v43 != v44)
      {
        if (a5 != 1)
        {
          goto LABEL_46;
        }

LABEL_41:
        v18 = LDO_AddSpecialLabel(v6, "MARKER", v11, &v44, &v43, &v41);
        goto LABEL_45;
      }

      v18 = LDO_AddLabelOnSubstring(v6, "MARKER", v11, &v44, &v43, &v41);
LABEL_45:
      v34 = LH_ERROR_to_VERROR(v18);
      if ((v34 & 0x80000000) != 0)
      {
        return v34;
      }

LABEL_46:
      if (v41)
      {
        LDOObject_SetU32Attribute(a4, "SENT_REC_OFFSET", v7);
        v16 = LH_ERROR_to_VERROR(v19);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

        v20 = v7;
        v21 = v41;
        v22 = v45;
        v24 = *a2;
        v23 = *(a2 + 4);
        v25 = *(a2 + 8);
        v39 = *(a2 + 24);
        if (v46)
        {
          LDOObject_SetU32Attribute(v41, "FROMOVERFLOW", v46);
          v16 = LH_ERROR_to_VERROR(v26);
          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }
        }

        if (v22)
        {
          LDOObject_SetU32Attribute(v21, "TOOVERFLOW", v22);
          v16 = LH_ERROR_to_VERROR(v27);
          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }
        }

        LDOObject_SetU32Attribute(v21, "_MTYPE", v24);
        v16 = LH_ERROR_to_VERROR(v28);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

        v29 = LDOLabel_SetReferenceFrom(v21, v23);
        v16 = LH_ERROR_to_VERROR(v29);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

        v30 = LDOLabel_SetReferenceTo(v21, v25 + v23);
        v31 = LH_ERROR_to_VERROR(v30);
        v34 = v31;
        if (v31 < 0)
        {
          v32 = 1;
        }

        else
        {
          v32 = v10;
        }

        if (v32)
        {
          v7 = v20;
          v6 = a1;
          if ((v31 & 0x80000000) != 0)
          {
            return v34;
          }

          goto LABEL_66;
        }

        v48 = 0;
        v47 = 0;
        marker_tag2string(v24, &v48, &v47);
        if ((v47 - 3) > 1)
        {
          if ((v47 - 1) <= 1)
          {
            LDOObject_SetU32Attribute(v21, "U32ARGS", v39);
            goto LABEL_64;
          }
        }

        else
        {
          v33 = LDOObject_SetStringAttribute(v21, "STRARGS", v39);
LABEL_64:
          v34 = LH_ERROR_to_VERROR(v33);
          if ((v34 & 0x80000000) != 0)
          {
            return v34;
          }
        }

        v7 = v20;
        v6 = a1;
      }

LABEL_66:
      a2 += 32;
      if (!--v8)
      {
        return v34;
      }
    }

    if (v9 > 35)
    {
      switch(v9)
      {
        case '$':
          v10 = 0;
          v11 = "MARKER_SET_LANG";
          goto LABEL_36;
        case '%':
          v10 = 0;
          v11 = "MARKER_SET_HEXA";
          goto LABEL_36;
        case '(':
          v10 = 0;
          v11 = "MARKER_INSERT_PROMPT";
          goto LABEL_36;
      }
    }

    else
    {
      switch(v9)
      {
        case 1:
          v10 = 1;
          v11 = "MARKER_WORD";
          goto LABEL_36;
        case 7:
          v10 = 0;
          v11 = "MARKER_SET_TYPE_OF_INPUT";
          goto LABEL_36;
        case 26:
          v10 = 0;
          v11 = "MARKER_INSERT_AUDIO";
          goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

  return 0;
}

uint64_t importFromLingDBWordRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v22 + 2);
  if ((result & 0x80000000) == 0)
  {
    v13 = *a5;
    v14 = *(*a5 + 16);
    result = (*(a2 + 176))(a3, a4, HIWORD(v22), 0, &v19, &v22);
    if ((result & 0x80000000) == 0)
    {
      v15 = LDOTreeNode_SetText(v14, v19);
      result = LH_ERROR_to_VERROR(v15);
      if ((result & 0x80000000) == 0)
      {
        result = (*(a2 + 168))(a3, a4, HIWORD(v22), 3, 1, &v20, &v22);
        if ((result & 0x80000000) == 0)
        {
          LDOObject_SetU32Attribute(v14, "EOS", v20 != 0);
          result = LH_ERROR_to_VERROR(v16);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a2 + 184))(a3, a4, HIWORD(v22), 2, &v21);
            if ((result & 0x80000000) == 0)
            {
              if (!v21 || (result = (*(a2 + 176))(a3, a4, HIWORD(v22), 2, &v19, &v22), (result & 0x80000000) == 0) && (v17 = LDOObject_SetStringAttribute(v14, "SYNTAX", v19), result = LH_ERROR_to_VERROR(v17), (result & 0x80000000) == 0))
              {
                result = (*(a2 + 176))(a3, a4, HIWORD(v22), 1, &v18, &v22);
                if ((result & 0x80000000) == 0)
                {
                  result = loc_importWordRecFromLingDB(a1, a2, a3, a4, v13, HIWORD(v22), 0, a6);
                  if ((result & 0x80000000) == 0)
                  {
                    result = loc_importWordRecFromLingDB(a1, a2, a3, a4, v13, HIWORD(v22), 1, a6);
                    if ((result & 0x80000000) == 0)
                    {
                      return loc_importMrkFromLingDB(v13, v18, v22, v14, 1);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t loc_importWordRecFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v28 = 0;
  v29 = 0;
  result = (*(a2 + 104))(a3, a4, 2, a6, &v29);
  if ((result & 0x80000000) == 0)
  {
    v14 = v29;
    if (v29)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOWORD(v32) = 0;
        LOWORD(v31) = 0;
        WORD2(v30) = 0;
        __s1 = 0;
        result = (*(a2 + 168))(a3, a4, v14, 0, 1, &v28, &v32);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v17 = &dword_279DABDE8;
        v18 = 18;
        while (v28 != *(v17 - 16))
        {
          v17 += 6;
          if (!--v18)
          {
            v19 = 0;
            goto LABEL_10;
          }
        }

        v19 = *(v17 - 1);
        v16 = *v17;
LABEL_10:
        result = (*(a2 + 168))(a3, a4, v14, 1, 1, &v31, &v32);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(a2 + 168))(a3, a4, v14, 2, 1, &v30 + 4, &v32);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v28 == 6)
        {
          result = (*(a2 + 176))(a3, a4, v14, 4, &__s1, &v32);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v32 && !cstdlib_strcmp(__s1, "_PR_"))
          {
            v16 = 0;
          }
        }

        v20 = v31;
        v21 = WORD2(v30);
        ++v15;
        if (a7 && v16)
        {
          v22 = v29;
          v23 = v28;
          v30 = 0;
          __s1 = 0;
          v31 = v21;
          v32 = v20;
          result = loc_compute_overflow(a5, &v32, &v31, &v30 + 1, &v30);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          appended = LDO_AddSpecialLabel(a5, "WORD", v19, &v32, &v31, &__s1);
        }

        else
        {
          if (a7 | v16)
          {
            goto LABEL_27;
          }

          v22 = v29;
          v23 = v28;
          __s1 = 0;
          v30 = 0;
          v31 = v21;
          v32 = v20;
          result = loc_compute_overflow(a5, &v32, &v31, &v30 + 1, &v30);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          appended = LDO_AppendNewNode(a5, *(a5 + 16), "WORD", v19, v32, v31, &__s1);
        }

        result = LH_ERROR_to_VERROR(appended);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        LDOObject_SetU32Attribute(__s1, "_WTYPE", v23);
        result = LH_ERROR_to_VERROR(v25);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = loc_importWordRecordFieldsFromLingDB(a1, a2, a3, a4, __s1, v22, v15, a8, SHIDWORD(v30), v30);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

LABEL_27:
        result = (*(a2 + 120))(a3, a4, v29, &v29);
        if ((result & 0x80000000) == 0)
        {
          v14 = v29;
          if (v29)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t exportToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 1;
  v16 = (*(a2 + 64))(a3, a4);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = (*(a2 + 56))(a3, a4);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = (*(a2 + 104))(a3, a4, 1, 0, &v68);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = loc_exportSentenceFields(a2, a3, a4, a5, a6, &v68, &v66 + 1);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = loc_exportMrkLabelsToLingDB(a1, a2, a3, a4, a6, v68, SHIDWORD(v66));
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v62 = a7;
  v56 = a5;
  v70 = 0;
  v69 = 0;
  v17 = *(a6 + 32);
  v18 = *(v17 + 24);
  v55 = a8;
  v59 = a1;
  if (v18 >= *(v17 + 32))
  {
    v20 = 0;
    v19 = 0;
    v21 = 0;
LABEL_47:
    v33 = HIDWORD(v70);
    if (HIDWORD(v70))
    {
LABEL_48:
      v21 = LH_ERROR_to_VERROR(v33);
    }

    if ((v21 & 0x80000000) == 0)
    {
      v43 = *(a6 + 16);
      v44 = v20;
      v45 = *(v43 + 80);
      v46 = *(v43 + 88);
      v64 = v44;
      v47 = v19;
      v48 = v45 >= v46 || v19 >= v44;
      if (v48)
      {
LABEL_55:
        if (v45 >= v46)
        {
LABEL_58:
          if (v47 < v64)
          {
            v49 = v47 + 1;
            do
            {
              v21 = loc_exportNonMarkerLabelWithTType(v59, a2, a3, a4, v68, *(v49 - 1), v55, &v65, &v67);
              if ((v21 & 0x80000000) != 0)
              {
                break;
              }

              v48 = v49++ >= v64;
            }

            while (!v48);
          }
        }

        else
        {
          while (1)
          {
            v21 = loc_exportNode(v59, a2, a3, a4, v68, *v45, v62, &v65, &v67);
            if ((v21 & 0x80000000) != 0)
            {
              break;
            }

            if (++v45 >= v46)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v50 = *v45;
          v51 = *v47;
          v52 = LDOTreeNode_ComputeAbsoluteFrom(*v45, &v66);
          v53 = LH_ERROR_to_VERROR(v52);
          if ((v53 & 0x80000000) != 0)
          {
            break;
          }

          AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v51);
          if (v66 <= AbsoluteFrom)
          {
            v21 = loc_exportNode(v59, a2, a3, a4, v68, v50, v62, &v65, &v67);
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_74;
            }

            ++v45;
          }

          else
          {
            v21 = loc_exportNonMarkerLabelWithTType(v59, a2, a3, a4, v68, v51, v55, &v65, &v67);
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_74;
            }

            ++v47;
          }

          if (v45 >= v46 || v47 >= v64)
          {
            goto LABEL_55;
          }
        }

        v21 = v53;
      }
    }
  }

  else
  {
    v57 = a6;
    v58 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *v18;
      if (*(*v18 + 26) == 1)
      {
        U32Attribute = LDOObject_GetU32Attribute(*v18, "_TTYPE", &v70, &v69);
        v21 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_74;
        }

        if (v70 == 1)
        {
          LDOObject_SetU32Attribute(v23, "__ldoutilID", *(v23 + 4));
          v21 = LH_ERROR_to_VERROR(v25);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_74;
          }

          v61 = v22;
          *(v23 + 4) = v22;
          v63 = v20;
          v60 = v20 - v19;
          v26 = 0;
          if (v20 != v19)
          {
            v27 = (v20 - v19) >> 3;
            do
            {
              v28 = v27 >> 1;
              v29 = LDOLabel_CompareToWithID(v23, *(v19 + 8 * v26 + 8 * (v27 >> 1)));
              if (v29 < 1)
              {
                v27 >>= 1;
                if ((v29 & 0x80000000) == 0)
                {
                  v20 = v63;
                  a6 = v57;
                  goto LABEL_34;
                }
              }

              else
              {
                v26 += v28 + 1;
                v27 -= v28 + 1;
              }
            }

            while (v27);
          }

          v30 = v60 >> 3;
          if ((v60 >> 3) == -1 || v58 != v30)
          {
            v34 = (v60 >> 3);
            v35 = v63;
          }

          else
          {
            v31 = 2 * v58;
            if (2 * v58 >= v58 + 1000000)
            {
              v31 = v58 + 1000000;
            }

            if (v31 <= v58 + 1)
            {
              v32 = v58 + 1;
            }

            else
            {
              v32 = v31;
            }

            if (v32 <= 8)
            {
              v32 = 8;
            }

            v58 = v32;
            v19 = OOCAllocator_Realloc(v56, v19, 8 * v32, &v70 + 1);
            v33 = HIDWORD(v70);
            if (HIDWORD(v70))
            {
              a6 = v57;
              v20 = v63;
              goto LABEL_48;
            }

            v34 = (v60 >> 3);
            v35 = v19 + 8 * v30;
          }

          v36 = v34 > v26;
          v37 = v34 - v26;
          a6 = v57;
          if (v36)
          {
            cstdlib_memmove((v19 + 8 * v26 + 8), (v19 + 8 * v26), 8 * v37);
          }

          v20 = v35 + 8;
          *(v19 + 8 * v26) = v23;
LABEL_34:
          v22 = v61 + 1;
        }
      }

      ++v18;
    }

    while (v18 < *(*(a6 + 32) + 32));
    if (v19 >= v20)
    {
      goto LABEL_47;
    }

    v39 = v19;
    while (1)
    {
      v40 = *v39;
      v41 = LDOObject_GetU32Attribute(*v39, "__ldoutilID", &v70, &v69);
      v21 = LH_ERROR_to_VERROR(v41);
      if ((v21 & 0x80000000) != 0)
      {
        break;
      }

      if (v70 == 1)
      {
        *(v40 + 4) = v69;
        v42 = LDOObject_RemoveAttribute(v40, "__ldoutilID");
        v21 = LH_ERROR_to_VERROR(v42);
        if ((v21 & 0x80000000) != 0)
        {
          break;
        }
      }

      if (++v39 >= v20)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_74:
  if (v19)
  {
    OOCAllocator_Free(v56, v19);
  }

  return v21;
}