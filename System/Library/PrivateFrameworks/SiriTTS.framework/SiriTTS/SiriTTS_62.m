_DWORD *wordSeg_logMarkers(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result[297])
  {
    v8 = result;
    result = log_OutText(*(*result + 32), "FE_WORDSEG", 5, 0, "%s", a6, a7, a8, a2);
    if (*(v8 + 520))
    {
      v9 = 0;
      do
      {
        marker_getString(*(*(v8 + 129) + 32 * v9));
        v28 = 0;
        hasCharPtrArg = marker_hasCharPtrArg(*(*(v8 + 129) + 32 * v9));
        v14 = (*(v8 + 129) + 32 * v9);
        if (hasCharPtrArg && (v15 = v14[3]) != 0)
        {
          v16 = strlen(v14[3]);
          if (v16 <= 0x40uLL)
          {
            v17 = v16;
          }

          else
          {
            v17 = 63;
          }

          if (v17)
          {
            v18 = 1 - v17;
            v19 = &v29;
            while (1)
            {
              v20 = *v15;
              *(v19 - 1) = v20;
              if (!v20)
              {
                break;
              }

              ++v15;
              ++v18;
              ++v19;
              if (v18 == 1)
              {
                goto LABEL_17;
              }
            }

            if (v18)
            {
              bzero(v19, -v18);
            }
          }

LABEL_17:
          *(&v28 + v17) = 0;
        }

        else
        {
          v28 = 0;
        }

        if (*v14 == 32)
        {
          v28 = 48;
          if (*(v14 + 6) == 1)
          {
            v21 = 49;
          }

          else
          {
            v21 = 48;
          }

          v28 = v21;
          v29 = 0;
          v22 = *v14;
        }

        v26 = *(v14 + 3);
        v27 = *(v14 + 4);
        v24 = *(v14 + 1);
        v25 = *(v14 + 2);
        result = log_OutText(*(*v8 + 32), "FE_WORDSEG", 5, 0, "marker[%d] %d(%s) %u,%u %u,%u %s%s", v11, v12, v13, v9++);
      }

      while (v9 < *(v8 + 520));
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wordSeg_GetWordDefs(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4)
{
  v5 = a1;
  v6 = heap_Calloc(*(*a1 + 8), 1, 72 * a4 + 72);
  if (!v6)
  {
    v21 = v5;
    v22 = 2359304202;
    log_OutPublic(*(*v21 + 32), "FE_WORDSEG", 61000, 0, v7, v8, v9, v10, v100);
    return v22;
  }

  v11 = v6;
  if (*(v5 + 1040) < 2u)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = *(v5 + 1032);
      if (*(v15 + v12 + 32) == 1)
      {
        v16 = *(v5 + 1000);
        if (*(v16 + Utf8_LengthInUtf8chars(*(v5 + 1016), *(v15 + v12 + 44) - *(v15 + 12))) == 110)
        {
          v17 = v11 + 72 * v13;
          *v17 = v14;
          *(v17 + 8) = 0u;
          v18 = (v17 + 8);
          *(v17 + 44) = 0;
          *(v17 + 48) = 0;
          *(v17 + 24) = 0u;
          *(v17 + 40) = 1;
          *(v17 + 56) = 0;
          v19 = *(v5 + 1032) + v12;
          *(v17 + 64) = *(v19 + 36);
          NewCharStr = wordSeg_GetNewCharStr(v5, (v17 + 8), *(v19 + 48));
          if ((NewCharStr & 0x80000000) != 0)
          {
            v22 = NewCharStr;
            goto LABEL_120;
          }

          strncpy(*v18, (*(v5 + 1016) + (*(*(v5 + 1032) + v12 + 44) - *(*(v5 + 1032) + 12))), *(*(v5 + 1032) + v12 + 48));
          ++v13;
        }
      }

      ++v14;
      v12 += 32;
    }

    while (v14 < *(v5 + 1040));
  }

  *a3 = v13;
  v103 = v11;
  v107 = v5;
  if (*(v5 + 1040) >= 2u)
  {
    v23 = a2;
    v104 = (v11 + 16);
    v24 = 1;
    while (1)
    {
      v25 = *(v5 + 1032);
      v26 = (v25 + 32 * v24);
      if (*v26 == 37)
      {
        v27 = *(v5 + 1000);
        if (*(v27 + Utf8_LengthInUtf8chars(*(v5 + 1016), v26[3] - *(v25 + 12))) == 110)
        {
          break;
        }
      }

LABEL_55:
      if (++v24 >= *(v5 + 1040))
      {
        v13 = *a3;
        a2 = v23;
        v11 = v103;
        goto LABEL_82;
      }
    }

    v32 = *(v5 + 1040);
    a2 = v23;
    if (v32 < 2)
    {
      goto LABEL_79;
    }

    v33 = *a3;
    v34 = *(v5 + 1032);
    v35 = v34 + 32 * v24;
    v36 = (v34 + 44);
    v37 = 1;
    while (*(v36 - 3) != 1 || *v36 != *(v35 + 12))
    {
      ++v37;
      v36 += 8;
      if (v32 == v37)
      {
        goto LABEL_79;
      }
    }

    if (!*a3)
    {
LABEL_79:
      log_OutPublic(*(*v5 + 32), "FE_WORDSEG", 61005, 0, v28, v29, v30, v31, v100);
      v22 = 0;
LABEL_80:
      v11 = v103;
      goto LABEL_120;
    }

    v38 = v104;
    while (*(v38 - 8) != v37)
    {
      v38 += 9;
      if (!--v33)
      {
        goto LABEL_79;
      }
    }

    v39 = strlen(*(v35 + 24));
    v40 = wordSeg_GetNewCharStr(v5, v38, v39);
    if ((v40 & 0x80000000) != 0)
    {
      v22 = v40;
      goto LABEL_124;
    }

    v5 = v107;
    if (v39)
    {
      v41 = *(*(v107 + 1032) + 32 * v24 + 24);
      v42 = 1 - v39;
      v43 = (*v38 + 1);
      while (1)
      {
        v44 = *v41;
        *(v43 - 1) = v44;
        if (!v44)
        {
          break;
        }

        ++v41;
        ++v42;
        ++v43;
        if (v42 == 1)
        {
          goto LABEL_35;
        }
      }

      if (v42)
      {
        bzero(v43, -v42);
      }
    }

LABEL_35:
    v45 = *(v107 + 1032);
    v46 = v45 + 32 * *(v38 - 8);
    LODWORD(v45) = *(v45 + 12);
    v47 = *(v46 + 12);
    v48 = v47 - v45;
    v49 = v47 - v45 + *(v46 + 16);
    v50 = (v47 - v45);
    v51 = Utf8_LengthInUtf8chars(*(v107 + 1016), v50);
    if (v50 >= v49)
    {
      goto LABEL_122;
    }

    v56 = v51;
    LODWORD(v57) = v48;
    do
    {
      v58 = *(v107 + 1016);
      v59 = *(v58 + v57);
      if (v57 && v59 == 92 && *(v58 + v57 - 1) != 32)
      {
        break;
      }

      LODWORD(v57) = v57 + utf8_determineUTF8CharLength(v59);
    }

    while (v57 < v49);
    v5 = v107;
    if (v57 == v48)
    {
LABEL_122:
      v101 = (*(*(v5 + 1032) + 32 * *(v38 - 8) + 12) - *(*(v5 + 1032) + 12));
      log_OutPublic(*(*v5 + 32), "FE_WORDSEG", 61013, "%s%d", v52, v53, v54, v55, "at input position");
      v22 = 2359304192;
LABEL_124:
      a2 = v23;
      goto LABEL_80;
    }

    log_OutText(*(*v107 + 32), "FE_WORDSEG", 5, 0, "word _%s_", v53, v54, v55, *(v38 - 1));
    if (v57 > v48)
    {
      v60 = v56;
      do
      {
        v61 = *(*(v107 + 1016) + v48);
        if (*(*(v107 + 1016) + v48) >= 48 && v61 <= *(v107 + 1196))
        {
          *(*(v107 + 1008) + v60) = 120;
          v61 = *(*(v107 + 1016) + v48);
        }

        LOWORD(v48) = v48 + utf8_determineUTF8CharLength(v61);
        ++v60;
      }

      while (v48 < v57);
    }

    if (v50 + 1 == v49 && *v38)
    {
      *(*(v107 + 1008) + v56) = 120;
    }

    v62 = *(v107 + 1016);
    if (*(v62 + v57) == 92 && *(v62 + v57 - 1) != 32)
    {
      v63 = v57 + 1;
      if ((v57 + 1) >= v49)
      {
LABEL_54:
        v5 = v107;
        if (v63 != v49)
        {
          goto LABEL_122;
        }

        goto LABEL_55;
      }

      v64 = (v57 + 1);
      v65 = 1;
      v57 = v64;
      while (!v57 || *(v62 + v57) != 92 || *(v62 + (v57 - 1)) == 32)
      {
        v65 = ++v57 < v49;
        if (v57 == v49)
        {
          LOWORD(v57) = v49;
          break;
        }
      }

      v66 = v57 - v63;
      if (v57 == v63)
      {
        if (v65)
        {
          goto LABEL_69;
        }

        goto LABEL_54;
      }

      v5 = v107;
      if ((wordSeg_GetNewCharStr(v107, v38 + 1, (v57 - v63)) & 0x80000000) != 0)
      {
        goto LABEL_122;
      }

      strncpy(v38[1], (*(v107 + 1016) + v64), v66);
      log_OutText(*(*v107 + 32), "FE_WORDSEG", 5, 0, "pos _%s_", v67, v68, v69, v38[1]);
      if (v65)
      {
LABEL_69:
        v70 = v57 + 1;
        LOWORD(v71) = v70;
        if (v70 < v49)
        {
          v72 = *(v107 + 1016);
          v71 = v70;
          while (*(v72 + v71) != 92 || *(v72 + (v71 - 1)) == 32)
          {
            ++v71;
            v5 = v107;
            if (v71 == v49)
            {
              goto LABEL_76;
            }
          }
        }

        v5 = v107;
        if (v71 != v49)
        {
          goto LABEL_122;
        }

LABEL_76:
        if (v70 != v49)
        {
          v73 = v49 - v70;
          if ((wordSeg_GetNewCharStr(v5, v38 + 2, v73) & 0x80000000) != 0)
          {
            goto LABEL_122;
          }

          strncpy(v38[2], (*(v5 + 1016) + v70), v73);
          log_OutText(*(*v5 + 32), "FE_WORDSEG", 5, 0, "attr _%s_", v74, v75, v76, v38[2]);
        }

        goto LABEL_55;
      }
    }

    v63 = v57;
    goto LABEL_54;
  }

LABEL_82:
  if (!v13)
  {
    v22 = 0;
    goto LABEL_120;
  }

  v102 = a2;
  v77 = 0;
  v78 = (v5 + 1060);
  while (1)
  {
    v79 = v11 + 72 * v77;
    v80 = *(v79 + 16);
    if (v80)
    {
      break;
    }

LABEL_115:
    if (++v77 >= *a3)
    {
      v22 = 0;
      goto LABEL_119;
    }
  }

  v81 = *(v79 + 8);
  v82 = strlen(v81);
  v83 = strlen(v80);
  *(v79 + 44) = 0;
  v105 = v83;
  __endptr = 0;
  *v78 = 0u;
  v78[1] = 0u;
  v78[2] = 0u;
  v78[3] = 0u;
  v78[4] = 0u;
  v78[5] = 0u;
  v84 = v83;
  v78[6] = 0u;
  v78[7] = 0u;
  if (v83 >= 3u)
  {
    v86 = 0;
    while (1)
    {
      v87 = &v80[v86];
      __str[0] = *v87;
      __str[1] = v87[1];
      __str[2] = 0;
      v88 = strtol(__str, &__endptr, 16);
      v109[0] = v87[2];
      v109[1] = v87[3];
      v109[2] = 0;
      if (strtol(v109, &__endptr, 16) == 49 && (v88 - 5) <= 0x28)
      {
        break;
      }

      v86 += 4;
      if (v84 <= v86 || (v86 | 3u) > v84)
      {
        goto LABEL_86;
      }
    }

    *v78 = v82;
    v11 = v103;
    v89 = (v79 + 44);
    v90 = v107;
    goto LABEL_109;
  }

LABEL_86:
  if (v82)
  {
    v85 = 0;
    while (!v85 || v81[v85] != 92 || v81[(v85 - 1)] == 32)
    {
      if (v82 == ++v85)
      {
        LOWORD(v85) = v82;
        goto LABEL_102;
      }
    }

    v82 = v85;
  }

  else
  {
    LOWORD(v85) = 0;
  }

LABEL_102:
  v111 = v85;
  OrthPinyinWords = wordSeg_GetOrthPinyinWords(v107, v82, v81, &v111);
  if (!OrthPinyinWords)
  {
    v11 = v103;
    v90 = v107;
    if (v82 != 1)
    {
LABEL_110:
      OrthPinyinWords = *(v79 + 48) != 1;
      goto LABEL_111;
    }

    v89 = (v79 + 48);
LABEL_109:
    OrthPinyinWords = 1;
    *v89 = 1;
    goto LABEL_111;
  }

  v11 = v103;
  v90 = v107;
  if (!v84 || (v105 & 3) != 0 || v84 >> 2 != OrthPinyinWords)
  {
    goto LABEL_110;
  }

LABEL_111:
  *(v79 + 40) = OrthPinyinWords;
  v92 = (v79 + 40);
  v93 = heap_Calloc(*(*v90 + 8), 1, 2 * OrthPinyinWords + 2);
  *(v79 + 56) = v93;
  if (v93)
  {
    if (*v92 >= 2u)
    {
      v98 = 0;
      do
      {
        *(v93 + 2 * v98) = *(v78 + v98);
        ++v98;
      }

      while (v98 < *v92);
    }

    goto LABEL_115;
  }

  v22 = 2359304202;
  log_OutPublic(*(*v90 + 32), "FE_WORDSEG", 61000, 0, v94, v95, v96, v97, v100);
LABEL_119:
  a2 = v102;
LABEL_120:
  *a2 = v11;
  return v22;
}

size_t wordSeg_ParseOutPOSAndAttributes(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 1016);
  v6 = strlen(v5);
  result = Utf8_LengthInUtf8chars(v5, v6);
  if (!v6)
  {
    goto LABEL_64;
  }

  v47 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v49 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  do
  {
    v14 = v8;
    while (1)
    {
      v15 = *(a1 + 1000);
      if (v11)
      {
        v16 = &v15[v11];
        v17 = *v16;
        if (v17 != 110 && v17 != 115 || *(v16 - 1) != 32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v18 = *v15;
        if (v18 != 110 && v18 != 115)
        {
          goto LABEL_22;
        }
      }

      if (v10 >= a3)
      {
LABEL_19:
        v9 = 0;
      }

      else
      {
        v19 = v10;
        v20 = (a2 + 72 * v10);
        while (1)
        {
          v21 = *v20;
          v20 += 36;
          v22 = *(*(a1 + 1032) + 32 * v21 + 12) - *(*(a1 + 1032) + 12);
          if (v22 == v14)
          {
            break;
          }

          ++v19;
          if (v22 > v14 || v19 >= v13)
          {
            goto LABEL_19;
          }
        }

        v10 = v19;
        v9 = 1;
      }

      v49 = v12;
LABEL_22:
      v24 = *(a1 + 1016);
      result = *(v24 + v12);
      if (!v12 || result != 92 || *(v24 + v12 - 1) == 32)
      {
        goto LABEL_30;
      }

      if (v9 == 1)
      {
        break;
      }

      if (v15[v11] == 115)
      {
        goto LABEL_32;
      }

LABEL_30:
      result = utf8_determineUTF8CharLength(result);
      v12 += result;
      ++v11;
      v14 = v12;
      if (v6 <= v12)
      {
        goto LABEL_64;
      }
    }

    if (!*(a2 + 72 * v10 + 16) || v15[v11] != 110)
    {
      goto LABEL_30;
    }

LABEL_32:
    v45 = v9;
    v46 = a3;
    v25 = v12;
    v26 = v11;
    v27 = v12;
    if (v6 > v12)
    {
      v28 = *(*(a1 + 1016) + v12);
      v29 = v12;
      v26 = v11;
      v25 = v12;
      v27 = v12;
      while (v28 != 32)
      {
        result = utf8_determineUTF8CharLength(v28);
        v29 += result;
        ++v26;
        v27 = v29;
        if (v6 <= v29)
        {
          v25 = v29;
          break;
        }

        v28 = *(*(a1 + 1016) + v29);
        v25 = v29;
      }
    }

    v8 = v12;
    if (v12 == v25)
    {
      v47 = v47 + v11 - v26;
    }

    else
    {
      v44 = v27;
      memmove((*(a1 + 1016) + v12), (*(a1 + 1016) + v25), (v6 - v27));
      *(*(a1 + 1016) + (v14 + v6 - v44)) = 0;
      v30 = v47 - v26;
      memmove((*(a1 + 1000) + v11), (*(a1 + 1000) + v26), v30);
      v31 = v11 + v47 - v26;
      *(*(a1 + 1000) + v31) = 0;
      result = memmove((*(a1 + 1008) + v11), (*(a1 + 1008) + v26), v30);
      v27 = v44;
      v8 = v12;
      v47 = v11 + v47 - v26;
      *(*(a1 + 1008) + v31) = 0;
    }

    v9 = v45;
    a3 = v46;
    v32 = v27 - v14;
    v33 = *(a1 + 1040);
    if (v33 >= 2)
    {
      v34 = *(a1 + 1032);
      v35 = *(v34 + 12);
      v36 = (v34 + 48);
      v37 = v33 - 1;
      do
      {
        v38 = *(v36 - 1);
        if (v38 >= v35 + v14)
        {
          v38 -= v32;
          *(v36 - 1) = v38;
        }

        v39 = v38 - v35;
        if (*(v36 - 4) == 1 && v39 == v49)
        {
          *v36 -= v32;
        }

        v36 += 8;
        --v37;
      }

      while (v37);
    }

    if (*(*(a1 + 1000) + v11 - 1) == 110)
    {
      v41 = a2 + 72 * v10;
      v42 = *(v41 + 8);
      if (v42)
      {
        result = strlen(*(v41 + 8));
        v8 = v12;
        if (result)
        {
          v43 = 0;
          do
          {
            if (v43 && *(v42 + v43) == 92 && *(v42 + (v43 - 1)) != 32)
            {
              break;
            }

            ++v43;
          }

          while (v43 < result);
          if (*(v42 + v43) == 92 && *(v42 + (v43 - 1)) != 32)
          {
            *(v42 + v43) = 0;
          }
        }
      }
    }

    v6 = (v6 - v32);
  }

  while (v6 > v8);
LABEL_64:
  *(*(a1 + 1032) + 16) = v6;
  return result;
}

uint64_t wordSeg_setDepesLayers(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = strlen(*(a1 + 1016));
  v7 = strlen(*(a1 + 1000));
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 952), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  **(a1 + 952) = 0;
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 960), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  **(a1 + 960) = 0;
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 968), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  **(a1 + 968) = 0;
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 976), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  v47 = v7;
  v44 = v6;
  **(a1 + 976) = 0;
  v55 = v6 + 32;
  if (a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v45 = a3;
    v46 = a2;
    while (1)
    {
      v13 = (a2 + 72 * v9);
      v14 = *(*(a1 + 1032) + 32 * *v13 + 12) - *(*(a1 + 1032) + 12);
      v15 = Utf8_LengthInUtf8chars(*(a1 + 1016), v14);
      if (v15 > v11)
      {
        v16 = v15;
        v10 = wordSeg_GrowDepesLayers(a1, &v55, v12, v11, &unk_1C37BDF1D, &unk_1C37BDF1D, &unk_1C37BDF1D, &unk_1C37BDF1D, v14 - v12, v15 - v11, 1);
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_53;
        }

        v12 = v14;
        v11 = v16;
      }

      v48 = v9;
      if (v13[20])
      {
        break;
      }

LABEL_47:
      v9 = v48 + 1;
      a2 = v46;
      if (v48 + 1 == v45)
      {
        goto LABEL_50;
      }
    }

    v17 = 0;
    v49 = 0;
    v18 = v13[20] == 1;
    while (1)
    {
      if (v17)
      {
        v19 = *(*(v13 + 7) + 2 * v17 - 2);
        v20 = Utf8_LengthInUtf8chars(*(v13 + 1), v19);
        v21 = *(*(v13 + 7) + 2 * v17) - *(*(v13 + 7) + 2 * v17 - 2);
        v22 = Utf8_LengthInUtf8chars(*(v13 + 1), v21);
      }

      else
      {
        if (v18)
        {
          v21 = strlen(*(v13 + 1));
          v22 = Utf8_LengthInUtf8chars(*(v13 + 1), v21);
        }

        else
        {
          v21 = **(v13 + 7);
          v22 = Utf8_LengthInUtf8chars(*(v13 + 1), v21);
        }

        v19 = 0;
        v20 = 0;
      }

      if (v21 >= 0x40u)
      {
        break;
      }

      v51 = v22;
      v27 = *(v13 + 1);
      __strncpy_chk();
      __s[v21] = 0;
      v53 = v11;
      v54 = v19;
      if (*(v13 + 11) == 1 || *(v13 + 12) == 1)
      {
        v28 = *(v13 + 2);
      }

      else
      {
        v38 = *(v13 + 2);
        if (v38)
        {
          v28 = __dst;
          strncpy(__dst, (v38 + v49), 4uLL);
          __dst[4] = 0;
          v49 += 4;
        }

        else
        {
          v28 = &unk_1C37BDF1D;
        }
      }

      v50 = v21;
      v52 = v12;
      v29 = strlen(v28);
      v30 = strlen(__s);
      v31 = Utf8_LengthInUtf8chars(__s, v30);
      v32 = v20;
      if (v17)
      {
        v33 = 0;
        v34 = 0;
        v35 = &unk_1C37BDF1D;
        v36 = &unk_1C37BDF1D;
      }

      else
      {
        v36 = *(v13 + 3);
        if (v36)
        {
          v37 = strlen(*(v13 + 3));
          v33 = Utf8_LengthInUtf8chars(v36, v37);
        }

        else
        {
          v33 = 0;
          v36 = &unk_1C37BDF1D;
        }

        v35 = *(v13 + 4);
        if (v35)
        {
          v39 = strlen(*(v13 + 4));
          v34 = Utf8_LengthInUtf8chars(v35, v39);
        }

        else
        {
          v34 = 0;
          v35 = &unk_1C37BDF1D;
        }
      }

      LOWORD(v40) = v31;
      if (v31 <= v29)
      {
        LOWORD(v40) = v29;
      }

      if (*(a1 + 1200))
      {
        LOWORD(v40) = v31;
      }

      v40 = v40;
      if (v40 <= v33)
      {
        v40 = v33;
      }

      if (v40 <= v34)
      {
        LOWORD(v40) = v34;
      }

      v10 = wordSeg_GrowDepesLayers(a1, &v55, v54, v32, v28, __s, v36, v35, v40, v40, 0);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      ++v17;
      v41 = v13[20];
      if (v17 < v41)
      {
        NewCharStr = wordSeg_GrowDepesLayers(a1, &v55, v54, v32, "*", "*", "~", "~", 1u, 1u, 0);
        if ((NewCharStr & 0x80000000) != 0)
        {
          goto LABEL_52;
        }

        v10 = 0;
        v41 = v13[20];
      }

      v18 = 0;
      v12 = v50 + v52;
      v11 = v53 + v51;
      if (v17 >= v41)
      {
        goto LABEL_47;
      }
    }

    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61011, "%s%d%s%d", v23, v24, v25, v26, "trying to handle pinyin word length");
    v10 = 2359304192;
    goto LABEL_53;
  }

  LOWORD(v12) = 0;
  LOWORD(v11) = 0;
  v10 = 0;
LABEL_50:
  if (v47 > v11)
  {
    NewCharStr = wordSeg_GrowDepesLayers(a1, &v55, v12, v11, &unk_1C37BDF1D, &unk_1C37BDF1D, &unk_1C37BDF1D, &unk_1C37BDF1D, v44 - v12, v47 - v11, 1);
LABEL_52:
    v10 = NewCharStr;
  }

LABEL_53:
  v42 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t wordSeg_execDepesLayers(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = 0;
  *a2 = 0;
  if (*(a1 + 1188) == 1)
  {
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L1: %s", a6, a7, a8, *(a1 + 952));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L2: %s", v10, v11, v12, *(a1 + 960));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L3: %s", v13, v14, v15, *(a1 + 968));
    if (!*(a1 + 1200))
    {
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L4: %s", v16, v17, v18, *(a1 + 976));
    }
  }

  v19 = strlen(*(a1 + 952));
  v20 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 0, *(a1 + 952), v19);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  v21 = strlen(*(a1 + 960));
  v20 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 1, *(a1 + 960), v21);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  v22 = strlen(*(a1 + 968));
  v20 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 2, *(a1 + 968), v22);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  if (!*(a1 + 1200))
  {
    v23 = strlen(*(a1 + 976));
    v20 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 3, *(a1 + 976), v23);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }
  }

  v24 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), "word_segmentation");
  if ((v24 & 0x80000000) != 0)
  {
    v29 = v24;
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61006, "%s%s", v25, v26, v27, v28, "functionName");
    return v29;
  }

  v29 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, a1 + 984, &v50 + 2);
  if ((v29 & 0x80000000) == 0)
  {
    *(*(a1 + 984) + HIWORD(v50)) = 0;
    if (!*(a1 + 1200))
    {
      v30 = (a1 + 992);
      v29 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 1, a1 + 992, &v50);
      if ((v29 & 0x80000000) == 0)
      {
        *(*(a1 + 992) + v50) = 0;
        if (*(a1 + 1188) == 1)
        {
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "OUT L1: %s", v31, v32, v33, *(a1 + 984));
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "OUT L2: %s", v34, v35, v36, *(a1 + 992));
        }

        v37 = HIWORD(v50);
        if (v37 != Utf8_LengthInUtf8chars(*v30, v50))
        {
          v47 = *(*a1 + 32);
          v48 = 61008;
          goto LABEL_30;
        }

        if (HIWORD(v50))
        {
          v42 = 0;
          v43 = 0;
          do
          {
            v44 = *(*(a1 + 984) + v42);
            v45 = (*v30)[v43];
            if (v44 == 42)
            {
              if (v45 != 42)
              {
                goto LABEL_29;
              }
            }

            else if (v44 == 32 && v45 != 32)
            {
LABEL_29:
              v47 = *(*a1 + 32);
              v48 = 61009;
LABEL_30:
              log_OutPublic(v47, "FE_WORDSEG", v48, 0, v38, v39, v40, v41, v49);
              *a2 = 1;
              return v29;
            }

            ++v42;
            v43 += utf8_determineUTF8CharLength(v45);
          }

          while (v42 < HIWORD(v50));
        }
      }
    }
  }

  return v29;
}

uint64_t wordSeg_processDepesOutput(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v344 = *MEMORY[0x1E69E9840];
  v340 = 0;
  *__dst = 0;
  v338 = 0;
  *__s2 = 0;
  v7 = strlen(*(a1 + 952));
  v8 = strlen(*(a1 + 984));
  v305 = a4;
  *a4 = 0;
  v320 = a3;
  if (!a3)
  {
LABEL_162:
    v172 = strlen(*(a1 + 1016));
    v173 = strlen(*(a1 + 1000));
    v174 = v172;
    v175 = v173;
    if (v173)
    {
      v176 = 0;
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v326 = 0;
      LODWORD(v180) = 0;
      if (v172 >= v173)
      {
        v181 = v173;
      }

      else
      {
        v181 = v172;
      }

      v314 = v172;
      v310 = v181;
      v312 = v173;
      do
      {
        v182 = *(a1 + 1000);
        v183 = *(v182 + v178);
        if ((v183 == 110 || v183 == 88) && v181 > v178)
        {
          v184 = 0;
          v185 = v178;
          while (1)
          {
            v186 = v185;
            v187 = *(v182 + v185);
            if (v187 == 88)
            {
              v184 = 1;
            }

            else if (v187 == 32)
            {
              goto LABEL_177;
            }

            ++v185;
            if (v181 <= v186 + 1)
            {
              LOWORD(v186) = v186 + 1;
LABEL_177:
              if (v184 != 1)
              {
                break;
              }

              v319 = v186;
              v188 = Utf8_LengthInBytes(*(a1 + 1016), v176);
              v317 = Utf8_LengthInBytes(*(a1 + 1016), v185);
              v189 = v317;
              log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing modified region from %d to %d (last region processed %d,%d)", v190, v191, v192, v188);
              v328 = v179;
              if (v188 <= v177)
              {
                goto LABEL_213;
              }

              if (v177 >= v178)
              {
                v193 = 0;
              }

              else
              {
                v193 = 0;
                v194 = *(a1 + 1000);
                do
                {
                  v195 = v177;
                  v196 = *(v194 + v177);
                  if ((v196 == 110 || v196 == 88) && v177 < v178)
                  {
                    while (1)
                    {
                      v197 = *(v194 + v195);
                      if (v197 != 110 && v197 != 88)
                      {
                        break;
                      }

                      if (*(*(a1 + 1008) + v195) == 120)
                      {
                        v193 = (v193 + 1);
                      }

                      else
                      {
                        v193 = v193;
                      }

                      if (v178 == ++v195)
                      {
                        v177 = v178;
                        goto LABEL_192;
                      }
                    }

                    v177 = v195;
                  }

LABEL_192:
                  ++v177;
                }

                while (v177 < v178);
              }

              log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "skipping %d pinyin words in region (%d,%d)", v94, v95, v96, v193);
              log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "START curWordDef=%d curHexCount=%d", v198, v199, v200, v180);
              v204 = 0;
              if (v320 <= v180 || !v193)
              {
                goto LABEL_212;
              }

              v204 = 0;
              v205 = v180 + 1;
              v206 = (a2 + 16 + 72 * v180);
              v207 = v326;
              while (1)
              {
                if (*v206)
                {
                  v208 = v207;
                  v209 = strlen(*v206) >> 2;
                  if (v208)
                  {
                    v210 = v193 - v209 + v208;
                    if (v210 < 0)
                    {
                      v207 = (v208 + v193);
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    v210 = v193 - v209;
                    if (v210 < 0)
                    {
                      v207 = v193;
LABEL_211:
                      v326 = v207;
LABEL_212:
                      LODWORD(v180) = v204 + v180;
                      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "END curWordDef=%d curHexCount=%d", v201, v202, v203, v180);
                      v189 = v317;
LABEL_213:
                      v211 = *(a1 + 1040);
                      if (v211 < 2)
                      {
                        goto LABEL_244;
                      }

                      v212 = 1;
LABEL_215:
                      v213 = *(a1 + 1032);
                      v214 = v212;
                      v215 = (v213 + 32 * v212);
                      while (1)
                      {
                        v216 = v215[3];
                        v217 = (v216 - *(v213 + 12));
                        if (v217 <= v189)
                        {
                          if (v217 >= v188 && *v215 == 37)
                          {
                            if (v211 < 2u)
                            {
                              LOWORD(v211) = 1;
                            }

                            else
                            {
                              v218 = (v213 + 44);
                              v219 = 1;
                              while (*(v218 - 3) != 1 || *v218 != v216)
                              {
                                ++v219;
                                v218 += 8;
                                if (v211 == v219)
                                {
                                  goto LABEL_232;
                                }
                              }

                              LOWORD(v211) = v219;
                            }

LABEL_232:
                            v220 = v211;
                            log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "invalidate (WORD and HEX) markers %d and %d", v94, v95, v96, v214);
                            if (v220 <= v214)
                            {
                              v221 = v214;
                            }

                            else
                            {
                              v221 = v220;
                            }

                            if (v220 >= v214)
                            {
                              v214 = v214;
                            }

                            else
                            {
                              v214 = v220;
                            }

                            v222 = (v221 + 1);
                            v223 = *(a1 + 1040);
                            if (v223 > v222)
                            {
                              memmove((*(a1 + 1032) + 32 * v221), (*(a1 + 1032) + 32 * v222), 32 * (v223 - v222));
                              LOWORD(v223) = *(a1 + 1040);
                            }

                            v224 = v223 - 1;
                            *(a1 + 1040) = v223 - 1;
                            v225 = (v214 + 1);
                            v226 = (v223 - 1);
                            v227 = v226 >= v225;
                            v228 = v226 - v225;
                            if (v228 != 0 && v227)
                            {
                              memmove((*(a1 + 1032) + 32 * v214), (*(a1 + 1032) + 32 * v225), 32 * v228);
                              v224 = *(a1 + 1040);
                            }

                            LOWORD(v211) = v224 - 1;
                            *(a1 + 1040) = v211;
                            v212 = v214 - 1;
                            if ((v214 - 1) < v211)
                            {
                              goto LABEL_215;
                            }

LABEL_244:
                            if (v189 <= v188)
                            {
                              goto LABEL_301;
                            }

LABEL_245:
                            v229 = v188;
                            if (v189 <= v188)
                            {
                              v232 = v188;
                            }

                            else
                            {
                              v230 = *(a1 + 1016);
                              v231 = v188;
                              v232 = v188;
                              if (*(v230 + v188) == 32)
                              {
                                v233 = v230 + 1;
                                while (v189 > v231 + 1)
                                {
                                  v234 = *(v233 + v231++);
                                  if (v234 != 32)
                                  {
                                    v232 = v231;
                                    v229 = v231;
                                    goto LABEL_253;
                                  }
                                }

                                v232 = v317;
                                v229 = v189;
                              }
                            }

LABEL_253:
                            LODWORD(v188) = v232;
                            do
                            {
                              v188 = (v188 + 1);
                            }

                            while (v189 > v188 && *(*(a1 + 1016) + v188) != 32);
                            log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing word from %d to %d", v94, v95, v96, v229);
                            v341 = 0;
                            v235 = v188 - v232;
                            OrthPinyinWords = wordSeg_GetOrthPinyinWords(a1, (v188 - v232), *(a1 + 1016) + v232, &v341);
                            if (!OrthPinyinWords)
                            {
                              v301 = *(a1 + 1016) + v232;
                              log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61002, "%s%s", v237, v238, v239, v240, "parsing region");
                              goto LABEL_313;
                            }

                            v241 = OrthPinyinWords;
                            log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "got %d words", v238, v239, v240, OrthPinyinWords);
                            v242 = *(a1 + 1048);
                            if (v242)
                            {
                              v243 = *(a1 + 1058);
                              if (*(a1 + 1056) + 1 >= v243)
                              {
                                v244 = heap_Realloc(*(*a1 + 8), v242, 8 * v243 + 136);
                                if (!v244)
                                {
                                  goto LABEL_309;
                                }

                                *(a1 + 1048) = v244;
                                v249 = *(a1 + 1058) + 16;
                                goto LABEL_263;
                              }
                            }

                            else
                            {
                              v250 = heap_Calloc(*(*a1 + 8), 1, 136);
                              *(a1 + 1048) = v250;
                              if (!v250)
                              {
                                goto LABEL_309;
                              }

                              v249 = 16;
LABEL_263:
                              *(a1 + 1058) = v249;
                            }

                            v328 = v232;
                            v251 = heap_Calloc(*(*a1 + 8), 1, (4 * v241) | 1);
                            if (!v251)
                            {
LABEL_309:
                              v290 = 2359304202;
                              log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v245, v246, v247, v248, v299);
                              goto LABEL_314;
                            }

                            v252 = v251;
                            v253 = *(a1 + 1056);
                            *(*(a1 + 1048) + 8 * v253) = v251;
                            *(a1 + 1056) = v253 + 1;
                            if (v320 <= v180)
                            {
                              v267 = v229;
                              v334 = 0;
                              goto LABEL_294;
                            }

                            v322 = v188 - v232;
                            v323 = v229;
                            v334 = 0;
                            v332 = 0;
                            v254 = 0;
                            v255 = 0;
                            v180 = v180;
                            v256 = v326;
                            while (1)
                            {
                              v257 = a2 + 72 * v180;
                              v258 = *(v257 + 16);
                              if (v258)
                              {
                                v259 = strlen(*(v257 + 16));
                                if (!v334)
                                {
                                  if (v332)
                                  {
                                    v334 = 0;
                                  }

                                  else
                                  {
                                    v334 = *(v257 + 64) + 2 * v256;
                                    v332 = *(a2 + 72 * v180 + 68);
                                  }
                                }

                                v260 = (v259 >> 2) - v256;
                                v261 = v241 - v254;
                                if (v260 >= v261)
                                {
                                  v268 = (v252 + (4 * v254));
                                  v269 = (v258 + (4 * v256));
                                  v270 = 1 - 4 * v261;
                                  v235 = v322;
                                  while (1)
                                  {
                                    v271 = *v269;
                                    *v268 = v271;
                                    if (!v271)
                                    {
                                      break;
                                    }

                                    ++v268;
                                    ++v269;
                                    if (++v270 == 1)
                                    {
                                      goto LABEL_291;
                                    }
                                  }

                                  if (v270)
                                  {
                                    bzero(v268, -v270);
                                    v261 = v241 - v254;
                                  }

LABEL_291:
                                  v267 = v323;
                                  if (v260 == v261)
                                  {
                                    v326 = 0;
                                    LODWORD(v180) = v180 + 1;
                                  }

                                  else
                                  {
                                    v326 = v261;
                                  }

LABEL_294:
                                  v272 = v267;
                                  v273 = v235;
                                  MrkInsertPos = wordSeg_GetMrkInsertPos(a1, *(*(a1 + 1032) + 12) + v267, *(*(a1 + 1032) + 12) + v267 + v235);
                                  if (*(a1 + 1188) == 1)
                                  {
                                    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "add WORD marker at index %d (spos=%d, epos=%d)", v274, v275, v276, MrkInsertPos);
                                  }

                                  MrkMemory = wordSeg_GetMrkMemory(a1, MrkInsertPos);
                                  if ((MrkMemory & 0x80000000) != 0)
                                  {
                                    goto LABEL_303;
                                  }

                                  v278 = *(a1 + 1032);
                                  v279 = (v278 + 32 * MrkInsertPos);
                                  v280 = v272;
                                  v279[3] = *(v278 + 12) + v272;
                                  v279[4] = v273;
                                  *v279 = 1;
                                  v281 = (4 * v241) >> 1;
                                  v279[1] = v334;
                                  v279[2] = v281;
                                  v285 = wordSeg_GetMrkInsertPos(a1, *(v278 + 12) + v280, *(v278 + 12) + v280 + (4 * v241));
                                  if (*(a1 + 1188) == 1)
                                  {
                                    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "add HEX marker at index %d (spos=%d, epos=%d)", v282, v283, v284, v285);
                                  }

                                  MrkMemory = wordSeg_GetMrkMemory(a1, v285);
                                  if ((MrkMemory & 0x80000000) != 0)
                                  {
                                    goto LABEL_303;
                                  }

                                  v286 = *(a1 + 1032) + 32 * v285;
                                  *v286 = 37;
                                  *(v286 + 24) = *(*(a1 + 1048) + 8 * *(a1 + 1056) - 8);
                                  v287 = *(a1 + 1032);
                                  v288 = *(v287 + 12) + v280;
                                  v289 = (v287 + 32 * v285);
                                  v289[3] = v288;
                                  v289[4] = 2 * (4 * v241);
                                  v289[1] = v334;
                                  v289[2] = v281;
                                  v189 = v317;
                                  if (v317 <= v188)
                                  {
LABEL_301:
                                    v179 = v328;
                                    Utf8_LengthInUtf8chars(*(a1 + 1016), v328);
                                    v178 = v319;
                                    v177 = v319;
                                    v174 = v314;
                                    v181 = v310;
                                    v175 = v312;
                                    goto LABEL_194;
                                  }

                                  goto LABEL_245;
                                }

                                v262 = 4 * ((v259 >> 2) - v256);
                                if (v262)
                                {
                                  v263 = (v258 + (4 * v256));
                                  v264 = (v252 + (4 * v254));
                                  v265 = 1 - v262;
                                  while (1)
                                  {
                                    v266 = *v263;
                                    *v264 = v266;
                                    if (!v266)
                                    {
                                      break;
                                    }

                                    ++v264;
                                    ++v263;
                                    if (++v265 == 1)
                                    {
                                      goto LABEL_280;
                                    }
                                  }

                                  if (v265)
                                  {
                                    bzero(v264, -v265);
                                  }
                                }

LABEL_280:
                                v255 += v260;
                              }

                              if (++v180 < v320)
                              {
                                v256 = 0;
                                v254 = v255;
                                if (v241 > v255)
                                {
                                  continue;
                                }
                              }

                              v326 = 0;
                              v267 = v323;
                              v235 = v322;
                              goto LABEL_294;
                            }
                          }
                        }

                        else if (*v215 == 1 || *v215 == 37)
                        {
                          goto LABEL_244;
                        }

                        ++v214;
                        v215 += 8;
                        if (v214 >= v211)
                        {
                          goto LABEL_244;
                        }
                      }
                    }
                  }

                  v207 = 0;
                  LODWORD(v180) = v180 + 1;
                  v193 = v210;
                }

                else
                {
                  ++v204;
                }

                if (v205 < v320)
                {
                  ++v205;
                  v206 += 9;
                  if (v193)
                  {
                    continue;
                  }
                }

                goto LABEL_211;
              }
            }
          }
        }

LABEL_194:
        v176 = ++v178;
      }

      while (v175 > v178);
    }

    v290 = 0;
    *(*(a1 + 1032) + 16) = v174;
    goto LABEL_322;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v329 = 0;
  v313 = (a1 + 1016);
  v324 = v8;
  v321 = (a1 + 1000);
  v336 = v7;
  while (1)
  {
    v14 = (a2 + 72 * v9);
    v15 = *(v14 + 2);
    v333 = v10;
    if (v15)
    {
      if (!*(v14 + 11))
      {
        v17 = strlen(v15);
        v330 = *(*(a1 + 1032) + 32 * *v14 + 12) - *(*(a1 + 1032) + 12);
        v18 = Utf8_LengthInUtf8chars(*(a1 + 1016), (*(*(a1 + 1032) + 32 * *v14 + 12) - *(*(a1 + 1032) + 12)));
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "DOING hexStr=%s posInSentStr=%d", v19, v20, v21, *(v14 + 2));
        if ((*&v17 & 0x3FFFCLL) != 0)
        {
          break;
        }
      }
    }

    v16 = v12;
LABEL_6:
    ++v9;
    v12 = v16;
    v10 = v333;
    if (v9 == v320)
    {
      goto LABEL_162;
    }
  }

  v318 = a2 + 72 * v9;
  v22 = 0;
  v327 = 0;
  v307 = v18;
  v309 = (v17 >> 2);
  v311 = v9;
  v23 = v336;
  while (1)
  {
    v24 = (4 * v22);
    if (*(a1 + 1200))
    {
      v25 = v23;
      v26 = utf8_determineUTF8CharLength(*(*(v318 + 8) + v327));
      v27 = *(v318 + 8);
      __strncpy_chk();
      __dst[v26] = 0;
      strncpy(__dst, (*(v318 + 16) + v24), 4uLL);
      v340 = 0;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "\tthisOrthStr=%s", v28, v29, v30, __s2);
      if (v11 + 1 >= v25)
      {
        v31 = v11;
      }

      else
      {
        v31 = v11;
        do
        {
          v32 = (*(a1 + 952) + v31);
          if (!strncmp(v32, __s2, v26))
          {
            break;
          }

          v31 += utf8_determineUTF8CharLength(*v32);
        }

        while (v31 + 1 < v336);
      }

      v38 = *(a1 + 952);
      if (!strncmp((v38 + v31), __s2, v26))
      {
        v327 += v26;
        v333 = v26;
        v23 = v336;
        goto LABEL_27;
      }

      v150 = *(*a1 + 32);
      v302 = *(a1 + 984);
      v294 = "orth1";
LABEL_319:
      LODWORD(v300) = v294;
      v292 = "%s%s%s%s%s%s";
      v293 = 61012;
      goto LABEL_320;
    }

    strncpy(__dst, (*(v318 + 16) + v24), 4uLL);
    v340 = 0;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "\tthisHexStr=%s", v33, v34, v35, __dst);
    if (v11 + 4 >= v23)
    {
      v31 = v11;
      v36 = v329;
    }

    else
    {
      v36 = v329;
      while (strncmp((*(a1 + 952) + v11), __dst, 4uLL))
      {
        v31 = v11 + 1;
        v36 = v36 + utf8_determineUTF8CharLength(*(*(a1 + 960) + v36));
        v37 = v11++ + 5;
        if (v37 >= v23)
        {
          goto LABEL_26;
        }
      }

      v31 = v11;
    }

LABEL_26:
    v329 = v36;
    v38 = *(a1 + 952);
    if (strncmp((v38 + v31), __dst, 4uLL))
    {
      v150 = *(*a1 + 32);
      v303 = *(a1 + 984);
LABEL_318:
      v294 = "hex1(first 4 chars)";
      goto LABEL_319;
    }

LABEL_27:
    v43 = v31;
    v44 = v31;
    do
    {
      v45 = ++v44;
      if (v23 <= v44)
      {
        break;
      }

      v46 = *(v38 + v44);
      if (v46 == 42)
      {
        break;
      }
    }

    while (v46 != 32);
    v47 = v44 - v31;
    if (v47 > 63)
    {
      v150 = *(*a1 + 32);
      v291 = "(L1InIdx)start position";
      goto LABEL_307;
    }

    v48 = *(a1 + 1200);
    if (v47 < 1)
    {
      v55 = 0;
      v52 = v324;
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v51 = v329;
      v52 = v324;
      do
      {
        if (v48)
        {
          v53 = *(v38 + v43);
        }

        else
        {
          v53 = *(*(a1 + 960) + v51);
        }

        if (v53 != 126)
        {
          v54 = v49++;
          __s1[v54] = v53;
        }

        ++v50;
        ++v51;
        ++v43;
      }

      while (v47 > v50);
      v55 = v49;
    }

    __s1[v55] = 0;
    v56 = v13;
    v325 = v22;
    if (v48)
    {
      while (v56 + 1 < v52)
      {
        v57 = (*(a1 + 984) + v13);
        if (!strncmp(v57, __s2, v333))
        {
          break;
        }

        v13 += utf8_determineUTF8CharLength(*v57);
        v56 = v13;
      }

      v58 = *(a1 + 984);
      v59 = __s2;
      v60 = v333;
      v61 = (v58 + v13);
    }

    else
    {
      if (v13 + 4 < v52)
      {
        v62 = v13;
        while (strncmp((*(a1 + 984) + v62), __dst, 4uLL))
        {
          v13 = v62 + 1;
          v12 = v12 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v12));
          v63 = v62++ + 5;
          if (v63 >= v52)
          {
            goto LABEL_53;
          }
        }

        v13 = v62;
      }

LABEL_53:
      v58 = *(a1 + 984);
      v59 = __dst;
      v61 = (v58 + v13);
      v60 = 4;
    }

    if (strncmp(v61, v59, v60))
    {
      v150 = *(*a1 + 32);
      goto LABEL_318;
    }

    if (*__dst == 808466276 || *__dst == 1717985584)
    {
      v65 = v13 + 4;
      v64 = v13;
    }

    else
    {
      v64 = v13;
      v65 = v13;
      if (v52 <= v13)
      {
        v65 = v13;
      }

      else
      {
        do
        {
          v66 = *(v58 + v65);
          if (v66 == 32)
          {
            break;
          }

          if (v66 == 42)
          {
            break;
          }

          ++v65;
        }

        while (v52 > v65);
      }
    }

    v67 = v65 - v64;
    if (v67 > 63)
    {
      break;
    }

    if (v67 < 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = 0;
      v69 = 0;
      v70 = *(a1 + 1200);
      v71 = v12;
      do
      {
        if (v70)
        {
          v72 = *(v58 + v64);
        }

        else
        {
          v72 = *(*(a1 + 992) + v71);
        }

        if (v72 != 32 && v72 != 126)
        {
          __s[v68++] = v72;
        }

        ++v69;
        ++v71;
        ++v64;
      }

      while (v67 > v69);
    }

    __s[v68] = 0;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing words IN=_%s_ OUT=_%s_", v40, v41, v42, __s1);
    if (strcmp(__s1, __s))
    {
      if (*(a1 + 1200))
      {
        v295 = *(*a1 + 32);
        v296 = "original word";
      }

      else
      {
        v77 = strlen(__s);
        v78 = strlen(__s1);
        v341 = 0;
        if (wordSeg_GetOrthPinyinWords(a1, v68, __s, &v341))
        {
          v79 = v77 - v78;
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "updating pinyin from %s to %s", v74, v75, v76, __s1);
          v80 = *(a1 + 1016);
          v81 = strlen(v80);
          v82 = strlen(__s1);
          v83 = strlen(__s);
          v315 = strlen(*(a1 + 1000));
          v306 = v82;
          v308 = v83;
          if (v79 < 1)
          {
            if ((v79 & 0x80000000) == 0)
            {
              v99 = v330;
              v97 = v330;
              v100 = (a1 + 1016);
              goto LABEL_92;
            }

            v97 = v330;
            v101 = v330 - v79;
            if (v101 <= v81)
            {
              __len = (v81 - v101);
              memmove(&v80[v330], &v80[v101], __len);
              v102 = v81 + v79;
              *(*v313 + v102) = 0;
              memmove((*v321 + v307), (*v321 + (v307 - v79)), __len);
              v99 = v330;
              *(*v321 + v102) = 0;
              v100 = (a1 + 1016);
              goto LABEL_92;
            }

            log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61005, "%s%d%s%d%s%d", v84, v85, v86, v87, "incorrect position detected : pos");
LABEL_313:
            v290 = 2359304192;
          }

          else
          {
            v88 = v81 + v79;
            v89 = *(a1 + 1024);
            if (v88 <= v89)
            {
LABEL_87:
              v97 = v330;
              v98 = v81 - v330;
              memmove(&v80[v79 + v330], &v80[v330], v98);
              *(*v313 + v88) = 0;
              memmove((*v321 + (v307 + v79)), (*v321 + v307), v98);
              v99 = v330;
              *(*v321 + v315 + v79) = 0;
              v100 = (a1 + 1016);
LABEL_92:
              v103 = v308;
              memmove((*v100 + v99), __s, v308);
              v52 = v324;
              if (v308)
              {
                LODWORD(v107) = v315 - v97;
                if (v315 >= v97)
                {
                  v107 = v107;
                }

                else
                {
                  v107 = 0;
                }

                v108 = v307;
                do
                {
                  if (!v107)
                  {
                    break;
                  }

                  *(*v321 + v108++) = 88;
                  --v107;
                  --v103;
                }

                while (v103);
              }

              v109 = *(a1 + 1040);
              if (v109 >= 2)
              {
                v110 = *(a1 + 1032);
                v111 = *(v110 + 12);
                v112 = v109 - 1;
                v113 = (v110 + 48);
                do
                {
                  if (*(v113 - 4) == 1)
                  {
                    v114 = *(v113 - 1);
                    v115 = v114 - v111;
                    if (v114 - v111 == v97)
                    {
                      *v113 = v79 + v306;
                      v115 = v97;
                    }
                  }

                  else
                  {
                    v114 = *(v113 - 1);
                    v115 = v114 - v111;
                  }

                  if (v115 >= v97 + v306)
                  {
                    *(v113 - 1) = v114 + v79;
                  }

                  v113 += 8;
                  --v112;
                }

                while (v112);
              }

              log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER pinyin rule      =%s", v104, v105, v106, *(a1 + 1016));
              goto LABEL_109;
            }

            if (v79 <= 0x20)
            {
              v90 = 32;
            }

            else
            {
              v90 = v79;
            }

            v91 = v89 + v90;
            MrkMemory = wordSeg_ReallocCharStr(a1, v313, (v89 + v90));
            if ((MrkMemory & 0x80000000) == 0)
            {
              MrkMemory = wordSeg_ReallocCharStr(a1, v321, v91);
              if ((MrkMemory & 0x80000000) == 0)
              {
                *(a1 + 1024) = v91;
                v80 = *(a1 + 1016);
                goto LABEL_87;
              }
            }

LABEL_303:
            v290 = MrkMemory;
          }

LABEL_314:
          log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61010, 0, v93, v94, v95, v96, v299);
          goto LABEL_322;
        }

        v295 = *(*a1 + 32);
        v296 = "original pinyin";
      }

      log_OutPublic(v295, "FE_WORDSEG", 61002, "%s%s%s%s", v73, v74, v75, v76, v296);
      goto LABEL_321;
    }

LABEL_109:
    if (*(a1 + 1200))
    {
      j = v330;
      for (i = v13 + v333; v52 > i; i += utf8_determineUTF8CharLength(0x7Eu))
      {
        if (*(*(a1 + 984) + i) != 126)
        {
          break;
        }
      }

      v16 = v12;
    }

    else
    {
      i = v13 + 4;
      v16 = (v12 + 4);
      for (j = v330; v52 > i; v16 = v16 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v16)))
      {
        if (*(*(a1 + 984) + i) != 126)
        {
          break;
        }

        ++i;
      }
    }

    v118 = strlen(__s);
    v119 = j + v118;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "posInSentStr=%d", v120, v121, v122, (j + v118));
    if (v336 > v45)
    {
      v123 = *(*(a1 + 952) + v45);
      v124 = *(*(a1 + 984) + i);
      if (v123 != v124)
      {
        v126 = (j + v118);
        v331 = j + v118;
        if (v123 == 42 && v124 == 32)
        {
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "insert boundary at position %d", v40, v41, v42, (j + v118));
          v127 = strlen(*(a1 + 1016));
          v128 = Utf8_LengthInUtf8chars(*(a1 + 1016), (j + v118));
          v129 = v127;
          v130 = Utf8_LengthInUtf8chars(*(a1 + 1016), v127);
          v131 = *(a1 + 1024);
          if (v127 >= v131)
          {
            v316 = v127;
            v132 = v128;
            v133 = v130;
            MrkMemory = wordSeg_ReallocCharStr(a1, v313, (v131 + 32));
            if ((MrkMemory & 0x80000000) != 0)
            {
              goto LABEL_303;
            }

            MrkMemory = wordSeg_ReallocCharStr(a1, v321, (*(a1 + 1024) + 32));
            if ((MrkMemory & 0x80000000) != 0)
            {
              goto LABEL_303;
            }

            *(a1 + 1024) += 32;
            v130 = v133;
            v128 = v132;
            v127 = v316;
          }

          v134 = (v129 - v126);
          v135 = v130;
          memmove((*(a1 + 1016) + v119 + 1), (*(a1 + 1016) + v119), v134);
          *(*(a1 + 1016) + v119) = 32;
          *(*(a1 + 1016) + v127 + 1) = 0;
          v136 = v128 + 1;
          v137 = v135;
          v138 = v135 - v128;
          memmove((*(a1 + 1000) + v136), (*(a1 + 1000) + v128), v138);
          *(*(a1 + 1000) + v128) = 88;
          ++v137;
          *(*(a1 + 1000) + v137) = 0;
          memmove((*(a1 + 1008) + v136), (*(a1 + 1008) + v128), v138);
          *(*(a1 + 1008) + v128) = 32;
          *(*(a1 + 1008) + v137) = 0;
          v142 = *(a1 + 1040);
          if (v142 >= 2)
          {
            v143 = *(a1 + 1032);
            v144 = *(v143 + 12);
            v145 = v142 - 1;
            v146 = (v143 + 44);
            v9 = v311;
            v23 = v336;
            v147 = v331;
            do
            {
              if (*v146 - v144 >= v126)
              {
                ++*v146;
              }

              v146 += 8;
              --v145;
            }

            while (v145);
            v148 = 1;
            v149 = "AFTER insert rule      =%s posInSentStr=%d";
            goto LABEL_156;
          }

          v148 = 1;
          v149 = "AFTER insert rule      =%s posInSentStr=%d";
        }

        else
        {
          v150 = *(*a1 + 32);
          if (v123 != 32 || v124 != 42)
          {
            v293 = 61010;
            v292 = 0;
            goto LABEL_320;
          }

          log_OutText(v150, "FE_WORDSEG", 5, 0, "delete boundary at position %d", v40, v41, v42, (j + v118));
          if (!(j + v118))
          {
            goto LABEL_323;
          }

          v151 = *v313;
          v152 = strlen(*v313);
          if ((j + v118) == v152)
          {
            goto LABEL_323;
          }

          v153 = (j + v118 - 1);
          v154 = j + v118 - 1;
          do
          {
            v155 = v153;
            if (!v154)
            {
              break;
            }

            v156 = v151[v154];
            --v153;
            --v154;
          }

          while (v156 != 32);
          v157 = v152;
          if ((j + v118 + 1) > v152)
          {
            v157 = j + v118 + 1;
          }

          v158 = j + v118;
          while (++v158 < v152)
          {
            if (v151[v158] == 32)
            {
              goto LABEL_147;
            }
          }

          v158 = v157;
LABEL_147:
          if (v158 - v155 >= 65)
          {
LABEL_323:
            v150 = *(*a1 + 32);
            v300 = "deleting boundary at position";
            goto LABEL_308;
          }

          v159 = strlen(v151);
          v160 = Utf8_LengthInUtf8chars(v151, v119);
          v161 = Utf8_LengthInUtf8chars(*(a1 + 1016), v159);
          memmove((*(a1 + 1016) + v119), (*(a1 + 1016) + v126 + 1), (v159 - (v126 + 1)));
          *(*(a1 + 1016) + v159 - 1) = 0;
          v162 = v160 + 1;
          v163 = v161 - v162;
          memmove((*(a1 + 1000) + v160), (*(a1 + 1000) + v162), v163);
          *(*(a1 + 1000) + v160) = 88;
          v164 = v161 - 1;
          *(*(a1 + 1000) + v164) = 0;
          memmove((*(a1 + 1008) + v160), (*(a1 + 1008) + v162), v163);
          *(*(a1 + 1008) + v160) = 32;
          *(*(a1 + 1008) + v164) = 0;
          v165 = *(a1 + 1040);
          if (v165 >= 2)
          {
            v166 = *(a1 + 1032);
            v167 = *(v166 + 12);
            v168 = v165 - 1;
            v169 = (v166 + 44);
            v9 = v311;
            v23 = v336;
            v147 = v331;
            do
            {
              if (*v169 - v167 >= v126)
              {
                --*v169;
              }

              v169 += 8;
              --v168;
            }

            while (v168);
            v148 = 0xFFFF;
            v149 = "AFTER delete rule      =%s posInSentStr=%d";
            goto LABEL_156;
          }

          v148 = 0xFFFF;
          v149 = "AFTER delete rule      =%s posInSentStr=%d";
        }

        v9 = v311;
        v23 = v336;
        v147 = v331;
LABEL_156:
        v125 = v147 + v148;
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, v149, v139, v140, v141, *(a1 + 1016));
        goto LABEL_157;
      }
    }

    v125 = j + v118;
    v9 = v311;
    v23 = v336;
LABEL_157:
    v330 = v125;
    if (*(a1 + 1200))
    {
      v170 = utf8_determineUTF8CharLength(*(*(a1 + 952) + v31));
      v171 = utf8_determineUTF8CharLength(*(*(a1 + 984) + i));
    }

    else
    {
      v329 = v329 + utf8_determineUTF8CharLength(*(*(a1 + 960) + v329));
      v16 = v16 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v16));
      v171 = 1;
      v170 = 1;
    }

    v11 = v170 + v31;
    v13 = v171 + i;
    v22 = v325 + 1;
    v12 = v16;
    if (v325 + 1 >= v309)
    {
      goto LABEL_6;
    }
  }

  v150 = *(*a1 + 32);
  v291 = "start position";
LABEL_307:
  LODWORD(v300) = v291;
LABEL_308:
  v292 = "%s%d%s%d";
  v293 = 61011;
LABEL_320:
  log_OutPublic(v150, "FE_WORDSEG", v293, v292, v39, v40, v41, v42, v300);
LABEL_321:
  v290 = 0;
  *v305 = 1;
LABEL_322:
  v297 = *MEMORY[0x1E69E9840];
  return v290;
}

uint64_t fe_word_seg_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  v3 = *(a1 + 8);

  return synstrmaux_CloseStreams((a1 + 64), v3);
}

uint64_t fe_word_seg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2359304193;
  }

  result = 0;
  *a2 = &IWordSeg;
  return result;
}

uint64_t wordSeg_GetNewCharStr(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = *a2;
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
    *a2 = 0;
  }

  v7 = heap_Calloc(*(*a1 + 8), 1, a3 + 1);
  *a2 = v7;
  if (v7)
  {
    return 0;
  }

  log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v8, v9, v10, v11, v13);
  return 2359304202;
}

uint64_t wordSeg_GetOrthPinyinWords(uint64_t a1, unsigned int a2, uint64_t a3, unsigned __int16 *a4)
{
  v7 = *(a1 + 1200);
  *a4 = 0;
  if (v7)
  {
    if (a2)
    {
      LOWORD(v8) = 0;
      v9 = 0;
      v10 = a1 + 1060;
      do
      {
        v11 = *a4 + utf8_determineUTF8CharLength(*(a3 + v8));
        *a4 = v11;
        *(v10 + 2 * v9++) = v11;
        v8 = *a4;
      }

      while (v8 < a2);
      return v9;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = 0;
  for (i = 0; i < a2; *a4 = i)
  {
    while (1)
    {
      v13 = *(a3 + i);
      if (v13 - 97 > 0x19)
      {
        break;
      }

      *a4 = ++i;
      if (a2 <= i)
      {
        if (a2 == i)
        {
          return 0;
        }

        goto LABEL_17;
      }
    }

    if ((v13 < 0x31 || v13 > *(a1 + 1196)) && (!i || v13 != 39 || *(a3 + i - 1) != 114))
    {
      goto LABEL_27;
    }

LABEL_17:
    *(a1 + 1060 + 2 * v9++) = i + 1;
    i = *a4 + 1;
  }

  if (a2 == i)
  {
    v14 = i;
    v15 = *(a3 + i - 1);
    if ((v15 < 0x31 || v15 > *(a1 + 1196)) && (a2 < 3 || v15 != 39 || *(a3 + v14 - 2) != 114))
    {
      LOBYTE(v13) = *(a3 + v14);
LABEL_27:
      if (!memchr("|-=*()&%^@#$", v13, 0xDuLL))
      {
        return 0;
      }
    }
  }

  return v9;
}

uint64_t wordSeg_GrowDepesLayers(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned int a4, const char *a5, char *a6, char *a7, char *a8, unsigned __int16 a9, unsigned __int16 a10, int a11)
{
  v11 = a8;
  if (!*(a1 + 1200))
  {
    v34 = (a1 + 960);
    v35 = strlen(*(a1 + 960));
    v36 = (a1 + 952);
    v73 = strlen(*(a1 + 952));
    __n = a2;
    v37 = *a2;
    v38 = v35 + a9;
    if (v38 > v37)
    {
      if (a9 <= 0x20u)
      {
        v39 = 32;
      }

      else
      {
        v39 = a9;
      }

      v40 = v37 + v39;
      v41 = (v37 + v39);
      result = wordSeg_ReallocCharStr(a1, (a1 + 952), v41);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v42 = (v41 - v35);
      bzero((*(a1 + 952) + v73), v42);
      result = wordSeg_ReallocCharStr(a1, (a1 + 960), v41);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      bzero((*(a1 + 960) + v35), v42);
      result = wordSeg_ReallocCharStr(a1, (a1 + 968), v40);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      bzero((*(a1 + 968) + v73), v42);
      result = wordSeg_ReallocCharStr(a1, (a1 + 976), v40);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      bzero((*(a1 + 976) + v73), v42);
      *__n = v40;
      v11 = a8;
    }

    if (a11 == 1)
    {
      strncat(*(a1 + 952), (*(a1 + 1000) + a4), a10);
      *(*(a1 + 952) + v73 + a10) = 0;
      strncat(*(a1 + 960), (*(a1 + 1016) + a3), a9);
      *(*(a1 + 960) + v38) = 0;
      if (a10)
      {
        for (i = 0; i < a10; ++i)
        {
          *(*(a1 + 968) + strlen(*(a1 + 968))) = 32;
        }

        for (j = 0; j < a10; ++j)
        {
          *(*(a1 + 976) + strlen(*(a1 + 976))) = 32;
        }
      }
    }

    else
    {
      v45 = strlen(a5);
      v46 = strlen(a6);
      v47 = strlen(a7);
      v77 = strlen(v11);
      strcat(*v36, a5);
      v48 = a10 - v45;
      if (v48 >= 1)
      {
        v49 = 0;
        do
        {
          *&(*v36)[strlen(*v36)] = 126;
          ++v49;
        }

        while (v48 > v49);
      }

      strcat(*v34, a6);
      v50 = a10 - v46;
      if (v50 >= 1)
      {
        v51 = 0;
        do
        {
          *&(*v34)[strlen(*v34)] = 126;
          ++v51;
        }

        while (v50 > v51);
      }

      strcat(*(a1 + 968), a7);
      v52 = a10 - v47;
      if (v52 >= 1)
      {
        v53 = 0;
        do
        {
          *(*(a1 + 968) + strlen(*(a1 + 968))) = 126;
          ++v53;
        }

        while (v52 > v53);
      }

      strcat(*(a1 + 976), a8);
      v54 = a10 - v77;
      if (v54 >= 1)
      {
        v55 = 0;
        do
        {
          *(*(a1 + 976) + strlen(*(a1 + 976))) = 126;
          ++v55;
        }

        while (v54 > v55);
      }
    }

    return 0;
  }

  v16 = (a1 + 952);
  v17 = strlen(*(a1 + 952));
  v72 = (a1 + 960);
  v18 = strlen(*(a1 + 960));
  v69 = (a1 + 968);
  v19 = strlen(*(a1 + 968));
  v20 = strlen(a6);
  v21 = strlen(a7);
  v22 = strlen(v11);
  v23 = *a2;
  if (a9 + v17 + v20 < v23 && a9 + v18 + v21 < v23 && a9 + v19 + v22 < v23)
  {
LABEL_21:
    if (a11 == 1)
    {
      strncat(*(a1 + 952), (*(a1 + 1000) + a4), a10);
      *(*(a1 + 952) + v17 + a10) = 0;
      if (a10)
      {
        for (k = 0; k < a10; ++k)
        {
          *&(*v72)[strlen(*v72)] = 32;
        }

        for (m = 0; m < a10; ++m)
        {
          *&(*v69)[strlen(*v69)] = 32;
        }
      }
    }

    else
    {
      v56 = strlen(a6);
      v57 = Utf8_LengthInUtf8chars(a6, v56);
      v58 = strlen(a7);
      v59 = Utf8_LengthInUtf8chars(a7, v58);
      v60 = strlen(a8);
      v61 = Utf8_LengthInUtf8chars(a8, v60);
      strcat(*v16, a6);
      v62 = a10 - v57;
      if (v62 >= 1)
      {
        v63 = 0;
        do
        {
          *&(*v16)[strlen(*v16)] = 126;
          ++v63;
        }

        while (v62 > v63);
      }

      strcat(*v72, a7);
      v64 = a10 - v59;
      if (v64 >= 1)
      {
        v65 = 0;
        do
        {
          *&(*v72)[strlen(*v72)] = 126;
          ++v65;
        }

        while (v64 > v65);
      }

      strcat(*v69, a8);
      v66 = a10 - v61;
      if (v66 >= 1)
      {
        v67 = 0;
        do
        {
          *&(*v69)[strlen(*v69)] = 126;
          ++v67;
        }

        while (v66 > v67);
      }
    }

    return 0;
  }

  v26 = v21;
  if (v20 > v21)
  {
    v26 = v20;
  }

  if (v26 <= v22)
  {
    v26 = v22;
  }

  v27 = v26 + a9;
  v28 = v23 + a9 + v26;
  v29 = v23 + 32;
  if (v27 <= 0x20)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  result = wordSeg_ReallocCharStr(a1, (a1 + 952), v30);
  if ((result & 0x80000000) == 0)
  {
    bzero((*(a1 + 952) + v17), v30 - v17);
    result = wordSeg_ReallocCharStr(a1, v72, v30);
    if ((result & 0x80000000) == 0)
    {
      bzero((*(a1 + 960) + v18), v30 - v18);
      result = wordSeg_ReallocCharStr(a1, v69, v30);
      if ((result & 0x80000000) == 0)
      {
        bzero(&(*v69)[v19], v30 - v19);
        *a2 = v30;
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t wordSeg_ReallocCharStr(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = heap_Realloc(*(*a1 + 8), *a2, a3 + 1);
  if (v5)
  {
    v10 = v5;
    result = 0;
    *a2 = v10;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v6, v7, v8, v9, v12);
    return 2359304202;
  }

  return result;
}

uint64_t wordSeg_GetMrkInsertPos(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 1040);
  if (v3 < 2)
  {
    return 1;
  }

  v4 = (*(a1 + 1032) + 48);
  v5 = 1;
  while (*(v4 - 1) <= a2)
  {
    ++v5;
    v4 += 8;
    if (v3 == v5)
    {
      return v3;
    }
  }

  result = v5;
  if (*(v4 - 1) == a2 && v3 > v5)
  {
    while (*(v4 - 1) == a2 && *v4 + a2 <= a3)
    {
      ++v5;
      v4 += 8;
      if (v3 == v5)
      {
        return v3;
      }
    }

    return v5;
  }

  return result;
}

uint64_t wordSeg_GetMrkMemory(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 1040);
  if (v4 < *(a1 + 1042))
  {
    v5 = *(a1 + 1032);
LABEL_5:
    memmove((v5 + 32 * a2 + 32), (v5 + 32 * a2), 32 * (v4 - a2));
    result = 0;
    ++*(a1 + 1040);
    return result;
  }

  v6 = v4 + 1;
  *(a1 + 1042) = v6;
  v5 = heap_Realloc(*(*a1 + 8), *(a1 + 1032), 32 * v6);
  if (v5)
  {
    *(a1 + 1032) = v5;
    v4 = *(a1 + 1040);
    goto LABEL_5;
  }

  log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v7, v8, v9, v10, v12);
  return 2359304202;
}

uint64_t tryLoadingCrfModel(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  log_OutText(*(a5 + 32), "FE_PW", 5, 0, "looking for CRF PW model at %s", a6, a7, a8, a7);
  Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, a6, 2, a7, "CRPH", v8, (v8 & 0xFFFFFFu) >> 16, 0);
  if ((Only_ReferenceCnt & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_PW", 5, 0, "no CRF PW model found", v16, v17, v18, a7);
  }

  return Only_ReferenceCnt;
}

uint64_t pw_crf_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t *a8, unsigned __int16 *a9, _DWORD *a10)
{
  v13 = a1;
  v14 = a10;
  v191 = *MEMORY[0x1E69E9840];
  v177 = 0;
  v178 = a8;
  v176 = 0;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  if (a7)
  {
    v15 = 0;
    v16 = a7;
    v17 = (a6 + 8);
    do
    {
      v18 = *(v17 - 1);
      if (strcmp(*v17, "non"))
      {
        *v14 = 0;
      }

      v15 += strlen(v18);
      v17 += 5;
      --v16;
    }

    while (v16);
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  if (*v14)
  {
    v20 = 0;
    goto LABEL_189;
  }

  v20 = 2586845194;
  v166 = heap_Calloc(*(v13 + 8), v19, 8);
  if (!v166)
  {
    goto LABEL_189;
  }

  v21 = heap_Calloc(*(v13 + 8), v19, 8);
  v22 = *(v13 + 8);
  v160 = v21;
  if (!v21)
  {
    v119 = v166;
    goto LABEL_188;
  }

  v23 = heap_Calloc(v22, v19, 8);
  if (!v23)
  {
    heap_Free(*(v13 + 8), v166);
    v22 = *(v13 + 8);
    v119 = v160;
    goto LABEL_188;
  }

  v24 = v23;
  if (!a7)
  {
    goto LABEL_174;
  }

  v25 = 0;
  v26 = 0;
  v156 = a2;
  v157 = a7;
  v162 = v13;
  v163 = v23;
  v158 = a6;
  do
  {
    v159 = v25;
    v27 = (a6 + 40 * v25);
    v28 = *v27;
    if (**v27)
    {
      v29 = 0;
      v165 = 0;
      v30 = 0;
      v161 = (a6 + 40 * v25);
      v164 = *v27;
      do
      {
        v31 = v26;
        v32 = 83;
        v189 = 0u;
        memset(v190, 0, sizeof(v190));
        v188 = 0u;
        *__s = 0u;
        v185 = 0u;
        memset(v186, 0, sizeof(v186));
        *__src = 0u;
        v184 = 0u;
        v33 = utf8_determineUTF8CharLength(v28[v29]);
        v34 = strlen(*v27);
        v35 = v33;
        if (v34 != v33)
        {
          if (v34 - v33 == v29)
          {
            v32 = 69;
          }

          else if (v30)
          {
            v32 = 77;
          }

          else
          {
            v32 = 66;
          }
        }

        v175 = v32;
        __c = 0;
        v179 = 0;
        __strncpy_chk();
        __c_1[v33] = 0;
        v180 = 0;
        if (((*(a3 + 96))(a4, a5, "wpcrf", __c_1, &v179, &v180, &__c) & 0x80000000) == 0)
        {
          v39 = v180;
          if (v180)
          {
            v40 = v179;
            v41 = __c;
            while (1)
            {
              v42 = *v40;
              v43 = strchr(*v40, v41);
              if (v43)
              {
                break;
              }

              ++v40;
              if (!--v39)
              {
                goto LABEL_61;
              }
            }

            v49 = v43;
            if (v43 != v42 || v43 - v42 >= 1)
            {
              __strncat_chk();
            }

            __strcat_chk();
            v51 = v49 + 1;
            v52 = strchr(v51, __c);
            if (v52)
            {
              v53 = v52;
              v54 = 0;
              do
              {
                __strcat_chk();
                v55 = v53 - v51;
                if (v53 - v51 < 0)
                {
                  v55 = v51 - v53;
                }

                v56 = v55;
                __strncat_chk();
                if (!v54)
                {
                  v57 = v56 == 1 && *v51 == 49;
                  *(v160 + 8 * v31) = v57;
                }

                v51 = v53 + 1;
                v53 = strchr(v53 + 1, __c);
                --v54;
              }

              while (v53);
            }

LABEL_60:
            __strcat_chk();
            __strncat_chk();
            goto LABEL_61;
          }

          if (((*(a3 + 96))(a4, a5, "wpcrf", "NULL", &v179, &v180, &__c) & 0x80000000) == 0)
          {
            v44 = v180;
            if (v180)
            {
              v45 = v179;
              v46 = __c;
              while (1)
              {
                v47 = *v45;
                v48 = strchr(*v45, v46);
                if (v48)
                {
                  break;
                }

                ++v45;
                if (!--v44)
                {
                  goto LABEL_61;
                }
              }

              v58 = v48;
              if (v48 != v47 || v48 - v47 >= 1)
              {
                __strncat_chk();
              }

              __strcat_chk();
              v60 = strchr(v58 + 1, __c);
              if (v60)
              {
                v61 = v60;
                do
                {
                  __strcat_chk();
                  __strncat_chk();
                  v61 = strchr(v61 + 1, __c);
                }

                while (v61);
              }

              goto LABEL_60;
            }
          }
        }

LABEL_61:
        v13 = v162;
        if (LogLevel >= 5)
        {
          log_OutText(*(v162 + 32), "FE_PW", 5, 0, "[PWCRF] Feat: %s", v36, v37, v38, __s);
        }

        v62 = heap_Calloc(*(v162 + 8), 1, 69);
        v24 = v163;
        v28 = v164;
        v26 = v31;
        *(v163 + 8 * v31) = v62;
        if (!v62)
        {
LABEL_167:
          v20 = 2584748042;
          goto LABEL_168;
        }

        v63 = v62;
        if (!__src[0])
        {
          strncpy(v62, &v164[v29], v35);
          goto LABEL_68;
        }

        if (*__src ^ 0x4C4C554E | __src[4])
        {
          strcpy(v62, __src);
LABEL_68:
          v64 = strlen(__s);
          v65 = heap_Calloc(*(v162 + 8), 1, v64 + 1);
          v166[v31] = v65;
          if (!v65)
          {
            goto LABEL_167;
          }

          strcpy(v65, __s);
          if (v165)
          {
            if (v175 == 69)
            {
              v66 = 83;
            }

            else
            {
              v66 = 66;
            }

            *(v166[v31] + strlen(v166[v31]) - 1) = v66;
          }

          v165 = 0;
          v26 = (v31 + 1);
          goto LABEL_85;
        }

        if (v31 && v175 == 69)
        {
          v67 = v166[(v31 - 1)];
          v68 = strlen(v67);
          if (v67[v68 - 1] == 66)
          {
            v69 = 83;
          }

          else
          {
            v69 = 69;
          }

          v67[v68 - 1] = v69;
          v63 = *(v163 + 8 * v31);
        }

        else
        {
          v70 = v165;
          if (v175 == 66)
          {
            v70 = 1;
          }

          v165 = v70;
        }

        heap_Free(*(v162 + 8), v63);
        *(v163 + 8 * v31) = 0;
LABEL_85:
        v27 = v161;
        v30 += v35;
        v29 = v30;
      }

      while (strlen(*v161) > v30);
    }

    a6 = v158;
    v25 = v159 + 1;
  }

  while (v159 + 1 != v157);
  if (!v26)
  {
LABEL_174:
    v120 = 0;
    v20 = 2584748040;
    a9 = 0;
    v76 = v177;
    v123 = 1;
    LODWORD(v75) = v176;
    goto LABEL_176;
  }

  v71 = crf_Process(v156, v166, v26, &v177, &v176);
  v75 = v176;
  v76 = v177;
  if (!v176)
  {
    v20 = v71;
    goto LABEL_169;
  }

  v77 = 1;
  v78 = v177;
  v79 = v160;
  v80 = v176;
  while (2)
  {
    v81 = *v79;
    v79 += 2;
    if (v81)
    {
      if (v77 == 1)
      {
        if (v75 != 1)
        {
          **v76 = 66;
          v82 = v76[1];
          v83 = *v82;
          if (v83 == 83)
          {
            *v82 = 69;
          }

          else if (v83 == 66)
          {
            *v82 = 77;
          }
        }

        goto LABEL_107;
      }

      **v78 = 69;
      v84 = *(v78 - 1);
      v85 = *v84;
      if (v85 == 83)
      {
        v86 = 66;
LABEL_100:
        *v84 = v86;
      }

      else if (v85 == 69)
      {
        v86 = 77;
        goto LABEL_100;
      }

      if (v77 < v75)
      {
        v87 = v78[1];
        v88 = *v87;
        if (v88 == 69)
        {
          *v87 = 83;
        }

        else if (v88 == 77)
        {
          *v87 = 66;
        }
      }
    }

LABEL_107:
    ++v77;
    ++v78;
    if (--v80)
    {
      continue;
    }

    break;
  }

  v89 = v76 + 1;
  v90 = v75;
  while (2)
  {
    v91 = *(v89 - 1);
    v92 = *v91;
    if (v90 == 1)
    {
      if (v92 == 77)
      {
        LOBYTE(v93) = 69;
      }

      else
      {
        if (v92 != 66)
        {
          break;
        }

        LOBYTE(v93) = 83;
      }

LABEL_127:
      *v91 = v93;
    }

    else
    {
      if (*v91 > 0x4Cu)
      {
        if (v92 != 77)
        {
          if (v92 == 83 && (**v89 | 8) == 0x4D)
          {
            LOBYTE(v93) = 66;
            goto LABEL_127;
          }

          goto LABEL_128;
        }

        v94 = **v89;
        LOBYTE(v93) = 69;
      }

      else
      {
        if (v92 != 66)
        {
          if (v92 == 69)
          {
            v93 = **v89 | 8;
            if (v93 == 77)
            {
              goto LABEL_127;
            }
          }

          goto LABEL_128;
        }

        v94 = **v89;
        LOBYTE(v93) = 83;
      }

      if (v94 == 66 || v94 == 83)
      {
        goto LABEL_127;
      }
    }

LABEL_128:
    ++v89;
    if (--v90)
    {
      continue;
    }

    break;
  }

  v170 = v26;
  if (LogLevel >= 5)
  {
    do
    {
      v95 = *v76++;
      log_OutText(*(v13 + 32), "FE_PW", 5, 0, "[PWCRF] Predicted Tag: %s", v72, v73, v74, v95);
      --v75;
    }

    while (v75);
  }

  v96 = v176;
  if (!v176)
  {
    goto LABEL_233;
  }

  v97 = 0;
  v98 = v177;
  v173 = v176 - 1;
  v168 = v176 - 1;
  while (2)
  {
    v99 = v166[v97];
    v100 = strlen(v99) - 1;
    v101 = v98[v97];
    v102 = *v101;
    if (v102 == 83)
    {
      if (v99[v100] != 83)
      {
        *v101 = 66;
        v111 = v97 + 1;
        if (v111 < v96)
        {
          v112 = *(v166[v111] + strlen(v166[v111]) - 1);
          v113 = v97;
          while (v112 != 69)
          {
            *v98[v111] = 77;
            if (v173 == v111)
            {
              goto LABEL_149;
            }

            v112 = *(v166[v111 + 1] + strlen(v166[v111 + 1]) - 1);
            ++v113;
            ++v111;
          }

          *v98[v111] = 69;
          v114 = v113 + 2;
          if (v113 + 2 >= v96)
          {
            goto LABEL_162;
          }

          v115 = v98[v114];
          v116 = *v115;
          if (v116 == 77)
          {
            goto LABEL_159;
          }

          if (v116 != 69)
          {
            goto LABEL_162;
          }

          goto LABEL_160;
        }
      }

      goto LABEL_149;
    }

    if (v102 != 69 || (v103 = v99[v100], v103 == 69) || v103 == 83 || (*v101 = 77, v104 = v97 + 1, v97 + 1 >= v96))
    {
LABEL_149:
      ++v97;
      goto LABEL_150;
    }

    v105 = &v98[v104];
    v106 = -2 - v97;
    v107 = v168 - v97;
    v108 = &v166[v104];
    while (1)
    {
      v109 = (*v108)[strlen(*v108) - 1];
      if (v109 == 83 || v109 == 69)
      {
        break;
      }

      v110 = *v105++;
      *v110 = 77;
      --v106;
      ++v108;
      if (!--v107)
      {
        goto LABEL_149;
      }
    }

    **v105 = 69;
    v114 = -v106;
    if (-v106 >= v96)
    {
      goto LABEL_163;
    }

    v115 = v98[v114];
    v117 = *v115;
    if (v117 != 69)
    {
      if (v117 == 77)
      {
LABEL_159:
        v118 = 66;
        goto LABEL_161;
      }

      goto LABEL_162;
    }

LABEL_160:
    v118 = 83;
LABEL_161:
    *v115 = v118;
LABEL_162:
    if (v114 < 2)
    {
      v97 += v114;
    }

    else
    {
LABEL_163:
      v97 = v114;
    }

LABEL_150:
    if (v97 < v96)
    {
      continue;
    }

    break;
  }

  v129 = v176;
  LODWORD(v26) = v170;
  if (!v176)
  {
    goto LABEL_233;
  }

  v130 = 0;
  v131 = 0;
  v174 = v177;
  v132 = "latin";
  while (2)
  {
    v133 = (v158 + 40 * v130);
    if (!strcmp(v133[2], v132))
    {
      v136 = v132;
      v137 = Utf8_Utf8NbrOfSymbols(*v133);
      if (!v130)
      {
        goto LABEL_215;
      }

      if (!v131)
      {
        goto LABEL_215;
      }

      v138 = v166[v131];
      v139 = strlen(v138);
      if (!v139)
      {
        goto LABEL_215;
      }

      v140 = v139;
      v141 = v166[v131 - 1];
      v142 = strlen(v141);
      if (!v142)
      {
        goto LABEL_215;
      }

      v143 = v142;
      if (!strcmp(*(v133 - 3), v136) || v138[v140 - 1] == 77 || v141[v143 - 1] == 77)
      {
        goto LABEL_215;
      }

      v144 = v174[v131 - 1];
      v145 = *v144;
      if (v145 == 77)
      {
        v146 = 69;
      }

      else
      {
        if (v145 != 66)
        {
LABEL_210:
          v147 = v174[v131];
          v148 = *v147;
          if (v148 == 69)
          {
            v149 = 83;
          }

          else
          {
            if (v148 != 77)
            {
              goto LABEL_215;
            }

            v149 = 66;
          }

          *v147 = v149;
LABEL_215:
          v131 = v131 + v137 - 1;
          if (v131 >= v129)
          {
            goto LABEL_230;
          }

          v132 = v136;
          if (!strcmp(v133[7], v136) || *(v166[v131 - 1] + strlen(v166[v131 - 1]) - 1) == 77 || *(v166[v131] + strlen(v166[v131]) - 1) == 77)
          {
            LODWORD(v26) = v170;
LABEL_231:
            if (++v130 >= v157 || v131 >= v129)
            {
              goto LABEL_233;
            }

            continue;
          }

          v150 = v174[v131 - 1];
          v151 = *v150;
          if (v151 == 77)
          {
            v152 = 69;
          }

          else
          {
            if (v151 != 66)
            {
LABEL_225:
              v153 = v174[v131];
              v154 = *v153;
              if (v154 == 69)
              {
                v155 = 83;
                goto LABEL_229;
              }

              if (v154 == 77)
              {
                v155 = 66;
LABEL_229:
                *v153 = v155;
              }

LABEL_230:
              LODWORD(v26) = v170;
              v132 = v136;
              goto LABEL_231;
            }

            v152 = 83;
          }

          *v150 = v152;
          goto LABEL_225;
        }

        v146 = 83;
      }

      *v144 = v146;
      goto LABEL_210;
    }

    break;
  }

  v134 = v131;
  while (1)
  {
    v131 = v134 + 1;
    if (v134 + 1 >= v129)
    {
      break;
    }

    v135 = *(v166[v134] + strlen(v166[v134]) - 1);
    if (v135 != 83)
    {
      v134 = v131;
      if (v135 != 69)
      {
        continue;
      }
    }

    goto LABEL_231;
  }

LABEL_233:
  v13 = v162;
  v20 = pw_crf_alginWS(v162, v176, v158, v166, v177, &v178, &a9);
  v24 = v163;
LABEL_168:
  v76 = v177;
  LODWORD(v75) = v176;
  if (v26)
  {
LABEL_169:
    v120 = v26;
    v121 = v166;
    v122 = v120;
    do
    {
      if (*v121)
      {
        heap_Free(*(v13 + 8), *v121);
      }

      ++v121;
      --v122;
    }

    while (v122);
    v123 = 0;
  }

  else
  {
    v120 = 0;
    v123 = 1;
  }

LABEL_176:
  heap_Free(*(v13 + 8), v166);
  heap_Free(*(v13 + 8), v160);
  if ((v123 & 1) == 0)
  {
    v124 = v24;
    do
    {
      if (*v124)
      {
        heap_Free(*(v13 + 8), *v124);
      }

      ++v124;
      --v120;
    }

    while (v120);
  }

  heap_Free(*(v13 + 8), v24);
  if (v76)
  {
    if (v75)
    {
      v125 = v75;
      v126 = v76;
      do
      {
        if (*v126)
        {
          heap_Free(*(v13 + 8), *v126);
        }

        ++v126;
        --v125;
      }

      while (v125);
    }

    v22 = *(v13 + 8);
    v119 = v76;
LABEL_188:
    heap_Free(v22, v119);
  }

LABEL_189:
  v127 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t pw_crf_alginWS(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned __int8 **a5, uint64_t **a6, unsigned __int16 **a7)
{
  v10 = a2;
  v11 = a1;
  v12 = *a6;
  v13 = 0;
  if (a2)
  {
    v14 = a2;
    v15 = a5;
    do
    {
      v16 = **v15;
      if (v16 == 83 || v16 == 69)
      {
        ++v13;
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  **a7 = v13;
  v17 = heap_Calloc(*(a1 + 8), v13 + 1, 16);
  *v12 = v17;
  if (v17)
  {
    if (v10)
    {
      v22 = v17;
      v45 = a3;
      v46 = v11;
      LODWORD(v23) = 0;
      v24 = 0;
      v25 = v10;
      v47 = v10;
      do
      {
        v26 = 0;
        v27 = v23;
        v23 = v23;
        do
        {
          v28 = v26;
          v29 = *a5[v23];
          if (v29 == 69)
          {
            break;
          }

          v30 = v29 == 83;
          v26 = v28 + 1;
          ++v23;
        }

        while (!v30 && v23 < v25);
        v48 = v27;
        if (v27 >= v10)
        {
          v38 = 0;
          v32 = 0;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v37 = *(*(a4 + 8 * v27) + strlen(*(a4 + 8 * v27)) - 1);
            if (v37 == 83 || v37 == 69)
            {
              ++v32;
            }

            v38 = v33 + 1;
            if (v33 == v28)
            {
              break;
            }

            ++v27;
            ++v33;
            if (v25 == v27)
            {
              goto LABEL_30;
            }
          }

          if (!v32)
          {
            log_OutText(*(v46 + 32), "FE_PW", 0, 0, "No Lex Word Found in Current PW. Pos: %d", v34, v35, v36, v27);
            return 2584748047;
          }

          *(v22 + 8) = v32;
          v11 = v46;
          v39 = v32;
          v40 = heap_Alloc(*(v46 + 8), 2 * v32);
          *v22 = v40;
          if (!v40)
          {
            goto LABEL_32;
          }

          v41 = v24;
          do
          {
            *v40++ = *(v45 + 40 * v41++ + 24);
            --v39;
          }

          while (v39);
        }

LABEL_30:
        v24 += v32;
        LODWORD(v23) = v48 + v38;
        v22 += 16;
        v10 = v47;
      }

      while (v23 < v47);
    }

    return 0;
  }

  else
  {
LABEL_32:
    v42 = 2584748042;
    log_OutPublic(*(v11 + 32), "FE_PW", 37000, 0, v18, v19, v20, v21, v44);
  }

  return v42;
}

uint64_t fe_pw_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v57 = 0;
  *v58 = 0;
  __s1 = 0;
  v56 = 0;
  igtree = 2584748039;
  v54 = 0;
  v53 = -1;
  v52 = 0;
  memset(v59, 0, sizeof(v59));
  if (!a5)
  {
    goto LABEL_39;
  }

  v51 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, v58);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v12 = heap_Calloc(*(*v58 + 8), 1, 1192);
  if (!v12)
  {
    log_OutPublic(*(*v58 + 32), "FE_PW", 37000, 0, v13, v14, v15, v16, v46);
    igtree = 2584748042;
LABEL_38:
    fe_pw_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    goto LABEL_39;
  }

  v17 = v12;
  inited = objc_GetObject(*(*v58 + 48), "LINGDB", &v57);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  *(v17 + 48) = *(v57 + 8);
  inited = objc_GetObject(*(*v58 + 48), "FE_DCTLKP", &v56);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v18 = v56;
  v19 = *(v56 + 8);
  *(v17 + 128) = v19;
  *(v17 + 136) = *(v18 + 16);
  v20 = *v58;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *v17 = a1;
  *(v17 + 8) = a1;
  *(v17 + 16) = a2;
  *(v17 + 24) = v20;
  *(v17 + 1180) = 0;
  *(v17 + 64) = 0;
  v21 = (v17 + 64);
  *(v17 + 1184) = 0;
  igtree = (*(v19 + 96))(*(v17 + 136), *(v17 + 144), "fecfg", "statbnd_enable_nnets", &v54, &v53, &v52);
  if (v53 && v54 && ((*v54)[strlen(*v54) - 1] = 0, !strcmp(*v54, "yes")))
  {
    *(v17 + 1180) = 1;
    *a5 = v17;
    *(a5 + 8) = 62341;
  }

  else if (!*(v17 + 1180))
  {
    if (!com_enable_cscgroup(*(v17 + 128), *(v17 + 136), *(v17 + 144), (v17 + 152)))
    {
      *(v17 + 152) = 1;
    }

    if (!com_cscgroup_stopwords(*(v17 + 128), *(v17 + 136), *(v17 + 144), (v17 + 156)))
    {
      *(v17 + 156) = 0;
    }

    v22 = (v17 + 112);
    if (!com_auxiliarywords(*(v17 + 24), *(v17 + 128), *(v17 + 136), *(v17 + 144), (v17 + 112), (v17 + 120)))
    {
      *v22 = 0;
    }

    inited = fw_pw_CreateVoiceBrokerString(*(v17 + 24), v59);
    if ((inited & 0x80000000) == 0)
    {
      if (((*(*(v17 + 128) + 256))(*(v17 + 136), *(v17 + 144), "fepw_enable_crf", "no", &__s1) & 0x80000000) != 0 || strcmp(__s1, "yes"))
      {
        if ((ssftriff_reader_ObjOpen(a3, a4, 2, v59, "PWDT", 1031, (v17 + 64)) & 0x80000000) == 0)
        {
          v50 = 0;
          v48 = 0;
          v49 = 0;
          v47 = 0;
          for (i = ssftriff_reader_OpenChunk(*v21, &v49, &v48, &v47, v23, v24, v25, v26); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v21, &v49, &v48, &v47, v33, v34, v35, v36))
          {
            if (!(v49 ^ 0x52545344 | v50))
            {
              inited = ssftriff_reader_GetChunkData(*v21, v48, (v17 + 56), v28, v29, v30, v31, v32);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_37;
              }

              *v22 = 0;
              inited = GetRulesFromRiffData(*v58, *v21, *(v17 + 56), v48, (v17 + 72), (v17 + 80), (v17 + 96), (v17 + 100), (v17 + 104), (v17 + 112), (v17 + 120));
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_37;
              }
            }

            ssftriff_reader_CloseChunk(*v21);
          }

          igtree = i;
          if ((i & 0x1FFF) == 0xA)
          {
            *(v17 + 56) = 0;
            goto LABEL_39;
          }
        }

        goto LABEL_32;
      }

      inited = tryLoadingCrfModel(*(v17 + 32), *(v17 + 40), *(v17 + 8), *(v17 + 16), *(v17 + 24), (v17 + 88), v59, 1031);
      if ((inited & 0x80000000) == 0)
      {
LABEL_32:
        igtree = load_igtree_cfg(*(v17 + 136), *(v17 + 144), *(v17 + 128), &v51);
        if ((igtree & 0x80000000) == 0)
        {
          if (v51)
          {
            v37 = (v17 + 1184);
            igtree = load_igtree(*(v17 + 32), *(v17 + 40), *(v17 + 24), (v17 + 1184));
            if ((igtree & 0x80000000) != 0)
            {
              if (*v37)
              {
                igtree_Deinit(*(v17 + 24), *v37, v38, v39, v40, v41, v42, v43);
                igtree = 0;
                *(v17 + 1184) = 0;
              }

              else
              {
                igtree = 0;
              }
            }
          }

          *a5 = v17;
          *(a5 + 8) = 62341;
        }

        goto LABEL_39;
      }
    }

LABEL_37:
    igtree = inited;
    goto LABEL_38;
  }

  if ((igtree & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  v44 = *MEMORY[0x1E69E9840];
  return igtree;
}

uint64_t fw_pw_CreateVoiceBrokerString(uint64_t a1, char *a2)
{
  *v5 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v5);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "prosodyword", 1, 1, *v5, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t fe_pw_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62341, 1192);
  if ((v3 & 0x80000000) != 0)
  {
    return 2584748040;
  }

  Only_DereferenceCnt = v3;
  if (a1)
  {
    if (*(a1 + 48))
    {
      objc_ReleaseObject(*(*(a1 + 24) + 48), "LINGDB");
    }

    if (*(a1 + 128))
    {
      objc_ReleaseObject(*(*(a1 + 24) + 48), "FE_DCTLKP");
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      ssftriff_reader_ObjClose(v12, v4, v5, v6, v7, v8, v9, v10);
    }

    v13 = *(a1 + 112);
    if (v13)
    {
      v14 = *(a1 + 120);
      if (*(a1 + 120))
      {
        v15 = 0;
        do
        {
          v16 = *(*(a1 + 112) + 8 * v15);
          if (v16)
          {
            heap_Free(*(*(a1 + 24) + 8), v16);
            v14 = *(a1 + 120);
          }

          ++v15;
        }

        while (v15 < v14);
        v13 = *(a1 + 112);
      }

      heap_Free(*(*(a1 + 24) + 8), v13);
    }

    if (*(a1 + 1180))
    {
      goto LABEL_31;
    }

    v17 = *(a1 + 88);
    if (!v17)
    {
LABEL_21:
      v18 = *(a1 + 72);
      if (v18)
      {
        v19 = *(a1 + 80);
        if (v19)
        {
          v20 = 0;
          v21 = 16;
          do
          {
            v22 = *(*(a1 + 72) + v21);
            if (v22)
            {
              heap_Free(*(*(a1 + 24) + 8), v22);
              v19 = *(a1 + 80);
            }

            ++v20;
            v21 += 32;
          }

          while (v20 < v19);
          v18 = *(a1 + 72);
        }

        heap_Free(*(*(a1 + 24) + 8), v18);
      }

      v23 = *(a1 + 1184);
      if (v23)
      {
        igtree_Deinit(*(a1 + 24), v23, v17, v6, v7, v8, v9, v10);
        heap_Free(*(*(a1 + 24) + 8), *(a1 + 1184));
        *(a1 + 1184) = 0;
      }

LABEL_31:
      heap_Free(*(*(a1 + 24) + 8), a1);
      return Only_DereferenceCnt;
    }

    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(*(a1 + 24), *a1, v17);
    if ((Only_DereferenceCnt & 0x80000000) == 0)
    {
      *(a1 + 88) = 0;
      goto LABEL_21;
    }
  }

  return Only_DereferenceCnt;
}

uint64_t fe_pw_ObjReopen(uint64_t a1, int a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = 2584748038;
  memset(v51, 0, sizeof(v51));
  VoiceBrokerString = safeh_HandleCheck(a1, a2, 62341, 1192);
  if ((VoiceBrokerString & 0x80000000) != 0)
  {
    v3 = 2584748040;
    goto LABEL_6;
  }

  if (a1)
  {
    if (*(a1 + 1180))
    {
      goto LABEL_4;
    }

    v50 = 0;
    VoiceBrokerString = fw_pw_CreateVoiceBrokerString(*(a1 + 24), v51);
    if ((VoiceBrokerString & 0x80000000) != 0)
    {
      goto LABEL_4;
    }

    v15 = (a1 + 64);
    v14 = *(a1 + 64);
    if (v14)
    {
      ssftriff_reader_ObjClose(v14, v7, v8, v9, v10, v11, v12, v13);
      *v15 = 0;
    }

    v16 = *(a1 + 88);
    if (v16)
    {
      VoiceBrokerString = crf_Deinit_ReadOnly_DereferenceCnt(*(a1 + 24), *a1, v16);
      if ((VoiceBrokerString & 0x80000000) != 0)
      {
        goto LABEL_4;
      }

      *(a1 + 88) = 0;
    }

    if ((tryLoadingCrfModel(*(a1 + 32), *(a1 + 40), *(a1 + 8), *(a1 + 16), *(a1 + 24), (a1 + 88), v51, 1031) & 0x80000000) != 0)
    {
      if ((ssftriff_reader_ObjOpen(*(a1 + 32), *(a1 + 40), 2, v51, "PWDT", 1031, (a1 + 64)) & 0x80000000) != 0)
      {
        *(a1 + 56) = 0;
      }

      else
      {
        v49 = 0;
        v47 = 0;
        *v48 = 0;
        v32 = (a1 + 112);
        v31 = *(a1 + 112);
        if (v31)
        {
          v33 = *(a1 + 120);
          if (*(a1 + 120))
          {
            v34 = 0;
            do
            {
              v35 = *(*v32 + 8 * v34);
              if (v35)
              {
                heap_Free(*(*(a1 + 24) + 8), v35);
                v33 = *(a1 + 120);
              }

              ++v34;
            }

            while (v34 < v33);
            v31 = *v32;
          }

          heap_Free(*(*(a1 + 24) + 8), v31);
        }

        v37 = (a1 + 72);
        v36 = *(a1 + 72);
        if (v36)
        {
          v38 = *(a1 + 80);
          if (v38)
          {
            v39 = 0;
            v40 = 16;
            do
            {
              v41 = *(*v37 + v40);
              if (v41)
              {
                heap_Free(*(*(a1 + 24) + 8), v41);
                v38 = *(a1 + 80);
              }

              ++v39;
              v40 += 32;
            }

            while (v39 < v38);
            v36 = *v37;
          }

          heap_Free(*(*(a1 + 24) + 8), v36);
        }

        for (i = ssftriff_reader_OpenChunk(*v15, &v48[1], v48, &v47, v19, v20, v21, v22); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v15, &v48[1], v48, &v47, v43, v44, v45, v46))
        {
          if (!(v48[1] ^ 0x52545344 | v49))
          {
            VoiceBrokerString = ssftriff_reader_GetChunkData(*v15, v48[0], (a1 + 56), v18, v19, v20, v21, v22);
            if ((VoiceBrokerString & 0x80000000) != 0)
            {
              goto LABEL_4;
            }

            *(a1 + 112) = 0;
            VoiceBrokerString = GetRulesFromRiffData(*(a1 + 24), *(a1 + 64), *(a1 + 56), v48[0], (a1 + 72), (a1 + 80), (a1 + 96), (a1 + 100), (a1 + 100), (a1 + 112), (a1 + 120));
            if ((VoiceBrokerString & 0x80000000) != 0)
            {
              goto LABEL_4;
            }
          }

          ssftriff_reader_CloseChunk(*v15);
        }

        v3 = i;
        if ((i & 0x1FFF) == 0xA)
        {
          goto LABEL_6;
        }
      }
    }

    v23 = *(a1 + 1184);
    if (v23)
    {
      igtree_Deinit(*(a1 + 24), v23, v17, v18, v19, v20, v21, v22);
      heap_Free(*(*(a1 + 24) + 8), *(a1 + 1184));
      *(a1 + 1184) = 0;
    }

    v3 = load_igtree_cfg(*(a1 + 136), *(a1 + 144), *(a1 + 128), &v50);
    if ((v3 & 0x80000000) == 0 && v50)
    {
      v24 = (a1 + 1184);
      VoiceBrokerString = load_igtree(*(a1 + 32), *(a1 + 40), *(a1 + 24), (a1 + 1184));
      if ((VoiceBrokerString & 0x80000000) != 0)
      {
        if (*v24)
        {
          igtree_Deinit(*(a1 + 24), *v24, v25, v26, v27, v28, v29, v30);
          v3 = 0;
          *(a1 + 1184) = 0;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_6;
      }

LABEL_4:
      v3 = VoiceBrokerString;
    }
  }

LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t fe_pw_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62341, 1192);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2584748040;
  }
}

uint64_t fe_pw_PYT_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, unsigned int a8, uint64_t *a9, unsigned __int16 *a10)
{
  v117 = *a9;
  __s1 = 0;
  v11 = *a10;
  v120 = 0;
  v12 = a6;
  v119 = 0;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v112 = a8;
    v16 = (a5 + 24);
    v17 = 1;
    while (1)
    {
      v18 = (v117 + 16 * v14);
      if (*(v18 + 4) > 1u)
      {
        goto LABEL_9;
      }

      v19 = **v18;
      v119 = 0;
      v13 = (*(*(a1 + 48) + 184))(a2, a3, v19, 9, &v119);
      if ((v13 & 0x80000000) == 0 && v119 == 1)
      {
        v13 = (*(*(a1 + 48) + 176))(a2, a3, v19, 9, &v120, &v119);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_67:
          heap_Free(*(a4 + 8), v117);
          return v13;
        }
      }

      if (!v120 || !strcmp(v120, "mnc!"))
      {
        v21 = 0;
        if (v12)
        {
          v22 = v16;
          while (1)
          {
            v23 = *v22;
            v22 += 20;
            if (v23 == **v18)
            {
              break;
            }

            if (v12 == ++v21)
            {
              LODWORD(v21) = v12;
              goto LABEL_16;
            }
          }

          LODWORD(v21) = v21;
        }

LABEL_16:
        if (a8)
        {
          v24 = a7;
          v25 = *(a5 + 40 * v21 + 28);
          v26 = v112;
          while (1)
          {
            v27 = *v24++;
            if (v27 == v25)
            {
              break;
            }

            if (!--v26)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          if (v17 != 1)
          {
            v119 = 0;
            __s1 = 0;
            v13 = (*(*(a1 + 48) + 184))(a2, a3, v19, 19, &v119);
            v17 = 0;
            v20 = 1;
            if ((v13 & 0x80000000) == 0 && v119 == 1)
            {
              v13 = (*(*(a1 + 48) + 176))(a2, a3, v19, 19, &__s1, &v119);
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }

              v17 = 0;
              v20 = strcmp(__s1, "left") == 0;
            }

            goto LABEL_26;
          }
        }

        v17 = 0;
        v20 = 1;
      }

      else
      {
LABEL_9:
        v20 = 1;
        v17 = 1;
      }

LABEL_26:
      v15 += v20;
      if (v11 <= ++v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
  v13 = 0;
LABEL_29:
  v28 = heap_Calloc(*(a4 + 8), v15, 16);
  if (!v28)
  {
LABEL_68:
    v13 = 2584748042;
    log_OutPublic(*(a4 + 32), "FE_PW", 37000, 0, v29, v30, v31, v32, v104);
    return v13;
  }

  *a10 = v15;
  v113 = v28;
  *a9 = v28;
  if (v11)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 1;
    while (1)
    {
      v37 = (v117 + 16 * v34);
      if (*(v37 + 4) < 2u)
      {
        v38 = **v37;
        v119 = 0;
        if (((*(*(a1 + 48) + 184))(a2, a3, v38, 9, &v119) & 0x80000000) == 0 && v119 == 1)
        {
          v39 = (*(*(a1 + 48) + 176))(a2, a3, v38, 9, &v120, &v119);
          if ((v39 & 0x80000000) != 0)
          {
            v13 = v39;
            goto LABEL_67;
          }
        }

        if (!v120 || !strcmp(v120, "mnc!"))
        {
          break;
        }
      }

      log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v30, v31, v32, v33);
      fe_pw_copy_pw(a4, v37, v113 + 16 * v35, v40, v41, v42, v43, v44, v105);
      log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v45, v46, v47, v33);
      v13 = 0;
      ++v35;
      v36 = 1;
LABEL_63:
      v33 = ++v34;
      if (v33 >= v11)
      {
        goto LABEL_66;
      }
    }

    v48 = 0;
    if (v12)
    {
      v49 = (a5 + 24);
      while (1)
      {
        v50 = *v49;
        v49 += 20;
        if (v50 == **v37)
        {
          break;
        }

        if (v12 == ++v48)
        {
          LODWORD(v48) = v12;
          goto LABEL_45;
        }
      }

      LODWORD(v48) = v48;
    }

LABEL_45:
    if (a8)
    {
      v51 = a7;
      v52 = *(a5 + 40 * v48 + 28);
      v53 = a8;
      while (1)
      {
        v54 = *v51++;
        if (v54 == v52)
        {
          break;
        }

        if (!--v53)
        {
          goto LABEL_49;
        }
      }

      if (v36 != 1)
      {
        v80 = v35;
        log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> I am a PYT PW start with Marker! Copy pPWIn[%d] to pPWOut[%d].", v30, v31, v32, v33);
LABEL_60:
        fe_pw_copy_pw(a4, v37, v113 + 16 * v80, v81, v82, v83, v84, v85, v106);
        v94 = *(a4 + 32);
        goto LABEL_61;
      }
    }

    else
    {
LABEL_49:
      if (v36 != 1)
      {
        v119 = 0;
        __s1 = 0;
        if (((*(*(a1 + 48) + 184))(a2, a3, v38, 19, &v119) & 0x80000000) == 0 && v119 == 1)
        {
          v13 = (*(*(a1 + 48) + 176))(a2, a3, v38, 19, &__s1, &v119);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }

          v61 = strcmp(__s1, "left");
          v62 = *(a4 + 32);
          if (v61)
          {
            v63 = v35 - 1;
            log_OutText(v62, "FE_PW", 5, 0, ">>> No space before this PYT unit. Merge pPWIn[%d] to pPWOut[%d] ...", v58, v59, v60, v33);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "pPWIn[%d] is: ", v64, v65, v66, v33);
            pw_show_pw_0(a4, v37);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Before merge, pPWOut[%d] is: ", v67, v68, v69, v63);
            v70 = v113 + 16 * v63;
            pw_show_pw_0(a4, v70);
            v71 = *(v70 + 8) + 1;
            *(v70 + 8) = v71;
            v72 = heap_Realloc(*(a4 + 8), *v70, 2 * v71);
            *v70 = v72;
            if (!v72)
            {
              goto LABEL_68;
            }

            v73 = *v37;
            *(v72 + 2 * *(v70 + 8) - 2) = **v37;
            heap_Free(*(a4 + 8), v73);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "After merge, pPWOut[%d] is: ", v74, v75, v76, v63);
            pw_show_pw_0(a4, v70);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Merge pPWIn[%d] to pPWOut[%d] done!", v77, v78, v79, v33);
            v36 = 0;
            goto LABEL_63;
          }

          log_OutText(v62, "FE_PW", 5, 0, ">>> There is a space before this PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v58, v59, v60, v33);
          fe_pw_copy_pw(a4, v37, v113 + 16 * v35, v95, v96, v97, v98, v99, v108);
          log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v100, v101, v102, v33);
          goto LABEL_62;
        }

        v80 = v35;
        log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> The WORD_DCT record doesn't has field LD_W_INPUTSPACETAG. Copy pPWIn[%d] to pPWOut[%d].", v55, v56, v57, v33);
        goto LABEL_60;
      }
    }

    log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> I am First PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v30, v31, v32, v33);
    fe_pw_copy_pw(a4, v37, v113 + 16 * v35, v86, v87, v88, v89, v90, v107);
    v94 = *(a4 + 32);
LABEL_61:
    log_OutText(v94, "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v91, v92, v93, v33);
LABEL_62:
    v36 = 0;
    v13 = 0;
    ++v35;
    goto LABEL_63;
  }

LABEL_66:
  if (v117)
  {
    goto LABEL_67;
  }

  return v13;
}

uint64_t fe_pw_copy_pw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "Copying PW ... ", a6, a7, a8, v20);
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "pPWIn and pPWOut is: ", v12, v13, v14, v21);
  pw_show_pw_0(a1, a2);
  *(a3 + 8) = *(a2 + 8);
  *a3 = *a2;
  *(a3 + 12) = *(a2 + 12);
  v18 = *(a1 + 32);

  return log_OutText(v18, "FE_PW", 5, 0, "Copy PW done!", v15, v16, v17, a9);
}

const char *pw_show_pw_0(uint64_t a1, uint64_t a2)
{
  result = heap_Calloc(*(a1 + 8), 1, 1000);
  if (result)
  {
    v8 = result;
    if (*(a2 + 8))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        sprintf(&v8[v10], "%d-", *(*a2 + 2 * v9));
        v10 = strlen(v8);
        ++v9;
      }

      while (v9 < *(a2 + 8));
    }

    log_OutText(*(a1 + 32), "FE_PW", 5, 0, "\tPW [tids:%s, ntok:%d]", v5, v6, v7, v8);
    v11 = *(a1 + 8);

    return heap_Free(v11, v8);
  }

  return result;
}

uint64_t fe_pw_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62341, 1192);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2584748040;
  }
}

uint64_t fe_pw_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2584748033;
  }

  result = 0;
  *a2 = &IFePw;
  return result;
}

uint64_t com_enable_cscgroup(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v5 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_enable_cscgroup", &__c[3], &__c[1], __c);
  result = 0;
  if ((v5 & 0x80000000) == 0 && *&__c[1])
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    v9 = *v7 != 110 || v7[1] != 111 || v7[2] != 0;
    *a4 = v9;
    return 1;
  }

  return result;
}

uint64_t com_cscgroup_stopwords(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v5 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_cscgroup_stopwords", &__c[3], &__c[1], __c);
  result = 0;
  if ((v5 & 0x80000000) == 0 && *&__c[1])
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    strcpy(a4, v7);
    return 1;
  }

  return result;
}

uint64_t com_auxiliarywords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 *a6)
{
  v19 = 0;
  v18 = -1;
  v17 = 0;
  v9 = 0;
  if (((*(a2 + 96))(a3, a4, "fecfg", "fepw_auxiliarywords", &v19, &v18, &v17) & 0x80000000) == 0 && v18)
  {
    v10 = strlen(*v19);
    ChineseUTFCharNum = utf8_GetChineseUTFCharNum(*v19, v10);
    *a6 = ChineseUTFCharNum;
    v12 = heap_Alloc(*(a1 + 8), 8 * ChineseUTFCharNum);
    *a5 = v12;
    if (v12 && *a6)
    {
      v13 = 0;
      v14 = *v19;
      while (1)
      {
        v15 = utf8_determineUTF8CharLength(*v14);
        v9 = 1;
        *(*a5 + 8 * v13) = heap_Calloc(*(a1 + 8), 1, v15 + 1);
        if (!*a5)
        {
          break;
        }

        memcpy(*(*a5 + 8 * v13), v14, v15);
        *(*(*a5 + 8 * v13) + v15) = 0;
        v14 += v15;
        if (++v13 >= *a6)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return v9;
}

uint64_t fe_pw_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2584748039;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t fe_pw_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v202 = *MEMORY[0x1E69E9840];
  v199 = 0;
  v200 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v194 = 0;
  v195 = 0;
  v193 = 0;
  v191 = 0;
  v192 = 0;
  v189 = 0;
  v190 = 1024;
  v187 = 0;
  v188 = 64;
  v185 = 0;
  v186 = 64;
  v183 = 0;
  v184 = "";
  v182 = 0;
  v181 = 0;
  BYTE2(v180[1]) = 0;
  strcpy(v180, "latin");
  v179 = 0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v172 = 0;
  bzero(v173, 0x404uLL);
  *a5 = 1;
  if (*(a1 + 1180))
  {
    v12 = 0;
    v13 = 0;
    LODWORD(v14) = 0;
    goto LABEL_3;
  }

  if (!*(a1 + 56) && !*(a1 + 88))
  {
    log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "[FE_PROSODY_WORD]: NO DATA,LEAVING", v9, v10, v11, v152);
    v14 = 0;
    goto LABEL_45;
  }

  v31 = *(a1 + 72);
  log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "[FE_PROSODY_WORD]: Entering", v9, v10, v11, v152);
  v32 = (*(*(a1 + 48) + 104))(a3, a4, 1, 0, &v200 + 2);
  if ((v32 & 0x80000000) != 0)
  {
LABEL_163:
    v14 = v32;
    goto LABEL_45;
  }

  v14 = (*(*(a1 + 48) + 184))(a3, a4, HIWORD(v200), 0, &v182);
  if ((v14 & 0x80000000) == 0 && v182 == 1)
  {
    v14 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v200), 0, &v192, &v199);
    if ((v14 & 0x80000000) == 0 && v199 >= 2u)
    {
      *v201 = 0;
      LODWORD(__src) = 0;
      *__s1 = 0;
      LOWORD(v168) = 0;
      LOWORD(v167) = 0;
      v33 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v200), v201);
      LODWORD(v14) = v33;
      if ((v33 & 0x80000000) == 0)
      {
        v34 = *v201;
        if (*v201)
        {
          v35 = 0;
          while (1)
          {
            v36 = (*(*(a1 + 48) + 168))(a3, a4, v34, 0, 1, &__src, __s1);
            if (v36 < 0)
            {
              break;
            }

            if (__src > 0xA || ((1 << __src) & 0x610) == 0)
            {
              v41 = 0;
              v40 = *v201;
            }

            else
            {
              v36 = (*(*(a1 + 48) + 168))(a3, a4, *v201, 1, 1, &v168, __s1);
              if (v36 < 0)
              {
                break;
              }

              v36 = (*(*(a1 + 48) + 168))(a3, a4, *v201, 2, 1, &v167, __s1);
              if (v36 < 0)
              {
                break;
              }

              v39 = v168 > v35 || v35 < v167;
              v40 = *v201;
              if (v39)
              {
                v35 = v167;
                v41 = 0;
              }

              else
              {
                v41 = *v201;
              }
            }

            v36 = (*(*(a1 + 48) + 120))(a3, a4, v40, v201);
            if (v36 < 0)
            {
              break;
            }

            if (v41)
            {
              log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "%s", v42, v43, v44, "Dropping nested word record");
              v36 = (*(*(a1 + 48) + 192))(a3, a4, v41);
              if (v36 < 0)
              {
                break;
              }
            }

            v34 = *v201;
            if (!*v201)
            {
              goto LABEL_80;
            }
          }

          LODWORD(v14) = v36;
LABEL_165:
          v12 = 0;
          v13 = 0;
          goto LABEL_3;
        }
      }

      if (v33 < 0)
      {
        goto LABEL_165;
      }

LABEL_80:
      v14 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v200), &v200);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      v48 = v200;
      if (!v200)
      {
        goto LABEL_166;
      }

      v13 = 0;
      v49 = 0;
      v162 = 0;
      do
      {
        v50 = (*(*(a1 + 48) + 120))(a3, a4, v48, &v199 + 2);
        if (v50 < 0)
        {
          LODWORD(v14) = v50;
LABEL_168:
          v12 = 0;
          goto LABEL_3;
        }

        v14 = (*(*(a1 + 48) + 168))(a3, a4, v200, 0, 1, &v196, &v199);
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_168;
        }

        v51 = v196;
        if (v196 <= 0xA && ((1 << v196) & 0x610) != 0)
        {
          v32 = (*(*(a1 + 48) + 168))(a3, a4, v200, 1, 1, &v198, &v199);
          if ((v32 & 0x80000000) != 0)
          {
            goto LABEL_163;
          }

          v14 = (*(*(a1 + 48) + 168))(a3, a4, v200, 2, 1, &v197, &v199);
          if ((v14 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          if (!v198 || v49 + 1 == v198 && v197 > v198)
          {
            ++v13;
            v49 = v197;
          }

          v51 = v196;
        }

        if (v51 == 5)
        {
          v14 = (*(*(a1 + 48) + 176))(a3, a4, v200, 4, &v175, &v199);
          if ((v14 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          if (v199)
          {
            if (!strncmp(v175, "prompt", v199))
            {
              ++v162;
              if (v174 <= 0x7F)
              {
                v32 = (*(*(a1 + 48) + 168))(a3, a4, v200, 1, 1, &v198, &v199);
                if ((v32 & 0x80000000) != 0)
                {
                  goto LABEL_163;
                }

                v14 = (*(*(a1 + 48) + 168))(a3, a4, v200, 2, 1, &v197, &v199);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_45;
                }

                v173[v174] = v198;
                v173[v174++ + 128] = v197;
              }
            }
          }
        }

        v48 = HIWORD(v199);
        LOWORD(v200) = HIWORD(v199);
      }

      while (HIWORD(v199));
      if (v162 >= 0x81u)
      {
        log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Warning: the prompt number %d is large than the threshold %d, so the last %d promp not used to guide grouping", v45, v46, v47, v162);
      }

      if (!v13)
      {
LABEL_166:
        log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Warning: no lexicon word", v45, v46, v47, v153);
        goto LABEL_45;
      }

      v53 = v13;
      v54 = heap_Calloc(*(*(a1 + 24) + 8), v13, 40);
      if (!v54)
      {
        v14 = 2584748042;
        log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0, v55, v56, v57, v58, v153);
        goto LABEL_45;
      }

      v12 = v54;
      v59 = v49;
      v60 = (v54 + 8);
      while (1)
      {
        v61 = heap_Calloc(*(*(a1 + 24) + 8), 128, 1);
        *(v60 - 1) = v61;
        v66 = *(a1 + 24);
        if (!v61)
        {
          break;
        }

        v67 = heap_Calloc(*(v66 + 8), 64, 1);
        *v60 = v67;
        if (!v67)
        {
LABEL_329:
          LODWORD(v14) = -1710219254;
LABEL_330:
          v66 = *(a1 + 24);
          goto LABEL_331;
        }

        v60 += 5;
        if (!--v53)
        {
          word_separating_markers_0 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v200), &v200);
          if (word_separating_markers_0 < 0)
          {
            goto LABEL_332;
          }

          v163 = v31;
          LODWORD(v14) = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v200), 0, &v192, &v199);
          if ((v14 & 0x80000000) != 0 || v199 < 2u)
          {
            goto LABEL_3;
          }

          v69 = v200;
          if (v200)
          {
            v159 = 0;
            LODWORD(v14) = -1710219254;
            do
            {
              word_separating_markers_0 = (*(*(a1 + 48) + 120))(a3, a4, v69, &v199 + 2);
              if (word_separating_markers_0 < 0)
              {
                goto LABEL_332;
              }

              word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v200, 0, 1, &v196, &v199);
              if (word_separating_markers_0 < 0)
              {
                goto LABEL_332;
              }

              if (v196 <= 0xA && ((1 << v196) & 0x610) != 0)
              {
                word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v200, 1, 1, &v198, &v199);
                if (word_separating_markers_0 < 0)
                {
                  goto LABEL_332;
                }

                word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v200, 2, 1, &v197, &v199);
                if (word_separating_markers_0 < 0)
                {
                  goto LABEL_332;
                }

                if (!v198 || v59 + 1 == v198 && v197 > v198)
                {
                  word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v200, 3, &v185, &v199);
                  if (word_separating_markers_0 < 0)
                  {
                    goto LABEL_332;
                  }

                  v71 = v185;
                  v72 = v12 + 40 * v159;
                  if (strstr(v185, "comma"))
                  {
                    *(v72 + 26) = 11;
                  }

                  else
                  {
                    *(v72 + 26) = 1;
                    v181 = v71;
                    v73 = strchr(v71, 46);
                    v181 = v73;
                    if (v73)
                    {
                      v74 = 1;
                      do
                      {
                        v75 = v73 + 1;
                        v181 = v75;
                        *(v72 + 26) = ++v74;
                        v73 = strchr(v75, 46);
                        v181 = v73;
                      }

                      while (v73);
                    }
                  }

                  v76 = v198;
                  if (v198 >= v197)
                  {
                    v78 = 1;
                  }

                  else
                  {
                    v77 = 0;
                    do
                    {
                      if (!utf8_IsChineseLetter((v192 + v76)))
                      {
                        v77 = 1;
                      }

                      v76 += utf8_determineUTF8CharLength(*(v192 + v76));
                    }

                    while (v76 < v197);
                    v78 = v77 == 0;
                  }

                  v79 = v12 + 40 * v159;
                  *(v79 + 24) = v200;
                  word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4);
                  if (word_separating_markers_0 < 0)
                  {
                    goto LABEL_332;
                  }

                  if (!hlp_NLUStrFind(v184, "POS", &v183, &v182 + 1))
                  {
                    LODWORD(v14) = -1710219264;
                    goto LABEL_3;
                  }

                  **(v79 + 8) = 0;
                  if (v78)
                  {
                    strncat(*(v79 + 8), v183, HIWORD(v182));
                  }

                  else
                  {
                    *(*(v79 + 8) + strlen(*(v79 + 8))) = 7237486;
                  }

                  if (((*(*(a1 + 48) + 184))(a3, a4, v200, 9, &v199) & 0x80000000) == 0 && v199 == 1)
                  {
                    word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v200, 9, v79 + 16, &v199);
                    if (word_separating_markers_0 < 0)
                    {
                      goto LABEL_332;
                    }
                  }

                  v80 = v197;
                  v81 = v198;
                  v82 = v197 - v198;
                  v83 = *v79;
                  if (v82 >= 128)
                  {
                    v84 = heap_Realloc(*(*(a1 + 24) + 8), *v79, (v82 + 1));
                    *v79 = v84;
                    if (!v84)
                    {
                      goto LABEL_330;
                    }

                    v83 = v84;
                    v81 = v198;
                    v80 = v197;
                  }

                  memcpy(v83, (v192 + v81), v80 - v81);
                  *(*v79 - v198 + v197) = 0;
                  v85 = v197;
                  *(v79 + 28) = v198;
                  *(v79 + 32) = v85;
                  v59 = v85;
                  ++v159;
                }
              }

              v69 = HIWORD(v199);
              LOWORD(v200) = HIWORD(v199);
            }

            while (HIWORD(v199));
          }

          word_separating_markers_0 = pw_get_word_separating_markers_0(a1, a3, a4, HIWORD(v200), &v179, &v178);
          if (word_separating_markers_0 < 0)
          {
            goto LABEL_332;
          }

          v89 = v178;
          log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Info: Valid Word Seperator Markers Count:%d", v86, v87, v88, v178);
          if (v89)
          {
            v93 = 0;
            v94 = v179;
            do
            {
              log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Info: Valid Word Seperator Markers POS:%d", v90, v91, v92, v94[v93++]);
            }

            while (v89 > v93);
          }

          v95 = v89;
          v96 = *(a1 + 88);
          if (v96)
          {
            LODWORD(__src) = 1;
            LODWORD(v14) = pw_crf_process(*(a1 + 24), v96, *(a1 + 128), *(a1 + 136), *(a1 + 144), v12, v13, &v194, &v193, &__src);
            if ((v14 & 0x80000000) != 0 || __src)
            {
              goto LABEL_3;
            }

LABEL_172:
            if ((paramc_ParamGetStr(*(*(a1 + 24) + 40), "spaceInPYT", &v177) & 0x80000000) != 0 || LH_stricmp(v177, "yes") || (v15 = v179, v97 = fe_pw_PYT_process(a1, a3, a4, *(a1 + 24), v12, v13, v179, v95, &v194, &v193), (v97 & 0x80000000) == 0))
            {
              if (*(a1 + 152) == 1)
              {
                word_separating_markers_0 = pw_group_csc_0(*(a1 + 24), v173, v12, v13, (a1 + 156), v194, v193, &v195, &v193 + 1);
                if (word_separating_markers_0 < 0)
                {
                  goto LABEL_332;
                }
              }

              else
              {
                HIWORD(v193) = v193;
                v98 = v194;
                v194 = 0;
                v195 = v98;
                LOWORD(v193) = 0;
              }

              v99 = *(a1 + 1184);
              if (v99)
              {
                word_separating_markers_0 = pw_igtree_process_0(*(a1 + 24), v12, &v195, &v193 + 1, v13, v99);
                if (word_separating_markers_0 < 0)
                {
LABEL_332:
                  LODWORD(v14) = word_separating_markers_0;
                  goto LABEL_3;
                }
              }

              LODWORD(v14) = pw_respect_word_separating_markers_0(a1, a3, a4, HIWORD(v200), &v195, &v193 + 1);
              if ((v14 & 0x80000000) == 0)
              {
                v100 = heap_Calloc(*(*(a1 + 24) + 8), 1024, 1);
                v191 = v100;
                if (v100)
                {
                  v101 = v100;
                  v189 = heap_Calloc(*(*(a1 + 24) + 8), 64, 1);
                  if (v189)
                  {
                    v187 = heap_Calloc(*(*(a1 + 24) + 8), 64, 1);
                    if (v187)
                    {
                      v105 = HIWORD(v193);
                      if (HIWORD(v193))
                      {
                        v106 = 0;
                        do
                        {
                          v107 = v195;
                          v154 = v106;
                          v108 = LOWORD(v195[2 * v106 + 1]);
                          if (v108 != 1)
                          {
                            if (!v108)
                            {
                              LODWORD(v14) = -1710219254;
                              log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Error: the prosody word should has at least one lexical word", v102, v103, v104, v153);
                              goto LABEL_3;
                            }

                            __src = 0;
                            bzero(v101, v190);
                            bzero(v189, v188);
                            bzero(v187, v186);
                            __s = v172;
                            v160 = (v107 + 16 * v154);
                            if (*(v160 + 4))
                            {
                              v164 = 0;
                              v109 = 0;
                              v157 = 1;
                              LODWORD(v14) = -1710219254;
                              while (1)
                              {
                                word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, *(*v160 + 2 * v164), 1, 1, &v198, &v199);
                                if (word_separating_markers_0 < 0)
                                {
                                  goto LABEL_332;
                                }

                                word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, *(*v160 + 2 * v164), 2, 1, &v197, &v199);
                                if (word_separating_markers_0 < 0)
                                {
                                  goto LABEL_332;
                                }

                                word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, *(*v160 + 2 * v164), 3, &v185, &v199);
                                if (word_separating_markers_0 < 0)
                                {
                                  goto LABEL_332;
                                }

                                word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, *(*v160 + 2 * v164), 14, &v184, &v199);
                                if (word_separating_markers_0 < 0)
                                {
                                  goto LABEL_332;
                                }

                                v155 = *(*(a1 + 24) + 8);
                                v110 = strlen(v184);
                                v111 = v110;
                                if (__s)
                                {
                                  v112 = strlen(__s);
                                  __s = heap_Realloc(v155, __s, v111 + v112 + 2);
                                  if (!__s)
                                  {
                                    goto LABEL_3;
                                  }

                                  v172 = __s;
                                  *&__s[strlen(__s)] = 59;
                                  strcat(__s, v184);
                                }

                                else
                                {
                                  v172 = heap_Alloc(v155, v110 + 1);
                                  __s = v172;
                                  if (!v172)
                                  {
                                    goto LABEL_3;
                                  }

                                  strcpy(v172, v184);
                                }

                                if (v157)
                                {
                                  v157 = 0;
                                  v156 = 1;
                                  if (((*(*(a1 + 48) + 184))(a3, a4, *(*v160 + 2 * v164), 10, &v182) & 0x80000000) == 0 && v182 == 1)
                                  {
                                    word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, *(*v160 + 2 * v164), 10, &__src, &v199);
                                    if (word_separating_markers_0 < 0)
                                    {
                                      goto LABEL_332;
                                    }

                                    v156 = 0;
                                    v157 = 1;
                                  }
                                }

                                else
                                {
                                  v157 = 0;
                                  v156 = 1;
                                }

                                if (v164)
                                {
                                  *(v192 + v198 - 1) = 45;
                                  cstdlib_safe_strcat(*(a1 + 24), &v191, ".", &v190, 0x400uLL);
                                  cstdlib_safe_strcat(*(a1 + 24), &v189, "-", &v188, 0x40uLL);
                                  v113 = *(*v160 + 2 * v164);
                                  v181 = v185;
                                  v114 = strstr(v185, "{SEP");
                                  v181 = v114;
                                  if (v114)
                                  {
                                    v181 = v114 + 4;
                                    v114[4] += v109;
                                  }
                                }

                                else
                                {
                                  v113 = 0;
                                }

                                cstdlib_safe_strcat(*(a1 + 24), &v191, v185, &v190, 0x400uLL);
                                if (hlp_NLUStrFind(v184, "POS", &v183, &v182 + 1))
                                {
                                  cstdlib_safe_strncat(*(a1 + 24), &v189, v183, HIWORD(v182), &v188);
                                }

                                v115 = v157;
                                if (!__src)
                                {
                                  v115 = 0;
                                }

                                if (v115 == 1)
                                {
                                  cstdlib_safe_strcat(*(a1 + 24), &v187, __src, &v186, 0x40uLL);
                                }

                                for (i = v185; ; i = v117 + 1)
                                {
                                  v117 = strchr(i, 46);
                                  v181 = v117;
                                  if (!v117)
                                  {
                                    if (!i)
                                    {
                                      break;
                                    }

                                    v117 = strstr(i, "{SEP");
                                    v181 = v117;
                                    if (!v117)
                                    {
                                      break;
                                    }
                                  }

                                  ++v109;
                                }

                                if (v113)
                                {
                                  word_separating_markers_0 = (*(*(a1 + 48) + 192))(a3, a4, v113);
                                  if (word_separating_markers_0 < 0)
                                  {
                                    goto LABEL_332;
                                  }
                                }

                                ++v109;
                                if (++v164 >= *(v160 + 4))
                                {
                                  goto LABEL_226;
                                }
                              }
                            }

                            v156 = 0;
LABEL_226:
                            word_separating_markers_0 = pw_merge_NLU_0(*(a1 + 24), &v172);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            if (*(a1 + 152) == 1)
                            {
                              pw_split_csc_pw_0(*(a1 + 24), v160, &v191, &v190);
                            }

                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v160, 2, 1, &v197, &v198 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            v101 = v191;
                            v118 = strlen(v191);
                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v160, 3, (v118 + 1), v191, &v198 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            hlp_NLUStrRemoveKeyVal(__s, "POS");
                            hlp_NLUStrSet(__s, "POS", v189);
                            v119 = strlen(__s);
                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v160, 14, (v119 + 1), __s, &v198 + 2);
                            v184 = "";
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            if (__s)
                            {
                              heap_Free(*(*(a1 + 24) + 8), __s);
                              v172 = 0;
                            }

                            if ((v156 & 1) == 0)
                            {
                              v120 = strlen(v187);
                              word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v160, 10, (v120 + 1), v187, &v198 + 2);
                              if (word_separating_markers_0 < 0)
                              {
                                goto LABEL_332;
                              }
                            }

                            v105 = HIWORD(v193);
                          }

                          v106 = v154 + 1;
                        }

                        while (v154 + 1 < v105);
                      }

                      LODWORD(v14) = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v200), &v200);
                      if ((v14 & 0x80000000) == 0)
                      {
                        bzero(v101, v190);
                        v161 = v189;
                        bzero(v189, v188);
                        bzero(v187, v186);
                        HIWORD(v199) = 0;
                        v121 = v200;
                        if (v200)
                        {
                          v122 = 0;
                          LOWORD(v123) = 0;
                          while (1)
                          {
                            word_separating_markers_0 = (*(*(a1 + 48) + 120))(a3, a4, v121, &v199 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            LODWORD(v14) = (*(*(a1 + 48) + 168))(a3, a4, v200, 0, 1, &v196, &v199);
                            if ((v14 & 0x80000000) != 0)
                            {
                              goto LABEL_3;
                            }

                            if (v196 <= 0xA && ((1 << v196) & 0x610) != 0)
                            {
                              word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v200, 1, 1, &v198, &v199);
                              if (word_separating_markers_0 < 0)
                              {
                                goto LABEL_332;
                              }

                              LODWORD(v14) = (*(*(a1 + 48) + 168))(a3, a4, v200, 2, 1, &v197, &v199);
                              if ((v14 & 0x80000000) != 0)
                              {
                                goto LABEL_3;
                              }

                              if (!v198 || v122 + 1 == v198 && v197 > v198)
                              {
                                break;
                              }
                            }

LABEL_318:
                            v121 = HIWORD(v199);
                            LOWORD(v200) = HIWORD(v199);
                            if (!HIWORD(v199))
                            {
                              goto LABEL_3;
                            }
                          }

                          __src = 0;
                          word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v200, 3, &v185, &v199);
                          if (word_separating_markers_0 < 0)
                          {
                            goto LABEL_332;
                          }

                          LODWORD(v14) = (*(*(a1 + 48) + 176))(a3, a4, v200, 14, &v184, &v199);
                          if ((v14 & 0x80000000) != 0)
                          {
                            goto LABEL_3;
                          }

                          if (((*(*(a1 + 48) + 184))(a3, a4, v200, 10, &v182) & 0x80000000) == 0 && v182 == 1)
                          {
                            LODWORD(v14) = (*(*(a1 + 48) + 176))(a3, a4, v200, 10, &__src, &v199);
                            if ((v14 & 0x80000000) != 0)
                            {
                              goto LABEL_3;
                            }
                          }

                          v125 = v197;
                          if (v197 - v198 > 5)
                          {
                            v165 = 0;
                            goto LABEL_278;
                          }

                          *v201 = 0;
                          v170 = 0;
                          *__s1 = 0;
                          v126 = v197 - v198;
                          __memcpy_chk();
                          v201[v126] = 0;
                          if (utf8_IsChineseLetter(v201))
                          {
                            v127 = v178;
                            if (v178)
                            {
                              v128 = v179;
                              do
                              {
                                v129 = *v128++;
                                if (v129 == v198)
                                {
                                  goto LABEL_275;
                                }
                              }

                              while (--v127);
                            }

                            if (!strstr(v185, "11") || !utf8_IsChineseLetter(&v176))
                            {
                              v168 = 0;
                              v130 = strlen(v201);
                              v166 = 0;
                              v167 = 0;
                              utf8_Utf8ToUtf32_Tolerant(v201, v130, &v168, 1u, &v167);
                              v131 = v167;
                              if (v130 <= 3)
                              {
                                v131 = 0;
                              }

                              utf8_Utf32ToUtf8(&v168, 1, __s1, v130 - v131, &v166);
                              __s1[v166] = 0;
                              v132 = *(a1 + 120);
                              if (v132)
                              {
                                for (j = 0; j < v132; ++j)
                                {
                                  if (!strcmp(__s1, *(*(a1 + 112) + 8 * j)))
                                  {
                                    if (utf8_IsChineseLetter(&v176))
                                    {
                                      goto LABEL_266;
                                    }

                                    v132 = *(a1 + 120);
                                  }
                                }
                              }

                              goto LABEL_275;
                            }

LABEL_266:
                            v165 = 1;
                          }

                          else
                          {
LABEL_275:
                            v165 = 0;
                          }

                          v125 = v197;
                          v134 = v197 - v198;
                          if (v197 - v198 > 2)
                          {
LABEL_278:
                            v136 = v192 + v125;
                            v137 = *(v136 - 1);
                            LOWORD(v176) = *(v136 - 3);
                            BYTE2(v176) = v137;
                            v135 = &v176 + 3;
                          }

                          else
                          {
                            __memcpy_chk();
                            v135 = &v176 + v134;
                          }

                          *v135 = 0;
                          if (v165)
                          {
                            if (v123)
                            {
                              *v201 = 0;
                              LODWORD(v14) = pw_check_if_glue_forbidden_0(a1, a3, a4, HIWORD(v200), v123, v200, v201);
                              v165 = *v201 == 0;
                              if ((v14 & 0x80000000) != 0)
                              {
                                goto LABEL_3;
                              }
                            }
                          }

                          hlp_NLUStrFind(v184, "POS", &v183, &v182 + 1);
                          if (__src && (v141 = strlen(v187), v141 + strlen(__src) + 1 >= v186) || v183 && (v142 = strlen(v161), v142 + strlen(v183) + 2 >= v188) || (v143 = v185) != 0 && (v144 = strlen(v191), v144 + strlen(v185) + 2 >= v190))
                          {
                            log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "skip the merging due to the length limit of prosodic word", v138, v139, v140, v153);
                            v143 = v185;
                          }

                          else if (v165 && v123 && (v180[0] != 1769234796 || LOWORD(v180[1]) != 110))
                          {
                            log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "merge special auxiliary word and neutral tone cases", v138, v139, v140, v153);
                            *(v192 + v198 - 1) = 45;
                            cstdlib_safe_strcat(*(a1 + 24), &v191, ".", &v190, 0x400uLL);
                            if (v185)
                            {
                              cstdlib_safe_strcat(*(a1 + 24), &v191, v185, &v190, 0x400uLL);
                            }

                            if (HIWORD(v182))
                            {
                              cstdlib_safe_strcat(*(a1 + 24), &v189, "-", &v188, 0x40uLL);
                              if (v183)
                              {
                                cstdlib_safe_strncat(*(a1 + 24), &v189, v183, HIWORD(v182), &v188);
                              }
                            }

                            if (__src && *v187)
                            {
                              cstdlib_safe_strcat(*(a1 + 24), &v187, __src, &v186, 0x40uLL);
                            }

                            else
                            {
                              *v187 = 0;
                            }

                            word_separating_markers_0 = (*(*(a1 + 48) + 192))(a3, a4, v200);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, v123, 2, 1, &v197, &v198 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            v146 = strlen(v191);
                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, v123, 3, (v146 + 1), v191, &v198 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            v161 = v189;
                            v147 = strlen(v189);
                            v148 = strlen(v184);
                            v149 = heap_Calloc(*(*(a1 + 24) + 8), 1, (v147 + v148 + 6));
                            if (!v149)
                            {
                              goto LABEL_329;
                            }

                            v184 = strcpy(v149, v184);
                            hlp_NLUStrSet(v184, "POS", v161);
                            v150 = strlen(v184);
                            LODWORD(v14) = (*(*(a1 + 48) + 160))(a3, a4, v123, 14, (v150 + 1), v184, &v198 + 2);
                            heap_Free(*(*(a1 + 24) + 8), v184);
                            v184 = "";
                            if ((v14 & 0x80000000) != 0)
                            {
                              goto LABEL_3;
                            }

                            if (*v187)
                            {
                              v151 = strlen(v187);
                              LODWORD(v14) = (*(*(a1 + 48) + 160))(a3, a4, v123, 10, (v151 + 1), v187, &v198 + 2);
                              if ((v14 & 0x80000000) != 0)
                              {
                                goto LABEL_3;
                              }
                            }

                            goto LABEL_317;
                          }

                          if (v143)
                          {
                            strcpy(v191, v143);
                          }

                          *v161 = 0;
                          if (HIWORD(v182) && v183)
                          {
                            strncat(v161, v183, HIWORD(v182));
                          }

                          if (__src)
                          {
                            strcpy(v187, __src);
                          }

                          else
                          {
                            *v187 = 0;
                          }

                          v123 = v200;
                          if (((*(*(a1 + 48) + 184))(a3, a4) & 0x80000000) != 0 || v199 != 1)
                          {
                            strcpy(v180, "latin");
                          }

                          else
                          {
                            LODWORD(v14) = (*(*(a1 + 48) + 176))(a3, a4, v123, 9, &v181, &v199);
                            if ((v14 & 0x80000000) != 0 || strlen(v181) > 6)
                            {
                              goto LABEL_3;
                            }

                            __strcpy_chk();
                          }

LABEL_317:
                          v122 = v197;
                          goto LABEL_318;
                        }
                      }
                    }
                  }
                }
              }

LABEL_3:
              v15 = v179;
              if (v179)
              {
LABEL_4:
                heap_Free(*(*(a1 + 24) + 8), v15);
              }

LABEL_5:
              if (v12)
              {
                if (v13)
                {
                  v16 = v13;
                  v17 = v13;
                  v18 = v12;
                  do
                  {
                    if (*v18)
                    {
                      heap_Free(*(*(a1 + 24) + 8), *v18);
                    }

                    v18 += 5;
                    --v17;
                  }

                  while (v17);
                  v19 = (v12 + 8);
                  do
                  {
                    if (*v19)
                    {
                      heap_Free(*(*(a1 + 24) + 8), *v19);
                    }

                    v19 += 5;
                    --v16;
                  }

                  while (v16);
                }

                heap_Free(*(*(a1 + 24) + 8), v12);
              }

              v20 = v195;
              if (v195)
              {
                v21 = HIWORD(v193);
                if (HIWORD(v193))
                {
                  v22 = v195;
                  do
                  {
                    if (*v22)
                    {
                      heap_Free(*(*(a1 + 24) + 8), *v22);
                      *v22 = 0;
                    }

                    v22 += 2;
                    --v21;
                  }

                  while (v21);
                }

                heap_Free(*(*(a1 + 24) + 8), v20);
              }

              v23 = v194;
              if (v194)
              {
                v24 = v193;
                if (v193)
                {
                  v25 = 0;
                  v26 = 0;
                  do
                  {
                    v27 = *(v194 + v25);
                    if (v27)
                    {
                      heap_Free(*(*(a1 + 24) + 8), v27);
                      *(v194 + v25) = 0;
                      v24 = v193;
                    }

                    ++v26;
                    v25 += 16;
                  }

                  while (v26 < v24);
                  v23 = v194;
                }

                heap_Free(*(*(a1 + 24) + 8), v23);
                v194 = 0;
              }

              if (v172)
              {
                heap_Free(*(*(a1 + 24) + 8), v172);
              }

              if (v191)
              {
                heap_Free(*(*(a1 + 24) + 8), v191);
              }

              if (v189)
              {
                heap_Free(*(*(a1 + 24) + 8), v189);
              }

              if (v187)
              {
                heap_Free(*(*(a1 + 24) + 8), v187);
              }

              if (v193)
              {
                v28 = 0;
              }

              else
              {
                v28 = v14 == -1710219256;
              }

              if (v28)
              {
                v14 = 0;
              }

              else
              {
                v14 = v14;
              }

              goto LABEL_45;
            }
          }

          else
          {
            v15 = v179;
            v97 = pw_dag_process(*(a1 + 24), v163, *(a1 + 80), *(a1 + 96), *(a1 + 100), *(a1 + 104), v173, v12, v13, v179, v89, &v194, &v193);
            if ((v97 & 0x80000000) == 0)
            {
              goto LABEL_172;
            }
          }

          LODWORD(v14) = v97;
          if (v15)
          {
            goto LABEL_4;
          }

          goto LABEL_5;
        }
      }

      LODWORD(v14) = -1710219254;
LABEL_331:
      log_OutPublic(*(v66 + 32), "FE_PW", 37000, 0, v62, v63, v64, v65, v153);
      goto LABEL_3;
    }
  }

LABEL_45:
  v29 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t pw_get_word_separating_markers_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int *a6)
{
  v27 = 0;
  v26 = 0;
  v9 = (*(*(a1 + 48) + 176))(a2, a3, a4, 1, &v26, &v27);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_15:
    if (*a5)
    {
      heap_Free(*(*(a1 + 24) + 8), *a5);
      *a5 = 0;
    }

    return v9;
  }

  v10 = heap_Alloc(*(*(a1 + 24) + 8), 4 * v27);
  *a5 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  *a6 = 0;
  v15 = v27;
  if (v27)
  {
    v16 = 0;
    v17 = v26;
    v18 = v26;
    v19 = v26;
    do
    {
      v20 = *v19;
      v19 += 8;
      v21 = (1 << v20) & 0x3C0010124001140;
      if (v20 <= 0x39 && v21 != 0)
      {
        *(v10 + 4 * v16) = v18[3] - v17[3];
        v16 = *a6 + 1;
        *a6 = v16;
      }

      v18 = v19;
      --v15;
    }

    while (v15);
    v23 = 4 * (v16 + 1);
  }

  else
  {
    v23 = 4;
  }

  v24 = heap_Realloc(*(*(a1 + 24) + 8), v10, v23);
  *a5 = v24;
  if (!v24)
  {
LABEL_14:
    log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0, v11, v12, v13, v14, v26);
    v9 = 2584748042;
    goto LABEL_15;
  }

  return v9;
}

uint64_t pw_group_csc_0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, uint64_t a6, uint64_t a7, uint64_t *a8, _WORD *a9)
{
  v10 = a7;
  v90 = *MEMORY[0x1E69E9840];
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "pw_group_csc Begin", a6, a7, a8, v71);
  v13 = heap_Calloc(*(a1 + 8), v10, 16);
  *a8 = v13;
  if (!v13)
  {
    v67 = 2584748042;
    v68 = *(a1 + 32);
LABEL_72:
    log_OutPublic(v68, "FE_PW", 37000, 0, v14, v15, v16, v17, v72);
    goto LABEL_73;
  }

  v73 = a8;
  v75 = a1;
  *a9 = 0;
  v89 = 0;
  v88 = 0;
  if (v10)
  {
    LOWORD(v18) = 0;
    v77 = 0;
    v19 = 0;
    v20 = a4;
    v21 = (v13 + 8);
    v79 = v10;
    while (1)
    {
      v81 = v21;
      v76 = v19;
      *v21 = 0;
      v22 = v10 <= (v18 + 1) ? v18 + 1 : v10;
      v74 = v22;
      v23 = v18;
      while (1)
      {
        v24 = (a6 + 16 * v23);
        if (v20)
        {
          v25 = 0;
          v26 = **v24;
          v27 = (a3 + 24);
          while (1)
          {
            v28 = *v27;
            v27 += 20;
            if (v28 == v26)
            {
              break;
            }

            if (v20 == ++v25)
            {
              v82 = v20;
              goto LABEL_15;
            }
          }

          v82 = v25;
LABEL_15:
          v30 = 0;
          v87 = 0;
          v31 = (a3 + 24);
          while (1)
          {
            v32 = *v31;
            v31 += 20;
            if (v32 == v26)
            {
              break;
            }

            if (v20 == ++v30)
            {
              v29 = v20;
              goto LABEL_20;
            }
          }

          v29 = v30;
        }

        else
        {
          v82 = 0;
          v29 = 0;
          v87 = 0;
        }

LABEL_20:
        v33 = *(a3 + 40 * v29);
        v34 = (Utf8_Utf8NbrOfSymbols(v33) - 1);
        v36 = 0;
        if (v34 == 2)
        {
          if (v33)
          {
            v35 = strlen(v33);
            if (v35)
            {
              if (strstr(",.:?!;()", &v33[v35 - 1]))
              {
                v36 = 1;
              }
            }
          }
        }

        v37 = 0;
        if (v20)
        {
          v38 = (a3 + 24);
          while (1)
          {
            v39 = *v38;
            v38 += 20;
            if (v39 == **v24)
            {
              break;
            }

            if (v20 == ++v37)
            {
              LODWORD(v37) = v20;
              goto LABEL_32;
            }
          }

          LODWORD(v37) = v37;
        }

LABEL_32:
        v40 = *(a3 + 40 * v37 + 16);
        utf8_getUTF8Char(v33, 0, &v88);
        IsChineseLetter = utf8_IsChineseLetter(&v88);
        pw_weather_word_in_prompt(a2, a3 + 40 * v82, &v87);
        v42 = *(a6 + 16 * v23 + 8);
        v43 = !v36;
        if (v34 == 1)
        {
          v43 = 0;
        }

        if (v43 || v42 != 1)
        {
          break;
        }

        v44 = strcmp(v40, "latin") && IsChineseLetter;
        if (!v44 || v87 != 0)
        {
          break;
        }

        if (strstr(a5, v33))
        {
          v46 = 1;
        }

        else
        {
          v46 = v36;
        }

        v47 = v81;
        if (v46)
        {
          v86 = v23 + 1;
          v23 = *v81;
          v10 = v79;
          goto LABEL_56;
        }

        v48 = ++*v81;
        v10 = v79;
        if (v48 > 2)
        {
          v86 = v23;
          goto LABEL_55;
        }

        if (v79 <= ++v23)
        {
          v86 = v74;
          goto LABEL_57;
        }
      }

      v86 = v23;
      v10 = v79;
      if (*v81)
      {
        goto LABEL_57;
      }

      *v81 = v42;
LABEL_55:
      v47 = &v86;
LABEL_56:
      *v47 = v23 + 1;
LABEL_57:
      ++*a9;
      *(*v73 + 16 * v77) = heap_Calloc(*(v75 + 8), *(*v73 + 16 * v77 + 8), 2);
      v49 = *v73;
      v50 = *v73 + 16 * v77;
      v51 = *v50;
      if (!*v50)
      {
        break;
      }

      v18 = v86;
      v52 = a6 + 16 * v86;
      if (*(v50 + 8) <= *(v52 - 8))
      {
        if (*(v50 + 8))
        {
          v65 = 0;
          v66 = *(v52 - 16);
          do
          {
            *(v51 + 2 * v65) = *(v66 + 2 * v65);
            ++v65;
          }

          while (v65 < *(v50 + 8));
        }
      }

      else
      {
        v53 = heap_Calloc(*(v75 + 8), 1, 1024);
        if (!v53)
        {
          break;
        }

        v54 = v53;
        v55 = *v73 + 16 * v77;
        *(v55 + 12) = 1;
        v56 = *(v55 + 8);
        if (v56)
        {
          v57 = 0;
          v58 = -v56;
          v83 = v18;
          v59 = (a6 - 16 * v56 + 16 * v18);
          v60 = v56 - 1;
          do
          {
            v61 = *v59;
            v59 += 2;
            v62 = *v61;
            *(*(*v73 + 16 * v77) + 2 * (v58 + *(*v73 + 16 * v77 + 8))) = v62;
            sprintf(&v54[v57], "%d-", v62);
            v57 = strlen(v54);
            ++v58;
          }

          while (v60--);
          v64 = *(*v73 + 16 * v77 + 8);
          LODWORD(v18) = v83;
        }

        log_OutText(*(v75 + 32), "FE_PW", 5, 0, "\t group [tids:%s, ntok: %d]", v15, v16, v17, v54);
        heap_Free(*(v75 + 8), v54);
        v49 = *v73;
      }

      v19 = v76 + 1;
      v77 = (v76 + 1);
      v21 = (v49 + 16 * v77 + 8);
      v89 = 0;
      v88 = 0;
      if (v18 >= v10)
      {
        goto LABEL_69;
      }
    }

    v67 = 2584748042;
    v68 = *(v75 + 32);
    goto LABEL_72;
  }

LABEL_69:
  log_OutText(*(v75 + 32), "FE_PW", 5, 0, "pw_group_csc End", v15, v16, v17, v72);
  v67 = 0;
LABEL_73:
  v69 = *MEMORY[0x1E69E9840];
  return v67;
}

uint64_t pw_igtree_process_0(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4, unsigned int a5, uint64_t a6)
{
  v9 = a1;
  inited = 2584748042;
  v11 = *a4;
  v55 = 0;
  v12 = *a3;
  v13 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 1296) - 8);
  if (!v13)
  {
    return inited;
  }

  v14 = v13;
  inited = igtree_initFeatureVector(v9, v13, (*(a6 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_52;
  }

  v15 = heap_Calloc(*(v9 + 8), a5, 4);
  if (!v15)
  {
    inited = 2584748042;
    goto LABEL_52;
  }

  v45 = a4;
  v46 = a3;
  if (!v11)
  {
LABEL_45:
    *v45 = v11;
    *v46 = v12;
    goto LABEL_52;
  }

  v16 = 0;
  v17 = 0;
  v52 = a5 - 1;
  v44 = v9;
  v50 = v14;
  while (1)
  {
    LOWORD(v18) = *(v12 + 16 * v16 + 8);
    v51 = v11;
    if (v18)
    {
      if (v52 != v17)
      {
        break;
      }
    }

LABEL_44:
    ++v16;
    v11 = v51;
    if (v16 >= v51)
    {
      goto LABEL_45;
    }
  }

  v19 = 0;
  v20 = 0;
  v48 = (v16 + 2);
  v47 = (v16 + 1);
  v21 = 2;
  while (1)
  {
    v22 = v17;
    *(v15 + 4 * v17) = v18 - 1 == v19;
    v23 = igtree_setFeatureVector(v9, v14, *(a6 + 1312), *(a6 + 1296), a2, a5, v17);
    if ((v23 & 0x80000000) != 0)
    {
      inited = v23;
      goto LABEL_52;
    }

    inited = igtree_Process(a6, v14, &v55);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    v24 = v15;
    v25 = v55;
    if (!strcmp(v55, "NOMATCH"))
    {
      goto LABEL_38;
    }

    v26 = *v25 == 49 && v25[1] == 0;
    v15 = v24;
    v27 = *(v24 + 4 * v22);
    if (v26 == v27)
    {
      inited = 0;
      goto LABEL_39;
    }

    if (!v27)
    {
      break;
    }

    v28 = v12 + 16 * v16;
    v29 = *(v28 + 24) + *(v28 + 8);
    if (v29 > 4)
    {
      inited = 0;
LABEL_38:
      v15 = v24;
      goto LABEL_39;
    }

    *(v28 + 8) += *(v28 + 24);
    v38 = heap_Realloc(*(v9 + 8), *v28, 2 * v29);
    *v28 = v38;
    if (!v38)
    {
      goto LABEL_49;
    }

    LOWORD(v39) = *(v28 + 24);
    v40 = *(v28 + 16);
    if (v39)
    {
      v41 = 0;
      do
      {
        *(v38 - 2 * v39 + 2 * *(v28 + 8) + 2 * v41) = *(v40 + 2 * v41);
        ++v41;
        v39 = *(v28 + 24);
      }

      while (v41 < v39);
    }

    *(v28 + 12) |= *(v28 + 28);
    heap_Free(*(v9 + 8), v40);
    if (v48 < v51)
    {
      memmove((v28 + 16), (v12 + 16 * v48), 16 * (v51 - v16) - 32);
    }

    inited = 0;
    v51 = (v51 - 1);
    v15 = v24;
    v9 = v44;
LABEL_39:
    v17 = v22 + 1;
    v19 = v20 + 1;
    v18 = *(v12 + 16 * v16 + 8);
    v21 += 2;
    v42 = ++v20 >= v18 || v52 == (v22 + 1);
    v14 = v50;
    if (v42)
    {
      goto LABEL_44;
    }
  }

  v30 = heap_Realloc(*(v9 + 8), v12, 16 * v51 + 16);
  if (v30)
  {
    v31 = v30 + 16 * v16;
    v12 = v30;
    v32 = (v30 + 16 * v47);
    v49 = v31;
    if (v47 < v51)
    {
      memmove((v31 + 32), v32, 16 * (v51 + ~v16));
      v31 = v49;
    }

    v33 = *(v31 + 8) + ~v20;
    *(v32 + 4) = v33;
    v34 = heap_Alloc(*(v9 + 8), 2 * v33);
    *v32 = v34;
    if (!v34)
    {
LABEL_49:
      inited = 2584748042;
      v15 = v24;
      goto LABEL_51;
    }

    if (*(v32 + 4))
    {
      v35 = 0;
      v36 = *v49 + v21;
      do
      {
        *(v34 + 2 * v35) = *(v36 + 2 * v35);
        ++v35;
      }

      while (v35 < *(v32 + 4));
    }

    v37 = *(v49 + 12);
    if (v37 == 1)
    {
      *(v49 + 12) = 0;
    }

    else
    {
      v37 = 0;
    }

    inited = 0;
    *(v32 + 3) = v37;
    *(v49 + 8) = v20 + 1;
    v51 = (v51 + 1);
    goto LABEL_38;
  }

  inited = 2584748042;
LABEL_51:
  v14 = v50;
LABEL_52:
  hlp_igtree_freeFeatureVector(v9, v14, (*(a6 + 1296) - 1));
  heap_Free(*(v9 + 8), v14);
  if (v15)
  {
    heap_Free(*(v9 + 8), v15);
  }

  return inited;
}

uint64_t pw_respect_word_separating_markers_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int16 *a6)
{
  if (!*a6)
  {
    return 0;
  }

  v6 = a6;
  v12 = 0;
  v13 = 0;
  v32 = 0;
  v14 = *a5;
  while (1)
  {
    if (*(v14 + 16 * v12 + 8) >= 2u)
    {
      v32 = 0;
      v14 = *a5;
      v15 = *a5 + 16 * v12;
      if (*(v15 + 8) >= 2u)
      {
        break;
      }
    }

LABEL_17:
    if (++v12 >= *v6)
    {
      return v13;
    }
  }

  v16 = 1;
  while (1)
  {
    v13 = pw_check_if_glue_forbidden_0(a1, a2, a3, a4, *(*v15 + 2 * v16 - 2), *(*v15 + 2 * v16), &v32);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    if (v32)
    {
      v17 = heap_Realloc(*(*(a1 + 24) + 8), *a5, 16 * *v6 + 16);
      if (!v17)
      {
        goto LABEL_21;
      }

      *a5 = v17;
      v22 = *v6 + 1;
      v31 = v6;
      *v6 = v22;
      if (v12 + 2 < v22)
      {
        memmove((v17 + 16 * (v12 + 2)), (v17 + 16 * v12 + 16), (((v22 - v12) << 32) - 0x200000000) >> 28);
        v17 = *a5;
      }

      v23 = v17 + 16 * v12;
      v24 = *(v23 + 8) - v16;
      v25 = 16 * v12 + 16;
      *(v17 + v25 + 8) = v24;
      *(v23 + 8) = v16;
      *(*a5 + v25) = heap_Calloc(*(*(a1 + 24) + 8), 2, v24);
      v14 = *a5;
      v26 = *a5 + v25;
      v27 = *v26;
      v6 = v31;
      if (!*v26)
      {
LABEL_21:
        log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0, v18, v19, v20, v21, v31);
        return 2584748042;
      }

      if (*(v26 + 8))
      {
        v28 = 0;
        v29 = *(v14 + 16 * v12) + 2 * v16;
        do
        {
          *(v27 + 2 * v28) = *(v29 + 2 * v28);
          ++v28;
        }

        while (v28 < *(v26 + 8));
      }

      goto LABEL_17;
    }

    ++v16;
    v14 = *a5;
    v15 = *a5 + 16 * v12;
    if (*(v15 + 8) <= v16)
    {
      goto LABEL_17;
    }
  }
}

char *cstdlib_safe_strcat(uint64_t a1, const char **a2, char *__s, void *a4, unint64_t a5)
{
  v10 = strlen(__s);
  checksize_and_realloc(a1, a2, v10, a4, a5);
  v11 = *a2;

  return strcat(v11, __s);
}

char *cstdlib_safe_strncat(uint64_t a1, const char **a2, const char *a3, size_t a4, void *a5)
{
  checksize_and_realloc(a1, a2, a4, a5, 0x40uLL);
  v8 = *a2;

  return strncat(v8, a3, a4);
}

uint64_t pw_merge_NLU_0(uint64_t a1, char **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    if (hlp_NLUStrKeyLen(v2) >= 3)
    {
      v6 = *v2 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      v9 = v7 || v8 == 0;
      if (!v9 && v2[1] == 95)
      {
        ++v5;
      }
    }

    v2 = hlp_NLUStrNext(v2);
  }

  while (v2);
  if (!v5)
  {
    return 0;
  }

  v10 = 2584748042;
  v11 = heap_Calloc(*(a1 + 8), 8, v5);
  if (v11)
  {
    v12 = v11;
    v13 = *a2;
    if (*a2)
    {
      v97 = a2;
      v96 = -1710219254;
      v14 = 0;
      do
      {
        v15 = hlp_NLUStrKeyLen(v13);
        if (v15 >= 3)
        {
          v16 = *v13 - 69;
          v7 = v16 > 0xE;
          v17 = (1 << v16) & 0x4011;
          v18 = v7 || v17 == 0;
          if (!v18 && v13[1] == 95)
          {
            v19 = v15;
            v20 = heap_Calloc(*(a1 + 8), 1, v15 - 1);
            if (!v20)
            {
              v26 = v12;
              v10 = 2584748042;
              goto LABEL_182;
            }

            v21 = v20;
            strncpy(v20, v13 + 2, v19 - 2);
            if (v14)
            {
              v22 = v14;
              v23 = v12;
              v24 = v14;
              while (*v23)
              {
                if (!strcmp(*v23, v21))
                {
                  heap_Free(*(a1 + 8), v21);
                  goto LABEL_31;
                }

                ++v23;
                if (!--v24)
                {
                  break;
                }
              }
            }

            else
            {
              v22 = 0;
            }

            *(v12 + 8 * v22) = v21;
            ++v14;
          }
        }

LABEL_31:
        v13 = hlp_NLUStrNext(v13);
      }

      while (v13);
      if (!v14)
      {
        goto LABEL_161;
      }

      v25 = heap_Realloc(*(a1 + 8), v12, 8 * v14);
      if (v25)
      {
        v26 = v25;
        v27 = heap_Calloc(*(a1 + 8), 2, v14);
        if (v27)
        {
          v91 = v27;
          for (i = *v97; i; i = hlp_NLUStrNext(i))
          {
            v29 = hlp_NLUStrKeyLen(i);
            if (v29 >= 3)
            {
              v30 = *i - 69;
              v7 = v30 > 0xE;
              v31 = (1 << v30) & 0x4011;
              v32 = v7 || v31 == 0;
              if (!v32 && i[1] == 95)
              {
                v33 = 0;
                v34 = v29 - 2;
                do
                {
                  v35 = *(v26 + 8 * v33);
                  if (!v35)
                  {
                    break;
                  }

                  if (!strncmp(v35, i + 2, v34))
                  {
                    if ((v33 & 0x8000) == 0)
                    {
                      ++*(v91 + 2 * (v33 & 0x7FFF));
                    }

                    break;
                  }

                  ++v33;
                }

                while (v14 != v33);
              }
            }
          }

          v36 = heap_Calloc(*(a1 + 8), 8, v14);
          if (v36)
          {
            v37 = v36;
            for (j = 0; j != v14; ++j)
            {
              v39 = heap_Calloc(*(a1 + 8), 8, *(v91 + 2 * j));
              *(v37 + 8 * j) = v39;
              if (!v39)
              {
                v40 = 0;
                goto LABEL_167;
              }
            }

            v40 = heap_Calloc(*(a1 + 8), 2, v14);
            if (v40)
            {
              for (k = *v97; k; k = hlp_NLUStrNext(k))
              {
                v42 = hlp_NLUStrKeyLen(k);
                if (v42 >= 3)
                {
                  v43 = *k - 69;
                  v7 = v43 > 0xE;
                  v44 = (1 << v43) & 0x4011;
                  if (!v7 && v44 != 0 && k[1] == 95)
                  {
                    KeyIdx = hlp_getKeyIdx(v26, v14, k + 2, (v42 - 2));
                    if ((KeyIdx & 0x80000000) == 0)
                    {
                      v47 = KeyIdx;
                      v93 = *(v37 + 8 * KeyIdx);
                      v48 = hlp_NLUStrKeyValue(k);
                      v49 = v48;
                      v50 = v48 ? hlp_NLUStrLength(v48) : 0;
                      v51 = v50;
                      if (!hlp_checkValExist(v93, *(v40 + 2 * v47), v49, v50))
                      {
                        v52 = heap_Calloc(*(a1 + 8), 1, v51 + 2);
                        if (!v52)
                        {
                          goto LABEL_167;
                        }

                        if (v49)
                        {
                          v52 = strncpy(v52, v49, v51);
                        }

                        else
                        {
                          *v52 = 32;
                        }

                        v53 = *(v40 + 2 * v47);
                        *&v93[8 * v53] = v52;
                        *(v40 + 2 * v47) = v53 + 1;
                      }
                    }
                  }
                }
              }

              v54 = 0;
              v55 = v97;
              do
              {
                v56 = heap_Realloc(*(a1 + 8), *(v37 + 8 * v54), 8 * *(v40 + 2 * v54));
                if (!v56)
                {
                  goto LABEL_167;
                }

                *(v37 + 8 * v54++) = v56;
              }

              while (v14 != v54);
              v57 = 0;
              while (!*(v40 + 2 * v57))
              {
LABEL_158:
                if (++v57 == v14)
                {
                  v96 = 0;
                  goto LABEL_167;
                }
              }

              v58 = 0;
              v86 = v57;
              while (2)
              {
                __s = *(v26 + 8 * v57);
                v59 = *(*(v37 + 8 * v57) + 8 * v58);
                v60 = *v55;
                v99 = 0;
                __s2 = 0;
                if (!v60)
                {
                  goto LABEL_131;
                }

                v89 = v60;
                v90 = v58;
                __s1 = v59;
                if (v59)
                {
                  v88 = strlen(v59);
                }

                else
                {
                  v88 = 0;
                }

                v61 = strlen(__s);
                v62 = heap_Calloc(*(a1 + 8), 1, v61 + 3);
                if (!v62)
                {
                  goto LABEL_167;
                }

                v63 = v62;
                strcpy(v62, "S_");
                strcat(v62, __s);
                v64 = strlen(__s);
                v65 = heap_Calloc(*(a1 + 8), 1, v64 + 3);
                if (!v65)
                {
                  v95 = 0;
                  v70 = 0;
                  v72 = -1710219254;
                  goto LABEL_125;
                }

                strcpy(v65, "I_");
                v66 = v65;
                strcat(v65, __s);
                v67 = strlen(__s);
                v68 = heap_Calloc(*(a1 + 8), 1, v67 + 3);
                if (!v68)
                {
                  v95 = 0;
                  v72 = -1710219254;
                  v70 = v66;
                  goto LABEL_125;
                }

                strcpy(v68, "E_");
                v94 = v68;
                strcat(v68, __s);
                v69 = __s1;
                v70 = v66;
                if (!hlp_NLUStrFind(v89, v63, &__s2, &v99) || (!__s1 || v99 || *__s1 != 32 || __s1[1]) && (!__s1 || v88 != v99 || strncmp(__s1, __s2, v99)))
                {
                  heap_Free(*(a1 + 8), v63);
                  v63 = 0;
                }

                if (!hlp_NLUStrFind(v89, v66, &__s2, &v99) || (!__s1 || v99 || *__s1 != 32 || __s1[1]) && (!__s1 || v88 != v99 || strncmp(__s1, __s2, v99)))
                {
                  heap_Free(*(a1 + 8), v66);
                  v70 = 0;
                }

                if (hlp_NLUStrFind(v89, v94, &__s2, &v99))
                {
                  if (__s1 && !v99 && *__s1 == 32 && !__s1[1])
                  {
                    goto LABEL_117;
                  }

                  if (__s1 && v88 == v99)
                  {
                    if (strncmp(__s1, __s2, v99))
                    {
                      heap_Free(*(a1 + 8), v94);
                      v71 = 0;
LABEL_118:
                      if (*__s1 == 32 && !__s1[1])
                      {
                        v95 = v71;
                        v69 = 0;
                      }

                      else
                      {
LABEL_120:
                        v95 = v71;
                      }

                      hlp_NLUStrRemoveRangeKey(v89, __s, v69);
                      if (v63)
                      {
                        if (!v70)
                        {
                          v73 = v63;
                          if (!v95)
                          {
                            goto LABEL_124;
                          }
                        }
                      }

                      if (v63)
                      {
                        v75 = 1;
                      }

                      else
                      {
                        v75 = v70 == 0;
                      }

                      v76 = !v75;
                      if (!v75)
                      {
                        v77 = v70;
                        if (!v95)
                        {
LABEL_141:
                          hlp_NLUStrAppendKeyVal(v89, v77, v69);
                          v72 = 0;
LABEL_127:
                          heap_Free(*(a1 + 8), v70);
LABEL_128:
                          v55 = v97;
                          v58 = v90;
                          v74 = v95;
                          if (v95)
                          {
LABEL_129:
                            heap_Free(*(a1 + 8), v74);
                          }

                          v57 = v86;
                          if (v72 < 0)
                          {
                            v96 = v72;
                            goto LABEL_167;
                          }

LABEL_131:
                          if (++v58 >= *(v40 + 2 * v57))
                          {
                            goto LABEL_158;
                          }

                          continue;
                        }
                      }

                      if (!v63 && !v70 && v95)
                      {
                        hlp_NLUStrAppendKeyVal(v89, v95, v69);
                        v74 = v95;
                        v72 = 0;
                        v55 = v97;
                        v58 = v90;
                        goto LABEL_129;
                      }

                      if (v63 && v95)
                      {
                        hlp_NLUStrAppendKeyVal(v89, v63, v69);
                        v73 = v95;
                        goto LABEL_124;
                      }

                      if (v63 && v70 && (v73 = v63, !v95))
                      {
LABEL_124:
                        hlp_NLUStrAppendKeyVal(v89, v73, v69);
                        v72 = 0;
                      }

                      else
                      {
                        if (!v95)
                        {
                          v76 = 0;
                        }

                        v77 = v95;
                        if (v76)
                        {
                          goto LABEL_141;
                        }

                        v72 = 0;
                        if (!v63)
                        {
LABEL_126:
                          if (v70)
                          {
                            goto LABEL_127;
                          }

                          goto LABEL_128;
                        }
                      }

LABEL_125:
                      heap_Free(*(a1 + 8), v63);
                      goto LABEL_126;
                    }

LABEL_117:
                    v71 = v94;
                    goto LABEL_118;
                  }
                }

                break;
              }

              heap_Free(*(a1 + 8), v94);
              v71 = 0;
              if (__s1)
              {
                goto LABEL_118;
              }

              goto LABEL_120;
            }

LABEL_167:
            for (m = 0; m != v14; ++m)
            {
              v79 = *(v37 + 8 * m);
              if (v79)
              {
                if (v40)
                {
                  v80 = *(v40 + 2 * m);
                  if (v80)
                  {
                    for (n = 0; n < v80; ++n)
                    {
                      v82 = *(*(v37 + 8 * m) + 8 * n);
                      if (v82)
                      {
                        heap_Free(*(a1 + 8), v82);
                        v80 = *(v40 + 2 * m);
                      }
                    }

                    v79 = *(v37 + 8 * m);
                  }
                }

                heap_Free(*(a1 + 8), v79);
              }
            }

            heap_Free(*(a1 + 8), v37);
            if (v40)
            {
              heap_Free(*(a1 + 8), v40);
            }

            v10 = v96;
          }

          else
          {
            v10 = 2584748042;
          }

          heap_Free(*(a1 + 8), v91);
          v12 = v26;
LABEL_182:
          if (!v14)
          {
            goto LABEL_188;
          }

LABEL_183:
          for (ii = 0; ii != v14; ++ii)
          {
            v84 = *(v26 + 8 * ii);
            if (v84)
            {
              heap_Free(*(a1 + 8), v84);
            }
          }

          v12 = v26;
          goto LABEL_188;
        }
      }

      else
      {
        v26 = v12;
      }

      v10 = 2584748042;
      goto LABEL_183;
    }

LABEL_161:
    v10 = 0;
LABEL_188:
    heap_Free(*(a1 + 8), v12);
  }

  return v10;
}

char *pw_split_csc_pw_0(char *result, uint64_t a2, const char **a3, uint64_t *a4)
{
  if (*(a2 + 12) == 1 && (*(a2 + 8) & 0xFFFE) == 4)
  {
    v5 = *a3;
    if (*a3)
    {
      v7 = result;
      v8 = 1;
      v9 = *a3;
      do
      {
        v10 = v8;
        result = strchr(v9, 46);
        if (result)
        {
          v9 = result + 1;
        }

        else
        {
          v9 = 0;
        }

        if (!result)
        {
          break;
        }

        v8 = 0;
      }

      while ((v10 & 1) != 0);
      if (result)
      {
        v11 = strlen(v5) + 7;
        v12 = *a4;
        if (v11 > *a4)
        {
          result = heap_Realloc(*(v7 + 1), v5, v11);
          if (!result)
          {
            return result;
          }

          *a3 = result;
          *a4 = v11;
          v12 = v11;
        }

        result = heap_Calloc(*(v7 + 1), 1, v12);
        if (result)
        {
          v13 = result;
          v14 = strncpy(result, *a3, (~*a3 + v9));
          strcpy(&v13[strlen(v14)], "{SEP2}");
          strcat(v13, v9);
          v15 = *a3;

          return strcpy(v15, v13);
        }
      }
    }
  }

  return result;
}

uint64_t pw_check_if_glue_forbidden_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *a7 = 0;
  pw_check_if_word_in_prompt_0(a1, a2, a3, a5, a7);
  if (*a7)
  {
    return 0;
  }

  pw_check_if_word_in_prompt_0(a1, a2, a3, a6, a7);
  if (*a7)
  {
    return 0;
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  result = (*(*(a1 + 48) + 176))(a2, a3, a4, 1, &v23, &v24);
  if ((result & 0x80000000) == 0)
  {
    (*(*(a1 + 48) + 168))(a2, a3, a5, 1, 1, &v25 + 2, &v24 + 2);
    result = (*(*(a1 + 48) + 168))(a2, a3, a6, 2, 1, &v25, &v24 + 2);
    if ((result & 0x80000000) == 0)
    {
      if (v24)
      {
        v15 = 0;
        v16 = (v23 + 12);
        while (1)
        {
          v17 = *v16;
          v16 += 8;
          if (v17 - *(v23 + 12) > HIWORD(v25))
          {
            break;
          }

          if (v24 == ++v15)
          {
            goto LABEL_23;
          }
        }

        v18 = v15;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v24)
      {
        v19 = v24 - v18;
        v20 = (v23 + 32 * v18);
        while (v20[3] - *(v23 + 12) < v25)
        {
          if (*v20 <= 0x39u && ((1 << *v20) & 0x3C0010124001140) != 0)
          {
            v22 = 1;
            goto LABEL_24;
          }

          v20 += 8;
          if (!--v19)
          {
            break;
          }
        }
      }

LABEL_23:
      v22 = 0;
LABEL_24:
      *a7 = v22;
    }
  }

  return result;
}

void checksize_and_realloc(uint64_t a1, const char **a2, uint64_t a3, void *a4, unint64_t a5)
{
  v10 = *a2;
  v11 = strlen(*a2);
  if (a3 + 1 + v11 > *a4)
  {
    v12 = v11;
    if (a3 + 1 > a5)
    {
      a5 = a3 + 1;
    }

    v13 = heap_Realloc(*(a1 + 8), v10, *a4 + a5);
    if (v13)
    {
      *a2 = v13;
      v14 = *a4 + a5;
      *a4 = v14;
      v15 = (v13 + v12);

      bzero(v15, v14 - v12);
    }
  }
}

uint64_t pw_check_if_word_in_prompt_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = 0;
  *a5 = 0;
  result = (*(*(a1 + 48) + 168))(a2, a3, a4, 1, 1, &v10, &v10 + 2);
  if ((result & 0x80000000) == 0)
  {
    return (*(*(a1 + 48) + 312))(a2, a3, v10, a5);
  }

  return result;
}

uint64_t load_igtree_cfg(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v9 = 0;
  v8 = -1;
  v7 = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "statbnd_igtree", &v9, &v8, &v7);
  if ((v5 & 0x80000000) == 0 && v8 == 1)
  {
    (*v9)[strlen(*v9) - 1] = 0;
    if (!strcmp(*v9, "yes"))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t load_igtree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(v30, 0, 240);
  *v27 = 0;
  v28 = 0;
  *a4 = 0;
  *v29 = 0;
  memset(v31, 0, 128);
  v30[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v29);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v28), (Str & 0x80000000) != 0) || (__strcat_chk(), __strcat_chk(), __strcat_chk(), __strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, v31, 1, 1, *v29, 0, 0, v30, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v30, "IGTR", 1031, v27), (Str & 0x80000000) != 0))
  {
    v21 = Str;
  }

  else
  {
    v16 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v16;
    if (v16)
    {
      v21 = igtree_Init(a1, a2, *v27, v16);
      ssftriff_reader_CloseChunk(*v27);
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_PW", 37000, 0, v17, v18, v19, v20, v26);
      v21 = 2584748042;
    }
  }

  if (*v27)
  {
    v22 = ssftriff_reader_ObjClose(*v27, v9, v10, v11, v12, v13, v14, v15);
    if (v22 >= 0 || v21 <= -1)
    {
      v21 = v21;
    }

    else
    {
      v21 = v22;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t igtree_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    *v6 = 61;
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v7, v8, v9, v10, v12);
  return 2584748042;
}

uint64_t igtree_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v86 = 0;
  v14 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v14)
  {
    v19 = v14;
    if (a4 < 2)
    {
      v22 = 0;
    }

    else
    {
      v85 = a7;
      v20 = 0;
      v21 = (a4 - 1);
      while (strcmp(*(a3 + 8 * v20), "word"))
      {
        if (v21 == ++v20)
        {
          goto LABEL_24;
        }
      }

      v86 = v20;
LABEL_24:
      v31 = 0;
      if (v21 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = (a4 - 1);
      }

      while (strcmp(*(a3 + 8 * v31), "word"))
      {
        if (v32 == ++v31)
        {
          v22 = 0;
          goto LABEL_34;
        }
      }

      v86 = v31;
      if (v85 >= a6)
      {
        v33 = "=";
      }

      else
      {
        v33 = *(a5 + 40 * v85);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 0, a2, v33);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_34:
      v84 = a2;
      v34 = 0;
      while (strcmp(*(a3 + 8 * v34), "lword"))
      {
        if (v32 == ++v34)
        {
          goto LABEL_42;
        }
      }

      v86 = v34;
      if (v85 - 1 >= a6)
      {
        v35 = "=";
      }

      else
      {
        v35 = *(a5 + 40 * (v85 - 1));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 1, v84, v35);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_42:
      v36 = 0;
      while (strcmp(*(a3 + 8 * v36), "llword"))
      {
        if (v32 == ++v36)
        {
          goto LABEL_50;
        }
      }

      v86 = v36;
      if (v85 - 2 >= a6)
      {
        v37 = "=";
      }

      else
      {
        v37 = *(a5 + 40 * (v85 - 2));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 2, v84, v37);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_50:
      v38 = 0;
      while (strcmp(*(a3 + 8 * v38), "rword"))
      {
        if (v32 == ++v38)
        {
          goto LABEL_58;
        }
      }

      v86 = v38;
      if (v85 + 1 >= a6)
      {
        v39 = "=";
      }

      else
      {
        v39 = *(a5 + 40 * (v85 + 1));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 3, v84, v39);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_58:
      v40 = 0;
      while (strcmp(*(a3 + 8 * v40), "rrword"))
      {
        if (v32 == ++v40)
        {
          goto LABEL_66;
        }
      }

      v86 = v40;
      if (v85 + 2 >= a6)
      {
        v41 = "=";
      }

      else
      {
        v41 = *(a5 + 40 * (v85 + 2));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 4, v84, v41);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_66:
      v42 = 0;
      while (strcmp(*(a3 + 8 * v42), "wordlen"))
      {
        if (v32 == ++v42)
        {
          goto LABEL_74;
        }
      }

      v86 = v42;
      *v19 = 0;
      if (v85 >= a6)
      {
        *v19 = 61;
      }

      else
      {
        sprintf(v19, "%d", *(a5 + 40 * v85 + 26));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 5, v84, v19);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_74:
      v43 = 0;
      while (strcmp(*(a3 + 8 * v43), "lwordlen"))
      {
        if (v32 == ++v43)
        {
          goto LABEL_90;
        }
      }

      v86 = v43;
      *v19 = 0;
      if (v85 - 1 >= a6)
      {
        *v19 = 61;
      }

      else
      {
        sprintf(v19, "%d", *(a5 + 40 * (v85 - 1) + 26));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 6, v84, v19);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_90:
      v48 = 0;
      while (strcmp(*(a3 + 8 * v48), "rwordlen"))
      {
        if (v32 == ++v48)
        {
          goto LABEL_118;
        }
      }

      v86 = v48;
      *v19 = 0;
      if (v85 + 1 >= a6)
      {
        *v19 = 61;
      }

      else
      {
        sprintf(v19, "%d", *(a5 + 40 * (v85 + 1) + 26));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 7, v84, v19);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_118:
      v57 = 0;
      while (strcmp(*(a3 + 8 * v57), "pos"))
      {
        if (v32 == ++v57)
        {
          goto LABEL_126;
        }
      }

      v86 = v57;
      if (v85 >= a6)
      {
        v58 = "=";
      }

      else
      {
        v58 = *(a5 + 40 * v85 + 8);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 8, v84, v58);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_126:
      v59 = 0;
      while (strcmp(*(a3 + 8 * v59), "lpos"))
      {
        if (v32 == ++v59)
        {
          goto LABEL_142;
        }
      }

      v86 = v59;
      if (v85 - 1 >= a6)
      {
        v60 = "=";
      }

      else
      {
        v60 = *(a5 + 40 * (v85 - 1) + 8);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 9, v84, v60);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_142:
      v63 = 0;
      while (strcmp(*(a3 + 8 * v63), "llpos"))
      {
        if (v32 == ++v63)
        {
          goto LABEL_150;
        }
      }

      v86 = v63;
      if (v85 - 2 >= a6)
      {
        v64 = "=";
      }

      else
      {
        v64 = *(a5 + 40 * (v85 - 2) + 8);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 10, v84, v64);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_150:
      v65 = 0;
      while (strcmp(*(a3 + 8 * v65), "rpos"))
      {
        if (v32 == ++v65)
        {
          goto LABEL_166;
        }
      }

      v86 = v65;
      if (v85 + 1 >= a6)
      {
        v66 = "=";
      }

      else
      {
        v66 = *(a5 + 40 * (v85 + 1) + 8);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 11, v84, v66);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_166:
      v69 = 0;
      while (strcmp(*(a3 + 8 * v69), "rrpos"))
      {
        if (v32 == ++v69)
        {
          a2 = v84;
          a7 = v85;
          goto LABEL_9;
        }
      }

      v86 = v69;
      a7 = v85;
      if (v85 + 2 >= a6)
      {
        v70 = "=";
      }

      else
      {
        v70 = *(a5 + 40 * (v85 + 2) + 8);
      }

      a2 = v84;
      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 12, v84, v70);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }
    }

LABEL_9:
    if (!hlp_igtree_isFeatureRequired_0(a3, a4, 13, &v86) || (v23 = feat_char(a5, a7, 0, v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 13, a2, v23), (v22 & 0x80000000) == 0))
    {
      if (!hlp_igtree_isFeatureRequired_0(a3, a4, 15, &v86) || (v24 = feat_char(a5, a7, 1, v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 15, a2, v24), (v22 & 0x80000000) == 0))
      {
        if (!hlp_igtree_isFeatureRequired_0(a3, a4, 14, &v86) || (v25 = feat_char(a5, a7, -1, v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 14, a2, v25), (v22 & 0x80000000) == 0))
        {
          if (!hlp_igtree_isFeatureRequired_0(a3, a4, 16, &v86) || (v26 = feat_char(a5, a7, -2, v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 16, a2, v26), (v22 & 0x80000000) == 0))
          {
            if (!hlp_igtree_isFeatureRequired_0(a3, a4, 17, &v86))
            {
              goto LABEL_207;
            }

            if (a7)
            {
              v27 = a7 + 4294967294;
              v28 = a7 - 1;
              v29 = "=";
              while (v28)
              {
                v30 = a5 + 40 * v27--;
                --v28;
                if (**(v30 + 8) == 110)
                {
                  v29 = *v30;
                  break;
                }
              }
            }

            else
            {
              v29 = "=";
            }

            v22 = hlp_igtree_setFeature_0(a1, a3, a4, 17, a2, v29);
            if ((v22 & 0x80000000) == 0)
            {
LABEL_207:
              if (!hlp_igtree_isFeatureRequired_0(a3, a4, 18, &v86))
              {
                goto LABEL_208;
              }

              if (a7)
              {
                v44 = a7 + 4294967294;
                v45 = a7 - 1;
                v46 = "=";
                while (v45)
                {
                  v47 = a5 + 40 * v44--;
                  --v45;
                  if (**(v47 + 8) == 118)
                  {
                    v46 = *v47;
                    break;
                  }
                }
              }

              else
              {
                v46 = "=";
              }

              v22 = hlp_igtree_setFeature_0(a1, a3, a4, 18, a2, v46);
              if ((v22 & 0x80000000) == 0)
              {
LABEL_208:
                if (!hlp_igtree_isFeatureRequired_0(a3, a4, 19, &v86))
                {
                  goto LABEL_209;
                }

                v49 = "=";
                v50 = a7;
                while (a6 > ++v50)
                {
                  v51 = a5 + 40 * v50;
                  if (**(v51 + 8) == 110)
                  {
                    v49 = *v51;
                    break;
                  }
                }

                v22 = hlp_igtree_setFeature_0(a1, a3, a4, 19, a2, v49);
                if ((v22 & 0x80000000) == 0)
                {
LABEL_209:
                  if (!hlp_igtree_isFeatureRequired_0(a3, a4, 19, &v86))
                  {
                    goto LABEL_210;
                  }

                  v52 = "=";
                  v53 = a7;
                  while (a6 > ++v53)
                  {
                    v54 = a5 + 40 * v53;
                    if (**(v54 + 8) == 118)
                    {
                      v52 = *v54;
                      break;
                    }
                  }

                  v22 = hlp_igtree_setFeature_0(a1, a3, a4, 20, a2, v52);
                  if ((v22 & 0x80000000) == 0)
                  {
LABEL_210:
                    if (!hlp_igtree_isFeatureRequired_0(a3, a4, 21, &v86) || (a7 >= a6 ? (v56 = "=") : ((v19[1] = 0, *(a5 + 40 * a7 + 26) > 5u) ? (v55 = 48) : (v55 = 49), *v19 = v55, v56 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 21, a2, v56), (v22 & 0x80000000) == 0))
                    {
                      if (!hlp_igtree_isFeatureRequired_0(a3, a4, 22, &v86) || (a7 >= a6 ? (v62 = "=") : ((v19[1] = 0, *(a5 + 40 * a7 + 26) < 2u) ? (v61 = 48) : (v61 = 49), *v19 = v61, v62 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 22, a2, v62), (v22 & 0x80000000) == 0))
                      {
                        if (!hlp_igtree_isFeatureRequired_0(a3, a4, 23, &v86) || (a7 - 1 >= a6 ? (v68 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 - 1) + 26) > 5u) ? (v67 = 48) : (v67 = 49), *v19 = v67, v68 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 23, a2, v68), (v22 & 0x80000000) == 0))
                        {
                          if (!hlp_igtree_isFeatureRequired_0(a3, a4, 24, &v86) || (a7 - 1 >= a6 ? (v72 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 - 1) + 26) < 2u) ? (v71 = 48) : (v71 = 49), *v19 = v71, v72 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 24, a2, v72), (v22 & 0x80000000) == 0))
                          {
                            if (!hlp_igtree_isFeatureRequired_0(a3, a4, 25, &v86) || (a7 + 1 >= a6 ? (v74 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 + 1) + 26) > 5u) ? (v73 = 48) : (v73 = 49), *v19 = v73, v74 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 25, a2, v74), (v22 & 0x80000000) == 0))
                            {
                              if (!hlp_igtree_isFeatureRequired_0(a3, a4, 26, &v86) || (a7 + 1 >= a6 ? (v79 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 + 1) + 26) < 2u) ? (v78 = 48) : (v78 = 49), *v19 = v78, v79 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 26, a2, v79), (v22 & 0x80000000) == 0))
                              {
                                v80 = 0;
                                v81 = v86;
                                do
                                {
                                  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "igtree feature %s", v75, v76, v77, *(a2 + 8 * v80++));
                                }

                                while (v81 >= v80);
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
        }
      }
    }

LABEL_203:
    heap_Free(*(a1 + 8), v19);
    return v22;
  }

  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v15, v16, v17, v18, v83);
  return 2584748042;
}

uint64_t hlp_igtree_isFeatureRequired_0(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_4[a3];
  v8 = (a2 - 1);
  while (strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t hlp_igtree_setFeature_0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v18 = -1;
  result = hlp_igtree_isFeatureRequired_0(a2, a3, a4, &v18);
  if (result)
  {
    if (!*a6)
    {
      result = 0;
      **(a5 + 8 * v18) = 61;
      return result;
    }

    v10 = v18;
    if (strlen(a6) <= 0x40)
    {
      v12 = *(a5 + 8 * v18);
    }

    else
    {
      v11 = strlen(a6);
      v12 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v18), (v11 + 1));
      if (!v12)
      {
        log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v13, v14, v15, v16, v17);
        return 2584748042;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
    return 0;
  }

  return result;
}

uint64_t pw_dag_process(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, unsigned int *a10, unsigned int a11, uint64_t *a12, unsigned __int16 *a13)
{
  v18 = heap_Alloc(*(a1 + 8), 24);
  if (!v18)
  {
    v88 = 2584748042;
    v89 = *(a1 + 32);
LABEL_78:
    log_OutPublic(v89, "FE_PW", 37000, 0, v19, v20, v21, v22, v155);
    return v88;
  }

  v23 = v18;
  *(v18 + 8) = a9 + 1;
  v24 = a6 - 1;
  if (a6 - 1 <= 1)
  {
    v24 = 1;
  }

  *(v18 + 12) = a5;
  *(v18 + 16) = v24;
  v25 = heap_Alloc(*(a1 + 8), 16 * (a9 + 1));
  *v23 = v25;
  v30 = a1;
  if (!v25)
  {
    v88 = 2584748042;
    log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v26, v27, v28, v29, v155);
    v90 = *(a1 + 8);
    v91 = v23;
    goto LABEL_76;
  }

  v31 = v23[4];
  if (v23[4])
  {
    v32 = (v25 + 12);
    do
    {
      *(v32 - 6) = 0;
      *(v32 - 1) = -2147483647;
      *v32 = -1;
      v32 += 8;
      --v31;
    }

    while (v31);
  }

  v33 = heap_Alloc(*(a1 + 8), a4 + 11);
  if (!v33)
  {
    v88 = 2584748042;
    v89 = *(a1 + 32);
    goto LABEL_78;
  }

  v34 = v33;
  v163 = a1;
  if (!a9)
  {
    heap_Free(*(a1 + 8), v33);
LABEL_81:
    if (!*v23)
    {
      return 2584748039;
    }

    v93 = v23[4];
    v94 = v23[4];
    *(*v23 + 8) = 0;
    log_OutText(*(v30 + 32), "FE_PW", 5, 0, "[DAG]: All possible path, <vertex_from: vertex_to>: weight, accumulated weight", v85, v86, v87, v155);
    if (v93 >= 1)
    {
      v98 = 0;
      v99 = *v23;
      do
      {
        for (i = *(v99 + 16 * v98); i; i = *i)
        {
          v101 = *(i + 3);
          v102 = *(i + 4) + *(v99 + 16 * v98 + 8);
          log_OutText(*(v30 + 32), "FE_PW", 5, 0, "<%d: %d>: %d, %d", v95, v96, v97, v98);
          v99 = *v23;
          v103 = *v23 + 16 * v101;
          if (v102 > *(v103 + 8))
          {
            *(v103 + 8) = v102;
            *(v103 + 12) = v98;
          }
        }

        ++v98;
      }

      while (v98 != v94);
    }

    v104 = heap_Alloc(*(v30 + 8), 16);
    if (!v104)
    {
      goto LABEL_122;
    }

    v109 = v104;
    v110 = heap_Alloc(*(v30 + 8), 2 * v94);
    *v109 = v110;
    if (!v110)
    {
      log_OutPublic(*(v30 + 32), "FE_PW", 37000, 0, v111, v112, v113, v114, v156);
      if (*v109)
      {
        heap_Free(*(v30 + 8), *v109);
        *v109 = 0;
      }

      heap_Free(*(v30 + 8), v109);
      return 2584748042;
    }

    *(v109 + 8) = 0;
    v115 = (v94 - 1);
    *v110 = v94 - 1;
    v116 = *(v109 + 8);
    v117 = v116 + 1;
    *(v109 + 8) = v116 + 1;
    if (v115 >= 1)
    {
      v118 = *v23;
      do
      {
        v115 = *(v118 + 16 * v115 + 12);
        v110[v117] = v115;
        v116 = *(v109 + 8);
        v117 = v116 + 1;
        *(v109 + 8) = v116 + 1;
      }

      while (v115 > 0);
    }

    *a13 = v116;
    v119 = heap_Calloc(*(v30 + 8), v116, 16);
    *a12 = v119;
    if (!v119)
    {
LABEL_122:
      log_OutPublic(*(v30 + 32), "FE_PW", 37000, 0, v105, v106, v107, v108, v156);
      return 2584748042;
    }

    v120 = *a13;
    if (!*a13)
    {
LABEL_112:
      heap_Free(*(v163 + 8), *v109);
      heap_Free(*(v163 + 8), v109);
      v150 = *v23;
      if (*v23)
      {
        v151 = v23[4];
        if (v23[4])
        {
          v152 = 0;
          do
          {
            v153 = *(*v23 + 16 * v152);
            if (v153)
            {
              do
              {
                v154 = *v153;
                heap_Free(*(v163 + 8), v153);
                v153 = v154;
              }

              while (v154);
            }

            ++v152;
          }

          while (v152 != v151);
          v150 = *v23;
        }
      }

      heap_Free(*(v163 + 8), v150);
      heap_Free(*(v163 + 8), v23);
      return 0;
    }

    v121 = v119;
    v122 = 0;
    v123 = "FE_PW";
    v162 = v23;
    v168 = v109;
    while (1)
    {
      v124 = v123;
      v171 = v122;
      v125 = (*v109 + 2 * (v120 - v122));
      v126 = *(v125 - 1);
      v127 = *v125;
      v128 = heap_Alloc(*(v163 + 8), 2 * (v126 - v127));
      if (!v128)
      {
        log_OutPublic(*(v163 + 32), "FE_PW", 37000, 0, v129, v130, v131, v132, v156);
        if (*a12)
        {
          heap_Free(*(v163 + 8), *a12);
          *a12 = 0;
        }

        return 2584748042;
      }

      v133 = v128;
      *(v121 + 8) = v126 - v127;
      *v121 = v128;
      log_OutText(*(v163 + 32), v124, 5, 0, "Orthography is: ", v130, v131, v132, v156);
      if (v126 == v127)
      {
        v140 = heap_Calloc(*(v163 + 8), 1, 1000);
        v123 = v124;
        v141 = a13;
        v109 = v168;
        v142 = v171;
        if (!v140)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v166 = (v126 - v127);
        if (v166 <= 1)
        {
          v143 = 1;
        }

        else
        {
          v143 = (v126 - v127);
        }

        v144 = a8;
        v141 = a13;
        v109 = v168;
        v142 = v171;
        do
        {
          v145 = v144 + 40 * *(*v168 + 2 * (*a13 - v171));
          v146 = *(v145 + 24);
          v159 = *(v145 + 8);
          log_OutText(*(v163 + 32), v124, 5, 0, "    %s [tid: %d, pos: %s]    ", v134, v135, v136, *v145);
          *v133++ = v146;
          v144 += 40;
          --v143;
        }

        while (v143);
        v147 = heap_Calloc(*(v163 + 8), 1, 1000);
        v23 = v162;
        v123 = v124;
        if (!v147)
        {
          goto LABEL_111;
        }

        v140 = v147;
        v148 = 0;
        v149 = 0;
        do
        {
          sprintf(&v140[v149], "%d-", *(*v121 + 2 * v148));
          v149 = strlen(v140);
          ++v148;
        }

        while (v166 > v148);
        v141 = a13;
      }

      v157 = *(v121 + 8);
      log_OutText(*(v163 + 32), v123, 5, 0, "PW [tids:%s, ntok:%d]", v137, v138, v139, v140);
      heap_Free(*(v163 + 8), v140);
LABEL_111:
      v121 += 16;
      v122 = v142 + 1;
      v120 = *v141;
      if (v122 >= v120)
      {
        goto LABEL_112;
      }
    }
  }

  v35 = 0;
  v36 = 0;
  v37 = a7 + 512;
  while (1)
  {
    v167 = v36;
    v173 = a8 + 40 * v36;
    v38 = *v173;
    if (strlen(*v173) > 5 || !strcmp(*(v173 + 16), "latin"))
    {
      goto LABEL_69;
    }

    v39 = *(a7 + 1024);
    if (v39)
    {
      v40 = 0;
      while (*(a7 + 4 * v40) > *(v173 + 28) || *(v173 + 32) > *(v37 + 4 * v40))
      {
        if (v39 <= ++v40)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_69;
    }

LABEL_18:
    rules = pw_get_rules(a2, a3, v38);
    if (!rules)
    {
      log_OutText(*(v163 + 32), "FE_PW", 5, 0, "Warning: Can't find rules for the character %s", v42, v43, v44, *v173);
      goto LABEL_69;
    }

    v170 = *(rules + 8);
    if (*(rules + 8))
    {
      break;
    }

LABEL_69:
    v36 = v167 + 1;
    v35 = (v167 + 1);
    if (v35 >= a9)
    {
      v30 = v163;
      heap_Free(*(v163 + 8), v34);
      v83 = 0;
      while (1)
      {
        inserted = dag_insert_edge(v163, v23, v83, v83 + 1, *(v23 + 4));
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        if (a9 <= ++v83)
        {
          goto LABEL_81;
        }
      }
    }
  }

  v45 = 0;
  v169 = *(rules + 16);
  while (1)
  {
    v46 = v23;
    v47 = v169 + 40 * v45;
    *v34 = 0;
    v48 = *(v47 + 36);
    if (v35 >= v48 && a9 - v35 > *(v47 + 38))
    {
      if (*(v47 + 36))
      {
        v49 = 0;
        v50 = 0;
        v51 = a8;
        while (1)
        {
          v52 = v49 + v35 - v48;
          v53 = v51 + 40 * v52;
          if (!strcmp(*(v53 + 16), "latin"))
          {
            goto LABEL_35;
          }

          v54 = *(a7 + 1024);
          if (v54)
          {
            v55 = 0;
            while (*(a7 + 4 * v55) > *(v53 + 28) || *(v53 + 32) > *(v37 + 4 * v55))
            {
              if (v54 <= ++v55)
              {
                goto LABEL_31;
              }
            }

            goto LABEL_35;
          }

LABEL_31:
          v56 = strcat(v34, *(a8 + 40 * v52 + 8));
          v57 = strlen(v56);
          v51 = a8;
          *&v34[v57] = 45;
          v49 = ++v50;
          v48 = *(v47 + 36);
          if (v50 >= v48)
          {
            goto LABEL_34;
          }
        }
      }

      v51 = a8;
LABEL_34:
      v58 = *(v51 + 40 * (v35 - v48) + 28);
      v59 = strlen(v34);
      if (!strncmp(v34, v47, v59))
      {
        strcat(v34, *v173);
        if (*(v47 + 38))
        {
          v60 = 0;
          v61 = 0;
          while (1)
          {
            v62 = a8 + 40 * (v60 + v35);
            if (!strcmp(*(v62 + 56), "latin"))
            {
              goto LABEL_35;
            }

            v63 = *(a7 + 1024);
            if (v63)
            {
              v64 = 0;
              while (*(a7 + 4 * v64) > *(v62 + 68) || *(v62 + 72) > *(v37 + 4 * v64))
              {
                if (v63 <= ++v64)
                {
                  goto LABEL_45;
                }
              }

              goto LABEL_35;
            }

LABEL_45:
            *&v34[strlen(v34)] = 45;
            strcat(v34, *(v62 + 48));
            v60 = ++v61;
            v65 = *(v47 + 38);
            if (v61 >= v65)
            {
              v66 = *(v47 + 38);
              v67 = v65;
              goto LABEL_48;
            }
          }
        }

        v67 = 0;
        v66 = 0;
LABEL_48:
        if (!strcmp(v34, v47))
        {
          if (a11)
          {
            v68 = a10;
            v69 = a11;
            do
            {
              v71 = *v68++;
              v70 = v71;
              if (v71 > v58 && v70 < *(a8 + 40 * (v66 + v35) + 32))
              {
                goto LABEL_35;
              }
            }

            while (--v69);
          }

          v73 = *(v47 + 36);
          v74 = v167 - v73;
          if (v35 + v67 < (v167 - v73))
          {
            break;
          }

          v75 = 0;
          v76 = 0;
          do
          {
            v77 = *(a8 + 40 * v74 + 26);
            v76 += v77;
            if (v77 > 1)
            {
              ++v75;
            }

            ++v74;
          }

          while (v35 + v67 >= v74);
          if (v75 <= 1u && v76 <= 5u)
          {
            break;
          }
        }
      }
    }

LABEL_35:
    ++v45;
    v23 = v46;
    if (v170 <= v45)
    {
      goto LABEL_69;
    }
  }

  v79 = dag_insert_edge(v163, v46, v167 - v73, v167 + 1 + v66, *(v47 + 32));
  if ((v79 & 0x80000000) == 0)
  {
    v160 = v35 - *(v47 + 36);
    v161 = v35 + 1 + *(v47 + 38);
    v158 = *(v47 + 32);
    log_OutText(*(v163 + 32), "FE_PW", 5, 0, "%s Matches rule %s with weight %d, and insert edges between point %d and %d", v80, v81, v82, *v173);
    goto LABEL_35;
  }

  v88 = v79;
  v90 = *(v163 + 8);
  v91 = v34;
LABEL_76:
  heap_Free(v90, v91);
  return v88;
}

uint64_t pw_weather_word_in_prompt(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a1 + 1024);
  if (v3)
  {
    v4 = 0;
    while (*(a1 + 4 * v4) > *(a2 + 28) || *(a2 + 32) > *(a1 + 512 + 4 * v4))
    {
      if (v3 <= ++v4)
      {
        return 0;
      }
    }

    *a3 = 1;
  }

  return 0;
}

uint64_t dag_insert_edge(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, uint64_t a5)
{
  v10 = heap_Alloc(*(a1 + 8), 24);
  if (v10)
  {
    v15 = v10;
    *(v10 + 8) = a3;
    *(v10 + 12) = a4;
    v16 = uint32_log2(a5);
    v17 = uint32_log2(*(a2 + 3));
    result = 0;
    *(v15 + 16) = v16 - v17;
    v19 = *a2;
    v20 = 16 * a3;
    *v15 = *(*a2 + v20);
    *(v19 + v20) = v15;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v11, v12, v13, v14, v21);
    return 2584748042;
  }

  return result;
}

uint64_t BSCompareUtf8ChineseChar(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = utf8_determineUTF8CharLength(*a1);
  v5 = utf8_determineUTF8CharLength(*a2);
  if (v4 != v5)
  {
    return v4 - v5;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = a1[v6];
    v8 = a2[v6];
    result = (v7 - v8);
    if (v7 != v8)
    {
      break;
    }

    if (++v6 >= v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GetRulesFromRiffData(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, unsigned int *a6, unsigned __int16 *a7, _DWORD *a8, unsigned int *a9, uint64_t *a10, unsigned __int8 *a11)
{
  v121 = *MEMORY[0x1E69E9840];
  memset(__dst, 0, 32);
  memset(v119, 0, sizeof(v119));
  v101 = 0;
  memset(v118, 0, sizeof(v118));
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  *__s = 0u;
  v103 = 0u;
  *a7 = 0;
  *a8 = 0;
  *a9 = 10000;
  *a11 = 0;
  ssftriff_reader_ReadStringZ(a2, a3, a4, 0, 0, &v101);
  v100 = a2;
  ssftriff_reader_ReadStringZ(a2, a3, a4, 0, __s, &v101);
  v19 = v101;
  v20 = strchr(__s, 9);
  if (!v20 || (v21 = v20, v99 = a3, (v22 = strchr(v20 + 1, 9)) == 0))
  {
    v81 = 0;
    goto LABEL_59;
  }

  v23 = v22;
  v97 = a4;
  *v22 = 0;
  v24 = atoi(v21 + 1);
  *a11 = v24;
  v25 = heap_Calloc(*(a1 + 8), v24, 8);
  *a10 = v25;
  if (!v25)
  {
    v81 = 2584748042;
    log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v26, v27, v28, v29, v91);
    goto LABEL_59;
  }

  v30 = v25;
  v94 = a5;
  v95 = a7;
  v93 = a8;
  v98 = a6;
  if (!*a11)
  {
LABEL_8:
    v42 = v100;
    v43 = v99;
    v44 = v97;
    ssftriff_reader_ReadStringZ(v100, v99, v97, v19, 0, &v101);
    ssftriff_reader_ReadStringZ(v100, v99, v97, v19, __dst, &v101);
    v45 = v101 + v19;
    v101 = 0;
    ssftriff_reader_ReadStringZ(v100, v99, v97, v45, 0, &v101);
    ssftriff_reader_ReadStringZ(v100, v99, v97, v45, v119, &v101);
    v46 = v101;
    v47 = atoi(v119);
    v48 = v98;
    *v98 = v47;
    v49 = heap_Calloc(*(a1 + 8), v47, 32);
    if (!v49)
    {
      goto LABEL_45;
    }

    v96 = v49;
    if (!*v98)
    {
      goto LABEL_42;
    }

    v50 = v46 + v45;
    v51 = 0;
LABEL_11:
    v101 = 0;
    ssftriff_reader_ReadStringZ(v42, v43, v44, v50, 0, &v101);
    ssftriff_reader_ReadStringZ(v42, v43, v44, v50, v118, &v101);
    v52 = v101;
    v53 = atoi(v118);
    v92 = v51;
    v54 = (v96 + 32 * v51);
    *(v54 + 4) = v53;
    v55 = heap_Calloc(*(a1 + 8), v53, 40);
    v54[2] = v55;
    if (!v55)
    {
      v81 = 2584748042;
      log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v56, v57, v58, v59, v91);
LABEL_47:
      v82 = a10;
      v83 = *v48;
      if (v83)
      {
        v84 = 0;
        v85 = (v96 + 16);
        do
        {
          if (*v85)
          {
            heap_Free(*(a1 + 8), *v85);
            *v85 = 0;
            v83 = *v48;
          }

          ++v84;
          v85 += 4;
        }

        while (v84 < v83);
      }

      heap_Free(*(a1 + 8), v96);
      goto LABEL_53;
    }

    v50 += v52;
    *(v54 + 6) = 0;
    *v54 = 0;
    *(v54 + 4) = 0;
    if (!*(v54 + 4))
    {
      goto LABEL_41;
    }

    v60 = 0;
LABEL_14:
    v101 = 0;
    ssftriff_reader_ReadStringZ(v42, v43, v44, v50, 0, &v101);
    ssftriff_reader_ReadStringZ(v42, v43, v44, v50, (v54[2] + 40 * v60), &v101);
    v61 = 0;
    v62 = 0;
    v50 += v101;
    v63 = v54[2];
    *(v63 + 40 * v60 + 32) = 0;
    while (1)
    {
      v64 = v63 + 40 * v60;
      v65 = (v64 + v62);
      v66 = *v65;
      if (v66 == 45)
      {
        break;
      }

      if (!*v65)
      {
        v62 = 0;
        goto LABEL_32;
      }

      if (v66 == 9)
      {
        *(v64 + 32) = atoi(v65 + 1);
        *v65 = 0;
        v63 = v54[2];
LABEL_32:
        v75 = v63 + 40 * v60;
        *(v75 + 38) = v61;
        v76 = *(v75 + 36);
        v48 = v98;
        v43 = v99;
        if (*(v54 + 12) < v76)
        {
          *(v54 + 12) = v76;
        }

        if (*(v54 + 13) < v61)
        {
          *(v54 + 13) = v61;
        }

        if (*v95 < v62)
        {
          *v95 = v62;
        }

        v77 = v63 + 40 * v60;
        v80 = *(v77 + 32);
        v79 = (v77 + 32);
        v78 = v80;
        v44 = v97;
        if (*a9 > v80)
        {
          *a9 = v78;
          v78 = *v79;
        }

        v42 = v100;
        *v93 += v78;
        if (++v60 < *(v54 + 4))
        {
          goto LABEL_14;
        }

LABEL_41:
        v51 = v92 + 1;
        if (v92 + 1 >= *v48)
        {
LABEL_42:
          v81 = 0;
          *v94 = v96;
          goto LABEL_59;
        }

        goto LABEL_11;
      }

      if ((v66 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        goto LABEL_26;
      }

      *(v64 + 36) = v61;
      v67 = utf8_determineUTF8CharLength(*v65);
      v71 = v67;
      if (v60)
      {
        v63 = v54[2];
        v48 = v98;
        if (v67)
        {
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v74 = *(v54 + v73);
            if (v74 != *(v63 + 40 * v60 + v72 + v62))
            {
              break;
            }

            v72 = ++v73;
            if (v67 <= v73)
            {
              goto LABEL_28;
            }
          }

          log_OutText(*(a1 + 32), "FE_PW", 5, 0, "the Chinese Character %s in %d rule: %d is not same", v68, v69, v70, v74);
          v81 = 2584748060;
          goto LABEL_47;
        }
      }

      else
      {
        memcpy(v54, (v54[2] + v62), v67);
        v63 = v54[2];
      }

LABEL_28:
      v61 = 0;
LABEL_29:
      v62 += v71;
    }

    ++v61;
LABEL_26:
    v71 = 1;
    goto LABEL_29;
  }

  v31 = 0;
  v32 = 0;
  v33 = v23 + 1;
  while (1)
  {
    v34 = heap_Calloc(*(a1 + 8), 8, 1);
    *(v30 + 8 * v31) = v34;
    if (!v34)
    {
      break;
    }

    v39 = v32;
    v40 = &v33[v32];
    v41 = utf8_determineUTF8CharLength(*v40);
    memcpy(*(v30 + 8 * v31), v40, v41);
    *(*(v30 + 8 * v31) + v41 + 1) = 0;
    v32 = v39 + v41;
    if (++v31 >= *a11)
    {
      goto LABEL_8;
    }
  }

LABEL_45:
  v81 = 2584748042;
  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v35, v36, v37, v38, v91);
  v82 = a10;
LABEL_53:
  v86 = *a11;
  if (*a11)
  {
    v87 = 0;
    do
    {
      v88 = *(v30 + 8 * v87);
      if (v88)
      {
        heap_Free(*(a1 + 8), v88);
        v86 = *a11;
      }

      ++v87;
    }

    while (v87 < v86);
  }

  heap_Free(*(a1 + 8), v30);
  *v82 = 0;
LABEL_59:
  v89 = *MEMORY[0x1E69E9840];
  return v81;
}

uint64_t fe_wmp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2587893761;
  }

  result = 0;
  *a2 = &IFeWmp;
  return result;
}

uint64_t fe_wmp_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  v5 = 2587893767;
  v23 = 0;
  memset(v26, 0, sizeof(v26));
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v25);
    if ((inited & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v25 + 8), 1, 168);
      if (v10)
      {
        v15 = v10;
        Object = objc_GetObject(*(v25 + 48), "LINGDB", &v24);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_10;
        }

        *(v15 + 24) = *(v24 + 8);
        Object = objc_GetObject(*(v25 + 48), "FE_DCTLKP", &v23);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_10;
        }

        v17 = v23;
        *(v15 + 56) = *(v23 + 8);
        *(v15 + 64) = *(v17 + 16);
        v18 = v25;
        *v15 = v25;
        *(v15 + 8) = a3;
        *(v15 + 16) = a4;
        Object = fe_wmp_CreateVoiceBrokerString(v18, v26);
        if ((Object & 0x80000000) != 0)
        {
LABEL_10:
          v5 = Object;
        }

        else
        {
          v5 = fe_wmp_tryLoadingWmpModel(*(v15 + 8), *(v15 + 16), *v15, (v15 + 32));
          if ((v5 & 0x80000000) == 0)
          {
            v19 = 62342;
LABEL_13:
            *a5 = v15;
            *(a5 + 8) = v19;
            goto LABEL_14;
          }
        }
      }

      else
      {
        log_OutPublic(*(v25 + 32), "FE_WMP", 37000, 0, v11, v12, v13, v14, v22);
        v5 = 2587893770;
      }

      fe_wmp_ObjClose(*a5, *(a5 + 8));
      v15 = 0;
      v19 = 0;
      goto LABEL_13;
    }

    v5 = inited;
  }

LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
  return v5;
}