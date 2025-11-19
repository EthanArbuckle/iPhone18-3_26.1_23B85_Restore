uint64_t utoin_CollapseIdenticalRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = 0;
  v66 = MarkerIntWord;
  v67 = unk_1C37BEDE8;
  v68 = xmmword_1C37BEDF8;
  v69 = unk_1C37BEE08;
  result = 2370838535;
  if (a2)
  {
    if (a3)
    {
      v70 = 0;
      result = bed_GetpElem(a3, 0, &v71);
      if ((result & 0x80000000) == 0)
      {
        result = bed_GetcElem(a3, &v70);
        if ((result & 0x80000000) == 0)
        {
          v6 = v70;
          if (v70)
          {
            v7 = 0;
            LOWORD(v8) = 0;
            v9 = 0;
            v60 = a3;
            while (1)
            {
              v8 = v8;
              v10 = (v71 + (v8 << 6) + 20);
              while (1)
              {
                v11 = *v10;
                v10 += 16;
                if (v11 == 7)
                {
                  break;
                }

                if (++v8 >= v6)
                {
                  goto LABEL_13;
                }
              }

              v12 = v71 + (v8 << 6);
              if (*(v12 + 20) == 7)
              {
                v7 = *(v12 + 40);
                v9 = v8;
              }

LABEL_13:
              v65 = v9;
              v13 = v71 + (v9 << 6);
              if (*(v13 + 20) == 7 && *(v13 + 40) == 43 && *(v13 + 56))
              {
                LOWORD(v8) = v8 + 1;
                goto LABEL_105;
              }

              v14 = v8;
              if (v8 < v6)
              {
                v15 = v8;
                v16 = (v71 + (v8 << 6) + 40);
                while (*(v16 - 5) == 7 && v7 == *v16)
                {
                  ++v15;
                  v16 += 16;
                  if (v6 == v15)
                  {
                    LODWORD(v15) = v6;
                    break;
                  }
                }

                v14 = v8;
                if (v15 != v8)
                {
                  v14 = (v15 - 1);
                  if ((v15 - 1) > v8)
                  {
                    v14 = (v15 - 1);
                    v17 = (v71 + (v14 << 6) + 40);
                    while (*(v17 - 5) != 7 || v7 != *v17)
                    {
                      --v14;
                      v17 -= 16;
                      if (v8 >= v14)
                      {
                        v14 = v8;
                        break;
                      }
                    }
                  }
                }
              }

              if (v7 == 43)
              {
                v18 = v71 + (v14 << 6);
                if (*(v18 + 20) == 7 && *(v18 + 40) == 43 && *(a1 + 168) == 1)
                {
                  LOWORD(v8) = v8 + 1;
                  v7 = 43;
                  goto LABEL_105;
                }
              }

              if (v14 == v8 || v14 >= v6)
              {
                goto LABEL_107;
              }

              v62 = v7;
              if (*(v13 + 40) == 16)
              {
                if (v9 >= 2u && (v19 = v71 + ((v9 - 1) << 6), *(v19 + 20) == 998))
                {
                  if (*(v19 + 32) == *(v13 + 32))
                  {
                    v20 = v9 - 1;
                  }

                  else
                  {
                    v20 = 0;
                  }
                }

                else
                {
                  v20 = 0;
                }

                v22 = v9 + 1;
                if (v22 < v6)
                {
                  v23 = v71 + (v22 << 6);
                  if (*(v23 + 20) == 998 && *(v23 + 32) == *(v13 + 32))
                  {
                    v20 = v9 + 1;
                  }
                }

                if (v14 >= 2u && (v24 = v14 - 1, v25 = v71 + (v24 << 6), *(v25 + 20) == 998))
                {
                  if (*(v25 + 32) != *(v71 + (v14 << 6) + 32))
                  {
                    LOWORD(v24) = 0;
                  }
                }

                else
                {
                  LOWORD(v24) = 0;
                }

                v26 = v6;
                v27 = v14 + 1;
                if (v27 < v26)
                {
                  v28 = v71 + (v27 << 6);
                  if (*(v28 + 20) == 998 && *(v28 + 32) == *(v71 + (v14 << 6) + 32))
                  {
                    LOWORD(v24) = 1;
                  }
                }

                if (v24)
                {
                  v21 = v20 != 0;
                }

                else
                {
                  v21 = 0;
                }
              }

              else
              {
                v21 = 0;
                v20 = 0;
              }

              v63 = v14;
              v29 = v71 + (v14 << 6);
              v30 = *(v29 + 32);
              v31 = *(v13 + 32);
              v61 = v20;
              v64 = v21;
              if (!*v29 && v30 == v31)
              {
                *(v13 + 24) = *(v29 + 24);
                v31 = v30;
              }

              *(v13 + 36) = v30 - v31 + *(v29 + 36);
              *(v13 + 28) = *(v29 + 24) - *(v13 + 24) + *(v29 + 28);
              v32 = v9;
              v33 = v9;
              if (v9 <= v14)
              {
                do
                {
                  v34 = v33;
                  if (v32 == v33)
                  {
                    goto LABEL_74;
                  }

                  v35 = v71 + (v33 << 6);
                  if (!*(v35 + 16))
                  {
                    goto LABEL_74;
                  }

                  v36 = v14;
                  v37 = v9;
                  v38 = a1;
                  v39 = *(a1 + 16);
                  v40 = v71 + (v65 << 6);
                  v41 = *(v40 + 16);
                  result = growOffsets(v39, v40, *(v35 + 16));
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v42 = *(v35 + 16);
                  v43 = *(v35 + 8);
                  if (*(v35 + 16))
                  {
                    v44 = (*(v40 + 8) + 8 * v41);
                    v45 = *(v35 + 8);
                    a1 = v38;
                    v9 = v37;
                    v14 = v36;
                    do
                    {
                      v46 = *v45++;
                      *v44++ = v46;
                      --v42;
                    }

                    while (v42);
                  }

                  else
                  {
                    a1 = v38;
                    v9 = v37;
                    v14 = v36;
                    if (!v43)
                    {
                      goto LABEL_74;
                    }
                  }

                  heap_Free(*(v39 + 8), v43);
                  *(v35 + 8) = 0;
                  *(v35 + 16) = 0;
LABEL_74:
                  if (v34 != v9)
                  {
                    v47 = *(v71 + (v34 << 6) + 48);
                    if (v47)
                    {
                      heap_Free(*(*(a1 + 16) + 8), v47);
                      *(v71 + (v34 << 6) + 48) = 0;
                    }
                  }

                  v33 = v34 + 1;
                }

                while ((v34 + 1) <= v14);
              }

              v48 = v63;
              if (v14 > v8)
              {
                break;
              }

LABEL_99:
              if (!v64)
              {
                v6 = v70;
                v7 = v62;
LABEL_107:
                result = 0;
                LOWORD(v8) = v8 + 1;
                goto LABEL_108;
              }

              v56 = (v71 + (v61 << 6));
              v57 = v56[2];
              v58 = v56[3];
              v59 = v56[1];
              v66 = *v56;
              v67 = v59;
              v68 = v57;
              v69 = v58;
              DWORD1(v67) = 41;
              result = bed_Goto(v60, v61 + 1);
              v7 = v62;
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_marker_InjectFixedRefMarker(v60, &v66);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_GetpElem(v60, 0, &v71);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_GetcElem(v60, &v70);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v6 = v70;
LABEL_105:
              result = 0;
LABEL_108:
              if (v8 >= v6)
              {
                return result;
              }
            }

            v49 = v63 << 6;
            while (1)
            {
              v50 = v71 + v49;
              if (!v64)
              {
                break;
              }

              v51 = *(v50 + 20);
              if (v51 != 7)
              {
                goto LABEL_90;
              }

              if (v48 >= 2 && *(v71 + v49 - 44) == 998 && *(v71 + v49 - 32) == *(v71 + v49 + 32) || v48 + 1 < v70 && (v52 = v71 + ((v48 + 1) << 6), *(v52 + 20) == 998) && *(v52 + 32) == *(v71 + v49 + 32))
              {
                v53 = v71 + v49;
                v54 = 41;
LABEL_97:
                *(v53 + 20) = v54;
                goto LABEL_98;
              }

LABEL_92:
              v55 = *(v71 + v49);
              if (!v55)
              {
                v53 = v71 + v49;
                v54 = 999;
                goto LABEL_97;
              }

              if (v55 == 1)
              {
LABEL_94:
                result = bed_Remove(v60, v48, 1u);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                --v70;
              }

LABEL_98:
              --v48;
              v49 -= 64;
              if (v8 >= v48)
              {
                goto LABEL_99;
              }
            }

            v51 = *(v50 + 20);
LABEL_90:
            if (v51 == 0x4000)
            {
              goto LABEL_94;
            }

            if (v51 != 7)
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
  v52[1] = *MEMORY[0x1E69E9840];
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v45 = 0;
  v44 = 0;
  v46 = MarkerUndef;
  v47 = unk_1C37BEE80;
  memset(v48, 0, sizeof(v48));
  result = bed_GetcElem(a2, &v44);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (!v44)
  {
    goto LABEL_23;
  }

  result = datac_RequestBlock(a3, 1012, 1u, &v49);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  result = bed_GetcElem(a1, &v51);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  result = bed_GetpElem(a1, 0, &v50);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  result = bed_GetpElem(a2, 0, &v45);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (v51 < 2u)
  {
    goto LABEL_22;
  }

  v7 = 1;
  v8 = v50;
  v9 = 26;
  v10 = 1;
  while (v8[v9 - 5] == 21)
  {
    v10 = v49;
    if (v49)
    {
      MarkerArgStr = marker_getMarkerArgStr(1u);
      v8 = v50;
      if (!strcmp(MarkerArgStr, (*(v49 + 8) + v50[v9])))
      {
        goto LABEL_14;
      }

      v10 = 0;
    }

LABEL_21:
    ++v7;
    v9 += 16;
    if (v7 >= v51)
    {
      goto LABEL_22;
    }
  }

  if (v10 != 1)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v8[v9 - 5] != 7)
  {
    goto LABEL_20;
  }

  if ((v8[v9] - 3) > 5)
  {
    goto LABEL_20;
  }

  v12 = &v8[v9];
  if ((v8[v9 - 1] - 1) > 3)
  {
    goto LABEL_20;
  }

  v52[0] = 0;
  v13 = v8[8];
  v15 = *(v12 - 2);
  v14 = *(v12 - 1);
  __strncpy_chk();
  *(v52 + v50[v9 - 1]) = 0;
  v16 = Utf8_Utf8NbrOfSymbols(v52);
  v8 = v50;
  v10 = 1;
  if (v50[v9 - 5] != 7 || (v16 - 1) != 1)
  {
    goto LABEL_21;
  }

  if ((v50[v9] - 3) > 5)
  {
LABEL_20:
    v10 = 1;
    goto LABEL_21;
  }

  v18 = &v50[v9];
  if (v7 < 2)
  {
    v21 = 0xFFFF;
  }

  else
  {
    v19 = v7 - 1;
    v20 = v50 + 26;
    v21 = 0xFFFF;
    do
    {
      if (*(v20 - 5) == 7 && *v20 == 1)
      {
        v21 = *(v20 - 2);
      }

      v20 += 16;
      --v19;
    }

    while (v19);
  }

  v23 = *(v18 - 4);
  v22 = *(v18 - 3);
  v24 = *(v18 - 2);
  v25 = *(v18 - 1);
  if (v51 >= 2uLL)
  {
    v26 = 0;
    v27 = v50 + 25;
    v28 = v51 - 1;
    do
    {
      if (v26)
      {
        break;
      }

      v29 = *(v27 - 1);
      if (v29 > v24)
      {
        break;
      }

      if (*(v27 - 4) == 40)
      {
        if (v21 == 0xFFFF && v24 == *v27 + v29 || (v26 = 0, v21 == v50[8]) && v29 >= v21)
        {
          v26 = 1;
        }
      }

      else
      {
        v26 = 0;
      }

      v27 += 16;
      --v28;
    }

    while (v28);
    if (v26 == 1)
    {
      goto LABEL_22;
    }
  }

  v30 = v7 + 1;
  v31 = 0xFFFF;
  v32 = 0xFFFF;
  if (v51 > (v7 + 1))
  {
    v31 = v25 + v24;
    while (1)
    {
      v33 = &v50[16 * v30];
      if (v33[8] != v31)
      {
LABEL_51:
        v31 = 0xFFFF;
        v32 = 0xFFFF;
        goto LABEL_52;
      }

      if (v33[5] == 7 && v33[10] == 1)
      {
        break;
      }

      if (v51 <= ++v30)
      {
        goto LABEL_51;
      }
    }

    v32 = v33[9];
  }

LABEL_52:
  v34 = v50[8];
  if (v21 != 0xFFFF || (v35 = v24, v24 != v34))
  {
    v35 = v21;
    if (v21 != v34)
    {
      goto LABEL_22;
    }
  }

  v36 = v31 == 0xFFFF ? v25 + v24 : v32 + v31;
  if (v36 != v50[9] + v35)
  {
    goto LABEL_22;
  }

  v41 = v22;
  v42 = v24;
  v43 = v25;
  v50[v9] = 14;
  DWORD1(v47) = 21;
  v37 = v49;
  v38 = marker_getMarkerArgStr(3u);
  result = addOrGetTNArgStr(v37, v38, v48 + 2, a3);
  if ((result & 0x80000000) == 0)
  {
    *(&v47 + 1) = v23;
    *&v48[0] = v50[v9 - 2];
    result = bed_Goto(a1, v7);
    if ((result & 0x80000000) == 0)
    {
      result = bed_marker_InjectFixedRefMarker(a1, &v46);
      if ((result & 0x80000000) == 0)
      {
        DWORD1(v47) = 21;
        v39 = v49;
        v40 = marker_getMarkerArgStr(1u);
        result = addOrGetTNArgStr(v39, v40, v48 + 2, a3);
        if ((result & 0x80000000) == 0)
        {
          *(&v47 + 1) = v41 + v23;
          *&v48[0] = v43 + v42;
          result = bed_marker_InjectFixedRefMarker(a1, &v46);
          if ((result & 0x80000000) == 0)
          {
LABEL_22:
            result = 0;
          }
        }
      }
    }
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t utoin_SplitRegionOnWordSeparatingMarkers(uint64_t a1, int a2)
{
  v25 = 0;
  v24 = 0;
  v20 = MarkerSetTypeOfInput;
  v21 = unk_1C37BECC8;
  v22 = xmmword_1C37BECD8;
  v23 = unk_1C37BECE8;
  result = bed_GetcElem(a1, &v25);
  if ((result & 0x80000000) == 0)
  {
    result = bed_GetpElem(a1, 0, &v24);
    if ((result & 0x80000000) == 0)
    {
      v5 = v25;
      if (v25 >= 2u)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = v24;
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
            if (!v14 || a2 == 1 && (v12 <= 0x18 ? (v19 = ((1 << v12) & 0x1050000) == 0) : (v19 = 1), !v19 || v12 == 99))
            {
              if (v7 < *(v11 + 24) + v6)
              {
                v15 = (v9 + (v8 << 6));
                DWORD2(v22) = v15[10];
                *(&v21 + 1) = (*(v11 + 24) + v6);
                LODWORD(v22) = *(v11 + 32);
                v16 = v15[8];
                DWORD1(v22) = v15[9];
                v17 = v22 - v16;
                v15[9] = v22 - v16;
                DWORD1(v22) -= v17;
                if (DWORD1(v22))
                {
                  v18 = i + 1;
                  result = bed_Goto(a1, (i + 1));
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = bed_marker_InjectFixedRefMarker(a1, &v20);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v9 = v24;
                  v7 = *(v24 + (v18 << 6) + 24) + v6;
                  v5 = ++v25;
                  i = v18;
                  v8 = v18;
                }
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
  v62[1] = *MEMORY[0x1E69E9840];
  v61 = 0;
  v62[0] = 7;
  v58 = 0;
  v59 = 0;
  v4 = 2370838535;
  if (!a2 || !a3)
  {
    goto LABEL_85;
  }

  v60 = 0;
  v57 = 0;
  v9 = *(a1 + 16);
  v10 = bed_GetcElem(a2, &v60);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

  v11 = datac_RequestBlock(a4, 1029, (v60 + 1), &v59);
  if ((v11 & 0x80000000) != 0)
  {
    if ((v11 & 0x1FFF) == 0x14)
    {
      v4 = 0;
    }

    else
    {
      v4 = v11;
    }

    goto LABEL_85;
  }

  v10 = bed_ObjOpen(*a1, *(a1 + 8), a4, 1029, &v61, 213);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

  v10 = bed_Goto(a2, 0);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

  v10 = bed_Goto(a3, 0);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

  v12 = bed_GoForward(a3, bed_marker_IsOfType, v62);
  v4 = v12;
  if ((v12 & 0x80000000) != 0 && (v12 & 0x1FFF) != 0x14)
  {
LABEL_80:
    if (v61)
    {
      bed_ObjClose(v61);
    }

    goto LABEL_85;
  }

  if ((v12 & 0x80000000) == 0)
  {
    v13 = 0;
    while (2)
    {
      v56 = 0;
      v51 = 0;
      v10 = bed_GetpElem(a3, 0xFFFFu, &v56);
      if ((v10 & 0x80000000) != 0)
      {
LABEL_79:
        v4 = v10;
        goto LABEL_80;
      }

      v50 = v13;
      v14 = v56[1];
      v52 = *v56;
      v53 = v14;
      v15 = v56[3];
      v54 = v56[2];
      v55 = v15;
      v16 = *(v56 + 10);
      v17 = utoin_NormalizeOrthNativeWord;
      if (v16 <= 7)
      {
        if (v16 <= 4)
        {
          if ((v16 - 3) < 2)
          {
            goto LABEL_27;
          }

          if (v16 == 1)
          {
            v19 = utoin_MarkWordBoundary;
            goto LABEL_28;
          }

          if (v16 != 2)
          {
LABEL_42:
            v19 = utoin_RemoveRegion;
            goto LABEL_28;
          }

LABEL_29:
          v20 = *(v9 + 32);
          UTOIMarkerString = getUTOIMarkerString(v16);
          v48 = *(v56 + 8);
          v49 = *(v56 + 9);
          log_OutText(v20, &modPP_3, 5, 0, "[UTOI] (normalize region %s %u,%u)", v22, v23, v24, UTOIMarkerString);
          v10 = v17(a1, a2, a3, v61, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = bed_Goto(a3, 0);
            if ((v10 & 0x80000000) == 0)
            {
              v25 = DWORD2(v53);
              v26 = HIDWORD(v53);
              v27 = v54;
              while (1)
              {
                v28 = bed_GoForward(a3, bed_marker_IsOfType, v62);
                if ((v28 & 0x80000000) != 0)
                {
                  v4 = v28;
                  if ((v28 & 0x1FFF) != 0x14)
                  {
                    goto LABEL_80;
                  }
                }

                v10 = bed_GetpElem(a3, 0xFFFFu, &v56);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_79;
                }

                if (v25 == *(v56 + 6) && v26 == *(v56 + 7) && v27 == *(v56 + 8) && *(&v54 + 1) == *(v56 + 5))
                {
                  break;
                }

                v51 = 1;
                bed_GoForward(a3, bed_marker_IsAt, &v51);
              }

              v32 = *(v56 + 10);
              v13 = v50;
              if ((v32 - 5) < 4)
              {
LABEL_52:
                v32 = 16;
                if (v50 && v50 != 43)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }

              if (v32 == 2)
              {
                v32 = 16;
              }

              else if (v32 == 1)
              {
                goto LABEL_52;
              }

LABEL_59:
              v13 = v32;
LABEL_60:
              v51 = 1;
              bed_GoForward(a3, bed_marker_IsAt, &v51);
              v33 = bed_GoForward(a3, bed_marker_IsOfType, v62);
              v4 = v33;
              if ((v33 & 0x80000000) != 0 && (v33 & 0x1FFF) != 0x14)
              {
                goto LABEL_80;
              }

              if ((v33 & 0x80000000) == 0)
              {
                continue;
              }

              goto LABEL_63;
            }
          }

          goto LABEL_79;
        }

        if (v16 == 5)
        {
          v19 = utoin_RemoveRegion;
          if (*(v56 + 9) > 0x60u)
          {
            goto LABEL_28;
          }

          v29 = (v50 & 0xFFFFFFEF) == 0;
          v30 = utoin_NormalizeOrthNativeText;
          v31 = utoin_NormalizeOrthNativeWord;
LABEL_48:
          if (v29)
          {
            v17 = v31;
          }

          else
          {
            v17 = v30;
          }

          goto LABEL_29;
        }

        if (v16 != 6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = (v16 - 14);
        if (v18 <= 0x3A)
        {
          if (((1 << (v16 - 14)) & 0x700400020000004) != 0)
          {
            goto LABEL_27;
          }

          if (((1 << (v16 - 14)) & 0x40000001) != 0)
          {
            v19 = utoin_SpellRegion;
LABEL_28:
            v17 = v19;
            goto LABEL_29;
          }

          if (v18 == 1)
          {
LABEL_27:
            v19 = utoin_TranscodeText;
            goto LABEL_28;
          }
        }

        if (v16 != 8)
        {
          if (v16 == 99)
          {
            goto LABEL_29;
          }

          goto LABEL_42;
        }
      }

      break;
    }

    v19 = utoin_RemoveRegion;
    if (*(v56 + 9) > 0x20u)
    {
      goto LABEL_28;
    }

    v29 = (v50 & 0xFFFFFFEF) == 0;
    v30 = utoin_TranscodeText;
    v31 = utoin_TranscodeWord;
    goto LABEL_48;
  }

LABEL_63:
  v34 = bed_GetpElem(a3, 0, &v58);
  if ((v34 & 0x80000000) != 0)
  {
    v4 = v34;
    goto LABEL_85;
  }

  v4 = bed_GetcElem(a3, &v57);
  if ((v4 & 0x80000000) == 0)
  {
    v35 = v57;
    if (v57 >= 2u)
    {
      v36 = 0;
      v37 = 1;
      while (1)
      {
        if (*(v58 + v36 + 84) == 7 && !*(v58 + v36 + 100))
        {
          v38 = *(v58 + v36 + 104);
          v39 = v38 > 7;
          v40 = (1 << v38) & 0xA4;
          if (!v39 && v40 != 0)
          {
            v42 = *(v58 + v36 + 72);
            if (v42)
            {
              heap_Free(*(v9 + 8), v42);
              *(v58 + v36 + 72) = 0;
              *(v58 + v36 + 80) = 0;
            }

            v4 = bed_Remove(a3, v37, 1u);
            if ((v4 & 0x80000000) != 0)
            {
              goto LABEL_85;
            }

            log_OutText(*(v9 + 32), &modPP_3, 5, 0, "[UTOI] (deleted zero length entry, marker %d)", v43, v44, v45, v37);
            v35 = --v57;
          }
        }

        ++v37;
        v36 += 64;
        if (v37 >= v35)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_80;
  }

LABEL_85:
  v46 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t utoin_InsertRegions(_WORD **a1, uint64_t a2)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v2 = 2370838535;
  v48 = 0;
  v49 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_91;
  }

  v5 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v49, 213);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v48, 213);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  UTOITrace(*(a1 + 18), a1[2], v49, v48, "BEFORE utoin_RemoveEmptyPhonemes");
  v6 = a1[2];
  v7 = v48;
  *__s = 0;
  if (!v48)
  {
    goto LABEL_87;
  }

  __src[0] = 0;
  v5 = bed_GetpElem(v48, 0, __s);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_GetcElem(v7, __src);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v11 = __src[0];
  if (__src[0] >= 2u)
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
            v11 = __src[0];
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

  UTOITrace(*(a1 + 18), a1[2], v49, v48, "BEFORE utoin_InsertRegionTags");
  v24 = v48;
  v23 = v49;
  v57[0] = 7;
  v54 = 0;
  v52 = 0;
  if (!v49 || !v48)
  {
    goto LABEL_87;
  }

  v5 = bed_Goto(v49, 0);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_Goto(v24, 0);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v53 = 0;
  v5 = bed_GetpElem(v24, 0, &v54);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_GetcElem(v24, &v53 + 1);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v25 = bed_GoForward(v24, bed_marker_IsOfType, v57);
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
    v51 = 0;
    v50 = 0;
    v5 = bed_GetpElem(v24, 0xFFFFu, &v51);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v5 = bed_GetiElem(v24, &v50);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v5 = bed_GetpElem(v24, 0, &v52);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v29 = *(v51 + 40);
    v30 = v29 != 43 || v27 == 0;
    if (!v30 && *(v52 + (v27 << 6) + 40) == 43)
    {
      v26 = 15;
    }

    v5 = utoin_PutClosingAndOpeningTag(v26, v29, __s);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v31 = *(v51 + 40);
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
    v32 = strlen(__s);
    if (v32)
    {
      v33 = *(v54 + 32);
      v34 = *(v51 + 32) - v33;
      LOWORD(v53) = *(v51 + 32) - v33;
      v5 = bed_Goto(v23, v34);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      __strcpy_chk();
      v5 = bed_Insert(v23, __src, v32);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      v5 = bed_GetiElem(v24, &v53);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      v35 = v51;
      v36 = *(v51 + 32);
      v37 = v53;
      v38 = HIWORD(v53);
      if (v53 < HIWORD(v53))
      {
        v39 = v51;
        do
        {
          *(v39 + 32) += v32;
          v39 += 64;
          ++v37;
        }

        while (v37 < v38);
        v51 = v39;
      }

      if (v36 > *(v54 + 32) && *(v35 - 32) == v36)
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

    v27 = v50;
    LOWORD(v53) = 1;
    bed_GoForward(v24, bed_marker_IsAt, &v53);
    v42 = bed_GoForward(v24, bed_marker_IsOfType, v57);
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

  v44 = strlen(__s);
  if (!v44 || (v45 = v44, v5 = bed_GetcElem(v23, &v53), (v5 & 0x80000000) == 0) && (v5 = bed_Goto(v23, v53), (v5 & 0x80000000) == 0) && (__strcpy_chk(), v5 = bed_Insert(v23, __src, v45), (v5 & 0x80000000) == 0))
  {
    UTOITrace(*(a1 + 18), a1[2], v49, v48, "AFTER utoin_InsertRegionTags");
    v2 = 0;
    goto LABEL_87;
  }

LABEL_86:
  v2 = v5;
LABEL_87:
  if (v48)
  {
    bed_ObjClose(v48);
  }

  if (v49)
  {
    bed_ObjClose(v49);
  }

LABEL_91:
  v46 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t utoin_RemoveBlankRegions(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v37[0] = 1;
  result = bed_GetpElem(a2, 0, &v35);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

  result = bed_GetcElem(a2, &v36 + 1);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

  result = bed_FindForward(a2, bed_marker_IsToiOfType, v37, &v36);
  v9 = v36;
  if (v36 < a3)
  {
    result = bed_GetpElem(a2, v36, &v34);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_40;
    }

    v10 = 0;
    v9 = v36;
    v11 = (v34 + 64);
    do
    {
      if (v10 || v11 >= v34 + (HIWORD(v36) << 6) - (v36 << 6))
      {
        break;
      }

      v12 = v11[8];
      v13 = *(v34 + 36) + *(v34 + 32);
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
      result = bed_FindForward(a2, bed_marker_IsToiOfType, v37, &v36);
      goto LABEL_37;
    }
  }

  if ((result & 0x80000000) != 0 || v9 >= a3)
  {
LABEL_37:
    if ((result & 0x80000000) == 0 || (result & 0x1FFF) == 0x14)
    {
      v32 = bed_Goto(a2, a3);
      result = v32 & (v32 >> 31);
    }

    goto LABEL_40;
  }

  while (1)
  {
    result = bed_GetpElem(a2, v9, &v34);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v15 = *(v35 + 32);
    v16 = (*(v34 + 32) - v15);
    result = bed_Remove(a4, (*(v34 + 32) - v15), *(v34 + 36));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v17 = v34;
    v18 = HIWORD(v36);
    v19 = v36;
    if ((HIWORD(v36) - v36) >= 2)
    {
      v20 = v34 + 64;
      v21 = *(v34 + 36);
      do
      {
        v22 = *(v20 + 32);
        v23 = *(v17 + 32);
        v24 = v21 + v23;
        if (v22 == v21 + v23 && *(v20 + 20) == 7 && *(v20 + 40) != 43)
        {
          v25 = *(v20 + 28) + *(v17 + 28);
          *(v20 + 24) = *(v17 + 24);
          *(v20 + 28) = v25;
          v26 = v35;
          v27 = *(v20 + 16);
          result = growOffsets(a1, v20, 1u);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v28 = *(v17 + 28);
          v29 = (*(v20 + 8) + 8 * v27);
          *v29 = *(v17 + 24) - *(v26 + 24);
          v29[1] = v28;
          v22 = *(v20 + 32);
          v17 = v34;
          v23 = *(v34 + 32);
          v21 = *(v34 + 36);
          v18 = HIWORD(v36);
          v19 = v36;
          v24 = v21 + v23;
        }

        if (v22 >= v24)
        {
          v30 = v22 - v21;
        }

        else
        {
          v30 = v23;
        }

        *(v20 + 32) = v30;
        v20 += 64;
      }

      while (v20 < v17 + (v18 << 6) - (v19 << 6));
    }

    v31 = *(v17 + 8);
    if (v31)
    {
      heap_Free(*(a1 + 8), v31);
      *(v34 + 8) = 0;
      v19 = v36;
    }

    result = bed_Remove(a2, v19, 1u);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    --HIWORD(v36);
    LOWORD(a3) = a3 - 1;
    result = bed_FindForward(a2, bed_marker_IsToiOfType, v37, &v36);
    if ((result & 0x80000000) == 0)
    {
      LOWORD(v9) = v36;
      if (v36 < a3)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

LABEL_40:
  v33 = *MEMORY[0x1E69E9840];
  return result;
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
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v48 = MarkerSetTypeOfInput2;
  v49 = unk_1C37BEE28;
  result = 2370838535;
  v50 = xmmword_1C37BEE38;
  v51 = unk_1C37BEE48;
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

  v55 = 0;
  result = bed_GetpElem(a3, 0, &v56);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetcElem(a3, &v55);
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

  result = bed_GetiElem(a3, &v54 + 1);
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
      memmove(v10 + 1, v10, 2 * v12);
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

      if ((utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v59, v56, v55, v58, v47, v57, v27, v34, &v54, &v53, &v52) & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      LOWORD(v27) = v54 + v34;
      v28 += v54;
      ++v29;
      if (v53 == 1 && v29 < v44)
      {
        v35 = (v27 - v52);
        if ((bed_Goto(a2, v35) & 0x80000000) != 0 || (bed_Insert(a2, " ", 1) & 0x80000000) != 0 || (bed_GetpElem(a3, 0, &v56) & 0x80000000) != 0 || (bed_GetcElem(a3, &v55) & 0x80000000) != 0)
        {
          goto LABEL_60;
        }

        v36 = v56;
        if (v55 >= 2uLL)
        {
          v37 = v56[8] + v35;
          v38 = v56 + 24;
          v39 = v55 - 1;
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
        if ((bed_marker_InjectFixedRefMarker(a3, &v48) & 0x80000000) != 0 || (bed_GetpElem(a3, 0, &v56) & 0x80000000) != 0 || (bed_GetcElem(a3, &v55) & 0x80000000) != 0)
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

    utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v32, v56, v55, v58, v47, v57, v27, v28, &v54, &v53, &v52);
  }

  else
  {
    utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v59, v56, v55, v58, v47, v57, v27, v28, &v54, &v53, &v52);
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
                if (v16 && (memmove(v16, (v30 + (v12 - v13)), v14), (__src = heap_Calloc(*(*(a1 + 16) + 8), 1, *(a1 + 132) + *(a1 + 132) * *(a1 + 128) + 1)) != 0))
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

uint64_t utoin_LookUpSubWordsInNativeRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, const char *a8, int a9, uint64_t a10, unsigned __int16 a11, unsigned __int16 a12, _WORD *a13, _DWORD *a14, _WORD *a15)
{
  v90 = a6;
  v89 = a7;
  v88 = a8;
  v87 = 0;
  if (!a6)
  {
    return 2370838535;
  }

  v20 = a15;
  __n = 0;
  __src = 0;
  v86 = 0;
  *a14 = 0;
  *a13 = 0;
  *a15 = 0;
  if (a9 != 3)
  {
    goto LABEL_10;
  }

  v22 = *(a10 + 32);
  if (!utoin_multiwordInLatinRegion(a6, a7, &v87 + 1, &v87, *(a10 + 32), *(a10 + 36) + v22))
  {
    if (*(a1 + 72) == 1)
    {
      log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no multiword found for latin region %d and %d)", v23, v24, v25, v22);
    }

LABEL_10:
    v27 = 0;
    v28 = 0;
    v81 = 0;
    goto LABEL_11;
  }

  v26 = *(a5 + 32);
  v27 = (*(a6 + (HIWORD(v87) << 6) + 32) - v26);
  v28 = *(a6 + (v87 << 6) + 32) - v26;
  if (*(a1 + 72) == 1)
  {
    log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (multiword found for latin region %d and %d)", v23, v24, v25, *(a6 + (HIWORD(v87) << 6) + 32));
  }

  v81 = 1;
LABEL_11:
  __dst = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 130) + 1, 1);
  v34 = *(a1 + 16);
  if (__dst)
  {
    __src = heap_Calloc(*(v34 + 8), 1, *(a1 + 132) + *(a1 + 132) * *(a1 + 128) + 1);
    if (!__src)
    {
LABEL_15:
      v34 = *(a1 + 16);
      goto LABEL_16;
    }

    if (*(a1 + 72) == 1)
    {
      v35 = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 130) + 1, 1);
      if (!v35)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v35 = 0;
    }

    v79 = a2;
    v36 = a12;
    if (a11 >= a12)
    {
      goto LABEL_17;
    }

    v76 = v28;
    v74 = a5;
    v37 = a11;
    v77 = a3;
    v78 = a4;
    while (1)
    {
      if (a9 == 3)
      {
        v38 = v27;
        v39 = strlen(v88);
        v40 = v37;
        if (v37 >= v36)
        {
          v42 = 1;
        }

        else
        {
          do
          {
            v41 = utf8_BelongsToSet(2u, v88, v40, v39);
            v42 = v41 == 1;
            if (v41 != 1)
            {
              break;
            }

            v37 += utf8_determineUTF8CharLength(v88[v37]);
            v40 = v37;
          }

          while (v37 < v36);
        }

        if ((a11 == v37 || (a11 >= v37 ? (v45 = 1) : (v45 = v42), (v45 & 1) == 0 && utf8_BelongsToSet(2u, v88, v40 - 1, v39) == 1)) && (v44 = v37 + utf8_determineUTF8CharLength(v88[v37]), v44 < v36))
        {
          v27 = v38;
          a4 = v78;
          while (1)
          {
            v43 = v44;
            if (utf8_BelongsToSet(2u, v88, v44, v39))
            {
              break;
            }

            v44 = v43 + utf8_determineUTF8CharLength(v88[v43]);
            if (v44 >= v36)
            {
              goto LABEL_49;
            }
          }

          if (!v43)
          {
LABEL_49:
            v43 = v36;
            goto LABEL_50;
          }

          if (utf8_BelongsToSet(2u, v88, v43, v39) != 1)
          {
            v43 = v36;
          }

LABEL_50:
          v20 = a15;
        }

        else
        {
          v43 = v36;
          v20 = a15;
          v27 = v38;
          a4 = v78;
        }
      }

      else
      {
        v43 = v36;
      }

      if (v81 == 1 && ((v46 = v43, v43 > v27) || v37 >= v27))
      {
        if (v43 >= v27)
        {
          v46 = v27;
        }

        if (v27 <= v37)
        {
          v43 = v76;
        }

        else
        {
          v43 = v46;
        }

        if (v27 > v37)
        {
          v47 = 0;
        }

        else
        {
          v37 = v27;
          v47 = 1;
        }
      }

      else
      {
        v47 = 0;
      }

      v48 = v43 - v37;
      if (v48 < 1)
      {
        goto LABEL_17;
      }

      if (v48 > *v20)
      {
        *v20 = v43 - v37;
      }

      if (!v88)
      {
        goto LABEL_17;
      }

      v80 = v47;
      if (*(a1 + 130) >= (v43 - v37))
      {
        v49 = (v43 - v37);
      }

      else
      {
        v49 = *(a1 + 130);
      }

      LOWORD(__n) = v49;
      memmove(__dst, &v88[v37], v49);
      v50 = __n;
      if (*(a1 + 72) == 1)
      {
        strncpy(v35, __dst, __n);
        v35[__n] = 0;
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (lookup User Dict for %s)", v51, v52, v53, v35);
      }

      if ((utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &__dst, a9 == 3, *(a1 + 130), *(a1 + 128), v82) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      if (a9 == 3)
      {
        v57 = HIDWORD(__n);
      }

      else
      {
        while (1)
        {
          v57 = HIDWORD(__n);
          v58 = __n < 2u || __n > v50;
          if (v58 || HIDWORD(__n) != 0)
          {
            break;
          }

          LOWORD(__n) = utf8_GetPreviousUtf8Offset(__dst, __n);
          if ((utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &__dst, a9 == 3, *(a1 + 130), *(a1 + 128), v82) & 0x80000000) != 0)
          {
            goto LABEL_17;
          }
        }
      }

      if (v57 > 15)
      {
        if (v57 == 16)
        {
          if (!LH_stricmp(*(a1 + 24), "jpj") && HIDWORD(__n) != 2)
          {
LABEL_96:
            if (a9 == 3 && *(a1 + 72) == 1)
            {
              log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no (valid) User Dict entry found)", v54, v55, v56, v73);
            }

            if (a9 == 3)
            {
              v37 = v43;
            }

            v37 += utf8_determineUTF8CharLength(v88[v37]);
            v20 = a15;
            goto LABEL_112;
          }
        }

        else if (v57 != 43)
        {
          goto LABEL_96;
        }
      }

      else if (v57 == 2)
      {
        if (*__src <= 0x7Eu)
        {
          HIDWORD(__n) = 3;
        }
      }

      else if (v57 != 3)
      {
        goto LABEL_96;
      }

      v75 = v27;
      *a15 = 0;
      *a14 = 1;
      if (*(a1 + 72) == 1)
      {
        strncpy(v35, __src, v86);
        v35[v86] = 0;
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (found User Dict entry %s)", v60, v61, v62, v35);
      }

      if (LH_stricmp(*(a1 + 24), v82))
      {
        v63 = v82;
      }

      else
      {
        v63 = 0;
      }

      if ((utoin_ReplaceWord(v79, v77, v37, &__dst, 1, a4, v63) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      if ((bed_GetpElem(v79, 0, &v88) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      v64 = a4;
      v65 = v86;
      v66 = __n;
      *a13 = v86 + *a13 - __n;
      if ((bed_GetpElem(v77, 0, &v90) & 0x80000000) != 0 || (bed_GetcElem(v77, &v89) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      v37 += v65;
      v36 = v65 + v36 - v66;
      a4 = v64;
      v20 = a15;
      v27 = v75;
LABEL_112:
      if (v80)
      {
        v67 = v90;
        v68 = *(v74 + 32);
        if (utoin_multiwordInLatinRegion(v90, v89, &v87 + 1, &v87, v68 + v37, *(a10 + 32) + v36))
        {
          v72 = *(v67 + (HIWORD(v87) << 6) + 32);
          v27 = (v72 - v68);
          v76 = *(v67 + (v87 << 6) + 32) - v68;
          if (*(a1 + 72) == 1)
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (multiword found for latin region %d and %d)", v69, v70, v71, v72);
          }

          v81 = 1;
        }

        else
        {
          if (*(a1 + 72) == 1)
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no further multiwords found in latin region %d and %d)", v69, v70, v71, v68 + v37);
          }

          v27 = 0;
          v76 = 0;
          v81 = 0;
        }

        a4 = v78;
        v20 = a15;
      }

      if (v37 >= v36)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_16:
  log_OutPublic(*(v34 + 32), &modPP_3, 1923, 0, v30, v31, v32, v33, v73);
  v35 = 0;
LABEL_17:
  if (__dst)
  {
    heap_Free(*(*(a1 + 16) + 8), __dst);
    __dst = 0;
  }

  if (__src)
  {
    heap_Free(*(*(a1 + 16) + 8), __src);
    __src = 0;
  }

  if (v35)
  {
    heap_Free(*(*(a1 + 16) + 8), v35);
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
  v33 = 0;
  v34 = 0;
  v30 = 0;
  __src = 0;
  *v25 = 0;
  v26 = MarkerSetLang;
  v27 = unk_1C37BED08;
  memset(v28, 0, sizeof(v28));
  if (!a3)
  {
    return 2370838535;
  }

  v32 = 0;
  v29 = 0;
  result = bed_GetpElem(a2, 0, &v34);
  if ((result & 0x80000000) == 0)
  {
    result = bed_GetpElem(a2, 0xFFFFu, &v33);
    if ((result & 0x80000000) == 0)
    {
      v11 = *(v33 + 32);
      v12 = *(v34 + 32);
      v13 = *(v33 + 36);
      if (a4 && a5)
      {
        result = datac_RequestBlock(a4, 1012, 1u, v25);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        DWORD1(v27) = 36;
        result = addOrGetTNArgStr(*v25, a5, v28 + 2, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        *(&v27 + 1) = *(v33 + 24);
        *&v28[0] = *(v33 + 32);
        result = bed_Goto(a2, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_marker_InjectFixedRefMarker(a2, &v26);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v33 += 64;
      }

      result = bed_GetcElem(a3, &v32 + 1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v14 = v11 - v12;
      if (HIWORD(v32))
      {
        if (v13 >= HIWORD(v32))
        {
          v15 = HIWORD(v32);
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

        result = bed_GetpElem(a1, 0, &v30);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v16 = 0;
        if (v15)
        {
          while (1)
          {
            v17 = (v30 + v14 + v16);
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

        result = bed_Insert(a1, __src, HIWORD(v32));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_Remove(a3, 0, HIWORD(v32));
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

      v19 = HIWORD(v32);
      *(v33 + 36) = HIWORD(v32);
      result = bed_GetiElem(a2, &v29);
      if ((result & 0x80000000) == 0)
      {
        result = bed_GetcElem(a2, &v32);
        if ((result & 0x80000000) == 0)
        {
          v20 = v32;
          v21 = v29 + 1;
          if (v32 <= (v29 + 1))
          {
            return 0;
          }

          else
          {
            v22 = v34;
            v23 = HIWORD(v32);
            v24 = (v33 + 96);
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
          result = bed_Insert(a4, &szWORD_END_0, 1);
          if ((result & 0x80000000) == 0)
          {
            result = bed_Insert(a4, &szWORD_BEG, 1);
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
          bzero(v15, (v14 + 1));
          memmove(v16, (v23 + (v19 - v13)), v14);
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
  v103 = 0;
  v104[0] = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v96 = MarkerUndef;
  v97 = unk_1C37BEE80;
  v6 = 2370838535;
  v98 = xmmword_1C37BEE90;
  v99 = unk_1C37BEEA0;
  if (a1 && a2 && a3 && a4)
  {
    v91 = 0;
    v13 = *(a1 + 16);
    if (!*(a1 + 164))
    {
      v14 = datac_RequestBlock(a6, 1012, 1u, &v95);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }
    }

    v14 = bed_GetpElem(a3, 0, v104);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v15 = *(v104[0] + 32);
    v89 = *(v104[0] + 24);
    v14 = bed_GetpElem(a2, 0, &v103);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v14 = bed_GetpElem(a3, 0xFFFFu, &v100);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v87 = v15;
    v86 = a3;
    v17 = *(v100 + 32);
    v16 = *(v100 + 36);
    v88 = v13;
    v18 = heap_Alloc(*(v13 + 8), (v16 + 1));
    if (!v18)
    {
      return 2370838538;
    }

    v19 = v18;
    __len = v16;
    bzero(v18, (v16 + 1));
    v20 = v16;
    memmove(v19, (v103 + (v17 - v87)), v16);
    v21 = v95;
    if (*(a1 + 164))
    {
      v84 = 0;
    }

    else
    {
      v84 = *(v95 + 16);
    }

    v22 = v86;
    *(a1 + 148) = 0x100000001;
    v23 = (*(*(a1 + 104) + 64))(*(a1 + 112), *(a1 + 120), v19, v20, v20, a2, v86, a4, a6, v21, 1012, &v94, a5, &v93, a1 + 136);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_102;
    }

    v6 = bed_GetcElem(a2, &v101);
    if ((v6 & 0x80000000) != 0 || !v101)
    {
      goto LABEL_103;
    }

    v23 = bed_GetpElem(a2, 0, &v102);
    if ((v23 & 0x80000000) != 0)
    {
LABEL_102:
      v6 = v23;
      goto LABEL_103;
    }

    v24 = *(v100 + 32);
    v81 = *(v100 + 24);
    v14 = bed_GetpElem(v86, 0, &v92);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v25 = bed_GetcElem(v86, &v91);
    v26 = v25;
    if ((v25 & 0x80000000) != 0)
    {
      return v25;
    }

    else
    {
      v75 = v19;
      v27 = *(v100 + 8);
      v28 = *(v100 + 16);
      if (*(v100 + 16))
      {
        v29 = *(v100 + 16);
        v30 = *(v100 + 8);
        do
        {
          *v30 += v89 - v81;
          v30 += 2;
          --v29;
        }

        while (v29);
      }

      v77 = v28;
      v31 = v94;
      v32 = (a1 + 136);
      if (v94)
      {
        v33 = 0;
        v34 = v24 - v87;
        v35 = (v24 - v87);
        v36 = v94 + v35;
        v37 = v24 - v87;
        do
        {
          if (*(v102 + v37) == 16)
          {
            ++v33;
          }

          ++v37;
        }

        while (v36 > v37);
        v83 = 0;
        v38 = 0;
        v39 = 0;
        v90 = 0;
        v76 = (v27 + 4);
        v82 = 1;
        v40 = (v24 - v87);
        v41 = __len;
        v79 = v40;
        do
        {
          if (*(v102 + v34) != 16)
          {
LABEL_38:
            v44 = v39;
            goto LABEL_96;
          }

          if (v36 <= v34)
          {
LABEL_37:
            if (*(a1 + 164))
            {
              goto LABEL_38;
            }

            v45 = v26;
            v46 = v31;
            v43 = strlen((*(v95 + 8) + (v84 + v90) * *(v95 + 2)));
            v22 = v86;
            v31 = v46;
            v26 = v45;
            v32 = (a1 + 136);
          }

          else
          {
            v42 = v34;
            while (*(v102 + v42) != 17)
            {
              if (v36 <= ++v42)
              {
                if (*(v102 + v42) != 17)
                {
                  goto LABEL_37;
                }

                break;
              }
            }

            v43 = v42 + ~v34;
          }

          if (!v43)
          {
            v44 = v39;
            v35 = v79;
            goto LABEL_96;
          }

          v47 = *(a1 + 144);
          v48 = v39 < v47;
          if (v39 && v47 > v39)
          {
            while (*(*v32 - 8 + 12 * v39) == 1 && *(*v32 + 12 * v39 + 4) == 1)
            {
              v39 = (v39 + 1);
              if (v47 <= v39)
              {
                v48 = 0;
                goto LABEL_49;
              }
            }

            v48 = 1;
          }

LABEL_49:
          v44 = (v39 + 1);
          if (v47 <= (v39 + 1))
          {
            v49 = v39 + 1;
          }

          else
          {
            v49 = *(a1 + 144);
          }

          v50 = v39;
          while (v47 > ++v50)
          {
            if (*(*v32 + 12 * v50 - 8) != 1 || *(*v32 + 12 * v50 + 4) != 1)
            {
              goto LABEL_58;
            }
          }

          v50 = v49;
LABEL_58:
          if (v48)
          {
            v51 = *v32;
            v52 = v41;
            if (v47 != v50)
            {
              v52 = *(v51 + 12 * v50);
            }

            v53 = *(v51 + 12 * v39);
            LOWORD(v51) = v52 - v53;
            v54 = v77;
            goto LABEL_68;
          }

          v54 = v77;
          if (*(a1 + 148) == 1)
          {
            if (v33 != 1)
            {
              v53 = 0;
              v44 = v39;
              LOWORD(v51) = v43 / *(a1 + 160);
              goto LABEL_68;
            }

            v53 = 0;
            LODWORD(v51) = *(v100 + 28);
          }

          else
          {
            v53 = 0;
            LOWORD(v51) = 0;
          }

          v44 = v39;
LABEL_68:
          v55 = v51;
          v56 = 0;
          if (v54)
          {
            v57 = v54;
            v58 = v76;
            do
            {
              v59 = *(v58 - 1);
              if (v59 > v53 + v51 + v38)
              {
                break;
              }

              v60 = v38 + v53;
              if (v59 == v38 + v53)
              {
                v38 += *v58;
                v60 = v38 + v53;
              }

              if (v59 > v60 && v59 <= v60 + v51)
              {
                v56 = *v58;
              }

              v58 += 2;
              --v57;
            }

            while (v57);
          }

          v80 = v56;
          v62 = v81 + v83 + v53 + v38;
          DWORD2(v97) = v62;
          HIDWORD(v97) = v51;
          v78 = v40 + v87;
          LODWORD(v98) = v40 + v87;
          DWORD1(v98) = v43;
          if (*(a1 + 164))
          {
            v63 = 0;
          }

          else
          {
            DWORD1(v97) = 39;
            DWORD2(v98) = v84 + v90;
            v63 = strlen((*(v95 + 8) + DWORD2(v98) * *(v95 + 2)));
            v64 = bed_marker_InjectFixedRefMarker(v22, &v96);
            if ((v64 & 0x80000000) != 0)
            {
              v6 = v64;
LABEL_107:
              v19 = v75;
              goto LABEL_103;
            }
          }

          DWORD1(v97) = 41;
          *(&v98 + 1) = 0;
          v26 = bed_marker_InjectFixedRefMarker(v22, &v96);
          v68 = v82;
          if ((v26 & 0x80000000) != 0)
          {
            goto LABEL_106;
          }

          if (v93)
          {
            if (*v93 >= v82)
            {
              v69 = v93[v82];
            }

            else
            {
              log_OutText(*(v88 + 32), &modPP_3, 5, 0, "[UTOI] (missing POS for normalized word %d", v65, v66, v67, v82);
              v69 = 0;
            }

            DWORD1(v97) = 14;
            DWORD2(v97) = v62;
            if (*(a1 + 148) == 1)
            {
              v70 = v55;
            }

            else
            {
              v70 = 0;
            }

            if (v98 == v87)
            {
              v71 = v87;
            }

            else
            {
              v71 = v78;
            }

            HIDWORD(v97) = v55;
            *&v98 = v71;
            DWORD2(v98) = v69;
            v26 = bed_marker_InjectFixedRefMarker(v22, &v96);
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_106;
            }

            v83 += v70;
            v68 = (v82 + 1);
          }

          v35 = v79;
          v82 = v68;
          v38 += v80;
          v90 += v63 + 1;
          v31 = v94;
          v32 = (a1 + 136);
          v41 = __len;
LABEL_96:
          v40 = ++v34;
          v36 = v35 + v31;
          v39 = v44;
        }

        while (v35 + v31 > v34);
      }

      if (*(a1 + 146) < 0x15u)
      {
LABEL_106:
        v6 = v26;
        goto LABEL_107;
      }

      v72 = v26;
      v73 = heap_Realloc(*(v88 + 8), *v32, 120);
      v6 = 2370838538;
      v19 = v75;
      if (v73)
      {
        *(a1 + 136) = v73;
        *(a1 + 146) = 10;
        v6 = v72;
      }

LABEL_103:
      heap_Free(*(v88 + 8), v19);
      if (v93)
      {
        heap_Free(*(v88 + 8), v93);
      }
    }
  }

  return v6;
}

uint64_t utoin_Transcode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 2370838538;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v79 = 0;
  v80 = MarkerUndef;
  v81 = unk_1C37BEE80;
  v82 = xmmword_1C37BEE90;
  v83 = unk_1C37BEEA0;
  v6 = 2370838535;
  if (a1 && a2 && a3 && a4)
  {
    v78 = 0;
    v12 = *(a1 + 16);
    v13 = bed_GetpElem(a3, 0, &v87);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a2, 0, &v86);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a3, 0, &v79);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetcElem(a3, &v78);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a3, 0xFFFFu, &v85);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    else
    {
      v14 = *(v87 + 32);
      v16 = *(v85 + 32);
      v15 = *(v85 + 36);
      v17 = *(v85 + 24);
      v76 = *(v85 + 40);
      v18 = *(v85 + 8);
      v19 = *(v85 + 16);
      if (*(v85 + 16))
      {
        v20 = *(v87 + 24) - v17;
        v21 = *(v85 + 16);
        v22 = *(v85 + 8);
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
        v72 = v18;
        v74 = v19;
        v75 = v17;
        v84 = v15 + 1;
        v23 = heap_Alloc(*(v12 + 8), (v15 + 1));
        if (v23)
        {
          v70 = v16;
          v24 = v16 - v14;
          v25 = v23;
          bzero(v23, v84--);
          *(a1 + 144) = 0;
          *(a1 + 148) = 0x100000001;
          v26 = utoin_TranscodeLatinText(a1, v12, v86 + v24, v15, v25, &v84, a1 + 136, v76);
          if ((v26 & 0x80000000) != 0)
          {
            v40 = v25;
          }

          else
          {
            __s = v25;
            if (!a5 || (v26 = bed_Insert(a4, &szWORD_BEG, 1), (v26 & 0x80000000) == 0))
            {
              v27 = strlen(v25);
              v28 = heap_Alloc(*(v12 + 8), (v27 + 1));
              if (v28)
              {
                v29 = v28;
                v30 = strlen(v25);
                bzero(v29, v30 + 1);
                v31 = strcpy(v29, v25);
                v32 = strlen(v31);
                v33 = bed_Insert(a4, v29, v32);
                v69 = v29;
                if ((v33 & 0x80000000) != 0 || a5 && (v33 = bed_Insert(a4, &szWORD_END_0, 1), (v33 & 0x80000000) != 0) || (v33 = utoin_ReplaceCurrentRegion(a2, a3, a4, 0, 0), (v33 & 0x80000000) != 0))
                {
LABEL_94:
                  v5 = v33;
                }

                else
                {
                  if (v76 == 16 && v78 >= 2uLL)
                  {
                    v34 = 0;
                    v35 = v15 + v70;
                    v36 = (v79 + 100);
                    v37 = v78 - 1;
                    do
                    {
                      v38 = *(v36 - 1);
                      if (v38 > v35)
                      {
                        break;
                      }

                      v39 = *(v36 - 4) == 998 && v38 >= v70;
                      if (v39 && *v36 + v38 <= v35)
                      {
                        ++v34;
                      }

                      v36 += 16;
                      --v37;
                    }

                    while (v37);
                    v77 = v34 > 1u;
                  }

                  else
                  {
                    v77 = 0;
                  }

                  if (*(v85 + 40) != 43)
                  {
                    v41 = *(a1 + 144);
                    if (*(a1 + 144))
                    {
                      v42 = 0;
                      v43 = 0;
                      v44 = 0;
                      v73 = (v72 + 4);
                      while (v43 < v41)
                      {
                        v45 = *(a1 + 136);
                        v46 = v43;
                        if (*(v45 + 12 * v43 + 4) != 1)
                        {
                          v50 = 1;
                          goto LABEL_54;
                        }

                        v47 = (v45 + 12 * v43 + 16);
                        v48 = v70;
                        while (v41 - 1 != v46)
                        {
                          v49 = *v47;
                          v47 += 3;
                          ++v46;
                          if (v49 != 1)
                          {
                            v50 = v46 < v41;
                            goto LABEL_55;
                          }
                        }

                        v50 = 0;
                        v46 = v41;
LABEL_55:
                        v43 = (v46 + 1);
                        if (v41 <= (v46 + 1))
                        {
                          v51 = v46 + 1;
                        }

                        else
                        {
                          v51 = v41;
                        }

                        v52 = v46;
                        while (1)
                        {
                          v53 = ++v52;
                          if (v52 >= v41)
                          {
                            break;
                          }

                          if (*(*(a1 + 136) + 12 * v52 + 4) != 1)
                          {
                            goto LABEL_63;
                          }
                        }

                        v52 = v51;
LABEL_63:
                        if (v50)
                        {
                          v54 = *(a1 + 136);
                          v55 = (v54 + 12 * v46);
                          v50 = v55[4];
                          if (v52 == v41)
                          {
                            LOWORD(v56) = v84 - *(v54 + 12 * (v53 - 1) + 8);
                          }

                          else
                          {
                            LOWORD(v56) = *(v54 + 12 * v53 + 8) - v50;
                          }

                          v57 = *v55;
                          v58 = *(v54 + 12 * v46 + 2);
                          v56 = v56;
                        }

                        else
                        {
                          v57 = 0;
                          v58 = 0;
                          v56 = 0;
                          v43 = v46;
                        }

                        v59 = v74;
                        if (v74)
                        {
                          v60 = 0;
                          v61 = v73;
                          do
                          {
                            v62 = *(v61 - 1);
                            if (v62)
                            {
                              v63 = v62 > v56 + v57 + v42;
                            }

                            else
                            {
                              v63 = 0;
                            }

                            if (v63)
                            {
                              break;
                            }

                            v64 = v42 + v57;
                            if (v62 == v42 + v57)
                            {
                              v42 = *v61;
                              v64 = *v61 + v57;
                            }

                            if (v62 > v64 && v62 <= v64 + v56)
                            {
                              v60 = *v61;
                            }

                            v61 += 2;
                            --v59;
                          }

                          while (v59);
                        }

                        else
                        {
                          v60 = 0;
                        }

                        DWORD1(v81) = 41;
                        DWORD2(v81) = v57 + v75 + v42;
                        HIDWORD(v81) = v60 + v58;
                        LODWORD(v82) = v50 + v48;
                        DWORD1(v82) = v56;
                        if (!v77)
                        {
                          v33 = bed_marker_InjectFixedRefMarker(a3, &v80);
                          if ((v33 & 0x80000000) != 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        v13 = bed_GetpElem(a3, 0, &v79);
                        if ((v13 & 0x80000000) != 0)
                        {
                          return v13;
                        }

                        v6 = bed_GetcElem(a3, &v78);
                        if ((v6 & 0x80000000) != 0)
                        {
                          return v6;
                        }

                        v42 += v60;
                        ++v44;
                        v41 = *(a1 + 144);
                        if (v41 <= v44)
                        {
                          goto LABEL_99;
                        }
                      }

                      v50 = 0;
LABEL_54:
                      v46 = v43;
                      v48 = v70;
                      goto LABEL_55;
                    }
                  }

                  v6 = 0;
LABEL_99:
                  if (*(a1 + 146) >= 0x15u)
                  {
                    v68 = heap_Realloc(*(v12 + 8), *(a1 + 136), 120);
                    v67 = __s;
                    if (v68)
                    {
                      *(a1 + 136) = v68;
                      *(a1 + 146) = 10;
                      v5 = v6;
                    }

                    goto LABEL_96;
                  }

                  v5 = v6;
                }

                v67 = __s;
LABEL_96:
                heap_Free(*(v12 + 8), v67);
                v40 = v69;
                goto LABEL_97;
              }

              v40 = v25;
LABEL_97:
              heap_Free(*(v12 + 8), v40);
              return v5;
            }

            v40 = v25;
          }

          v5 = v26;
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

  return v6;
}

uint64_t utoin_TranscodeLatinText(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 *a5, _WORD *a6, uint64_t a7, unsigned int a8)
{
  v60 = 0;
  result = 2370838535;
  if (a3 && a6 && *a6)
  {
    if (a4)
    {
      v54 = a1;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v57 = a5 - 1;
      v59 = a4;
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
            goto LABEL_29;
          }

          v20 = 0;
          v21 = 0;
          goto LABEL_30;
        }

        if (((v18 & 0xDF) - 65) < 0x1Au || (v18 != 32 ? (v22 = (v18 - 48) >= 0xAu) : (v22 = 0), !v22))
        {
          v21 = 0;
          a5[v15] = v18;
          goto LABEL_29;
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
              goto LABEL_29;
            }

            goto LABEL_26;
          }
        }

        if (v23 - 70 >= 3)
        {
          v60 = 0;
          v45 = utf8_determineUTF8CharLength(v18);
          if (*v17 == 227 && v17[1] == 128 && v17[2] == 128)
          {
            v60 = heap_Alloc(*(a2 + 8), 2);
            *v60 = 32;
          }

          else
          {
            result = (*(v54[13] + 80))(v54[14], v54[15], a3 + v16, v45, &v60);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (v60)
          {
            a5[v15] = *v60;
            v20 = 1;
          }

          else
          {
            v20 = 0;
          }

          v26 = 1;
          goto LABEL_80;
        }

LABEL_26:
        v24 = utf8_determineUTF8CharLength(v18);
        v25 = *v17;
        if (v24 == 1)
        {
          if (v25 != 255)
          {
            goto LABEL_28;
          }
        }

        else if (v25 == 194 && v17[1] == 167 && !v17[2])
        {
LABEL_28:
          v21 = 0;
          a5[v15] = v25;
LABEL_29:
          v20 = 1;
LABEL_30:
          v26 = 1;
          goto LABEL_31;
        }

        v26 = 0;
        v60 = 0;
        v20 = 1;
LABEL_80:
        v21 = 1;
LABEL_31:
        v27 = utf8_determineUTF8CharLength(*a5);
        if (v15)
        {
          v28 = &a5[v15];
          v29 = *v28 != 32 && !utf8_BelongsToSet(5u, a5, v14, v27);
          v30 = v57[v15];
          if (v30 == 32)
          {
LABEL_36:
            v31 = 1;
            goto LABEL_44;
          }

          if (v15 >= 3u && *(v28 - 3) == 227)
          {
            v31 = 0;
            if (*(v28 - 2) == 128 && v30 == 128)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
          v29 = 1;
        }

LABEL_44:
        v32 = v20 & v26;
        if (!v15)
        {
          v31 = 1;
        }

        if (v32 == 1 && v29 && v31 && a5[v15] != 17 && *(a7 + 16) == 1)
        {
          v33 = *(a7 + 8);
          v34 = *a7;
          if (v33 >= *(a7 + 10))
          {
            v35 = heap_Realloc(*(a2 + 8), v34, 12 * *(a7 + 10) + 121);
            if (!v35)
            {
              return 2370838538;
            }

            v34 = v35;
            *a7 = v35;
            *(a7 + 10) += 10;
            v33 = *(a7 + 8);
          }

          v36 = v34 + 12 * v33;
          *v36 = v16;
          *(v36 + 2) = 0;
          *(v36 + 4) = 0;
          *(v36 + 8) = v15;
          *(a7 + 8) = v33 + 1;
        }

        v37 = v60;
        if (v60)
        {
          v38 = 0;
        }

        else
        {
          v38 = v21;
        }

        if (v38)
        {
          v39 = 0;
        }

        else
        {
          if ((v21 & (v60 != 0)) == 0)
          {
            v37 = (a3 + v16);
          }

          v39 = utf8_determineUTF8CharLength(*v37);
          if (v39 >= 2u)
          {
            ++v15;
            v40 = v60;
            if ((v21 & (v60 != 0)) == 0)
            {
              v40 = (a3 + v16);
            }

            v41 = v40 + 1;
            v42 = v39 - 1;
            while (1)
            {
              v43 = *v41++;
              a5[v15] = v43;
              if (!--v42)
              {
                break;
              }

              ++v15;
            }
          }
        }

        if (v21)
        {
          v39 = utf8_determineUTF8CharLength(*(a3 + v16));
        }

        if (v60)
        {
          heap_Free(*(a2 + 8), v60);
          v60 = 0;
        }

        v16 += v39;
        v15 += v32;
        v14 = v15;
        v13 = v16;
        a4 = v59;
        v44 = v16 < v59;
        if (v15 >= *a6 || v59 <= v16)
        {
          goto LABEL_91;
        }
      }
    }

    LOWORD(v15) = 0;
    v44 = 0;
LABEL_91:
    a5[v15] = 0;
    v46 = *(a7 + 8);
    if (*(a7 + 8))
    {
      v47 = 0;
      v48 = *a7;
      do
      {
        v49 = a4;
        if (v47 + 1 < v46)
        {
          v49 = *(v48 + 12 * (v47 + 1));
        }

        if (v49)
        {
          do
          {
            v50 = *(a3 - 1 + v49);
            if (v50 > 0x20 || ((1 << v50) & 0x100002600) == 0)
            {
              if (v49 < 3u)
              {
                goto LABEL_108;
              }

              v53 = a3 + v49;
              if (*(v53 - 3) != 227 || *(v53 - 2) != 128 || v50 != 128)
              {
                goto LABEL_108;
              }

              v52 = -3;
            }

            else
            {
              v52 = -1;
            }

            LOWORD(v49) = v49 + v52;
          }

          while (v49);
          LOWORD(v49) = 0;
        }

LABEL_108:
        *(v48 + 12 * v47 + 2) = v49 - *(v48 + 12 * v47);
        ++v47;
      }

      while (v47 != v46);
    }

    if (v44)
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

  v3 = &off_1E81A5350;
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
  v53 = *MEMORY[0x1E69E9840];
  v50 = 0;
  __n[0] = 0;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_43;
  }

  __src = 0;
  *&__n[1] = 0;
  v9 = bed_GetcElem(a3, __n);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  if (__n[0])
  {
    v9 = bed_GetpElem(a3, 0, &__src);
    if ((v9 & 0x80000000) == 0)
    {
      v13 = heap_Calloc(*(a2 + 8), 1, __n[0] + 1);
      if (!v13)
      {
        v18 = 2370838538;
        goto LABEL_43;
      }

      v14 = v13;
      v15 = strncpy(v13, __src, __n[0]);
      v15[__n[0]] = 0;
      v17 = (a2 + 32);
      v16 = *(a2 + 32);
      goto LABEL_10;
    }

LABEL_8:
    v18 = v9;
    goto LABEL_43;
  }

  v14 = 0;
  v17 = (a2 + 32);
  v16 = *(a2 + 32);
LABEL_10:
  log_OutText(v16, "PP", 5, 0, "[UTOI] (%s) len=%d (LH_U8 *) %s", v10, v11, v12, a5);
  v19 = bed_GetpElem(a4, 0, &__n[1]);
  if ((v19 & 0x80000000) != 0)
  {
    v18 = v19;
  }

  else
  {
    v18 = bed_GetcElem(a4, &v50);
    if ((v18 & 0x80000000) == 0 && v50)
    {
      v48 = v14;
      v23 = 0;
      v24 = *&__n[1];
      do
      {
        v25 = v24 + (v23 << 6);
        v26 = *(v25 + 20);
        if (v26 == 7)
        {
          v27 = *(v25 + 40);
          if (v27 != 43)
          {
            v28 = &off_1E81A5350;
            v29 = 19;
            while (*(v28 - 2) != v27)
            {
              v28 += 2;
              if (!--v29)
              {
                goto LABEL_23;
              }
            }

            v30 = *v28;
          }
        }

        else
        {
          marker_getString(v26);
          v24 = *&__n[1];
        }

LABEL_23:
        v31 = v24 + (v23 << 6);
        if (*(v31 + 48))
        {
          v32 = strlen(*(v31 + 48));
          if (v32 <= 0x20uLL)
          {
            v33 = v32;
          }

          else
          {
            v33 = 31;
          }

          __strncpy_chk();
          v52[v33] = 0;
          v24 = *&__n[1];
        }

        else
        {
          v52[0] = 0;
        }

        v34 = (v24 + (v23 << 6));
        if (v34[5] == 32)
        {
          v52[0] = 48;
          if (v34[10] == 1)
          {
            v35 = 49;
          }

          else
          {
            v35 = 48;
          }

          v52[0] = v35;
          v52[1] = 0;
          v36 = v34[5];
        }

        *v34;
        v47 = v34[9];
        v45 = v34[7];
        v46 = v34[8];
        v44 = v34[6];
        log_OutText(*v17, "PP", 5, 0, "[UTOI] Marker[%d] %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s", v20, v21, v22, v23);
        v24 = *&__n[1];
        if (*(*&__n[1] + (v23 << 6) + 16))
        {
          v37 = 0;
          v38 = 0;
          do
          {
            v39 = (*(v24 + (v23 << 6) + 8) + v37);
            v42 = *v39;
            v43 = v39[1];
            log_OutText(*v17, "PP", 5, 0, "[UTOI] Offsets[%d] %u,%u", v20, v21, v22, v38++);
            v24 = *&__n[1];
            v37 += 8;
          }

          while (v38 < *(*&__n[1] + (v23 << 6) + 16));
        }

        ++v23;
      }

      while (v23 < v50);
      v14 = v48;
    }
  }

  if (v14)
  {
    heap_Free(*(a2 + 8), v14);
  }

LABEL_43:
  v40 = *MEMORY[0x1E69E9840];
  return v18;
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
  v9 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v9) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v9 + 8), 16);
    if (v7)
    {
      v3 = 0;
      *v7 = a1;
      v7[1] = a2;
      *a3 = v7;
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
  v68 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  LODWORD(v58) = 1;
  DWORD1(v59) = 1;
  v57 = 0;
  v4 = 2370838535;
  v56 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_91;
  }

  v9 = datac_RequestBlock(a2, 1020, 1u, &v66);
  if ((v9 & 0x80000000) != 0)
  {
    if ((v9 & 0x1FFF) == 0x14)
    {
      v4 = 0;
    }

    else
    {
      v4 = v9;
    }

    goto LABEL_91;
  }

  if (!*(v66 + 16))
  {
    v4 = 0;
    goto LABEL_91;
  }

  v10 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1021, &v65, 213);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = *(v66 + 8);
    v12 = *(v66 + 16);
    v10 = bed_GetpElem(v65, 0, &v64);
    if ((v10 & 0x80000000) == 0)
    {
      v62 = *v64;
      v63 = *(v64 + 2);
      v13 = *(v64 + 6);
      v14 = *(v64 + 7);
      v55 = *(v64 + 8);
      v67[0] = *(v64 + 36);
      *(v67 + 12) = v64[3];
      v10 = bed_GetcElem(v65, &v56);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = bed_GetpElem(v65, 0, &v57);
        if ((v10 & 0x80000000) == 0)
        {
          v15 = v56;
          if (v56 < 2u)
          {
            v15 = 1;
          }

          else
          {
            v16 = (v57 + 96);
            v17 = 1;
            while (1)
            {
              v18 = *v16;
              v16 += 16;
              if (v18 != *(v57 + 32))
              {
                break;
              }

              if (v56 == ++v17)
              {
                goto LABEL_20;
              }
            }

            v15 = v17;
          }

LABEL_20:
          v20 = v64;
          v19 = v65;
          *(v64 + 7) = 0;
          *(v20 + 9) = 0;
          v10 = bed_Goto(v19, 1u);
          if ((v10 & 0x80000000) == 0)
          {
            v52 = v14;
            v53 = v13;
            if (!v12)
            {
LABEL_86:
              v4 = bed_GetpElem(v65, 0, &v64);
              if ((v4 & 0x80000000) == 0)
              {
                v49 = v63;
                v48 = v64;
                *v64 = v62;
                *(v48 + 2) = v49;
                *(v48 + 36) = v67[0];
                v48[3] = *(v67 + 12);
                *(v48 + 7) = v52 + a4;
                *(v48 + 8) = v55;
                *(v48 + 6) = v53 - a4;
              }

              goto LABEL_89;
            }

            v21 = 0;
            v22 = 0;
            v54 = v53 + a3;
            v23 = v14 + v53;
            while (1)
            {
              v24 = v22;
              v25 = v22;
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
              v22 = v25;
              if (v12 > v25)
              {
                v22 = v25;
                do
                {
                  if (utf8_BelongsToSet(4u, v11, v22, v12))
                  {
                    break;
                  }

                  v22 = v22 + utf8_determineUTF8CharLength(*(v11 + v22));
                }

                while (v12 > v22);
              }

              if (v25 < v22)
              {
                if (v56 >= 2u)
                {
                  v26 = 0;
                  v27 = 0;
                  v28 = 1;
                  do
                  {
                    v29 = (v57 + (v28 << 6));
                    v30 = v29[8] - *(v57 + 32);
                    v31 = v30 < v24 || v30 > v22;
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

                  while (v30 <= v22 && v28 < v56);
                  if (v26 == 1 && v27)
                  {
                    v35 = *(v57 + (v27 << 6) + 32) - *(v57 + 32);
                    if (v35 <= v24 || v35 > v22)
                    {
                      v22 = v22;
                    }

                    else
                    {
                      v22 = v35;
                    }
                  }
                }

                if (v25 && v15 < v56)
                {
                  v37 = v15;
                  v38 = (v57 + 32 + (v15 << 6));
                  do
                  {
                    if (*v38 - *(v57 + 32) > v24)
                    {
                      break;
                    }

                    if (*(v38 - 3) != 1)
                    {
                      v21 += *(v38 - 1);
                    }

                    ++v37;
                    v38 += 16;
                  }

                  while (v37 < v56);
                  v15 = v37;
                }

                if (v15 >= v56)
                {
                  v39 = 0;
                  v40 = v22;
                }

                else
                {
                  v39 = 0;
                  v40 = v22;
                  v41 = (v57 + 32 + (v15 << 6));
                  v42 = v56 - v15;
                  do
                  {
                    v43 = *v41 - *(v57 + 32);
                    if (v43 <= v24 || v43 >= v22)
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

                LODWORD(v60) = v24 + v55;
                DWORD1(v60) = v40 - v24;
                v45 = v54 + v24 + v21;
                v46 = v39 + v40 - v24;
                if (v46 + v45 > v23 && v23 >= v45)
                {
                  v46 = v23 - v45;
                }

                DWORD2(v59) = v54 + v24 + v21;
                HIDWORD(v59) = v46;
                v10 = bed_marker_InjectFixedRefMarker(v65, &v58);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }

                v10 = bed_GetcElem(v65, &v56);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }

                v10 = bed_GetpElem(v65, 0, &v57);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }
              }

              if (v12 <= v22)
              {
                goto LABEL_86;
              }
            }
          }
        }
      }
    }
  }

  v4 = v10;
LABEL_89:
  if (v65)
  {
    bed_ObjClose(v65);
  }

LABEL_91:
  v50 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t utois_ScanRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, void *a9, int a10, char *a11, unsigned __int16 a12, unsigned __int16 a13, unsigned __int16 a14)
{
  v242 = *MEMORY[0x1E69E9840];
  v219 = 0;
  v220 = 0;
  v14 = 2370838535;
  v218 = 0;
  if (!a7)
  {
    goto LABEL_224;
  }

  v16 = a7;
  if ((InitRsrcFunction(a5, a6, &v218) & 0x80000000) != 0)
  {
    goto LABEL_224;
  }

  if ((bed_ObjOpen(a5, a6, v16, 1020, &v220, 213) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if ((bed_ObjOpen(a5, a6, v16, 1021, &v219, 213) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  UTOITrace(a4, v218, v220, v219, "BEFORE utois_ScanTaggedText");
  v23 = v218;
  *&v238 = 0;
  if (!v220 || !v219 || (datac_RequestBlock(v16, 1021, 1u, &v238) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v209 = a1;
  v210 = a2;
  v212 = a3;
  v206 = a5;
  v207 = a6;
  v208 = a8;
  v24 = v238;
  v25 = *(v238 + 16);
  if (v25 >= 2)
  {
    v217 = v23;
    v215 = a4;
    v26 = *(v238 + 8);
    v27 = v26 + 8;
    v28 = 1;
    v29 = 1;
    do
    {
      v30 = &v26[16 * v29];
      if (v30[5] == 7 && v30[10] == 43 && v25 > (v28 + 1))
      {
        v31 = (v28 + 1);
        v32 = &v27[16 * v31];
        while (*(v32 - 3) != 7)
        {
          ++v31;
          v32 += 16;
          if (v25 == v31)
          {
            goto LABEL_26;
          }
        }

        if (v32[2] == 43 && v30[8] == *v32)
        {
          v213 = v27;
          if (v31 >= (v28 + 1))
          {
            v203 = v16;
            v33 = v28 + 1;
            do
            {
              v34 = &v26[16 * v33];
              v37 = *(v34 + 6);
              v36 = v34 + 12;
              v35 = v37;
              if (v37)
              {
                heap_Free(*(v217 + 8), v35);
                *v36 = 0;
              }

              ++v33;
            }

            while (v33 <= v31);
            v24 = v238;
            v16 = v203;
          }

          memmove(v32 - 8, v32 + 8, (*(v24 + 16) - v31) << 6);
          v38 = *(v238 + 16) - 1;
          *(v238 + 16) = v38;
          memmove(&v26[16 * v29], &v26[16 * (v28 + 1)], (v38 - v28) << 6);
          v24 = v238;
          LOWORD(v25) = *(v238 + 16) - 1;
          *(v238 + 16) = v25;
          --v29;
          v27 = v213;
        }
      }

LABEL_26:
      v28 = ++v29;
    }

    while (v29 < v25);
    a4 = v215;
    if (v25 >= 2u)
    {
      v39 = v26 + 6;
      v40 = 0x1080200080;
      v41 = 1;
      v42 = 1;
      while (1)
      {
        while (1)
        {
          v43 = &v26[16 * v42];
          if (v43[5] != 7)
          {
            goto LABEL_78;
          }

          v44 = (v41 + 1);
          if (v25 > (v41 + 1))
          {
            break;
          }

LABEL_34:
          v47 = v43[10];
          if (v47 != 15)
          {
            v43[9] = v26[9] + v26[8] - v43[8];
            if (v47 == 43)
            {
              v48 = v43[6];
              v49 = v26[7] + v26[6];
              v50 = v49 >= v48;
              v51 = v49 - v48;
              if (v50)
              {
                v43[7] = v51;
              }
            }

            goto LABEL_78;
          }

          v43[9] = 0;
          if (!*v43)
          {
LABEL_36:
            v43[5] = 999;
          }

LABEL_78:
          v41 = ++v42;
          if (v42 >= v25)
          {
            a4 = v215;
            goto LABEL_87;
          }
        }

        v45 = (v41 + 1);
        v46 = &v39[16 * v45];
        while (*(v46 - 1) != 7)
        {
          ++v45;
          v46 += 16;
          if (v25 == v45)
          {
            goto LABEL_34;
          }
        }

        v52 = v43[10];
        v53 = v46[4];
        if (v52 == 43)
        {
          if (v53 == 43)
          {
            v54 = *(v46 + 3);
            if (v54)
            {
              v214 = v39;
              v55 = v40;
              heap_Free(*(v217 + 8), v54);
              v40 = v55;
              v39 = v214;
              *(v46 + 3) = 0;
            }

            v56 = 0;
            *(v46 - 1) = 999;
          }

          else
          {
            if (v25 > v45)
            {
              v58 = v46;
              v59 = v45;
              do
              {
                v60 = *(v58 - 1);
                v61 = v60 > 0x24 || ((1 << v60) & v40) == 0;
                if (!v61 || v60 == 999)
                {
                  v62 = *v58 - v43[7];
                  *v58 = v62;
                  if (v59 > v45 && v62 > *v46)
                  {
                    *v58 = v62 - v46[1];
                  }
                }

                ++v59;
                v58 += 16;
              }

              while (v59 < v25);
            }

            v56 = 0;
          }

          v63 = *v46;
          v64 = v43[6];
          goto LABEL_67;
        }

        if (v52 == v53)
        {
          break;
        }

        if (v43[8] != v46[2])
        {
          if (v52 == 15 && !*v43)
          {
            goto LABEL_36;
          }

          v56 = 0;
          v63 = *v46;
          v64 = v43[6] + v43[7];
LABEL_67:
          v43[7] = v63 - v64;
LABEL_74:
          if (v43[5] == 999)
          {
            if (v56)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v43[9] = v46[2] - v43[8];
            if (v56)
            {
LABEL_83:
              v68 = v45 + 1;
              if (v68 < v25)
              {
                v67 = v46 - 6;
                v65 = &v26[16 * v68];
                v66 = (v25 - v45) << 6;
                goto LABEL_85;
              }

              goto LABEL_86;
            }
          }

          goto LABEL_78;
        }

        v43[10] = v53;
        if (*(v46 - 6))
        {
          goto LABEL_70;
        }

        v46[4] = v53;
        if (!*v43)
        {
          goto LABEL_36;
        }

        if (v44 < v25)
        {
          v65 = &v26[16 * v44];
          v66 = (v25 - v41) << 6;
          v67 = &v26[16 * v42];
LABEL_85:
          v69 = v40;
          memmove(v67, v65, v66);
          v40 = v69;
        }

LABEL_86:
        LOWORD(v25) = v25 - 1;
        v41 = v42;
        a4 = v215;
        if (v42 >= v25)
        {
          goto LABEL_87;
        }
      }

      if (v52 == 60 || v52 == 16)
      {
        v56 = *(v46 - 6);
        if (v56)
        {
LABEL_70:
          v56 = 1;
        }

        else
        {
          *(v46 - 1) = 999;
        }
      }

      else
      {
        v56 = 0;
      }

      goto LABEL_74;
    }
  }

LABEL_87:
  *(v238 + 16) = v25;
  UTOITrace(a4, v218, v220, v219, "BEFORE utois_ScanTextForSpell");
  v70 = v219;
  *&v234 = 21;
  __src = 0;
  v232 = 0;
  v230 = 0;
  v238 = MarkerSetTypeOfInput_0;
  v239 = unk_1C37BEF20;
  v240 = xmmword_1C37BEF30;
  v241 = unk_1C37BEF40;
  if (!v220)
  {
    goto LABEL_216;
  }

  if (!v219)
  {
    goto LABEL_216;
  }

  LOWORD(v228) = 0;
  v229 = 0;
  if ((bed_GetcElem(v220, &v228) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if ((datac_RequestBlock(v16, 1012, 1u, &v229) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v71 = *(v229 + 8);
  if ((bed_Goto(v70, 0) & 0x80000000) != 0 || (bed_GetpElem(v70, 0, &__src) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v72 = *(__src + 8);
  v73 = bed_GoForward(v70, bed_marker_IsOfType, &v234);
  if ((v73 & 0x1FFF) != 0x14)
  {
    if (v73 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v232) & 0x80000000) != 0)
    {
      goto LABEL_216;
    }

    for (i = v232; v232; i = v232)
    {
      v83 = a4;
      v84 = v16;
      LOWORD(v233) = 1;
      v85 = *(i + 10);
      MarkerArgStr = marker_getMarkerArgStr(3u);
      if (!strcmp((v71 + v85), MarkerArgStr))
      {
        goto LABEL_310;
      }

      v87 = *(v232 + 10);
      v88 = marker_getMarkerArgStr(4u);
      if (!strncmp((v71 + v87), v88, 6uLL) || (v89 = *(v232 + 10), v90 = marker_getMarkerArgStr(6u), !strcmp((v71 + v89), v90)) || (v91 = *(v232 + 10), v92 = marker_getMarkerArgStr(7u), !strcmp((v71 + v91), v92)) || (v93 = *(v232 + 10), v94 = marker_getMarkerArgStr(8u), !strcmp((v71 + v93), v94)))
      {
LABEL_310:
        v97 = *(v232 + 10);
        v98 = marker_getMarkerArgStr(5u);
        if (!strcmp((v71 + v97), v98) || (v99 = *(v232 + 10), v100 = marker_getMarkerArgStr(6u), !strcmp((v71 + v99), v100)) || (v101 = *(v232 + 10), v102 = marker_getMarkerArgStr(7u), !strcmp((v71 + v101), v102)) || (v103 = *(v232 + 10), v104 = marker_getMarkerArgStr(8u), !strcmp((v71 + v103), v104)))
        {
          v96 = 44;
        }

        else
        {
          v96 = 14;
        }

        v95 = 1;
      }

      else
      {
        v95 = 0;
        v96 = 14;
      }

      LOWORD(v233) = 1;
      bed_GoForward(v70, bed_marker_IsAt, &v233);
      v105 = bed_GoForward(v70, bed_marker_IsOfType, &v234);
      v16 = v84;
      if ((v105 & 0x1FFF) == 0x14)
      {
        v230 = 0;
        a4 = v83;
      }

      else
      {
        if (v105 < 0)
        {
          goto LABEL_216;
        }

        a4 = v83;
        if ((bed_GetpElem(v70, 0xFFFFu, &v230) & 0x80000000) != 0)
        {
          goto LABEL_216;
        }
      }

      if (v95)
      {
        v106 = *(v232 + 8);
        DWORD2(v239) = *(v232 + 6);
        LODWORD(v240) = v106;
        v107 = v230 ? *(v230 + 32) : v72 + v228;
        DWORD1(v240) = v107 - v106;
        DWORD2(v240) = v96;
        HIDWORD(v239) = v107 - v106;
        if (v107 != v106 && (bed_marker_InjectFixedRefMarker(v70, &v238) & 0x80000000) != 0)
        {
          goto LABEL_216;
        }
      }

      v108 = bed_GoForward(v70, bed_marker_IsOfType, &v234);
      if ((v108 & 0x1FFF) == 0x14)
      {
        break;
      }

      if (v108 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v232) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }
    }
  }

  UTOITrace(a4, v218, v220, v219, "BEFORE utois_ScanTextForMWRegions");
  v234 = MarkerUDCTREF_0;
  v235 = unk_1C37BEF60;
  v236 = xmmword_1C37BEF70;
  v75 = v218;
  v74 = v219;
  v76 = v220;
  v232 = 0;
  v229 = 0;
  v230 = 0;
  v228 = 0;
  LODWORD(v233) = 0;
  v239 = unk_1C37BEF20;
  v240 = xmmword_1C37BEF30;
  v241 = unk_1C37BEF40;
  v237 = unk_1C37BEF80;
  v238 = MarkerSetTypeOfInput_0;
  if (!v209)
  {
    goto LABEL_207;
  }

  __len = 0;
  v223 = 0;
  __n = 0;
  if (((*(v209 + 120))(v210, v212, &v233) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if (!v233)
  {
    goto LABEL_207;
  }

  v77 = a12 <= a13 ? a13 : a12;
  v201 = v77;
  __src = 0;
  v223 = 0;
  if ((datac_RequestBlock(v16, 1021, 1u, &v230) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v78 = bed_GetpElem(v76, 0, &v228);
  if (v78 < 0)
  {
    goto LABEL_216;
  }

  v79 = *(v230 + 16);
  if (!*(v230 + 16) || *(*(v230 + 8) + 20) != 0x4000)
  {
    goto LABEL_216;
  }

  v80 = v78;
  v197 = v76;
  v198 = v74;
  v216 = a4;
  v204 = v16;
  v232 = *(v230 + 8);
  HIWORD(v231) = v79;
  if (v79 == 1)
  {
    v81 = 0;
    goto LABEL_198;
  }

  v109 = 0;
  v110 = 0;
  v81 = 0;
  v111 = 1;
  v112 = 2;
  v113 = 168;
  while (1)
  {
    v114 = &v232[64 * v111];
    if (*(v114 + 5) != 32 || *(v114 + 10) != 1)
    {
      goto LABEL_197;
    }

    if (!v109)
    {
      break;
    }

    v115 = *(v114 + 8);
    if (v110 != v115)
    {
      goto LABEL_144;
    }

    v109 = 1;
LABEL_197:
    ++v111;
    v79 = HIWORD(v231);
    ++v112;
    v113 += 64;
    if (v111 >= HIWORD(v231))
    {
      goto LABEL_198;
    }
  }

  v115 = *(v114 + 8);
LABEL_144:
  v116 = v79;
  v117 = &v232[v113];
  v118 = v112;
  do
  {
    if (v118 >= v116)
    {
      goto LABEL_154;
    }

    v119 = v118;
    if (*(v117 - 5) == 32)
    {
      break;
    }

    v120 = *v117;
    v117 += 64;
    ++v118;
  }

  while (!v120);
  v121 = v119;
  v122 = &v232[64 * v119];
  if (*(v122 + 5) != 32)
  {
LABEL_154:
    v109 = 1;
    v110 = v115;
    goto LABEL_197;
  }

  v110 = v115;
  v199 = v113;
  v123 = v112;
  if (*(v122 + 10) || v115 == *(v122 + 8))
  {
    goto LABEL_196;
  }

  v80 = bed_Goto(v198, v111);
  if (v80 < 0)
  {
    goto LABEL_198;
  }

  v127 = *(v232 + 8);
  v196 = *&v232[64 * v111 + 32] - v127;
  v128 = (*&v232[64 * v111 + 32] - v127);
  v129 = (*&v232[64 * v121 + 32] - v127);
  if (v216 == 1)
  {
    log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (scan for multiword in dict between text positions %u and %u)", v124, v125, v126, (*&v232[64 * v111 + 32] - v127));
  }

  LOWORD(__len) = a13;
  if ((v129 - v128) > a13)
  {
    goto LABEL_198;
  }

  LOWORD(__len) = v129 - v128;
  v130 = __src;
  if (__src)
  {
    v131 = (v129 - v128);
  }

  else
  {
    v130 = heap_Calloc(*(v75 + 8), a13 + 1, 1);
    __src = v130;
    if (!v130)
    {
      goto LABEL_307;
    }

    v131 = __len;
  }

  memmove(v130, (v228 + v128), v131);
  if (v223 || (v223 = heap_Calloc(*(v75 + 8), 1, a14 + a12 * a14 + 1)) != 0)
  {
    if (!v229)
    {
      v136 = bed_ObjOpen(v206, v207, v204, 1029, &v229, 213);
      if (v136 < 0)
      {
        goto LABEL_306;
      }
    }

    if (v216 == 1)
    {
      if (!v81)
      {
        v81 = heap_Calloc(*(v75 + 8), v201 + 1, 1);
        if (!v81)
        {
          goto LABEL_307;
        }
      }

      strncpy(v81, __src, __len);
      v81[__len] = 0;
      log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (lookup User Dict for %s)", v137, v138, v139, v81);
    }

    v80 = utoin_LookUpUdctWord(v209, v210, v212, &__src, 1, a13, a12, &v226);
    if (v80 < 0)
    {
      goto LABEL_198;
    }

    if ((HIDWORD(__len) - 2) >= 2 && HIDWORD(__len) != 43 && (HIDWORD(__len) != 16 || !LH_stricmp(a11, "jpj") && HIDWORD(__len) != 2))
    {
      if (v216 == 1)
      {
        log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (no (valid) User Dict entry found)", v140, v141, v142, v194);
      }

      goto LABEL_196;
    }

    if (v216 == 1)
    {
      strncpy(v81, v223, __n);
      v81[__n] = 0;
      log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (found User Dict entry %s)", v143, v144, v145, v81);
    }

    if (LH_stricmp(a11, &v226))
    {
      v146 = &v226;
    }

    else
    {
      v146 = 0;
    }

    v136 = utoin_ReplaceWord(v197, v198, v196, &__src, 0, v204, v146);
    if (v136 < 0)
    {
      goto LABEL_306;
    }

    v80 = bed_GetpElem(v197, 0, &v228);
    if (v80 < 0)
    {
      goto LABEL_198;
    }

    if (HIDWORD(__len) == 16)
    {
      v136 = bed_Goto(v198, v111);
      if (v136 < 0)
      {
        goto LABEL_306;
      }

      v150 = &v232[64 * v111];
      DWORD2(v239) = *(v150 + 6);
      HIDWORD(v239) = __len;
      LODWORD(v240) = *(v150 + 8);
      DWORD1(v240) = *&v232[64 * v121 + 32] - v240;
      DWORD2(v240) = 16;
      v136 = bed_marker_InjectFixedRefMarker(v198, &v238);
      if (v136 < 0)
      {
        goto LABEL_306;
      }

      v136 = bed_GetpElem(v198, 0, &v232);
      if (v136 < 0)
      {
        goto LABEL_306;
      }

      v136 = bed_GetcElem(v198, &v231 + 1);
      if (v136 < 0)
      {
        goto LABEL_306;
      }

      v151 = &v232[64 * v111];
      DWORD2(v235) = *(v151 + 6);
      HIDWORD(v235) = __len;
      LODWORD(v236) = *(v151 + 8);
      DWORD1(v236) = *&v232[64 * v121 + 32] - v236;
      v149 = 16;
      goto LABEL_193;
    }

    if (HIDWORD(__len) == 43)
    {
      v136 = bed_Goto(v198, v111);
      if (v136 < 0)
      {
        goto LABEL_306;
      }

      v147 = &v232[64 * v111];
      DWORD2(v239) = *(v147 + 6);
      HIDWORD(v239) = __len;
      LODWORD(v240) = *(v147 + 8);
      DWORD1(v240) = __n;
      DWORD2(v240) = 43;
      v136 = bed_marker_InjectFixedRefMarker(v198, &v238);
      if (v136 < 0)
      {
        goto LABEL_306;
      }

      v148 = &v232[64 * v111];
      DWORD2(v235) = *(v148 + 6);
      HIDWORD(v235) = __len;
      LODWORD(v236) = *(v148 + 8);
      DWORD1(v236) = __n;
      v149 = 43;
LABEL_193:
      DWORD2(v236) = v149;
      if ((bed_marker_InjectFixedRefMarker(v198, &v234) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }

      v136 = bed_GetpElem(v198, 0, &v232);
      if (v136 < 0)
      {
LABEL_306:
        v80 = v136;
        goto LABEL_198;
      }

      v80 = bed_GetcElem(v198, &v231 + 1);
      if (v80 < 0)
      {
        goto LABEL_198;
      }
    }

LABEL_196:
    v109 = 1;
    v112 = v123;
    v113 = v199;
    goto LABEL_197;
  }

LABEL_307:
  log_OutPublic(*(v75 + 32), &modPP_5, 1923, 0, v132, v133, v134, v135, v194);
  v80 = -1924128758;
LABEL_198:
  if (__src)
  {
    heap_Free(*(v75 + 8), __src);
  }

  if (v223)
  {
    heap_Free(*(v75 + 8), v223);
  }

  if (v81)
  {
    heap_Free(*(v75 + 8), v81);
  }

  if (v229)
  {
    bed_ObjClose(v229);
  }

  v16 = v204;
  LODWORD(a4) = v216;
  if (v80 < 0)
  {
LABEL_216:
    LODWORD(v14) = 0;
    goto LABEL_217;
  }

LABEL_207:
  v152 = a4;
  UTOITrace(a4, v218, v220, v219, "BEFORE utois_ScanUntaggedText");
  v154 = v219;
  v153 = v220;
  v233 = 7;
  if (!v220 || !v219)
  {
    goto LABEL_302;
  }

  IsCursorAtEnd = bed_Goto(v220, 0);
  if (IsCursorAtEnd < 0 || (IsCursorAtEnd = bed_Goto(v154, 0), IsCursorAtEnd < 0) || (v226 = 0, IsCursorAtEnd = bed_IsCursorAtEnd(v153, &v226), IsCursorAtEnd < 0))
  {
LABEL_301:
    LODWORD(v14) = IsCursorAtEnd;
    goto LABEL_302;
  }

  if (!v226)
  {
    while (1)
    {
      v225 = 0;
      v158 = bed_GoForward(v154, bed_marker_IsOfType, &v233);
      if (v158 < 0)
      {
        LODWORD(v14) = v158;
        if ((v158 & 0x1FFF) != 0x14)
        {
          goto LABEL_302;
        }
      }

      v232 = 0;
      v231 = 0;
      v229 = 0;
      v230 = 0;
      v228 = 0;
      v227 = 0;
      v234 = MarkerSetTypeOfInput_0;
      v235 = unk_1C37BEF20;
      v236 = xmmword_1C37BEF30;
      v237 = unk_1C37BEF40;
      v159 = bed_GetpElem(v154, 0, &v230);
      if (v159 < 0 || (v160 = *(v230 + 24), v161 = *(v230 + 32), v159 = datac_RequestBlock(v16, 1021, 1u, &v228), v159 < 0))
      {
        LODWORD(v14) = v159;
        goto LABEL_296;
      }

      v162 = *(v228 + 8);
      v163 = *(v228 + 16);
      v164 = bed_GetpElem(v154, 0xFFFFu, &v229);
      if ((v164 & 0x1FFF) == 0xF)
      {
        v165 = bed_GetcElem(v153, &v231);
        if (v165 < 0)
        {
          goto LABEL_295;
        }

        if (v163)
        {
          v166 = 0;
          v167 = 0;
          v168 = (v162 + 20);
          do
          {
            v169 = *v168;
            v168 += 16;
            if (v169 == 7)
            {
              v167 = v166;
            }

            ++v166;
          }

          while (v163 != v166);
          if (v167)
          {
            v170 = (v162 + (v167 << 6));
            v171 = v170[10];
            if (v171 != 44 && v171 != 14)
            {
              v173 = v170[6];
              if (v173 == v160 && v170[8] == v161)
              {
                v174 = v170[7] + v160;
                goto LABEL_257;
              }

              goto LABEL_255;
            }

LABEL_254:
            v173 = v170[6];
LABEL_255:
            v174 = v170[7] + v173;
            goto LABEL_257;
          }
        }
      }

      else
      {
        LODWORD(v14) = v164;
        if (v164 < 0)
        {
          goto LABEL_296;
        }

        v175 = *(v229 + 32);
        LOWORD(v231) = v175 - v161;
        if (v163)
        {
          v176 = 0;
          v177 = 0;
          v178 = (v162 + 20);
          do
          {
            if (v178[3] >= v175)
            {
              break;
            }

            v179 = *v178;
            v178 += 16;
            if (v179 == 7)
            {
              v177 = v176;
            }

            ++v176;
          }

          while (v163 != v176);
          if (v177)
          {
            v170 = (v162 + (v177 << 6));
            goto LABEL_254;
          }
        }
      }

      v174 = *(v162 + 24);
LABEL_257:
      v211 = v174;
      v165 = bed_GetiElem(v153, &v231 + 1);
      if ((v165 & 0x80000000) == 0)
      {
        LOWORD(v231) = v231 - HIWORD(v231);
        v165 = bed_Goto(v153, HIWORD(v231) + v231);
        if ((v165 & 0x80000000) == 0)
        {
          v165 = bed_Insert(v153, &v227, 1);
          if ((v165 & 0x80000000) == 0)
          {
            v165 = bed_GetpElem(v153, HIWORD(v231), &v232);
            if ((v165 & 0x80000000) == 0)
            {
              v180 = v231;
              if (v231)
              {
                v181 = 0;
                v200 = 0;
                v202 = 0;
                v205 = 0;
                while (!*v208)
                {
LABEL_280:
                  v181 += utf8_determineUTF8CharLength(v232[v181]);
LABEL_281:
                  v180 = v231;
                  if (v231 <= v181)
                  {
                    goto LABEL_282;
                  }
                }

                v182 = 0;
                v183 = 0;
                while (1)
                {
                  v184 = v232;
                  v185 = v231;
                  __src = 0;
                  if (!v232 || v231 <= v181 || (InitRsrcFunction(v206, v207, &__src) & 0x80000000) != 0)
                  {
                    LODWORD(v14) = -1924128761;
                    goto LABEL_296;
                  }

                  v186 = nuance_pcre_exec(a9, a10, *(v208 + 2) + *(*(v208 + 1) + v182), 0, v184, v185, v181, 0x10u, &v238, 30);
                  if ((v186 & 0x80000000) == 0)
                  {
                    if (v186)
                    {
                      v205 = v238;
                      v200 = *(*(v208 + 1) + v182 + 4);
                      v202 = DWORD1(v238) - v238;
                    }

LABEL_275:
                    LODWORD(v192) = *v208;
LABEL_276:
                    if (v192 <= v183)
                    {
                      goto LABEL_280;
                    }

                    DWORD2(v235) = v211 + v181;
                    HIDWORD(v235) = v202;
                    LODWORD(v236) = v161 + v205 + HIWORD(v231);
                    DWORD1(v236) = v202;
                    DWORD2(v236) = v200;
                    v165 = bed_marker_InjectFixedRefMarker(v154, &v234);
                    if ((v165 & 0x80000000) == 0)
                    {
                      v165 = datac_RequestBlock(v16, 1021, 1u, &v228);
                      if ((v165 & 0x80000000) == 0)
                      {
                        v181 = v202 + v205;
                        goto LABEL_281;
                      }
                    }

                    goto LABEL_295;
                  }

                  v187 = nuance_pcre_ErrorToLhError(v186);
                  if (v187 >> 20 != 2213)
                  {
                    goto LABEL_275;
                  }

                  LODWORD(v14) = v187;
                  if ((v187 & 0x1FFF) != 0x14)
                  {
                    break;
                  }

                  ++v183;
                  v192 = *v208;
                  v182 += 8;
                  if (v183 >= v192)
                  {
                    goto LABEL_276;
                  }
                }

                if ((v187 & 0x1FFF) == 0xA)
                {
                  log_OutPublic(*(__src + 4), &modPP_5, 11002, 0, v188, v189, v190, v191, v195);
                  v180 = v231;
                  goto LABEL_286;
                }

                log_OutPublic(*(__src + 4), &modPP_5, 11027, "%s%x", v188, v189, v190, v191, "lhError");
                goto LABEL_296;
              }

LABEL_282:
              LODWORD(v14) = 0;
LABEL_286:
              v165 = bed_Remove(v153, (HIWORD(v231) + v180), 1u);
              if ((v165 & 0x80000000) == 0)
              {
                if (!v229)
                {
                  v193 = v231 + HIWORD(v231);
LABEL_292:
                  v165 = bed_Goto(v153, v193);
                  if ((v165 & 0x80000000) == 0)
                  {
                    if ((~v14 & 0xA) != 0)
                    {
                      LODWORD(v14) = 0;
                    }

                    goto LABEL_296;
                  }

                  goto LABEL_295;
                }

                v165 = bed_GetpElem(v154, 0xFFFFu, &v229);
                if ((v165 & 0x80000000) == 0)
                {
                  v193 = (v231 + HIWORD(v231) + *(v229 + 36));
                  goto LABEL_292;
                }
              }
            }
          }
        }
      }

LABEL_295:
      LODWORD(v14) = v165;
LABEL_296:
      if ((v14 & 0x80000000) != 0 && (v14 & 0x1FFF) != 0xA)
      {
        goto LABEL_302;
      }

      v225 = 1;
      bed_GoForward(v154, bed_marker_IsAt, &v225);
      IsCursorAtEnd = bed_IsCursorAtEnd(v153, &v226);
      if (IsCursorAtEnd < 0)
      {
        goto LABEL_301;
      }

      if (v226)
      {
        goto LABEL_214;
      }
    }
  }

  LODWORD(v14) = 0;
LABEL_214:
  if ((v14 & 0x1FFF) != 0xA)
  {
    LODWORD(v14) = 0;
  }

LABEL_302:
  if ((v14 & 0x80000000) == 0 || (v14 & 0x1FFF) == 0xA)
  {
    UTOITrace(v152, v218, v220, v219, "BEFORE utois_MarkUnknownRegions");
    if ((utois_MarkUnknownRegions(v220, v219) & 0x80000000) == 0)
    {
      UTOITrace(v152, v218, v220, v219, "BEFORE utois_AlignMarkers");
      utois_AlignMarkers(v16);
    }
  }

LABEL_217:
  if (v219)
  {
    bed_ObjClose(v219);
  }

  if (v220)
  {
    bed_ObjClose(v220);
  }

  if ((v14 & 0x1FFF) == 0xA)
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

LABEL_224:
  v156 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t utois_MarkUnknownRegions(uint64_t a1, uint64_t a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26[0] = 7;
  v23 = 0;
  v24 = 0;
  v20 = MarkerSetTypeOfInput_0;
  *v21 = unk_1C37BEF20;
  *&v21[16] = xmmword_1C37BEF30;
  v22 = unk_1C37BEF40;
  result = 2370838535;
  if (!a1)
  {
    goto LABEL_33;
  }

  if (!a2)
  {
    goto LABEL_33;
  }

  result = bed_Goto(a2, 0);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  result = bed_GetpElem(a2, 0, &v25);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  result = bed_GoForward(a2, bed_marker_IsOfType, v26);
  if ((result & 0x1FFF) == 0x14)
  {
    v24 = 0;
LABEL_7:
    *&v21[8] = *(v25 + 24);
    *&v21[24] = 0;
    v5 = *(v25 + 36) + *&v21[16];
    v6 = *(v25 + 28) + *&v21[8];
    goto LABEL_8;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  result = bed_GetpElem(a2, 0xFFFFu, &v24);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  if (!v24)
  {
    goto LABEL_7;
  }

  v7 = v24[8];
  v8 = *(v25 + 32);
  v9 = *(v25 + 24);
  v10 = v7 >= v8;
  v11 = v7 - v8;
  if (v11 != 0 && v10)
  {
    *&v21[8] = *(v25 + 24);
    *&v21[12] = v24[6] - v9;
    *&v21[16] = v8;
    *&v21[20] = v11;
  }

  v5 = *(v25 + 36) + v8;
  v6 = *(v25 + 28) + v9;
  if (v24[8] <= v8)
  {
    while (1)
    {
LABEL_20:
      v19 = 1;
      bed_GoForward(a2, bed_marker_IsAt, &v19);
      result = bed_GoForward(a2, bed_marker_IsOfType, v26);
      if ((result & 0x1FFF) == 0x14)
      {
        v12 = 0;
        v23 = 0;
      }

      else
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        result = bed_GetpElem(a2, 0xFFFFu, &v23);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        v12 = v23;
        if (v23)
        {
          v13 = v23[8];
          v14 = v23[6];
          goto LABEL_27;
        }
      }

      v13 = v5;
      v14 = v6;
LABEL_27:
      v15 = v24[9];
      v16 = v15 + v24[8];
      if (v13 > v16)
      {
        v17 = v24[7];
        *&v21[8] = v17 + v24[6];
        *&v21[12] = v14 - (v17 + v24[6]);
        *&v21[16] = v16;
        *&v21[20] = v13 - (v15 + v24[8]);
        result = bed_marker_InjectFixedRefMarker(a2, &v20);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        if (!v23)
        {
          goto LABEL_12;
        }

        result = bed_GetpElem(a2, 0xFFFFu, &v23);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        v12 = v23;
      }

      result = 0;
      v24 = v12;
      if (!v12)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_8:
  result = bed_marker_InjectFixedRefMarker(a2, &v20);
  if ((result & 0x80000000) == 0)
  {
    if (!v24)
    {
LABEL_12:
      result = 0;
      goto LABEL_33;
    }

    result = bed_GetpElem(a2, 0xFFFFu, &v24);
    if ((result & 0x80000000) == 0)
    {
      if (v24)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

LABEL_33:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t utois_AlignMarkers(uint64_t a1)
{
  v24 = 0;
  result = datac_RequestBlock(a1, 1021, 1u, &v24);
  if ((result & 0x80000000) == 0)
  {
    v2 = *(v24 + 16);
    if (*(v24 + 16))
    {
      v3 = *(v24 + 8);
      if (*(v3 + 20) == 0x4000 && v2 != 1)
      {
        v5 = 1;
        do
        {
          v6 = (v3 + (v5 << 6));
          if (v6[5] == 7 && v6[10] == 43 && v5 + 1 < v2)
          {
            v8 = (v5 + 1);
            do
            {
              v9 = v3 + (v8 << 6);
              v12 = *(v9 + 32);
              v10 = (v9 + 32);
              v11 = v12;
              v13 = v6[8];
              if (v12 <= v13)
              {
                break;
              }

              if (v11 >= v6[9] + v13)
              {
                break;
              }

              *v10 = v13;
              ++v8;
            }

            while (v8 < v2);
          }

          ++v5;
        }

        while (v5 != v2);
        v14 = 1;
        do
        {
          v15 = v14 + 1;
          if (v15 >= v2 || (v16 = (v3 + (v15 << 6)), v17 = (v3 + (v14 << 6)), *(v16 + 8) >= *(v17 + 8)))
          {
            ++v14;
          }

          else
          {
            v14 = 0;
            v18 = *v16;
            v19 = v16[1];
            v20 = v16[2];
            v21 = v16[3];
            v22 = v17[1];
            *v16 = *v17;
            v16[1] = v22;
            v23 = v17[3];
            v16[2] = v17[2];
            v16[3] = v23;
            v25 = v18;
            v26 = v19;
            v27 = v20;
            v28 = v21;
            *v17 = v18;
            v17[1] = v19;
            v17[2] = v20;
            v17[3] = v21;
          }
        }

        while (v14 < v2);
      }
    }
  }

  return result;
}

uint64_t sysdct_char_LookUp(void *a1, uint64_t a2, void *a3, _WORD *a4, int a5, uint64_t a6, const char *a7)
{
  LOBYTE(__c) = 0;
  v41 = 0;
  v40 = 0;
  v37 = (*(*a1 + 96))(a1[1], a1[2], "char", a2, &v41, &v40, &__c);
  if ((v37 & 0x80000000) != 0 || !v40)
  {
    return v37;
  }

  v9 = 0;
  v10 = "normal";
  while (1)
  {
    v11 = *(v41 + 8 * v9);
    v12 = strchr(v11, __c);
    v13 = strlen(v11);
    if (v12)
    {
      *v12 = 0;
    }

    v14 = strlen(v11);
    v15 = v14;
    if (v13 <= (v14 + 1))
    {
      v16 = 0;
      v19 = v14 + 1;
    }

    else
    {
      v16 = (*(v41 + 8 * v9) + (v14 + 1));
      v17 = strchr(v16, __c);
      if (v17)
      {
        *v17 = 0;
      }

      v18 = strlen(v16);
      v19 = v18 ? v15 + v18 + 2 : v15 + 2;
    }

    if (v13 <= v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = (*(v41 + 8 * v9) + v19);
      v21 = strchr(v20, __c);
      if (v21)
      {
        *v21 = 0;
      }

      v22 = strlen(v20);
      if (v22)
      {
        v19 += v22 + 1;
      }

      else
      {
        ++v19;
      }
    }

    if (v13 <= v19)
    {
      goto LABEL_35;
    }

    v23 = *(v41 + 8 * v9);
    v24 = (v23 + v19);
    v25 = strchr(v24, __c);
    if (v25)
    {
      *v25 = 0;
    }

    if (v23)
    {
      v39 = v16;
      v26 = a6;
      v27 = v10;
      v28 = (v23 + v19);
      do
      {
        v29 = strchr(v28, 44);
        v30 = v29;
        if (v29)
        {
          *v29 = 0;
        }

        v31 = strcmp(v28, a7);
        if (v30)
        {
          v28 = v30 + 1;
        }

        else
        {
          v28 = 0;
        }
      }

      while (v30 && v31);
      v32 = v31 == 0;
      if (!v31)
      {
        v32 = 1;
        v10 = v27;
        a6 = v26;
        v16 = v39;
        goto LABEL_39;
      }

      v10 = v27;
      a6 = v26;
      v16 = v39;
      if (*v24)
      {
        goto LABEL_46;
      }
    }

    else
    {
LABEL_35:
      v32 = 0;
    }

    if (strcmp(v10, a7))
    {
      goto LABEL_46;
    }

LABEL_39:
    if (!a5)
    {
      goto LABEL_51;
    }

    if (a6 == 1)
    {
      break;
    }

    if (!a6)
    {
      goto LABEL_49;
    }

LABEL_46:
    if (!v32 && ++v9 < v40)
    {
      continue;
    }

    return v37;
  }

  if (v20 && *v20 != 49 && *v20)
  {
    goto LABEL_46;
  }

LABEL_49:
  if (!v16 || (v33 = strlen(v16)) == 0)
  {
LABEL_51:
    LOWORD(v33) = strlen(v11);
    v16 = v11;
  }

  *a4 = v33;
  memmove(a3, v16, v33 + 1);
  return v37;
}

uint64_t sysdct_wpcrf_LookUp_Chinese(void *a1, uint64_t a2, int a3, char *a4, char *a5, _BOOL4 *a6)
{
  __c = 0;
  v44 = 0;
  __memcpy_chk();
  __c_1[a3] = 0;
  v45 = 0;
  v11 = (*(*a1 + 96))(a1[1], a1[2], "wpcrf", __c_1, &v44, &v45, &__c);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v45;
    if (v45)
    {
      v13 = v44;
      v14 = __c;
      while (1)
      {
        v15 = *v13;
        v16 = strchr(*v13, v14);
        if (v16)
        {
          break;
        }

        ++v13;
        if (!--v12)
        {
          return v11;
        }
      }

      v24 = v16;
      v25 = v16 - v15;
      if (v16 == v15 && v25 < 1)
      {
        a5 = __c_1;
      }

      else
      {
        if (v25 < 0)
        {
          LODWORD(v25) = v15 - v16;
        }

        strncat(a5, v15, v25);
      }

      strcat(a4, a5);
      v27 = v24 + 1;
      v28 = strchr(v24 + 1, __c);
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = __c;
        do
        {
          *&a4[strlen(a4)] = 32;
          v32 = v29 - v27;
          if (v29 - v27 < 0)
          {
            v32 = v27 - v29;
          }

          v33 = v32;
          strncat(a4, v27, v32);
          if (!v30)
          {
            v34 = v33 == 1 && *v27 == 49;
            *a6 = v34;
          }

          v27 = v29 + 1;
          v29 = strchr(v29 + 1, v31);
          --v30;
        }

        while (v29);
      }
    }

    else
    {
      v17 = (*(*a1 + 96))(a1[1], a1[2], "wpcrf", "NULL", &v44, &v45, &__c);
      v11 = 2370838548;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = v45;
        if (v45)
        {
          v19 = v17;
          v20 = v44;
          v21 = __c;
          while (1)
          {
            v22 = *v20;
            v23 = strchr(*v20, v21);
            if (v23)
            {
              break;
            }

            ++v20;
            if (!--v18)
            {
              return v19;
            }
          }

          v35 = v23;
          v36 = v23 - v22;
          if (v23 == v22 && v36 < 1)
          {
            a5 = __c_1;
          }

          else
          {
            if (v36 < 0)
            {
              LODWORD(v36) = v22 - v23;
            }

            strncat(a5, v22, v36);
          }

          strcat(a4, a5);
          v38 = v35 + 1;
          v39 = strchr(v35 + 1, __c);
          if (v39)
          {
            v40 = v39;
            v41 = __c;
            do
            {
              *&a4[strlen(a4)] = 32;
              v42 = v40 - v38;
              if (v40 - v38 < 0)
              {
                v42 = v38 - v40;
              }

              strncat(a4, v38, v42);
              v38 = v40 + 1;
              v40 = strchr(v40 + 1, v41);
            }

            while (v40);
          }

          return v19;
        }
      }
    }
  }

  return v11;
}

uint64_t sysdct_wpdummy_LookUp_Chinese(void *a1, uint64_t a2, int a3, char *a4, char *a5, _BOOL4 *a6)
{
  __c = 0;
  v44 = 0;
  __memcpy_chk();
  __c_1[a3] = 0;
  v45 = 0;
  v11 = (*(*a1 + 96))(a1[1], a1[2], "dummymap", __c_1, &v44, &v45, &__c);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v45;
    if (v45)
    {
      v13 = v44;
      v14 = __c;
      while (1)
      {
        v15 = *v13;
        v16 = strchr(*v13, v14);
        if (v16)
        {
          break;
        }

        ++v13;
        if (!--v12)
        {
          return v11;
        }
      }

      v24 = v16;
      v25 = v16 - v15;
      if (v16 == v15 && v25 < 1)
      {
        a5 = __c_1;
      }

      else
      {
        if (v25 < 0)
        {
          LODWORD(v25) = v15 - v16;
        }

        strncat(a5, v15, v25);
      }

      strcat(a4, a5);
      v27 = v24 + 1;
      v28 = strchr(v24 + 1, __c);
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = __c;
        do
        {
          *&a4[strlen(a4)] = 32;
          v32 = v29 - v27;
          if (v29 - v27 < 0)
          {
            v32 = v27 - v29;
          }

          v33 = v32;
          strncat(a4, v27, v32);
          if (!v30)
          {
            v34 = v33 == 1 && *v27 == 49;
            *a6 = v34;
          }

          v27 = v29 + 1;
          v29 = strchr(v29 + 1, v31);
          --v30;
        }

        while (v29);
      }
    }

    else
    {
      v17 = (*(*a1 + 96))(a1[1], a1[2], "dummymap", "NULL", &v44, &v45, &__c);
      v11 = 2370838548;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = v45;
        if (v45)
        {
          v19 = v17;
          v20 = v44;
          v21 = __c;
          while (1)
          {
            v22 = *v20;
            v23 = strchr(*v20, v21);
            if (v23)
            {
              break;
            }

            ++v20;
            if (!--v18)
            {
              return v19;
            }
          }

          v35 = v23;
          v36 = v23 - v22;
          if (v23 == v22 && v36 < 1)
          {
            a5 = __c_1;
          }

          else
          {
            if (v36 < 0)
            {
              LODWORD(v36) = v22 - v23;
            }

            strncat(a5, v22, v36);
          }

          strcat(a4, a5);
          v38 = v35 + 1;
          v39 = strchr(v35 + 1, __c);
          if (v39)
          {
            v40 = v39;
            v41 = __c;
            do
            {
              *&a4[strlen(a4)] = 32;
              v42 = v40 - v38;
              if (v40 - v38 < 0)
              {
                v42 = v38 - v40;
              }

              strncat(a4, v38, v42);
              v38 = v40 + 1;
              v40 = strchr(v40 + 1, v41);
            }

            while (v40);
          }

          return v19;
        }
      }
    }
  }

  return v11;
}

uint64_t sysdct_char_LookUp_Chinese(void *a1, unsigned __int8 *a2, void *a3, _WORD *a4, int a5, uint64_t a6, const char *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = utf8_determineUTF8CharLength(*a2);
  __memcpy_chk();
  v16[v13] = 0;
  *a4 = 0;
  result = sysdct_char_LookUp(a1, v16, a3, a4, a5, a6, a7);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sysdct_char_LookUp_Thai(void *a1, uint64_t a2, int a3, void *a4, _WORD *a5, int a6, uint64_t a7, const char *a8)
{
  v18 = *MEMORY[0x1E69E9840];
  __strcpy_chk();
  v17[a3] = 0;
  *a5 = 0;
  if (!a7 && a6 == 1 && v17[0] == 32)
  {
    v17[0] = -80;
  }

  result = sysdct_char_LookUp(a1, v17, a4, a5, a6, a7, a8);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getDictSolution(unsigned int a1, uint64_t a2, int __c, void *a4, unsigned __int16 *a5, const char *a6)
{
  v6 = a5;
  if (!a1)
  {
LABEL_24:
    *v6 = 0;
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = strchr(*(a2 + 8 * v14), __c);
    if (!v15)
    {
      v13 = 0;
      goto LABEL_26;
    }

    *v15 = 0;
    v16 = v15 + 1;
    if (!v15[1])
    {
      v17 = strcmp("normal", a6);
      if (!v17)
      {
        v13 = v14;
      }

      if (!v11)
      {
        v12 = v14;
      }

      v11 = 1;
      if (!v17)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v18 = strchr(v16, 44);
      v19 = v18;
      if (v18)
      {
        *v18 = 0;
      }

      v20 = strcmp(v16, a6);
      if (!v20)
      {
        v13 = v14;
      }

      if (v19)
      {
        v16 = v19 + 1;
      }

      else
      {
        v16 = 0;
      }
    }

    while (v19 && v20);
    ++v14;
  }

  while (a1 > v14 && v20);
  if (!v20)
  {
LABEL_26:
    v21 = *(a2 + 8 * v13);
    v25 = strlen(v21);
    *a5 = v25;
    v23 = v25 + 1;
    v24 = a4;
    goto LABEL_27;
  }

  v6 = a5;
  if (v11 != 1)
  {
    goto LABEL_24;
  }

  v21 = *(a2 + 8 * v12);
  v22 = strlen(v21);
  *a5 = v22;
  v23 = v22 + 1;
  v24 = a4;
LABEL_27:
  memmove(v24, v21, v23);
  return 0;
}

uint64_t getDictBackTransSolution(void *a1, const char *a2, unsigned int a3, uint64_t a4, int __c, char *a6, unsigned __int16 *a7, const char *a8)
{
  v8 = a7;
  v61 = *MEMORY[0x1E69E9840];
  __c_1 = 0;
  __ca = 0;
  v55 = 0;
  v60[0] = 0;
  v59[0] = 0;
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    __s = 0;
    v16 = 0;
    v17 = 0;
    v52 = a3;
    while (1)
    {
      v18 = *(a4 + 8 * v12);
      if (v18)
      {
        v19 = 0;
        do
        {
          v20 = strchr(v18, __c);
          if (!v20)
          {
            break;
          }

          *v20 = 0;
          v18 = v20 + 1;
          switch(v19)
          {
            case 1u:
              v16 = v18;
              break;
            case 3u:
              __s = v18;
              break;
            case 7u:
              v15 = v18;
              if (v16)
              {
                goto LABEL_15;
              }

              goto LABEL_47;
          }
        }

        while (v19++ < 7);
      }

      if (v16)
      {
LABEL_15:
        if (*v16 && !strstr(v16, a8))
        {
          __s = 0;
          v16 = 0;
        }

        else
        {
          if (__s)
          {
            v22 = strchr(__s, 33);
            if (v22)
            {
              v23 = v22;
              *v22 = 0;
              while (1)
              {
                v24 = strchr(v23 + 1, 92);
                v25 = v24;
                if (v24)
                {
                  *v24 = 0;
                }

                v26 = strchr(v23 + 1, 40);
                if (v26)
                {
                  *v26 = 0;
                }

                *a6 = 0;
                strcat(a6, "backtrans_");
                strcat(a6, v23 + 1);
                __c_1 = -1;
                __ca = 0;
                v55 = 0;
                v17 = (*(*a1 + 96))(a1[1], a1[2], "fecfg", a6, &v55, &__c_1, &__ca);
                if ((v17 & 0x80000000) != 0)
                {
                  break;
                }

                if (__c_1)
                {
                  v27 = strchr(*v55, __ca);
                  if (v27)
                  {
                    *v27 = 0;
                    v28 = *v55;
                  }

                  __strcat_chk();
                }

                v23 = v25;
                if (!v25)
                {
                  goto LABEL_30;
                }
              }

              *a7 = 0;
              goto LABEL_54;
            }

LABEL_30:
            __strcat_chk();
          }

          if (*v16)
          {
            v14 = 1;
            if (strstr(v16, a8) && v15)
            {
LABEL_37:
              v50 = v15;
              v29 = atoi(v15);
              v30 = strlen(a2);
              if (v30)
              {
                v47 = v29;
                v48 = v13;
                v31 = 0;
                v32 = 0;
                do
                {
                  v33 = v32;
                  v34 = utf8_determineUTF8CharLength(a2[v31]);
                  v32 = v33 + 1;
                  v31 = (v34 + v31);
                }

                while (v31 < v30);
                v29 = v47;
                v35 = v47 >> 1;
                if ((v47 & 0xFFFE) == 0)
                {
                  v35 = 1;
                }

                if (!v33)
                {
                  v29 = v35;
                }

                v13 = v48;
              }

              v13 += v29;
              v14 = 1;
              v15 = v50;
            }
          }

          else
          {
            if (v15)
            {
              goto LABEL_37;
            }

            v14 = 1;
          }
        }
      }

      else
      {
LABEL_47:
        __s = 0;
      }

      if (++v12 == v52)
      {
        if (v14 && v13)
        {
          v38 = v13;
          v39 = a2;
          v40 = strlen(a2);
          v8 = a7;
          v41 = *a7;
          if (v40 + strlen(v60) + 5 < v41)
          {
            __c_3[0] = 0;
            __sprintf_chk(__c_3, 0, 0x80uLL, "%d", v38);
            v42 = strlen(a2);
            *a7 = v42;
            memmove(a6, a2, v42 + 1);
            *&a6[strlen(a6)] = 92;
            ++*a7;
            strcat(a6, v60);
            *a7 += strlen(v60);
            *&a6[strlen(a6)] = 92;
            ++*a7;
            strcat(a6, __c_3);
            v43 = __c_3;
LABEL_63:
            *v8 += strlen(v43);
            goto LABEL_54;
          }
        }

        else
        {
          v8 = a7;
          if (!v14)
          {
            goto LABEL_53;
          }

          v41 = *a7;
          v39 = a2;
        }

        v44 = strlen(v39);
        v45 = strlen(v60);
        if (v44 + v45 + strlen(v59) + 3 >= v41)
        {
          goto LABEL_53;
        }

        *v8 = v44;
        memmove(a6, v39, v44 + 1);
        *&a6[strlen(a6)] = 92;
        ++*v8;
        strcat(a6, v60);
        *v8 += strlen(v60);
        *&a6[strlen(a6)] = 92;
        ++*v8;
        strcat(a6, v59);
        v43 = v59;
        goto LABEL_63;
      }
    }
  }

  v17 = 0;
LABEL_53:
  *v8 = 0;
LABEL_54:
  v36 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sysdct_word_LookUp(void *a1, const char *a2, _BYTE *a3, unsigned __int16 *a4, const char *a5)
{
  __c[0] = 0;
  v15 = 0;
  v14 = 0;
  *a3 = 0;
  if (!*(a1 + 8))
  {
    result = *(a1 + 12);
    if (!*(a1 + 12))
    {
      return result;
    }

    if (result == 1)
    {
      strcpy(&__c[1], "word");
      v14 = 0;
      result = (*(*a1 + 96))(a1[1], a1[2], &__c[1], a2, &v15, &v14, __c);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v11 = v14;
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      v12 = 0;
      while (1)
      {
        strcpy(&__c[1], "word");
        LH_itoa(v12, v13, 0xAu);
        __strcat_chk();
        v14 = 0;
        result = (*(*a1 + 96))(a1[1], a1[2], &__c[1], a2, &v15, &v14, __c);
        if ((result & 0x80000000) == 0)
        {
          v11 = v14;
          if (v14)
          {
            break;
          }
        }

        if (++v12 >= *(a1 + 12))
        {
          return result;
        }
      }
    }

    getDictSolution(v11, v15, __c[0], a3, a4, a5);
    return 0;
  }

  result = (*(*a1 + 240))(a1[1], a1[2], "g2p", a2, &v15, &v14, __c, *(a1 + 24), 0);
  if ((result & 0x80000000) == 0)
  {
    if (v14)
    {
      return getDictBackTransSolution(a1, a2, v14, v15, __c[0], a3, a4, a5);
    }
  }

  return result;
}

uint64_t sysdct_word_LookUp_Chinese(void *a1, uint64_t a2, int a3, _BYTE *a4, unsigned __int16 *a5, const char *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  __memcpy_chk();
  v13[a3] = 0;
  result = sysdct_word_LookUp(a1, v13, a4, a5, a6);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sysdct_word_LookUp_Thai(void *a1, uint64_t a2, int a3, _BYTE *a4, unsigned __int16 *a5, const char *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  __strcpy_chk();
  v13[a3] = 0;
  result = sysdct_word_LookUp(a1, v13, a4, a5, a6);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wordm_sysdct_CharLookup_Chinese(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, const char *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    *(a4 + 4) = 0u;
    v14 = a4 + 4;
    *a4 = 0;
    *(a4 + 20) = 0u;
    *(a4 + 36) = 0u;
    *(a4 + 52) = 0u;
    *(a4 + 68) = 0;
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    *(a4 + 76) = 0u;
    v15 = a4 + 76;
    *(a4 + 92) = 0u;
    *(a4 + 108) = 0u;
    *(a4 + 124) = 0u;
    *(a4 + 140) = 0u;
    *(a4 + 156) = 0u;
    *(a4 + 172) = 0u;
    *(a4 + 188) = 0u;
    *(a4 + 204) = 0u;
    *(a4 + 220) = 0u;
    *(a4 + 236) = 0u;
    *(a4 + 252) = 0u;
    *(a4 + 332) = 0;
    *(a4 + 268) = 0u;
    *(a4 + 284) = 0u;
    *(a4 + 300) = 0u;
    *(a4 + 316) = 0u;
    if (a3 >= 0x40)
    {
      v16 = 64;
    }

    else
    {
      v16 = a3;
    }

    *(a4 + 334) = 0;
    __memmove_chk();
    __s[v16] = 0;
    if (a3)
    {
      if (v16 > a5)
      {
        __s[a5] = 0;
      }

      v17 = strlen(__s);
      if (utf8_ToLower(__s, 0, &v28) || utf8_BelongsToSet(0, __s, 0, v17) == 1 || utf8_BelongsToSet(6u, __s, 0, v17) == 1 || utf8_BelongsToSet(7u, __s, 0, v17) == 1 || utf8_BelongsToSet(0xAu, __s, 0, v17) == 1)
      {
        v18 = 3;
      }

      else if (utf8_BelongsToSet(0xCu, __s, 0, v17) == 1)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      *a4 = v18;
      v19 = utf8_determineUTF8CharLength(__s[0]);
      memmove((a4 + 4), __s, v19);
      __s[v19] = 0;
      *(v14 + v19) = 0;
      *(a4 + 70) = v19;
      v28 = 256;
      if (sysdct_char_LookUp_Chinese(a1, __s, (a4 + 76), &v28, 1, a6, a7) || (v20 = v28) == 0)
      {
        result = 0;
        *a4 = 0;
      }

      else
      {
        result = 0;
        *(v15 + v28) = 0;
        *(a4 + 334) = v20;
        if (*(a4 + 76) == 35)
        {
          v21 = atoi((a4 + 77));
          result = 0;
          *(a4 + 76) = v21;
          *(a4 + 77) = 0;
          *(a4 + 334) = 1;
        }
      }
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = v22;
        v24 = a2[v22++];
      }

      while (v24 == 32);
      memmove((a4 + 4), a2, v23);
      result = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wordm_sysdct_CharLookup_Thai(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, const char *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    *(a4 + 4) = 0u;
    *a4 = 0;
    *(a4 + 20) = 0u;
    *(a4 + 36) = 0u;
    *(a4 + 52) = 0u;
    *(a4 + 68) = 0;
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    *(a4 + 76) = 0u;
    *(a4 + 92) = 0u;
    *(a4 + 108) = 0u;
    *(a4 + 124) = 0u;
    *(a4 + 140) = 0u;
    *(a4 + 156) = 0u;
    *(a4 + 172) = 0u;
    *(a4 + 188) = 0u;
    *(a4 + 204) = 0u;
    *(a4 + 220) = 0u;
    *(a4 + 236) = 0u;
    *(a4 + 252) = 0u;
    *(a4 + 332) = 0;
    *(a4 + 268) = 0u;
    *(a4 + 284) = 0u;
    *(a4 + 300) = 0u;
    *(a4 + 316) = 0u;
    if (a3 >= 0x40)
    {
      v14 = 64;
    }

    else
    {
      v14 = a3;
    }

    *(a4 + 334) = 0;
    __memmove_chk();
    v24[v14] = 0;
    if (a3)
    {
      if (v14 > a5)
      {
        v24[a5] = 0;
      }

      v15 = v24[0];
      if (v24[0] < 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      *a4 = v16;
      *(a4 + 4) = v15;
      *(a4 + 5) = 0;
      *(a4 + 70) = 1;
      v23 = 256;
      if (sysdct_char_LookUp_Thai(a1, v24, 1, (a4 + 76), &v23, 1, a6, a7) || (v17 = v23) == 0)
      {
        result = 0;
        *a4 = 0;
      }

      else
      {
        result = 0;
        *(a4 + 76 + v23) = 0;
        *(a4 + 334) = v17;
      }
    }

    else
    {
      v18 = 0;
      do
      {
        v19 = v18;
        v20 = a2[v18++];
      }

      while (v20 == 32);
      memmove((a4 + 4), a2, v19);
      result = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wordm_mapt2s(void *a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = (a2 + v6);
      v16 = 7549556;
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v8 = utf8_determineUTF8CharLength(*v7);
      __memmove_chk();
      v17[v8] = 0;
      v9 = (*(*a1 + 96))(a1[1], a1[2], &v16, v17, &v14, &v13, &v15);
      if ((v9 & 0x80000000) == 0)
      {
        if (v13)
        {
          v10 = utf8_determineUTF8CharLength(**v14);
          if (v10 == v8)
          {
            memmove((a2 + v6), *v14, v10);
          }
        }
      }

      v6 += utf8_determineUTF8CharLength(*v7);
    }

    while (v6 < a3 && (v9 & 0x80000000) == 0);
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t GetInDomainSegmentation(uint64_t a1, void *a2, uint64_t a3, __int16 a4, __int16 a5, __int16 a6, char *__s, uint64_t *a8, __int16 *a9, __int16 a10, int a11, unsigned __int8 a12)
{
  v55 = *MEMORY[0x1E69E9840];
  v18 = 2350915594;
  v19 = *a8;
  v20 = *(a1 + 8);
  v21 = strlen(__s);
  v22 = heap_Calloc(v20, 1, (v21 + 1));
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = v22;
  strcpy(v22, __s);
  v24 = a5 - a4;
  v25 = a6 - a4;
  if (v24 >= (a6 - a4))
  {
    v26 = 0;
    goto LABEL_24;
  }

  v26 = 0;
  while (1)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
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
    v38 = 0u;
    memset(v37, 0, sizeof(v37));
    if (a11 == 1)
    {
      v26 = wordm_sysdct_Lookup_Thai(a2, (a3 + v24), v37, 0x16u, v23);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (LODWORD(v37[0]) != 5 && LODWORD(v37[0]) != 2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (a11)
      {
        goto LABEL_18;
      }

      v26 = wordm_sysdct_Lookup_Chinese(a2, (a3 + v24), (a10 - v24), v37, a12, v23);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (LODWORD(v37[0]) > 5 || ((1 << SLOBYTE(v37[0])) & 0x34) == 0)
      {
        goto LABEL_18;
      }
    }

    if (*a9)
    {
      v27 = heap_Realloc(*(a1 + 8), v19, 340 * *a9 + 341);
      if (!v27)
      {
        break;
      }

      v19 = v27;
      goto LABEL_17;
    }

    v19 = heap_Calloc(*(a1 + 8), 1, 341);
    if (!v19)
    {
      break;
    }

LABEL_17:
    *(v19 + 340 * *a9) = v24;
    v28 = v19 + 340 * *a9;
    __strcpy_chk();
    *(v19 + 340 * *a9 + 74) = WORD3(v38);
    v29 = v19 + 340 * *a9;
    __strcpy_chk();
    *(v19 + 340 * *a9 + 338) = HIWORD(v54);
    v30 = *a9;
    v31 = v19 + 340 * *a9;
    v32 = DWORD2(v38);
    *(v31 + 4) = v37[0];
    *(v31 + 76) = v32;
    *a9 = v30 + 1;
LABEL_18:
    if (WORD3(v38))
    {
      v24 += WORD3(v38);
    }

    else
    {
      v24 = v25;
    }

    if (v24 >= v25)
    {
      goto LABEL_24;
    }
  }

  v26 = 2350915594;
LABEL_24:
  heap_Free(*(a1 + 8), v23);
  *a8 = v19;
  v18 = v26;
LABEL_25:
  v33 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t getDomainSegmentations(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, __int16 *a8, int a9, unsigned __int8 a10)
{
  v49 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  MarkerArgStr = marker_getMarkerArgStr(1u);
  v19 = bed_GetpElem(a5, 0, &v46);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v19 = bed_GetpElem(a5, 0xFFFFu, &v47);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v44 = a1;
  *v45 = a4;
  v20 = *(v47 + 32);
  v21 = *(v46 + 32);
  v19 = bed_GetpElem(a5, 0, &v49);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v22 = bed_GetcElem(a5, &v48);
  if ((v22 & 0x80000000) == 0)
  {
    v42 = v20 - v21;
    v23 = v48;
    if (v48)
    {
      v24 = 0;
      v25 = (v49 + 40);
      while (*(v25 - 2) <= *(v47 + 32))
      {
        if (*(v25 - 5) == 21)
        {
          MarkerArgStr = (*(a6 + 8) + *v25);
        }

        ++v24;
        v25 += 16;
        if (v48 == v24)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v24) = v24;
    }

    else
    {
      LODWORD(v24) = 0;
    }

    if (v24 >= v48)
    {
LABEL_24:
      v26 = *v45 + v42;
      v35 = v42;
    }

    else
    {
      v38 = a2;
      v39 = a3;
      v40 = a8;
      v41 = a7;
      v26 = *v45 + v42;
      v27 = v49;
      v28 = v46;
      v29 = v24 << 6;
      LOWORD(v43) = v42;
      v30 = v24;
      do
      {
        v31 = *(v28 + 32);
        v32 = (*(v27 + v29 + 32) - v31);
        if (v26 < (*(v27 + v29 + 32) - v31))
        {
          break;
        }

        if (*(v27 + v29 + 20) == 21)
        {
          v33 = *(v27 + v29 + 40);
          if (strcmp(MarkerArgStr, (*(a6 + 8) + v33)))
          {
            v34 = marker_getMarkerArgStr(1u);
            if (strcmp(MarkerArgStr, v34))
            {
              v22 = GetInDomainSegmentation(v44, v38, v39, v42, v43, *(v49 + v29 + 32) - *(v46 + 32), MarkerArgStr, v41, v40, v45[0], a9, a10);
              if ((v22 & 0x80000000) != 0)
              {
                return v22;
              }
            }

            MarkerArgStr = (*(a6 + 8) + v33);
            v27 = v49;
            v28 = v46;
            v43 = *(v49 + v29 + 32) - *(v46 + 32);
            v23 = v48;
          }
        }

        ++v30;
        v29 += 64;
      }

      while (v30 < v23);
      a8 = v40;
      a7 = v41;
      a2 = v38;
      a3 = v39;
      v35 = v43;
    }

    if (v26 >= v35)
    {
      v36 = marker_getMarkerArgStr(1u);
      if (strcmp(MarkerArgStr, v36))
      {
        return GetInDomainSegmentation(v44, a2, a3, v42, v35, v26, MarkerArgStr, a7, a8, v45[0], a9, a10);
      }
    }
  }

  return v22;
}

uint64_t DoTHTLatin(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned int a4, char **a5)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v7 = wordm_sysdct_CharLookup_Thai(a2, a3, a4, v12, 0x16u, 0, "normal");
  if (!v7)
  {
    v8 = strlen(&v12[4] + 12);
    v9 = heap_Alloc(*(a1 + 8), (v8 + 3));
    *a5 = v9;
    if (v9)
    {
      strcpy(v9, &v12[4] + 12);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t DoMaxWords(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, int a15, unsigned __int8 a16)
{
  v22 = a1;
  v23 = a14;
  v114 = *MEMORY[0x1E69E9840];
  v112 = 0;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  v108 = 0;
  *(a14 + 8) = 0;
  *(v23 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v25 = LogLevel > 4;
  DomainSegmentations = bed_GetpElem(a7, 0xFFFFu, &v111);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

  v103 = a8;
  v101 = a15;
  if (a5 && a5 != *(v111 + 36))
  {
    *(v23 + 16) = 0;
  }

  v30 = a16;
  *(v23 + 16);
  log_OutText(*(v22 + 32), a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", v27, v28, v29, a5);
  UTOITrace(v25, v22, a6, a7, "START of normalization");
  if (v101 == 1 && (DomainSegmentations = getDomainSegmentations(v22, a3, a4, a5, a7, a10, &v109, &v108, 0, v30), (DomainSegmentations & 0x80000000) != 0))
  {
LABEL_79:
    v84 = DomainSegmentations;
  }

  else
  {
    v104 = v30;
    v31 = v103;
    if (a5)
    {
      v95 = a2;
      v94 = a6;
      v32 = 0;
      LOWORD(a6) = 0;
      v99 = 0;
      v33 = 0;
      v102 = a12;
      v96 = a11;
      v100 = a13;
      v97 = v22;
      v98 = v23;
      v34 = v104;
      do
      {
        memset(__dst, 0, sizeof(__dst));
        if (v101 == 1 && v108 > a6)
        {
          v35 = 0;
          a6 = a6;
          v36 = (v109 + 340 * a6);
          while (1)
          {
            v37 = *v36;
            if (v37 > v33)
            {
              break;
            }

            v36 += 170;
            if (v37 == v33)
            {
              v35 = a6;
            }

            ++a6;
            if (v37 == v33 || a6 >= v108)
            {
              if (v37 == v33)
              {
                memcpy(__dst, (v109 + 340 * v35 + 4), sizeof(__dst));
                goto LABEL_24;
              }

              break;
            }
          }

          v34 = v104;
        }

        v42 = wordm_sysdct_Lookup_Chinese(a3, &a4[v33], (a5 - v33), __dst, v34, "normal");
        if ((v42 & 0x80000000) != 0)
        {
LABEL_80:
          v45 = 0;
LABEL_81:
          v84 = v42;
          goto LABEL_96;
        }

LABEL_24:
        if (LODWORD(__dst[0]) <= 5 && ((1 << SLOBYTE(__dst[0])) & 0x34) != 0)
        {
          if (v100)
          {
            v42 = bed_Insert(v31, &szWORD_BEG_0, 1);
            if ((v42 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            ++*v102;
          }

          v43 = strlen(&__dst[4] + 12) + 1;
          v44 = heap_Alloc(*(v22 + 8), v43);
          if (!v44)
          {
            v84 = 2350915594;
            goto LABEL_100;
          }

          v45 = v44;
          bzero(v44, v43);
          strcpy(v45, &__dst[4] + 12);
          v46 = strlen(&__dst[4] + 12);
          v42 = bed_Insert(v103, v45, v46);
          if ((v42 & 0x80000000) != 0)
          {
            goto LABEL_81;
          }

          *v102 += strlen(&__dst[4] + 12);
          heap_Free(*(v22 + 8), v45);
          if (v100)
          {
            v42 = bed_Insert(v103, &szWORD_END_1, 1);
            if ((v42 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            ++*v102;
          }

          v42 = bed_GetcElem(v103, &v112);
          if ((v42 & 0x80000000) != 0)
          {
            goto LABEL_80;
          }

          v47 = *(a3 + 32);
          v48 = a10;
          v49 = &__dst[4] + 6;
          if (v47)
          {
            v49 = &__dst[20] + 14;
          }

          if (*(a10 + 18) < (*(a10 + 16) + 4 * *v49 + 5))
          {
            v42 = datac_RequestBlock(a9, v96, (*(a10 + 16) + 4 * *v49 + 5), &a10);
            if ((v42 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            v48 = a10;
            v47 = *(a3 + 32);
          }

          v50 = *(v48 + 8);
          v51 = *(v48 + 16);
          v52 = *(v48 + 2);
          v53 = v50 + v52 * v51;
          v107 = 0;
          v106 = 0;
          if (v47)
          {
            v54 = HIWORD(__dst[20]);
            v55 = (v50 + v52 * v51);
            if (HIWORD(__dst[20]))
            {
              NextUtf8Offset = 0;
              v55 = (v50 + v52 * v51);
              do
              {
                if (*(&__dst[4] + NextUtf8Offset + 12) == 92)
                {
                  break;
                }

                WCharFromUtf8 = utf8_GetWCharFromUtf8(&__dst[4] + 12, NextUtf8Offset, v54);
                LH_itoa(WCharFromUtf8, &v106, 0x10u);
                *v55 = HIWORD(v106);
                v55[1] = v106;
                v55 += 2;
                NextUtf8Offset = utf8_GetNextUtf8Offset(&__dst[4] + 12, NextUtf8Offset);
                v54 = HIWORD(__dst[20]);
              }

              while (HIWORD(__dst[20]) > NextUtf8Offset);
            }
          }

          else
          {
            v55 = (v50 + v52 * v51);
            if (WORD3(__dst[4]))
            {
              v59 = 0;
              v55 = (v50 + v52 * v51);
              do
              {
                v60 = v59 + v32;
                if (v59 + v32 >= a5)
                {
                  break;
                }

                v61 = utf8_GetWCharFromUtf8(a4, v59 + v32, a5);
                LH_itoa(v61, &v106, 0x10u);
                *v55 = HIWORD(v106);
                v55[1] = v106;
                v55 += 2;
                v59 = (utf8_GetNextUtf8Offset(a4, v60) - v32);
              }

              while (v59 < WORD3(__dst[4]));
            }
          }

          v58 = 0;
          *v55 = 0;
          *(a10 + 16) += v55 - v53 + 1;
          v22 = v97;
          v23 = v98;
          v31 = v103;
        }

        else
        {
          log_OutText(*(v22 + 32), v95, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v39, v40, v41, v32);
          v58 = 1;
        }

        v34 = v104;
        if (*(v23 + 16) == 1)
        {
          v62 = *(v23 + 8);
          v63 = *v23;
          if (v62 >= *(v23 + 10))
          {
            v64 = heap_Realloc(*(v22 + 8), v63, 12 * *(v23 + 10) + 121);
            if (!v64)
            {
              v45 = 0;
              v84 = 2350915594;
              goto LABEL_96;
            }

            v63 = v64;
            *v23 = v64;
            *(v23 + 10) += 10;
            v62 = *(v23 + 8);
            v34 = v104;
          }

          v65 = v62;
          v66 = v63 + 12 * v62;
          *v66 = v99;
          *(v66 + 2) = 0;
          v67 = WORD3(__dst[4]);
          if (v58)
          {
            *(v63 + 12 * v65 + 4) = 1;
            v34 = v104;
          }

          v99 += v67;
          *(v23 + 8) = v65 + 1;
        }

        else
        {
          v67 = WORD3(__dst[4]);
        }

        if (v67)
        {
          v33 += v67;
        }

        else
        {
          v33 = a5;
        }

        v32 = v33;
      }

      while (v33 < a5);
      v68 = bed_GetcElem(v31, &v112);
      if ((v68 & 0x80000000) != 0)
      {
        goto LABEL_83;
      }

      if (v112)
      {
        v25 = LogLevel > 4;
        UTOISubTrace(v25, v22, v31, "replacement string");
        a6 = v94;
        if (*(v23 + 16) != 1)
        {
          goto LABEL_93;
        }

        v68 = bed_GetpElem(v31, 0, &v110);
        if ((v68 & 0x80000000) == 0)
        {
          if (v112)
          {
            v75 = 0;
            v76 = 0;
            v77 = 1;
            v78 = v110;
            do
            {
              if (*(v78 + v75) == 16)
              {
                v79 = *(v23 + 8);
                if (v76 >= v79)
                {
LABEL_86:
                  log_OutText(*(v22 + 32), v95, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v72, v73, v74, v77);
                  v83 = 0;
                  goto LABEL_87;
                }

                v80 = v76;
                v81 = (*v23 + 12 * v76 + 4);
                while (1)
                {
                  v82 = *v81;
                  v81 += 3;
                  if (v82 != 1)
                  {
                    break;
                  }

                  if (v79 == ++v80)
                  {
                    goto LABEL_86;
                  }
                }

                *(*v23 + 12 * v80 + 8) = v75;
                ++v77;
                v76 = v80 + 1;
              }

              ++v75;
            }

            while (v75 < v112);
          }

          v83 = 1;
LABEL_87:
          if (LogLevel >= 5 && *(v98 + 8))
          {
            v85 = 0;
            v86 = 0;
            do
            {
              v87 = (*v98 + v85);
              v92 = v87[4];
              v93 = *(v87 + 1);
              v91 = *v87;
              log_OutText(*(v22 + 32), v95, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v72, v73, v74, v86++);
              v85 += 12;
            }

            while (v86 < *(v98 + 8));
          }

          v31 = v103;
          v23 = v98;
          v25 = LogLevel > 4;
          if (v83)
          {
            *(v98 + 12) = 0;
          }

          goto LABEL_93;
        }

LABEL_83:
        v84 = v68;
        goto LABEL_95;
      }

      log_OutText(*(v22 + 32), v95, 5, 0, "[UTOI] deleting region, no replacement text found", v69, v70, v71, v90);
      a6 = v94;
      v25 = LogLevel > 4;
    }

LABEL_93:
    v84 = utoin_IncrReplaceCurrentRegion(a6, a7, v31, a5, v23);
    if ((v84 & 0x80000000) == 0)
    {
      UTOITrace(v25, v22, a6, a7, "END of normalization");
    }

LABEL_95:
    v45 = 0;
LABEL_96:
    if (v108)
    {
      heap_Free(*(v22 + 8), v109);
      v109 = 0;
    }

    if (v45)
    {
      heap_Free(*(v22 + 8), v45);
    }
  }

LABEL_100:
  v88 = *MEMORY[0x1E69E9840];
  return v84;
}

uint64_t DoSpell(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, unsigned __int8 a12)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v17 = 0;
    for (i = 0; i < a5; v17 = i)
    {
      memset(v30, 0, sizeof(v30));
      v22 = wordm_sysdct_CharLookup_Chinese(a3, (a4 + i), (a5 - i), v30, a12, a11, "normal");
      if ((v22 & 0x80000000) != 0)
      {
        break;
      }

      if ((LODWORD(v30[0]) - 2) > 3)
      {
        log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (utoi position %d len %d not in dict", v19, v20, v21, v17);
      }

      else
      {
        v23 = strlen(&v30[4] + 12) + 3;
        v24 = heap_Alloc(*(a1 + 8), v23);
        if (!v24)
        {
          v22 = 2350915594;
          break;
        }

        v25 = v24;
        bzero(v24, v23);
        if (i)
        {
          strcpy(v25, &v30[4] + 12);
        }

        else
        {
          *v25 = 32;
          strcat(v25, &v30[4] + 12);
        }

        *&v25[strlen(v25)] = 32;
        v26 = strlen(v25);
        v22 = bed_Insert(a6, v25, v26);
        if ((v22 & 0x80000000) != 0)
        {
          heap_Free(*(a1 + 8), v25);
          break;
        }

        heap_Free(*(a1 + 8), v25);
      }

      if (WORD3(v30[4]))
      {
        i += WORD3(v30[4]);
      }

      else
      {
        i = a5;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t DoLatin(uint64_t a1, void *a2, uint64_t a3, int a4, char **a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v14 = 256;
  *__s = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  __strncpy_chk();
  v32[a4] = 0;
  v9 = sysdct_char_LookUp_Chinese(a2, v32, __s, &v14, 0, 0, "normal");
  if ((v9 & 0x80000000) == 0)
  {
    if (v14)
    {
      v10 = strlen(__s);
      v11 = heap_Calloc(*(a1 + 8), 1, (v10 + 1));
      *a5 = v11;
      if (v11)
      {
        strcpy(v11, __s);
      }

      else
      {
        v9 = 2350915594;
      }
    }

    else
    {
      *a5 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t wordm_sysdct_Lookup_Chinese(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, const char *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    v27 = 0;
    memset(v28, 0, sizeof(v28));
    v29 = 0;
    *(a4 + 4) = 0u;
    *a4 = 0;
    *(a4 + 20) = 0u;
    *(a4 + 36) = 0u;
    *(a4 + 52) = 0u;
    *(a4 + 68) = 0;
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    *(a4 + 76) = 0u;
    v10 = (a4 + 76);
    *(a4 + 92) = 0u;
    *(a4 + 108) = 0u;
    *(a4 + 124) = 0u;
    *(a4 + 140) = 0u;
    *(a4 + 156) = 0u;
    *(a4 + 172) = 0u;
    *(a4 + 188) = 0u;
    *(a4 + 204) = 0u;
    *(a4 + 220) = 0u;
    *(a4 + 236) = 0u;
    *(a4 + 252) = 0u;
    *(a4 + 332) = 0;
    *(a4 + 268) = 0u;
    *(a4 + 284) = 0u;
    *(a4 + 300) = 0u;
    *(a4 + 316) = 0u;
    if (a3 >= 0x40)
    {
      v11 = 64;
    }

    else
    {
      v11 = a3;
    }

    *(a4 + 334) = 0;
    if (a3 && a5)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v15 += utf8_determineUTF8CharLength(a2[v15]);
        ++v14;
      }

      while (v11 > v15 && v14 < a5);
      __memmove_chk();
      __src[v15] = 0;
      if (v15)
      {
        *a4 = 2;
        v26 = 256;
        v17 = v15;
        while (1)
        {
          result = sysdct_word_LookUp_Chinese(a1, __src, v17, v28, &v26, a6);
          v18 = v26;
          if (result || v26 != 256)
          {
            break;
          }

          v27 = (v17 - 1);
          utf8_GetPreviousValidUtf8Offset(__src, &v27);
          v17 = v27;
          v18 = 256;
          v26 = 256;
          if ((v27 - 1) >= v15)
          {
            goto LABEL_28;
          }
        }

        if ((result & 0x80000000) != 0)
        {
          goto LABEL_26;
        }

LABEL_28:
        if ((v17 - 1) < v15)
        {
          *(v28 + v18) = 0;
          __strcpy_chk();
          *(a4 + 72) = 16;
          *(a4 + 334) = v26;
          __src[v17] = 0;
          __strcpy_chk();
          result = 0;
          *(a4 + 70) = v17;
          goto LABEL_26;
        }

        v23 = utf8_determineUTF8CharLength(*a2);
        memmove((a4 + 4), __src, v23);
        *(a4 + 4 + v23) = 0;
        *(a4 + 70) = v23;
        v26 = 256;
        if (sysdct_char_LookUp_Chinese(a1, __src, (a4 + 76), &v26, 0, 0, a6) || (v24 = v26, v10[v26] = 0, *(a4 + 334) = v24, !v24))
        {
          result = 0;
          *a4 = 0;
          goto LABEL_26;
        }

        if (*v10 == 35 && *(a4 + 77))
        {
          v25 = atoi((a4 + 77));
          result = 0;
          *(a4 + 76) = v25;
          *(a4 + 77) = 0;
          *(a4 + 334) = 1;
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __src[0] = 0;
    }

    v19 = 0;
    do
    {
      v20 = v19;
      v21 = a2[v19++];
    }

    while (v21 == 32);
    memmove((a4 + 4), a2, v20);
LABEL_25:
    result = 0;
  }

LABEL_26:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wparserDctMaxWords_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplMaxWords;
  return result;
}

uint64_t wparser_impl_maxwords_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  MaxWordLen = 2350915591;
  v19 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v19);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v19 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: Begin", v10, v11, v12, v18);
      v13 = heap_Calloc(*(v19 + 8), 1, 56);
      if (v13)
      {
        *v13 = a3;
        v13[1] = a4;
        v13[2] = v19;
        v13[3] = "WPARSER_IMPL";
        *a5 = v13;
        *(a5 + 8) = 87652;
        MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(v13);
        log_OutText(*(v19 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: End (%x)", v14, v15, v16, MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_maxwords_ObjClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 16);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin", v3, v4, v5, v12);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t wparser_impl_maxwords_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : Begin", v4, v5, v6, v12);
  MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : End (%x)", v8, v9, v10, MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_maxwords_Init(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 7549556;
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*a3 + 72))(a3[1], a3[2], &v10, a1 + 44);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 32) = a3;
      *(a1 + 40) = a6;
    }
  }

  return result;
}

uint64_t wparser_impl_maxwords_Normalize(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    a3[a5] = 0;
    if (*(a1 + 44) != 1 || (result = wordm_mapt2s(*(a1 + 32), a3, a5), (result & 0x80000000) == 0))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      v28 = *(a1 + 48);
      v27 = *(a1 + 40);

      return DoMaxWords(v21, v22, v23, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13, a15, v27, v28);
    }
  }

  return result;
}

uint64_t wparser_impl_maxwords_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 24), *(a1 + 32), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 48));
  }

  return result;
}

uint64_t wparser_impl_maxwords_Latin(uint64_t a1, int a2, uint64_t a3, int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 32);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t wparser_impl_maxwords_loc_GetMaxWordLen(uint64_t a1)
{
  v6 = 0;
  Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "maxdctwordlen", &v6);
  if ((Str & 0x80000000) != 0)
  {
    v3 = 0;
    LOBYTE(v4) = 7;
    goto LABEL_5;
  }

  v3 = Str;
  v4 = atoi(v6);
  if ((v4 - 1) <= 0xFE)
  {
LABEL_5:
    *(a1 + 48) = v4;
    return v3;
  }

  return 15;
}

uint64_t DoDag(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, int a15, unsigned __int8 a16)
{
  v21 = a1;
  v22 = a14;
  v228 = *MEMORY[0x1E69E9840];
  v208 = 0;
  v206 = 0;
  v207 = 0;
  v205 = 0;
  v204 = 0;
  *(a14 + 8) = 0;
  *(v22 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(a1[4]);
  v24 = LogLevel > 4;
  DomainSegmentations = bed_GetpElem(a7, 0xFFFFu, &v207);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v191 = a8;
  v29 = a16;
  v30 = a15;
  if (a5 && a5 != *(v207 + 36))
  {
    *(v22 + 16) = 0;
  }

  *(v22 + 16);
  log_OutText(v21[4], a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", v26, v27, v28, a5);
  UTOITrace(v24, v21, a6, a7, "START of normalization");
  if (v30 == 1)
  {
    DomainSegmentations = getDomainSegmentations(v21, a3, a4, a5, a7, a10, &v205, &v204, 0, v29);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
LABEL_12:
      v34 = DomainSegmentations;
      goto LABEL_94;
    }
  }

  v188 = LogLevel;
  v34 = 2583699466;
  log_OutText(v21[4], a2, 5, 0, "[DAG]: Entering", v31, v32, v33, v169);
  v35 = heap_Calloc(v21[1], 1, 16);
  if (v35)
  {
    v36 = v35;
    v189 = v29;
    v187 = v24;
    if (a5)
    {
      v37 = 0;
      v38 = 0;
      do
      {
        ++v38;
        v37 = (utf8_determineUTF8CharLength(a4[v37]) + v37);
      }

      while (v37 < a5);
    }

    else
    {
      v38 = 0;
    }

    *(v36 + 8) = v38;
    *(v36 + 12) = 13285840;
    v39 = heap_Calloc(v21[1], v38 + 1, 24);
    *v36 = v39;
    if (!v39)
    {
      goto LABEL_84;
    }

    if (((v38 + 1) & 0xFFFE) != 0)
    {
      v40 = (v38 + 1);
    }

    else
    {
      v40 = 1;
    }

    bzero(v39, 24 * v40);
    v195 = a5;
    v203 = a2;
    if (a5)
    {
      v185 = v22;
      v180 = a6;
      v182 = a7;
      v196 = 0;
      v44 = 0;
      v45 = a5;
      v46 = a4;
      v199 = v21;
      do
      {
        LOWORD(v47) = 0;
        v48 = 0;
        v49 = &v46[v44];
        __dst = v44;
        v50 = v45 - v44;
        v51 = (v45 - v44);
        while (v47 < v51)
        {
          v47 = utf8_determineUTF8CharLength(v49[v47]) + v47;
          if (v29 == ++v48)
          {
            v48 = v29;
            if (v47)
            {
              goto LABEL_25;
            }

            break;
          }
        }

        LOWORD(v47) = v50;
LABEL_25:
        v210 = 0;
        v227 = 0;
        v225 = 0u;
        v226 = 0u;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v219 = 0u;
        v220 = 0u;
        v217 = 0u;
        v218 = 0u;
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        *__s = 0u;
        v212 = 0u;
        v209 = 256;
        if (!v47 || v50 < v47)
        {
          goto LABEL_178;
        }

        v52 = 0;
        v53 = 1;
        v54 = v47;
        do
        {
          v55 = sysdct_word_LookUp_Chinese(a3, v49, v54, __s, &v209, "");
          if ((v55 & 0x80000000) != 0)
          {
            goto LABEL_93;
          }

          if (v209 != 256)
          {
            v56 = strrchr(__s, 92);
            if (v56)
            {
              v53 = (atoi(v56 + 1) + 1);
            }

            if (v48)
            {
              dag_insert_edge_0(v199, v203, v36, v196, v196 + v48, v53, 0);
              ++v52;
            }
          }

          v210 = (v54 - 1);
          utf8_GetPreviousValidUtf8Offset(v49, &v210);
          v209 = 256;
          if (v48)
          {
            --v48;
          }

          else
          {
            v48 = 0;
          }

          if (v50 < v210)
          {
            break;
          }

          v54 = v210;
        }

        while ((v210 - 1) < v47);
        v21 = v199;
        v46 = a4;
        v29 = v189;
        if (!v52)
        {
LABEL_178:
          v55 = sysdct_char_LookUp_Chinese(a3, v49, __s, &v209, 0, 0, "normal");
          if (!v55)
          {
            v57 = heap_Calloc(v21[1], 1, v209 + 1);
            if (!v57)
            {
              v55 = 2583699466;
              goto LABEL_92;
            }

            v58 = v57;
            v59 = v209;
            if (v209)
            {
              v60 = v209 - 1;
              v61 = v203;
              if (v209 == 1)
              {
                v62 = 1;
              }

              else
              {
                while (__s[v60] == 92)
                {
                  v209 = --v59;
                  if (!--v60)
                  {
                    v59 = 1;
                    break;
                  }
                }

                v62 = v59;
              }
            }

            else
            {
              v62 = 0;
              v61 = v203;
            }

            memcpy(v57, __s, v62);
            *(v58 + v209) = 0;
            dag_insert_edge_0(v21, v61, v36, v196, v196 + 1, 1, v58);
            v55 = 0;
          }
        }

        v63 = utf8_determineUTF8CharLength(*v49);
        v44 = __dst + v63;
        ++v196;
        v45 = v195;
      }

      while (v195 > (__dst + v63));
      a6 = v180;
      a7 = v182;
      v22 = v185;
      a2 = v203;
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_92:
      heap_Free(v21[1], v36);
LABEL_93:
      v34 = v55;
      goto LABEL_94;
    }

LABEL_53:
    log_OutText(v21[4], a2, 5, 0, "[DAG]: searching the heaviest edge from all possible paths", v41, v42, v43, v170);
    v67 = *v36;
    if (!*v36)
    {
      dag_free(v21, v36);
      log_OutText(v21[4], a2, 5, 0, "[DAG]: Failed search the path, some error", v108, v109, v110, v171);
      v34 = 2583699462;
      goto LABEL_94;
    }

    v186 = v22;
    v181 = a6;
    v183 = a7;
    v68 = *(v36 + 8);
    if ((v68 & 0x80000000) == 0)
    {
      v69 = v68 + 1;
      v70 = (v67 + 16);
      do
      {
        *v70 = -2147483647;
        v70 += 3;
        --v69;
      }

      while (v69);
    }

    *(v67 + 16) = 0xFFFFFFFF00000000;
    log_OutText(v21[4], a2, 5, 0, "[DAG]: All possible path, <vertex_from: vertex_to>: weight, accumulated weight", v64, v65, v66, v171);
    if (v68 >= 1)
    {
      v74 = 0;
      v75 = *v36;
      do
      {
        for (i = *(v75 + 24 * v74); i; i = *i)
        {
          v77 = *(i + 3);
          v78 = *(i + 4) + *(v75 + 24 * v74 + 16);
          log_OutText(v21[4], v203, 5, 0, "<%d: %d>: %d, %d", v71, v72, v73, v74);
          v75 = *v36;
          v79 = *v36 + 24 * v77;
          v81 = *(v79 + 16);
          v80 = (v79 + 16);
          if (v78 > v81)
          {
            *v80 = v78;
            v82 = v75 + 24 * v77;
            *(v82 + 20) = v74;
            *(v82 + 8) = i[3];
          }
        }

        ++v74;
      }

      while (v74 != v68);
    }

    v83 = heap_Calloc(v21[1], 1, 24);
    if (!v83)
    {
LABEL_84:
      v34 = 2583699466;
      goto LABEL_94;
    }

    v84 = v83;
    v85 = heap_Calloc(v21[1], (v68 + 2), 4);
    *v84 = v85;
    v34 = 2583699466;
    if (v85)
    {
      v86 = heap_Calloc(v21[1], (v68 + 2), 8);
      *(v84 + 8) = v86;
      v90 = *v84;
      if (v86)
      {
        *(v84 + 16) = 0;
        *v90 = v68;
        v91 = a4;
        if ((v68 & 0x80000000) == 0)
        {
          v92 = 0;
          do
          {
            ++v92;
            v93 = *v36 + 24 * v68;
            v94 = *(v93 + 8);
            LODWORD(v68) = *(v93 + 20);
            v90[v92] = v68;
            *(*(v84 + 8) + 8 * v92) = v94;
          }

          while ((v68 & 0x80000000) == 0);
          *(v84 + 16) = v92;
        }

        log_OutText(v21[4], v203, 5, 0, "[DAG]: Leaving", v87, v88, v89, v172);
        v95 = (*(v84 + 16) - 1);
        v96 = v195;
        v190 = heap_Calloc(v21[1], v95, 336);
        v184 = v95;
        if (v190)
        {
          if (v95)
          {
            v97 = 0;
            v98 = 0;
            v200 = v21;
            v178 = v84;
            do
            {
              v99 = v190 + 336 * v97;
              *(v99 + 4) = 0u;
              __dsta = (v99 + 4);
              *v99 = 2;
              *(v99 + 20) = 0u;
              *(v99 + 36) = 0u;
              *(v99 + 52) = 0u;
              *(v99 + 68) = 0;
              *(v99 + 70) = 0;
              *(v99 + 72) = 16;
              *(v99 + 76) = 0u;
              *(v99 + 92) = 0u;
              *(v99 + 108) = 0u;
              *(v99 + 124) = 0u;
              *(v99 + 140) = 0u;
              *(v99 + 156) = 0u;
              *(v99 + 172) = 0u;
              *(v99 + 188) = 0u;
              *(v99 + 204) = 0u;
              *(v99 + 220) = 0u;
              *(v99 + 236) = 0u;
              *(v99 + 252) = 0u;
              *(v99 + 332) = 0;
              *(v99 + 268) = 0u;
              *(v99 + 284) = 0u;
              *(v99 + 300) = 0u;
              *(v99 + 316) = 0u;
              *(v99 + 334) = 0;
              v100 = *(*v84 + 4 * (v95 - v97 - 1)) - *(*v84 + 4 * (v95 - v97));
              v197 = v98;
              v101 = &v91[v98];
              v102 = strlen(v101);
              v103 = 0;
              v104 = 0;
              while (1)
              {
                v105 = v104;
                if (v104 >= v102)
                {
                  break;
                }

                v106 = utf8_determineUTF8CharLength(v101[v104]);
                v104 = v106 + v105;
                if (v100 == ++v103)
                {
                  v107 = v106 + v105;
                  if (v106 + v105)
                  {
                    goto LABEL_79;
                  }

                  break;
                }
              }

              v107 = v102;
LABEL_79:
              *(v99 + 70) = v107;
              memcpy(__dsta, v101, v107);
              *(__dsta + *(v99 + 70) + 1) = 0;
              v84 = v178;
              v95 = v184;
              if (*(*(v178 + 8) + 8 * (v184 - v97)))
              {
                __strcat_chk();
                *(v99 + 334) = strlen((v99 + 76)) + 1;
                v21 = v200;
                heap_Free(v200[1], *(*(v178 + 8) + 8 * (v184 - v97)));
              }

              else
              {
                __strcpy_chk();
                *(v99 + 334) = *(v99 + 70) + 1;
                v21 = v200;
              }

              v91 = a4;
              v98 = v107 + v197;
              ++v97;
            }

            while (v97 != v184);
            v34 = 0;
            v96 = v195;
          }

          else
          {
            v34 = 0;
          }
        }

        heap_Free(v21[1], *v84);
        heap_Free(v21[1], *(v84 + 8));
        heap_Free(v21[1], v84);
        dag_free(v21, v36);
        if (!v190)
        {
          goto LABEL_94;
        }

        if (v95)
        {
          v119 = 0;
          v120 = 0;
          __dstb = 0;
          v121 = 0;
          v122 = a12;
          v179 = a11;
          v34 = 2350915594;
          v198 = a13;
          do
          {
            v123 = v190 + 336 * v119;
            if (*v123 > 5u || ((1 << *v123) & 0x34) == 0)
            {
              v174 = *(v123 + 70);
              log_OutText(v21[4], v203, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v116, v117, v118, v120);
              __dstb = 1;
            }

            else
            {
              if (v198)
              {
                v125 = bed_Insert(v191, &szWORD_BEG_1, 1);
                if ((v125 & 0x80000000) != 0)
                {
                  goto LABEL_155;
                }

                ++*v122;
              }

              v126 = strlen((v123 + 76)) + 1;
              v127 = heap_Alloc(v21[1], v126);
              if (!v127)
              {
                v34 = 2350915594;
                goto LABEL_94;
              }

              v128 = v127;
              bzero(v127, v126);
              strcpy(v128, (v123 + 76));
              v129 = strlen((v123 + 76));
              v125 = bed_Insert(v191, v128, v129);
              if ((v125 & 0x80000000) != 0)
              {
                goto LABEL_156;
              }

              *v122 += strlen((v123 + 76));
              heap_Free(v21[1], v128);
              if (v198)
              {
                v125 = bed_Insert(v191, &szWORD_END_2, 1);
                if ((v125 & 0x80000000) != 0)
                {
                  goto LABEL_155;
                }

                ++*v122;
              }

              v125 = bed_GetcElem(v191, &v208);
              if ((v125 & 0x80000000) != 0)
              {
LABEL_155:
                v128 = 0;
LABEL_156:
                v34 = v125;
                goto LABEL_170;
              }

              v130 = *(a3 + 32);
              v131 = a10;
              v132 = 334;
              if (!v130)
              {
                v132 = 70;
              }

              if (*(a10 + 18) < (*(a10 + 16) + 4 * *(v123 + v132) + 5))
              {
                v125 = datac_RequestBlock(a9, v179, (*(a10 + 16) + 4 * *(v123 + v132) + 5), &a10);
                if ((v125 & 0x80000000) != 0)
                {
                  goto LABEL_155;
                }

                v131 = a10;
                v130 = *(a3 + 32);
              }

              v133 = *(v131 + 8);
              v134 = *(v131 + 16);
              v135 = *(v131 + 2);
              v136 = v133 + v135 * v134;
              __s[4] = 0;
              *__s = 0;
              if (v130)
              {
                v137 = *(v123 + 334);
                v138 = (v133 + v135 * v134);
                if (*(v123 + 334))
                {
                  NextUtf8Offset = 0;
                  v138 = (v133 + v135 * v134);
                  do
                  {
                    if (!*(v123 + 76 + NextUtf8Offset))
                    {
                      break;
                    }

                    WCharFromUtf8 = utf8_GetWCharFromUtf8(v123 + 76, NextUtf8Offset, v137);
                    LH_itoa(WCharFromUtf8, __s, 0x10u);
                    *v138 = *&__s[2];
                    v138[1] = *__s;
                    v138 += 2;
                    NextUtf8Offset = utf8_GetNextUtf8Offset((v123 + 76), NextUtf8Offset);
                    v137 = *(v123 + 334);
                  }

                  while (v137 > NextUtf8Offset);
                }
              }

              else
              {
                v138 = (v133 + v135 * v134);
                if (*(v123 + 70))
                {
                  v141 = 0;
                  v138 = (v133 + v135 * v134);
                  do
                  {
                    v142 = v141 + v120;
                    if (v141 + v120 >= v195)
                    {
                      break;
                    }

                    v143 = utf8_GetWCharFromUtf8(a4, v141 + v120, v195);
                    LH_itoa(v143, __s, 0x10u);
                    *v138 = *&__s[2];
                    v138[1] = *__s;
                    v138 += 2;
                    v141 = (utf8_GetNextUtf8Offset(a4, v142) - v120);
                  }

                  while (v141 < *(v123 + 70));
                }
              }

              *v138 = 0;
              *(a10 + 16) += v138 - v136 + 1;
              v34 = 2350915594;
              v95 = v184;
            }

            if (*(v186 + 16) == 1)
            {
              v144 = *(v186 + 8);
              v145 = *v186;
              if (v144 >= *(v186 + 10))
              {
                v146 = heap_Realloc(v21[1], v145, 12 * *(v186 + 10) + 121);
                v96 = v195;
                if (!v146)
                {
                  goto LABEL_169;
                }

                v145 = v146;
                *v186 = v146;
                *(v186 + 10) += 10;
                v144 = *(v186 + 8);
              }

              else
              {
                v96 = v195;
              }

              v147 = v144;
              v148 = v145 + 12 * v144;
              *v148 = v121;
              *(v148 + 2) = 0;
              v149 = *(v123 + 70);
              if (__dstb == 1)
              {
                *(v145 + 12 * v147 + 4) = 1;
              }

              v121 += v149;
              *(v186 + 8) = v147 + 1;
            }

            else
            {
              v96 = v195;
            }

            v120 = ++v119;
          }

          while (v119 != v95);
        }

        if (!v96)
        {
          goto LABEL_167;
        }

        v150 = bed_GetcElem(v191, &v208);
        if ((v150 & 0x80000000) != 0)
        {
          goto LABEL_157;
        }

        if (v208)
        {
          UTOISubTrace(v187, v21, v191, "replacement string");
          if (*(v186 + 16) == 1)
          {
            v150 = bed_GetpElem(v191, 0, &v206);
            if ((v150 & 0x80000000) == 0)
            {
              if (v208)
              {
                v157 = 0;
                v158 = 0;
                v159 = 1;
                v160 = v206;
                do
                {
                  if (*(v160 + v157) == 16)
                  {
                    v161 = *(v186 + 8);
                    if (v158 >= v161)
                    {
LABEL_160:
                      log_OutText(v21[4], v203, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v154, v155, v156, v159);
                      v165 = 0;
                      goto LABEL_161;
                    }

                    v162 = v158;
                    v163 = (*v186 + 12 * v158 + 4);
                    while (1)
                    {
                      v164 = *v163;
                      v163 += 3;
                      if (v164 != 1)
                      {
                        break;
                      }

                      if (v161 == ++v162)
                      {
                        goto LABEL_160;
                      }
                    }

                    *(*v186 + 12 * v162 + 8) = v157;
                    ++v159;
                    v158 = v162 + 1;
                  }

                  ++v157;
                }

                while (v157 < v208);
              }

              v165 = 1;
LABEL_161:
              if (v188 >= 5 && *(v186 + 8))
              {
                v166 = 0;
                v167 = 0;
                do
                {
                  v168 = (*v186 + v166);
                  v176 = v168[4];
                  v177 = *(v168 + 1);
                  v175 = *v168;
                  log_OutText(v21[4], v203, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v154, v155, v156, v167++);
                  v166 += 12;
                }

                while (v167 < *(v186 + 8));
              }

              v96 = v195;
              if (v165)
              {
                *(v186 + 12) = 0;
              }

              goto LABEL_167;
            }

LABEL_157:
            v34 = v150;
            goto LABEL_169;
          }
        }

        else
        {
          log_OutText(v21[4], v203, 5, 0, "[UTOI] deleting region, no replacement text found", v151, v152, v153, v173);
        }

LABEL_167:
        v34 = utoin_IncrReplaceCurrentRegion(v181, v183, v191, v96, v186);
        if ((v34 & 0x80000000) == 0)
        {
          UTOITrace(v187, v21, v181, v183, "END of normalization");
        }

LABEL_169:
        v128 = 0;
LABEL_170:
        if (v204)
        {
          heap_Free(v21[1], v205);
          v205 = 0;
        }

        if (v128)
        {
          heap_Free(v21[1], v128);
        }

        v112 = v21[1];
        v113 = v190;
        goto LABEL_175;
      }

      if (v90)
      {
        heap_Free(v21[1], v90);
        *v84 = 0;
      }
    }

    v111 = *(v84 + 8);
    if (v111)
    {
      heap_Free(v21[1], v111);
      *(v84 + 8) = 0;
    }

    v112 = v21[1];
    v113 = v84;
LABEL_175:
    heap_Free(v112, v113);
  }

LABEL_94:
  v114 = *MEMORY[0x1E69E9840];
  return v34;
}

void *dag_free(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = (v5 + 1);
      if (v5 != -1)
      {
        v7 = 0;
        do
        {
          v8 = *(v4 + 24 * v7);
          if (v8)
          {
            do
            {
              v9 = *v8;
              heap_Free(v3[1], v8);
              v8 = v9;
            }

            while (v9);
            v4 = *a2;
          }

          *(v4 + 24 * v7++) = 0;
        }

        while (v7 != v6);
      }
    }

    heap_Free(v3[1], v4);
    v10 = v3[1];

    return heap_Free(v10, a2);
  }

  return result;
}

uint64_t dag_insert_edge_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  result = heap_Calloc(*(a1 + 8), 1, 32);
  if (result)
  {
    v15 = result;
    *(result + 8) = a4;
    *(result + 12) = a5;
    *(result + 24) = a7;
    v16 = uint32_log2(a6);
    *(v15 + 16) = v16 - uint32_log2(*(a3 + 3));
    v17 = *a3;
    v18 = 24 * a4;
    *v15 = *(*a3 + v18);
    *(v17 + v18) = v15;
    v23 = *(v15 + 12);
    v22 = *(v15 + 8);
    return log_OutText(*(a1 + 32), a2, 5, 0, "[DAG]: insert edge (vertex, Chinese Character Positions and weight): %d %d %d %d", v19, v20, v21, a4);
  }

  return result;
}

uint64_t wparserDag_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplDag;
  return result;
}

uint64_t wparser_impl_dag_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  MaxWordLen = 2350915591;
  v20 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v20);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v20 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjOpen: Begin", v10, v11, v12, v19);
      v13 = heap_Calloc(*(v20 + 8), 1, 56);
      if (v13)
      {
        v14 = v13;
        *v13 = a3;
        v13[1] = a4;
        v13[2] = v20;
        v13[3] = "WPARSER_IMPL";
        MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(v13);
        *a5 = v14;
        *(a5 + 8) = 87652;
        log_OutText(*(v20 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjOpen: End (%x)", v15, v16, v17, MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_dag_ObjClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 16);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjClose : Begin", v3, v4, v5, v12);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjClose : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}