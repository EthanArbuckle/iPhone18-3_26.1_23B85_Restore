char *wordpar_loc_asian_deleteConflictingLangMarker(char *result, _WORD *a2, const char *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v6 = result;
    v7 = 0;
    v8 = result + 20;
    do
    {
      if (*v8 == 36)
      {
        v9 = *(v8 + 20);
        MarkerArgStr = marker_getMarkerArgStr(0xBu);
        result = cstdlib_strcmp(v9, MarkerArgStr);
        if (!result)
        {
          v26 = *(v8 - 5);
          v11 = 1;
          if (!*a2)
          {
            return result;
          }

          goto LABEL_10;
        }

        v3 = *a2;
      }

      ++v7;
      v8 += 64;
    }

    while (v7 < v3);
    v11 = 0;
    v7 = 0;
    v26 = 0;
    if (!v3)
    {
      return result;
    }

LABEL_10:
    v12 = 0;
    v13 = 0;
    v14 = &v6[64 * v7];
    do
    {
      v15 = &v6[64 * v12];
      if (*(v15 + 5) == 36)
      {
        v16 = *(v15 + 5);
        v17 = marker_getMarkerArgStr(1u);
        result = cstdlib_strcmp(v16, v17);
        if (result)
        {
          result = cstdlib_strcmp(v16, a3);
          if (result)
          {
            v18 = marker_getMarkerArgStr(2u);
            result = cstdlib_strcmp(v16, v18);
            if (result)
            {
              goto LABEL_29;
            }
          }
        }

        if (*v15)
        {
          if (v13)
          {
            if (!v11)
            {
              goto LABEL_29;
            }

            if (*(v14 + 5) == 36 && *(v15 + 5) == 36)
            {
              v19 = *(v14 + 5);
              v20 = *(v15 + 5);
              v21 = marker_getMarkerArgStr(0xBu);
              if (cstdlib_strcmp(v19, v21))
              {
                v22 = 1;
              }

              else
              {
                v23 = marker_getMarkerArgStr(2u);
                v22 = cstdlib_strcmp(v20, v23) != 0;
              }

              v24 = marker_getMarkerArgStr(0xBu);
              result = cstdlib_strcmp(v19, v24);
              if (result)
              {
                if (v22)
                {
                  goto LABEL_27;
                }

LABEL_29:
                ++v12;
LABEL_30:
                v13 = 1;
                continue;
              }

              v25 = marker_getMarkerArgStr(1u);
              result = cstdlib_strcmp(v20, v25);
              if ((result | v26) == 0 || !v22)
              {
                goto LABEL_29;
              }
            }

LABEL_27:
            result = cstdlib_memmove(&v6[64 * v12], v15 + 64, (*a2 - v12) << 6);
            --*a2;
            goto LABEL_30;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      ++v12;
    }

    while (v12 < *a2);
  }

  return result;
}

uint64_t wordpar_loc_asian_RemoveBlankLatinRegions(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  if (*a2 < 2u)
  {
    goto LABEL_58;
  }

  v5 = result;
  v6 = 1;
  do
  {
    v7 = v5 + (v6 << 6);
    if (*(v7 + 20) != 36)
    {
      goto LABEL_43;
    }

    v8 = *(v7 + 40);
    if (!v8)
    {
      goto LABEL_43;
    }

    MarkerArgStr = marker_getMarkerArgStr(2u);
    result = cstdlib_strcmp(v8, MarkerArgStr);
    if (result)
    {
      goto LABEL_43;
    }

    if (*v3 <= (v6 + 1))
    {
LABEL_30:
      v24 = v5 + (v6 << 6);
      v25 = (*(v24 + 32) - *(v5 + 32));
      if (v25 >= *(v5 + 36))
      {
        goto LABEL_37;
      }

      do
      {
        v26 = *(a3 + v25);
        v27 = (v26 < 0x21) & (0x100002600uLL >> v26);
        result = utf8_determineUTF8CharLength(v26);
        v25 = (result + v25);
      }

      while (v27 == 1 && v25 < *(v5 + 36));
      if (v27)
      {
LABEL_37:
        if (*v24 == 1)
        {
          v29 = v6 + 1;
          v3 = a2;
          v30 = *a2;
          if (v29 < v30)
          {
            result = cstdlib_memmove((v5 + (v6 << 6)), (v5 + (v29 << 6)), (v30 + ~v6) << 6);
            LOWORD(v30) = *a2;
          }

          v31 = v30 - 1;
          *a2 = v31;
          goto LABEL_44;
        }

        *(v24 + 20) = 999;
      }

      v3 = a2;
      goto LABEL_43;
    }

    v10 = (v6 + 1);
    v11 = 1;
    do
    {
      v12 = v5 + (v10 << 6);
      if (*(v12 + 20) == 36)
      {
        v13 = *(v12 + 40);
        if (v13)
        {
          v14 = marker_getMarkerArgStr(2u);
          result = cstdlib_strcmp(v13, v14);
          v11 = result == 0;
          v15 = 1;
          if (!result)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        if (v11)
        {
          goto LABEL_27;
        }
      }

      v16 = (v5 + (v6 << 6));
      v17 = *(v5 + 32);
      v18 = (v16[8] - v17);
      if (v18 < *(v12 + 32) - v17)
      {
        do
        {
          v19 = *(a3 + v18);
          v20 = (v19 < 0x21) & (0x100002600uLL >> v19);
          result = utf8_determineUTF8CharLength(v19);
          v18 = (result + v18);
        }

        while (v20 == 1 && v18 < *(v12 + 32) - *(v5 + 32));
        if (!v20)
        {
          v11 = 0;
          goto LABEL_26;
        }
      }

      v22 = *(v12 + 28) + v16[7];
      *(v12 + 24) = v16[6];
      *(v12 + 28) = v22;
      v23 = *(v12 + 36) + v16[9];
      *(v12 + 32) = v16[8];
      *(v12 + 36) = v23;
      if (*v16 != 1)
      {
        v11 = 0;
        v16[5] = 999;
        v6 = v10;
LABEL_26:
        v3 = a2;
        goto LABEL_27;
      }

      v3 = a2;
      result = cstdlib_memmove((v5 + (v6 << 6)), v16 + 16, (*a2 + ~v6) << 6);
      v11 = 0;
      --*a2;
      v6 = v10;
LABEL_27:
      if (v15)
      {
        break;
      }

      ++v10;
    }

    while (v10 < *v3);
    if (!v15)
    {
      goto LABEL_30;
    }

LABEL_43:
    v31 = *v3;
LABEL_44:
    ++v6;
  }

  while (v6 < v31);
  if (v31 >= 2u)
  {
    v32 = 1;
    v33 = 1;
    while (1)
    {
      v34 = v5 + (v32 << 6);
      if (*(v34 + 20) == 36)
      {
        v35 = v32 - 1;
        if (v32 != 1)
        {
          while (1)
          {
            v36 = v5 + (v35 << 6);
            if (*(v36 + 20) == 36)
            {
              break;
            }

            if (!--v35)
            {
              goto LABEL_53;
            }
          }

          result = cstdlib_strcmp(*(v34 + 40), *(v36 + 40));
          if (!result)
          {
            if (*v34)
            {
              goto LABEL_54;
            }

            *(v34 + 20) = 999;
          }
        }
      }

LABEL_53:
      v37 = (v5 + (v33 << 6));
      v38 = *v34;
      v39 = *(v34 + 16);
      v40 = *(v34 + 48);
      v37[2] = *(v34 + 32);
      v37[3] = v40;
      *v37 = v38;
      v37[1] = v39;
      ++v33;
LABEL_54:
      if (++v32 >= *v3)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_58:
  v33 = 1;
LABEL_59:
  *v3 = v33;
  return result;
}

uint64_t wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers(uint64_t a1, _DWORD *a2, unsigned int a3, const char **a4)
{
  v6 = *a4;
  v7 = cstdlib_strlen(*a4);
  if (a3 < 2)
  {
LABEL_26:
    result = 0;
    *a4 = v6;
    return result;
  }

  v8 = a2 + 40;
  v9 = 1;
  v10 = a3;
  while (1)
  {
    v11 = a2[16 * v9 + 5];
    v12 = v9 + 1;
    v13 = v11 != 34 || v12 >= v10;
    v31 = v12;
    v32 = v8;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v9 = v31;
    v8 = v32 + 16;
    if (v31 == v10)
    {
      goto LABEL_26;
    }
  }

  v14 = v12;
  while (1)
  {
    v15 = &a2[16 * v14];
    v16 = v15[5];
    if (v16 == 21)
    {
      break;
    }

LABEL_23:
    if (++v14 < v10)
    {
      v8 += 16;
      if (v16 != 21)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  v17 = (v15[8] - a2[8]);
  v18 = v7 - v17;
  if (v7 <= v17)
  {
    goto LABEL_8;
  }

  v19 = v6[v17];
  v20 = v19 > 0x20;
  v21 = (1 << v19) & 0x100002600;
  if (!v20 && v21 != 0)
  {
    goto LABEL_8;
  }

  v23 = v7;
  v24 = heap_Realloc(*(a1 + 8), v6, v7 + 2);
  if (v24)
  {
    v6 = v24;
    v25 = v24;
    v26 = (v24 + v17);
    cstdlib_memmove(v26 + 1, v26, v18);
    *v26 = 32;
    v7 = v23 + 1;
    *(v25 + (v23 + 1)) = 0;
    v27 = v8;
    v28 = v14;
    do
    {
      if (v15[8] < *v27)
      {
        ++*v27;
      }

      ++v28;
      v27 += 16;
    }

    while (v28 < v10);
    ++a2[9];
    v16 = 21;
    goto LABEL_23;
  }

  return 2370838538;
}

uint64_t wordpar_loc_asian_InsertSpaceBeforeTNMarkers(uint64_t a1, uint64_t a2, const char **a3)
{
  v3 = a3;
  v6 = *a3;
  v7 = cstdlib_strlen(*a3);
  v83 = 0;
  v79 = a2;
  v8 = datac_RequestBlock(a2, 1021, 1u, &v83);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  result = 2370838528;
  v10 = *(v83 + 16);
  if (*(v83 + 16))
  {
    v11 = *(v83 + 8);
    if (v11[5] == 0x4000)
    {
      if (v10 != 1)
      {
        v68 = a1;
        v81 = 0;
        v82 = 0;
        v12 = -1;
        v13 = 1;
        v80 = 24;
        do
        {
          v14 = &v11[16 * v13];
          v15 = v14[8];
          v16 = v11[8];
          v17 = v14[5];
          if (v17 == 7)
          {
            v19 = (v15 - v16);
            v18 = v14[10] == 16;
          }

          else
          {
            v18 = v17 == 21;
            v19 = (v15 - v16);
          }

          v20 = !v18 || v19 == 0;
          if (!v20 && v6[v19 - 1] != 32 && v6[v19] != 32)
          {
            v21 = v81;
            do
            {
              if (!v21)
              {
                break;
              }

              v22 = *(v11 + v21 + 20);
              if (v22 == 34)
              {
                goto LABEL_18;
              }

              v21 -= 64;
            }

            while (v22 != 21);
            v74 = v19;
            v78 = v19;
            v66 = v3;
            v67 = v12;
            v23 = v7;
            v24 = heap_Realloc(*(v68 + 8), v6, v7 + 2);
            if (!v24)
            {
              return 2370838538;
            }

            v25 = v7;
            v26 = v24;
            v77 = v24;
            v27 = (v23 - v78);
            v28 = v25;
            cstdlib_memmove((v24 + v78 + 1), &v74[v24], v27);
            v29 = v28;
            LODWORD(v30) = 0;
            v74[v26] = 32;
            v65 = v29 + 1;
            *(v26 + (v29 + 1)) = 0;
            if ((v29 + 1) > (v78 + 1))
            {
              v30 = 0;
              do
              {
                if (v77[(v78 + 1) + v30] == 32)
                {
                  break;
                }

                ++v30;
              }

              while ((v29 + v16 - v15) != v30);
            }

            v6 = v77;
            v31 = v78;
            if (v13 < v10)
            {
              v32 = &v11[v80];
              v33 = v67 + v10;
              do
              {
                if (*v32 >= v14[8])
                {
                  ++*v32;
                }

                v32 += 16;
                --v33;
              }

              while (v33);
            }

            ++v11[9];
            v34 = 1;
            do
            {
              if (v34 >= v10)
              {
                break;
              }

              v35 = v34;
              v36 = &v11[16 * v34];
              v37 = v36[5];
              while (v37 == 1)
              {
                v38 = v11[8] + v31;
                v39 = v36[8];
                if (v38 <= v39)
                {
                  break;
                }

                v40 = v36[9] + v39;
                v41 = v40 - v38;
                if (v40 <= v38)
                {
                  break;
                }

                v42 = v34;
                if (v34 >= v10)
                {
                  goto LABEL_45;
                }

                v43 = &v11[16 * v34 + 5];
                v44 = v34;
                v45 = v43;
                while (1)
                {
                  v46 = *v45;
                  v45 += 16;
                  if (v46 == 21 && *(v43 + 12) > v39)
                  {
                    break;
                  }

                  ++v44;
                  v43 = v45;
                  if (v10 == v44)
                  {
                    goto LABEL_45;
                  }
                }

                if (!v44 || (v58 = &v11[16 * v44], __s1 = *(v58 + 5), v75 = (v58 + 10), MarkerArgStr = marker_getMarkerArgStr(3u), cstdlib_strcmp(__s1, MarkerArgStr)) && (__s1a = *v75, v60 = marker_getMarkerArgStr(4u), cstdlib_strncmp(__s1a, v60, 6uLL)) && (__s1b = *v75, v61 = marker_getMarkerArgStr(6u), cstdlib_strcmp(__s1b, v61)) && (__s1c = *v75, v62 = marker_getMarkerArgStr(7u), cstdlib_strcmp(__s1c, v62)) && (__s1d = *v75, v63 = marker_getMarkerArgStr(8u), cstdlib_strcmp(__s1d, v63)) && (v76 = *v75, v64 = marker_getMarkerArgStr(5u), cstdlib_strcmp(v76, v64)))
                {
LABEL_45:
                  if (v13 > v34)
                  {
                    v47 = v34 + (v82 - v34) + 1;
                    v48 = &v11[16 * v34 + 8];
                    while (1)
                    {
                      v49 = *v48;
                      v48 += 16;
                      if (v49 >= v11[16 * v13 + 8])
                      {
                        break;
                      }

                      if (v13 == ++v42)
                      {
                        LOWORD(v42) = v13;
                        goto LABEL_51;
                      }
                    }

                    v47 = v42;
LABEL_51:
                    v34 = v42;
                    v42 = v47;
                  }

                  v8 = datac_RequestBlock(v79, 1021, (*(v83 + 16) + 1), &v83);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  v11 = *(v83 + 8);
                  v50 = &v11[16 * v42];
                  cstdlib_memmove(v50 + 16, v50, (v10 - v42) << 6);
                  v51 = &v11[16 * v35];
                  cstdlib_memcpy(v50, v51, 0x40uLL);
                  LOWORD(v10) = *(v83 + 16) + 1;
                  *(v83 + 16) = v10;
                  v52 = v51[9];
                  v53 = v52 >= v41;
                  v54 = v52 - v41;
                  if (!v53)
                  {
                    v54 = 0;
                  }

                  v51[9] = v54;
                  v56 = v51[6];
                  v55 = v51[7];
                  v53 = v55 >= v41;
                  v57 = v55 - v41;
                  if (!v53)
                  {
                    v57 = 0;
                  }

                  v51[7] = v57;
                  v50[8] = v11[16 * v13 + 24];
                  v50[9] = v30;
                  v50[6] = v56 + v57;
                  v50[7] = v41;
                  v42 = v34;
                  v31 = v78;
                }

                else
                {
                  v31 = v78;
                  v36[9] = v11[8] + v78 - v36[8];
                }

                v36 = &v11[16 * v42];
                v37 = v36[5];
                v35 = v42;
              }

              ++v34;
              v6 = v77;
            }

            while (v11[16 * v34 + 8] <= v11[8] + v31);
            v3 = v66;
            v7 = v65;
            v12 = v67;
          }

LABEL_18:
          ++v13;
          ++v82;
          v80 += 16;
          v81 += 64;
          --v12;
        }

        while (v13 < v10);
      }

      *v3 = v6;
      return v8;
    }
  }

  return result;
}

uint64_t wordpar_loc_asian_HandleExtendedToi(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v4 = a4;
  v7 = *a4;
  v39 = 0;
  v8 = *(a3 + 8);
  result = datac_RequestBlock(a2, 1012, 1u, &v39);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a3 + 16);
    if (v10 < 2)
    {
LABEL_20:
      result = 0;
      *v4 = v7;
      return result;
    }

    v11 = 1;
    LOWORD(v12) = 1;
    while (1)
    {
      v13 = v8 + (v12 << 6);
      if (*(v13 + 20) == 34)
      {
        v14 = *(v13 + 48);
        if (v14)
        {
          v15 = *(v13 + 32);
          v16 = *(v8 + 32);
          v17 = (v11 + 1);
          LOWORD(v12) = v11 + 1;
          if (v10 > (v11 + 1))
          {
            v12 = (v11 + 1);
            v18 = (v8 + 20 + (v12 << 6));
            while (1)
            {
              v19 = *v18;
              v18 += 16;
              if (v19 == 21)
              {
                break;
              }

              if (v10 == ++v12)
              {
                goto LABEL_21;
              }
            }
          }

          if (v12 == v10)
          {
LABEL_21:
            heap_Free(*(a1 + 8), v14);
            *(v13 + 48) = 0;
            log_OutPublic(*(a1 + 32), "PP_WORD_PARSER", 1929, 0, v30, v31, v32, v33, v34);
            return 2370838528;
          }

          if (*(v13 + 56))
          {
            heap_Free(*(a1 + 8), v14);
            *(v13 + 48) = 0;
            LOWORD(v10) = *(a3 + 16);
          }

          else
          {
            v37 = v4;
            v38 = a1;
            v20 = v15 - v16;
            v36 = v15 - v16;
            __dst = (v8 + (v12 << 6));
            v21 = __dst[8] - v16;
            v22 = cstdlib_strlen(v7);
            v23 = v20;
            v24 = v21;
            cstdlib_memmove(&v7[v23], &v7[v21], v22 - v21 + 1);
            v25 = cstdlib_strlen(v7);
            *(v8 + 36) = v25;
            v26 = v36 - v21;
            a1 = v38;
            wordpar_loc_adjustMarkerPositions(*(a3 + 16), v8, 1u, v24, v25, v26);
            heap_Free(*(v38 + 8), *(v13 + 48));
            *(v13 + 48) = 0;
            v27 = *(a3 + 16);
            if (v17 != v27)
            {
              cstdlib_memmove(v13, (v8 + (v17 << 6)), (v27 - v11) << 6);
              LOWORD(v27) = *(a3 + 16);
            }

            v28 = v27 - 1;
            *(a3 + 16) = v28;
            v29 = v12 + 1;
            v4 = v37;
            if (v29 != v28)
            {
              cstdlib_memmove(__dst, (v8 + (v29 << 6)), (v28 - v12) << 6);
              v28 = *(a3 + 16);
            }

            LOWORD(v10) = v28 - 1;
            *(a3 + 16) = v10;
          }
        }
      }

      LOWORD(v12) = v12 + 1;
      v11 = v12;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t wordpar_loc_asian_deleteStrAddMarker(uint64_t a1, char *__s, const char *a3, uint64_t a4, int a5)
{
  v5 = a4;
  v53 = a4;
  v8 = cstdlib_strlen(__s);
  v52 = v8;
  v9 = cstdlib_strlen(a3);
  v10 = v9;
  v11 = *(v5 + 8);
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v9;
    v49 = v8;
    v47 = v9;
    v48 = v8;
    while (1)
    {
      if (!__s[v12])
      {
        goto LABEL_46;
      }

      if (__s[v12] == *a3)
      {
        v16 = v12;
        if (!v15)
        {
          break;
        }

        v17 = 0;
        LODWORD(v16) = v12;
        do
        {
          v18 = __s[v16];
          v19 = a3[v17];
          v16 = (v16 + 1);
          ++v17;
        }

        while (v18 == v19 && v15 > v17);
        if (v18 == v19)
        {
          break;
        }
      }

      v16 = (v12 + 1);
LABEL_28:
      v12 = v16;
      if (v16 >= v8)
      {
        goto LABEL_46;
      }
    }

    v21 = v11;
    v22 = datac_RequestBlock(a1, 1021, (*(v5 + 16) + 1), &v53);
    v14 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    v5 = v53;
    v11 = *(v53 + 8);
    v51 = v13;
    v23 = (v12 - v13 * v10);
    v24 = *(v53 + 16);
    v25 = v11 + (v24 << 6);
    v26 = *(v11 + 32);
    if (v24 != 1 && (*(v25 - 32) - v26) > v23)
    {
      if (v24 < 2)
      {
        LOWORD(v24) = 0;
      }

      else
      {
        if (v23 < (*(v11 + 96) - v26))
        {
          v45 = v22;
          v29 = (v11 + 64);
          v30 = 1;
          v44 = 1;
          v31 = 1;
LABEL_34:
          v34 = *(v53 + 8);
          LastPosRef = wordpar_loc_asian_getLastPosRef(v11, v24, v23, v30, 1);
          cstdlib_memmove(v29 + 32, v29, (v24 - v44) << 6);
          v11 = v34;
          v36 = *(v53 + 8) + (v31 << 6);
          *v36 = 1;
          *(v36 + 20) = 36;
          *(v36 + 24) = LastPosRef;
          v37 = *(v34 + 32) + v23;
          *(v36 + 28) = 0;
          *(v36 + 32) = v37;
          *(v36 + 16) = 0;
          *(v36 + 8) = 0;
          *(v36 + 36) = 0;
          *(v36 + 40) = a5;
          *(v36 + 48) = 0;
          v5 = v53;
          LOWORD(v24) = *(v53 + 16);
          if (v24)
          {
            if ((v24 + 1) <= 2u)
            {
              v38 = 2;
            }

            else
            {
              v38 = (v24 + 1);
            }

            v39 = (v34 + 96);
            v40 = v38 - 1;
            v10 = v47;
            v8 = v48;
            do
            {
              if (*v39 > *(v36 + 32))
              {
                *v39 -= v15;
              }

              v39 += 16;
              --v40;
            }

            while (v40);
          }

          else
          {
            v10 = v47;
            v8 = v48;
          }

          v14 = v45;
          goto LABEL_27;
        }

        v30 = 1;
        while (v24 > ++v30)
        {
          v31 = v30;
          v29 = (v11 + (v30 << 6));
          if (v23 < (v29[16] - v26))
          {
            v45 = v22;
            v44 = v30;
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      *(v25 + 20) = 36;
      *v25 = 1;
      if (v24 == 1)
      {
        v28 = *(v11 + 28) + *(v11 + 24);
      }

      else
      {
        v32 = v11;
        v33 = v22;
        v28 = wordpar_loc_asian_getLastPosRef(v11, v24, v23, (v24 - 1), 1);
        v14 = v33;
        v11 = v32;
      }

      *(v25 + 24) = v28;
      *(v25 + 28) = 0;
      *(v25 + 32) = v26 + v23;
      *(v25 + 36) = 0;
      *(v25 + 16) = 0;
      *(v25 + 8) = 0;
      *(v25 + 40) = a5;
      *(v25 + 48) = 0;
      v5 = v53;
      LOWORD(v24) = *(v53 + 16);
    }

    v10 = v47;
    v8 = v48;
LABEL_27:
    *(v5 + 16) = v24 + 1;
    *(v11 + 36) = v49;
    v13 = v51 + 1;
    goto LABEL_28;
  }

  v14 = 0;
LABEL_46:
  v21 = v11;
  v41 = a3;
  v42 = v14;
  wordpar_loc_asian_adjustText(__s, v41, v10, &v52);
  v14 = v42;
  v8 = v52;
LABEL_47:
  *(v21 + 36) = v8;
  return v14;
}

_BYTE *wordpar_loc_asian_deleteStr(uint64_t a1, char *__s, char *a3)
{
  v6 = cstdlib_strlen(__s);
  v24 = v6;
  v7 = cstdlib_strlen(a3);
  v8 = *(a1 + 8);
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (!__s[v10])
      {
        break;
      }

      if (__s[v10] == *a3)
      {
        if (!v7)
        {
          v13 = v10;
LABEL_14:
          v17 = *(a1 + 16);
          if (v17 >= 2)
          {
            v18 = v9 - v7 * v11;
            v19 = v17 - 1;
            v20 = 1;
            v21 = v8 + 24;
            while (v18 >= (LOWORD(v8[16 * v20 + 8]) - v8[8]))
            {
              ++v20;
              v21 += 16;
              --v19;
              if (v20 >= v17)
              {
                goto LABEL_23;
              }
            }

            if (v20 < v17)
            {
              do
              {
                v22 = *v21 - v7;
                if (v7 > (*v21 - v8[8]))
                {
                  v22 = v8[8];
                }

                *v21 = v22;
                v21 += 16;
                --v19;
              }

              while (v19);
            }
          }

LABEL_23:
          ++v11;
          goto LABEL_24;
        }

        v12 = 0;
        LODWORD(v13) = v10;
        do
        {
          v14 = __s[v13];
          v15 = a3[v12];
          v13 = (v13 + 1);
          ++v12;
        }

        while (v14 == v15 && v7 > v12);
        if (v14 == v15)
        {
          goto LABEL_14;
        }
      }

      v13 = (v10 + 1);
LABEL_24:
      v9 = v13;
      v10 = v13;
    }

    while (v13 < v6);
  }

  result = wordpar_loc_asian_adjustText(__s, a3, v7, &v24);
  v8[9] = v24;
  return result;
}

uint64_t wordpar_loc_asian_replaceStrWithStr(uint64_t a1, char *__s, const char *a3, int a4)
{
  v7 = cstdlib_strlen(__s);
  v8 = cstdlib_strlen(szWORD_BEG);
  __src = a3;
  result = cstdlib_strlen(a3);
  v37 = a1;
  v10 = *(a1 + 8);
  v11 = v7;
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v8;
    v36 = result;
    v35 = result - v8;
    v16 = (result - v8);
    v17 = a4;
    do
    {
      v18 = &__s[v14];
      if (!*v18 || v17 == 1 && v14)
      {
        break;
      }

      if (*v18 != 16)
      {
        goto LABEL_23;
      }

      v19 = v14;
      if (!v15)
      {
        goto LABEL_14;
      }

      v20 = 0;
      LODWORD(v19) = v14;
      do
      {
        v21 = __s[v19];
        v22 = szWORD_BEG[v20];
        v19 = (v19 + 1);
        ++v20;
      }

      while (v21 == v22 && v15 > v20);
      if (v21 == v22)
      {
LABEL_14:
        v41 = v13;
        v24 = v16;
        v40 = v35 + cstdlib_strlen(__s);
        cstdlib_memmove(&__s[(v12 + v15 + v24)], &__s[v12 + v15], (v11 - (v12 + v15) + 1));
        result = cstdlib_memcpy(&__s[v14], __src, v36);
        v16 = v24;
        v7 = v40;
        __s[v40] = 0;
        v25 = *(v37 + 16);
        if (v25 >= 2)
        {
          v26 = 1;
          while (1)
          {
            v27 = v26;
            v28 = (v10 + 32 + (v26 << 6));
            v29 = *v28;
            v30 = *v28 - *(v10 + 32);
            v31 = v14;
            if (v14)
            {
              while (v31 == v30 && *(v10 + (v27 << 6) + 20) == 36)
              {
                *v28 = v29 + 1;
                v27 = ++v26;
                v28 = (v10 + 32 + (v26 << 6));
                v29 = *v28;
                v30 = *v28 - *(v10 + 32);
                v31 = v14;
              }
            }

            if (v12 < v30)
            {
              break;
            }

            if (v25 <= ++v26)
            {
              goto LABEL_27;
            }
          }

          if (v25 > v26)
          {
            v32 = v26;
            v33 = (v10 + 32 + (v26 << 6));
            v34 = v25 - v32;
            do
            {
              *v33 += v16;
              v33 += 16;
              --v34;
            }

            while (v34);
          }
        }

LABEL_27:
        v13 = v41 + 1;
        v17 = a4;
      }

      else
      {
LABEL_23:
        v19 = (v14 + 1);
      }

      v12 = v19;
      v11 = v7;
      v14 = v19;
    }

    while (v19 < v7);
  }

  *(v10 + 36) = v11;
  return result;
}

uint64_t wordpar_loc_asian_getLastPosRef(unsigned int *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  result = a1[6];
  if (a2 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    v8 = 0;
    v9 = a1[8];
    v10 = a2 - 1;
    v11 = (a1 + 24);
    LOWORD(v12) = v9;
    while (a3 > (v12 - v9))
    {
      if (a2 - 1 == v8)
      {
        goto LABEL_12;
      }

      v12 = *v11;
      if (a3 <= (*v11 - v9))
      {
        break;
      }

      ++v8;
      v11 += 16;
      if (v7 == v8)
      {
        v10 = v7;
        goto LABEL_12;
      }
    }

    v10 = v8;
LABEL_12:
    if (v10)
    {
      v13 = &a1[16 * v10];
      if (a5 == 1 && ((v14 = v13[5], v14 != 41) ? (v15 = v14 == 1) : (v15 = 1), v15))
      {
        return v13[6];
      }

      else
      {
        return v13[7] + v13[6];
      }
    }
  }

  return result;
}

_BYTE *wordpar_loc_asian_adjustText(_BYTE *result, unsigned __int8 *a2, unsigned int a3, unsigned __int16 *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = a3;
    do
    {
      result = &v8[v10];
      if (!*result)
      {
        return result;
      }

      if (*result == *a2)
      {
        if (!a3)
        {
          v14 = v10;
LABEL_15:
          result = cstdlib_memmove(result, &v8[v9 + a3], (v4 - (v9 + a3) + 1));
          v4 = *a4 - a3;
          *a4 = v4;
          v10 = v14 - a3;
          goto LABEL_16;
        }

        v12 = 1;
        v13 = a2;
        v14 = v10;
        do
        {
          v15 = v8[v14];
          v17 = *v13++;
          v16 = v17;
          ++v14;
        }

        while (v15 == v17 && v12++ < v11);
        if (v15 == v16)
        {
          goto LABEL_15;
        }
      }

      ++v10;
LABEL_16:
      v9 = v10;
    }

    while (v10 < v4);
  }

  return result;
}

BOOL wordpar_loc_asian_isMarkerUnknown(uint64_t a1)
{
  if (*(a1 + 20) != 36)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  MarkerArgStr = marker_getMarkerArgStr(9u);
  return cstdlib_strcmp(v1, MarkerArgStr) == 0;
}

BOOL bed_marker_IsOfType(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *a1;
    v4 = *(a2 + 20);
    if (*a1)
    {
      v5 = 0;
      while (v4 != v3)
      {
        v3 = a1[++v5];
        if (!v3)
        {
          return v4 == v3;
        }
      }

      v3 = *(a2 + 20);
    }

    return v4 == v3;
  }

  return v2;
}

BOOL bed_marker_IsToiOfType(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a2 + 20) == 7)
    {
      v3 = *a1;
      v4 = *(a2 + 40);
      if (*a1)
      {
        v5 = 0;
        while (v4 != v3)
        {
          v3 = a1[++v5];
          if (!v3)
          {
            return v4 == v3;
          }
        }

        v3 = *(a2 + 40);
      }

      return v4 == v3;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL bed_marker_IsToiNotOfType(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a2 + 20) == 7)
    {
      v3 = *a1;
      v4 = *(a2 + 40);
      if (*a1)
      {
        v5 = 0;
        while (v4 != v3)
        {
          v3 = a1[++v5];
          if (!v3)
          {
            return v4 != v3;
          }
        }

        v3 = *(a2 + 40);
      }

      return v4 != v3;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t bed_marker_IsAt(_WORD *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*a1)
    {
      result = 0;
      --*a1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t bed_marker_MapPosCur(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v13 = 0;
  result = 2370838535;
  if (a1 && a3)
  {
    v12 = 0;
    *a3 = a2;
    LODWORD(result) = bed_GetpElem(a1, 0, &v13);
    if ((result & 0x80000000) != 0)
    {
      if ((result & 0x1FFF) == 0xF)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else
    {
      result = bed_GetcElem(a1, &v12);
      if ((result & 0x80000000) == 0)
      {
        v7 = v12;
        if (!v12)
        {
          return 0;
        }

        v8 = 0;
        v9 = v13;
        do
        {
          v10 = v9[8];
          if (v10 > a2)
          {
            break;
          }

          if (!*v9)
          {
            v11 = v9[9] + v10;
            if (v11 <= a2 && (!v8 || v8[9] + v8[8] <= v11 && v8[7] + v8[6] <= (v9[7] + v9[6])))
            {
              v8 = v9;
            }
          }

          v9 += 16;
          --v7;
        }

        while (v7);
        if (v8)
        {
          result = 0;
          *a3 += v8[7] + v8[6] - (v8[8] + v8[9]);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t bed_marker_InjectFixedRefMarker(uint64_t a1, void *a2)
{
  result = 2370838535;
  if (a1)
  {
    if (a2)
    {
      result = bed_GoForward(a1, bed_marker_HasGreaterOrEqualPosCur, a2);
      if ((result & 0x80000000) == 0 || (result & 0x1FFF) == 0x14)
      {
        v5 = bed_Insert(a1, a2, 1);
        return v5 & (v5 >> 31);
      }
    }
  }

  return result;
}

BOOL bed_marker_HasGreaterOrEqualPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = v4 > v5;
    if (v4 == v5)
    {
      v6 = *(a1 + 36) > *(a2 + 36);
    }

    return !v6;
  }

  return result;
}

uint64_t bed_marker_InjectMarker(uint64_t a1, unsigned int *a2)
{
  result = 2370838535;
  if (a1)
  {
    if (a2)
    {
      result = bed_marker_MapPosCur(a1, a2[8], a2 + 6);
      if ((result & 0x80000000) == 0)
      {
        result = bed_marker_MapPosCur(a1, a2[9] + a2[8], a2 + 7);
        if ((result & 0x80000000) == 0)
        {
          v6 = a2[6];
          v5 = a2[7];
          v7 = v5 >= v6;
          v8 = v5 - v6;
          if (v8 != 0 && v7)
          {
            a2[7] = v8;
          }

          result = bed_GoForward(a1, bed_marker_HasGreaterOrEqualPosCur, a2);
          if ((result & 0x80000000) == 0 || (result & 0x1FFF) == 0x14)
          {
            v9 = bed_Insert(a1, a2, 1);
            return v9 & (v9 >> 31);
          }
        }
      }
    }
  }

  return result;
}

uint64_t freeMERDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 88))
  {
    log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] free MER definitions", a6, a7, a8, v13);
    v9 = *(a1 + 96);
    if (v9)
    {
      if (*(a1 + 88))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (*(v9 + v10 + 16))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v9 + v10 + 16));
            v9 = *(a1 + 96);
            *(v9 + v10 + 16) = 0;
          }

          if (*(v9 + v10 + 32))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v9 + v10 + 32));
            v9 = *(a1 + 96);
            *(v9 + v10 + 32) = 0;
          }

          if (*(v9 + v10 + 48))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v9 + v10 + 48));
            v9 = *(a1 + 96);
            *(v9 + v10 + 48) = 0;
          }

          ++v11;
          v10 += 64;
        }

        while (v11 < *(a1 + 88));
      }

      heap_Free(*(*(a1 + 16) + 8), v9);
      *(a1 + 96) = 0;
    }

    *(a1 + 88) = 0;
  }

  return 0;
}

uint64_t getMERDefs(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a1 + 88);
  if (*(a1 + 88))
  {
    freeMERDefs(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] get MER definitions", a6, a7, a8, v29);
  cstdlib_memcpy(v10, a4, 2uLL);
  v11 = heap_Calloc(*(*(a1 + 16) + 8), 1, (*(a1 + 88) << 6) | 1);
  *(a1 + 96) = v11;
  if (v11)
  {
    if (!*v10)
    {
      return 0;
    }

    v19 = 0;
    v20 = 2;
    while (1)
    {
      __dst = 0;
      cstdlib_memcpy(&__dst + 2, &a4[v20], 2uLL);
      *(*(a1 + 96) + (v19 << 6)) = HIWORD(__dst);
      cstdlib_memcpy(&__dst + 2, &a4[v20 + 2], 2uLL);
      *(*(a1 + 96) + (v19 << 6) + 4) = HIWORD(__dst);
      cstdlib_memcpy(&__dst + 2, &a4[v20 + 4], 2uLL);
      v21 = 0;
      v20 += 6;
      *(*(a1 + 96) + (v19 << 6) + 56) = HIWORD(__dst);
      while (1)
      {
        LOWORD(__dst) = 0;
        cstdlib_memcpy(&__dst, &a4[v20], 2uLL);
        v20 += 2;
        v22 = __dst;
        if (__dst)
        {
          v23 = heap_Calloc(*(*(a1 + 16) + 8), 1, (4 * __dst) | 1);
          if (!v23)
          {
            goto LABEL_22;
          }

          v24 = v23;
          v22 = __dst;
          if (__dst)
          {
            v25 = 0;
            do
            {
              cstdlib_memcpy(&__dst + 2, &a4[v20], 2uLL);
              v20 += 2;
              *(v24 + 4 * v25++) = HIWORD(__dst);
              v22 = __dst;
            }

            while (v25 < __dst);
          }
        }

        else
        {
          v24 = 0;
        }

        v26 = *(a1 + 96) + (v19 << 6);
        if (v21)
        {
          break;
        }

        *(v26 + 8) = v22;
        v27 = (v26 + 16);
LABEL_18:
        *v27 = v24;
        ++v21;
      }

      if (v21 == 1)
      {
        break;
      }

      result = 0;
      *(v26 + 40) = v22;
      *(v26 + 48) = v24;
      if (++v19 >= *v10)
      {
        return result;
      }
    }

    *(v26 + 24) = v22;
    v27 = (v26 + 32);
    goto LABEL_18;
  }

  *v10 = 0;
LABEL_22:
  freeMERDefs(a1, v12, v13, v14, v15, v16, v17, v18);
  return 2370838538;
}

uint64_t freeSYMDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 64))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] free SYM definitions", a6, a7, a8, v11);
  v9 = *(a1 + 72);
  if (v9)
  {
    heap_Free(*(*(a1 + 16) + 8), v9);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  result = *(a1 + 40);
  if (result)
  {
    result = ssftriff_reader_ReleaseChunkData(result);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t getSYMDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  __dst = 0;
  v31 = a4;
  v29 = 0;
  if (!*(a1 + 64))
  {
    v10 = a4;
    log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] get SYM definitions", a6, a7, a8, v27);
    cstdlib_memcpy(&__dst, v10, 4uLL);
    cstdlib_memcpy(&__dst + 4, (v10 + 4), 4uLL);
    v12 = HIDWORD(__dst) + 8;
    v13 = (HIDWORD(__dst) + 8 + __dst);
    cstdlib_memcpy((a1 + 64), (v10 + v13), 2uLL);
    v14 = heap_Calloc(*(*(a1 + 16) + 8), 1, (8 * *(a1 + 64)) | 1);
    *(a1 + 72) = v14;
    if (v14)
    {
      if (*(a1 + 64))
      {
        v22 = 0;
        v23 = v13 + 2;
        v24 = 1;
        do
        {
          v28 = 0;
          cstdlib_memcpy(&v28, (v10 + v23), 2uLL);
          v10 = v31;
          cstdlib_memcpy(&v29, (v31 + v23 + 2), 4uLL);
          v23 += 6;
          v25 = (*(a1 + 72) + v22);
          v25[1] = v28;
          *v25 = v29;
          v22 += 8;
        }

        while (*(a1 + 64) > v24++);
      }

      result = ssftriff_reader_DetachChunkData(a2, (a1 + 40), &v31);
      if ((result & 0x80000000) == 0)
      {
        *(a1 + 80) = v31 + v12;
      }
    }

    else
    {
      freeSYMDefs(a1, v15, v16, v17, v18, v19, v20, v21);
      return 2370838538;
    }
  }

  return result;
}

uint64_t wparser_ObjOpen2(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v15 = 2370838535;
  v32 = 0;
  v31 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v32) & 0x80000000) == 0)
  {
    *a5 = 0;
    v24 = heap_Alloc(*(v32 + 8), 144);
    if (v24)
    {
      v25 = v24;
      cstdlib_memset(v24, 0, 0x90uLL);
      *v25 = a1;
      *(v25 + 8) = a2;
      *(v25 + 16) = v32;
      *(v25 + 32) = a12;
      cstdlib_memset((v25 + 88), 0, 0x10uLL);
      cstdlib_memset((v25 + 64), 0, 0x18uLL);
      *(v25 + 56) = a4;
      *(v25 + 40) = 0;
      *(v25 + 48) = a3;
      *(v25 + 104) = a6;
      *(v25 + 112) = a7;
      *(v25 + 120) = a8;
      *(v25 + 128) = 0;
      *(v25 + 138) = 512;
      if ((paramc_ParamGetUInt(*(v32 + 40), "udctmaxlookuplen", &v31) & 0x80000000) == 0)
      {
        *(v25 + 138) = v31;
      }

      *(v25 + 136) = 512;
      if ((paramc_ParamGetUInt(*(v32 + 40), "udctmaxdictretlen", &v31) & 0x80000000) == 0)
      {
        *(v25 + 136) = v31;
      }

      *(v25 + 140) = 1;
      if ((paramc_ParamGetUInt(*(v32 + 40), "numberoutputtranscriptions", &v31) & 0x80000000) != 0)
      {
        v27 = *(v25 + 140);
      }

      else
      {
        v27 = v31;
        *(v25 + 140) = v31;
      }

      HIDWORD(v28) = *(v25 + 136);
      LODWORD(v28) = HIDWORD(v28);
      v29 = utoin_ObjOpen(a1, a2, (v25 + 24), a6, a7, a8, a9, v26, a10, a11, a13, a14, a15, SHIWORD(v28), (v28 >> 16) >> 16, v27);
      if ((v29 & 0x80000000) != 0 || (v33[0] = "SYMD", v33[1] = getSYMDefs, v33[2] = freeSYMDefs, v33[3] = v25, v33[4] = "MERR", v33[5] = getMERDefs, v33[6] = freeMERDefs, v33[7] = v25, v29 = extdata_RegisterData(a12, v33, 2u), (v29 & 0x80000000) != 0))
      {
        v15 = v29;
        wparser_ObjClose2(v25);
      }

      else
      {
        v15 = 0;
        *a5 = v25;
      }
    }

    else
    {
      return 2370838538;
    }
  }

  return v15;
}

uint64_t wparser_ObjClose2(uint64_t a1)
{
  v1 = 2370838535;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      utoin_ObjClose(v3);
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t wparser_ProcessStart(uint64_t a1)
{
  v1 = 2370838535;
  v11 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v11) & 0x80000000) == 0)
  {
    if (*(a1 + 64))
    {
      v7 = paramc_ParamGet(*(*(a1 + 16) + 40), "langcode", (a1 + 128), 0);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      else
      {
        v8 = utoin_ProcessStart(*(a1 + 24));
        return v8 & (v8 >> 31);
      }
    }

    else
    {
      log_OutPublic(*(v11 + 32), &modPP_2, 1810, 0, v3, v4, v5, v6, v10);
    }
  }

  return v1;
}

uint64_t wparser_ProcessEnd(void *a1)
{
  if (!a1)
  {
    return 2370838535;
  }

  if (a1[16])
  {
    paramc_ParamRelease(*(a1[2] + 40));
  }

  v2 = utoin_ProcessEnd(a1[3]);
  return v2 & (v2 >> 31);
}

uint64_t wparser_NormalizeWords(unsigned __int16 *a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  v60 = 0;
  v61 = 0;
  v5 = 2370838535;
  v59 = 0;
  if (!a1 || !a2 || (InitRsrcFunction(*a1, *(a1 + 1), &v60) & 0x80000000) != 0)
  {
    return v5;
  }

  v14 = datac_RequestBlock(a2, 1020, 1u, &v61);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (!*(v61 + 16))
  {
    log_OutText(*(*(a1 + 2) + 32), &modPP_2, 5, 0, "[SEQ] wparser : no text to process", v11, v12, v13, v57);
    return v14;
  }

  v15 = bed_ObjOpen(*a1, *(a1 + 1), a2, 1021, &v59, 213);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v62 = 0;
  v16 = datac_RequestBlock(a2, 1021, 1u, &v62);
  if ((v16 & 0x80000000) != 0)
  {
    v27 = v16;
    LOWORD(v25) = 0;
    goto LABEL_23;
  }

  v17 = *(v62 + 8);
  v18 = *(v62 + 16);
  if (v18 < 2)
  {
    goto LABEL_39;
  }

  v19 = v17 + 16;
  v20 = *(v62 + 16);
LABEL_10:
  v21 = v19;
  v22 = 1;
  do
  {
    if (v21[5] == 999 && v21[8] == v17[8] && !v21[10])
    {
      v23 = v22 + 1;
      if (v23 < v20)
      {
        v24 = v19;
        cstdlib_memmove(v21, &v17[16 * v23], (v20 - v22) << 6);
        v19 = v24;
      }

      LOWORD(v25) = 0;
      v58 = 0;
      v26 = 0;
      --v20;
      v18 = 1;
      if ((v20 & 0xFFFE) == 0)
      {
LABEL_60:
        *(v62 + 16) = v18;
        v43 = v17[6] + a3;
        v44 = v17[7] - a3;
        v17[6] = v43;
        v17[7] = v44;
        if (v26)
        {
          v45 = v17 + 38;
          v46 = 1;
          v47 = 3;
          do
          {
            v48 = &v17[16 * v46];
            if (v48[5] != 0x4000 && !*v48 && v48[6] > v43)
            {
              if (v46 + 1 < v18)
              {
                v49 = v45;
                v50 = v47;
                do
                {
                  if (!*(v49 - 6))
                  {
                    *v49 -= v48[7];
                  }

                  v33 = v18 == v50++;
                  v49 += 16;
                }

                while (!v33);
              }

              v48[7] = 0;
            }

            ++v46;
            ++v47;
            v45 += 16;
          }

          while (v46 != v18);
        }

        v51 = *(a1 + 13);
        v52 = log_GetLogLevel(*(*(a1 + 2) + 32)) > 4;
        v53 = utois_ScanRegions(v51, *(a1 + 14), *(a1 + 15), v52, *a1, *(a1 + 1), a2, a1 + 32, *(a1 + 6), *(a1 + 7), *(a1 + 16), *(a1 + 34), HIWORD(*(a1 + 34)), a1[70]);
        v5 = v53;
        if ((v53 & 0x80000000) != 0 && (v53 & 0x1FFF) != 0xA)
        {
          return v5;
        }

        v15 = utoin_NormalizeRegions(*(a1 + 3), a2, a1 + 44);
        if ((v15 & 0x80000000) == 0)
        {
          v27 = wparser_loc_ReSyncOut(a1, a2, a3, a4, v58, v25, v54, v55);
          goto LABEL_77;
        }

        return v15;
      }

      goto LABEL_10;
    }

    ++v22;
    v21 += 16;
  }

  while (v20 != v22);
  v18 = v20;
  if (v20 < 2)
  {
LABEL_39:
    LOWORD(v25) = 0;
    v58 = 0;
    v26 = 0;
    goto LABEL_60;
  }

  LOWORD(v25) = 0;
  v28 = v20 - 1;
  v29 = v17 + 16;
  do
  {
    v30 = v29[5];
    if (v30 != 0x4000 && !*v29 || v29[6] == v17[6] && ((v31 = v30 > 0x24, v32 = (1 << v30) & 0x1080200080, !v31) ? (v33 = v32 == 0) : (v33 = 1), !v33 && *v29 == 1))
    {
      LOWORD(v25) = v25 + 1;
    }

    v29 += 16;
    --v28;
  }

  while (v28);
  if (!v25)
  {
    v58 = 0;
    goto LABEL_41;
  }

  v58 = heap_Calloc(*(*(a1 + 2) + 8), 1, (v25 << 6) | 1);
  if (v58)
  {
LABEL_41:
    v25 = 0;
    v34 = 0;
    v35 = v20 - 1;
    v36 = v17 + 16;
    while (1)
    {
      v37 = v36[5];
      if (v37 == 0x4000 || *v36)
      {
        v38 = v36[6];
        if (v38 != v17[6])
        {
          goto LABEL_58;
        }

        v31 = v37 > 0x24;
        v39 = (1 << v37) & 0x1080200080;
        v40 = v31 || v39 == 0;
        if (v40 || *v36 != 1)
        {
          goto LABEL_58;
        }

        v36[6] = v38 + a3;
        cstdlib_memcpy((v58 + (v34 << 6)), v36, 0x40uLL);
        ++v25;
      }

      else
      {
        cstdlib_memcpy((v58 + (v34 << 6)), v36, 0x40uLL);
        ++v25;
        v41 = a5[5];
        if (!v41)
        {
          v34 = v25;
          goto LABEL_58;
        }

        if (v41 == v36[5])
        {
          v42 = a5[6];
          if (v42 == v36[6] && a5[7] == v36[7])
          {
            *(v36 + 3) = (v42 + a3);
          }
        }
      }

      v34 = v25;
LABEL_58:
      v36 += 16;
      if (!--v35)
      {
        v26 = 1;
        goto LABEL_60;
      }
    }
  }

  v27 = -1924128758;
LABEL_23:
  v58 = 0;
  LODWORD(v5) = 0;
LABEL_77:
  if (v25)
  {
    heap_Free(*(*(a1 + 2) + 8), v58);
  }

  if (v59)
  {
    bed_ObjClose(v59);
  }

  if ((v5 & 0x1FFF) == 0xA)
  {
    return v5;
  }

  else
  {
    return v27;
  }
}

uint64_t wparser_loc_ReSyncOut(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v10 = a4;
  v81 = 0;
  v82 = 0;
  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] ReSyncOut(refReset=%d posRefOffset=%d)", a6, a7, a8, a4);
  result = datac_RequestBlock(a2, 1021, 1u, &v81);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v15 = *(v81 + 8);
  v16 = *(v81 + 16);
  v17 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * v16) | 1);
  if (!v17)
  {
    return 2370838538;
  }

  v18 = v17;
  if (!v16)
  {
    goto LABEL_52;
  }

  v19 = 0;
  v20 = 0;
  do
  {
    v21 = &v15[16 * v19];
    v22 = v21[5];
    v23 = v22 > 0x24 || ((1 << v22) & 0x1080200080) == 0;
    if (v23 && v22 != 999)
    {
      if (*v21)
      {
        v29 = 1;
      }

      else
      {
        v29 = v20 >= v8;
      }

      if (v29)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    if (!*v21)
    {
      if (v20 >= v8)
      {
        goto LABEL_36;
      }

LABEL_32:
      v30 = v20;
      v31 = (a5 + 20 + (v20 << 6));
      while (v22 != 999)
      {
        v32 = *v31;
        v31 += 16;
        if (v32 == v22)
        {
          break;
        }

        if (v8 == ++v30)
        {
          goto LABEL_36;
        }
      }

      ++v20;
      v33 = v30 + 1;
      goto LABEL_37;
    }

    v24 = v22 != 999 && *v21 == 1;
    if (!v24 || ((v25 = v21[6], v25 == v15[6]) ? (v26 = v20 >= v8) : (v26 = 1), v26))
    {
LABEL_36:
      v33 = 0;
      goto LABEL_37;
    }

    v27 = v20;
    v28 = (a5 + 24 + (v20 << 6));
    while (*(v28 - 1) != v22 || *v28 != v25)
    {
      ++v27;
      v28 += 16;
      if (v8 == v27)
      {
        goto LABEL_36;
      }
    }

    ++v20;
    v33 = v27 + 1;
LABEL_37:
    *(v18 + 2 * v19++) = v33;
  }

  while (v19 != v16);
  v34 = v16;
  v35 = v18;
  v36 = v15 + 7;
  do
  {
    v37 = *(v36 - 2);
    v38 = v37 > 0x24 || ((1 << v37) & 0x1080200080) == 0;
    if (!v38 || v37 == 999 || !*(v36 - 7))
    {
      v39 = *v35;
      if (*v35)
      {
        v40 = *(a5 + ((v39 - 1) << 6) + 24);
        v41 = *(a5 - 36 + (v39 << 6));
        *(v36 - 1) = v40;
        *v36 = v41;
        if (v40 == v15[6] && v15[7] + v40 >= (v40 - a3))
        {
          *(v36 - 1) = v40 - a3;
        }
      }
    }

    v36 += 16;
    ++v35;
    --v34;
  }

  while (v34);
LABEL_52:
  v42 = v15[7] + v10 + a3;
  v15[6] -= v10 + a3;
  v15[7] = v42;
  if (v16 >= 2)
  {
    v43 = v15[8];
    for (i = 1; i != v16; ++i)
    {
      v45 = &v15[16 * i];
      if (v45[8] != v43 || v45[6] > (v10 + a3 + v15[6]))
      {
        v46 = v45[5];
        if (v46 == 999 || v46 != 0x4000 && !*v45)
        {
          LOWORD(v47) = 0;
          v48 = &v15[16 * (v16 - 1) + 6];
          v49 = (v16 - 1);
          do
          {
            if (i != v49 && *(v48 - 1) != 0x4000 && *v48 >= v45[6])
            {
              LOWORD(v47) = v49;
            }

            --v49;
            v48 -= 16;
          }

          while (v49);
          v50 = v45[7];
          if (v50)
          {
            if (v16 > v47)
            {
              v47 = v47;
              v51 = &v15[16 * v47 + 6];
              do
              {
                if (i != v47 && *(v51 - 1) != 999 && *(v51 - 6) == 1 && *v51 >= v45[6])
                {
                  v52 = *v51 + v50;
                  if (v15[6] + v42 < v52)
                  {
                    break;
                  }

                  *v51 = v52;
                }

                ++v47;
                v51 += 16;
              }

              while (v47 < v16);
            }
          }
        }
      }
    }

    v53 = 1;
    while (2)
    {
      v54 = v53;
      v55 = &v15[16 * v53++];
      if (v55[5] == 41)
      {
        if (v53 < v16)
        {
          v56 = &v15[16 * v53];
          if (v56[5] == 39 && v56[8] == v55[8])
          {
            v57 = v53;
            goto LABEL_91;
          }
        }

        if (v54 >= 2 && (v57 = v54 - 1, v58 = &v15[16 * v54 - 16], v58[5] == 39))
        {
          if (v58[8] != v55[8])
          {
            v57 = 0;
          }
        }

        else
        {
          v57 = 0;
        }

        if (v53 < v16 && (v59 = &v15[16 * v53], v59[5] == 14) && v59[8] == v55[8])
        {
          v60 = v53;
        }

        else
        {
LABEL_91:
          if (v54 >= 2 && (v60 = v54 - 1, v61 = &v15[16 * v54 - 16], v61[5] == 14))
          {
            if (v61[8] != v55[8])
            {
              v60 = 0;
            }
          }

          else
          {
            v60 = 0;
          }
        }

        v62 = v55[6];
        v63 = v55[7];
        v64 = 1;
        do
        {
          v65 = &v15[16 * v64];
          v66 = v65[6];
          if (v66 > v63 + v62)
          {
            break;
          }

          if (v54 < v64)
          {
            if (v66)
            {
              if (!*v65)
              {
                v67 = v65[5];
                if (v67 != 7)
                {
                  v68 = v67 != 0x4000 && v66 >= v62;
                  if (v68 && v66 < v63 + v62)
                  {
                    v70 = v65[7] + v63;
                    if (v70 + v62 <= v15[7] + v15[6])
                    {
                      v55[7] = v70;
                      v63 = v70;
                    }

                    if (v57)
                    {
                      v15[16 * v57 + 7] = v63;
                    }

                    if (v60)
                    {
                      v15[16 * v60 + 7] = v63;
                    }
                  }
                }
              }
            }
          }

          ++v64;
        }

        while (v16 > v64);
      }

      if (v53 == v16)
      {
        break;
      }

      continue;
    }
  }

  result = datac_RequestBlock(a2, 1020, 1u, &v82);
  if ((result & 0x80000000) == 0)
  {
    if (v16 >= 2)
    {
      v71 = 1;
      v72 = 1;
      do
      {
        v73 = v72;
        v74 = &v15[16 * v72];
        if (v74[5] == 7 && v74[10] == 43)
        {
          if (v16 <= (v71 + 1))
          {
LABEL_129:
            if (*(v82 + 16) + v15[8] == v74[9] + v74[8])
            {
              v74[7] = v15[7] + v15[6] - v74[6];
              if ((datac_RequestBlock(a2, 1021, (*(v81 + 16) + 1), &v81) & 0x80000000) != 0)
              {
                break;
              }

              v15 = *(v81 + 8);
              v77 = &v15[16 * v73];
              cstdlib_memmove(&v15[16 * (v71 + 1)], v77, (*(v81 + 16) - v71) << 6);
              v78 = *(v81 + 8) + (v73 << 6);
              *(v78 + 104) = 15;
              *(v78 + 64) = 1;
              v79 = v77[6];
              *(v78 + 84) = 7;
              *(v78 + 88) = v79;
              v80 = v77[9] + v77[8];
              *(v78 + 92) = 0;
              *(v78 + 96) = v80;
              *(v78 + 100) = 0;
              *(v78 + 80) = 0;
              *(v78 + 72) = 0;
              *(v78 + 112) = 0;
              ++*(v81 + 16);
              v72 = v16;
            }
          }

          else
          {
            v75 = (v71 + 1);
            v76 = &v15[16 * v75 + 8];
            while (*(v76 - 3) != 999 || *v76 != v74[9] + v74[8])
            {
              LOWORD(v75) = v75 + 1;
              v76 += 16;
              if (v16 == v75)
              {
                goto LABEL_129;
              }
            }

            v74[7] = v15[16 * v75 + 7] + v15[16 * v75 + 6] - v74[6];
            v72 = v75;
          }
        }

        v71 = ++v72;
      }

      while (v72 < v16);
    }

    heap_Free(*(*(a1 + 16) + 8), v18);
    return 0;
  }

  return result;
}

uint64_t wparser_insertRegionTags(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return utoin_InsertRegions(*(a1 + 24), a2);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t wparser_InsertWordMarkers(uint64_t a1, uint64_t a2, char *__s, unsigned __int16 *a4)
{
  v84 = 0;
  v85[0] = 0;
  v79 = 0;
  v78 = 0;
  v8 = cstdlib_strlen(__s);
  memset(__dst, 0, sizeof(__dst));
  v9 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1021, v85, 213);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = bed_GetpElem(v85[0], 0, &v84);
  if ((v10 & 0x80000000) != 0 || (v12 = v84, v11 = v85[0], v13 = v84[1], v80 = *v84, v81 = v13, v14 = v84[3], v82 = v84[2], v83 = v14, *(v84 + 7) = 0, *(v12 + 9) = 0, v10 = bed_GetpElem(v11, 0, &v84), (v10 & 0x80000000) != 0) || (v15 = v81, v17 = v84, v16 = v85[0], *v84 = v80, v17[1] = v15, v18 = v83, v17[2] = v82, v17[3] = v18, v10 = bed_GetcElem(v16, &v78), (v10 & 0x80000000) != 0))
  {
    v19 = v10;
    goto LABEL_51;
  }

  v19 = bed_GetpElem(v85[0], 0, &v79);
  if ((v19 & 0x80000000) == 0)
  {
    v20 = v78;
    if (v78 < 2u)
    {
      goto LABEL_79;
    }

    v21 = v79;
    v22 = 84;
    v23 = 1;
    while (1)
    {
      v76 = 0;
      v76 = *(v21 + (v23 << 6) + 32) - *(v21 + 32);
      utf8_GetPreviousValidUtf8Offset(__s, &v76);
      v21 = v79;
      v24 = v76;
      v25 = v79 + (v23 << 6);
      *(v25 + 32) = v76 + *(v79 + 32);
      v26 = *(v25 + 20);
      v27 = v26 > 0x39;
      v28 = (1 << v26) & 0x3C8002000004002;
      if (v27 || v28 == 0)
      {
        goto LABEL_45;
      }

      v76 = v24;
      v30 = utf8_BelongsToSet(5u, __s, v24, v8);
      v31 = v76;
      if (v30)
      {
        while (v31 < v8 && utf8_BelongsToSet(5u, __s, v31, v8))
        {
          v32 = utf8_determineUTF8CharLength(__s[v76]);
          *(v79 + (v23 << 6) + 32) += v32;
          v31 = v76 + v32;
          v76 += v32;
        }
      }

      else if (v76 < *(v79 + 36))
      {
        v33 = v23;
        while (1)
        {
          v34 = v33;
          if (!v33)
          {
            break;
          }

          --v33;
          v35 = *(v79 + ((v34 - 1) << 6) + 20);
          v27 = v35 > 0x39;
          v36 = (1 << v35) & 0x3C8010124021140;
          if (!v27 && v36 != 0)
          {
            goto LABEL_23;
          }
        }

        LOWORD(v33) = -1;
LABEL_23:
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v76);
        if (PreviousUtf8Offset != -1)
        {
          for (i = PreviousUtf8Offset; i != -1; i = utf8_GetPreviousUtf8Offset(__s, i))
          {
            v40 = utf8_BelongsToSet(5u, __s, i, v8);
            if (!v34)
            {
              break;
            }

            if (v40)
            {
              break;
            }

            if (i <= *(v79 + (v33 << 6) + 32))
            {
              break;
            }

            *(v79 + (v23 << 6) + 32) += i - v76;
            v76 = i;
          }
        }
      }

      v21 = v79;
      v41 = v79 + (v23 << 6);
      v42 = *(v41 + 32);
      v43 = *(v79 + 32);
      v44 = v42 - v43;
      v76 = v42 - v43;
      if (*(v41 + 20) != 1)
      {
        goto LABEL_45;
      }

      if (v44 < v8)
      {
        v45 = v42 - v43;
        do
        {
          if (utf8_BelongsToSet(5u, __s, v45, v8))
          {
            break;
          }

          v45 = v76 + utf8_determineUTF8CharLength(__s[v76]);
          v76 = v45;
        }

        while (v45 < v8);
        v21 = v79;
      }

      v46 = v21 + (v23 << 6);
      if (v23 >= v78)
      {
LABEL_43:
        v55 = v76 - v44;
      }

      else
      {
        v47 = (v21 + v22);
        v48 = v23;
        v49 = (v21 + v22);
        while (1)
        {
          v50 = *v49;
          v49 += 16;
          v51 = (1 << v50) & 0x3C8010124221140;
          if (v50 <= 0x39 && v51 != 0)
          {
            v53 = v47[3];
            v54 = *(v46 + 32);
            if (v53 > v54)
            {
              break;
            }
          }

          ++v48;
          v47 = v49;
          if (v78 == v48)
          {
            goto LABEL_43;
          }
        }

        v55 = v76 - v44;
        if (v76 - v44 + v54 > *(v21 + (v48 << 6) + 32))
        {
          goto LABEL_45;
        }
      }

      *(v46 + 36) = v55;
LABEL_45:
      ++v23;
      v20 = v78;
      v22 += 64;
      if (v23 >= v78)
      {
        if (v78 >= 2u)
        {
          v57 = 1;
          v58 = 1;
          do
          {
            v59 = v58;
            v60 = (v79 + (v58 << 6));
            if (v60[5] != 0x4000 && (v61 = (v57 + 1), v61 < v20) && ((v62 = (v79 + (v61 << 6)), v63 = v62[8], v64 = v60[8], v63 < v64) || v63 == v64 && v62[9] < v60[9]))
            {
              cstdlib_memcpy(__dst, v62, 0x40uLL);
              v65 = (v79 + (v61 << 6));
              v66 = (v79 + (v59 << 6));
              v67 = v66[3];
              v69 = *v66;
              v68 = v66[1];
              v65[2] = v66[2];
              v65[3] = v67;
              *v65 = v69;
              v65[1] = v68;
              cstdlib_memcpy(v66, __dst, 0x40uLL);
              v58 = 0;
            }

            else
            {
              v58 = v59 + 1;
            }

            v57 = v58;
            v20 = v78;
          }

          while (v58 < v78);
          if (v78 >= 2u)
          {
            v70 = 1;
LABEL_67:
            v71 = v79;
            do
            {
              v72 = (v79 + (v70 << 6));
              if (v72[5] == 1)
              {
                v73 = v70;
                while (++v73 < v20)
                {
                  v74 = (v79 + (v73 << 6));
                  if (v74[8] != v72[8])
                  {
                    break;
                  }

                  if (v74[5] == 1)
                  {
                    v72[7] = v74[7] + v74[6] - v72[6];
                    v75 = v73 + 1;
                    if (v20 > v75)
                    {
                      cstdlib_memmove(v74, (v71 + (v75 << 6)), (v20 - v75) << 6);
                      v20 = v78;
                    }

                    v78 = --v20;
                    if (v70 < v20)
                    {
                      goto LABEL_67;
                    }

                    goto LABEL_79;
                  }
                }
              }

              ++v70;
            }

            while (v70 < v20);
          }
        }

LABEL_79:
        *a4 = v20;
        break;
      }
    }
  }

LABEL_51:
  if (v85[0])
  {
    bed_ObjClose(v85[0]);
  }

  return v19;
}

uint64_t utoin_LookUpUdctWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, __int16 a7, uint64_t a8)
{
  v16 = 62;
  __s1 = 12049;
  v14 = 0;
  v13 = 1;
  if (!a4)
  {
    return 2370838535;
  }

  *(a4 + 12) = 0;
  if (*(a4 + 8) > a6)
  {
    return 0;
  }

  *(*a4 + *(a4 + 8)) = 0;
  *(a4 + 24) = a7;
  if ((*(a1 + 128))(a2, a3, a5, *a4, 0, "normal", &v13, *(a4 + 16), a4 + 24, a8, 0, &v14, 0, 0))
  {
    return 0;
  }

  v10 = cstdlib_strlen(*(a4 + 16));
  *(a4 + 24) = v10;
  v11 = *(a4 + 16);
  if (!v11[v10 - 1])
  {
    *(a4 + 24) = --v10;
  }

  if (v13 == 4)
  {
    if (v10 < 7u || cstdlib_memcmp(&__s1, v11, 3uLL) || cstdlib_memcmp(&__s1, (*(a4 + 16) + *(a4 + 24) - 3), 3uLL))
    {
      v12 = 2;
    }

    else
    {
      cstdlib_memmove(*(a4 + 16), (*(a4 + 16) + 2), *(a4 + 24) - 4);
      *(*(a4 + 16) + *(a4 + 24) - 4) = 0;
      v12 = 16;
      **(a4 + 16) = 16;
      *(*(a4 + 16) + *(a4 + 24) - 5) = 17;
      *(a4 + 24) -= 4;
    }
  }

  else
  {
    v12 = 43;
  }

  result = 0;
  *(a4 + 12) = v12;
  return result;
}

uint64_t utoin_ReplaceWord(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, char *a7)
{
  v81 = 0;
  v82[0] = 0;
  v80 = 0;
  v14 = 2370838535;
  v79 = 0u;
  memset(__b, 0, sizeof(__b));
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  *v65 = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  __b[0] = MarkerUDCTREF;
  __b[1] = unk_26ECDC1F0;
  __b[2] = xmmword_26ECDC200;
  v79 = unk_26ECDC210;
  cstdlib_memset(&v74, 0, 0x40uLL);
  v74 = MarkerSetTypeOfInput;
  v75 = unk_26ECDC230;
  v76 = xmmword_26ECDC240;
  v77 = unk_26ECDC250;
  cstdlib_memset(&v70, 0, 0x40uLL);
  v70 = MarkerSetLang;
  v71 = unk_26ECDC270;
  v72 = xmmword_26ECDC280;
  v73 = unk_26ECDC290;
  cstdlib_memset(&v66, 0, 0x40uLL);
  v66 = MarkerSetNLU;
  v67 = unk_26ECDC2B0;
  v68 = xmmword_26ECDC2C0;
  v69 = unk_26ECDC2D0;
  if (!a1 || !a2 || !a4)
  {
    return v14;
  }

  TNArgStr = bed_GetpElem(a2, 0, v82);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v16 = *(v82[0] + 32);
  TNArgStr = bed_GetpElem(a2, 0xFFFFu, &v81);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  if (a5 == 1 && v81[5] != 7)
  {
    return v14;
  }

  TNArgStr = datac_RequestBlock(a6, 1012, 1u, v65);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v62 = a5;
  v61 = v16;
  v17 = v81[8];
  v18 = a3;
  v19 = *(v82[0] + 32);
  v60 = v81[6];
  v56 = v81[7];
  v57 = v81[9];
  v20 = v18;
  v58 = *(a4 + 8);
  TNArgStr = bed_Remove(a1, v18, v58);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v59 = v17 - v19;
  if (*(a4 + 24))
  {
    v21 = v20;
    TNArgStr = bed_Goto(a1, v20);
    v22 = v62;
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    TNArgStr = bed_Insert(a1, *(a4 + 16), *(a4 + 24));
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    if (*(a4 + 8) + v20 >= v81[9] + v59)
    {
      v55 = v81[8];
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v55 = 0;
    }

    v24 = v61;
  }

  else
  {
    v23 = 0;
    v55 = 0;
    v21 = v20;
    v24 = v61;
    v22 = v62;
  }

  v25 = v82;
  if (v22 == 1)
  {
    v25 = &v81;
  }

  (*v25)[9] = (*v25)[9] + *(a4 + 24) - *(a4 + 8);
  TNArgStr = bed_GetiElem(a2, &v80);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v63 = v21 - v59;
  if (a7)
  {
    DWORD1(v71) = 36;
    TNArgStr = addOrGetTNArgStr(*v65, a7, &v72 + 2, a6);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v26 = v81[8];
    if (v26 - v24 < v21)
    {
      *(&v71 + 1) = (v63 + v60);
      *&v72 = v24 + v21;
      TNArgStr = bed_Goto(a2, 1u);
      if ((TNArgStr & 0x80000000) != 0)
      {
        return TNArgStr;
      }

      v27 = &v70;
      goto LABEL_30;
    }

    *(&v71 + 1) = v81[6];
    *&v72 = v26;
    TNArgStr = bed_Goto(a2, 1u);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v29 = &v70;
LABEL_37:
    TNArgStr = bed_marker_InjectFixedRefMarker(a2, v29);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    TNArgStr = bed_Goto(a2, v80 + 1);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    LOWORD(v80) = v80 + 1;
    v81 += 16;
    goto LABEL_40;
  }

  strcpy(__s, "BND");
  DWORD1(v67) = 51;
  TNArgStr = addOrGetTNArgStr(*v65, __s, &v68 + 2, a6);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v28 = v81[8];
  if (v28 - v24 >= v21)
  {
    *(&v67 + 1) = v81[6];
    *&v68 = v28;
    TNArgStr = bed_Goto(a2, 1u);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v29 = &v66;
    goto LABEL_37;
  }

  *(&v67 + 1) = (v63 + v60);
  *&v68 = v24 + v21;
  TNArgStr = bed_Goto(a2, 1u);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v27 = &v66;
LABEL_30:
  TNArgStr = bed_marker_InjectFixedRefMarker(a2, v27);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  TNArgStr = bed_Goto(a2, v80);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

LABEL_40:
  TNArgStr = bed_GetcElem(a2, &v80 + 1);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v30 = HIWORD(v80);
  v31 = v81 + 16;
  v32 = v80 + 1;
  if (HIWORD(v80) > (v80 + 1))
  {
    v33 = v24 + v21;
    do
    {
      v34 = v31[8];
      if (v33 <= v34)
      {
        v35 = *(a4 + 8);
        v36 = v24 + v21;
        if (v33 + v35 <= v34)
        {
          v36 = v34 - v35 + *(a4 + 24);
        }

        v31[8] = v36;
      }

      v31 += 16;
      ++v32;
    }

    while (v30 > v32);
    LOWORD(v32) = v30;
  }

  v81 = v31;
  LOWORD(v80) = v32;
  if (!v22)
  {
    return 0;
  }

  TNArgStr = bed_GetpElem(a2, 0xFFFFu, &v81);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v37 = *(a4 + 24);
  v38 = v81;
  if (*(a4 + 24))
  {
    v39 = v81[10];
    v40 = *(a4 + 12);
    if (v39 != v40)
    {
      v41 = v81[8];
      if (v41 - v24 >= v21)
      {
        v46 = *(a4 + 8);
        v81[7] = v46;
        v38[9] = v37;
        v38[10] = v40;
        if (*(a4 + 12) == 16)
        {
          DWORD2(__b[1]) = v38[6];
          HIDWORD(__b[1]) = v46;
          *&__b[2] = __PAIR64__(v37, v41);
LABEL_64:
          DWORD2(__b[2]) = 16;
          TNArgStr = bed_marker_InjectFixedRefMarker(a2, __b);
          if ((TNArgStr & 0x80000000) != 0)
          {
            return TNArgStr;
          }
        }
      }

      else
      {
        v42 = v24 + v21;
        v81[9] = v42 - v41;
        TNArgStr = bed_marker_MapPosCur(a2, v42, v38 + 7);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        v81[7] -= v81[6];
        v43 = *(a4 + 12);
        v44 = v58;
        if (v43 == 16)
        {
          v44 = 0;
        }

        DWORD2(v75) = v63 + v60;
        HIDWORD(v75) = v44;
        *&v76 = __PAIR64__(*(a4 + 24), v42);
        DWORD2(v76) = v43;
        TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v74);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        if (*(a4 + 12) == 16)
        {
          DWORD2(__b[1]) = v63 + v60;
          HIDWORD(__b[1]) = v58;
          *&__b[2] = __PAIR64__(*(a4 + 24), v42);
          goto LABEL_64;
        }
      }

      v47 = *(a4 + 8) + v21;
      v48 = v59 + v57 >= v47;
      v49 = v59 + v57 - v47;
      if (v49 == 0 || !v48)
      {
        v50 = v61 + v21;
LABEL_68:
        if (v23)
        {
          v51 = v55;
        }

        else
        {
          v51 = v50 + *(a4 + 24);
        }

        LOWORD(v80) = 0;
        TNArgStr = bed_GetpElem(a2, 0, &v81);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        TNArgStr = bed_GetcElem(a2, &v80 + 1);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        v52 = v80;
        if (v80 < HIWORD(v80))
        {
          for (i = v81 + 16; *(i - 11) != 7 || *(i - 6) != v39 || *(i - 8) != v51; i += 16)
          {
            v14 = 0;
            v81 = i;
            LOWORD(v80) = ++v52;
            if (v52 >= HIWORD(v80))
            {
              return v14;
            }
          }

          TNArgStr = bed_Goto(a2, v52);
          if ((TNArgStr & 0x80000000) != 0)
          {
            return TNArgStr;
          }
        }

        return 0;
      }

      DWORD2(v75) = v63 + v58 + v60;
      HIDWORD(v75) = v56 - (v63 + v58);
      v50 = v61 + v21;
      LODWORD(v76) = v50 + *(a4 + 24);
      *(&v76 + 4) = __PAIR64__(v39, v49);
      TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v74);
      if ((TNArgStr & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      return TNArgStr;
    }
  }

  else
  {
    v39 = *(a4 + 12);
  }

  *(&__b[1] + 8) = *(v81 + 6);
  DWORD2(__b[2]) = v39;
  v45 = bed_marker_InjectFixedRefMarker(a2, __b);
  return v45 & (v45 >> 31);
}

uint64_t addOrGetTNArgStr(uint64_t a1, char *__s, unsigned int *a3, uint64_t a4)
{
  v4 = 2370838535;
  v18 = a1;
  if (a1)
  {
    v5 = a1;
    v6 = *(a1 + 8);
    if (v6)
    {
      v10 = *(a1 + 16);
      if (!*(a1 + 16))
      {
LABEL_7:
        *a3 = v10;
        v14 = cstdlib_strlen(__s) + 1;
        v15 = *(v5 + 16);
        v16 = v15 + v14;
        if (*(v5 + 18) >= (v15 + v14))
        {
          v4 = 0;
        }

        else
        {
          v4 = datac_RequestBlock(a4, 1012, (v15 + v14), &v18);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          v5 = v18;
          v15 = *(v18 + 16);
        }

        cstdlib_memcpy((*(v5 + 8) + v15), __s, v14);
        *(v18 + 16) = v16;
        return v4;
      }

      v11 = 0;
      while (1)
      {
        v12 = cstdlib_strlen(v6);
        if (!cstdlib_strcmp(__s, v6))
        {
          break;
        }

        v13 = (v12 + 1);
        v11 += v13;
        v6 += v13;
        v10 = *(v5 + 16);
        if (v11 >= v10)
        {
          goto LABEL_7;
        }
      }

      v4 = 0;
      *a3 = v11;
    }
  }

  return v4;
}

uint64_t utoin_IncrReplaceCurrentRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = 0;
  v37 = 0;
  result = 2370838535;
  __src = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v35 = 0;
        v33 = 0;
        result = bed_GetpElem(a2, 0, &v37);
        if ((result & 0x80000000) == 0)
        {
          result = bed_GetpElem(a2, 0xFFFFu, &v36);
          if ((result & 0x80000000) == 0)
          {
            v10 = *(v36 + 32);
            v11 = *(v37 + 32);
            v12 = *(v36 + 36);
            result = bed_GetcElem(a3, &v35 + 1);
            if ((result & 0x80000000) == 0)
            {
              v13 = v10 - v11;
              if (HIWORD(v35))
              {
                result = bed_GetpElem(a3, 0, &__src);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_Remove(a1, v13, v12);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_Goto(a1, v13);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_Insert(a1, __src, HIWORD(v35));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v14 = HIWORD(v35);
                v15 = a3;
                v16 = 0;
              }

              else
              {
                v16 = v13;
                v15 = a1;
                v14 = v12;
              }

              result = bed_Remove(v15, v16, v14);
              if ((result & 0x80000000) == 0)
              {
                v17 = v36;
                *(v36 + 36) = HIWORD(v35);
                v18 = *(v17 + 32);
                result = bed_GetiElem(a2, &v33);
                if ((result & 0x80000000) == 0)
                {
                  result = bed_GetcElem(a2, &v35);
                  if ((result & 0x80000000) == 0)
                  {
                    v19 = v35;
                    v20 = v36;
                    v21 = v33 + 1;
                    v33 = v21;
                    if (v35 > v21)
                    {
                      v22 = v37;
                      v23 = HIWORD(v35);
                      while (1)
                      {
                        v24 = *(v20 + 96);
                        v25 = *(v22 + 32) + v13;
                        if (v24 >= v25 + v12)
                        {
                          break;
                        }

                        if (a5)
                        {
                          if (*(a5 + 16) == 1)
                          {
                            v26 = *(a5 + 8);
                            if (*(a5 + 8))
                            {
                              if (*(a5 + 12) != 1)
                              {
                                v28 = (*a5 + 12 * *(a5 + 8) - 4);
                                while (1)
                                {
                                  v29 = *(v28 - 4);
                                  if (v24 >= v18 + v29)
                                  {
                                    break;
                                  }

                                  v28 -= 6;
                                  if (!--v26)
                                  {
                                    goto LABEL_28;
                                  }
                                }

                                v30 = *v28;
                                v31 = v24 - v29;
                                if (*(v20 + 84) != 99)
                                {
                                  v31 = v18;
                                }

                                v32 = v31 + v30;
                                *(v20 + 96) = v32;
                                if (v32 == *(v22 + 32))
                                {
                                  goto LABEL_28;
                                }

                                v27 = v32 + 1;
                                goto LABEL_27;
                              }
                            }
                          }
                        }

                        *(v20 + 96) = v25;
                        if (v25 != *(v22 + 32))
                        {
                          v27 = v25 + 1;
LABEL_27:
                          *(v20 + 96) = v27;
                        }

LABEL_28:
                        v20 += 64;
                        v33 = ++v21;
                        if (v19 <= v21)
                        {
                          return result;
                        }
                      }

                      v27 = v24 - v12 + v23;
                      goto LABEL_27;
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

uint64_t utoin_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, __int16 a15, __int16 a16)
{
  v72 = *MEMORY[0x277D85DE8];
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  strcpy(v65, "xlit23");
  v70 = 0;
  strcpy(v71, "cpextensions");
  strcpy(__dst, "win936");
  v62 = -1;
  if (!a3)
  {
    return 2370838535;
  }

  v69 = 0;
  v61 = 0;
  if ((InitRsrcFunction(a1, a2, &v70) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  *a3 = 0;
  v23 = heap_Alloc(*(v70 + 8), 184);
  if (!v23)
  {
    return 2370838538;
  }

  v24 = v23;
  cstdlib_memset(v23, 0, 0xB8uLL);
  *v24 = a1;
  *(v24 + 8) = a2;
  v29 = v70;
  *(v24 + 16) = v70;
  *(v24 + 24) = 0;
  *(v24 + 32) = a7;
  *(v24 + 40) = a9;
  *(v24 + 48) = a10;
  *(v24 + 56) = 0;
  *(v24 + 60) = 0;
  *(v24 + 72) = 0;
  *(v24 + 164) = 0;
  *(v24 + 144) = 0;
  *(v24 + 136) = 0;
  *(v24 + 148) = 0x100000001;
  *(v24 + 80) = a4;
  *(v24 + 88) = a5;
  *(v24 + 96) = a6;
  *(v24 + 104) = a11;
  *(v24 + 112) = a12;
  *(v24 + 120) = a13;
  *(v24 + 128) = a14;
  *(v24 + 130) = a15;
  *(v24 + 132) = a16;
  *(v24 + 172) = 0;
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;
  if (a11)
  {
    __c_1 = 0;
    if (((*(a7 + 96))(a9, a10, "fecfg", "transcoder", &__c_3, &__c_1, &__c) & 0x80000000) == 0 && __c_1)
    {
      if (__c_1 == 1 && __c_3)
      {
        v30 = cstdlib_strchr(*__c_3, __c);
        if (v30)
        {
          *v30 = 0;
        }

        cstdlib_strcpy(__dst, *__c_3);
      }

      __c_1 = 0;
      v35 = 2370838528;
      if (((*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "translitdef", &__c_3, &__c_1, &__c) & 0x80000000) != 0 || !__c_1)
      {
        v43 = *(v70 + 32);
        v44 = 1803;
        goto LABEL_38;
      }

      if (__c_1 == 1 && __c_3)
      {
        v36 = cstdlib_strchr(*__c_3, __c);
        if (v36)
        {
          *v36 = 0;
        }

        cstdlib_strcpy(v65, *__c_3);
      }

      __c_1 = -1;
      fecfg_fewordseg_param = (*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "backtrans", &__c_3, &__c_1, &__c);
      if ((fecfg_fewordseg_param & 0x80000000) == 0)
      {
        *(v24 + 64) = __c_1 != 0;
        fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v24, (v24 + 164), "fewordseg_wpcrf");
        if ((fecfg_fewordseg_param & 0x80000000) == 0)
        {
          fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v24, (v24 + 164), "fewordseg_bypasshexcode");
          if ((fecfg_fewordseg_param & 0x80000000) == 0)
          {
            fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v24, (v24 + 172), "fewordseg_skipCollapseIdenticalRegion");
            if ((fecfg_fewordseg_param & 0x80000000) == 0)
            {
              fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v24, (v24 + 176), "fewordseg_extra_split_marker");
              if ((fecfg_fewordseg_param & 0x80000000) == 0)
              {
                if (!*(v24 + 64))
                {
                  cstdlib_memset(__b, 0, 7uLL);
                  cstdlib_strcpy(__b, "word");
                  v45 = (*(a7 + 72))(*(v24 + 40), *(v24 + 48), __b, &v69);
                  if ((v45 & 0x80000000) != 0)
                  {
                    v51 = v45;
                    heap_Free(*(v70 + 8), v24);
                    return v51;
                  }

                  if (v69)
                  {
                    v39 = 1;
                  }

                  else
                  {
                    cstdlib_memset(__b, 0, 7uLL);
                    v39 = 0;
                    for (i = 1; ; i = 0)
                    {
                      cstdlib_strcpy(__b, "word");
                      v53 = LH_itoa(v39, v60, 0xAu);
                      cstdlib_strcat(__b, v53);
                      v54 = (*(a7 + 72))(*(v24 + 40), *(v24 + 48), __b, &v69);
                      if ((v54 & 0x80000000) != 0)
                      {
                        v55 = v54;
                        heap_Free(*(v70 + 8), v24);
                        return v55;
                      }

                      if (!v69)
                      {
                        break;
                      }

                      ++v39;
                    }

                    if (i)
                    {
                      heap_Free(*(v70 + 8), v24);
                      log_OutPublic(*(v70 + 32), &modPP_3, 1809, 0, v56, v57, v58, v59, a3);
                      return 2370838794;
                    }
                  }

                  goto LABEL_45;
                }

                v62 = -1;
                fecfg_fewordseg_param = (*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "nrpart_g2p", &__c_3, &v62, &v61);
                if ((fecfg_fewordseg_param & 0x80000000) == 0)
                {
                  if (v62)
                  {
                    v38 = cstdlib_strchr(*__c_3, v61);
                    if (v38)
                    {
                      *v38 = 0;
                    }

                    v39 = cstdlib_atoi(*__c_3);
                  }

                  else
                  {
                    v39 = 0;
                  }

LABEL_45:
                  *(v24 + 56) = v39;
                  *(v24 + 60) = 0;
                  v62 = -1;
                  (*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "versioninfo", &__c_3, &v62, &v61);
                  if (v62)
                  {
                    v46 = cstdlib_strchr(*__c_3, v61);
                    if (v46)
                    {
                      *v46 = 0;
                    }

                    *(v24 + 60) = hasCharDic(*__c_3);
                  }

                  v62 = -1;
                  (*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "useppdomains", &__c_3, &v62, &v61);
                  if (v62)
                  {
                    v47 = cstdlib_strchr(*__c_3, v61);
                    if (v47)
                    {
                      *v47 = 0;
                    }

                    v48 = cstdlib_strcmp(*__c_3, "1") == 0;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  v49 = (*(a7 + 72))(*(v24 + 40), *(v24 + 48), v71, &v69);
                  if ((v49 & 0x80000000) != 0)
                  {
                    v35 = v49;
                    goto LABEL_39;
                  }

                  if (!v69)
                  {
                    v71[0] = 0;
                  }

                  v50 = (*(*(v24 + 104) + 56))(*(v24 + 112), *(v24 + 120), v24 + 32, v65, __dst, v48, v71);
                  if ((v50 & 0x80000000) == 0)
                  {
                    v35 = 0;
                    *a3 = v24;
                    return v35;
                  }

                  v35 = v50;
                  v43 = *(v70 + 32);
                  v44 = 1807;
LABEL_38:
                  log_OutPublic(v43, &modPP_3, v44, 0, v31, v32, v33, v34, a3);
LABEL_39:
                  heap_Free(*(v70 + 8), v24);
                  return v35;
                }
              }
            }
          }
        }
      }

      return fecfg_fewordseg_param;
    }

    v40 = *(v70 + 32);
    v41 = 1801;
  }

  else
  {
    v40 = *(v29 + 32);
    v41 = 1806;
  }

  log_OutPublic(v40, &modPP_3, v41, 0, v25, v26, v27, v28, a3);
  heap_Free(*(v70 + 8), v24);
  return 2370838528;
}

uint64_t read_fecfg_fewordseg_param(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  memset(__c, 0, sizeof(__c));
  v9 = -1;
  v5 = (*(a1 + 96))(*(a2 + 40), *(a2 + 48), "fecfg", a4, &__c[1], &v9, __c);
  if ((v5 & 0x80000000) == 0 && v9 == 1 && *&__c[1] != 0)
  {
    v7 = cstdlib_strchr(**&__c[1], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp(**&__c[1], "yes"))
    {
      *a3 = 1;
    }
  }

  return v5;
}

BOOL hasCharDic(unsigned __int8 *a1)
{
  v8 = 0;
  v9 = a1;
  v1 = cstdlib_strtol(a1, &v8, 0xAu);
  v2 = v1 < 1 || v8 == 0;
  if (v2 || *v8 != 46)
  {
    return 0;
  }

  v3 = cstdlib_strtol(v8 + 1, &v9, 0xAu);
  result = 0;
  if ((v3 & 0x80000000) != 0 || !v9)
  {
    return result;
  }

  if (*v9 != 46)
  {
    return 0;
  }

  v5 = cstdlib_strtol(v9 + 1, &v8, 0xAu);
  result = 0;
  if (v5 < 0 || !v8)
  {
    return result;
  }

  if (*v8 != 46 && *v8)
  {
    return 0;
  }

  return v1 > 4 && v3 > 1 && v5 != 0;
}

uint64_t utoin_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v6 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v6) & 0x80000000) == 0)
  {
    v3 = (*(*(a1 + 104) + 88))(*(a1 + 112), *(a1 + 120));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      v4 = *(a1 + 136);
      if (v4)
      {
        heap_Free(*(*(a1 + 16) + 8), v4);
        *(a1 + 136) = 0;
        *(a1 + 146) = 0;
      }

      heap_Free(*(v6 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t utoin_ProcessStart(uint64_t a1)
{
  v1 = 2370838535;
  v6 = 0;
  if (a1)
  {
    *(a1 + 72) = log_GetLogLevel(*(*(a1 + 16) + 32)) > 4;
    v3 = (*(*(a1 + 104) + 96))(*(a1 + 112), *(a1 + 120));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    if ((paramc_ParamGetInt(*(*(a1 + 16) + 40), "asianasciispaceudctlookup", &v6) & 0x80000000) == 0 && v6 == 1)
    {
      *(a1 + 168) = 1;
    }

    v3 = paramc_ParamGet(*(*(a1 + 16) + 40), "langcode", (a1 + 24), 0);
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      *(a1 + 160) = 2;
      if (!cstdlib_strcmp(*(a1 + 24), "tht"))
      {
        *(a1 + 160) = 2;
      }

      if (*(a1 + 146))
      {
        return 0;
      }

      else
      {
        v5 = heap_Calloc(*(*(a1 + 16) + 8), 1, 120);
        *(a1 + 136) = v5;
        if (v5)
        {
          v1 = 0;
          *(a1 + 146) = 10;
        }

        else
        {
          return 2370838538;
        }
      }
    }
  }

  return v1;
}

uint64_t utoin_ProcessEnd(uint64_t a1)
{
  if (!a1)
  {
    return 2370838535;
  }

  v2 = (*(*(a1 + 104) + 104))(*(a1 + 112), *(a1 + 120));
  if ((v2 & 0x80000000) == 0)
  {
    if (*(a1 + 24))
    {
      paramc_ParamRelease(*(*(a1 + 16) + 40));
    }

    v3 = *(a1 + 136);
    if (v3)
    {
      heap_Free(*(*(a1 + 16) + 8), v3);
      *(a1 + 136) = 0;
      *(a1 + 146) = 0;
    }
  }

  return v2;
}

uint64_t utoin_NormalizeRegions(_WORD **a1, uint64_t a2, unsigned __int16 *a3)
{
  v105[1] = *MEMORY[0x277D85DE8];
  v3 = 2370838535;
  v96 = 0;
  v97 = 0;
  if (!a1 || !a2)
  {
    return 2370838535;
  }

  v7 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v97, 213);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  v7 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v96, 213);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  UTOITrace(*(a1 + 18), a1[2], v97, v96, "BEFORE utoin_RemoveNativeBlanks");
  v8 = a1[2];
  v10 = v96;
  v9 = v97;
  v105[0] = 2;
  v103 = xmmword_26ECDC324;
  v104 = 8;
  if (!v97 || !v96)
  {
    goto LABEL_129;
  }

  v7 = bed_Goto(v97, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  v7 = bed_Goto(v10, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  LOWORD(v102) = 0;
  LOWORD(v98) = 0;
  v11 = bed_GoForward(v10, bed_marker_IsToiOfType, v105);
  v12 = v11;
  if ((v11 & 0x80000000) != 0 && (v11 & 0x1FFF) != 0x14)
  {
    goto LABEL_179;
  }

  while ((v12 & 0x80000000) == 0)
  {
    Backward = bed_FindBackward(v10, bed_marker_IsToiNotOfType, &v103, &v102);
    if ((Backward & 0x1FFF) == 0x14)
    {
      LOWORD(v102) = -1;
    }

    else
    {
      v12 = Backward;
      if ((Backward & 0x80000000) != 0)
      {
        goto LABEL_179;
      }
    }

    Forward = bed_FindForward(v10, bed_marker_IsToiNotOfType, &v103, &v98);
    if ((Forward & 0x1FFF) == 0x14)
    {
      v7 = bed_GetcElem(v10, &v98);
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_178;
      }
    }

    else
    {
      v12 = Forward;
      if ((Forward & 0x80000000) != 0)
      {
        goto LABEL_179;
      }
    }

    if (v102 != 0xFFFF)
    {
      v7 = bed_Goto(v10, v102);
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_178;
      }
    }

    v7 = utoin_RemoveBlankRegions(v8, v10, v98, v9);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    v15 = bed_GoForward(v10, bed_marker_IsToiOfType, v105);
    v12 = v15;
    if ((v15 & 0x80000000) != 0 && (v15 & 0x1FFF) != 0x14)
    {
      goto LABEL_179;
    }
  }

  UTOITrace(*(a1 + 18), a1[2], v97, v96, "BEFORE utoin_MergeRegions");
  v89 = a1[2];
  v16 = v96;
  *&v103 = 0;
  if (v97)
  {
    v17 = v96 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_173;
  }

  LOWORD(v105[0]) = 0;
  v18 = bed_GetpElem(v96, 0, &v103);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_172;
  }

  v18 = bed_GetcElem(v16, v105);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_172;
  }

  v20 = *a3;
  if (*a3)
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = *(a3 + 1) + (v21 << 6);
      v24 = *v23;
      v25 = *(v23 + 4);
      v26 = *(v23 + 8);
      v27 = *(v23 + 16);
      v28 = *(v23 + 24);
      v29 = *(v23 + 32);
      v30 = *(v23 + 40);
      v31 = *(v23 + 48);
      v32 = *(v23 + 56);
      if (v32 == 1)
      {
        break;
      }

      if (LOWORD(v105[0]) < 2u)
      {
        goto LABEL_46;
      }

      v36 = (v103 + 104);
      v34 = 1;
      do
      {
        if (*(v36 - 5) == 7 && *v36 == v24)
        {
          goto LABEL_47;
        }

        ++v34;
        v36 += 16;
      }

      while (LOWORD(v105[0]) != v34);
LABEL_100:
      v22 = ++v21;
      if (v21 >= v20)
      {
        goto LABEL_101;
      }
    }

    if (LOWORD(v105[0]) < 2u)
    {
LABEL_46:
      LODWORD(v37) = 1;
    }

    else
    {
      v33 = (v103 + 84);
      v34 = 1;
      while (1)
      {
        v35 = *v33;
        v33 += 16;
        if (v35 == 7)
        {
          break;
        }

        if (LOWORD(v105[0]) == ++v34)
        {
          goto LABEL_100;
        }
      }

LABEL_47:
      LODWORD(v37) = v34;
    }

    if (LOWORD(v105[0]) <= v37)
    {
      goto LABEL_100;
    }

    v87 = v31;
    v88 = v21;
    v38 = 0;
    v39 = 0;
    v40 = v105[0];
    v95 = v22;
    v93 = v25;
    v94 = v24;
    v91 = v29;
    v92 = v28;
    v90 = v32;
    while (1)
    {
      if (v26)
      {
        v41 = 0;
        do
        {
          v39 = v37;
          if ((v37 - 1) > v38)
          {
            v42 = (v37 - 1);
            v39 = v37;
            do
            {
              v43 = v103 + (v42 << 6);
              v44 = *(v43 + 20);
              if (v44 == 7)
              {
                v45 = *(v43 + 40);
                v46 = v27;
                v47 = v26;
                while (1)
                {
                  v48 = *v46++;
                  if (v48 == v45)
                  {
                    break;
                  }

                  if (!--v47)
                  {
                    goto LABEL_62;
                  }
                }
              }

              if (v44 == 7)
              {
                v39 = v42;
              }

              --v42;
            }

            while (v38 < v42);
          }

LABEL_62:
          ++v41;
        }

        while (v41 < v26);
      }

      if (v28)
      {
        if ((v37 + 1) < v40)
        {
          v49 = (v37 + 1);
          v38 = v37;
          do
          {
            v50 = v103 + (v49 << 6);
            v51 = *(v50 + 20);
            if (v51 == 7)
            {
              v52 = *(v50 + 40);
              v53 = v29;
              v54 = v28;
              while (1)
              {
                v55 = *v53++;
                if (v55 == v52)
                {
                  break;
                }

                if (!--v54)
                {
                  goto LABEL_82;
                }
              }
            }

            if (v51 == 7)
            {
              v38 = v49;
            }

            ++v49;
          }

          while (v40 != v49);
          goto LABEL_82;
        }
      }

      else
      {
        if (!v30)
        {
          goto LABEL_82;
        }

        v38 = v37 + 1;
        if ((v37 + 1) < v40)
        {
          v56 = v103 + ((v37 + 1) << 6);
          if (*(v56 + 20) != 7)
          {
              ;
            }
          }

          v57 = *(v56 + 40);
          v58 = v87;
          v59 = v30;
          do
          {
            v60 = *v58++;
            if (v60 == v57)
            {
              goto LABEL_82;
            }
          }

          while (--v59);
        }
      }

      v38 = v37;
LABEL_82:
      if (v39 != v38)
      {
        log_OutText(*(v89 + 4), &modPP_3, 5, 0, "[UTOI] (applying mergeRule %d between markers %u and %u)", v29, v19, v32, v22);
        v32 = v90;
        v29 = v91;
        v28 = v92;
        v25 = v93;
        v24 = v94;
        v22 = v95;
      }

      if (v39 < v38)
      {
        v61 = v39;
        do
        {
          v62 = v103 + (v61 << 6);
          if (*(v62 + 20) == 7 && (v25 == 3 || *(v62 + 40) != 1))
          {
            *(v62 + 40) = v25;
          }

          ++v61;
        }

        while (v61 <= v38);
      }

      if (v32 != 1)
      {
        v40 = v105[0];
        LODWORD(v37) = v38 + 1;
        if (LOWORD(v105[0]) > (v38 + 1))
        {
          v37 = (v38 + 1);
          v63 = (v103 + (v37 << 6) + 40);
          while (*(v63 - 5) != 7 || *v63 != v24)
          {
            ++v37;
            v63 += 16;
            if (LOWORD(v105[0]) == v37)
            {
              goto LABEL_99;
            }
          }
        }

        if (LOWORD(v105[0]) > v37)
        {
          continue;
        }
      }

LABEL_99:
      v20 = *a3;
      v21 = v88;
      goto LABEL_100;
    }
  }

LABEL_101:
  if (*(a1 + 43) != 1)
  {
    UTOITrace(*(a1 + 18), a1[2], v97, v96, "BEFORE utoin_CollapseIdenticalRegions");
    v7 = utoin_CollapseIdenticalRegions(a1, v97, v96);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }
  }

  UTOITrace(*(a1 + 18), a1[2], v97, v96, "BEFORE utoin_LookUpWords");
  v65 = v96;
  v64 = v97;
  *&v103 = 7;
  v105[0] = 0;
  v102 = 0;
  v100 = 0;
  if (!v97 || !v96)
  {
LABEL_129:
    v12 = 2370838535;
    goto LABEL_179;
  }

  v66 = a1[10];
  if (!v66)
  {
    goto LABEL_139;
  }

  v67 = a1[2];
  v101 = 0;
  v7 = (*(v66 + 15))(a1[11], a1[12], &v100);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  if (!v100)
  {
    goto LABEL_139;
  }

  if (log_HasTraceTuningDataSubscriber(*(v67 + 4)))
  {
    v99 = 0;
    v98 = 0;
    bed_GetpElem(v64, 0, &v98);
    v7 = bed_GetcElem(v64, &v99);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    log_OutTraceTuningDataBinary(*(v67 + 4), 105, "", "text/plain;charset=utf-16", v98, v99);
  }

  v68 = bed_GetcElem(v64, &v101);
  if ((v68 & 0x80000000) == 0)
  {
    v69 = datac_RequestBlock(a2, 1029, (v101 + 1), &v102);
    if ((v69 & 0x80000000) != 0)
    {
      v12 = v69;
      if ((v69 & 0x1FFF) == 0x14)
      {
LABEL_139:
        v74 = a1[2];
        v76 = v96;
        v75 = v97;
        if (*(a1 + 43) == 1)
        {
          goto LABEL_142;
        }

        UTOITrace(*(a1 + 18), v74, v97, v96, "BEFORE utoin_CollapseIdenticalRegions (second)");
        v7 = utoin_CollapseIdenticalRegions(a1, v97, v96);
        if ((v7 & 0x80000000) == 0)
        {
          v74 = a1[2];
          v76 = v96;
          v75 = v97;
LABEL_142:
          UTOITrace(*(a1 + 18), v74, v75, v76, "BEFORE utoin_RemoveBlanksAtRegionBoundary");
          v77 = a1[2];
          v79 = v96;
          v78 = v97;
          v105[0] = 1;
          v103 = xmmword_26ECDC3C4;
          LODWORD(v104) = 0;
          v102 = 0;
          if (!v97 || !v96)
          {
            goto LABEL_173;
          }

          v18 = bed_Goto(v97, 0);
          if ((v18 & 0x80000000) == 0)
          {
            v18 = bed_Goto(v79, 0);
            if ((v18 & 0x80000000) == 0)
            {
              LOWORD(v98) = 0;
              LOWORD(v100) = 0;
              v80 = bed_GoForward(v79, bed_marker_IsToiOfType, v105);
              v3 = v80;
              if ((v80 & 0x80000000) == 0 || (v80 & 0x1FFF) == 0x14)
              {
                while ((v3 & 0x80000000) == 0)
                {
                  v81 = bed_FindBackward(v79, bed_marker_IsToiNotOfType, &v103, &v98);
                  if ((v81 & 0x1FFF) == 0x14)
                  {
                    LOWORD(v98) = -1;
                  }

                  else
                  {
                    v3 = v81;
                    if ((v81 & 0x80000000) != 0)
                    {
                      goto LABEL_173;
                    }
                  }

                  v82 = bed_FindForward(v79, bed_marker_IsToiNotOfType, &v103, &v100);
                  if ((v82 & 0x1FFF) == 0x14)
                  {
                    LOWORD(v100) = -1;
                  }

                  else
                  {
                    v3 = v82;
                    if ((v82 & 0x80000000) != 0)
                    {
                      goto LABEL_173;
                    }
                  }

                  if (v98 == 0xFFFF)
                  {
                    v83 = 0;
                  }

                  else
                  {
                    v18 = bed_GetpElem(v79, v98, &v102);
                    if ((v18 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }

                    v83 = *(v102 + 40);
                  }

                  if (v100 == 0xFFFF)
                  {
                    goto LABEL_166;
                  }

                  v18 = bed_GetpElem(v79, v100, &v102);
                  if ((v18 & 0x80000000) != 0)
                  {
                    goto LABEL_172;
                  }

                  if (!v83 || (v84 = *(v102 + 40)) == 0 || v83 == v84 || v84 == 14 || v84 == 44)
                  {
LABEL_166:
                    LOWORD(v98) = 1;
                    bed_GoForward(v79, bed_marker_IsAt, &v98);
                  }

                  else
                  {
                    v18 = bed_Goto(v79, v98);
                    if ((v18 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }

                    v18 = utoin_RemoveBlankRegions(v77, v79, v100, v78);
                    if ((v18 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }
                  }

                  v85 = bed_GoForward(v79, bed_marker_IsToiOfType, v105);
                  v3 = v85;
                  if ((v85 & 0x80000000) != 0 && (v85 & 0x1FFF) != 0x14)
                  {
                    goto LABEL_173;
                  }
                }

                UTOITrace(*(a1 + 18), a1[2], v97, v96, "BEFORE utoin_MarkSingleLatinForSpell");
                v7 = utoin_MarkSingleLatinForSpell(v96, v97, a2);
                if ((v7 & 0x80000000) == 0)
                {
                  UTOITrace(*(a1 + 18), a1[2], v97, v96, "BEFORE utoin_SplitRegionOnWordSeparatingMarkers");
                  v7 = utoin_SplitRegionOnWordSeparatingMarkers(v96, *(a1 + 44));
                  if ((v7 & 0x80000000) == 0)
                  {
                    UTOITrace(*(a1 + 18), a1[2], v97, v96, "BEFORE utoin_Normalize");
                    v12 = utoin_Normalize(a1, v97, v96, a2);
                    if ((v12 & 0x80000000) == 0)
                    {
                      UTOITrace(*(a1 + 18), a1[2], v97, v96, "END utoin_NormalizeRegions()");
                    }

                    goto LABEL_179;
                  }
                }

                goto LABEL_178;
              }

              goto LABEL_173;
            }
          }

LABEL_172:
          v3 = v18;
LABEL_173:
          v12 = v3;
          goto LABEL_179;
        }

LABEL_178:
        v12 = v7;
        goto LABEL_179;
      }

      goto LABEL_179;
    }

    v68 = bed_ObjOpen(*a1, a1[1], a2, 1029, v105, 213);
    if ((v68 & 0x80000000) == 0)
    {
      v68 = bed_Goto(v64, 0);
      if ((v68 & 0x80000000) == 0)
      {
        v68 = bed_Goto(v65, 0);
        if ((v68 & 0x80000000) == 0)
        {
          v70 = bed_GoForward(v65, bed_marker_IsOfType, &v103);
          v12 = v70;
          v71 = v70 & 0x1FFF;
          if ((v70 & 0x80000000) != 0 && v71 != 20)
          {
            goto LABEL_131;
          }

          if ((v70 & 0x80000000) != 0)
          {
LABEL_125:
            if (v71 == 20)
            {
              v12 = 0;
            }

            else
            {
              v12 = v12;
            }

            goto LABEL_131;
          }

          while (1)
          {
            v98 = 0;
            v99 = 0;
            v68 = bed_GetpElem(v65, 0xFFFFu, &v98);
            if ((v68 & 0x80000000) != 0)
            {
              break;
            }

            v72 = *(v98 + 40) - 2;
            if (v72 <= 4)
            {
              v68 = (off_287EEEDF0[v72])(a1, v64, v65, v105[0], a2);
              if ((v68 & 0x80000000) != 0)
              {
                break;
              }
            }

            v99 = 1;
            bed_GoForward(v65, bed_marker_IsAt, &v99);
            v73 = bed_GoForward(v65, bed_marker_IsOfType, &v103);
            v12 = v73;
            v71 = v73 & 0x1FFF;
            if ((v73 & 0x80000000) != 0 && v71 != 20)
            {
              goto LABEL_131;
            }

            if ((v73 & 0x80000000) != 0)
            {
              goto LABEL_125;
            }
          }
        }
      }
    }
  }

  v12 = v68;
LABEL_131:
  if (!log_HasTraceTuningDataSubscriber(*(v67 + 4)))
  {
    goto LABEL_134;
  }

  v99 = 0;
  v98 = 0;
  bed_GetpElem(v64, 0, &v98);
  v12 = bed_GetcElem(v64, &v99);
  if ((v12 & 0x80000000) == 0)
  {
    log_OutTraceTuningDataBinary(*(v67 + 4), 106, "", "text/plain;charset=utf-16", v98, v99);
LABEL_134:
    if (v105[0])
    {
      bed_ObjClose(v105[0]);
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_179;
    }

    goto LABEL_139;
  }

LABEL_179:
  if (v96)
  {
    bed_ObjClose(v96);
  }

  if (v97)
  {
    bed_ObjClose(v97);
  }

  return v12;
}

uint64_t utoin_CollapseIdenticalRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = 0;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  __b = 0u;
  v64 = 0u;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerIntWord;
  v64 = unk_26ECDC350;
  v65 = xmmword_26ECDC360;
  v66 = unk_26ECDC370;
  result = 2370838535;
  if (a2)
  {
    if (a3)
    {
      result = bed_GetpElem(a3, 0, &v68);
      if ((result & 0x80000000) == 0)
      {
        result = bed_GetcElem(a3, &v67);
        if ((result & 0x80000000) == 0)
        {
          v7 = v67;
          if (v67)
          {
            v8 = 0;
            LOWORD(v9) = 0;
            v10 = 0;
            v57 = a3;
            while (1)
            {
              v9 = v9;
              v11 = (v68 + (v9 << 6) + 20);
              while (1)
              {
                v12 = *v11;
                v11 += 16;
                if (v12 == 7)
                {
                  break;
                }

                if (++v9 >= v7)
                {
                  goto LABEL_13;
                }
              }

              v13 = v68 + (v9 << 6);
              if (*(v13 + 20) == 7)
              {
                v8 = *(v13 + 40);
                v10 = v9;
              }

LABEL_13:
              v62 = v10;
              v14 = v68 + (v10 << 6);
              if (*(v14 + 20) == 7 && *(v14 + 40) == 43 && *(v14 + 56))
              {
                LOWORD(v9) = v9 + 1;
                goto LABEL_105;
              }

              v15 = v9;
              if (v9 < v7)
              {
                v16 = v9;
                v17 = (v68 + (v9 << 6) + 40);
                while (*(v17 - 5) == 7 && v8 == *v17)
                {
                  ++v16;
                  v17 += 16;
                  if (v7 == v16)
                  {
                    LODWORD(v16) = v7;
                    break;
                  }
                }

                v15 = v9;
                if (v16 != v9)
                {
                  v15 = (v16 - 1);
                  if ((v16 - 1) > v9)
                  {
                    v15 = (v16 - 1);
                    v18 = (v68 + (v15 << 6) + 40);
                    while (*(v18 - 5) != 7 || v8 != *v18)
                    {
                      --v15;
                      v18 -= 16;
                      if (v9 >= v15)
                      {
                        v15 = v9;
                        break;
                      }
                    }
                  }
                }
              }

              if (v8 == 43)
              {
                v19 = v68 + (v15 << 6);
                if (*(v19 + 20) == 7 && *(v19 + 40) == 43 && *(a1 + 168) == 1)
                {
                  LOWORD(v9) = v9 + 1;
                  v8 = 43;
                  goto LABEL_105;
                }
              }

              if (v15 == v9 || v15 >= v7)
              {
                goto LABEL_107;
              }

              v59 = v8;
              if (*(v14 + 40) == 16)
              {
                if (v10 >= 2u && (v20 = v68 + ((v10 - 1) << 6), *(v20 + 20) == 998))
                {
                  if (*(v20 + 32) == *(v14 + 32))
                  {
                    v21 = v10 - 1;
                  }

                  else
                  {
                    v21 = 0;
                  }
                }

                else
                {
                  v21 = 0;
                }

                v23 = v10 + 1;
                if (v23 < v7)
                {
                  v24 = v68 + (v23 << 6);
                  if (*(v24 + 20) == 998 && *(v24 + 32) == *(v14 + 32))
                  {
                    v21 = v10 + 1;
                  }
                }

                if (v15 >= 2u && (v25 = v15 - 1, v26 = v68 + (v25 << 6), *(v26 + 20) == 998))
                {
                  if (*(v26 + 32) != *(v68 + (v15 << 6) + 32))
                  {
                    LOWORD(v25) = 0;
                  }
                }

                else
                {
                  LOWORD(v25) = 0;
                }

                v27 = v7;
                v28 = v15 + 1;
                if (v28 < v27)
                {
                  v29 = v68 + (v28 << 6);
                  if (*(v29 + 20) == 998 && *(v29 + 32) == *(v68 + (v15 << 6) + 32))
                  {
                    LOWORD(v25) = 1;
                  }
                }

                if (v25)
                {
                  v22 = v21 != 0;
                }

                else
                {
                  v22 = 0;
                }
              }

              else
              {
                v22 = 0;
                v21 = 0;
              }

              v60 = v15;
              v30 = v68 + (v15 << 6);
              v31 = *(v30 + 32);
              v32 = *(v14 + 32);
              v58 = v21;
              v61 = v22;
              if (!*v30 && v31 == v32)
              {
                *(v14 + 24) = *(v30 + 24);
                v32 = v31;
              }

              *(v14 + 36) = v31 - v32 + *(v30 + 36);
              *(v14 + 28) = *(v30 + 24) - *(v14 + 24) + *(v30 + 28);
              v33 = v10;
              v34 = v10;
              if (v10 <= v15)
              {
                do
                {
                  v35 = v34;
                  if (v33 == v34)
                  {
                    goto LABEL_74;
                  }

                  v36 = v68 + (v34 << 6);
                  if (!*(v36 + 16))
                  {
                    goto LABEL_74;
                  }

                  v37 = v15;
                  v38 = v10;
                  v39 = a1;
                  v40 = *(a1 + 16);
                  v41 = v68 + (v62 << 6);
                  v42 = *(v41 + 16);
                  result = growOffsets(v40, v41, *(v36 + 16));
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v43 = *(v36 + 16);
                  v44 = *(v36 + 8);
                  if (*(v36 + 16))
                  {
                    v45 = (*(v41 + 8) + 8 * v42);
                    v46 = *(v36 + 8);
                    a1 = v39;
                    v10 = v38;
                    v15 = v37;
                    do
                    {
                      v47 = *v46++;
                      *v45++ = v47;
                      --v43;
                    }

                    while (v43);
                  }

                  else
                  {
                    a1 = v39;
                    v10 = v38;
                    v15 = v37;
                    if (!v44)
                    {
                      goto LABEL_74;
                    }
                  }

                  heap_Free(*(v40 + 8), v44);
                  *(v36 + 8) = 0;
                  *(v36 + 16) = 0;
LABEL_74:
                  if (v35 != v10)
                  {
                    v48 = *(v68 + (v35 << 6) + 48);
                    if (v48)
                    {
                      heap_Free(*(*(a1 + 16) + 8), v48);
                      *(v68 + (v35 << 6) + 48) = 0;
                    }
                  }

                  v34 = v35 + 1;
                }

                while ((v35 + 1) <= v15);
              }

              v49 = v60;
              if (v15 > v9)
              {
                break;
              }

LABEL_99:
              if (!v61)
              {
                v7 = v67;
                v8 = v59;
LABEL_107:
                result = 0;
                LOWORD(v9) = v9 + 1;
                goto LABEL_108;
              }

              cstdlib_memcpy(&__b, (v68 + (v58 << 6)), 0x40uLL);
              DWORD1(v64) = 41;
              result = bed_Goto(v57, v58 + 1);
              v8 = v59;
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_marker_InjectFixedRefMarker(v57, &__b);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_GetpElem(v57, 0, &v68);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_GetcElem(v57, &v67);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v7 = v67;
LABEL_105:
              result = 0;
LABEL_108:
              if (v9 >= v7)
              {
                return result;
              }
            }

            v50 = v60 << 6;
            while (1)
            {
              v51 = v68 + v50;
              if (!v61)
              {
                break;
              }

              v52 = *(v51 + 20);
              if (v52 != 7)
              {
                goto LABEL_90;
              }

              if (v49 >= 2 && *(v68 + v50 - 44) == 998 && *(v68 + v50 - 32) == *(v68 + v50 + 32) || v49 + 1 < v67 && (v53 = v68 + ((v49 + 1) << 6), *(v53 + 20) == 998) && *(v53 + 32) == *(v68 + v50 + 32))
              {
                v54 = v68 + v50;
                v55 = 41;
LABEL_97:
                *(v54 + 20) = v55;
                goto LABEL_98;
              }

LABEL_92:
              v56 = *(v68 + v50);
              if (!v56)
              {
                v54 = v68 + v50;
                v55 = 999;
                goto LABEL_97;
              }

              if (v56 == 1)
              {
LABEL_94:
                result = bed_Remove(v57, v49, 1u);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                --v67;
              }

LABEL_98:
              --v49;
              v50 -= 64;
              if (v9 >= v49)
              {
                goto LABEL_99;
              }
            }

            v52 = *(v51 + 20);
LABEL_90:
            if (v52 == 0x4000)
            {
              goto LABEL_94;
            }

            if (v52 != 7)
            {
              goto LABEL_98;
            }

            goto LABEL_92;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t utoin_MarkSingleLatinForSpell(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  __b = 0u;
  v42 = 0u;
  v40 = 0;
  v39 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerUndef;
  v42 = unk_26ECDC3E8;
  v43 = xmmword_26ECDC3F8;
  v44 = unk_26ECDC408;
  result = bed_GetcElem(a2, &v39);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!v39)
  {
    return result;
  }

  result = datac_RequestBlock(a3, 1012, 1u, &v45);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetcElem(a1, &v47);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a1, 0, &v46);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a2, 0, &v40);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v47 < 2u)
  {
    return 0;
  }

  v7 = 1;
  v8 = 26;
  v9 = 1;
  while (1)
  {
    v10 = v46;
    if (v46[v8 - 5] != 21)
    {
      break;
    }

    if (v45)
    {
      MarkerArgStr = marker_getMarkerArgStr(1u);
      if (!cstdlib_strcmp(MarkerArgStr, (*(v45 + 8) + v46[v8])))
      {
        v10 = v46;
        goto LABEL_16;
      }
    }

    v9 = 0;
LABEL_23:
    ++v7;
    v8 += 16;
    if (v7 >= v47)
    {
      return 0;
    }
  }

  if (v9 != 1)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v10[v8 - 5] != 7 || (v10[v8] - 3) > 5 || (v10[v8 - 1] - 1) > 3)
  {
    goto LABEL_22;
  }

  cstdlib_memset(__dst, 0, 8uLL);
  cstdlib_strncpy(__dst, (v40 + (v46[v8 - 2] - v46[8])), v46[v8 - 1]);
  __dst[v46[v8 - 1]] = 0;
  v12 = Utf8_Utf8NbrOfSymbols(__dst);
  v9 = 1;
  if (v46[v8 - 5] != 7 || (v12 - 1) != 1)
  {
    goto LABEL_23;
  }

  if ((v46[v8] - 3) > 5)
  {
LABEL_22:
    v9 = 1;
    goto LABEL_23;
  }

  v13 = &v46[v8];
  if (v7 < 2)
  {
    v16 = 0xFFFF;
  }

  else
  {
    v14 = v7 - 1;
    v15 = v46 + 26;
    v16 = 0xFFFF;
    do
    {
      if (*(v15 - 5) == 7 && *v15 == 1)
      {
        v16 = *(v15 - 2);
      }

      v15 += 16;
      --v14;
    }

    while (v14);
  }

  v18 = *(v13 - 4);
  v17 = *(v13 - 3);
  v19 = *(v13 - 2);
  v20 = *(v13 - 1);
  if (v47 >= 2uLL)
  {
    v21 = 0;
    v22 = v46 + 25;
    v23 = v47 - 1;
    do
    {
      if (v21)
      {
        break;
      }

      v24 = *(v22 - 1);
      if (v24 > v19)
      {
        break;
      }

      if (*(v22 - 4) == 40)
      {
        if (v16 == 0xFFFF && v19 == *v22 + v24 || (v21 = 0, v16 == v46[8]) && v24 >= v16)
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 += 16;
      --v23;
    }

    while (v23);
    if (v21 == 1)
    {
      return 0;
    }
  }

  v25 = v7 + 1;
  v26 = 0xFFFF;
  v27 = 0xFFFF;
  if (v47 > (v7 + 1))
  {
    v26 = v20 + v19;
    while (1)
    {
      v28 = &v46[16 * v25];
      if (v28[8] != v26)
      {
LABEL_53:
        v26 = 0xFFFF;
        v27 = 0xFFFF;
        goto LABEL_54;
      }

      if (v28[5] == 7 && v28[10] == 1)
      {
        break;
      }

      if (v47 <= ++v25)
      {
        goto LABEL_53;
      }
    }

    v27 = v28[9];
  }

LABEL_54:
  v29 = v46[8];
  if (v16 != 0xFFFF || (v30 = v19, v19 != v29))
  {
    v30 = v16;
    if (v16 != v29)
    {
      return 0;
    }
  }

  v31 = v26 == 0xFFFF ? v20 + v19 : v27 + v26;
  if (v31 != v46[9] + v30)
  {
    return 0;
  }

  v36 = v17;
  v37 = v19;
  v38 = v20;
  v46[v8] = 14;
  DWORD1(v42) = 21;
  v32 = v45;
  v33 = marker_getMarkerArgStr(3u);
  result = addOrGetTNArgStr(v32, v33, &v43 + 2, a3);
  if ((result & 0x80000000) == 0)
  {
    *(&v42 + 1) = v18;
    *&v43 = v46[v8 - 2];
    result = bed_Goto(a1, v7);
    if ((result & 0x80000000) == 0)
    {
      result = bed_marker_InjectFixedRefMarker(a1, &__b);
      if ((result & 0x80000000) == 0)
      {
        DWORD1(v42) = 21;
        v34 = v45;
        v35 = marker_getMarkerArgStr(1u);
        result = addOrGetTNArgStr(v34, v35, &v43 + 2, a3);
        if ((result & 0x80000000) == 0)
        {
          *(&v42 + 1) = v36 + v18;
          *&v43 = v38 + v37;
          result = bed_marker_InjectFixedRefMarker(a1, &__b);
          if ((result & 0x80000000) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t utoin_SplitRegionOnWordSeparatingMarkers(uint64_t a1, int a2)
{
  v24 = 0;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  cstdlib_memset(&v19, 0, 0x40uLL);
  v19 = MarkerSetTypeOfInput;
  v20 = unk_26ECDC230;
  v21 = xmmword_26ECDC240;
  v22 = unk_26ECDC250;
  result = bed_GetcElem(a1, &v24);
  if ((result & 0x80000000) == 0)
  {
    result = bed_GetpElem(a1, 0, &v23);
    if ((result & 0x80000000) == 0)
    {
      v5 = v24;
      if (v24 >= 2u)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = v23;
        for (i = 1; i < v5; ++i)
        {
          v11 = v9 + (i << 6);
          v12 = *(v11 + 20);
          if (v12 == 7)
          {
            v7 = *(v11 + 24);
            v13 = *(v11 + 8);
            if (v13)
            {
              v6 = *(v13 + 4);
            }

            else
            {
              v6 = 0;
            }

            v8 = i;
          }

          else if (v8)
          {
            v14 = v12 > 0x39 || ((1 << v12) & 0x3C8010124021140) == 0;
            if ((!v14 || a2 == 1 && (v12 <= 0x3C && ((1 << v12) & 0x1000000001050000) != 0 || v12 == 99)) && v7 < *(v11 + 24) + v6)
            {
              v15 = (v9 + (v8 << 6));
              DWORD2(v21) = v15[10];
              *(&v20 + 1) = (*(v11 + 24) + v6);
              LODWORD(v21) = *(v11 + 32);
              v16 = v15[8];
              DWORD1(v21) = v15[9];
              v17 = v21 - v16;
              v15[9] = v21 - v16;
              DWORD1(v21) -= v17;
              if (DWORD1(v21))
              {
                v18 = i + 1;
                result = bed_Goto(a1, (i + 1));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_marker_InjectFixedRefMarker(a1, &v19);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v9 = v23;
                v7 = *(v23 + (v18 << 6) + 24) + v6;
                v5 = ++v24;
                i = v18;
                v8 = v18;
              }
            }
          }

          else
          {
            v8 = 0;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t utoin_Normalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53[0] = 7;
  v49 = 0;
  v50 = 0;
  v4 = 2370838535;
  if (!a2 || !a3)
  {
    return v4;
  }

  v51 = 0;
  v48 = 0;
  v9 = *(a1 + 16);
  v10 = bed_GetcElem(a2, &v51);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v11 = datac_RequestBlock(a4, 1029, (v51 + 1), &v50);
  if ((v11 & 0x80000000) != 0)
  {
    if ((v11 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  v10 = bed_ObjOpen(*a1, *(a1 + 8), a4, 1029, &v52, 213);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v10 = bed_Goto(a2, 0);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v10 = bed_Goto(a3, 0);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v12 = bed_GoForward(a3, bed_marker_IsOfType, v53);
  v4 = v12;
  if ((v12 & 0x80000000) != 0 && (v12 & 0x1FFF) != 0x14)
  {
LABEL_78:
    if (v52)
    {
      bed_ObjClose(v52);
    }

    return v4;
  }

  if ((v12 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = 0uLL;
    while (2)
    {
      __src = 0;
      v46[0] = v14;
      v46[1] = v14;
      __dst = v14;
      v45 = v14;
      v43 = 0;
      v10 = bed_GetpElem(a3, 0xFFFFu, &__src);
      if ((v10 & 0x80000000) != 0)
      {
LABEL_77:
        v4 = v10;
        goto LABEL_78;
      }

      cstdlib_memcpy(&__dst, __src, 0x40uLL);
      v15 = *(__src + 10);
      v16 = utoin_NormalizeOrthNativeWord;
      if (v15 <= 7)
      {
        if (v15 <= 4)
        {
          if ((v15 - 3) < 2)
          {
            goto LABEL_27;
          }

          if (v15 == 1)
          {
            v18 = utoin_MarkWordBoundary;
            goto LABEL_28;
          }

          if (v15 != 2)
          {
LABEL_40:
            v18 = utoin_RemoveRegion;
            goto LABEL_28;
          }

LABEL_29:
          v19 = *(v9 + 32);
          UTOIMarkerString = getUTOIMarkerString(v15);
          log_OutText(v19, &modPP_3, 5, 0, "[UTOI] (normalize region %s %u,%u)", v21, v22, v23, UTOIMarkerString);
          v10 = v16(a1, a2, a3, v52, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = bed_Goto(a3, 0);
            if ((v10 & 0x80000000) == 0)
            {
              while (1)
              {
                v24 = bed_GoForward(a3, bed_marker_IsOfType, v53);
                if ((v24 & 0x80000000) != 0)
                {
                  v4 = v24;
                  if ((v24 & 0x1FFF) != 0x14)
                  {
                    goto LABEL_78;
                  }
                }

                v10 = bed_GetpElem(a3, 0xFFFFu, &__src);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_77;
                }

                if (*(&v45 + 1) == *(__src + 3) && LODWORD(v46[0]) == *(__src + 8) && !cstdlib_memcmp(v46 + 8, __src + 40, 8uLL))
                {
                  break;
                }

                v43 = 1;
                bed_GoForward(a3, bed_marker_IsAt, &v43);
              }

              v28 = *(__src + 10);
              if ((v28 - 5) < 4)
              {
LABEL_50:
                v28 = 16;
                if (v13 && v13 != 43)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v28 == 2)
              {
                v28 = 16;
              }

              else if (v28 == 1)
              {
                goto LABEL_50;
              }

LABEL_57:
              v13 = v28;
LABEL_58:
              v43 = 1;
              bed_GoForward(a3, bed_marker_IsAt, &v43);
              v29 = bed_GoForward(a3, bed_marker_IsOfType, v53);
              v4 = v29;
              if ((v29 & 0x80000000) != 0 && (v29 & 0x1FFF) != 0x14)
              {
                goto LABEL_78;
              }

              v14 = 0uLL;
              if ((v29 & 0x80000000) == 0)
              {
                continue;
              }

              goto LABEL_61;
            }
          }

          goto LABEL_77;
        }

        if (v15 == 5)
        {
          v18 = utoin_RemoveRegion;
          if (*(__src + 9) > 0x60u)
          {
            goto LABEL_28;
          }

          v25 = (v13 & 0xFFFFFFEF) == 0;
          v26 = utoin_NormalizeOrthNativeText;
          v27 = utoin_NormalizeOrthNativeWord;
LABEL_46:
          if (v25)
          {
            v16 = v27;
          }

          else
          {
            v16 = v26;
          }

          goto LABEL_29;
        }

        if (v15 != 6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v17 = (v15 - 14);
        if (v17 <= 0x3A)
        {
          if (((1 << (v15 - 14)) & 0x700400020000004) != 0)
          {
            goto LABEL_27;
          }

          if (((1 << (v15 - 14)) & 0x40000001) != 0)
          {
            v18 = utoin_SpellRegion;
LABEL_28:
            v16 = v18;
            goto LABEL_29;
          }

          if (v17 == 1)
          {
LABEL_27:
            v18 = utoin_TranscodeText;
            goto LABEL_28;
          }
        }

        if (v15 != 8)
        {
          if (v15 == 99)
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        }
      }

      break;
    }

    v18 = utoin_RemoveRegion;
    if (*(__src + 9) > 0x20u)
    {
      goto LABEL_28;
    }

    v25 = (v13 & 0xFFFFFFEF) == 0;
    v26 = utoin_TranscodeText;
    v27 = utoin_TranscodeWord;
    goto LABEL_46;
  }

LABEL_61:
  v30 = bed_GetpElem(a3, 0, &v49);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v4 = bed_GetcElem(a3, &v48);
  if ((v4 & 0x80000000) == 0)
  {
    v31 = v48;
    if (v48 >= 2u)
    {
      v32 = 0;
      v33 = 1;
      while (1)
      {
        if (*(v49 + v32 + 84) == 7 && !*(v49 + v32 + 100))
        {
          v34 = *(v49 + v32 + 104);
          v35 = v34 > 7;
          v36 = (1 << v34) & 0xA4;
          if (!v35 && v36 != 0)
          {
            v38 = *(v49 + v32 + 72);
            if (v38)
            {
              heap_Free(*(v9 + 8), v38);
              *(v49 + v32 + 72) = 0;
              *(v49 + v32 + 80) = 0;
            }

            v4 = bed_Remove(a3, v33, 1u);
            if ((v4 & 0x80000000) != 0)
            {
              return v4;
            }

            log_OutText(*(v9 + 32), &modPP_3, 5, 0, "[UTOI] (deleted zero length entry, marker %d)", v39, v40, v41, v33);
            v31 = --v48;
          }
        }

        ++v33;
        v32 += 64;
        if (v33 >= v31)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_78;
  }

  return v4;
}

uint64_t utoin_InsertRegions(_WORD **a1, uint64_t a2)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = 2370838535;
  v47 = 0;
  v48 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v48, 213);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v47, 213);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  UTOITrace(*(a1 + 18), a1[2], v48, v47, "BEFORE utoin_RemoveEmptyPhonemes");
  v6 = a1[2];
  v7 = v47;
  *__s = 0;
  if (!v47)
  {
    goto LABEL_87;
  }

  *__dst = 0;
  v5 = bed_GetpElem(v47, 0, __s);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_GetcElem(v7, __dst);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v11 = *__dst;
  if (*__dst >= 2u)
  {
    v12 = 1;
    v13 = 2;
    v14 = 160;
    v15 = 1;
    do
    {
      v16 = (*__s + (v12 << 6));
      if (v16[5] == 7)
      {
        ++v12;
        if (v16[10] == 43 && v12 < v11)
        {
          v18 = (*__s + v14);
          v19 = v13;
          while (1)
          {
            v20 = *(v18 - 3);
            if (v20 == 999 || v20 == 7)
            {
              v22 = v16[8];
              if (*v18 >= v22 && *v18 < v16[9] + v22)
              {
                break;
              }
            }

            ++v19;
            v18 += 16;
            if (v11 == v19)
            {
              goto LABEL_26;
            }
          }

          if (*(*__s + (v19 << 6) + 32) == v22)
          {
            v16[9] = 0;
            log_OutText(*(v6 + 4), &modPP_3, 5, 0, "[UTOIN] zero length phoneme found at marker %d", v8, v9, v10, v15);
            v11 = *__dst;
          }
        }
      }

      else
      {
        ++v12;
      }

LABEL_26:
      ++v13;
      v14 += 64;
      v15 = v12;
    }

    while (v12 < v11);
  }

  UTOITrace(*(a1 + 18), a1[2], v48, v47, "BEFORE utoin_InsertRegionTags");
  v24 = v47;
  v23 = v48;
  v56[0] = 7;
  v53 = 0;
  v51 = 0;
  if (!v48 || !v47)
  {
    goto LABEL_87;
  }

  v5 = bed_Goto(v48, 0);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_Goto(v24, 0);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v52 = 0;
  v5 = bed_GetpElem(v24, 0, &v53);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_GetcElem(v24, &v52 + 1);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v25 = bed_GoForward(v24, bed_marker_IsOfType, v56);
  v2 = v25;
  if ((v25 & 0x80000000) != 0 && (v25 & 0x1FFF) != 0x14)
  {
    goto LABEL_87;
  }

  v26 = 0;
  v27 = 0;
  v28 = &__s[1];
  while ((v2 & 0x80000000) == 0)
  {
    v50 = 0;
    v49 = 0;
    v5 = bed_GetpElem(v24, 0xFFFFu, &v50);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v5 = bed_GetiElem(v24, &v49);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v5 = bed_GetpElem(v24, 0, &v51);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v29 = *(v50 + 40);
    v30 = v29 != 43 || v27 == 0;
    if (!v30 && *(v51 + (v27 << 6) + 40) == 43)
    {
      v26 = 15;
    }

    v5 = utoin_PutClosingAndOpeningTag(v26, v29, __s);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v31 = *(v50 + 40);
    if ((v31 - 5) >= 4)
    {
      if (v31 == 2)
      {
        v31 = 16;
LABEL_58:
        v26 = v31;
        goto LABEL_59;
      }

      if (v31 != 1)
      {
        goto LABEL_58;
      }
    }

    v31 = 16;
    if (!v26 || v26 == 43)
    {
      goto LABEL_58;
    }

LABEL_59:
    v32 = cstdlib_strlen(__s);
    if (v32)
    {
      v33 = *(v53 + 32);
      v34 = *(v50 + 32) - v33;
      LOWORD(v52) = *(v50 + 32) - v33;
      v5 = bed_Goto(v23, v34);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      cstdlib_strcpy(__dst, __s);
      v5 = bed_Insert(v23, __dst, v32);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      v5 = bed_GetiElem(v24, &v52);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      v35 = v50;
      v36 = *(v50 + 32);
      v37 = v52;
      v38 = HIWORD(v52);
      if (v52 < HIWORD(v52))
      {
        v39 = v50;
        do
        {
          *(v39 + 32) += v32;
          v39 += 64;
          ++v37;
        }

        while (v37 < v38);
        v50 = v39;
      }

      if (v36 > *(v53 + 32) && *(v35 - 32) == v36)
      {
        v40 = (v35 - 44);
        do
        {
          if (*v40 == 36)
          {
            v40[3] = *(v35 + 32);
          }

          v41 = *(v40 - 13);
          v40 -= 16;
        }

        while (v41 == v36);
      }
    }

    v27 = v49;
    LOWORD(v52) = 1;
    bed_GoForward(v24, bed_marker_IsAt, &v52);
    v42 = bed_GoForward(v24, bed_marker_IsOfType, v56);
    v2 = v42;
    if ((v42 & 0x80000000) != 0 && (v42 & 0x1FFF) != 0x14)
    {
      goto LABEL_87;
    }
  }

  __s[0] = 0;
  if (v26)
  {
    if ((v26 - 3) > 1)
    {
      v43 = __s;
    }

    else
    {
      __s[0] = 17;
      v43 = &__s[1];
      v28 = &__s[2];
    }

    *v43 = 31;
    *v28 = 0;
  }

  v44 = cstdlib_strlen(__s);
  if (!v44 || (v45 = v44, v5 = bed_GetcElem(v23, &v52), (v5 & 0x80000000) == 0) && (v5 = bed_Goto(v23, v52), (v5 & 0x80000000) == 0) && (cstdlib_strcpy(__dst, __s), v5 = bed_Insert(v23, __dst, v45), (v5 & 0x80000000) == 0))
  {
    UTOITrace(*(a1 + 18), a1[2], v48, v47, "AFTER utoin_InsertRegionTags");
    v2 = 0;
    goto LABEL_87;
  }

LABEL_86:
  v2 = v5;
LABEL_87:
  if (v47)
  {
    bed_ObjClose(v47);
  }

  if (v48)
  {
    bed_ObjClose(v48);
  }

  return v2;
}

uint64_t utoin_RemoveBlankRegions(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v34[0] = 1;
  result = bed_GetpElem(a2, 0, &v32);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetcElem(a2, &v33 + 1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_FindForward(a2, bed_marker_IsToiOfType, v34, &v33);
  v9 = v33;
  if (v33 < a3)
  {
    result = bed_GetpElem(a2, v33, &v31);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v10 = 0;
    v9 = v33;
    v11 = (v31 + 64);
    do
    {
      if (v10 || v11 >= v31 + (HIWORD(v33) << 6) - (v33 << 6))
      {
        break;
      }

      v12 = v11[8];
      v13 = *(v31 + 36) + *(v31 + 32);
      if (v12 == v13 && v11[5] == 7)
      {
        v14 = v11[10];
        v10 = v14 <= 0x2C && ((1 << v14) & 0x10000001C000) != 0;
      }

      else
      {
        v10 = 0;
      }

      v11 += 16;
    }

    while (v12 <= v13);
    if (v10)
    {
      result = bed_FindForward(a2, bed_marker_IsToiOfType, v34, &v33);
      goto LABEL_37;
    }
  }

  if ((result & 0x80000000) != 0 || v9 >= a3)
  {
LABEL_37:
    if ((result & 0x80000000) == 0 || (result & 0x1FFF) == 0x14)
    {
      v30 = bed_Goto(a2, a3);
      return v30 & (v30 >> 31);
    }

    return result;
  }

  while (1)
  {
    result = bed_GetpElem(a2, v9, &v31);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = bed_Remove(a4, (*(v31 + 32) - *(v32 + 32)), *(v31 + 36));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v15 = v31;
    v16 = HIWORD(v33);
    v17 = v33;
    if ((HIWORD(v33) - v33) >= 2)
    {
      v18 = v31 + 64;
      v19 = *(v31 + 36);
      do
      {
        v20 = *(v18 + 32);
        v21 = *(v15 + 32);
        v22 = v19 + v21;
        if (v20 == v19 + v21 && *(v18 + 20) == 7 && *(v18 + 40) != 43)
        {
          v23 = *(v18 + 28) + *(v15 + 28);
          *(v18 + 24) = *(v15 + 24);
          *(v18 + 28) = v23;
          v24 = v32;
          v25 = *(v18 + 16);
          result = growOffsets(a1, v18, 1u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *(v15 + 28);
          v27 = (*(v18 + 8) + 8 * v25);
          *v27 = *(v15 + 24) - *(v24 + 24);
          v27[1] = v26;
          v20 = *(v18 + 32);
          v15 = v31;
          v21 = *(v31 + 32);
          v19 = *(v31 + 36);
          v16 = HIWORD(v33);
          v17 = v33;
          v22 = v19 + v21;
        }

        if (v20 >= v22)
        {
          v28 = v20 - v19;
        }

        else
        {
          v28 = v21;
        }

        *(v18 + 32) = v28;
        v18 += 64;
      }

      while (v18 < v15 + (v16 << 6) - (v17 << 6));
    }

    v29 = *(v15 + 8);
    if (v29)
    {
      heap_Free(*(a1 + 8), v29);
      *(v31 + 8) = 0;
      v17 = v33;
    }

    result = bed_Remove(a2, v17, 1u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    --HIWORD(v33);
    LOWORD(a3) = a3 - 1;
    result = bed_FindForward(a2, bed_marker_IsToiOfType, v34, &v33);
    if ((result & 0x80000000) == 0)
    {
      LOWORD(v9) = v33;
      if (v33 < a3)
      {
        continue;
      }
    }

    goto LABEL_37;
  }
}

uint64_t growOffsets(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v5 = 2370838538;
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  if (v6)
  {
    v8 = heap_Realloc(v7, v6, (8 * (*(a2 + 16) + a3)) | 1);
    if (v8)
    {
      v5 = 0;
      *(a2 + 8) = v8;
      *(a2 + 16) += v3;
    }
  }

  else
  {
    v9 = heap_Calloc(v7, a3, 9);
    *(a2 + 8) = v9;
    if (v9)
    {
      v5 = 0;
      *(a2 + 16) = v3;
    }
  }

  return v5;
}

uint64_t utoin_LookUpWordsInNativeRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  __b = 0u;
  v49 = 0u;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerSetTypeOfInput2;
  v49 = unk_26ECDC390;
  v50 = xmmword_26ECDC3A0;
  v51 = unk_26ECDC3B0;
  result = 2370838535;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  result = bed_GetpElem(a3, 0, &v56);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetcElem(a3, &v55 + 1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a3, 0, &v59);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a2, 0, &v58);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a3, 0xFFFFu, &v57);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetiElem(a3, &v55);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v10 = 0;
  v47 = *(v57 + 40);
  v11 = *(v57 + 24);
  v12 = *(v57 + 16);
  v13 = 1;
  if (*(a1 + 168) == 1 && *(v57 + 16))
  {
    v14 = heap_Calloc(*(*(a1 + 16) + 8), v12 + 1, 3);
    if (!v14)
    {
      return 2370838538;
    }

    v10 = v14;
    v15 = heap_Calloc(*(*(a1 + 16) + 8), v12 + 1, 9);
    result = 2370838538;
    if (!v15)
    {
      return result;
    }

    v16 = 0;
    v17 = *(v57 + 8);
    do
    {
      *(v15 + v16) = *(v17 + v16);
      v16 += 8;
    }

    while (8 * v12 != v16);
    v18 = 0;
    LOWORD(v19) = 0;
    v20 = 0;
    v21 = v57;
    v22 = 4;
    do
    {
      if (!v18)
      {
        v23 = **(v21 + 8);
        if (v23 > *(v21 + 24))
        {
          v20 += v23;
          v19 = **(v21 + 8);
        }
      }

      v24 = v18 + 1;
      if (v18 + 1 >= v12)
      {
        LOWORD(v25) = *(v21 + 36) - v20;
      }

      else
      {
        v25 = *(*(v21 + 8) + v22 + 4) - (*(*(v21 + 8) + v22 - 4) + *(*(v21 + 8) + v22));
        v20 += v25;
      }

      v10[v18] = v25;
      v22 += 8;
      ++v18;
    }

    while (v12 != v24);
    v46 = v15;
    if (v19)
    {
      cstdlib_memmove(v10 + 1, v10, 2 * v12);
      v13 = 0;
      *v10 = v19;
      v26 = v12 + 1;
      LODWORD(v12) = (v12 + 1);
      goto LABEL_28;
    }

    v13 = 1;
  }

  else
  {
    v46 = 0;
  }

  v26 = v12;
LABEL_28:
  v27 = *(v57 + 32) - *(v59 + 32);
  v28 = v27 + *(v57 + 36);
  if (*(a1 + 168) && v26)
  {
    v42 = v11;
    v43 = v13;
    v29 = 0;
    v44 = v12;
    v45 = v26;
    while (1)
    {
      v30 = v29;
      v31 = v10[v29];
      v32 = v59;
      if (v31 < 1)
      {
        break;
      }

      v33 = (v31 + v27);
      if (v33 >= v28)
      {
        v34 = v28;
      }

      else
      {
        v34 = v33;
      }

      if ((utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v59, v56, HIWORD(v55), v58, v47, v57, v27, v34, &v54, &v53, &v52) & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      LOWORD(v27) = v54 + v34;
      v28 += v54;
      ++v29;
      if (v53 == 1 && v29 < v44)
      {
        v35 = (v27 - v52);
        if ((bed_Goto(a2, v35) & 0x80000000) != 0 || (bed_Insert(a2, " ", 1) & 0x80000000) != 0 || (bed_GetpElem(a3, 0, &v56) & 0x80000000) != 0 || (bed_GetcElem(a3, &v55 + 1) & 0x80000000) != 0)
        {
          goto LABEL_60;
        }

        v36 = v56;
        if (HIWORD(v55) >= 2uLL)
        {
          v37 = v56[8] + v35;
          v38 = v56 + 24;
          v39 = HIWORD(v55) - 1;
          do
          {
            v40 = *v38;
            if (v37 <= v40)
            {
              *v38 = v40 + 1;
            }

            v38 += 16;
            --v39;
          }

          while (v39);
        }

        ++*(v36 + 36);
        if ((bed_Goto(a3, 1u) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

        DWORD2(v50) = 1;
        if (v43)
        {
          v41 = v56;
          *(&v49 + 1) = (*(v46 + 8 * v29) + v56[6]);
        }

        else
        {
          *(&v49 + 1) = (*(v46 + 8 * v30) + v42);
          v41 = v56;
        }

        LODWORD(v50) = *(v41 + 32) + v35;
        DWORD1(v50) = 1;
        if ((bed_marker_InjectFixedRefMarker(a3, &__b) & 0x80000000) != 0 || (bed_GetpElem(a3, 0, &v56) & 0x80000000) != 0 || (bed_GetcElem(a3, &v55 + 1) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

        LOWORD(v27) = v27 + 1;
        ++v28;
      }

      if (v29 == v45)
      {
        v32 = v59;
        break;
      }
    }

    utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v32, v56, HIWORD(v55), v58, v47, v57, v27, v28, &v54, &v53, &v52);
  }

  else
  {
    utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v59, v56, HIWORD(v55), v58, v47, v57, v27, v28, &v54, &v53, &v52);
  }

LABEL_59:
  if (v10)
  {
LABEL_60:
    heap_Free(*(*(a1 + 16) + 8), v10);
  }

  if (v46)
  {
    heap_Free(*(*(a1 + 16) + 8), v46);
  }

  return 0;
}

uint64_t utoin_LookUpWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v6 = 2370838538;
  v29 = 0;
  result = 2370838535;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v26 = 0;
        __src = 0;
        v28 = 0;
        result = bed_GetpElem(a3, 0, &v31);
        if ((result & 0x80000000) == 0)
        {
          result = bed_GetpElem(a2, 0, &v30);
          if ((result & 0x80000000) == 0)
          {
            result = bed_GetpElem(a3, 0xFFFFu, &v29);
            if ((result & 0x80000000) == 0)
            {
              v12 = *(v29 + 32);
              v13 = *(v31 + 32);
              v14 = *(v29 + 36);
              __src = 0;
              v15 = *(a1 + 130);
              if (v14 <= v15)
              {
                LOWORD(v26) = v14;
                v16 = heap_Calloc(*(*(a1 + 16) + 8), v15 + 1, 1);
                v25 = v16;
                if (v16 && (cstdlib_memmove(v16, (v30 + (v12 - v13)), v14), (__src = heap_Calloc(*(*(a1 + 16) + 8), 1, *(a1 + 132) + *(a1 + 132) * *(a1 + 128) + 1)) != 0))
                {
                  v6 = utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &v25, 1, *(a1 + 130), *(a1 + 128), v24);
                  if ((v6 & 0x80000000) == 0 && HIDWORD(v26))
                  {
                    if (HIDWORD(v26) == 43 || HIDWORD(v26) == 16)
                    {
                      *(v29 + 40) = HIDWORD(v26);
                    }

                    v21 = bed_Insert(a4, __src, v28);
                    if ((v21 & 0x80000000) == 0)
                    {
                      if (LH_stricmp(*(a1 + 24), v24))
                      {
                        v22 = v24;
                      }

                      else
                      {
                        v22 = 0;
                      }

                      v21 = utoin_ReplaceCurrentRegion(a2, a3, a4, a5, v22);
                    }

                    v6 = v21;
                  }
                }

                else
                {
                  log_OutPublic(*(*(a1 + 16) + 32), &modPP_3, 1923, 0, v17, v18, v19, v20, v23);
                }

                if (v25)
                {
                  heap_Free(*(*(a1 + 16) + 8), v25);
                }

                if (__src)
                {
                  heap_Free(*(*(a1 + 16) + 8), __src);
                }

                return v6;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t utoin_LookUpSubWordsInNativeRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7, const char *a8, int a9, uint64_t a10, unsigned __int16 a11, unsigned __int16 a12, _WORD *a13, _DWORD *a14, _WORD *a15)
{
  v91 = a6;
  v90 = a7;
  v89 = a8;
  v88 = 0;
  if (!a6)
  {
    return 2370838535;
  }

  v20 = a15;
  v21 = a10;
  v22 = a9;
  __b = 0u;
  *__n = 0u;
  cstdlib_memset(&__b, 0, 0x20uLL);
  *a14 = 0;
  *a13 = 0;
  *a15 = 0;
  if (a9 == 3)
  {
    v23 = v91;
    v24 = *(a10 + 32);
    if (utoin_multiwordInLatinRegion(v91, v90, &v88 + 1, &v88, v24, *(a10 + 36) + v24))
    {
      v28 = *(a5 + 32);
      v29 = *(v23 + (HIWORD(v88) << 6) + 32) - v28;
      v30 = *(v23 + (v88 << 6) + 32) - v28;
      if (*(a1 + 72) == 1)
      {
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (multiword found for latin region %d and %d)", v25, v26, v27, *(v23 + (HIWORD(v88) << 6) + 32));
      }

      v84 = 1;
    }

    else
    {
      if (*(a1 + 72) == 1)
      {
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no multiword found for latin region %d and %d)", v25, v26, v27, v24);
      }

      v29 = 0;
      v30 = 0;
      v84 = 0;
    }

    v21 = a10;
    v22 = 3;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v84 = 0;
  }

  *&__b = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 130) + 1, 1);
  v36 = *(a1 + 16);
  if (!__b)
  {
    goto LABEL_18;
  }

  v82 = v30;
  __n[0] = heap_Calloc(*(v36 + 8), 1, *(a1 + 132) + *(a1 + 132) * *(a1 + 128) + 1);
  if (__n[0])
  {
    if (*(a1 + 72) == 1)
    {
      v37 = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 130) + 1, 1);
      if (!v37)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v37 = 0;
    }

    v80 = a2;
    v38 = a12;
    if (a11 >= a12)
    {
      goto LABEL_19;
    }

    v78 = v29;
    v76 = a5;
    v39 = a11;
    v83 = a3;
    v79 = a4;
    v77 = v21;
    while (1)
    {
      if (v22 == 3)
      {
        v40 = v21;
        v41 = cstdlib_strlen(v89);
        v42 = v39;
        if (v39 >= v38)
        {
          v44 = 1;
        }

        else
        {
          do
          {
            v43 = utf8_BelongsToSet(2u, v89, v42, v41);
            v44 = v43 == 1;
            if (v43 != 1)
            {
              break;
            }

            v39 += utf8_determineUTF8CharLength(v89[v39]);
            v42 = v39;
          }

          while (v39 < v38);
        }

        if ((a11 == v39 || (a11 >= v39 ? (v47 = 1) : (v47 = v44), (v47 & 1) == 0 && utf8_BelongsToSet(2u, v89, v42 - 1, v41) == 1)) && (v46 = v39 + utf8_determineUTF8CharLength(v89[v39]), v46 < v38))
        {
          v21 = v40;
          a4 = v79;
          while (1)
          {
            v45 = v46;
            if (utf8_BelongsToSet(2u, v89, v46, v41))
            {
              break;
            }

            v46 = v45 + utf8_determineUTF8CharLength(v89[v45]);
            if (v46 >= v38)
            {
              goto LABEL_51;
            }
          }

          if (!v45)
          {
LABEL_51:
            v45 = v38;
            goto LABEL_52;
          }

          if (utf8_BelongsToSet(2u, v89, v45, v41) != 1)
          {
            v45 = v38;
          }

LABEL_52:
          v20 = a15;
        }

        else
        {
          v45 = v38;
          v20 = a15;
          v21 = v40;
          a4 = v79;
        }
      }

      else
      {
        v45 = v38;
      }

      if (v84 == 1 && ((v48 = v45, v45 > v78) || v39 >= v78))
      {
        if (v45 >= v78)
        {
          v48 = v78;
        }

        if (v78 <= v39)
        {
          v45 = v82;
        }

        else
        {
          v45 = v48;
        }

        if (v78 > v39)
        {
          v49 = 0;
        }

        else
        {
          v39 = v78;
          v49 = 1;
        }
      }

      else
      {
        v49 = 0;
      }

      v50 = v45 - v39;
      if (v50 < 1)
      {
        goto LABEL_19;
      }

      if (v50 > *v20)
      {
        *v20 = v45 - v39;
      }

      if (!v89)
      {
        goto LABEL_19;
      }

      v81 = v49;
      if (*(a1 + 130) >= (v45 - v39))
      {
        v51 = (v45 - v39);
      }

      else
      {
        v51 = *(a1 + 130);
      }

      WORD4(__b) = v51;
      cstdlib_memmove(__b, &v89[v39], v51);
      v52 = WORD4(__b);
      if (*(a1 + 72) == 1)
      {
        cstdlib_strncpy(v37, __b, WORD4(__b));
        v37[WORD4(__b)] = 0;
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (lookup User Dict for %s)", v53, v54, v55, v37);
      }

      if ((utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &__b, v22 == 3, *(a1 + 130), *(a1 + 128), v85) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      if (v22 == 3)
      {
        v59 = HIDWORD(__b);
      }

      else
      {
        while (1)
        {
          v59 = HIDWORD(__b);
          v60 = WORD4(__b) < 2u || WORD4(__b) > v52;
          if (v60 || HIDWORD(__b) != 0)
          {
            break;
          }

          WORD4(__b) = utf8_GetPreviousUtf8Offset(__b, WORD4(__b));
          if ((utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &__b, v22 == 3, *(a1 + 130), *(a1 + 128), v85) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }
      }

      if (v59 > 15)
      {
        if (v59 == 16)
        {
          if (!LH_stricmp(*(a1 + 24), "jpj") && HIDWORD(__b) != 2)
          {
LABEL_98:
            if (v22 == 3 && *(a1 + 72) == 1)
            {
              log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no (valid) User Dict entry found)", v56, v57, v58, v75);
            }

            if (v22 == 3)
            {
              v39 = v45;
            }

            v39 += utf8_determineUTF8CharLength(v89[v39]);
            v20 = a15;
            goto LABEL_114;
          }
        }

        else if (v59 != 43)
        {
          goto LABEL_98;
        }
      }

      else if (v59 == 2)
      {
        if (*__n[0] <= 0x7Eu)
        {
          HIDWORD(__b) = 3;
        }
      }

      else if (v59 != 3)
      {
        goto LABEL_98;
      }

      *a15 = 0;
      *a14 = 1;
      if (*(a1 + 72) == 1)
      {
        cstdlib_strncpy(v37, __n[0], LOWORD(__n[1]));
        v37[LOWORD(__n[1])] = 0;
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (found User Dict entry %s)", v62, v63, v64, v37);
      }

      if (LH_stricmp(*(a1 + 24), v85))
      {
        v65 = v85;
      }

      else
      {
        v65 = 0;
      }

      if ((utoin_ReplaceWord(v80, v83, v39, &__b, 1, a4, v65) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      if ((bed_GetpElem(v80, 0, &v89) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      v66 = a4;
      v67 = LOWORD(__n[1]);
      v68 = WORD4(__b);
      *a13 = LOWORD(__n[1]) + *a13 - WORD4(__b);
      if ((bed_GetpElem(v83, 0, &v91) & 0x80000000) != 0 || (bed_GetcElem(v83, &v90) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      v39 += v67;
      v38 = v67 + v38 - v68;
      a4 = v66;
      v20 = a15;
      v21 = v77;
LABEL_114:
      if (v81)
      {
        v69 = v91;
        v70 = *(v76 + 32);
        if (utoin_multiwordInLatinRegion(v91, v90, &v88 + 1, &v88, v70 + v39, *(v21 + 32) + v38))
        {
          v74 = *(v69 + (HIWORD(v88) << 6) + 32);
          v78 = v74 - v70;
          v82 = *(v69 + (v88 << 6) + 32) - v70;
          if (*(a1 + 72) == 1)
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (multiword found for latin region %d and %d)", v71, v72, v73, v74);
          }

          v84 = 1;
        }

        else
        {
          if (*(a1 + 72) == 1)
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no further multiwords found in latin region %d and %d)", v71, v72, v73, v70 + v39);
          }

          v78 = 0;
          v82 = 0;
          v84 = 0;
        }

        a4 = v79;
        v20 = a15;
        v21 = v77;
      }

      if (v39 >= v38)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_17:
  v36 = *(a1 + 16);
LABEL_18:
  log_OutPublic(*(v36 + 32), &modPP_3, 1923, 0, v32, v33, v34, v35, v75);
  v37 = 0;
LABEL_19:
  if (__b)
  {
    heap_Free(*(*(a1 + 16) + 8), __b);
    *&__b = 0;
  }

  if (__n[0])
  {
    heap_Free(*(*(a1 + 16) + 8), __n[0]);
    __n[0] = 0;
  }

  if (v37)
  {
    heap_Free(*(*(a1 + 16) + 8), v37);
  }

  return 0;
}

uint64_t utoin_multiwordInLatinRegion(uint64_t a1, unsigned int a2, _WORD *a3, __int16 *a4, unsigned int a5, unsigned int a6)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a1 + 104);
  for (i = 1; ; ++i)
  {
    v9 = (a1 + (v6 << 6));
    if (v9[5] == 32 && v9[10] == 1)
    {
      v10 = v9[8];
      v11 = v10 < a5 || v10 > a6;
      if (!v11 && v6 + 1 < a2)
      {
        break;
      }
    }

LABEL_21:
    ++v6;
    v7 += 16;
    if (v6 == a2)
    {
      return 0;
    }
  }

  v13 = v7;
  v14 = i;
  while (1)
  {
    if (*(v13 - 5) == 32 && !*v13)
    {
      v15 = *(v13 - 2);
      if (v15 >= v10 && v15 <= a6)
      {
        break;
      }
    }

    v13 += 16;
    if (a2 == ++v14)
    {
      goto LABEL_21;
    }
  }

  *a3 = v6;
  *a4 = v14;
  return 1;
}

uint64_t utoin_ReplaceCurrentRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v31 = 0;
  __src = 0;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  __b = 0u;
  v27 = 0u;
  *v25 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerSetLang;
  v27 = unk_26ECDC270;
  v28 = xmmword_26ECDC280;
  v29 = unk_26ECDC290;
  if (!a3)
  {
    return 2370838535;
  }

  result = bed_GetpElem(a2, 0, &v35);
  if ((result & 0x80000000) == 0)
  {
    result = bed_GetpElem(a2, 0xFFFFu, &v34);
    if ((result & 0x80000000) == 0)
    {
      v11 = *(v34 + 32);
      v12 = *(v35 + 32);
      v13 = *(v34 + 36);
      if (a4 && a5)
      {
        result = datac_RequestBlock(a4, 1012, 1u, v25);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        DWORD1(v27) = 36;
        result = addOrGetTNArgStr(*v25, a5, &v28 + 2, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        *(&v27 + 1) = *(v34 + 24);
        *&v28 = *(v34 + 32);
        result = bed_Goto(a2, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_marker_InjectFixedRefMarker(a2, &__b);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v34 += 64;
      }

      result = bed_GetcElem(a3, &v33 + 1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v14 = v11 - v12;
      if (HIWORD(v33))
      {
        if (v13 >= HIWORD(v33))
        {
          v15 = HIWORD(v33);
        }

        else
        {
          v15 = v13;
        }

        result = bed_GetpElem(a3, 0, &__src);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_GetpElem(a1, 0, &v31);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v16 = 0;
        if (v15)
        {
          while (1)
          {
            v17 = (v31 + v14 + v16);
            v18 = __src + v16;
            if (*v17 != *v18 || v17[1] != v18[1])
            {
              break;
            }

            if (v15 <= ++v16)
            {
              v16 = v15;
              break;
            }
          }
        }

        result = bed_Remove(a1, v14, v13);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_Goto(a1, v14);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_Insert(a1, __src, HIWORD(v33));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_Remove(a3, 0, HIWORD(v33));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = bed_Remove(a1, (v11 - v12), v13);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v16 = 0;
      }

      v19 = HIWORD(v33);
      *(v34 + 36) = HIWORD(v33);
      result = bed_GetiElem(a2, &v30);
      if ((result & 0x80000000) == 0)
      {
        result = bed_GetcElem(a2, &v33);
        if ((result & 0x80000000) == 0)
        {
          v20 = v33;
          v21 = v30 + 1;
          if (v33 <= (v30 + 1))
          {
            return 0;
          }

          else
          {
            v22 = v35;
            v23 = HIWORD(v33);
            v24 = (v34 + 96);
            do
            {
              if (v19 != v13 && *v24 > v14 + v16 + *(v22 + 32))
              {
                *v24 = *v24 - v13 + v23;
              }

              result = 0;
              ++v21;
              v24 += 16;
            }

            while (v20 > v21);
          }
        }
      }
    }
  }

  return result;
}

uint64_t utoin_RemoveRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = 0;
  result = 2370838535;
  v21 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v20 = 0;
          result = bed_GetpElem(a3, 0, &v23);
          if ((result & 0x80000000) == 0)
          {
            result = bed_GetpElem(a2, 0, &v22);
            if ((result & 0x80000000) == 0)
            {
              result = bed_GetpElem(a3, 0xFFFFu, &v21);
              if ((result & 0x80000000) == 0)
              {
                v8 = *(v21 + 32) - *(v23 + 32);
                v9 = *(v21 + 36);
                result = bed_Remove(a2, v8, v9);
                if ((result & 0x80000000) == 0)
                {
                  *(v21 + 36) = 0;
                  result = bed_GetiElem(a3, &v20 + 1);
                  if ((result & 0x80000000) == 0)
                  {
                    result = bed_GetcElem(a3, &v20);
                    if ((result & 0x80000000) == 0)
                    {
                      v10 = v20;
                      v11 = HIWORD(v20) + 1;
                      if (v20 <= (HIWORD(v20) + 1))
                      {
                        return 0;
                      }

                      else
                      {
                        v12 = v23;
                        v13 = (v21 + 100);
                        do
                        {
                          v14 = *(v13 - 1);
                          v15 = *(v12 + 32) + v8;
                          if (v14 >= v15 + v9)
                          {
                            *(v13 - 1) = v14 - v9;
                          }

                          else
                          {
                            *(v13 - 1) = v15;
                            v16 = *v13 + v15;
                            v17 = v9 + v8 + *(v12 + 32);
                            v18 = v16 >= v17;
                            v19 = v16 - v17;
                            if (v18)
                            {
                              *v13 = v19;
                            }

                            else
                            {
                              *v13 = 0;
                            }
                          }

                          result = 0;
                          ++v11;
                          v13 += 16;
                        }

                        while (v10 > v11);
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
  }

  return result;
}

uint64_t utoin_MarkWordBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 2370838535;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v9 = cstdlib_strlen(szWORD_END_0);
          result = bed_Insert(a4, szWORD_END_0, v9);
          if ((result & 0x80000000) == 0)
          {
            v10 = cstdlib_strlen(szWORD_BEG_0);
            result = bed_Insert(a4, szWORD_BEG_0, v10);
            if ((result & 0x80000000) == 0)
            {

              return utoin_ReplaceCurrentRegion(a2, a3, a4, 0, 0);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t utoin_SpellRegion(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v5 = 2370838535;
  v22 = 0;
  v20 = 0;
  if (a1 && a2 && a3 && a4)
  {
    v21 = 0;
    v11 = a1[2];
    v12 = datac_RequestBlock(a5, 1012, 1u, &v21);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v12 = bed_GetpElem(a3, 0, &v24);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v13 = *(v24 + 32);
    v12 = bed_GetpElem(a2, 0, &v23);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v12 = bed_GetpElem(a3, 0xFFFFu, &v22);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    else
    {
      v14 = *(v22 + 36);
      if (*(v22 + 36))
      {
        v19 = *(v22 + 32);
        v15 = heap_Alloc(*(v11 + 8), (v14 + 1));
        if (v15)
        {
          v16 = v15;
          cstdlib_memset(v15, 0, (v14 + 1));
          cstdlib_memmove(v16, (v23 + (v19 - v13)), v14);
          v17 = (*(a1[13] + 72))(a1[14], a1[15], v16, v14, v14, a4, a5, v21, 1012, &v20, *(v22 + 40) == 44);
          if ((v17 & 0x80000000) == 0)
          {
            v17 = utoin_ReplaceCurrentRegion(a2, a3, a4, 0, 0);
          }

          v5 = v17;
          heap_Free(*(v11 + 8), v16);
        }

        else
        {
          return 2370838538;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

uint64_t utoin_NormalizeOrthNative(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v100 = 0;
  v101[0] = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  __b = 0u;
  v94 = 0u;
  v92 = 0;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerUndef;
  v94 = unk_26ECDC3E8;
  v95 = xmmword_26ECDC3F8;
  v96 = unk_26ECDC408;
  v12 = 2370838535;
  if (a1 && a2 && a3 && a4)
  {
    v13 = *(a1 + 16);
    if (!*(a1 + 164))
    {
      v14 = datac_RequestBlock(a6, 1012, 1u, &v92);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }
    }

    v14 = bed_GetpElem(a3, 0, v101);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v15 = *(v101[0] + 32);
    v86 = *(v101[0] + 24);
    v14 = bed_GetpElem(a2, 0, &v100);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v14 = bed_GetpElem(a3, 0xFFFFu, &v97);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v85 = v15;
    v83 = a3;
    v84 = v13;
    v17 = *(v97 + 32);
    v16 = *(v97 + 36);
    v18 = heap_Alloc(*(v13 + 8), (v16 + 1));
    if (!v18)
    {
      return 2370838538;
    }

    v19 = v18;
    cstdlib_memset(v18, 0, (v16 + 1));
    cstdlib_memmove(v19, (v100 + (v17 - v85)), v16);
    v20 = 0;
    v21 = v92;
    if (!*(a1 + 164))
    {
      v20 = *(v92 + 16);
    }

    v82 = v20;
    *(a1 + 148) = 0x100000001;
    v22 = (*(*(a1 + 104) + 64))(*(a1 + 112), *(a1 + 120), v19, v16, v16, a2, v83, a4, a6, v21, 1012, &v91, a5, &v90, a1 + 136);
    v23 = v84;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

    v12 = bed_GetcElem(a2, &v98);
    if ((v12 & 0x80000000) != 0 || !v98)
    {
      goto LABEL_102;
    }

    v22 = bed_GetpElem(a2, 0, &v99);
    if ((v22 & 0x80000000) != 0)
    {
LABEL_101:
      v12 = v22;
      goto LABEL_102;
    }

    v24 = *(v97 + 32);
    v79 = *(v97 + 24);
    v14 = bed_GetpElem(v83, 0, &v89);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    else
    {
      v25 = bed_GetcElem(v83, &v88);
      v26 = v25;
      if ((v25 & 0x80000000) != 0)
      {
        return v25;
      }

      else
      {
        v73 = v19;
        v27 = *(v97 + 8);
        v28 = *(v97 + 16);
        if (*(v97 + 16))
        {
          v29 = *(v97 + 16);
          v30 = *(v97 + 8);
          do
          {
            *v30 += v86 - v79;
            v30 += 2;
            --v29;
          }

          while (v29);
        }

        v75 = v28;
        v31 = (a1 + 136);
        if (v91)
        {
          v32 = 0;
          v33 = v24 - v85;
          v34 = (v24 - v85);
          v35 = v91 + v34;
          v36 = v24 - v85;
          do
          {
            if (*(v99 + v36) == 16)
            {
              ++v32;
            }

            ++v36;
          }

          while (v35 > v36);
          v81 = 0;
          v37 = 0;
          v38 = 0;
          v87 = 0;
          v74 = (v27 + 4);
          v80 = 1;
          v39 = (v24 - v85);
          v40 = v16;
          v77 = v34;
          do
          {
            if (*(v99 + v33) != 16)
            {
LABEL_36:
              v43 = v38;
              goto LABEL_94;
            }

            if (v35 <= v33)
            {
LABEL_35:
              if (*(a1 + 164))
              {
                goto LABEL_36;
              }

              v44 = v26;
              v42 = cstdlib_strlen((*(v92 + 8) + (v82 + v87) * *(v92 + 2)));
              v26 = v44;
              v31 = (a1 + 136);
            }

            else
            {
              v41 = v33;
              while (*(v99 + v41) != 17)
              {
                if (v35 <= ++v41)
                {
                  if (*(v99 + v41) != 17)
                  {
                    goto LABEL_35;
                  }

                  break;
                }
              }

              v42 = v41 + ~v33;
            }

            if (!v42)
            {
              v43 = v38;
              v34 = v77;
              goto LABEL_94;
            }

            v45 = *(a1 + 144);
            v46 = v38 < v45;
            if (v38 && v45 > v38)
            {
              while (*(*v31 - 8 + 12 * v38) == 1 && *(*v31 + 12 * v38 + 4) == 1)
              {
                v38 = (v38 + 1);
                if (v45 <= v38)
                {
                  v46 = 0;
                  goto LABEL_47;
                }
              }

              v46 = 1;
            }

LABEL_47:
            v43 = (v38 + 1);
            if (v45 <= (v38 + 1))
            {
              v47 = v38 + 1;
            }

            else
            {
              v47 = *(a1 + 144);
            }

            v48 = v38;
            while (v45 > ++v48)
            {
              if (*(*v31 + 12 * v48 - 8) != 1 || *(*v31 + 12 * v48 + 4) != 1)
              {
                goto LABEL_56;
              }
            }

            v48 = v47;
LABEL_56:
            if (v46)
            {
              v49 = *v31;
              v50 = v40;
              if (v45 != v48)
              {
                v50 = *(v49 + 12 * v48);
              }

              v51 = *(v49 + 12 * v38);
              LOWORD(v49) = v50 - v51;
              v52 = v75;
              goto LABEL_66;
            }

            v52 = v75;
            if (*(a1 + 148) == 1)
            {
              if (v32 != 1)
              {
                v51 = 0;
                v43 = v38;
                LOWORD(v49) = v42 / *(a1 + 160);
                goto LABEL_66;
              }

              v51 = 0;
              LODWORD(v49) = *(v97 + 28);
            }

            else
            {
              v51 = 0;
              LOWORD(v49) = 0;
            }

            v43 = v38;
LABEL_66:
            v53 = v49;
            v54 = 0;
            if (v52)
            {
              v55 = v52;
              v56 = v74;
              do
              {
                v57 = *(v56 - 1);
                if (v57 > v51 + v49 + v37)
                {
                  break;
                }

                v58 = v37 + v51;
                if (v57 == v37 + v51)
                {
                  v37 += *v56;
                  v58 = v37 + v51;
                }

                if (v57 > v58 && v57 <= v58 + v49)
                {
                  v54 = *v56;
                }

                v56 += 2;
                --v55;
              }

              while (v55);
            }

            v78 = v54;
            v60 = v79 + v81 + v51 + v37;
            DWORD2(v94) = v60;
            HIDWORD(v94) = v49;
            v76 = v39 + v85;
            LODWORD(v95) = v39 + v85;
            DWORD1(v95) = v42;
            if (*(a1 + 164))
            {
              v61 = 0;
            }

            else
            {
              DWORD1(v94) = 39;
              DWORD2(v95) = v82 + v87;
              v61 = cstdlib_strlen((*(v92 + 8) + DWORD2(v95) * *(v92 + 2)));
              v62 = bed_marker_InjectFixedRefMarker(v83, &__b);
              if ((v62 & 0x80000000) != 0)
              {
                v12 = v62;
LABEL_106:
                v19 = v73;
                v23 = v84;
                goto LABEL_102;
              }
            }

            DWORD1(v94) = 41;
            *(&v95 + 1) = 0;
            v26 = bed_marker_InjectFixedRefMarker(v83, &__b);
            v66 = v80;
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_105;
            }

            if (v90)
            {
              if (*v90 >= v80)
              {
                v67 = v90[v80];
              }

              else
              {
                log_OutText(*(v84 + 32), &modPP_3, 5, 0, "[UTOI] (missing POS for normalized word %d", v63, v64, v65, v80);
                v67 = 0;
              }

              DWORD1(v94) = 14;
              DWORD2(v94) = v60;
              if (*(a1 + 148) == 1)
              {
                v68 = v53;
              }

              else
              {
                v68 = 0;
              }

              if (v95 == v85)
              {
                v69 = v85;
              }

              else
              {
                v69 = v76;
              }

              HIDWORD(v94) = v53;
              *&v95 = v69;
              DWORD2(v95) = v67;
              v26 = bed_marker_InjectFixedRefMarker(v83, &__b);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_105;
              }

              v81 += v68;
              v66 = (v80 + 1);
            }

            v31 = (a1 + 136);
            v40 = v16;
            v34 = v77;
            v80 = v66;
            v37 += v78;
            v87 += v61 + 1;
LABEL_94:
            v39 = ++v33;
            v35 = v34 + v91;
            v38 = v43;
          }

          while (v35 > v33);
        }

        if (*(a1 + 146) < 0x15u)
        {
LABEL_105:
          v12 = v26;
          goto LABEL_106;
        }

        v70 = v26;
        v23 = v84;
        v71 = heap_Realloc(*(v84 + 8), *v31, 120);
        v12 = 2370838538;
        v19 = v73;
        if (v71)
        {
          *(a1 + 136) = v71;
          *(a1 + 146) = 10;
          v12 = v70;
        }

LABEL_102:
        heap_Free(*(v23 + 8), v19);
        if (v90)
        {
          heap_Free(*(v23 + 8), v90);
        }
      }
    }
  }

  return v12;
}

uint64_t utoin_Transcode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v10 = 2370838538;
  v84 = 0u;
  v85 = 0u;
  __b = 0u;
  v83 = 0u;
  v81 = 0;
  v80 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerUndef;
  v83 = unk_26ECDC3E8;
  v84 = xmmword_26ECDC3F8;
  v85 = unk_26ECDC408;
  v11 = 2370838535;
  if (a1 && a2 && a3 && a4)
  {
    v12 = *(a1 + 16);
    v13 = bed_GetpElem(a3, 0, &v89);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a2, 0, &v88);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a3, 0, &v81);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetcElem(a3, &v80);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a3, 0xFFFFu, &v87);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    else
    {
      v14 = *(v89 + 32);
      v16 = *(v87 + 32);
      v15 = *(v87 + 36);
      v17 = *(v87 + 24);
      v78 = *(v87 + 40);
      v18 = *(v87 + 8);
      v19 = *(v87 + 16);
      if (*(v87 + 16))
      {
        v20 = *(v89 + 24) - v17;
        v21 = *(v87 + 16);
        v22 = *(v87 + 8);
        do
        {
          *v22 += v20;
          v22 += 2;
          --v21;
        }

        while (v21);
      }

      if (v15)
      {
        v74 = v18;
        v76 = v19;
        v77 = v17;
        v86 = v15 + 1;
        v23 = heap_Alloc(*(v12 + 8), (v15 + 1));
        if (v23)
        {
          v72 = v16;
          v24 = v16 - v14;
          v25 = v23;
          cstdlib_memset(v23, 0, v86--);
          *(a1 + 144) = 0;
          *(a1 + 148) = 0x100000001;
          v26 = utoin_TranscodeLatinText(a1, v12, v88 + v24, v15, v25, &v86, a1 + 136, v78);
          if ((v26 & 0x80000000) != 0)
          {
            v42 = v25;
          }

          else
          {
            __s = v25;
            if (!a5 || (v27 = cstdlib_strlen(szWORD_BEG_0), v26 = bed_Insert(a4, szWORD_BEG_0, v27), (v26 & 0x80000000) == 0))
            {
              v28 = *(v12 + 8);
              v29 = cstdlib_strlen(__s);
              v30 = heap_Alloc(v28, (v29 + 1));
              if (v30)
              {
                v31 = v30;
                v32 = cstdlib_strlen(__s);
                cstdlib_memset(v31, 0, v32 + 1);
                cstdlib_strcpy(v31, __s);
                v33 = cstdlib_strlen(v31);
                v34 = bed_Insert(a4, v31, v33);
                v71 = v31;
                if ((v34 & 0x80000000) != 0 || a5 && (v35 = cstdlib_strlen(szWORD_END_0), v34 = bed_Insert(a4, szWORD_END_0, v35), (v34 & 0x80000000) != 0) || (v34 = utoin_ReplaceCurrentRegion(a2, a3, a4, 0, 0), (v34 & 0x80000000) != 0))
                {
LABEL_94:
                  v10 = v34;
                }

                else
                {
                  if (v78 == 16 && v80 >= 2uLL)
                  {
                    v36 = 0;
                    v37 = v15 + v72;
                    v38 = (v81 + 100);
                    v39 = v80 - 1;
                    do
                    {
                      v40 = *(v38 - 1);
                      if (v40 > v37)
                      {
                        break;
                      }

                      v41 = *(v38 - 4) == 998 && v40 >= v72;
                      if (v41 && *v38 + v40 <= v37)
                      {
                        ++v36;
                      }

                      v38 += 16;
                      --v39;
                    }

                    while (v39);
                    v79 = v36 > 1u;
                  }

                  else
                  {
                    v79 = 0;
                  }

                  if (*(v87 + 40) != 43)
                  {
                    v43 = *(a1 + 144);
                    if (*(a1 + 144))
                    {
                      v44 = 0;
                      v45 = 0;
                      v46 = 0;
                      v75 = (v74 + 4);
                      while (v45 < v43)
                      {
                        v47 = *(a1 + 136);
                        v48 = v45;
                        if (*(v47 + 12 * v45 + 4) != 1)
                        {
                          v52 = 1;
                          goto LABEL_54;
                        }

                        v49 = (v47 + 12 * v45 + 16);
                        v50 = v72;
                        while (v43 - 1 != v48)
                        {
                          v51 = *v49;
                          v49 += 3;
                          ++v48;
                          if (v51 != 1)
                          {
                            v52 = v48 < v43;
                            goto LABEL_55;
                          }
                        }

                        v52 = 0;
                        v48 = v43;
LABEL_55:
                        v45 = (v48 + 1);
                        if (v43 <= (v48 + 1))
                        {
                          v53 = v48 + 1;
                        }

                        else
                        {
                          v53 = v43;
                        }

                        v54 = v48;
                        while (1)
                        {
                          v55 = ++v54;
                          if (v54 >= v43)
                          {
                            break;
                          }

                          if (*(*(a1 + 136) + 12 * v54 + 4) != 1)
                          {
                            goto LABEL_63;
                          }
                        }

                        v54 = v53;
LABEL_63:
                        if (v52)
                        {
                          v56 = *(a1 + 136);
                          v57 = (v56 + 12 * v48);
                          v52 = v57[4];
                          if (v54 == v43)
                          {
                            LOWORD(v58) = v86 - *(v56 + 12 * (v55 - 1) + 8);
                          }

                          else
                          {
                            LOWORD(v58) = *(v56 + 12 * v55 + 8) - v52;
                          }

                          v59 = *v57;
                          v60 = *(v56 + 12 * v48 + 2);
                          v58 = v58;
                        }

                        else
                        {
                          v59 = 0;
                          v60 = 0;
                          v58 = 0;
                          v45 = v48;
                        }

                        v61 = v76;
                        if (v76)
                        {
                          v62 = 0;
                          v63 = v75;
                          do
                          {
                            v64 = *(v63 - 1);
                            if (v64)
                            {
                              v65 = v64 > v58 + v59 + v44;
                            }

                            else
                            {
                              v65 = 0;
                            }

                            if (v65)
                            {
                              break;
                            }

                            v66 = v44 + v59;
                            if (v64 == v44 + v59)
                            {
                              v44 = *v63;
                              v66 = *v63 + v59;
                            }

                            if (v64 > v66 && v64 <= v66 + v58)
                            {
                              v62 = *v63;
                            }

                            v63 += 2;
                            --v61;
                          }

                          while (v61);
                        }

                        else
                        {
                          v62 = 0;
                        }

                        DWORD1(v83) = 41;
                        DWORD2(v83) = v59 + v77 + v44;
                        HIDWORD(v83) = v62 + v60;
                        LODWORD(v84) = v52 + v50;
                        DWORD1(v84) = v58;
                        if (!v79)
                        {
                          v34 = bed_marker_InjectFixedRefMarker(a3, &__b);
                          if ((v34 & 0x80000000) != 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        v13 = bed_GetpElem(a3, 0, &v81);
                        if ((v13 & 0x80000000) != 0)
                        {
                          return v13;
                        }

                        v11 = bed_GetcElem(a3, &v80);
                        if ((v11 & 0x80000000) != 0)
                        {
                          return v11;
                        }

                        v44 += v62;
                        ++v46;
                        v43 = *(a1 + 144);
                        if (v43 <= v46)
                        {
                          goto LABEL_99;
                        }
                      }

                      v52 = 0;
LABEL_54:
                      v48 = v45;
                      v50 = v72;
                      goto LABEL_55;
                    }
                  }

                  v11 = 0;
LABEL_99:
                  if (*(a1 + 146) >= 0x15u)
                  {
                    v70 = heap_Realloc(*(v12 + 8), *(a1 + 136), 120);
                    v69 = __s;
                    if (v70)
                    {
                      *(a1 + 136) = v70;
                      *(a1 + 146) = 10;
                      v10 = v11;
                    }

                    goto LABEL_96;
                  }

                  v10 = v11;
                }

                v69 = __s;
LABEL_96:
                heap_Free(*(v12 + 8), v69);
                v42 = v71;
                goto LABEL_97;
              }

              v42 = __s;
LABEL_97:
              heap_Free(*(v12 + 8), v42);
              return v10;
            }

            v42 = v25;
          }

          v10 = v26;
          goto LABEL_97;
        }

        return 2370838538;
      }

      else
      {
        return 0;
      }
    }
  }

  return v11;
}

uint64_t utoin_TranscodeLatinText(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 *a5, _WORD *a6, uint64_t a7, unsigned int a8)
{
  v61 = 0;
  result = 2370838535;
  if (a3 && a6 && *a6)
  {
    if (a4)
    {
      v55 = a1;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v58 = a5 - 1;
      v60 = a4;
      while (1)
      {
        v17 = (a3 + v16);
        v18 = *v17;
        if (v18 - 9 <= 4)
        {
          v19 = v13 + 1;
          if (v19 >= a4 || v18 != 13 || *(a3 + v19) != 10)
          {
            v21 = 0;
            a5[v15] = 32;
            goto LABEL_33;
          }

          v20 = 0;
          v21 = 0;
          goto LABEL_34;
        }

        if (((v18 & 0xDF) - 65) < 0x1Au || (v18 != 32 ? (v22 = (v18 - 48) >= 0xAu) : (v22 = 0), !v22))
        {
          v21 = 0;
          a5[v15] = v18;
          goto LABEL_33;
        }

        v23 = a8;
        if (a8 <= 0x3C)
        {
          if (((1 << a8) & 0x1000080000000140) != 0)
          {
            goto LABEL_26;
          }

          v23 = a8;
          if (a8 == 16)
          {
            if (v18 == 195 && (v17[1] | 0x20) == 0xBC)
            {
              v21 = 0;
              a5[v15] = 118;
              ++v16;
              goto LABEL_33;
            }

            goto LABEL_26;
          }
        }

        if (v23 - 70 >= 3)
        {
          v61 = 0;
          v44 = utf8_determineUTF8CharLength(v18);
          if (*v17 == 227 && v17[1] == 128 && v17[2] == 128)
          {
            v45 = *(a2 + 8);
            v46 = cstdlib_strlen(" ");
            v61 = heap_Alloc(v45, (v46 + 1));
            cstdlib_strcpy(v61, " ");
          }

          else
          {
            result = (*(v55[13] + 80))(v55[14], v55[15], a3 + v16, v44, &v61);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (v61)
          {
            a5[v15] = *v61;
            v20 = 1;
          }

          else
          {
            v20 = 0;
          }

          v25 = 1;
          goto LABEL_89;
        }

LABEL_26:
        if (utf8_determineUTF8CharLength(v18) == 1)
        {
          v24 = *v17;
          if (v24 != 255)
          {
            v21 = 0;
LABEL_32:
            a5[v15] = v24;
LABEL_33:
            v20 = 1;
LABEL_34:
            v25 = 1;
            goto LABEL_35;
          }
        }

        if (!cstdlib_strcmp((a3 + v16), "§"))
        {
          v21 = 0;
          LOBYTE(v24) = *v17;
          goto LABEL_32;
        }

        v25 = 0;
        v61 = 0;
        v20 = 1;
LABEL_89:
        v21 = 1;
LABEL_35:
        v26 = utf8_determineUTF8CharLength(*a5);
        if (v15)
        {
          v27 = &a5[v15];
          v28 = *v27 != 32 && !utf8_BelongsToSet(5u, a5, v14, v26);
          v29 = v58[v15];
          if (v29 == 32)
          {
LABEL_40:
            v30 = 1;
            goto LABEL_48;
          }

          if (v15 >= 3u && *(v27 - 3) == 227)
          {
            v30 = 0;
            if (*(v27 - 2) == 128 && v29 == 128)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
          v28 = 1;
        }

LABEL_48:
        v31 = v20 & v25;
        if (!v15)
        {
          v30 = 1;
        }

        if (v31 == 1 && v28 && v30 && a5[v15] != 17 && *(a7 + 16) == 1)
        {
          v32 = *(a7 + 8);
          v33 = *a7;
          if (v32 >= *(a7 + 10))
          {
            v34 = heap_Realloc(*(a2 + 8), v33, 12 * *(a7 + 10) + 121);
            if (!v34)
            {
              return 2370838538;
            }

            v33 = v34;
            *a7 = v34;
            *(a7 + 10) += 10;
            v32 = *(a7 + 8);
          }

          v35 = v33 + 12 * v32;
          *v35 = v16;
          *(v35 + 2) = 0;
          *(v35 + 4) = 0;
          *(v35 + 8) = v15;
          *(a7 + 8) = v32 + 1;
        }

        v36 = v61;
        if (v61)
        {
          v37 = 0;
        }

        else
        {
          v37 = v21;
        }

        if (v37)
        {
          v38 = 0;
        }

        else
        {
          if ((v21 & (v61 != 0)) == 0)
          {
            v36 = (a3 + v16);
          }

          v38 = utf8_determineUTF8CharLength(*v36);
          if (v38 >= 2u)
          {
            ++v15;
            v39 = v61;
            if ((v21 & (v61 != 0)) == 0)
            {
              v39 = (a3 + v16);
            }

            v40 = (v39 + 1);
            v41 = v38 - 1;
            while (1)
            {
              v42 = *v40++;
              a5[v15] = v42;
              if (!--v41)
              {
                break;
              }

              ++v15;
            }
          }
        }

        if (v21)
        {
          v38 = utf8_determineUTF8CharLength(*(a3 + v16));
        }

        if (v61)
        {
          heap_Free(*(a2 + 8), v61);
          v61 = 0;
        }

        v16 += v38;
        v15 += v31;
        v14 = v15;
        v13 = v16;
        a4 = v60;
        v43 = v16 < v60;
        if (v15 >= *a6 || v60 <= v16)
        {
          goto LABEL_91;
        }
      }
    }

    LOWORD(v15) = 0;
    v43 = 0;
LABEL_91:
    a5[v15] = 0;
    v47 = *(a7 + 8);
    if (*(a7 + 8))
    {
      v48 = 0;
      v49 = *a7;
      do
      {
        v50 = a4;
        if (v48 + 1 < v47)
        {
          v50 = *(v49 + 12 * (v48 + 1));
        }

        if (v50)
        {
          do
          {
            v51 = *(a3 - 1 + v50);
            if (v51 > 0x20 || ((1 << v51) & 0x100002600) == 0)
            {
              if (v50 < 3u)
              {
                goto LABEL_108;
              }

              v54 = a3 + v50;
              if (*(v54 - 3) != 227 || *(v54 - 2) != 128 || v51 != 128)
              {
                goto LABEL_108;
              }

              v53 = -3;
            }

            else
            {
              v53 = -1;
            }

            LOWORD(v50) = v50 + v53;
          }

          while (v50);
          LOWORD(v50) = 0;
        }

LABEL_108:
        *(v49 + 12 * v48 + 2) = v50 - *(v49 + 12 * v48);
        ++v48;
      }

      while (v48 != v47);
    }

    if (v43)
    {
      return 2370838537;
    }

    else
    {
      result = 0;
      *a6 = v15;
    }
  }

  return result;
}

uint64_t utoin_PutClosingAndOpeningTag(int a1, int a2, _BYTE *a3)
{
  if (!a3)
  {
    return 2370838535;
  }

  *a3 = 0;
  if ((a2 - 5) >= 4)
  {
    if (a2 == 2)
    {
      v3 = 16;
      goto LABEL_11;
    }

    if (a2 != 1)
    {
      v3 = a2;
      goto LABEL_11;
    }
  }

  v3 = 16;
  if (a1 && a1 != 43)
  {
    return 0;
  }

LABEL_11:
  if (v3 == a1)
  {
    return 0;
  }

  if ((a1 - 3) >= 2)
  {
    if (!a1)
    {
      v6 = 0;
      goto LABEL_19;
    }

    v6 = 1;
    v5 = a3;
  }

  else
  {
    *a3 = 17;
    v5 = a3 + 1;
    v6 = 2;
  }

  *v5 = 31;
LABEL_19:
  if (a2 <= 4)
  {
    if ((a2 - 3) < 2)
    {
      v7 = &a3[v6];
      *v7 = 19486;
      v8 = 16;
      goto LABEL_32;
    }

    if (a2 == 1)
    {
LABEL_21:
      if (a1 == 16)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if (a2 != 2)
    {
      goto LABEL_33;
    }

LABEL_30:
    *&a3[v6] = 20510;
    v6 += 2;
    goto LABEL_33;
  }

  if ((a2 - 5) < 4)
  {
    goto LABEL_21;
  }

  if (a2 == 16)
  {
    goto LABEL_30;
  }

  if (a2 == 43)
  {
    v7 = &a3[v6];
    *v7 = 12062;
    v8 = 43;
LABEL_32:
    v7[2] = v8;
    v6 += 3;
  }

LABEL_33:
  result = 0;
  a3[v6] = 0;
  return result;
}

const char *getUTOIMarkerString(int a1)
{
  if (a1 == 43)
  {
    return "UTOI_PHONEMEMARKER";
  }

  v3 = &off_279DADCB0;
  v4 = 19;
  result = "UTOI_UNDEF";
  while (*(v3 - 2) != a1)
  {
    v3 += 2;
    if (!--v4)
    {
      return result;
    }
  }

  return *v3;
}

uint64_t UTOITrace(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = 0;
  __n[0] = 0;
  if (!a1)
  {
    return 0;
  }

  __src = 0;
  *&__n[1] = 0;
  v9 = bed_GetcElem(a3, __n);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (__n[0])
  {
    v9 = bed_GetpElem(a3, 0, &__src);
    if ((v9 & 0x80000000) == 0)
    {
      v13 = heap_Calloc(*(a2 + 8), 1, __n[0] + 1);
      if (!v13)
      {
        return 2370838538;
      }

      v14 = v13;
      cstdlib_strncpy(v13, __src, __n[0]);
      *(v14 + __n[0]) = 0;
      v16 = (a2 + 32);
      v15 = *(a2 + 32);
      goto LABEL_10;
    }

    return v9;
  }

  v14 = 0;
  v16 = (a2 + 32);
  v15 = *(a2 + 32);
LABEL_10:
  log_OutText(v15, "PP", 5, 0, "[UTOI] (%s) len=%d (LH_U8 *) %s", v10, v11, v12, a5);
  v18 = bed_GetpElem(a4, 0, &__n[1]);
  if ((v18 & 0x80000000) != 0)
  {
    v17 = v18;
  }

  else
  {
    v17 = bed_GetcElem(a4, &v37);
    if ((v17 & 0x80000000) == 0 && v37)
    {
      v22 = 0;
      v23 = *&__n[1];
      do
      {
        v24 = v23 + (v22 << 6);
        v25 = *(v24 + 20);
        if (v25 == 7)
        {
          v26 = *(v24 + 40);
          if (v26 != 43)
          {
            v27 = &off_279DADCB0;
            v28 = 19;
            do
            {
              if (*(v27 - 2) == v26)
              {
                break;
              }

              v27 += 2;
              --v28;
            }

            while (v28);
          }
        }

        else
        {
          marker_getString(v25);
          v23 = *&__n[1];
        }

        v29 = *(v23 + (v22 << 6) + 48);
        if (v29)
        {
          v30 = cstdlib_strlen(v29);
          if (v30 <= 0x20uLL)
          {
            v31 = v30;
          }

          else
          {
            v31 = 31;
          }

          cstdlib_strncpy(__dst, *(*&__n[1] + (v22 << 6) + 48), v31);
          __dst[v31] = 0;
          v23 = *&__n[1];
        }

        else
        {
          __dst[0] = 0;
        }

        if (*(v23 + (v22 << 6) + 20) == 32)
        {
          __dst[0] = 48;
          if (*(v23 + (v22 << 6) + 40) == 1)
          {
            v32 = 49;
          }

          else
          {
            v32 = 48;
          }

          __dst[0] = v32;
          __dst[1] = 0;
        }

        log_OutText(*v16, "PP", 5, 0, "[UTOI] Marker[%d] %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s", v19, v20, v21, v22);
        v23 = *&__n[1];
        if (*(*&__n[1] + (v22 << 6) + 16))
        {
          v33 = 0;
          v34 = 0;
          do
          {
            log_OutText(*v16, "PP", 5, 0, "[UTOI] Offsets[%d] %u,%u", v19, v20, v21, v34++);
            v23 = *&__n[1];
            v33 += 8;
          }

          while (v34 < *(*&__n[1] + (v22 << 6) + 16));
        }

        ++v22;
      }

      while (v22 < v37);
    }
  }

  if (v14)
  {
    heap_Free(*(a2 + 8), v14);
  }

  return v17;
}

uint64_t UTOISubTrace(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  if (!a1)
  {
    return 0;
  }

  v13 = 0;
  v10 = bed_GetcElem(a3, &v13);
  if ((v10 & 0x80000000) == 0)
  {
    if (!v13)
    {
      v11 = *(a2 + 32);
      goto LABEL_8;
    }

    v10 = bed_GetpElem(a3, 0, &v14);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *(a2 + 32);
LABEL_8:
      log_OutText(v11, "PP", 5, 0, "[UTOI] SUB (%s) len=%d (LH_U8 *) %s", v7, v8, v9, a4);
    }
  }

  return v10;
}

uint64_t wparser_ObjOpen1(_WORD *a1, uint64_t a2, void *a3)
{
  v3 = 2370838535;
  v10 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v10) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v10 + 8), 16);
    if (v7)
    {
      v8 = v7;
      cstdlib_memset(v7, 0, 0x10uLL);
      v3 = 0;
      *v8 = a1;
      v8[1] = a2;
      *a3 = v8;
    }

    else
    {
      return 2370838538;
    }
  }

  return v3;
}

uint64_t wparser_ObjClose1(uint64_t a1)
{
  v1 = 2370838535;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t wparser_ScanWords(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  LODWORD(v52) = 1;
  DWORD1(v53) = 1;
  v51 = 0;
  v4 = 2370838535;
  v50 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  v9 = datac_RequestBlock(a2, 1020, 1u, &v60);
  if ((v9 & 0x80000000) != 0)
  {
    if ((v9 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  if (!*(v60 + 16))
  {
    return 0;
  }

  v10 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1021, &v59, 213);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = *(v60 + 8);
    v12 = *(v60 + 16);
    v10 = bed_GetpElem(v59, 0, &v58);
    if ((v10 & 0x80000000) == 0)
    {
      v56 = *v58;
      v57 = *(v58 + 2);
      v13 = *(v58 + 6);
      v14 = *(v58 + 7);
      v15 = *(v58 + 8);
      v61[0] = *(v58 + 36);
      *(v61 + 12) = v58[3];
      v10 = bed_GetcElem(v59, &v50);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = bed_GetpElem(v59, 0, &v51);
        if ((v10 & 0x80000000) == 0)
        {
          v16 = v50;
          if (v50 < 2u)
          {
            v16 = 1;
          }

          else
          {
            v17 = (v51 + 96);
            v18 = 1;
            while (1)
            {
              v19 = *v17;
              v17 += 16;
              if (v19 != *(v51 + 32))
              {
                break;
              }

              if (v50 == ++v18)
              {
                goto LABEL_20;
              }
            }

            v16 = v18;
          }

LABEL_20:
          v21 = v58;
          v20 = v59;
          *(v58 + 7) = 0;
          *(v21 + 9) = 0;
          v10 = bed_Goto(v20, 1u);
          if ((v10 & 0x80000000) == 0)
          {
            v48 = v13;
            if (!v12)
            {
LABEL_80:
              v4 = bed_GetpElem(v59, 0, &v58);
              if ((v4 & 0x80000000) == 0)
              {
                v46 = v57;
                v45 = v58;
                *v58 = v56;
                *(v45 + 2) = v46;
                *(v45 + 36) = v61[0];
                v45[3] = *(v61 + 12);
                *(v45 + 7) = v14 + a4;
                *(v45 + 8) = v15;
                *(v45 + 6) = v48 - a4;
              }

              goto LABEL_83;
            }

            v22 = 0;
            v23 = 0;
            v49 = v48 + a3;
            while (1)
            {
              v24 = v23;
              v25 = v23;
              do
              {
                if (!utf8_BelongsToSet(4u, v11, v24, v12))
                {
                  break;
                }

                v25 = v25 + utf8_determineUTF8CharLength(*(v11 + v25));
                v24 = v25;
              }

              while (v25 < v12);
              v23 = v25;
              if (v12 > v25)
              {
                v23 = v25;
                do
                {
                  if (utf8_BelongsToSet(4u, v11, v23, v12))
                  {
                    break;
                  }

                  v23 = v23 + utf8_determineUTF8CharLength(*(v11 + v23));
                }

                while (v12 > v23);
              }

              if (v25 < v23)
              {
                if (v50 >= 2u)
                {
                  v26 = 0;
                  v27 = 0;
                  v28 = 1;
                  do
                  {
                    v29 = (v51 + (v28 << 6));
                    v30 = v29[8] - *(v51 + 32);
                    v31 = v30 < v24 || v30 > v23;
                    if (!v31 && v29[5] == 7)
                    {
                      v32 = v29[10];
                      if (v32 == 15)
                      {
                        v33 = v28;
                      }

                      else
                      {
                        v33 = v27;
                      }

                      if (v32 == 43)
                      {
                        v26 = 1;
                      }

                      else
                      {
                        v27 = v33;
                      }
                    }

                    ++v28;
                  }

                  while (v30 <= v23 && v28 < v50);
                  if (v26 == 1 && v27)
                  {
                    v35 = *(v51 + (v27 << 6) + 32) - *(v51 + 32);
                    if (v35 <= v24 || v35 > v23)
                    {
                      v23 = v23;
                    }

                    else
                    {
                      v23 = v35;
                    }
                  }
                }

                if (v25 && v16 < v50)
                {
                  v37 = v16;
                  v38 = (v51 + 32 + (v16 << 6));
                  do
                  {
                    if (*v38 - *(v51 + 32) > v24)
                    {
                      break;
                    }

                    if (*(v38 - 3) != 1)
                    {
                      v22 += *(v38 - 1);
                    }

                    ++v37;
                    v38 += 16;
                  }

                  while (v37 < v50);
                  v16 = v37;
                }

                if (v16 >= v50)
                {
                  v39 = 0;
                  v40 = v23;
                }

                else
                {
                  v39 = 0;
                  v40 = v23;
                  v41 = (v51 + 32 + (v16 << 6));
                  v42 = v50 - v16;
                  do
                  {
                    v43 = *v41 - *(v51 + 32);
                    if (v43 <= v24 || v43 >= v23)
                    {
                      break;
                    }

                    if (*(v41 - 3) != 1)
                    {
                      v39 += *(v41 - 1);
                    }

                    v41 += 16;
                    --v42;
                  }

                  while (v42);
                }

                LODWORD(v54) = v24 + v15;
                DWORD1(v54) = v40 - v24;
                DWORD2(v53) = v49 + v24 + v22;
                HIDWORD(v53) = v39 + v40 - v24;
                v10 = bed_marker_InjectFixedRefMarker(v59, &v52);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }

                v10 = bed_GetcElem(v59, &v50);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }

                v10 = bed_GetpElem(v59, 0, &v51);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }
              }

              if (v12 <= v23)
              {
                goto LABEL_80;
              }
            }
          }
        }
      }
    }
  }

  v4 = v10;
LABEL_83:
  if (v59)
  {
    bed_ObjClose(v59);
  }

  return v4;
}