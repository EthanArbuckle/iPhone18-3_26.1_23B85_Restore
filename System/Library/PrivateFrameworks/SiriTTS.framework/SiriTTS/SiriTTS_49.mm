uint64_t fe_nnws_IGTreeProcess(uint64_t *a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __s1 = 0;
  v8 = *a1;
  v9 = a1[23];
  if (!a2 || !v9)
  {
    log_OutText(*(v8 + 32), "FE_NNWS", 5, 0, "IGTree model for NNWS does not exist", a6, a7, a8, v49);
    return 0;
  }

  v13 = heap_Alloc(*(v8 + 8), 8 * *(v9 + 1296) - 8);
  if (!v13)
  {
    v41 = 2588942346;
    log_OutPublic(*(v8 + 32), "FE_NNWS", 750000, 0, v14, v15, v16, v17, v49);
    return v41;
  }

  v18 = v13;
  v54 = a5;
  if (*(v9 + 1296) != 1)
  {
    v19 = (*(v9 + 1296) - 1);
    v20 = v13;
    do
    {
      v21 = heap_Calloc(*(v8 + 8), 1, 65);
      *v20 = v21;
      if (!v21)
      {
        v41 = 2588942346;
        log_OutPublic(*(v8 + 32), "FE_NNWS", 750000, 0, v22, v23, v24, v25, v49);
        goto LABEL_57;
      }

      *v21 = 61;
      ++v20;
      --v19;
    }

    while (v19);
  }

  v26 = 0;
  v52 = a3 + 2;
  v53 = a3;
  v50 = a3 + 3;
  v51 = a3 + 1;
  v27 = v54;
  do
  {
    v28 = *(v9 + 1312);
    v29 = *(v9 + 1296);
    v30 = fe_nnws_setFeature(v8, v28, v29, 0, v18, *(*v27 + 8 * v26));
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v31 = "=";
    if (a2 > v26)
    {
      v31 = *(a4 + 56 * v26);
    }

    v30 = fe_nnws_setFeature(v8, v28, v29, 1, v18, v31);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v32 = "=";
    if (v26 - 1 < a2)
    {
      v32 = *(a4 + 56 * (v26 - 1));
    }

    v30 = fe_nnws_setFeature(v8, v28, v29, 2, v18, v32);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v33 = "=";
    if (v26 - 2 < a2)
    {
      v33 = *(a4 + 56 * (v26 - 2));
    }

    v30 = fe_nnws_setFeature(v8, v28, v29, 3, v18, v33);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v34 = "=";
    if (v26 - 3 < a2)
    {
      v34 = *(a4 + 56 * (v26 - 3));
    }

    v30 = fe_nnws_setFeature(v8, v28, v29, 4, v18, v34);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v35 = "=";
    if (v26 - 4 < a2)
    {
      v35 = *(a4 + 56 * (v26 - 4));
    }

    v30 = fe_nnws_setFeature(v8, v28, v29, 5, v18, v35);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v36 = "=";
    if (v26 + 1 < a2)
    {
      v36 = *(a4 + 56 * (v26 + 1));
    }

    v30 = fe_nnws_setFeature(v8, v28, v29, 6, v18, v36);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v37 = "=";
    if (v26 + 2 < a2)
    {
      v37 = *(a4 + 56 * (v26 + 2));
    }

    v30 = fe_nnws_setFeature(v8, v28, v29, 7, v18, v37);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v38 = "=";
    if (v26 + 3 < a2)
    {
      v38 = *(a4 + 56 * (v26 + 3));
    }

    v30 = fe_nnws_setFeature(v8, v28, v29, 8, v18, v38);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v39 = "=";
    if (v26 + 4 < a2)
    {
      v39 = *(a4 + 56 * (v26 + 4));
    }

    v30 = fe_nnws_setFeature(v8, v28, v29, 9, v18, v39);
    if ((v30 & 0x80000000) != 0)
    {
LABEL_55:
      v41 = v30;
      goto LABEL_57;
    }

    v40 = "=";
    if (v26 < a2)
    {
      v40 = v57;
      LH_itoa(v26 + 1, v57, 0xAu);
    }

    v41 = fe_nnws_setFeature(v8, v28, v29, 10, v18, v40);
    v27 = v54;
    if ((v41 & 0x80000000) != 0)
    {
      goto LABEL_57;
    }

    igtree_Process(v9, v18, &__s1);
    v42 = __s1;
    if (strcmp(__s1, "NOMATCH"))
    {
      v41 = 0;
      v43 = *v42;
      if (v43 <= 0x4C)
      {
        v44 = v51;
        if (v43 != 66)
        {
          if (v43 != 69)
          {
            goto LABEL_48;
          }

          v44 = v50;
        }

LABEL_47:
        *(*v54 + 8 * v26) = *v44;
        fe_hlp_adjustBMES_basedSingleLabel(a2, v26, v53, v54);
        v41 = 0;
        goto LABEL_48;
      }

      v44 = v52;
      if (v43 == 77)
      {
        goto LABEL_47;
      }

      v44 = v53;
      if (v43 == 83)
      {
        goto LABEL_47;
      }
    }

LABEL_48:
    ++v26;
  }

  while (a2 != v26);
  if (*(v9 + 1296) != 1)
  {
    v45 = (*(v9 + 1296) - 1);
    v46 = v18;
    do
    {
      v47 = *v46++;
      heap_Free(*(v8 + 8), v47);
      --v45;
    }

    while (v45);
  }

LABEL_57:
  heap_Free(*(v8 + 8), v18);
  return v41;
}

uint64_t **fe_nnws_retag_word_under_phon(uint64_t **result, uint64_t *a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *result;
  if (v5 >= 2)
  {
    v7 = (v4 + 96);
    v8 = 8 * v5;
    v9 = 8;
    while (1)
    {
      if (*(v7 - 13) != 1 || v7[1] != 1)
      {
        goto LABEL_20;
      }

      v10 = *(v7 - 14);
      if (v10 == 1)
      {
        if (*v7)
        {
          if (*v7 != 1)
          {
            goto LABEL_20;
          }

          v12 = *a4;
          v6[v9 / 8] = *a4;
          if (v9 != 8)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        v6[v9 / 8] = a4[1];
        v13 = a4;
      }

      else
      {
        if (v10)
        {
          goto LABEL_20;
        }

        if (*v7)
        {
          if (*v7 != 1)
          {
            goto LABEL_20;
          }

          v11 = a4[3];
        }

        else
        {
          v11 = a4[2];
        }

        v6[v9 / 8] = v11;
        v13 = a4 + 1;
      }

      if (v9 == 8)
      {
        v12 = *v13;
LABEL_19:
        *v6 = v12;
      }

LABEL_20:
      v7 += 14;
      v9 += 8;
      if (v8 == v9)
      {
        return result;
      }
    }
  }

  if (*(v4 + 44) == 1)
  {
    *v6 = *a4;
  }

  return result;
}

uint64_t fe_nnws_group(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, const char **a5)
{
  v7 = *a3;
  v8 = *a5;
  v9 = *a4;
  v62 = strlen(*a5);
  if (v9)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v7 + 32;
    v65 = a2;
    v66 = v9;
    while (1)
    {
      v19 = **(a2 + 8 * v14);
      switch(v19)
      {
        case 'B':
          v39 = v7 + 56 * v17;
          *(v39 + 8) = *(v18 - 24);
          *(v39 + 32) = *v18;
          v16 = v14;
          break;
        case 'S':
          v64 = v16;
          v34 = v15;
          v35 = *(v18 - 16);
          v36 = v7 + 56 * v17;
          v37 = *v36;
          if (!strcmp(*v36, "NUM"))
          {
            if ((v35 - 4) < 0xFFFFFFFB)
            {
              goto LABEL_26;
            }
          }

          else if (!strcmp(v37, "ENG") && (v35 - 4) < 0xFFFFFFFB)
          {
LABEL_26:
            v40 = heap_Realloc(*(a1 + 8), v37, v35 + 1);
            *v36 = v40;
            if (!v40)
            {
              goto LABEL_57;
            }

            v37 = v40;
            v41 = *(v18 - 16);
            goto LABEL_29;
          }

          if (*(v36 + 16) < (v35 + 1))
          {
            goto LABEL_26;
          }

          v41 = v35;
LABEL_29:
          strncpy(v37, (v8 + *(v18 - 20)), v41);
          *(*v36 + *(v18 - 16)) = 0;
          v42 = *(v18 - 12);
          *(v36 + 16) = v35;
          *(v36 + 20) = v42;
          *(v36 + 8) = *(v18 - 24);
          *(v36 + 40) = *(v18 + 8);
          *(v36 + 32) = *v18;
          *(v36 + 48) = *(v18 + 16);
          v15 = v35 + v34;
          ++v17;
          a2 = v65;
          v9 = v66;
          v16 = v64;
          break;
        case 'E':
          v20 = v7 + 56 * v16;
          v22 = *(v20 + 12);
          v21 = (v20 + 12);
          v23 = *(v18 - 16) + *(v18 - 20);
          v24 = v23 - v22;
          if (v23 < v22)
          {
            log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0, v10, v11, v12, v13, a5);
            return 2588942343;
          }

          v25 = v15;
          v26 = v7 + 56 * v17;
          v27 = heap_Realloc(*(a1 + 8), *v26, (v24 + 1));
          *v26 = v27;
          if (!v27)
          {
            goto LABEL_57;
          }

          strncpy(v27, (v8 + *v21), v24);
          *(*v26 + v24) = 0;
          *(v26 + 16) = v24;
          *(v26 + 36) = *(v18 + 4);
          v32 = *v18;
          if (*(v26 + 32) == 1 && v32 == 2)
          {
            v32 = 3;
            a2 = v65;
          }

          else
          {
            a2 = v65;
            if ((v32 & 0xFFFFFFFE) != 2)
            {
              goto LABEL_23;
            }
          }

          *(v26 + 32) = v32;
          *(v26 + 20) = *(v18 - 12);
LABEL_23:
          v15 = v24 + v25;
          ++v17;
          v16 = v14 + 1;
          v9 = v66;
          break;
      }

      ++v14;
      v18 += 56;
      if (v9 == v14)
      {
        goto LABEL_33;
      }
    }
  }

  v17 = 0;
  v15 = 0;
LABEL_33:
  if (v17 < v9)
  {
    v43 = (v7 + 56 * v17);
    v44 = v9 - v17;
    do
    {
      v45 = *v43;
      v43 += 7;
      heap_Free(*(a1 + 8), v45);
      --v44;
    }

    while (v44);
  }

  *a4 = v17;
  v46 = v15 + v17;
  if (v46 + 1 <= v62 || (v8 = heap_Realloc(*(a1 + 8), v8, v46)) != 0)
  {
    if (v17)
    {
      v47 = 0;
      v48 = (v7 + 16);
      v49 = v17;
      do
      {
        v50 = v47;
        memcpy((v8 + v47), *(v48 - 2), *v48);
        *(v8 + *v48 + v50) = 32;
        v52 = *v48;
        v48 += 7;
        v51 = v52;
        v47 = v50 + v52 + 1;
        --v49;
      }

      while (v49);
      if (v47)
      {
        *(v8 + v50 + v51) = 0;
      }

      v53 = 0;
      *a5 = v8;
      do
      {
        v54 = v7 + 56 * v53;
        if (*(v54 + 32) == 1)
        {
          v55 = v53;
          if (v53 < v17)
          {
            v56 = (v7 + 88 + 56 * v53);
            do
            {
              *(v56 - 14) = 4;
              ++v55;
              v57 = *v56;
              v56 += 14;
            }

            while (v57 != 2 && v55 < v17);
            v53 = v55;
          }

          *(v7 + 56 * v55 + 8) = *(v54 + 8);
        }

        else
        {
          ++v53;
        }
      }

      while (v53 < v17);
      return 0;
    }

    else
    {
      v59 = 0;
      *a5 = v8;
    }
  }

  else
  {
LABEL_57:
    v59 = 2588942346;
    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0, v28, v29, v30, v31, a5);
  }

  return v59;
}

uint64_t fe_nnws_writeLDB_v2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v10 = a4;
  v144 = 0;
  v143 = 0;
  v13 = (*(a1[6] + 176))(a2, a3, a4, 1, &v144, &v143);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v140 = a3;
  v141 = v10;
  reorder_pMrk(&v144, v143, 40);
  reorder_pMrk(&v144, v143, 1);
  if (a6)
  {
    v14 = heap_Calloc(*(*a1 + 8), a6, 32);
    v19 = *a1;
    if (!v14)
    {
      v26 = 2588942346;
      log_OutPublic(*(v19 + 32), "FE_NNWS", 75000, 0, v15, v16, v17, v18, v139);
      return v26;
    }

    v20 = v14;
    v25 = heap_Calloc(*(v19 + 8), a6, 4);
    if (!v25)
    {
      v26 = 2588942346;
      log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v21, v22, v23, v24, v139);
      v27 = 0;
LABEL_181:
      heap_Free(*(*a1 + 8), v20);
      goto LABEL_182;
    }
  }

  else
  {
    v20 = 0;
    v25 = 0;
  }

  v28 = v143;
  v29 = v144;
  if (v143)
  {
    v30 = 0;
    v31 = v144;
    while (1)
    {
      v33 = *v31;
      v31 += 2;
      v32 = v33;
      if (v33 == 41 || v32 == 1)
      {
        break;
      }

      if (v143 == ++v30)
      {
        LODWORD(v30) = -1;
        break;
      }
    }

    v35 = 0;
    v36 = v30 & ~(v30 >> 31);
    v37 = v144;
    while (1)
    {
      v38 = *v37;
      v37 += 2;
      if (v38 == 40)
      {
        break;
      }

      if (v143 == ++v35)
      {
        goto LABEL_22;
      }
    }

    v39 = v35;
    if (a6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v36 = 0;
LABEL_22:
    v39 = -1;
    if (a6)
    {
LABEL_25:
      v40 = 0;
      v41 = 0;
      v42 = v36;
      v43 = *(v144 + 3);
      v44 = &v144[2 * v42];
      while (1)
      {
        v45 = (a5 + 56 * v40);
        v46 = v45[8];
        v47 = (v20 + 32 * v40);
        if (v46 != 4)
        {
          break;
        }

        v41 += v45[4] + 1;
        *v47 = 0;
LABEL_54:
        if (++v40 == a6)
        {
          goto LABEL_55;
        }
      }

      v47[1] = *(v44 + 1) + v45[2];
      if ((v46 & 0xFFFFFFFE) == 2)
      {
        v48 = v45[5];
        v49 = v45[4] + v41;
      }

      else
      {
        v48 = v45[4];
        v49 = v48;
      }

      v47[2] = v48;
      v50 = v43;
      if (v40)
      {
        v50 = *(v47 - 5) + *(v47 - 4) + 1;
      }

      v47[3] = v50;
      v47[4] = v49;
      if (v46 != 5 || v39 == -1)
      {
        *v47 = 1;
      }

      else
      {
        v52 = &v29[2 * v39];
        v53 = v52[1];
        *v47 = *v52;
        *(v47 + 1) = v53;
        v54 = v45[4];
        v47[2] = v54;
        v55 = v43;
        if (v40)
        {
          v55 = *(v47 - 5) + *(v47 - 4) + 1;
        }

        v47[3] = v55;
        v47[4] = v54;
        if (v39 + 1 < v28)
        {
          v56 = &v29[2 * ++v39];
          while (1)
          {
            v57 = *v56;
            v56 += 2;
            if (v57 == 40)
            {
              break;
            }

            if (v28 == ++v39)
            {
              v39 = -1;
              break;
            }
          }
        }

        if (*v47 == 40)
        {
LABEL_49:
          *(v25 + 4 * v40) = 1;
LABEL_50:
          if ((v45[8] & 0xFFFFFFFE) == 2 && !v45[10])
          {
            *(v25 + 4 * v40) = 2;
          }

          v41 = 0;
          v58 = v47[3] - *(v29 + 3);
          v59 = v47[4] + v58;
          v45[6] = v58;
          v45[7] = v59;
          goto LABEL_54;
        }

        if (*v47 != 1)
        {
          goto LABEL_50;
        }
      }

      if (v45[9] != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

LABEL_55:
  if (v28)
  {
    v60 = 0;
    v61 = v29 + 2;
    v62 = -1;
    v63 = v28;
    do
    {
      v64 = v63;
      v65 = *(v61 - 8);
      ++v60;
      if (v65 == 40)
      {
        if (v60 < v63 && *v61 == 1 && *(v61 - 5) == v61[3])
        {
          memmove(v61 - 8, v61, 32 * (v62 + v63--));
          v64 = v63;
        }
      }

      else if (v65 == 99 && v60 < v63)
      {
        v67 = *(v61 - 5);
        v68 = v61[3];
        if (v67 == v68 - 1 && *(a7 + (v67 - *(v29 + 3))) == 32)
        {
          *(v61 - 5) = v68;
          *(v61 - 7) = v61[1];
        }
      }

      v61 += 8;
      --v62;
    }

    while (v60 < v64);
    LOWORD(v143) = v63;
    if (v63)
    {
      v69 = 0;
      v28 = 0;
      v70 = v144;
      v71 = v63;
      do
      {
        v73 = *v70;
        v70 += 2;
        v72 = v73;
        if (v69)
        {
          v74 = v28;
        }

        else
        {
          v74 = v28 + 1;
        }

        if (v72 == 0x4000)
        {
          v75 = 1;
        }

        else
        {
          v74 = v28 + 1;
          v75 = v69;
        }

        if (v72 != 1)
        {
          v28 = v74;
          v69 = v75;
        }

        --v71;
      }

      while (v71);
    }

    else
    {
      v28 = 0;
    }
  }

  v76 = v28 + a6;
  v27 = heap_Alloc(*(*a1 + 8), 32 * (v28 + a6));
  if (v27)
  {
    v81 = v143;
    if (v143)
    {
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = v144;
      v91 = 1;
      v92 = 1;
      while (1)
      {
        v93 = &v90[2 * v89];
        if (*v93 == 0x4000)
        {
          if (!v83)
          {
            v94 = &v27[8 * v85];
            v95 = v93[1];
            *v94 = *v93;
            *(v94 + 1) = v95;
            v96 = v94[1];
            if (v96)
            {
              v96 = *(a1 + 27);
            }

            else
            {
              a1[13] = 0;
            }

            v94[3] = v96;
            v86 = v96 - *(v93 + 3);
            ++v85;
          }

          ++v89;
          v83 = 1;
          goto LABEL_117;
        }

        if (*v93 == 1)
        {
          if (v92 == 1)
          {
            v82 = *(v93 + 1);
          }

          v92 = 0;
          goto LABEL_113;
        }

        if (v88 < a6)
        {
          v97 = v20 + 32 * v88;
          if (*(v97 + 12) < (*(v93 + 3) + v87))
          {
            v98 = &v27[8 * v85];
            v99 = *(v97 + 16);
            *v98 = *v97;
            *(v98 + 1) = v99;
            v100 = *(v97 + 12) + v86;
            v98[3] = v100;
            if (v85)
            {
              v101 = v85 - 1;
              if (v85 == 1)
              {
                v102 = v27[1];
                goto LABEL_124;
              }

              v108 = &v27[8 * v101];
              if (*v108 <= 0x28u && ((1 << *v108) & 0x10020000002) != 0)
              {
                v102 = v108[2] + v108[1];
LABEL_124:
                v98[1] = v102;
                v109 = v98 + 1;
                v110 = *(v25 + 4 * v88);
                if (v110 == 2)
                {
                  if (*(v97 + 12) - v87 != *(v93 + 3))
                  {
                    ++v87;
                  }

                  if (!v85)
                  {
                    goto LABEL_138;
                  }

LABEL_128:
                  v111 = &v27[8 * v85 - 8];
                  if (*v111 == 29)
                  {
                    v112 = v111[3];
                    if (v100 > v112)
                    {
                      v111[3] = v112 + 1;
                    }
                  }

                  if (v91 == 1)
                  {
                    *v109 = v82;
                    if (v85 == 2)
                    {
                      v109 = v27 + 9;
                      if (v27[8] == 36)
                      {
LABEL_139:
                        *v109 = v82;
                      }
                    }
                  }
                }

                else
                {
                  if (!v110)
                  {
                    ++v87;
                  }

                  if (v85)
                  {
                    goto LABEL_128;
                  }

LABEL_138:
                  if (v91 == 1)
                  {
                    goto LABEL_139;
                  }
                }

                v91 = 0;
                if (++v88 == a6)
                {
                  v84 = v85;
                }

                ++v85;
                goto LABEL_117;
              }
            }

            else
            {
              v101 = 0xFFFFFFFFLL;
            }

            v102 = v27[8 * v101 + 1];
            goto LABEL_124;
          }
        }

        v103 = &v27[8 * v85];
        v104 = v93[1];
        *v103 = *v93;
        *(v103 + 1) = v104;
        v103[3] = v87 + v86 + *(v93 + 3);
        if (v88 == a6 && v84)
        {
          v103[3] = v27[8 * v84 + 4] + v27[8 * v84 + 3];
        }

        v105 = v85 - 1;
        if (v85 == 1)
        {
          break;
        }

        if (v88 != a6)
        {
          if (v85)
          {
            v107 = &v27[8 * v105];
            if (*v107 <= 0x28u && ((1 << *v107) & 0x10020000002) != 0)
            {
              v106 = v107[2] + v107[1];
              goto LABEL_111;
            }
          }
        }

        if (v88 != a6)
        {
          v106 = v27[8 * v105 + 1];
          goto LABEL_111;
        }

LABEL_112:
        ++v85;
LABEL_113:
        ++v89;
LABEL_117:
        if (v89 >= v81)
        {
          goto LABEL_145;
        }
      }

      v106 = v27[1];
LABEL_111:
      v103[1] = v106;
      goto LABEL_112;
    }

    v88 = 0;
    v86 = 0;
    v85 = 0;
LABEL_145:
    if (v88 < a6)
    {
      v113 = v88;
      v114 = a6 - v88;
      v115 = v20 + 32 * v113;
      while (1)
      {
        v116 = &v27[8 * v85];
        v117 = *(v115 + 16);
        *v116 = *v115;
        *(v116 + 1) = v117;
        v118 = *(v115 + 12) + v86;
        v116[3] = v118;
        if (v85 >= 3)
        {
          break;
        }

        if (v85)
        {
          v119 = v85 - 1;
          goto LABEL_151;
        }

LABEL_154:
        v115 += 32;
        ++v85;
        if (!--v114)
        {
          goto LABEL_155;
        }
      }

      v119 = v85 - 1;
      v116[1] = v27[8 * v119 + 2] + v27[8 * v119 + 1];
LABEL_151:
      v120 = &v27[8 * v119];
      if (*v120 == 29)
      {
        v121 = v120[3];
        if (v118 > v121)
        {
          v120[3] = v121 + 1;
        }
      }

      goto LABEL_154;
    }

LABEL_155:
    v122 = &v27[8 * v85 - 8];
    v27[4] = v122[4] + v122[3] - v27[3];
    v27[2] = v122[2] + v122[1] - v27[1];
    if (v76)
    {
      v123 = 0;
      LODWORD(v124) = -1;
      while (1)
      {
        v125 = &v27[8 * v123];
        if (*v125 == 51)
        {
          v126 = (v76 - v123 > 1) & (strcmp(v125[3], "R_CLASS") == 0);
          if (v126)
          {
            LODWORD(v124) = v123;
          }

          v123 += v126;
          goto LABEL_176;
        }

        if (*v125 == 57 && v124 != -1)
        {
          break;
        }

LABEL_176:
        if (++v123 >= v76)
        {
          goto LABEL_177;
        }
      }

      v128 = v123 - 1;
      do
      {
        v129 = v128;
        if (!v128)
        {
          break;
        }

        v130 = v27[8 * v128--];
      }

      while (v130 != 1);
      if (v124 >= v129)
      {
        if (!v124)
        {
LABEL_175:
          LODWORD(v124) = -1;
          goto LABEL_176;
        }
      }

      else
      {
        v131 = v124;
        v124 = v124 + 1;
        if (v124 < v129)
        {
          LODWORD(v124) = v129;
          v132 = &v27[8 * v131 + 8];
          v133 = ~v131 + v129;
          do
          {
            v135 = *(v132 - 16);
            v145 = *(v132 - 32);
            v134 = v145;
            v146 = v135;
            v136 = *(v132 + 16);
            *(v132 - 32) = *v132;
            *(v132 - 16) = v136;
            *v132 = v134;
            *(v132 + 16) = v135;
            *(v132 - 28) = *(v132 + 4);
            v132 += 32;
            --v133;
          }

          while (v133);
        }
      }

      v27[8 * (v124 - 1) + 3] = v27[8 * v124 + 3];
      goto LABEL_175;
    }

LABEL_177:
    v26 = (*(a1[6] + 160))(a2, v140, v141, 1, v76, v27, &v143 + 2);
    if ((v26 & 0x80000000) == 0)
    {
      v137 = v27[4] + v27[3];
      *(a1 + 26) = v27[2] + v27[1];
      *(a1 + 27) = v137;
      if (!v20)
      {
        goto LABEL_182;
      }

      goto LABEL_181;
    }
  }

  else
  {
    v26 = 2588942346;
  }

  log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v77, v78, v79, v80, v139);
  if (v20)
  {
    goto LABEL_181;
  }

LABEL_182:
  if (v25)
  {
    heap_Free(*(*a1 + 8), v25);
  }

  if (v27)
  {
    heap_Free(*(*a1 + 8), v27);
  }

  return v26;
}

uint64_t fe_nnws_adjustTokenRecordBND(uint64_t a1, unsigned int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  __s1 = 0;
  v47 = 0;
  result = (*(*(a7 + 48) + 176))(a5, a6, a4, 1, &v47, &v48);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a7 + 48) + 104))(a5, a6, 3, a4, &v49 + 2);
    if ((result & 0x80000000) == 0)
    {
      v15 = HIWORD(v49);
      if (HIWORD(v49))
      {
        v45 = 0;
        v42 = a2;
        v43 = 0;
        v44 = a2;
        v38 = (a1 + 48);
        v39 = a1 + 32;
        v40 = a1;
        __s = a3;
        while (1)
        {
          result = (*(*(a7 + 48) + 168))(a5, a6, v15, 0, 1, &v52, &v48 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v52 == 5)
          {
            break;
          }

          if (v52 != 6)
          {
            v33 = HIWORD(v49);
LABEL_54:
            result = (*(*(a7 + 48) + 120))(a5, a6, HIWORD(v49), &v49 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v33)
            {
              result = (*(*(a7 + 48) + 192))(a5, a6, v33);
            }

            goto LABEL_57;
          }

          v16 = v43;
          if (v43 < a2)
          {
            v17 = v43;
            v18 = (v39 + 56 * v43);
            do
            {
              v19 = *v18;
              v18 += 14;
              v20 = (1 << v19) & 0x2C;
              if (v19 <= 5 && v20 != 0)
              {
                v16 = v17;
                goto LABEL_39;
              }

              ++v17;
            }

            while (v44 != v17);
            v16 = v44;
          }

LABEL_39:
          v34 = a1 + 56 * v16;
          v35 = *(v34 + 24);
          v50 = *(v34 + 28);
          v51 = v35;
          v43 = v16 + 1;
          v36 = *(a7 + 48);
          if (v50 > v35)
          {
            result = (*(v36 + 160))(a5, a6, HIWORD(v49), 1, 1, &v51, &v49);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v49), 2, 1, &v50, &v49);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v33 = 0;
            goto LABEL_54;
          }

          result = (*(v36 + 120))(a5, a6, HIWORD(v49), &v49 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_57:
          v15 = HIWORD(v49);
          if (!HIWORD(v49))
          {
            return result;
          }
        }

        result = (*(*(a7 + 48) + 168))(a5, a6, HIWORD(v49), 1, 1, &v51, &v48 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 168))(a5, a6, HIWORD(v49), 2, 1, &v50, &v48 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 176))(a5, a6, HIWORD(v49), 4, &__s1, &v48 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = v50;
        v23 = v51;
        v24 = v47;
        v25 = *(v47 + 16);
        if (v50 < v25 + v51)
        {
          v51 += v45;
          v26 = v44;
          if (a2)
          {
            v27 = 0;
            v28 = __s1;
            v29 = v38;
            while (1)
            {
              if (*(v29 - 2) == 1 && ((v30 = strcmp(v28, "prompt"), v26 = v44, v30) || *(v29 - 4) == 5) && *v29 != 1)
              {
                v31 = *(v29 - 9);
              }

              else
              {
                v31 = *(v29 - 9);
                if (v31 >= v23 && *(v29 - 8) + v31 < v22)
                {
                  ++v45;
                  goto LABEL_36;
                }
              }

              v32 = *(v29 - 8) + v31;
              if (v32 >= v22)
              {
                if (*v29 != 1)
                {
LABEL_46:
                  v22 += v45;
                  v50 = v22;
                  a2 = v42;
                  goto LABEL_47;
                }

                v22 += ++v45;
                v50 = v22;
              }

              else if (v32 == v25 + *(v24 + 12))
              {
                goto LABEL_46;
              }

LABEL_36:
              ++v27;
              v29 += 14;
              if (v26 == v27)
              {
                goto LABEL_48;
              }
            }
          }

          LODWORD(v27) = 0;
LABEL_47:
          if (v27 == a2)
          {
LABEL_48:
            v22 += v45;
            v50 = v22;
          }
        }

        v37 = strlen(__s);
        if (v22 > v37)
        {
          v50 = v37;
        }

        result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v49), 1, 1, &v51, &v49);
        a1 = v40;
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v49), 2, 1, &v50, &v49);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v33 = 0;
        a2 = v42;
        goto LABEL_54;
      }
    }
  }

  return result;
}

uint64_t fe_nnws_adjust_ENP_labels(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (result)
  {
    v6 = result;
    v22 = a3 + 1;
    v23 = a3 + 3;
    v24 = result;
    v7 = -result;
    v8 = *a4;
    v9 = (a2 + 36);
    v10 = 1;
    do
    {
      v11 = *(v9 - 9);
      if (!strcmp(v11, "ENG") || (result = strcmp(v11, "NUM"), !result))
      {
        *v8 = *a3;
        result = fe_hlp_adjustBMES_basedSingleLabel(v6, v10 - 1, a3, a4);
        goto LABEL_14;
      }

      if (v10 != 1 && !*(v9 - 13) && *(v9 - 5) == 1 && (*v11 != 47 || *(v11 + 1)))
      {
        *v8 = a3[3];
        result = fe_hlp_adjustBMES_basedSingleLabel(v6, v10 - 1, a3, a4);
        v12 = *(v9 - 15);
        if (v12 == 3)
        {
          *(v9 - 15) = 1;
          goto LABEL_38;
        }

        if (v12 == 2)
        {
          *(v9 - 15) = 0;
LABEL_38:
          *(v9 - 1) = 2;
          *(v9 - 4) = *(v9 - 18) + 1;
          goto LABEL_14;
        }

        goto LABEL_14;
      }

      if (!*v9)
      {
        v13 = *(v9 - 1);
        if ((v13 - 2) >= 2)
        {
          if (v13 != 1)
          {
            goto LABEL_14;
          }

          v18 = **v8;
          v19 = a3;
          if (v18 == 69)
          {
LABEL_30:
            *v8 = *v19;
          }

          else if (v18 == 77)
          {
            v19 = v22;
            goto LABEL_30;
          }

          if (v10 != 1)
          {
            v20 = **(v8 - 1);
            if (v20 == 77)
            {
              v21 = *v23;
              goto LABEL_40;
            }

            if (v20 == 66)
            {
              v21 = *a3;
LABEL_40:
              *(v8 - 1) = v21;
              goto LABEL_14;
            }
          }

          goto LABEL_14;
        }
      }

      v14 = **v8;
      v15 = a3;
      if (v14 != 66)
      {
        if (v14 != 77)
        {
          goto LABEL_22;
        }

        v15 = v23;
      }

      *v8 = *v15;
LABEL_22:
      if (v10 < v24)
      {
        v16 = *v8[1];
        if (v16 == 69)
        {
          v17 = *a3;
          goto LABEL_36;
        }

        if (v16 == 77)
        {
          v17 = *v22;
LABEL_36:
          v8[1] = v17;
        }
      }

LABEL_14:
      ++v10;
      ++v8;
      v9 += 14;
    }

    while (v7 + v10 != 1);
  }

  return result;
}

uint64_t fe_hlp_adjustBMES_basedSingleLabel(uint64_t result, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = **(*a4 + 8 * a2);
  if (v5 > 0x4C)
  {
    if (v5 != 77)
    {
      if (v5 != 83)
      {
        return result;
      }

      if (a2)
      {
        v6 = a2 - 1;
        v9 = **(v4 + 8 * (a2 - 1));
        v10 = a3;
        if (v9 != 66)
        {
          if (v9 != 77)
          {
            goto LABEL_27;
          }

          v10 = a3 + 3;
        }

        v11 = *v10;
        goto LABEL_26;
      }

LABEL_27:
      if (a2 + 1 >= result)
      {
        return result;
      }

      v18 = (v4 + 8 * (a2 + 1));
      v19 = **v18;
      if (v19 != 69)
      {
        if (v19 != 77)
        {
          return result;
        }

        ++a3;
      }

      goto LABEL_40;
    }

    if (a2)
    {
      v12 = a2 - 1;
      v16 = **(v4 + 8 * (a2 - 1));
      if (v16 == 69)
      {
        v17 = 2;
      }

      else
      {
        if (v16 != 83)
        {
          goto LABEL_34;
        }

        v17 = 1;
      }

      v15 = a3[v17];
      goto LABEL_33;
    }
  }

  else
  {
    if (v5 != 66)
    {
      if (v5 != 69)
      {
        return result;
      }

      if (a2)
      {
        v6 = a2 - 1;
        v7 = **(v4 + 8 * (a2 - 1));
        if (v7 == 69)
        {
          v8 = 2;
        }

        else
        {
          if (v7 != 83)
          {
            goto LABEL_27;
          }

          v8 = 1;
        }

        v11 = a3[v8];
LABEL_26:
        *(v4 + 8 * v6) = v11;
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (a2)
    {
      v12 = a2 - 1;
      v13 = **(v4 + 8 * (a2 - 1));
      v14 = a3;
      if (v13 == 66)
      {
LABEL_19:
        v15 = *v14;
LABEL_33:
        *(v4 + 8 * v12) = v15;
        goto LABEL_34;
      }

      if (v13 == 77)
      {
        v14 = a3 + 3;
        goto LABEL_19;
      }
    }
  }

LABEL_34:
  if (a2 + 1 >= result)
  {
    return result;
  }

  v18 = (v4 + 8 * (a2 + 1));
  v20 = **v18;
  if (v20 == 66)
  {
    v21 = 16;
  }

  else
  {
    if (v20 != 83)
    {
      return result;
    }

    v21 = 24;
  }

  a3 = (a3 + v21);
LABEL_40:
  *v18 = *a3;
  return result;
}

uint64_t fe_nnws_setFeature(uint64_t a1, const char **a2, unsigned int a3, int a4, uint64_t *a5, const char *a6)
{
  if (a3 < 2)
  {
    return 0;
  }

  v20 = v6;
  v11 = nnws_g_featureNames[a4];
  v12 = (a3 - 1);
  while (strcmp(*a2, v11))
  {
    ++a5;
    ++a2;
    if (!--v12)
    {
      return 0;
    }
  }

  if (!*a6)
  {
    result = 0;
    **a5 = 61;
    return result;
  }

  if (strlen(a6) <= 0x40)
  {
    v15 = *a5;
    goto LABEL_13;
  }

  v14 = strlen(a6);
  v15 = heap_Realloc(*(a1 + 8), *a5, v14 + 1);
  if (v15)
  {
    *a5 = v15;
LABEL_13:
    strcpy(v15, a6);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_NNWS", 37000, 0, v16, v17, v18, v19, v20);
  return 2588942346;
}

__int128 **reorder_pMrk(__int128 **result, unsigned int a2, int a3)
{
  if (a2)
  {
    v3 = *result;
    v4 = 1;
    do
    {
      if (v4 < a2 && *v3 == a3 && *(v3 + 11) == *(v3 + 3))
      {
        v5 = *v3;
        v7 = v3[1];
        v6 = v3[3];
        *v3 = v3[2];
        v3[1] = v6;
        v3[2] = v5;
        v3[3] = v7;
        *(v3 + 1) = *(v3 + 9);
      }

      ++v4;
      v3 += 2;
    }

    while (v4 - a2 != 1);
  }

  return result;
}

uint64_t fe_initlingdb_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  LowerCasedMainLng3 = 2307923975;
  v30 = 0;
  v31 = 0;
  if (!a5)
  {
    return LowerCasedMainLng3;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v35);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(*(v35 + 48), "LINGDB", &v33);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(*(v35 + 48), "SYNTHSTREAM", &v34);
  v13 = *(v35 + 48);
  if ((Object & 0x80000000) != 0)
  {
    v28 = "LINGDB";
LABEL_20:
    objc_ReleaseObject(v13, v28);
    return Object;
  }

  v14 = objc_GetObject(v13, "FE_DCTLKP", &v32);
  if ((v14 & 0x80000000) != 0)
  {
    Object = v14;
    objc_ReleaseObject(*(v35 + 48), "LINGDB");
    v13 = *(v35 + 48);
    v28 = "SYNTHSTREAM";
    goto LABEL_20;
  }

  v15 = heap_Calloc(*(v35 + 8), 1, 976);
  if (!v15)
  {
    log_OutPublic(*(v35 + 32), "FE_INITLINGDB", 30000, 0, v16, v17, v18, v19, v30);
    objc_ReleaseObject(*(v35 + 48), "LINGDB");
    objc_ReleaseObject(*(v35 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(v35 + 48), "FE_DCTLKP");
    return 2307923978;
  }

  v20 = v15;
  *a5 = v15;
  *(a5 + 8) = 62336;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v21 = v35;
  *v15 = v35;
  *(v15 + 8) = a1;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v22 = *(v33 + 8);
  *(v15 + 80) = *(v34 + 8);
  v23 = v32;
  *(v15 + 64) = *(v32 + 8);
  *(v15 + 72) = v22;
  *(v15 + 48) = *(v23 + 16);
  v24 = objc_GetObject(*(v21 + 48), "CLMOBJECT", &v31);
  if ((v24 & 0x80000000) != 0 || (v25 = v31, *(v20 + 968) = *(v31 + 8), *(v20 + 952) = *(v25 + 16), v24 = (*(*(v20 + 64) + 88))(*(v20 + 48), *(v20 + 56), &v30 + 4, &v30), (v24 & 0x80000000) != 0))
  {
    LowerCasedMainLng3 = v24;
LABEL_22:
    fe_initlingdb_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return LowerCasedMainLng3;
  }

  v27 = v30 == 1 && HIDWORD(v30) == 1;
  *(v20 + 944) = v27;
  LowerCasedMainLng3 = hlp_GetLowerCasedMainLng3(*v20, (v20 + 948));
  if ((LowerCasedMainLng3 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  return LowerCasedMainLng3;
}

uint64_t hlp_GetLowerCasedMainLng3(uint64_t a1, char *a2)
{
  __s = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v4 = 2307923968;
  if (__s && strlen(__s) == 3)
  {
    strcpy(a2, __s);
    if (*a2)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        a2[v5] = ssft_tolower(a2[v5]);
        v5 = ++v6;
      }

      while (strlen(a2) > v6);
    }

    return Str;
  }

  return v4;
}

uint64_t fe_initlingdb_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62336, 976);
  if ((v3 & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v4 = v3;
  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*a1 + 48), "CLMOBJECT");
    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_initlingdb_ObjReopen(uint64_t a1, int a2)
{
  v6 = 0;
  result = safeh_HandleCheck(a1, a2, 62336, 976);
  if ((result & 0x80000000) != 0)
  {
    return 2307923976;
  }

  if (a1)
  {
    result = (*(*(a1 + 64) + 88))(*(a1 + 48), *(a1 + 56), &v6 + 4, &v6);
    if ((result & 0x80000000) == 0)
    {
      v5 = v6 == 1 && HIDWORD(v6) == 1;
      *(a1 + 944) = v5;
      return hlp_GetLowerCasedMainLng3(*a1, (a1 + 948));
    }
  }

  return result;
}

uint64_t fe_initlingdb_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  synstrmaux_InitStreamOpener(a1 + 88, *(*a1 + 32), "FE_INITLINGDB");
  synstrmaux_RegisterInStream((a1 + 88), "text/plain;charset=utf-8", 0, a1 + 912);
  synstrmaux_RegisterInStream((a1 + 88), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 928);
  v7 = synstrmaux_OpenStreams((a1 + 88), *(a1 + 80), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 88), *(a1 + 80));
  }

  return v7;
}

uint64_t fe_initlingdb_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  memset(v218, 0, 12);
  v9 = 2307923978;
  v216 = 0;
  v217 = 0;
  v215 = 0;
  v213 = 0;
  v214 = 0;
  v210 = 0;
  v208 = 0;
  v207 = 0;
  *&__c[3] = 0;
  v206 = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v211 = 0;
  v212 = 0;
  v209 = 0;
  *a5 = 1;
  v10 = (*(a1[10] + 144))(a1[114], a1[115], &v218[1], v218);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[10] + 144))(a1[116], a1[117], v218 + 4, v218);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[9] + 56))(a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[9] + 104))(a3, a4, 1, 0, &v211 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (!LODWORD(v218[1]))
  {
    v22 = v218[0];
    if (v218[0])
    {
      if (HIDWORD(v218[0]))
      {
        v10 = (*(a1[10] + 88))(a1[116], a1[117], &v214, &v212);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v23 = v212;
        if ((v212 & 0x1FFFE0) != 0 && (v212 >> 5))
        {
          v24 = 0;
          v25 = 0;
LABEL_23:
          v26 = &v214[32 * v24++];
          do
          {
            v28 = *v26;
            v26 += 8;
            v27 = v28;
            v29 = (1 << v28) & 0x1000001003070000;
            v30 = v28 > 0x3C || v29 == 0;
            if (v30 && v27 != 0x4000)
            {
              v25 = 1;
              if (v24 != (v212 >> 5))
              {
                goto LABEL_23;
              }

              goto LABEL_77;
            }

            ++v24;
          }

          while (v24 - (v212 >> 5) != 1);
          if ((v25 & 1) == 0)
          {
            goto LABEL_79;
          }

LABEL_77:
          v53 = (*(a1[9] + 160))(a3, a4, HIWORD(v211), 1, (v212 >> 5), v214, &v211);
          if ((v53 & 0x80000000) != 0)
          {
            v9 = v53;
            log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30002, 0, v54, v55, v56, v57, v185);
            return v9;
          }

          v23 = v212;
        }

        else
        {
LABEL_79:
          *a5 = 1;
        }

        v10 = (*(a1[10] + 96))(a1[116], a1[117], v23);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v22 = v218[0];
      }

      if (v22)
      {
        *a5 = 1;
        v208 = 1;
      }
    }

    else
    {
      *__s2 = 0;
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", __s2) & 0x80000000) != 0 || !*__s2 || !**__s2)
      {
        *a5 = 0;
      }
    }

    return (*(a1[9] + 160))(a3, a4, HIWORD(v211), 3, 1, &v208, &v211);
  }

  v10 = (*(a1[9] + 160))(a3, a4, HIWORD(v211), 3, 1, &v208, &v211);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[10] + 88))(a1[114], a1[115], &v216, &v215);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = hlp_CopyString(*a1, &v217, v216, 0);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  v12 = a1[10];
  if (v215 == 1)
  {
    v13 = (*(v12 + 96))(a1[114], a1[115], 1);
    if ((v13 & 0x80000000) != 0 || (v13 = (*(a1[10] + 88))(a1[116], a1[117], &v214, &v212), (v13 & 0x80000000) != 0))
    {
      v9 = v13;
LABEL_104:
      v20 = 0;
LABEL_105:
      v21 = 0;
      goto LABEL_106;
    }

    if (!HIDWORD(v218[0]) || (v210 = v212 >> 5, v14 = (*(a1[9] + 160))(a3, a4, HIWORD(v211), 1, v210, v214, &v211), (v14 & 0x80000000) == 0))
    {
      v19 = (*(a1[10] + 96))(a1[116], a1[117], v212);
      v20 = 0;
      v21 = 0;
      v9 = v19 & (v19 >> 31);
      goto LABEL_106;
    }

    v9 = v14;
    v59 = *(*a1 + 32);
    v60 = 30002;
LABEL_103:
    log_OutPublic(v59, "FE_INITLINGDB", v60, 0, v15, v16, v17, v18, v185);
    goto LABEL_104;
  }

  v11 = (*(v12 + 88))(a1[116], a1[117], &v214, &v212);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_73:
    v20 = 0;
    goto LABEL_74;
  }

  v31 = v212;
  v32 = v212 >> 5;
  v210 = v212 >> 5;
  v33 = heap_Alloc(*(*a1 + 8), v212);
  v213 = v33;
  if (!v33)
  {
LABEL_87:
    v59 = *(*a1 + 32);
    v60 = 30000;
    goto LABEL_103;
  }

  memcpy(v33, v214, v212);
  if ((v31 >> 5))
  {
    v34 = 0;
    v35 = 0;
    v36 = 0xFFFF;
    v37 = "normal";
    while (1)
    {
      v38 = v35;
      v39 = &v213[8 * v35];
      v40 = *v39;
      if (*v39 == 34)
      {
        v41 = v35;
      }

      else
      {
        v41 = v36;
      }

      if (v40 == 100)
      {
        if (*(v39 + 3))
        {
          if (v36 == 0xFFFF)
          {
            if (v32 <= (v35 + 1))
            {
              v42 = (v35 + 1);
            }

            else
            {
              v42 = v32;
            }

            v41 = v35;
            while (++v41 < v32)
            {
              if (v213[8 * v41] == 34)
              {
                goto LABEL_57;
              }
            }

            v41 = v42;
          }

LABEL_57:
          v43 = &v213[8 * v41];
          if (*(v43 + 3) == *(v39 + 3))
          {
            if ((hlp_ValidatePhoneticTranscription(a1, v37, v43[3]) & 0x80000000) != 0)
            {
              __s1 = v37;
              v44 = strlen(v217);
              v45 = v213;
              v46 = &v213[8 * v38];
              v47 = *(v46 + 2);
              if (v44 >= v47)
              {
                if (v34 >= v41)
                {
                  v50 = v41;
                }

                else
                {
                  v50 = v34;
                }

                if (v34 <= v41)
                {
                  v51 = v41;
                }

                else
                {
                  v51 = v34;
                }

                memcpy(&v217[*(v46 + 3) - v213[3]], v46[3], v47);
                v52 = v210;
                memmove((v45 + 32 * v51), (v45 + 32 * v51 + 32), 32 * (v210 + ~v51));
                memmove((v45 + 32 * v50), (v45 + 32 * v50 + 32), 32 * (~v50 + (v52 - 1)));
                v32 = v52 - 2;
                v210 = v52 - 2;
                v49 = heap_Realloc(*(*a1 + 8), v45, 32 * (v52 - 2));
                if (!v49)
                {
                  goto LABEL_87;
                }
              }

              else
              {
                v48 = v210;
                memmove(v46, v46 + 4, 32 * (v210 + ~v34));
                v32 = v48 - 1;
                v210 = v48 - 1;
                v49 = heap_Realloc(*(*a1 + 8), v45, 32 * (v48 - 1));
                if (!v49)
                {
                  goto LABEL_87;
                }
              }

              v37 = __s1;
              v35 = 0;
              v213 = v49;
              v41 = 0xFFFF;
            }

            else
            {
              v41 = 0xFFFF;
              v32 = v210;
            }
          }
        }
      }

      else if (v40 == 36)
      {
        v37 = *(v39 + 3);
      }

      v34 = ++v35;
      v36 = v41;
      if (v35 == v32)
      {
        goto LABEL_89;
      }
    }
  }

  v32 = 0;
  v37 = "normal";
LABEL_89:
  __s1a = v37;
  v61 = v217;
  v62 = strlen(v217);
  v67 = (*(a1[9] + 160))(a3, a4, HIWORD(v211), 0, (v62 + 1), v217, &v211);
  v68 = *(*a1 + 32);
  if ((v67 & 0x80000000) != 0)
  {
    log_OutPublic(v68, "FE_INITLINGDB", 30002, 0, v63, v64, v65, v66, v185);
    v20 = 0;
    v21 = 0;
    v9 = v67;
    goto LABEL_106;
  }

  log_OutText(v68, "FE_INITLINGDB", 5, 0, "Initializing LINGDB with %s", v64, v65, v66, v61);
  v69 = heap_Alloc(*(*a1 + 8), 4 * v32);
  v20 = v69;
  if (!v69)
  {
    log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0, v70, v71, v72, v73, v186);
    goto LABEL_105;
  }

  v74 = v213;
  if (v32)
  {
    v75 = v213 + 4;
    v76 = v32;
    do
    {
      if (*(v75 - 4) == 1)
      {
        *v75 = 0;
      }

      v75 += 8;
      --v76;
    }

    while (v76);
    v77 = (v74 + 12);
    if (v32)
    {
      v78 = 0;
      v79 = (v74 + 12);
      while (1)
      {
        v80 = *v79;
        v79 += 8;
        if (v80 != *(v74 + 12))
        {
          break;
        }

        if (v32 == ++v78)
        {
          LOWORD(v78) = v32;
          break;
        }
      }
    }

    else
    {
      LOWORD(v78) = 0;
    }
  }

  else
  {
    LOWORD(v78) = 0;
    v77 = v213 + 3;
  }

  v81 = v78;
  v82 = v74 + 32 * v78;
  if (v78 == v32)
  {
    marker_sort(v82, v32 - v78);
  }

  else
  {
    v83 = 0;
    v84 = (v32 - v81);
    v85 = (v82 + 4);
    do
    {
      *(v69 + 4 * v83) = *v85;
      *v85 = v83;
      v85 += 8;
      ++v83;
    }

    while (v84 != v83);
    marker_sort(v82, v32 - v81);
    v86 = (v82 + 4);
    do
    {
      *v86 = *(v20 + 4 * *v86);
      v86 += 8;
      --v84;
    }

    while (v84);
  }

  v11 = (*(a1[8] + 56))(a1[6], a1[7], a3, a4, v74, v32);
  if ((v11 & 0x80000000) != 0 || (v11 = (*(a1[9] + 104))(a3, a4, 3, HIWORD(v211), &v209), (v11 & 0x80000000) != 0) || (v199 = *v77, v11 = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "normal", &__c[3], &__c[1], __c), (v11 & 0x80000000) != 0))
  {
LABEL_74:
    v21 = 0;
    v9 = v11;
    goto LABEL_106;
  }

  if (*&__c[1])
  {
    v88 = strchr(**&__c[3], __c[0]);
    if (v88)
    {
      *v88 = 0;
      v89 = **&__c[3];
    }

    hlp_CreatePauseDurParam(*a1, "normal");
    v90 = **&__c[3];
  }

  else
  {
    v90 = "normal";
  }

  v192 = v20;
  v91 = __s1a;
  if (v32)
  {
    v92 = v74;
    v93 = 0;
    v198 = 0;
    v94 = 0;
    v197 = 0;
    v95 = 0;
    v96 = 0;
    v97 = v199;
    __s = "normal";
    while (1)
    {
      while (1)
      {
        v98 = v96;
        v99 = v92 + 32 * v96;
        if (*v99 > 0x24u || ((1 << *v99) & 0x1400200000) == 0)
        {
          goto LABEL_273;
        }

        v101 = v96 + 1;
        if ((v96 + 1) < v32 && (v102 = *(v99 + 12), v103 = (v92 + 32 * (v96 + 1)), v103[3] == v102))
        {
          v87 = 0;
          v104 = 0;
          v105 = v96;
          v106 = v96 + 1;
          while (1)
          {
            v96 = v106;
            v107 = *v103;
            switch(v107)
            {
              case 36:
                v87 = v106;
                break;
              case 34:
                v96 = v105;
                goto LABEL_153;
              case 21:
                v104 = v106;
                break;
            }

            v106 = (v106 + 1);
            if ((v96 + 1) >= v32)
            {
              break;
            }

            v103 = (v92 + 32 * v106);
            v105 = v96;
            if (v103[3] != v102)
            {
              goto LABEL_153;
            }
          }

          v96 = v32 - 1;
        }

        else
        {
          v87 = 0;
          v104 = 0;
        }

LABEL_153:
        if (!v93 || *v99 != 36 || v104)
        {
          break;
        }

        v95 = *(v99 + 24);
        v93 = 1;
        v96 = v101;
        if (v101 >= v32)
        {
          goto LABEL_276;
        }
      }

      v109 = *(v99 + 12);
      v108 = (v99 + 12);
      v110 = v109 - v199;
      v196 = v98;
      if (v109 != v199)
      {
        v190 = v87;
        v191 = v95;
        v188 = v97;
        v187 = v90;
        v194 = v94;
        v189 = v92;
        __s1b = v91;
        v111 = v217;
        v112 = strlen(v217);
        while (v111[v110] == 95 || utf8_BelongsToSet(0, v111, v110, v112))
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(v111, v110);
          *v108 += NextUtf8Offset - v110;
          v110 = NextUtf8Offset;
        }

        v95 = v191;
        v20 = v192;
        v91 = __s1b;
        v98 = v196;
        v92 = v189;
        LOWORD(v87) = v190;
        if (v188 != *v108)
        {
          log_OutText(*(*a1 + 32), "FE_INITLINGDB", 5, 0, "Creating USER TN %s token at pos  %u,%u in lingdb", v113, v114, v190, v187);
          inserted = hlp_InsertUserTNToken(a1, a3, a4, HIWORD(v211), &v209, (v188 - v199), LOWORD(v213[8 * v196 + 3]) - v199, v187, v194, __s1b, v217, v198, v213, v210);
          if ((inserted & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          v92 = v213;
          v91 = __s1b;
          v98 = v196;
          LOWORD(v87) = v190;
          v95 = v191;
        }
      }

      v117 = v92 + 32 * v98;
      v118 = *v117;
      if (*v117 == 36)
      {
        v91 = *(v117 + 24);
      }

      else if (v118 == 21)
      {
        __s = *(v117 + 24);
      }

      if (v87)
      {
        v91 = *(v92 + 32 * v87 + 24);
      }

      if (v104)
      {
        __s = *(v92 + 32 * v104 + 24);
      }

      if (v118 == 34)
      {
        v119 = v95;
        v120 = strlen(*(v117 + 24)) + 1;
        v94 = heap_Realloc(*(*a1 + 8), v197, v120);
        if (v94)
        {
          v124 = 0;
          v125 = 0;
          v92 = v213;
          v126 = v196;
          v127 = &v213[8 * v196];
          v95 = v119;
          while (1)
          {
            v128 = *(*(v127 + 3) + v125);
            if (v128 != 32)
            {
              if (!*(*(v127 + 3) + v125))
              {
                v198 = 0;
                *(v94 + v124) = 0;
                v93 = 1;
                v90 = "phon";
                v197 = v94;
                goto LABEL_272;
              }

              v129 = v124++;
              *(v94 + v129) = v128;
            }

            ++v125;
          }
        }

        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0, v121, v122, v123, v87, v186);
        v21 = v197;
        goto LABEL_106;
      }

      if (v118 == 36 || v95 == 0)
      {
        v131 = v91;
      }

      else
      {
        v131 = v95;
      }

      v132 = strlen(__s);
      __s1c = v131;
      v133 = strlen(v131);
      if (v133 >= 6)
      {
        v134 = v133;
      }

      else
      {
        v134 = 6;
      }

      v135 = heap_Realloc(*(*a1 + 8), v207, (v132 + v134 + 2));
      if (!v135)
      {
        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0, v136, v137, v138, v139, v186);
        goto LABEL_287;
      }

      v140 = v135;
      v207 = v135;
      if (strcmp(__s, "normal") || strcmp(v131, "normal"))
      {
        break;
      }

      v198 = 0;
      strcpy(v140, "normal");
LABEL_265:
      *&__c[1] = -1;
      BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", v140, &__c[3], &__c[1], __c);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_295;
      }

      if (*&__c[1])
      {
        v168 = strchr(**&__c[3], __c[0]);
        if (v168)
        {
          *v168 = 0;
          v169 = **&__c[3];
        }

        hlp_CreatePauseDurParam(*a1, v140);
        v170 = *&__c[3];
      }

      else
      {
        v170 = &v207;
      }

      v20 = v192;
      v95 = 0;
      v94 = 0;
      v93 = 0;
      v90 = *v170;
      v92 = v213;
      v91 = __s1c;
      v126 = v196;
LABEL_272:
      v97 = *(v92 + 32 * v126 + 12);
      v32 = v210;
LABEL_273:
      if (++v96 >= v32)
      {
        goto LABEL_276;
      }
    }

    *v140 = 0;
    if (!strcmp(__s, "normal"))
    {
      v144 = 0;
      goto LABEL_237;
    }

    v141 = *__s;
    if (*__s)
    {
      v142 = 0;
      do
      {
        v140[v142++] = ssft_tolower(v141);
        v143 = v142;
        v141 = __s[v142];
      }

      while (v141);
    }

    else
    {
      v143 = 0;
    }

    v140[v143] = 0;
    if (*(a1 + 236) == 1 && strcmp(v140, "normal") && *v140)
    {
      *&__c[1] = -1;
      BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", v140, &__c[3], &__c[1], __c);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_295;
      }

      if (*&__c[1])
      {
        v146 = **&__c[3];
        v147 = strchr(**&__c[3], __c[0]);
        if (v147)
        {
          *v147 = 0;
          v146 = **&__c[3];
        }

        v148 = strlen(__s1c);
        BestTNType = hlp_CopyString(*a1, &v207, v146, v148 + 1);
        if ((BestTNType & 0x80000000) != 0)
        {
          goto LABEL_295;
        }
      }
    }

    *&__c[1] = -1;
    BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "esctn", &__c[3], &__c[1], __c);
    if ((BestTNType & 0x80000000) != 0)
    {
LABEL_295:
      v9 = BestTNType;
      v20 = v192;
      goto LABEL_287;
    }

    if (*&__c[1])
    {
      v149 = v207;
      v150 = strlen(__s1c);
      BestTNType = hlp_FindBestTNType(*a1, **&__c[3], __c[0], v207, &v206, v150 + 1);
      if ((BestTNType & 0x80000000) == 0)
      {
        v151 = v206;
        if (v206 != v149)
        {
          if (hlp_LogUnsupportedTNType(*a1, v149))
          {
            log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30005, "%s%s%s%s", v152, v153, v154, v155, "OriginalTNType");
          }

          heap_Free(*(*a1 + 8), v149);
          v207 = v151;
        }

        goto LABEL_232;
      }

      if ((BestTNType & 0x1FFF) != 0)
      {
        goto LABEL_295;
      }
    }

    else
    {
      v149 = v207;
      if (!strcmp(v207, "normal") || !strcmp(v149, "sms") || !strcmp(v149, "address") || !strcmp(v149, "spell") || !strcmp(v149, "NOR") || !strcmp(v149, "SMS") || !strcmp(v149, "ADR"))
      {
LABEL_232:
        v140 = v207;
        v161 = strlen(v207);
        if (!strcmp(__s1c, "normal") || !strcmp(v140, "normal") || !*v140)
        {
          v144 = v161;
        }

        else
        {
          v144 = v161 + 1;
          v140[v161] = 95;
        }

LABEL_237:
        if (!strcmp(__s1c, "normal") || !strcmp(v140, "normal"))
        {
          v198 = 0;
          goto LABEL_262;
        }

        if (strlen(__s1c) == 7 && strstr(__s1c, "_lid"))
        {
          __s1c[3] = 0;
          v198 = 1;
        }

        else
        {
          v198 = 0;
        }

        if (strlen(__s1c) == 3)
        {
          for (i = 0; i != 3; ++i)
          {
            __s2[i] = ssft_tolower(__s1c[i]);
          }

          __s2[3] = 0;
          *&__c[1] = -1;
          BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "esclang", &__c[3], &__c[1], __c);
          if ((BestTNType & 0x80000000) != 0)
          {
            goto LABEL_295;
          }

          if (*&__c[1])
          {
            v163 = strstr(**&__c[3], __s2);
            v140 = v207;
            if (v163)
            {
              v164 = *__s1c;
              if (*__s1c)
              {
                v165 = 0;
                do
                {
                  v140[v144++] = ssft_tolower(v164);
                  v164 = __s1c[++v165];
                }

                while (v164);
              }

              goto LABEL_262;
            }

            goto LABEL_256;
          }
        }

        else if (!strcmp(__s1c, "latin"))
        {
          v166 = *__s1c;
          v140 = v207;
          if (*__s1c)
          {
            v167 = 0;
            do
            {
              v140[v144++] = ssft_tolower(v166);
              v166 = __s1c[++v167];
            }

            while (v166);
          }

          goto LABEL_262;
        }

        v140 = v207;
LABEL_256:
        if (*v140)
        {
          v140[v144 - 1] = 0;
        }

        else
        {
          strcpy(v140, "normal");
        }

LABEL_262:
        if (strncmp(v140, "normal", 6uLL) && *v140)
        {
          v140[v144] = 0;
          v140 = v207;
        }

        goto LABEL_265;
      }
    }

    if (hlp_LogUnsupportedTNType(*a1, v149))
    {
      log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30004, "%s%s", v156, v157, v158, v159, "TNType");
    }

    if (!strcmp(__s1c, "normal"))
    {
      v160 = strlen(__s1c);
      BestTNType = hlp_CopyString(*a1, &v207, "normal", v160 + 1);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_295;
      }
    }

    else
    {
      *v149 = 0;
    }

    goto LABEL_232;
  }

  v197 = 0;
  v94 = 0;
  v198 = 0;
  v97 = v199;
LABEL_276:
  v195 = v94;
  v171 = v90;
  v172 = v97;
  log_OutText(*(*a1 + 32), "FE_INITLINGDB", 5, 0, "Creating USER TN %s token in lingdb", v90, v97, v87, v90);
  v173 = strlen(v217);
  inserted = hlp_InsertUserTNToken(a1, a3, a4, HIWORD(v211), &v209, (v172 - v199), v173, v171, v195, v91, v217, v198, v213, v210);
  if ((inserted & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v174 = v210;
  v175 = v213;
  if (!v210)
  {
LABEL_281:
    v179 = &v213[8 * v210];
    LODWORD(v177) = v210;
LABEL_282:
    marker_sort(v179, v210 - v177);
    goto LABEL_283;
  }

  v176 = 0;
  v177 = 0;
  v178 = v210;
  while (1)
  {
    v179 = &v213[v176];
    if (v213[v176 + 3] != v199)
    {
      break;
    }

    ++v177;
    --v178;
    v176 += 8;
    if (8 * v210 == v176)
    {
      goto LABEL_281;
    }
  }

  if (v210 == v177)
  {
    v20 = v192;
    goto LABEL_282;
  }

  v180 = 0;
  v181 = 0;
  v182 = (v179 + 4);
  v20 = v192;
  do
  {
    v183 = v175 + v180 + v176 * 4;
    *(v192 + 4 * v181) = *(v183 + 4);
    *(v183 + 4) = v181++;
    v180 += 32;
  }

  while (v178 != v181);
  marker_sort(v179, v174 - v177);
  v184 = v178;
  do
  {
    *v182 = *(v192 + 4 * *v182);
    v182 += 8;
    --v184;
  }

  while (v184);
LABEL_283:
  inserted = hlp_ReplacePauseZeroWithNluBndNo_And_WriteMarkersToLingDB(*a1, a1[9], a3, a4, HIWORD(v211), &v213, &v210);
  if ((inserted & 0x80000000) == 0)
  {
    inserted = (*(a1[10] + 96))(a1[114], a1[115], v215);
    if ((inserted & 0x80000000) == 0)
    {
      inserted = (*(a1[10] + 96))(a1[116], a1[117], v212);
    }
  }

LABEL_286:
  v9 = inserted;
LABEL_287:
  v21 = v197;
LABEL_106:
  if (v207)
  {
    heap_Free(*(*a1 + 8), v207);
    v207 = 0;
  }

  if (v21)
  {
    heap_Free(*(*a1 + 8), v21);
  }

  if (v213)
  {
    heap_Free(*(*a1 + 8), v213);
  }

  if (v217)
  {
    heap_Free(*(*a1 + 8), v217);
  }

  if (v20)
  {
    heap_Free(*(*a1 + 8), v20);
  }

  return v9;
}

uint64_t hlp_CopyString(uint64_t a1, uint64_t *a2, char *__s, int a4)
{
  if (__s)
  {
    v8 = strlen(__s) + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = heap_Realloc(*(a1 + 8), *a2, (v8 + a4));
  if (v9)
  {
    if (__s)
    {
      v9 = strcpy(v9, __s);
    }

    else
    {
      *v9 = 0;
    }

    v14 = 0;
    *a2 = v9;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_INITLINGDB", 30000, 0, v10, v11, v12, v13, v16);
    return 2307923978;
  }

  return v14;
}

uint64_t hlp_ValidatePhoneticTranscription(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_25;
  }

  hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(a3, v20, v18);
  hlp_GetLowerCasedLng3FromLangTag(a1, a2, __s);
  if (strlen(__s) != 3)
  {
    v3 = 0;
    goto LABEL_25;
  }

  v6 = *(a1 + 968);
  if (!v6 || !(*(v6 + 56))(*(a1 + 952), *(a1 + 960)))
  {
    if (!strcmp(__s, (a1 + 948)))
    {
      v3 = 0;
    }

    else
    {
      v3 = 2307923968;
    }

    goto LABEL_25;
  }

  v7 = strstr(v3, "_#_");
  if (v7)
  {
    v8 = v7;
    do
    {
      *v8 = 35;
      v9 = strlen(v3);
      memmove(v8 + 1, v8 + 3, v9 - (v8 - v3) - 2);
      v8 = strstr(v3, "_#_");
    }

    while (v8);
  }

  v10 = !hlp_checkDoClmInCurrentComponent(a1) || hlp_checkDoClmForLng3(a1, __s) == 0;
  v11 = strchr(v3, 20);
  v12 = v11;
  if (v11)
  {
    *v11 = 0;
  }

  if (v10)
  {
    v13 = 0;
    v3 = 0;
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = strlen(v3);
  v13 = heap_Alloc(*(*a1 + 8), (4 * v14 + 4));
  if (v13)
  {
    v15 = strlen(v3);
    v3 = (*(*(a1 + 968) + 64))(*(a1 + 952), *(a1 + 960), __s, v3, v13, 0, 0, (4 * v15 + 4));
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v3 = 2307923978;
  if (v12)
  {
LABEL_22:
    *v12 = 20;
  }

LABEL_23:
  if (v13)
  {
    heap_Free(*(*a1 + 8), v13);
  }

LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t hlp_CreatePauseDurParam(uint64_t a1, char *__s)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0;
  strcpy(__sa, "tnpausedur");
  v3 = strlen(__s);
  result = strlen(__sa);
  if (v3 < 255 - result)
  {
    __strcat_chk();
    result = paramc_ParamGetUInt(*(a1 + 40), __sa, &v6);
    if ((result & 0x80000000) == 0)
    {
      strcpy(__sa, "tnpausedur");
      __strcat_chk();
      result = paramc_ParamSetUInt(*(a1 + 40), __sa, v6);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_InsertUserTNToken(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, unsigned __int16 a7, const char *a8, char *a9, char *a10, const char *a11, int a12, uint64_t a13, unsigned __int16 a14)
{
  v110 = *MEMORY[0x1E69E9840];
  v107 = a7;
  v106 = 0;
  v104 = 0;
  v105 = 0;
  v21 = *a5;
  v22 = hlp_checkDoClmInCurrentComponent(a1);
  hlp_GetLowerCasedLng3FromLangTag(a1, a10, __s);
  if (!*a5)
  {
    v29 = 0;
    goto LABEL_127;
  }

  v98 = v21;
  v23 = *a5;
  v97 = v22;
  v24 = "_#_";
  do
  {
    v29 = (*(*(a1 + 72) + 168))(a2, a3, v23, 1, 1, &v105 + 2, &v106);
    if ((v29 & 0x80000000) != 0)
    {
LABEL_121:
      v33 = *(*a1 + 32);
      v89 = 30003;
      goto LABEL_126;
    }

    if (HIWORD(v105) >= a6)
    {
      v29 = (*(*(a1 + 72) + 168))(a2, a3, *a5, 0, 1, &v104, &v106);
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_121;
      }

      if (v104 != 3 && HIWORD(v105) != v107)
      {
        v32 = (*(*(a1 + 72) + 80))(a2, a3, *a5, a5);
        if ((v32 & 0x80000000) != 0)
        {
          goto LABEL_122;
        }

        v104 = 5;
        v29 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 0, 1, &v104, &v105);
        v33 = *(*a1 + 32);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        log_OutText(v33, "FE_INITLINGDB", 5, 0, "Creating token %u %u in lingdb", v26, v27, v28, HIWORD(v105));
        v34 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 1, 1, &v105 + 2, &v105);
        if ((v34 & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        v34 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 2, 1, &v107, &v105);
        if ((v34 & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        v35 = strlen(a8);
        v29 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 4, (v35 + 1), a8, &v105);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        if (a12)
        {
          v29 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 6, 4, "lid", &v105);
          if ((v29 & 0x80000000) != 0)
          {
            goto LABEL_127;
          }
        }

        if (!a9)
        {
          goto LABEL_111;
        }

        v96 = a8;
        v36 = strstr(a9, v24);
        if (v36)
        {
          v37 = v36;
          do
          {
            *v37 = 35;
            v38 = strlen(a9);
            memmove(v37 + 1, v37 + 3, v38 - (v37 - a9) - 2);
            v37 = strstr(a9, v24);
          }

          while (v37);
        }

        v39 = strlen(__s);
        v40 = a9;
        if (v39 != 3)
        {
LABEL_106:
          a8 = v96;
          if (!v40)
          {
            goto LABEL_110;
          }

          goto LABEL_107;
        }

        v41 = !v97 || hlp_checkDoClmForLng3(a1, __s) == 0;
        v42 = strlen(a9);
        v43 = heap_Alloc(*(*a1 + 8), 4 * v42 + 200);
        if (!v43)
        {
          log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 34000, 0, v44, v45, v46, v47, v92);
          v29 = 2307923978;
          goto LABEL_127;
        }

        __dst = v43;
        hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(a9, v108, v102);
        __s2[0] = 0;
        v48 = strchr(a9, 20);
        if (v48)
        {
          v49 = v48;
          __strcat_chk();
          *v49 = 0;
        }

        v50 = *(a1 + 968);
        if (v50 && (*(v50 + 56))(*(a1 + 952), *(a1 + 960)))
        {
          if (!v41)
          {
            v51 = strlen(a9);
            if (((*(*(a1 + 968) + 64))(*(a1 + 952), *(a1 + 960), __s, a9, __dst, 0, 0, (4 * v51 + 4)) & 0x80000000) != 0)
            {
LABEL_40:
              v101 = v107;
              v52 = HIWORD(v105);
              v53 = &a11[HIWORD(v105)];
              v54 = strstr(v53, "§");
              if (v54 == v53)
              {
                v40 = strcpy(__dst, __s2);
                v29 = 0;
              }

              else
              {
                v55 = v54;
                if (v54)
                {
                  v56 = a11;
                  while (1)
                  {
                    v57 = v101;
                    if (v55 - v56 >= v101 || v55 == &v56[v52])
                    {
                      goto LABEL_79;
                    }

                    if (v55 <= v56)
                    {
                      v93 = v55 - v56;
                      v60 = 2;
                    }

                    else
                    {
                      v59 = v55 - v56 + 2;
                      v60 = 2;
                      v61 = v55;
                      while (1)
                      {
                        v62 = *--v61;
                        if (v62 != 32)
                        {
                          break;
                        }

                        ++v60;
                        v55 = v61;
                        if (v61 <= v56)
                        {
                          v60 = v59;
                          v55 = v56;
                          break;
                        }
                      }

                      v93 = v55 - v56;
                    }

                    v101 -= v60;
                    v63 = strlen(&v55[v60]);
                    memmove(v55, &v55[v60], v63 + 1);
                    v64 = strlen(a11);
                    v32 = (*(*(a1 + 72) + 160))(a2, a3, a4, 0, (v64 + 1), a11, &v105);
                    if ((v32 & 0x80000000) != 0)
                    {
                      goto LABEL_122;
                    }

                    v32 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 2, 1, &v101, &v105);
                    if ((v32 & 0x80000000) != 0)
                    {
                      goto LABEL_122;
                    }

                    v99 = 0;
                    v100 = *a5;
                    v32 = (*(*(a1 + 72) + 120))(a2, a3);
                    if ((v32 & 0x80000000) != 0)
                    {
                      goto LABEL_122;
                    }

                    v65 = v100;
                    if (v100)
                    {
                      break;
                    }

LABEL_77:
                    v52 = HIWORD(v105);
                    v56 = a11;
                    v55 = strstr(&a11[HIWORD(v105)], "§");
                    if (!v55)
                    {
                      v57 = v101;
LABEL_79:
                      v71 = v107;
                      v72 = v107 - v57;
                      if (v107 > v57 && a14)
                      {
                        v74 = (a13 + 16);
                        v73 = a14;
                        do
                        {
                          v75 = *(v74 - 1);
                          if (v75 <= v57)
                          {
                            v80 = *v74;
                            if (*v74)
                            {
                              v81 = v80 + v75;
                              if (v57 < v81)
                              {
                                v82 = (v81 - v57);
                                if (v82 >= v72)
                                {
                                  v82 = v72;
                                }

                                *v74 = v80 - v82;
                              }
                            }
                          }

                          else
                          {
                            v76 = (v75 - v57);
                            v77 = *v74;
                            if (*v74)
                            {
                              v78 = *(v74 - 1) >= v71;
                            }

                            else
                            {
                              v78 = 1;
                            }

                            v79 = (v71 - v75);
                            if (v78)
                            {
                              v79 = 0;
                            }

                            if (v76 >= v72)
                            {
                              v76 = v72;
                            }

                            *(v74 - 1) = v75 - v76;
                            *v74 = v77 - v79;
                          }

                          v74 += 8;
                          --v73;
                        }

                        while (v73);
                      }

                      goto LABEL_98;
                    }
                  }

                  v94 = v60;
                  v66 = v60 + v93;
                  v67 = v66;
                  while (1)
                  {
                    v32 = (*(*(a1 + 72) + 168))(a2, a3, v65, 1, 1, &v99 + 2, &v106);
                    if ((v32 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v32 = (*(*(a1 + 72) + 168))(a2, a3, v100, 2, 1, &v99, &v106);
                    if ((v32 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v68 = v93 <= HIWORD(v99) && v66 >= HIWORD(v99);
                    if (v68 && v93 <= v99 && v66 >= v99)
                    {
                      v69 = v100;
                      v70 = v100;
                    }

                    else
                    {
                      v69 = v100;
                      if (v66 <= HIWORD(v99))
                      {
                        HIWORD(v99) -= v94;
                        LOWORD(v99) = v99 - v94;
                        v32 = (*(*(a1 + 72) + 160))(a2, a3, v100, 1, 1, &v99 + 2, &v105);
                        if ((v32 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v32 = (*(*(a1 + 72) + 160))(a2, a3, v100, 2, 1, &v99, &v105);
                        if ((v32 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v70 = 0;
                        v69 = v100;
                      }

                      else
                      {
                        v70 = 0;
                      }
                    }

                    v32 = (*(*(a1 + 72) + 120))(a2, a3, v69, &v100);
                    if ((v32 & 0x80000000) != 0)
                    {
                      break;
                    }

                    if (v70)
                    {
                      v32 = (*(*(a1 + 72) + 192))(a2, a3, v70);
                      if ((v32 & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    v65 = v100;
                    v66 = v67;
                    if (!v100)
                    {
                      goto LABEL_77;
                    }
                  }

LABEL_122:
                  v29 = v32;
                  goto LABEL_127;
                }

LABEL_98:
                v29 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 4, 7, "normal", &v105);
                heap_Free(*(*a1 + 8), __dst);
                if ((v29 & 0x80000000) != 0)
                {
                  goto LABEL_124;
                }

                v40 = 0;
              }

              goto LABEL_106;
            }

LABEL_104:
            v40 = strcat(__dst, __s2);
LABEL_107:
            v85 = v24;
            v86 = v40;
            v87 = strlen(v40);
            v29 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 3, (v87 + 1), v86, &v105);
            if (v86 != a9)
            {
              heap_Free(*(*a1 + 8), v86);
            }

            v24 = v85;
            a8 = v96;
LABEL_110:
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_124;
            }

LABEL_111:
            v30 = 0;
            goto LABEL_9;
          }
        }

        else
        {
          if (strcmp(__s, (a1 + 948)))
          {
            goto LABEL_40;
          }

          if (!v41)
          {
            goto LABEL_104;
          }
        }

        v83 = strcpy(__dst, a9);
        strcat(v83, __s2);
        if (!strcmp(__s, (a1 + 948)))
        {
          v40 = __dst;
        }

        else
        {
          v84 = strlen(__s);
          v32 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 6, (v84 + 1), __s, &v105);
          v40 = __dst;
          if ((v32 & 0x80000000) != 0)
          {
            goto LABEL_122;
          }
        }

        goto LABEL_107;
      }
    }

    v30 = 1;
LABEL_9:
    if (HIWORD(v105) == v107)
    {
      goto LABEL_127;
    }

    v29 = (*(*(a1 + 72) + 120))(a2, a3, *a5, a5);
    v31 = v29 >= 0 ? v30 : 0;
    if ((v31 & 1) == 0)
    {
      goto LABEL_127;
    }

    v23 = *a5;
  }

  while (*a5);
  if (HIWORD(v105) != a6)
  {
    goto LABEL_127;
  }

  v32 = (*(*(a1 + 72) + 80))(a2, a3, v98, a5);
  if ((v32 & 0x80000000) != 0)
  {
    goto LABEL_122;
  }

  v104 = 5;
  v29 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 0, 1, &v104, &v105);
  v33 = *(*a1 + 32);
  if ((v29 & 0x80000000) == 0)
  {
    log_OutText(v33, "FE_INITLINGDB", 5, 0, "Creating token %u %u in lingdb", v26, v27, v28, HIWORD(v105));
    v34 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 1, 1, &v105 + 2, &v105);
    if ((v34 & 0x80000000) != 0 || (v34 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 2, 1, &v107, &v105), (v34 & 0x80000000) != 0))
    {
LABEL_123:
      v29 = v34;
    }

    else
    {
      v88 = strlen(a8);
      v29 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 4, (v88 + 1), a8, &v105);
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_127;
      }
    }

LABEL_124:
    v33 = *(*a1 + 32);
  }

LABEL_125:
  v89 = 30002;
LABEL_126:
  log_OutPublic(v33, "FE_INITLINGDB", v89, 0, v25, v26, v27, v28, v92);
LABEL_127:
  v90 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t hlp_LogUnsupportedTNType(uint64_t a1, char *__s)
{
  __s1 = 0;
  v4 = strlen(__s);
  if ((paramc_ParamGetStr(*(a1 + 40), "domainmngrtntypes", &__s1) & 0x80000000) != 0 || (v5 = __s1) == 0 || !*__s1 || (v6 = strstr(__s1, __s)) == 0 || (v7 = v6, v6 != v5) && *(v6 - 1) != 124 || (result = 0, (v9 = v7[v4]) != 0) && v9 != 124)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "extraesctn", &__s1) & 0x80000000) != 0)
    {
      return 1;
    }

    if (!__s1)
    {
      return 1;
    }

    result = strcmp(__s1, __s);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t hlp_FindBestTNType(uint64_t a1, char *a2, int a3, char *__s1, const char **a5, int a6)
{
  *a5 = __s1;
  result = strcmp(__s1, "internal-nuance-system-norm");
  if (result)
  {
    while (1)
    {
      v13 = *a5;
      v14 = strstr(a2, *a5);
      if (v14)
      {
        v15 = v14[strlen(v13)];
        if (a3 == v15)
        {
          return 0;
        }

        result = 0;
        if (!v15 || v15 == 124)
        {
          return result;
        }
      }

      v16 = strrchr(v13, 58);
      if (!v16)
      {
        break;
      }

      if (v13 == __s1)
      {
        *a5 = 0;
        result = hlp_CopyString(a1, a5, __s1, a6);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v16 = strrchr(*a5, 58);
        if (!v16)
        {
          continue;
        }
      }

      *v16 = 0;
    }

    if (v13 != __s1)
    {
      heap_Free(*(a1 + 8), v13);
    }

    *a5 = 0;
    return 2307923968;
  }

  return result;
}

uint64_t hlp_ReplacePauseZeroWithNluBndNo_And_WriteMarkersToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned __int16 *a7)
{
  v7 = a7;
  v57 = 0;
  v13 = *a7;
  if (!*a7)
  {
    goto LABEL_35;
  }

  v14 = 0;
  v15 = *a6;
  v16 = *a7;
  do
  {
    if (*v15 == 8 && v15[6] == 1)
    {
      ++v14;
    }

    v15 += 8;
    --v16;
  }

  while (v16);
  if (v14)
  {
    v54 = a2;
    v17 = 2307923978;
    v18 = heap_Calloc(*(a1 + 8), 8, v14);
    if (!v18)
    {
      goto LABEL_47;
    }

    v19 = v18;
    v13 = *v7;
    if (*v7)
    {
      v51 = a3;
      v52 = a4;
      v53 = a5;
      v20 = 0;
      v21 = 0;
      v22 = -1;
      v55 = v18;
      v56 = v7;
      while (1)
      {
        v23 = *a6;
        v24 = (*a6 + 32 * v20);
        if (*v24 == 1)
        {
          v22 = v20;
        }

        else if ((v22 & 0x80000000) == 0 && *v24 == 8 && v24[6] == 1)
        {
          v25 = v22;
          v26 = v23 + 32 * v22;
          v27 = *(v26 + 12);
          v28 = v22;
          if (v13)
          {
            v29 = 1;
            v30 = v13;
            v31 = *a6;
            v28 = v22;
            do
            {
              v32 = v31[3];
              v33 = v32 == v27;
              if (v32 > v27)
              {
                break;
              }

              v35 = *v31;
              v31 += 8;
              v34 = v35;
              if (v33 && v34 == 51)
              {
                v28 = v29;
              }

              ++v29;
              --v30;
            }

            while (v30);
            v25 = v28;
          }

          v37 = *(v26 + 4);
          if (v20 == v25)
          {
            v7 = v56;
          }

          else
          {
            if (v20 + 1 != v13)
            {
              memmove(v24, (v23 + 32 * (v20 + 1)), 32 * (~v20 + v13));
              v13 = *v56;
              v23 = *a6;
            }

            v38 = v13 - 1;
            *v56 = v38;
            v39 = v23 + 32 * v28;
            v40 = v38 - v28;
            v7 = v56;
            memmove((v39 + 32), (v23 + 32 * v25), 32 * v40);
            ++*v56;
            v23 = *a6;
          }

          v41 = (v23 + 32 * v25);
          *v41 = 51;
          v41[1] = v37;
          v41[2] = 0;
          v41[3] = v27;
          v41[4] = 0;
          *(*a6 + 32 * v25 + 24) = heap_Alloc(*(a1 + 8), 6);
          v42 = *(*a6 + 32 * v25 + 24);
          if (!v42)
          {
            v19 = v55;
            v17 = 2307923978;
            goto LABEL_41;
          }

          v19 = v55;
          *(v55 + 8 * v21) = v42;
          strcpy(*(*a6 + 32 * v25 + 24), "BND:N");
          v13 = *v7;
          ++v21;
        }

        if (++v20 >= v13)
        {
          a5 = v53;
          a3 = v51;
          a4 = v52;
          goto LABEL_37;
        }
      }
    }

    v21 = 0;
LABEL_37:
    a2 = v54;
  }

  else
  {
LABEL_35:
    v21 = 0;
    v19 = 0;
  }

  v17 = (*(a2 + 160))(a3, a4, a5, 1, v13, *a6, &v57);
  if ((v17 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "FE_INITLINGDB", 30002, 0, v43, v44, v45, v46, v50);
  }

  if (v19)
  {
LABEL_41:
    if (v21)
    {
      v47 = v21;
      v48 = v19;
      do
      {
        if (*v48)
        {
          heap_Free(*(a1 + 8), *v48);
        }

        ++v48;
        --v47;
      }

      while (v47);
    }

    heap_Free(*(a1 + 8), v19);
  }

LABEL_47:
  heap_Free(*(a1 + 8), *a6);
  *a6 = 0;
  *v7 = 0;
  return v17;
}

uint64_t fe_initlingdb_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v3 = *(a1 + 80);

  return synstrmaux_CloseStreams((a1 + 88), v3);
}

uint64_t fe_initlingdb_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2307923969;
  }

  result = 0;
  *a2 = &IFeInitlingdb;
  return result;
}

size_t hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(char *a1, char *a2, _BYTE *a3)
{
  *a2 = 0x504B524D545845;
  *a3 = 0;
  result = strchr(a1, 20);
  if (result)
  {
    v6 = (result + 1);
    result = strchr((result + 1), 20);
    v7 = result;
    if (result)
    {
      v8 = result - v6;
    }

    else
    {
      result = strlen(v6);
      v8 = result;
    }

    if (v8 <= 9)
    {
      result = strncpy(a2, v6, v8);
      a2[v8] = 0;
    }

    if (v7)
    {
      v9 = v7 + 1;
      result = strlen((v7 + 1));
      if (result == 3 || result >= 4 && *(v7 + 4) == 20 && !*(v7 + 5))
      {
        for (i = 0; i != 3; ++i)
        {
          result = ssft_tolower(*(v9 + i));
          a3[i] = result;
        }

        a3[3] = 0;
      }
    }
  }

  return result;
}

char *hlp_GetLowerCasedLng3FromLangTag(uint64_t a1, char *a2, char *__dst)
{
  if (*a2 && LH_stricmp(a2, "normal"))
  {
    result = strlen(a2);
    if (result == 3)
    {
      result = strcpy(__dst, a2);
      if (*__dst)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          __dst[v7] = ssft_tolower(__dst[v7]);
          v7 = ++v8;
          result = strlen(__dst);
        }

        while (result > v8);
      }
    }

    else
    {
      *__dst = 0;
    }
  }

  else
  {

    return strcpy(__dst, (a1 + 948));
  }

  return result;
}

BOOL hlp_checkDoClmInCurrentComponent(void *a1)
{
  __s1 = 0;
  v3 = 0;
  return (((*(a1[121] + 96))(a1[119], a1[120], &v3) & 0x80000000) != 0 || !v3) && ((paramc_ParamGetStr(*(*a1 + 40), "clm", &__s1) & 0x80000000) != 0 || !__s1 || !strcmp(__s1, "yes"));
}

uint64_t hlp_checkDoClmForLng3(const char *a1, char *__s1)
{
  v10 = *MEMORY[0x1E69E9840];
  __s1a = 0;
  result = strcmp(__s1, a1 + 948);
  if (result)
  {
    v9[0] = 7171171;
    __strcat_chk();
    if ((paramc_ParamGetStr(*(*a1 + 40), v9, &__s1a) & 0x80000000) == 0)
    {
      v5 = __s1a;
      if (__s1a)
      {
        goto LABEL_12;
      }
    }

    __s1a = 0;
    Str = paramc_ParamGetStr(*(*a1 + 40), "noclmset", &__s1a);
    v5 = __s1a;
    if ((Str & 0x80000000) == 0 && __s1a)
    {
      if (strstr(__s1a, __s1))
      {
        v5 = "no";
      }

      else
      {
        v5 = "yes";
      }

      __s1a = v5;
      goto LABEL_12;
    }

    if (__s1a)
    {
LABEL_12:
      result = strcmp(v5, "yes") == 0;
      goto LABEL_13;
    }

    result = 1;
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_initlingdb_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2307923975;
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

uint64_t CLM_InitFromCLMv2Lua(uint64_t a1, const char *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  Allocator = ooc_utils_createAllocator(v53, *(a1 + 32), *(a1 + 40));
  v5 = LH_ERROR_to_VERROR(Allocator);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  v6 = luavmldoutil_initialize_lua_vm(*(a1 + 32), *(a1 + 40), v53, "getForeignLangSupportForCLMv2", hlp_lua_log_callback_2, &v52, "clm");
  v7 = 0;
  v8 = v52;
  if ((v6 & 0x80000000) == 0 && v52)
  {
    *(a1 + 200) = 0;
    v9 = LuaVMLDO_RunFunctionReturningString(v8, "getForeignLangSupportForCLMv2", a2, 0x400u, __s1);
    v5 = LH_ERROR_to_VERROR(v9);
    if ((v5 & 0x80000000) == 0)
    {
      if (__s1[0] || (v50 = LuaVMLDO_RunFunctionReturningString(v8, "getFeClmSupportedLanguages", "all", 0x400u, __s1), (LH_ERROR_to_VERROR(v50) & 0x80000000) == 0) && strstr(__s1, a2))
      {
        *(a1 + 200) = 1;
      }

      v10 = v52;
      *__s1 = 0;
      v11 = PNEW_LDOObject_Con(v53, v53, __s1);
      v12 = LH_ERROR_to_VERROR(v11);
      if ((v12 & 0x80000000) != 0)
      {
        v7 = v12;
        log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Error creating LDOObject", v13, v14, v15, v51);
      }

      else
      {
        v16 = LuaVMLDO_RunFunctionWithStringArgumentReturningTableWithStrings(v10, "getLoanPhonemeSupport", a2, *__s1);
        v17 = LH_ERROR_to_VERROR(v16);
        if ((v17 & 0x80000000) != 0)
        {
          v7 = 0;
        }

        else
        {
          v7 = v17;
          v18 = *(*__s1 + 32);
          v19 = *(*__s1 + 40);
          *(a1 + 204) = (v19 - v18) >> 5;
          if (((v19 - v18) & 0x1FFFE0) != 0)
          {
            v20 = heap_Calloc(*(*(a1 + 24) + 8), ((v19 - v18) >> 5), 16);
            *(a1 + 208) = v20;
            if (v20)
            {
              if (v18 < v19)
              {
                v25 = 0;
                v51 = v19;
                while (1)
                {
                  v26 = v18[3];
                  v27 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(*v18);
                  if (strlen(v27) != 3)
                  {
                    goto LABEL_49;
                  }

                  v28 = 16 * v25;
                  v29 = 3;
                  do
                  {
                    v30 = *v27++;
                    *(*(a1 + 208) + v28++) = __tolower(v30);
                    --v29;
                  }

                  while (v29);
                  v31 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v26);
                  if (!v31 || (v32 = v31, !*v31))
                  {
LABEL_49:
                    v7 = 2347769856;
                    goto LABEL_51;
                  }

                  v33 = strstr(v31, "||");
                  for (i = 1; v33; ++i)
                  {
                    v36 = v33[2];
                    v35 = v33 + 2;
                    if (!v36)
                    {
                      break;
                    }

                    v33 = strstr(v35, "||");
                  }

                  *(*(a1 + 208) + 16 * v25 + 4) = i;
                  v37 = heap_Calloc(*(*(a1 + 24) + 8), i, 24);
                  *(*(a1 + 208) + 16 * v25 + 8) = v37;
                  if (!v37)
                  {
                    goto LABEL_50;
                  }

                  v38 = strchr(v32, 124);
                  if (v38)
                  {
                    break;
                  }

LABEL_33:
                  ++v25;
                  v18 += 4;
                  if (v18 >= v51)
                  {
                    goto LABEL_51;
                  }
                }

                v39 = v38;
                v40 = 0;
                while (1)
                {
                  v41 = v40;
                  v42 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v25 + 8) + 24 * v40), v32, v39);
                  if ((v42 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v43 = strchr(v39 + 1, 124);
                  if (!v43)
                  {
                    goto LABEL_32;
                  }

                  v44 = v43;
                  v42 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v25 + 8) + 24 * v41 + 8), v39 + 1, v43);
                  if ((v42 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v45 = v44 + 1;
                  v46 = strchr(v45, 124);
                  if (!v46)
                  {
                    v46 = &v45[strlen(v45)];
                  }

                  v42 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v25 + 8) + 24 * v41 + 16), v45, v46);
                  if ((v42 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v47 = strstr(v45, "||");
                  if (v47)
                  {
                    v32 = v47 + 2;
                    v39 = strchr(v47 + 2, 124);
                    v40 = v41 + 1;
                    if (v39)
                    {
                      continue;
                    }
                  }

LABEL_32:
                  v7 = 0;
                  goto LABEL_33;
                }

                v7 = v42;
              }
            }

            else
            {
LABEL_50:
              log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v21, v22, v23, v24, v51);
              v7 = 2347769866;
            }
          }
        }
      }

LABEL_51:
      if (*__s1)
      {
        OOC_PlacementDeleteObject(v53, *__s1);
      }

      goto LABEL_36;
    }

LABEL_35:
    v7 = v5;
LABEL_36:
    v8 = v52;
  }

  if (v8)
  {
    luavmldoutil_destroy_lua_vm(v53, &v52);
  }

  kaldi::nnet1::Component::IsUpdatable(v53);
  if ((v7 & 0x80000000) != 0)
  {
    CLM_DeInitFromCLMv2Lua(a1);
  }

  v48 = *MEMORY[0x1E69E9840];
  return v7;
}

void *CLM_DeInitFromCLMv2Lua(void *result)
{
  v1 = result;
  *(result + 50) = 0;
  v2 = result[26];
  if (v2)
  {
    v3 = *(result + 102);
    if (*(result + 102))
    {
      v4 = 0;
      do
      {
        v5 = v2 + 16 * v4;
        v6 = *(v5 + 8);
        if (v6)
        {
          if (*(v5 + 4))
          {
            v7 = 0;
            v8 = 0;
            do
            {
              v9 = *(v2 + 16 * v4 + 8);
              v10 = *(v9 + v7);
              if (v10)
              {
                heap_Free(*(v1[3] + 8), v10);
                v2 = v1[26];
                v9 = *(v2 + 16 * v4 + 8);
                *(v9 + v7) = 0;
              }

              v11 = *(v9 + v7 + 8);
              if (v11)
              {
                heap_Free(*(v1[3] + 8), v11);
                v2 = v1[26];
                v9 = *(v2 + 16 * v4 + 8);
                *(v9 + v7 + 8) = 0;
              }

              v12 = *(v9 + v7 + 16);
              if (v12)
              {
                heap_Free(*(v1[3] + 8), v12);
                v2 = v1[26];
                *(*(v2 + 16 * v4 + 8) + v7 + 16) = 0;
              }

              ++v8;
              v13 = v2 + 16 * v4;
              v7 += 24;
            }

            while (v8 < *(v13 + 4));
            v6 = *(v13 + 8);
          }

          heap_Free(*(v1[3] + 8), v6);
          v2 = v1[26];
          *(v2 + 16 * v4 + 8) = 0;
          v3 = *(v1 + 102);
        }

        ++v4;
      }

      while (v4 < v3);
    }

    result = heap_Free(*(v1[3] + 8), v2);
    v1[26] = 0;
  }

  *(v1 + 102) = 0;
  return result;
}

uint64_t hlp_AllocAndCopy(uint64_t a1, char **a2, char *__s, uint64_t a4)
{
  if (a4)
  {
    v7 = a4 - __s;
  }

  else
  {
    v7 = strlen(__s);
  }

  v8 = heap_Calloc(*(a1 + 8), v7 + 1, 1);
  *a2 = v8;
  if (v8)
  {
    strncpy(v8, __s, v7);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "CLM", 50000, 0, v9, v10, v11, v12, v14);
    return 2347769866;
  }
}

uint64_t CLM_AlignPhonlists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = 0;
  v48 = 0;
  if (!a3 || !a4)
  {
    return 2347769856;
  }

  CountStrings = StringList_GetCountStrings(a3);
  v8 = StringList_GetCountStrings(a4);
  if (a2 && StringList_GetCountStrings(a2) != CountStrings)
  {
    v13 = 2347769856;
    goto LABEL_79;
  }

  v9 = StringList_GetCountStrings(a3);
  v10 = StringList_GetCountStrings(a4);
  v11 = v10;
  if (CountStrings && v8)
  {
    v45 = a2;
    v12 = 0;
    if (v9)
    {
      v13 = 0;
      while (v12 < v11)
      {
        v14 = StringList_GetAt(a3, v12);
        if (*v14 == 42 && !v14[1])
        {
          v17 = StringList_InsertAt(a4, v12, "*");
          if (v17)
          {
            v13 = LH_ERROR_to_VERROR(v17);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v13 = 0;
          }

          LOWORD(v11) = v11 + 1;
        }

        else
        {
          v15 = StringList_GetAt(a3, v12);
          v16 = StringList_GetAt(a4, v12);
          if (strcmp(v15, v16))
          {
            break;
          }
        }

        if (v9 <= ++v12)
        {
          v12 = v9;
          goto LABEL_58;
        }
      }

      if (v9 > v12)
      {
        while (1)
        {
          v20 = v11;
          v21 = v9;
          if (v11 <= v12)
          {
            break;
          }

          LOWORD(v9) = v9 - 1;
          v22 = StringList_GetAt(a3, (v21 - 1));
          if (*v22 == 42 && !v22[1])
          {
            v25 = StringList_InsertAt(a4, v11, "*");
            if (v25)
            {
              v13 = LH_ERROR_to_VERROR(v25);
              if ((v13 & 0x80000000) != 0)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v23 = StringList_GetAt(a3, v9);
            LOWORD(v11) = v11 - 1;
            v24 = StringList_GetAt(a4, (v20 - 1));
            if (strcmp(v23, v24))
            {
              break;
            }
          }

          if (v9 <= v12)
          {
            goto LABEL_58;
          }
        }

        LOWORD(v9) = v21;
        LOWORD(v11) = v20;
      }

LABEL_58:
      v30 = v13;
    }

    else
    {
      v30 = 0;
    }

    v31 = StringList_GetCountStrings(a3) - v9;
    v13 = 2347769856;
    if (v31 == StringList_GetCountStrings(a4) - v11)
    {
      if ((v30 & 0x80000000) != 0)
      {
        v13 = v30;
      }

      else if (v12 != v9 || (v13 = v30, v12 != v11))
      {
        v49 = 0;
        v32 = hlp_RecursiveAddBestAnchorsForSublist(a1, a3, v12, v9, a4, v12, v11, &v47, &v49);
        if ((v32 & 0x80000000) != 0)
        {
          v13 = v32;
        }

        else
        {
          if (v49 == 0xFFFF)
          {
            v33 = 0;
          }

          else
          {
            v33 = v47 + 16 * v49;
          }

          v34 = hlp_Align(v45, a3, a4, v9, v11, v33);
          v35 = v34;
          if ((v34 & 0x80000000) != 0)
          {
            v13 = v34;
          }

          else
          {
            v36 = StringList_GetCountStrings(a3);
            v37 = StringList_GetCountStrings(a4);
            if (v36 == v37)
            {
              v13 = v35;
            }

            else
            {
              v13 = 2347769856;
            }

            if (v45 && v36 == v37)
            {
              if (StringList_GetCountStrings(v45) == v36)
              {
                v13 = v35;
              }

              else
              {
                v13 = 2347769856;
              }
            }
          }
        }
      }
    }

    goto LABEL_79;
  }

  if (v9)
  {
    if (!v10)
    {
      v18 = 0;
      do
      {
        v19 = StringList_Append(a4, "*");
        if (v19)
        {
          v13 = LH_ERROR_to_VERROR(v19);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v13 = 0;
        }

        ++v18;
      }

      while (v9 > v18);
      goto LABEL_79;
    }

    goto LABEL_55;
  }

  if (v10)
  {
    v26 = a2;
    v27 = 0;
    while (1)
    {
      v28 = StringList_Append(a3, "*");
      if (v28)
      {
        v13 = LH_ERROR_to_VERROR(v28);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_79;
        }

        if (v26)
        {
LABEL_49:
          v29 = StringList_Append(v26, "*");
          if (v29)
          {
            v13 = LH_ERROR_to_VERROR(v29);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 0;
        if (v26)
        {
          goto LABEL_49;
        }
      }

      if (v11 <= ++v27)
      {
        goto LABEL_79;
      }
    }
  }

LABEL_55:
  v13 = 0;
LABEL_79:
  v38 = v47;
  if (v47)
  {
    v39 = v48;
    if (v48)
    {
      v40 = 0;
      v41 = 8;
      v42 = a1;
      do
      {
        v43 = *(v47 + v41);
        if (v43)
        {
          heap_Free(*(a1 + 8), v43);
          v39 = v48;
        }

        ++v40;
        v41 += 16;
      }

      while (v40 < v39);
      v38 = v47;
    }

    else
    {
      v42 = a1;
    }

    heap_Free(*(v42 + 8), v38);
  }

  return v13;
}

uint64_t hlp_RecursiveAddBestAnchorsForSublist(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned __int16 *a8, _WORD *a9)
{
  v10 = 0;
  v66 = 0;
  *a9 = -1;
  if (a3 < a4 && a6 < a7)
  {
    if (!a8 || (v15 = a8[4]) == 0)
    {
LABEL_9:
      v65 = 0;
      v66 = 0;
      v18 = a3 + 1;
      v19 = a6;
      do
      {
        v20 = StringList_GetAt(a2, a3);
        v21 = StringList_GetAt(a5, v19);
        v22 = v19 + 1;
        if (!strcmp(v20, v21))
        {
          appended = hlp_RecursiveAddBestAnchorsForSublist(a1, a2, v18, a4, a5, (v19 + 1), a7, a8, &v65);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_20;
          }

          v24 = v65 == 0xFFFFLL ? 0 : *a8 + 16 * v65;
          appended = hlp_AppendCombinedResult(a1, a3, v19, v24, &v66, &v65 + 1);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        ++v19;
      }

      while (a7 > v22);
      v25 = a8;
      appended = hlp_RecursiveAddBestAnchorsForSublist(a1, a2, v18, a4, a5, a6, a7, a8, &v65);
      if ((appended & 0x80000000) != 0)
      {
LABEL_20:
        v10 = appended;
        goto LABEL_60;
      }

      if (v65 == 0xFFFFLL)
      {
        v26 = 0;
      }

      else
      {
        v26 = *a8 + 16 * v65;
      }

      v27 = hlp_AppendCombinedResult(a1, 65534, 65534, v26, &v66, &v65 + 1);
      if ((v27 & 0x80000000) == 0)
      {
        v28 = v66;
        if (v66 && (v29 = *v66) != 0)
        {
          v30 = 0;
          v31 = 0;
          v32 = -1;
          v33 = -1;
          do
          {
            v34 = 0;
            do
            {
              v35 = v34;
              v36 = v29[2 * v34++];
            }

            while (v36 != -1);
            if (v35 <= v31)
            {
              if (v35 && v35 == v31)
              {
                v40 = *v29;
                if (v40 == 0xFFFF)
                {
                  v42 = 0;
                }

                else
                {
                  v41 = 0;
                  v42 = 0;
                  v43 = v29;
                  do
                  {
                    v42 += (v40 - v43[1]) * (v40 - v43[1]);
                    v43 = &v29[2 * ++v41];
                    v40 = *v43;
                  }

                  while (v40 != 0xFFFF);
                }

                if (v42 < v33)
                {
                  v32 = v30;
                  v33 = v42;
                }
              }
            }

            else
            {
              v37 = *v29;
              if (v37 == 0xFFFF)
              {
                v33 = 0;
              }

              else
              {
                v38 = 0;
                v33 = 0;
                v39 = v29;
                do
                {
                  v33 += (v37 - v39[1]) * (v37 - v39[1]);
                  v39 = &v29[2 * ++v38];
                  v37 = *v39;
                }

                while (v37 != 0xFFFF);
              }

              v32 = v30;
              v31 = v35;
            }

            v29 = v66[++v30];
          }

          while (v29);
        }

        else
        {
          v32 = -1;
        }

        v44 = v25[4];
        if (v44 == v25[5])
        {
          v10 = 2347769856;
          if (v44 > 0xFFFC)
          {
            goto LABEL_60;
          }

          v45 = heap_Realloc(*(a1 + 8), *v25, 16 * v44 + 32);
          *v25 = v45;
          if (!v45)
          {
            log_OutPublic(*(a1 + 32), "CLM", 50000, 0, v46, v47, v48, v49, v62);
            v10 = 2347769866;
            goto LABEL_60;
          }

          v25[5] += 2;
          LODWORD(v44) = v25[4];
        }

        else
        {
          v45 = *v25;
        }

        v50 = (v45 + 16 * v44);
        *v50 = a3;
        v50[1] = a6;
        if (v32 == 0xFFFF)
        {
          v57 = v45 + 16 * v44;
          *(v57 + 4) = 0;
          *(v57 + 8) = 0;
        }

        else
        {
          v51 = 0;
          do
          {
            v52 = v51;
            v53 = v51;
            v54 = *(v28[v32] + 4 * v51++);
          }

          while (v54 != -1);
          *(v45 + 16 * v44 + 4) = v52;
          v55 = heap_Calloc(*(a1 + 8), 4, v53);
          v56 = *v25 + 16 * v25[4];
          *(v56 + 8) = v55;
          memmove(v55, v28[v32], 4 * *(v56 + 4));
          LOWORD(v44) = v25[4];
        }

        *a9 = v44;
        ++v25[4];
      }

      v10 = v27;
      goto LABEL_60;
    }

    v16 = (*a8 + 2);
    while (*(v16 - 1) != a3 || *v16 != a6)
    {
      v16 += 8;
      if (!--v15)
      {
        goto LABEL_9;
      }
    }

    v10 = 0;
  }

LABEL_60:
  v58 = v66;
  if (v66)
  {
    v59 = *v66;
    if (*v66)
    {
      v60 = 0;
      do
      {
        heap_Free(*(a1 + 8), v59);
        v59 = *(v58 + 8 * ++v60);
      }

      while (v59);
    }

    heap_Free(*(a1 + 8), v58);
  }

  return v10;
}

uint64_t hlp_Align(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  StringList_GetCountStrings(a2);
  StringList_GetCountStrings(a3);
  v24 = a6;
  if (a6)
  {
    v25 = *(a6 + 4);
  }

  else
  {
    v25 = 0;
  }

  v10 = 0;
  result = 0;
  v12 = 0;
  v13 = 0;
  v26 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    if (v24 && v25 > v10)
    {
      v16 = (*(v24 + 8) + 4 * v12);
      v17 = *v16 + v26;
      v18 = v16[1] + v13;
    }

    else
    {
      v17 = v26 + a4;
      v18 = v13 + a5;
    }

    if (v15 < v17)
    {
      v19 = (v18 + ~v14);
      if (v19 >= (v17 + ~v15))
      {
        v19 = (v17 + ~v15);
      }

      v20 = v14 + v19;
      v21 = v15 + v19;
      if (v14 < v18)
      {
        v15 = v21 + 1;
        v14 = v20 + 1;
      }
    }

    if (v15 < v17)
    {
      break;
    }

LABEL_20:
    if (v14 < v18)
    {
      v26 = v18 + v26 - v14;
      while (1)
      {
        result = StringList_InsertAt(a2, v15, "*");
        if (result)
        {
          result = LH_ERROR_to_VERROR(result);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        if (a1)
        {
          result = StringList_InsertAt(a1, v15, "*");
          if (result)
          {
            result = LH_ERROR_to_VERROR(result);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        ++v15;
        if (++v14 >= v18)
        {
          v14 = v18;
          break;
        }
      }
    }

    ++v15;
    ++v14;
    v10 = ++v12;
    if (v12 > v25)
    {
      return result;
    }
  }

  v13 = v17 + v13 - v15;
  while (1)
  {
    result = StringList_InsertAt(a3, v14, "*");
    if (result)
    {
      result = LH_ERROR_to_VERROR(result);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    ++v14;
    if (++v15 >= v17)
    {
      v15 = v17;
      goto LABEL_20;
    }
  }
}

uint64_t CLM_MergeSubsequentInsertionAndDeletions(uint64_t a1, uint64_t a2)
{
  v4 = 2347769856;
  CountStrings = StringList_GetCountStrings(a1);
  if (CountStrings == StringList_GetCountStrings(a2))
  {
    if (StringList_GetCountStrings(a1))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = StringList_GetAt(a1, v7);
        if (*v8 != 42 || v8[1])
        {
          goto LABEL_6;
        }

        v9 = StringList_GetAt(a2, v7);
        if (*v9 == 42)
        {
          if (v9[1])
          {
            v10 = v7 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (!v10)
          {
LABEL_18:
            v11 = v7 - 1;
            v12 = StringList_GetAt(a2, (v7 - 1));
            if (*v12 == 42 && !v12[1])
            {
LABEL_23:
              StringList_RemoveAt(a1, v7);
              StringList_RemoveAt(a2, v11);
              goto LABEL_7;
            }

            goto LABEL_20;
          }

          v11 = v7;
          if (!v9[1])
          {
            goto LABEL_23;
          }
        }

        else if (v7)
        {
          goto LABEL_18;
        }

LABEL_20:
        v11 = v6 + 1;
        if (v6 + 1 < StringList_GetCountStrings(a2))
        {
          v13 = StringList_GetAt(a2, (v6 + 1));
          if (*v13 == 42 && !v13[1])
          {
            goto LABEL_23;
          }
        }

LABEL_6:
        ++v7;
LABEL_7:
        v6 = v7;
      }

      while (v7 < StringList_GetCountStrings(a1));
    }

    v14 = StringList_GetCountStrings(a1);
    if (v14 == StringList_GetCountStrings(a2))
    {
      return 0;
    }

    else
    {
      return 2347769856;
    }
  }

  return v4;
}

uint64_t CLM_PhonList_InsertAt(uint64_t a1, unsigned int a2, char *a3)
{
  result = StringList_InsertAt(a1, a2, a3);
  if (result)
  {

    return LH_ERROR_to_VERROR(result);
  }

  return result;
}

uint64_t CLM_PhonList_Append(uint64_t a1, char *a2)
{
  result = StringList_Append(a1, a2);
  if (result)
  {

    return LH_ERROR_to_VERROR(result);
  }

  return result;
}

uint64_t hlp_AppendCombinedResult(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5, unsigned __int16 *a6)
{
  v12 = *a5;
  if (*a6)
  {
    v13 = 0;
    do
    {
      v14 = v13;
    }

    while (*(v12 + 8 * v13++));
    if (*a6 - 1 != v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = heap_Realloc(*(a1 + 8), v12, 8 * *a6 + 16);
  *a5 = v16;
  if (v16)
  {
    v21 = *a6 + 2;
    *a6 = v21;
    if (v14 < v21)
    {
      v22 = v14;
      do
      {
        *(*a5 + 8 * v22++) = 0;
      }

      while (v21 != v22);
    }

LABEL_11:
    v24 = a2 != 65534 && a3 != 65534;
    v25 = v24;
    if (a4)
    {
      v25 = *(a4 + 4) + v24;
    }

    *(*a5 + 8 * v14) = heap_Calloc(*(a1 + 8), 1, 4 * v25 + 4);
    if (v24)
    {
      v26 = *(*a5 + 8 * v14);
      *v26 = a2;
      v26[1] = a3;
      v27 = 1;
      if (!a4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v27 = 0;
      if (!a4)
      {
LABEL_27:
        result = 0;
        *(*(*a5 + 8 * v14) + 4 * v27) = -1;
        return result;
      }
    }

    if (*(a4 + 4))
    {
      v28 = 0;
      v29 = v27;
      v30 = 4 * v27;
      do
      {
        *(*(*a5 + 8 * v14) + v30 + 4 * v28) = *(*(a4 + 8) + 4 * v28);
        ++v28;
      }

      while (v28 < *(a4 + 4));
      LOWORD(v27) = v29 + v28;
    }

    goto LABEL_27;
  }

  log_OutPublic(*(a1 + 32), "CLM", 50000, 0, v17, v18, v19, v20, v32);
  return 2347769866;
}

uint64_t CLM_EnumerateLanguages(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v66 = *MEMORY[0x1E69E9840];
  v62 = 0;
  v61 = 0;
  v14 = 2347769856;
  v60 = 0;
  *a3 = 0;
  if (CLM_FindNrOfLanguages(a1, a5, a6, a7, v65, 0x64u, v64, a3))
  {
    goto LABEL_36;
  }

  v56 = a4;
  v15 = *a3;
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = heap_Calloc(*(*(a1 + 24) + 8), v15, 24);
  *a2 = v16;
  if (!v16)
  {
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v17, v18, v19, v20, v50);
    v14 = 2347769866;
    goto LABEL_36;
  }

  if (!*a3)
  {
LABEL_29:
    v14 = 0;
    goto LABEL_36;
  }

  v21 = 0;
  v55 = 0;
  v22 = v56;
  v54 = v7;
  v53 = a3;
  do
  {
    __strcpy_chk();
    if (v22 > 1)
    {
      v28 = v64[v21];
    }

    else
    {
      *(*a2 + 24 * v21 + 16) = heap_Calloc(*(*(a1 + 24) + 8), v64[v21], 24);
      v27 = *a2 + 24 * v21;
      if (!*(v27 + 16))
      {
        v46 = 2347769866;
        v45 = 50000;
LABEL_32:
        log_OutPublic(*(*(a1 + 24) + 32), "CLM", v45, 0, v23, v24, v25, v26, v50);
        v47 = v46;
        goto LABEL_33;
      }

      v28 = v64[v21];
      *(v27 + 8) = v28;
    }

    v62 = v7;
    if (v28)
    {
      v29 = 0;
      v30 = 0;
      while (1)
      {
        v31 = *a2;
        v32 = v9;
        v33 = v9;
        v34 = v8;
        LangRecord = CLM_FindLangRecord(v33, v8, &v62, (*a2 + 24 * v21));
        if (!LangRecord)
        {
          v45 = 50003;
          v46 = 2347769856;
          goto LABEL_32;
        }

        v36 = LangRecord;
        if (!v56)
        {
          break;
        }

        if (v56 != 1)
        {
          *(v31 + 24 * v21 + 8) = LangRecord;
          goto LABEL_25;
        }

        v59 = 0;
        *(*(v31 + 24 * v21 + 16) + v29) = LangRecord;
        *(*(*a2 + 24 * v21 + 16) + v29 + 8) = &LangRecord[strlen(LangRecord) + 1];
        v37 = *(*(*a2 + 24 * v21 + 16) + v29 + 8);
        v8 = v34;
        v9 = v32;
        if (*v37)
        {
          v38 = CLM_SplitWordInPhonemes(*(a1 + 24), v37, v63, 0xC8u, 0, &v59);
          if ((v38 & 0x80000000) != 0 || (v42 = v38, v59))
          {
            v43 = (*(*a2 + 24 * v21 + 16) + v29);
            v51 = *v43;
            v52 = v43[1];
            log_OutText(*(*(a1 + 24) + 32), "CLM", 1, 0, "WARNING CLM %s to %s : invalid mapping %s %s", v39, v40, v41, *a2 + 24 * v21);
            v42 = 0;
            v63[0] = 0;
          }

          v58 = 0;
          memset(v57, 0, sizeof(v57));
          Allocator = ooc_utils_createAllocator(v57, *(a1 + 32), *(a1 + 40));
          if (Allocator || (Allocator = PNEW_StringList_Con(v57, *(a1 + 32), *(a1 + 40), (*(*a2 + 24 * v21 + 16) + v29 + 16))) != 0 || (Allocator = StringList_FromSplitString(*(*(*a2 + 24 * v21 + 16) + v29 + 16), v63, 0x20u)) != 0)
          {
            v55 = LH_ERROR_to_VERROR(Allocator);
            goto LABEL_35;
          }

          v55 = v42;
        }

LABEL_26:
        ++v62;
        ++v30;
        v29 += 24;
        if (v30 >= v64[v21])
        {
          goto LABEL_27;
        }
      }

      *(*(v31 + 24 * v21 + 16) + v29) = LangRecord;
      *(*(*a2 + 24 * v21 + 16) + v29 + 16) = &LangRecord[strlen(LangRecord) + 1];
      *(*(*a2 + 24 * v21 + 16) + v29 + 8) = nuance_pcre_compile(*(a1 + 168), *(a1 + 176), v36, 0, &v61, &v60, 0);
LABEL_25:
      v8 = v34;
      v9 = v32;
      goto LABEL_26;
    }

LABEL_27:
    v22 = v56;
    *(*a2 + 24 * v21++ + 4) = v56;
    v7 = v54;
  }

  while (v21 < *v53);
LABEL_35:
  v47 = v55;
  v14 = v55;
  if ((v55 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  CLM_EmptyLanguageStruct(a1, a2, v21);
  v14 = v47;
LABEL_36:
  v48 = *MEMORY[0x1E69E9840];
  return v14;
}

BOOL CLM_FindNrOfLanguages(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  *__dst = 0;
  *a8 = 0;
  bzero(a5, 4 * a6);
  bzero(a7, 4 * a6);
  if (a4 <= a3)
  {
    do
    {
      if (a4 >= a3)
      {
        break;
      }

      strncpy(&__dst[4], (a2 + a4), 3uLL);
      result = CLM_IsSeperationRecord(a2, a4);
      if (!result)
      {
        return result;
      }

      if (CLM_FindLanguageInArray(a5, a6, a7, &__dst[4], __dst))
      {
        if (*__dst >= a6)
        {
          goto LABEL_2;
        }

        strcpy(a5 + 4 * *__dst, &__dst[4]);
        ++*a8;
      }

      v21 = 0;
      v22 = (a2 + a4);
      v23 = a3 - 1 - a4;
      do
      {
        if (!*v22++)
        {
          ++v21;
        }

        ++a4;
      }

      while (v21 <= 1 && v23-- != 0);
    }

    while (a3 != a4);
    return 0;
  }

  else
  {
LABEL_2:
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0, v16, v17, v18, v19, v26);
    return 1;
  }
}

uint64_t CLM_FindLangRecord(uint64_t a1, unsigned int a2, _DWORD *a3, const char *a4)
{
  *__dst = 0;
  v8 = *a3;
  strncpy(__dst, (a1 + v8), 3uLL);
  if (strcmp(a4, __dst))
  {
    v9 = 0;
    while (1)
    {
      v10 = v8;
      if (v8 >= a2 || v9)
      {
        break;
      }

      v11 = 0;
      v12 = 0;
      v13 = a1;
      do
      {
        v15 = *(v13 + v8) == 0;
        v14 = 1 - a2 + v8 + v11;
        *a3 = v8 + v11 + 1;
        if (v15)
        {
          ++v12;
        }

        ++v13;
        ++v11;
        v15 = v12 > 1 || v14 == 0;
      }

      while (!v15);
      v9 = v8 - a2 + v11 == 0;
      LODWORD(v8) = v8 + v11;
      strncpy(__dst, (a1 + (v10 + v11)), 3uLL);
      if (!strcmp(a4, __dst))
      {
        LODWORD(v8) = v10 + v11;
        break;
      }
    }
  }

  if (v8 >= a2)
  {
    return 0;
  }

  else
  {
    return a1 + (v8 + 3);
  }
}

void *CLM_EmptyLanguageStruct(void *result, uint64_t *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = result;
      if (a3)
      {
        v6 = 0;
        v7 = a3;
        while (1)
        {
          v8 = v4 + 24 * v6;
          v9 = *(v8 + 4);
          if (v9 == 1)
          {
            break;
          }

          if (!v9)
          {
            v12 = *(v8 + 8);
            v11 = (v8 + 8);
            v10 = v12;
            v14 = (v11 + 2);
            v13 = *(v11 + 1);
            if (v12)
            {
              v15 = 0;
              v16 = 8;
              do
              {
                if (*(v13 + v16))
                {
                  heap_Free(*(v5[3] + 8), *(v13 + v16));
                  v13 = *v14;
                  *(*v14 + v16) = 0;
                  v10 = *v11;
                }

                ++v15;
                v16 += 24;
              }

              while (v15 < v10);
            }

LABEL_20:
            heap_Free(*(v5[3] + 8), v13);
            *v14 = 0;
            *v11 = 0;
          }

          if (++v6 == v7)
          {
            goto LABEL_22;
          }
        }

        v18 = *(v8 + 8);
        v11 = (v8 + 8);
        v17 = v18;
        v14 = (v11 + 2);
        v13 = *(v11 + 1);
        if (v18)
        {
          v19 = 0;
          v20 = 16;
          do
          {
            if (*(v13 + v20))
            {
              v22 = 0;
              memset(v21, 0, sizeof(v21));
              if (!ooc_utils_createAllocator(v21, v5[4], v5[5]))
              {
                OOC_PlacementDeleteObject(v21, *(*v14 + v20));
              }

              v13 = *v14;
              *(*v14 + v20) = 0;
              v17 = *v11;
            }

            ++v19;
            v20 += 24;
          }

          while (v19 < v17);
        }

        goto LABEL_20;
      }

LABEL_22:
      result = heap_Free(*(v5[3] + 8), v4);
      *a2 = 0;
    }
  }

  return result;
}

BOOL CLM_IsSeperationRecord(uint64_t a1, unsigned int a2)
{
  *__dst = 0;
  strncpy(__dst, (a1 + a2), 3uLL);
  return *__dst != 7173476 || *(a1 + a2 + 3) || *(a1 + a2 + 4);
}

BOOL CLM_FindLanguageInArray(char *__s2, unsigned int a2, uint64_t a3, char *__s1, _DWORD *a5)
{
  v9 = 0;
  if (a2 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2;
  }

  while (strcmp(__s1, __s2) && *__s2)
  {
    ++v9;
    __s2 += 4;
    if (v10 == v9)
    {
      return 1;
    }
  }

  *a5 = v9;
  ++*(a3 + 4 * v9);
  return *__s2 == 0;
}

uint64_t CLM_FindSeperationRecord(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v6 = *a3;
  while (1)
  {
    result = CLM_IsSeperationRecord(a1, v6);
    if (!result)
    {
      break;
    }

    if (v6 <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v6;
    }

    if (v6 < a2)
    {
      v9 = 0;
      v10 = (a1 + v6);
      v11 = ~v6 + v8;
      do
      {
        v12 = *v10++;
        *a3 = ++v6;
        if (!v12)
        {
          ++v9;
        }
      }

      while (v9 <= 1 && v11-- != 0);
    }

    if (v6 == a2)
    {
      return 2347769856;
    }
  }

  *a3 = v6 + 5;
  return result;
}

uint64_t CLM_PreCompileSplitWordRegEx(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  v14[1] = 0;
  strcpy(v17, "[#\\$&'\\.789=\\?@A-Z^_a-z]");
  strcpy(v14, "\\*");
  strcpy(v16, "(\\\\)?[!\\?,\\.;:]");
  if (a1[23] || (v15 = 0, __sprintf_chk(v20, 0, 0x1F4uLL, "(%s%s*(%%%s|%%%s+){0,}(&%s%s*(%%%s|%%%s+){0,}){0,})|(%s%s)", v17, v18, v19, v19, v17, v18, v19, v19, v14, v16), v10 = nuance_pcre_compile(a1[21], a1[22], v20, 0, &v15, &v14[1], 0), v9 = 0, (a1[23] = v10) == 0))
  {
    v9 = 2347769856;
    log_OutPublic(*(a1[3] + 32), "CLM", 50003, 0, a5, a6, a7, a8, v13);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void *CLM_FreePreCompiledSplitWordRegEx(void *result)
{
  v1 = result[23];
  if (v1)
  {
    v2 = result;
    result = heap_Free(*(result[3] + 8), v1);
    v2[23] = 0;
  }

  return result;
}

uint64_t CLM_PreCompileReplacementRegEx(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  strcpy(v16, "(^|[^\\\\])([\\$][0-9]+)");
  if (a1[24] || (v15 = 0, v10 = nuance_pcre_compile(a1[21], a1[22], v16, 0, &v15, &v14, 0), v9 = 0, (a1[24] = v10) == 0))
  {
    v9 = 2347769856;
    log_OutPublic(*(a1[3] + 32), "CLM", 50003, 0, a5, a6, a7, a8, v13);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void *CLM_FreePreCompiledReplacementRegEx(void *result)
{
  v1 = result[24];
  if (v1)
  {
    v2 = result;
    result = heap_Free(*(result[3] + 8), v1);
    v2[24] = 0;
  }

  return result;
}

uint64_t CLM_DeleteNonPhoneChars(uint64_t a1, char *__s)
{
  v4 = *(*(a1 + 24) + 8);
  v5 = strlen(__s);
  v6 = heap_Calloc(v4, 1, v5 + 1);
  if (v6)
  {
    v11 = v6;
    __lasts = 0;
    v12 = strcpy(v6, __s);
    *__s = 0;
    v13 = strtok_r(v12, "\t ", &__lasts);
    if (v13)
    {
      v14 = v13;
      do
      {
        strcat(__s, v14);
        v14 = strtok_r(0, "\t ", &__lasts);
      }

      while (v14);
    }

    heap_Free(*(*(a1 + 24) + 8), v11);
    return 0;
  }

  else
  {
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v7, v8, v9, v10, v16);
    return 2347769866;
  }
}

uint64_t CLM_SplitWordInPhonemes(uint64_t a1, char *__s, char *a3, unsigned int a4, void *a5, _DWORD *a6)
{
  v9 = __s;
  if (a6)
  {
    *a6 = 0;
  }

  if (a3)
  {
    if (a4 <= 2 * strlen(__s))
    {
      return 2347769865;
    }

    *a3 = 0;
  }

  if (a5)
  {
    StringList_Reset(a5);
  }

  v11 = strlen(v9);
  v27 = LhpuCreate(*(a1 + 8));
  if (!v27)
  {
    log_OutPublic(*(a1 + 32), "CLM", 50000, 0, v12, v13, v14, v15, v25);
    return 2347769866;
  }

  v16 = 0;
  v26 = 0;
  v17 = &v9[v11 + 1];
  if (v17 <= v9)
  {
    goto LABEL_31;
  }

  v16 = 0;
  v18 = 1;
  do
  {
    if (*v9 == 18)
    {
      if (a3)
      {
        *&a3[strlen(a3)] = 32;
        *&a3[strlen(a3)] = 18;
      }

LABEL_18:
      v20 = 1;
      goto LABEL_28;
    }

    Symbol = LhplGetSymbol(v9, v27, &v26 + 1, &v26);
    if (Symbol)
    {
      if (Symbol == 1)
      {
        break;
      }

      if (a6)
      {
        *a6 = 1;
      }

      goto LABEL_18;
    }

    if (!v18)
    {
      if (!a3)
      {
        goto LABEL_25;
      }

      *&a3[strlen(a3)] = 32;
LABEL_24:
      kaldi::CuMatrixBase<float>::~CuMatrixBase(v27);
      strcat(a3, v21);
      goto LABEL_25;
    }

    if (a3)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (a5)
    {
      v22 = v27;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(v27);
      v16 = CLM_PhonList_Append(a5, v23);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }
    }

    v18 = 0;
    v20 = v26 + 1;
LABEL_28:
    v9 += v20;
  }

  while (v9 < v17);
  v22 = v27;
LABEL_30:
  if (v22)
  {
LABEL_31:
    LhpuRemove(*(a1 + 8), &v27);
  }

  return v16;
}

uint64_t CLM_SearchAndReplace(uint64_t a1, _BYTE *a2, char *a3, uint64_t a4, char *__s, uint64_t a6, unsigned int a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v48 = 0;
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v44 = strlen(__s);
  if (v44)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v42 = a1;
    do
    {
      if (v16 && *a2 == 94)
      {
        break;
      }

      v17 = strlen(__s);
      if (nuance_pcre_exec(*(a1 + 168), *(a1 + 176), a4, 0, &__s[v16], v17 - v16, 0, 0, v50, 90) < 1)
      {
        break;
      }

      v18 = CLM_InterpretReplacementString(a1, a3, &v48, &v49);
      if ((v18 & 0x80000000) != 0)
      {
        v29 = v18;
        goto LABEL_38;
      }

      v19 = v49;
      if (!v49)
      {
        v16 = *(v50 + v14 + 1) + v16 - *(v50 + v14);
      }

      v20 = LODWORD(v50[0]);
      v21 = v16;
      if (LODWORD(v50[0]))
      {
        do
        {
          *(a6 + v15++) = __s[v21++];
          --v20;
        }

        while (v20);
      }

      v46 = v48;
      if (v19)
      {
        v22 = (v48 + 8);
        for (i = v19; i; --i)
        {
          v24 = *(v22 - 2);
          if (v24 == 1)
          {
            v25 = *(v22 - 1);
            v26 = (2 * v25) | 1;
            v14 = 2 * v25;
            v27 = *(v50 + (2 * v25));
            v28 = (*(v50 + v26) - v27);
            if (v28 + v15 >= a7)
            {
LABEL_23:
              v29 = 2347769865;
              v30 = v42[3];
              goto LABEL_37;
            }

            strncpy((a6 + v15), &__s[v27 + v16], v28);
            v15 = *(v50 + v26) + v15 - *(v50 + v14);
          }

          else if (!v24 && *v22)
          {
            if (v15 + strlen(*v22) >= a7)
            {
              goto LABEL_23;
            }

            strcpy((a6 + v15), *v22);
            v15 += strlen(*v22);
          }

          v22 += 2;
        }
      }

      v16 += DWORD1(v50[0]);
      a1 = v42;
      CLM_FreeListOfTypes(v42, v46, v19);
      v48 = 0;
    }

    while (v16 < v44);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v31 = v44 - v16;
  if (v44 <= v16)
  {
    v31 = 0;
LABEL_34:
    v37 = v31 + v15;
    if (v37 < a7)
    {
      *(a6 + v37) = 0;
      v29 = v16 == 0;
      goto LABEL_38;
    }
  }

  else
  {
    LODWORD(v32) = a7 - v15;
    if (a7 >= v15)
    {
      v32 = v32;
    }

    else
    {
      v32 = 0;
    }

    v33 = &__s[v16];
    v34 = (a6 + v15);
    v35 = v44 - v16;
    while (v32)
    {
      v36 = *v33++;
      *v34++ = v36;
      --v32;
      if (!--v35)
      {
        goto LABEL_34;
      }
    }
  }

  v29 = 2347769865;
  v30 = *(a1 + 24);
LABEL_37:
  log_OutPublic(*(v30 + 32), "CLM", 50002, 0, v10, v11, v12, v13, v40);
LABEL_38:
  v38 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t CLM_InterpretReplacementString(uint64_t a1, char *__s, uint64_t *a3, unsigned int *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  __n = 0;
  v15 = strlen(__s);
  if (v15)
  {
    v16 = *(a1 + 192);
    if (!v16)
    {
      v17 = CLM_PreCompileReplacementRegEx(a1, v8, v9, v10, v11, v12, v13, v14);
      if ((v17 & 0x80000000) != 0)
      {
        v38 = v17;
        goto LABEL_28;
      }

      v16 = *(a1 + 192);
    }

    nuance_pcre_fullinfo(v16, 0, 1, &__n);
    v22 = *(a1 + 24);
    if (__n)
    {
      v23 = heap_Alloc(*(v22 + 8), __n);
      if (v23)
      {
        v28 = v23;
        *a3 = 0;
        v29 = heap_Alloc(*(*(a1 + 24) + 8), (32 * v15) & 0xFFFFFFFE0);
        *a3 = v29;
        if (v29)
        {
          v43 = a4;
          bzero(v29, (32 * v15) & 0xFFFFFFFE0);
          v30 = 0;
          v31 = 0;
          v69 = 0;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v32 = v15;
          v47 = 0u;
          *v48 = 0u;
          while (1)
          {
            memcpy(v28, *(a1 + 192), __n);
            if (nuance_pcre_exec(*(a1 + 168), *(a1 + 176), v28, 0, &__s[v31], v32, 0, 0, &v47, 90) != 3)
            {
              break;
            }

            if (LODWORD(v48[0]))
            {
              *(*a3 + 16 * v30) = 0;
              *(*a3 + 16 * v30 + 8) = heap_Alloc(*(*(a1 + 24) + 8), (LODWORD(v48[0]) + 1));
              v33 = *(*a3 + 16 * v30 + 8);
              if (!v33)
              {
                goto LABEL_26;
              }

              strncpy(v33, &__s[v31], LODWORD(v48[0]));
              *(*(*a3 + 16 * v30++ + 8) + SLODWORD(v48[0])) = 0;
            }

            *(*a3 + 16 * v30) = 1;
            __strncpy_chk();
            v34 = 0;
            v44[HIDWORD(v48[0]) + ~LODWORD(v48[0])] = 0;
            v35 = v44[0];
            if ((v44[0] - 58) >= 0xF6u)
            {
              v34 = 0;
              v36 = &v45;
              do
              {
                v34 = 10 * v34 + (v35 - 48);
                v37 = *v36++;
                v35 = v37;
              }

              while ((v37 - 58) >= 0xF6u);
            }

            *(*a3 + 16 * v30 + 4) = v34;
            v31 += DWORD1(v47);
            ++v30;
            v32 = v15 - v31;
            if (v15 == v31)
            {
              goto LABEL_25;
            }
          }

          *(*a3 + 16 * v30) = 0;
          *(*a3 + 16 * v30 + 8) = heap_Alloc(*(*(a1 + 24) + 8), v32 + 1);
          v39 = *(*a3 + 16 * v30 + 8);
          if (v39)
          {
            strncpy(v39, &__s[v31], v32);
            *(*(*a3 + 16 * v30++ + 8) + v32) = 0;
LABEL_25:
            *v43 = v30;
            heap_Free(*(*(a1 + 24) + 8), v28);
            v38 = 0;
            goto LABEL_28;
          }

LABEL_26:
          v38 = 2347769866;
          heap_Free(*(*(a1 + 24) + 8), v28);
          heap_Free(*(*(a1 + 24) + 8), *a3);
          *a3 = 0;
        }

        else
        {
          v38 = 2347769866;
          heap_Free(*(*(a1 + 24) + 8), v28);
        }
      }

      else
      {
        v38 = 2347769866;
      }

      log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v24, v25, v26, v27, v42);
    }

    else
    {
      log_OutPublic(*(v22 + 32), "CLM", 50003, 0, v18, v19, v20, v21, v42);
      v38 = 2347769856;
    }
  }

  else
  {
    v38 = 0;
    *a4 = 0;
  }

LABEL_28:
  v40 = *MEMORY[0x1E69E9840];
  return v38;
}

void *CLM_FreeListOfTypes(void *result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v4 = result;
    if (a3)
    {
      v5 = a3;
      v6 = (a2 + 8);
      do
      {
        if (*v6)
        {
          heap_Free(*(v4[3] + 8), *v6);
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    v7 = *(v4[3] + 8);

    return heap_Free(v7, a2);
  }

  return result;
}

uint64_t CLM_RemoveInvalidPhonemes(uint64_t a1, int a2, char *a3, char *a4, _DWORD *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  v9 = 2347769864;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) == 0 && a1)
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM RemoveInvalidPhonemes : Begin (%s)", v10, v11, v12, a4);
    v13 = CLM_GiveLanguageBuffer(a3, *(a1 + 152), *(a1 + 160), 2);
    if (v13)
    {
      v14 = v13;
      v15 = CLM_DeleteNonPhoneChars(a1, a4);
      if ((v15 & 0x80000000) != 0)
      {
        v9 = v15;
      }

      else
      {
        v16 = (2 * strlen(a4)) | 1;
        v17 = heap_Alloc(*(*(a1 + 24) + 8), v16);
        if (v17)
        {
          v22 = v17;
          bzero(v17, v16);
          v9 = CLM_SplitWordInPhonemes(*(a1 + 24), a4, v22, v16, 0, 0);
          if ((v9 & 0x80000000) != 0)
          {
            heap_Free(*(*(a1 + 24) + 8), v22);
          }

          else
          {
            __s1 = *(v14 + 8);
            __lasts = 0;
            if (!hlp_ShouldTempWorkAroundVO9614(a1, a3))
            {
              *a4 = 0;
              v28 = strtok_r(v22, " ", &__lasts);
              if (v28)
              {
                v29 = v28;
                do
                {
                  if (*v29 == 84 && !v29[1] && !strcmp(a3, "spm"))
                  {
                    v34 = strcmp((a1 + 56), "SPE");
                    v39 = 0;
                    v38 = 0;
                    v40 = 0;
                    strcpy(__s2, " ");
                    __strcat_chk();
                    __strcat_chk();
                    if (!v34)
                    {
                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    v39 = 0;
                    v38 = 0;
                    v40 = 0;
                    strcpy(__s2, " ");
                    __strcat_chk();
                    __strcat_chk();
                  }

                  if (*v29 != 18 && !strstr(__s1, __s2))
                  {
                    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Wrong L&H+ phoneme %s", v30, v31, v32, v29);
                    if (a5)
                    {
                      *a5 = 1;
                    }

                    goto LABEL_25;
                  }

LABEL_24:
                  strcat(a4, v29);
LABEL_25:
                  v29 = strtok_r(0, " ", &__lasts);
                }

                while (v29);
              }
            }

            heap_Free(*(*(a1 + 24) + 8), v22);
            log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM RemoveInvalidPhonemes : End (%s)", v23, v24, v25, a4);
          }
        }

        else
        {
          log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v18, v19, v20, v21, v33);
          v9 = 2347769866;
        }
      }
    }

    else
    {
      v9 = 2347777677;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t CLM_GiveLanguageBuffer(char *a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = a2;
  if (a2)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a3;
    while (LH_stricmp(v4, a1))
    {
      v4 += 24;
      if (!--v7)
      {
        return 0;
      }
    }

    if (*(v4 + 4) != a4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t hlp_ShouldTempWorkAroundVO9614(uint64_t a1, char *__s1)
{
  if (strcmp(__s1, "mnc") && strcmp(__s1, "mnt") && strcmp(__s1, "cah") && strcmp(__s1, "sic"))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "VO-9614 lang code don't check phonemes against phoneme set (%s).", v4, v5, v6, __s1);
  return 1;
}

uint64_t CLM_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v5 = 2347769863;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v23);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1, a2, NullHandle, v13))
    {
      inited = InitRsrcFunction(a1, a2, &v22);
      if ((inited & 0x80000000) == 0)
      {
        v14 = heap_Calloc(*(v23 + 8), 1, 216);
        v19 = v23;
        if (!v14)
        {
          log_OutPublic(*(v23 + 32), "CLM", 50000, 0, v15, v16, v17, v18, v22);
          return 2347769866;
        }

        v20 = v14;
        v14[4] = a3;
        v14[5] = a4;
        v14[2] = a2;
        v14[3] = v19;
        *v14 = v22;
        v14[1] = a1;
        inited = nuance_pcre_ObjOpen(a3, a4, (v14 + 21));
        if ((inited & 0x80000000) == 0)
        {
          inited = nuance_pcre_Init(*(v20 + 168), *(v20 + 176), 0xAu, 10);
          if ((inited & 0x80000000) == 0)
          {
            *a5 = v20;
            *(a5 + 8) = 63000;
            return CLM_ObjReopen(v20, *(a5 + 8));
          }
        }
      }

      return inited;
    }
  }

  return v5;
}

uint64_t CLM_ObjReopen(uint64_t a1, int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = safeh_HandleCheck(a1, a2, 63000, 216);
  v4 = 2347769864;
  if ((v3 & 0x80000000) != 0 || !a1)
  {
    goto LABEL_35;
  }

  v5 = v3;
  if ((hlp_GetLanguage(*(*(a1 + 24) + 40), v37) & 0x80000000) == 0 && !LH_stricmp((a1 + 56), v37))
  {
    v4 = v5;
    goto LABEL_35;
  }

  CLM_DeInitFromCLMv2Lua(a1);
  Language = CLM_DeInit(a1);
  if ((Language & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  memset(v42, 0, 256);
  v38 = 0;
  Language = hlp_GetLanguage(*(*(a1 + 24) + 40), v39);
  if ((Language & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  __strcat_chk();
  __strcat_chk();
  v7 = brokeraux_ComposeBrokerString(*(a1 + 24), v42, 0, 1, v39, 0, 0, v41, 0x100uLL);
  if (v7 < 0)
  {
    v4 = v7 | 0x8BF02000;
    goto LABEL_35;
  }

  ObjcForThisApi_0 = getObjcForThisApi_0(*(a1 + 24), *a1);
  if (!ObjcForThisApi_0)
  {
    v4 = 2347769856;
    goto LABEL_35;
  }

  if ((objc_GetAddRefCountedObject(ObjcForThisApi_0, v41, IRefCnt_ObjcLoadCLMData, IRefCnt_ObjcUnloadCLMData, a1, &v38) & 0x80000000) != 0)
  {
    v4 = 0;
    *(a1 + 48) = 0;
    *(a1 + 200) = 0;
    goto LABEL_35;
  }

  v4 = 2347777666;
  v9 = *(v38 + 32);
  *(a1 + 48) = v9;
  CLM_UnloadSettings(a1);
  v14 = *(v9 + 40);
  if (!v14)
  {
    v4 = 2347777673;
    goto LABEL_35;
  }

  v15 = *(v9 + 32);
  if (!v15)
  {
    v4 = 2347777665;
    goto LABEL_35;
  }

  if (v14 <= 0x12)
  {
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0, v10, v11, v12, v13, v36);
LABEL_14:
    Language = CLM_InitFromCLMv2Lua(a1, v39);
LABEL_15:
    v4 = Language;
    goto LABEL_35;
  }

  strncpy((a1 + 56), (v15 + 14), 3uLL);
  *(a1 + 59) = 0;
  *(a1 + 60) = *(v15 + 17);
  *(a1 + 61) = *(v15 + 18);
  v40 = 19;
  if ((CLM_EnumerateLanguages(a1, (a1 + 72), (a1 + 80), 1u, *(v9 + 32), *(v9 + 40), 0x13u) & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  if (!*(a1 + 80))
  {
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0, v16, v17, v18, v19, v36);
    goto LABEL_34;
  }

  if ((CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v40) & 0x80000000) != 0)
  {
LABEL_34:
    v4 = 2347777667;
    goto LABEL_35;
  }

  if ((CLM_LoadRules(a1, *(v9 + 32), *(v9 + 40), 0, &v40) & 0x80000000) == 0 && (CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v40) & 0x80000000) == 0 && (CLM_LoadRules(a1, *(v9 + 32), *(v9 + 40), 1, &v40) & 0x80000000) == 0)
  {
    if ((CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v40) & 0x80000000) != 0 || (CLM_EnumerateLanguages(a1, (a1 + 152), (a1 + 160), 2u, *(v9 + 32), *(v9 + 40), v40) & 0x80000000) != 0)
    {
      v4 = 2347777668;
      goto LABEL_35;
    }

    v4 = 2347777671;
    if ((CLM_PreCompileSplitWordRegEx(a1, v20, v21, v22, v23, v24, v25, v26) & 0x80000000) == 0 && (CLM_PreCompileReplacementRegEx(a1, v27, v28, v29, v30, v31, v32, v33) & 0x80000000) == 0)
    {
      *(a1 + 64) = 1;
      goto LABEL_14;
    }
  }

LABEL_35:
  v34 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CLM_ObjClose(uint64_t *a1, int a2)
{
  v3 = 2347769864;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) == 0 && a1)
  {
    CLM_DeInitFromCLMv2Lua(a1);
    v4 = CLM_DeInit(a1);
    if ((v4 & 0x80000000) == 0)
    {
      v4 = nuance_pcre_DeInit(a1[21], a1[22]);
      if ((v4 & 0x80000000) == 0)
      {
        v4 = nuance_pcre_ObjClose(a1[21], a1[22]);
      }
    }

    v3 = v4;
    heap_Free(*(a1[3] + 8), a1);
  }

  return v3;
}

uint64_t CLM_DeInit(uint64_t *a1)
{
  CLM_UnloadSettings(a1);
  if (!a1[6])
  {
    return 0;
  }

  ObjcForThisApi_0 = getObjcForThisApi_0(a1[3], *a1);
  if (!ObjcForThisApi_0)
  {
    return 2347769856;
  }

  v3 = a1[6] + 48;

  return objc_ReleaseObject(ObjcForThisApi_0, v3);
}

uint64_t CLM_ConvertTranscription(uint64_t a1, int a2, char *a3, const char *a4, char *a5, char *a6, char *a7, unsigned int a8)
{
  v66 = 0;
  strcpy(__s2, "ANY");
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v15 = -1947197430;
  v16 = safeh_HandleCheck(a1, a2, 63000, 216);
  v17 = 2347769864;
  if ((v16 & 0x80000000) == 0 && a1)
  {
    if (!*(a1 + 64))
    {
      return 2347777672;
    }

    v17 = 2347777674;
    if (a4)
    {
      v18 = v16;
      v19 = strlen(a4);
      if (v19)
      {
        v20 = v19 + 1;
        if (a8 && v20 > a8)
        {
          return 2347777673;
        }

        if (a8)
        {
          v21 = heap_Alloc(*(*(a1 + 24) + 8), v20);
          if (v21)
          {
            v26 = v21;
            strcpy(v21, a4);
            __src = v26;
            v27 = CLM_RemoveInvalidPhonemes(a1, a2, a3, v26, &v69);
            v28 = v27;
            if (v27 < 0)
            {
              v29 = v27;
              if ((v27 & 0x1FFF) != 0x1E8D)
              {
                v30 = 0;
                v32 = 0;
                v15 = v27;
                goto LABEL_31;
              }
            }

            else if (v69)
            {
              v29 = -1947189627;
            }

            else
            {
              v29 = 0;
            }

            v63 = v29;
            if (!strcmp(a3, __s2))
            {
              v30 = 0;
              v15 = -1947189621;
              goto LABEL_23;
            }

            v61 = a8;
            if ((~v63 & 0x1E8D) != 0 && strcmp((a1 + 56), a3))
            {
              __dst = heap_Alloc(*(*(a1 + 24) + 8), a8 + 1);
              if (__dst)
              {
                if (a6 && a7)
                {
                  v37 = a8 + 1;
                  *a6 = 0;
                  *a7 = 0;
                  if (strlen(a4) <= 0x95)
                  {
                    v38 = &v67;
                    if (hlp_AllocateAndInitializePhonlists(a1, __src, &v68, &v67, &v66) >= 0)
                    {
                      v39 = &v66;
                    }

                    else
                    {
                      v38 = 0;
                      v39 = 0;
                    }
                  }

                  else
                  {
                    a6 = 0;
                    a7 = 0;
                    v38 = 0;
                    v39 = 0;
                  }
                }

                else
                {
                  v37 = a8 + 1;
                  v39 = 0;
                  v38 = 0;
                }

                bzero(__dst, v37);
                strcpy(__dst, __src);
                strcpy(a5, __src);
                v41 = CLM_ApplyRules(a1, *(a1 + 88), *(a1 + 96), a3, __dst, a5, a8, v68, v38, v39);
                if (v41)
                {
                  if (v41 < 0)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v41 = CLM_ApplyRules(a1, *(a1 + 120), *(a1 + 128), a3, __dst, a5, a8, v68, v39, v38);
                if (v41)
                {
                  if (v41 < 0)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v41 = CLM_ApplyRules(a1, *(a1 + 88), *(a1 + 96), __s2, __dst, a5, a8, v68, v38, v39);
                if (v41)
                {
                  if (v41 < 0)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v42 = CLM_ApplyPhonemeMapping(a1, *(a1 + 72), *(a1 + 80), a3, __dst, a5, a8, v68, v39, v38);
                if (v42 < 0)
                {
                  if ((v42 & 0x1FFF) != 0)
                  {
                    v15 = v42;
                  }

                  else
                  {
                    v15 = -1947189621;
                  }

                  v32 = v63;
                  v31 = __src;
                  v30 = __dst;
                  goto LABEL_32;
                }

                strcpy(__dst, a5);
                v41 = CLM_ApplyRules(a1, *(a1 + 104), *(a1 + 112), a3, __dst, a5, a8, v68, v38, v39);
                if (v41)
                {
                  if (v41 < 0)
                  {
                    v43 = (v41 & 0x1FFF) == 0;
                    v44 = 7819;
LABEL_70:
                    if (v43)
                    {
                      v15 = v44;
                    }

                    else
                    {
                      v15 = v41;
                    }

                    v32 = v63;
LABEL_74:
                    v31 = __src;
                    v30 = __dst;
                    goto LABEL_32;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v41 = CLM_ApplyRules(a1, *(a1 + 104), *(a1 + 112), __s2, __dst, a5, a8, v68, v39, v38);
                if (v41)
                {
                  if (v41 < 0)
                  {
LABEL_69:
                    v43 = (v41 & 0x1FFF) == 0;
                    v44 = -1947189621;
                    goto LABEL_70;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v45 = a3;
                v30 = __dst;
                v46 = CLM_ApplyRules(a1, *(a1 + 136), *(a1 + 144), v45, __dst, a5, a8, v68, v38, v39);
                if (v46)
                {
                  if (v46 < 0)
                  {
                    if ((v46 & 0x1FFF) != 0)
                    {
                      v15 = v46;
                    }

                    else
                    {
                      v15 = -1947189621;
                    }

                    goto LABEL_23;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v47 = CLM_RemoveInvalidPhonemes(a1, a2, (a1 + 56), a5, &v69);
                v15 = v47;
                if ((v47 & 0x80000000) == 0)
                {
                  v32 = v63;
                  if (v69)
                  {
                    v32 = -1947189626;
                    goto LABEL_31;
                  }

LABEL_86:
                  if (a6 && a7)
                  {
                    *a6 = 0;
                    *a7 = 0;
                    CountStrings = StringList_GetCountStrings(v68);
                    if (v39)
                    {
                      v49 = StringList_GetCountStrings(*v39);
                    }

                    else
                    {
                      v49 = 0;
                    }

                    if (CountStrings)
                    {
                      if (v49 == CountStrings && (CLM_MergeSubsequentInsertionAndDeletions(v68, *v39) & 0x80000000) == 0)
                      {
                        v50 = StringList_GetCountStrings(v68);
                        if (v50 == StringList_GetCountStrings(*v39))
                        {
                          if (v50)
                          {
                            v51 = 0;
                            while (1)
                            {
                              v52 = strlen(a6);
                              v53 = StringList_GetAt(v68, v51);
                              if (v52 + strlen(v53) + 1 >= v61)
                              {
                                break;
                              }

                              v54 = strlen(a7);
                              v55 = StringList_GetAt(*v39, v51);
                              if (v54 + strlen(v55) + 1 >= v61)
                              {
                                break;
                              }

                              v56 = StringList_GetAt(v68, v51);
                              v57 = strcat(a6, v56);
                              *&a6[strlen(v57)] = 32;
                              v58 = StringList_GetAt(*v39, v51);
                              v59 = strcat(a7, v58);
                              *&a7[strlen(v59)] = 32;
                              if (v50 <= ++v51)
                              {
                                goto LABEL_74;
                              }
                            }

                            *a6 = 0;
                            *a7 = 0;
                          }
                        }
                      }
                    }

                    goto LABEL_74;
                  }

                  goto LABEL_31;
                }

                v32 = 7821;
                if ((v47 & 0x1FFF) == 0x1E8D)
                {
                  goto LABEL_86;
                }
              }

              else
              {
                log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v33, v34, v35, v36, v60);
                v30 = 0;
              }

LABEL_23:
              v32 = v63;
LABEL_31:
              v31 = __src;
              goto LABEL_32;
            }

            v31 = __src;
            strcpy(a5, __src);
            v30 = 0;
            v15 = v28;
            v32 = v63;
          }

          else
          {
            log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v22, v23, v24, v25, v60);
            v30 = 0;
            v31 = 0;
            v32 = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v15 = v18;
        }

LABEL_32:
        hlp_FreePhonlist(a1, &v68);
        hlp_FreePhonlist(a1, &v67);
        hlp_FreePhonlist(a1, &v66);
        if (v31)
        {
          heap_Free(*(*(a1 + 24) + 8), v31);
        }

        if (v30)
        {
          heap_Free(*(*(a1 + 24) + 8), v30);
        }

        if (v15 >= 0)
        {
          return v32;
        }

        else
        {
          return v15;
        }
      }
    }
  }

  return v17;
}

uint64_t hlp_AllocateAndInitializePhonlists(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  Allocator = ooc_utils_createAllocator(v14, *(a1 + 32), *(a1 + 40));
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  Allocator = PNEW_StringList_Con(v14, *(a1 + 32), *(a1 + 40), a3);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  Allocator = PNEW_StringList_Con(v14, *(a1 + 32), *(a1 + 40), a4);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  Allocator = PNEW_StringList_Con(v14, *(a1 + 32), *(a1 + 40), a5);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  LODWORD(result) = CLM_SplitWordInPhonemes(*(a1 + 24), a2, 0, 0, *a3, &v13);
  if ((result & 0x80000000) != 0 || v13)
  {
    if (result < 0)
    {
      return result;
    }

    else
    {
      return 2347769856;
    }
  }

  else
  {
    LODWORD(result) = CLM_SplitWordInPhonemes(*(a1 + 24), a2, 0, 0, *a4, &v13);
    if (v13)
    {
      v12 = result <= -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    else
    {
      return 2347769856;
    }
  }
}

uint64_t CLM_ApplyRules(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, char *a5, char *a6, unsigned int a7, void *a8, void **a9, void **a10)
{
  v32 = 0;
  v17 = hlp_CheckDoAlignment(a8, a9, a10);
  v18 = CLM_GiveLanguageBuffer(a4, a2, a3, 0);
  if (v18)
  {
    v19 = v18;
    if (*(v18 + 8))
    {
      v31 = v17;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = CLM_SearchAndReplace(a1, *(*(v19 + 16) + v20), *(*(v19 + 16) + v20 + 16), *(*(v19 + 16) + v20 + 8), a5, a6, a7);
        v24 = v23;
        if (v23)
        {
          if ((v23 & 0x80000000) != 0)
          {
            break;
          }
        }

        else
        {
          strcpy(a5, a6);
          if (v31)
          {
            if (!v22)
            {
              v22 = 1;
              if ((CLM_SplitWordInPhonemes(*(a1 + 24), a6, 0, 0, *a10, &v32) & 0x80000000) == 0 && !v32)
              {
                if ((CLM_AlignPhonlists(*(a1 + 24), a8, *a9, *a10) & 0x80000000) != 0)
                {
                  v22 = 1;
                }

                else
                {
                  v25 = *a9;
                  *a9 = *a10;
                  *a10 = v25;
                  StringList_Reset(v25);
                  v22 = 0;
                }
              }
            }
          }
        }

        ++v21;
        v20 += 24;
      }

      while (v21 < *(v19 + 8));
      if (v31)
      {
        v26 = *a10;
        *a10 = *a9;
        *a9 = v26;
        if (v22)
        {
          StringList_Reset(a8);
          StringList_Reset(*a9);
          StringList_Reset(*a10);
        }
      }
    }

    else
    {
      v24 = 0;
      if (v17)
      {
        v28 = *a10;
        *a10 = *a9;
        *a9 = v28;
      }
    }
  }

  else
  {
    if (v17)
    {
      v27 = *a10;
      *a10 = *a9;
      *a9 = v27;
    }

    return 1;
  }

  return v24;
}

uint64_t CLM_ApplyPhonemeMapping(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, char *a5, char *a6, unsigned int a7, void *a8, void **a9, void **a10)
{
  v62 = 0;
  v63 = 0;
  v16 = CLM_GiveLanguageBuffer(a4, a2, a3, 1);
  v20 = 2347769856;
  if (!v16)
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Invalid Language : %s", v17, v18, v19, a4);
    return v20;
  }

  if (a6)
  {
    v21 = v16;
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    Allocator = ooc_utils_createAllocator(v64, *(a1 + 32), *(a1 + 40));
    if (Allocator || (Allocator = PNEW_StringList_Con(v64, *(a1 + 32), *(a1 + 40), &v63)) != 0)
    {
      v23 = LH_ERROR_to_VERROR(Allocator);
    }

    else
    {
      v23 = CLM_SplitWordInPhonemes(*(a1 + 24), a5, 0, 0, v63, 0);
    }

    v24 = v23;
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_36;
    }

    v61 = v23;
    *&v64[0] = 0;
    v60 = a8;
    v25 = hlp_CheckDoAlignment(a8, a9, a10);
    *a6 = 0;
    if (StringList_GetCountStrings(v63))
    {
      v26 = 0;
      v27 = a7;
      while (1)
      {
        v28 = StringList_GetAt(v63, v26);
        hlp_FindPhonemeMapping(v21 + 8, v28, v64, &v62);
        if (*&v64[0])
        {
          v28 = *&v64[0];
        }

        v29 = strlen(a6);
        if (v29 + strlen(v28) + 1 > v27)
        {
          break;
        }

        strcat(a6, v28);
        if (StringList_GetCountStrings(v63) <= ++v26)
        {
          goto LABEL_13;
        }
      }

      log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0, v30, v31, v32, v33, v58);
      return v20;
    }

LABEL_13:
    if (!v25)
    {
      v24 = v61;
      goto LABEL_36;
    }

    v34 = v63;
    v24 = v61;
    if (!v63)
    {
      goto LABEL_36;
    }

    v35 = *a9;
    if (!*a9)
    {
      goto LABEL_36;
    }

    CountStrings = StringList_GetCountStrings(v63);
    v37 = StringList_GetCountStrings(v35);
    v38 = v37;
    v39 = CountStrings != 0;
    if (v37 && CountStrings)
    {
      v59 = v34;
      v40 = 0;
      v41 = 0;
      do
      {
        v39 = CountStrings > v41;
        while (1)
        {
          v42 = StringList_GetAt(v35, v40);
          if (*v42 != 42 || v42[1])
          {
            break;
          }

          if (v38 <= ++v40 || CountStrings <= v41)
          {
            goto LABEL_31;
          }
        }

        v43 = StringList_GetAt(v35, v40);
        v44 = StringList_GetAt(v59, v41);
        v45 = strcmp(v43, v44);
        if (!v45)
        {
          ++v41;
        }

        ++v40;
        v39 = CountStrings > v41;
      }

      while (!v45 && v38 > v40 && CountStrings > v41);
      if (v45)
      {
        goto LABEL_36;
      }

LABEL_31:
      if (v38 <= v40)
      {
LABEL_47:
        if (v39)
        {
          goto LABEL_36;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (!v37)
      {
        goto LABEL_47;
      }

      LOWORD(v40) = 0;
    }

    if (v38 > v40)
    {
      do
      {
        v47 = StringList_GetAt(v35, v40);
        if (*v47 != 42)
        {
          goto LABEL_36;
        }

        if (v47[1])
        {
          break;
        }

        LOWORD(v40) = v40 + 1;
      }

      while (v38 > v40);
      if (v47[1])
      {
        goto LABEL_36;
      }
    }

LABEL_48:
    if (StringList_GetCountStrings(*a9))
    {
      v48 = 0;
      v49 = 0;
      while (1)
      {
        v50 = StringList_GetAt(*a9, v49);
        hlp_FindPhonemeMapping(v21 + 8, v50, v64, &v62);
        v51 = *a9;
        if (!v48)
        {
          break;
        }

        v48 = 1;
LABEL_69:
        if (StringList_GetCountStrings(v51) <= ++v49)
        {
          goto LABEL_36;
        }
      }

      v52 = v62;
      v53 = *a10;
      if (*v50 != 42 || v50[1])
      {
        if (!*&v64[0])
        {
          goto LABEL_66;
        }

        if (**&v64[0])
        {
          if (v62)
          {
            if (StringList_GetCountStrings(v62))
            {
              v54 = 0;
              do
              {
                v55 = StringList_GetAt(v52, v54);
                v56 = CLM_PhonList_Append(v53, v55);
                if (v56 < 0)
                {
                  break;
                }

                if (v54)
                {
                  v57 = CLM_PhonList_InsertAt(v51, ++v49, "*");
                  if (v57 < 0)
                  {
                    goto LABEL_67;
                  }

                  v56 = CLM_PhonList_InsertAt(v60, v49, "*");
                  if (v56 < 0)
                  {
                    break;
                  }
                }

                ++v54;
              }

              while (StringList_GetCountStrings(v52) > v54);
            }

            else
            {
              v56 = 0;
            }
          }

          else
          {
            v56 = -1947197440;
          }

          goto LABEL_68;
        }
      }

      v50 = "*";
LABEL_66:
      v57 = CLM_PhonList_Append(*a10, v50);
LABEL_67:
      v56 = v57;
LABEL_68:
      v48 = v56 >> 31;
      v51 = *a9;
      v24 = v56 & ~(v56 >> 31);
      goto LABEL_69;
    }

LABEL_36:
    hlp_FreePhonlist(a1, &v63);
    return v24;
  }

  return v20;
}

uint64_t hlp_FreePhonlist(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = ooc_utils_createAllocator(v4, *(a1 + 32), *(a1 + 40));
  if (result)
  {
    return LH_ERROR_to_VERROR(result);
  }

  if (a2)
  {
    if (*a2)
    {
      result = OOC_PlacementDeleteObject(v4, *a2);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t CLM_TokenizeTranscription(uint64_t a1, int a2, char *a3, char *a4, unsigned int a5, _DWORD *a6)
{
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) != 0 || !a1)
  {
    return 2347769864;
  }

  v11 = *(a1 + 24);

  return CLM_SplitWordInPhonemes(v11, a3, a4, a5, 0, a6);
}

uint64_t CLM_GetFeClmCompInfo(uint64_t a1, int a2, _DWORD *a3)
{
  *a3 = 0;
  v5 = safeh_HandleCheck(a1, a2, 63000, 216);
  result = 2347769864;
  if ((v5 & 0x80000000) == 0 && a1)
  {
    if (*(a1 + 200))
    {
      v7 = 0;
      result = paramc_ParamGetUInt(*(*(a1 + 24) + 40), "fe_clm_component", &v7);
      if ((result & 0x80000000) == 0)
      {
        *a3 = v7;
      }
    }

    else
    {
      return v5;
    }
  }

  return result;
}

BOOL CLM_HasData(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 63000, 216);
  result = 0;
  if ((v3 & 0x80000000) == 0)
  {
    if (a1)
    {
      return *(a1 + 48) != 0;
    }
  }

  return result;
}

uint64_t CLM_ClassOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2347769863;
  }

  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t hlp_GetLanguage(uint64_t a1, char *a2)
{
  __s = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(a1, "langcode", &__s);
  if ((Str & 0x80000000) == 0)
  {
    v5 = __s;
    if (*__s)
    {
      v6 = 0;
      do
      {
        v7 = v6;
        a2[v6] = __tolower(v5[v6]);
        ++v6;
        v5 = __s;
        v8 = strlen(__s);
      }

      while (v7 <= 1 && v6 < v8);
    }

    else
    {
      v6 = 0;
    }

    a2[v6] = 0;
    if (strcmp(v5, a2))
    {
      return paramc_ParamSetStr(a1, "langcode", a2);
    }
  }

  return Str;
}

uint64_t CLM_GetSuitableLocationOfFeCLMComponent(uint64_t a1, int a2, _DWORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 63000, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2347769864;
  }

  *a3 = *(a1 + 200) != 0;
  return result;
}

uint64_t CLM_ValidateTranscriptionEx(uint64_t a1, int a2, char *a3, char *a4, char *a5, _DWORD *a6, int a7)
{
  v14 = 2347769864;
  v15 = safeh_HandleCheck(a1, a2, 63000, 216);
  if ((v15 & 0x80000000) != 0 || !a1)
  {
    return v14;
  }

  v16 = v15;
  ShouldTempWorkAroundVO9614 = hlp_ShouldTempWorkAroundVO9614(a1, a3);
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) != 0 || !*(a1 + 48))
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : CLM data not available, assume valid transcription", v18, v19, v20, v52);
    *a6 = 1;
    return v16;
  }

  v58 = ShouldTempWorkAroundVO9614;
  v21 = CLM_GiveLanguageBuffer(a3, *(a1 + 152), *(a1 + 160), 2);
  if (!v21)
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : CLM data not available for %s", v22, v23, v24, a3);
    *a6 = 0;
    return v16;
  }

  v25 = v21;
  v59 = 0;
  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : Begin (%s)", v22, v23, v24, a5);
  CLM_GetFeClmCompInfo(a1, a2, &v59);
  v26 = v59;
  if (v59)
  {
    v27 = LH_stricmp((a1 + 56), a3);
    v28 = 0;
    if (!a4 || v27)
    {
      goto LABEL_20;
    }

    if (*a4 && *(a1 + 204))
    {
      v56 = v26;
      v29 = 0;
      v30 = 0;
      while (LH_stricmp((*(a1 + 208) + v29), a4))
      {
        ++v30;
        v29 += 16;
        if (v30 >= *(a1 + 204))
        {
          v28 = 0;
          goto LABEL_41;
        }
      }

      v28 = *(a1 + 208) + v29;
LABEL_41:
      v26 = v56;
      goto LABEL_20;
    }
  }

  v28 = 0;
LABEL_20:
  *a6 = 1;
  v32 = CLM_DeleteNonPhoneChars(a1, a5);
  if ((v32 & 0x80000000) != 0)
  {
    v44 = 0;
    v14 = v32;
  }

  else
  {
    v57 = v26;
    v36 = (2 * strlen(a5)) | 1;
    v37 = heap_Calloc(*(*(a1 + 24) + 8), v36, 1);
    if (v37)
    {
      v42 = *(v25 + 8);
      v43 = v37;
      v54 = v42;
      v55 = v36;
      v14 = CLM_ValidateInForeignLooLoanSet(a1, a5, v37, v36, v42, v58, v28, a6);
      if ((v14 & 0x80000000) != 0)
      {
        v44 = v43;
      }

      else
      {
        v44 = v43;
        if (a7 == 1)
        {
          if (v57)
          {
            if (!*a6)
            {
              v45 = LH_stricmp((a1 + 56), a3);
              if (a4)
              {
                if (!v45 && !*a4 && *(a1 + 204))
                {
                  v46 = 0;
                  for (i = 0; i < *(a1 + 204); ++i)
                  {
                    v48 = *(a1 + 208);
                    *a6 = 1;
                    v14 = CLM_ValidateInForeignLooLoanSet(a1, a5, v43, v55, v54, v58, v48 + v46, a6);
                    if ((v14 & 0x80000000) != 0)
                    {
                      break;
                    }

                    if (*a6 == 1)
                    {
                      strcpy(a4, (v48 + v46));
                      log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Extended phoneme set %s valid, so returned as foreign loan phoneme set", v49, v50, v51, a4);
                      break;
                    }

                    v46 += 16;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v38, v39, v40, v41, v53);
      v44 = 0;
      v14 = 2347769866;
    }
  }

  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : End (%s)", v33, v34, v35, a5);
  if (v44)
  {
    heap_Free(*(*(a1 + 24) + 8), v44);
  }

  return v14;
}

uint64_t CLM_ValidateInForeignLooLoanSet(uint64_t a1, char *a2, char *a3, unsigned int a4, char *a5, int a6, uint64_t a7, _DWORD *a8)
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = CLM_SplitWordInPhonemes(*(a1 + 24), a2, a3, a4, 0, 0);
  if ((v13 & 0x80000000) == 0)
  {
    __lasts = 0;
    v14 = strtok_r(a3, " ", &__lasts);
    *a2 = 0;
    if (v14)
    {
      v15 = v14;
      do
      {
        strcat(a2, v15);
        strcpy(__s2, " ");
        __strcat_chk();
        __strcat_chk();
        if (!a6 && *v15 != 18 && !strstr(a5, __s2))
        {
          if (a7 && (v19 = *(a7 + 4), *(a7 + 4)))
          {
            v20 = *(a7 + 8);
            while (strcmp(v15, *v20))
            {
              v20 += 3;
              if (!--v19)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
LABEL_12:
            log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Wrong L&H+ phoneme %s", v16, v17, v18, v15);
            *a8 = 0;
          }
        }

        v15 = strtok_r(0, " ", &__lasts);
      }

      while (v15);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t CLM_ValidateTranscription(uint64_t a1, int a2, char *a3, uint64_t a4, char *a5, _DWORD *a6)
{
  if (a4)
  {
    v11 = &v13;
    __strcpy_chk();
  }

  else
  {
    v11 = 0;
  }

  return CLM_ValidateTranscriptionEx(a1, a2, a3, v11, a5, a6, 0);
}

uint64_t CLM_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2347769857;
  }

  result = 0;
  *a2 = &ICLM;
  return result;
}

void *hlp_CheckDoAlignment(void *result, void **a2, void **a3)
{
  if (result)
  {
    CountStrings = StringList_GetCountStrings(result);
    result = 0;
    if (a2)
    {
      if (CountStrings)
      {
        result = *a2;
        if (*a2)
        {
          v6 = StringList_GetCountStrings(result);
          result = 0;
          if (a3)
          {
            if (v6)
            {
              result = *a3;
              if (*a3)
              {
                StringList_Reset(result);
                return (CountStrings == v6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_FindPhonemeMapping(uint64_t result, char *__s2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  v4 = *result;
  if (v4)
  {
    v8 = result;
    v9 = 0;
    v10 = *(result + 8);
    v11 = 24 * v4;
    while (1)
    {
      result = *(v10 + v9);
      if (result)
      {
        v12 = *(v10 + v9 + 8);
        if (v12)
        {
          result = strcmp(result, __s2);
          if (!result)
          {
            break;
          }
        }
      }

      v9 += 24;
      if (v11 == v9)
      {
        return result;
      }
    }

    *a3 = v12;
    *a4 = *(*(v8 + 8) + v9 + 16);
  }

  return result;
}

void *CLM_UnloadSettings(uint64_t a1)
{
  CLM_EmptyLanguageStruct(a1, (a1 + 88), *(a1 + 96));
  *(a1 + 96) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 104), *(a1 + 112));
  *(a1 + 112) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 120), *(a1 + 128));
  *(a1 + 128) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 136), *(a1 + 144));
  *(a1 + 144) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 72), *(a1 + 80));
  *(a1 + 80) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 152), *(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 64) = 0;
  CLM_FreePreCompiledSplitWordRegEx(a1);

  return CLM_FreePreCompiledReplacementRegEx(a1);
}

uint64_t getObjcForThisApi_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  __s1 = 0;
  if (a1 && a2)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !strcmp(__s1, "internal"))
    {
      a1 = a2;
    }

    return *(a1 + 48);
  }

  return result;
}

uint64_t IRefCnt_ObjcLoadCLMData(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v51 = 0;
  inited = InitRsrcFunction(a1, a2, &v51);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v11 = 2347769856;
  v12 = heap_Calloc(*(v51 + 8), 1, 304);
  *(a5 + 48) = v12;
  if (!v12)
  {
    log_OutPublic(*(*(a5 + 24) + 32), "CLM", 50000, 0, v13, v14, v15, v16, v50);
    v11 = 2347769866;
    goto LABEL_39;
  }

  *v12 = v51;
  v12[1] = a1;
  v12[2] = a2;
  if (strlen(a3) - 256 < 0xFFFFFFFFFFFFFEFFLL)
  {
    goto LABEL_39;
  }

  strcpy((*(a5 + 48) + 48), a3);
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  strcpy(v55, "CLMP");
  memset(v77, 0, sizeof(v77));
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  *&v63[5] = 0u;
  v53 = 0;
  v17 = *(a5 + 48);
  inited = hlp_GetLanguage(*(*(a5 + 24) + 40), __s2);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  if ((paramc_ParamGetStr(*(*(a5 + 24) + 40), "clcpppipelinemode", &v53) & 0x80000000) != 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = 1;
    if (v53)
    {
      v18 = *v53 == 0;
    }
  }

  v19 = *(*v17 + 24);
  if (v19)
  {
    v20 = "clm";
  }

  else
  {
    v20 = "clm.dat";
  }

  if (v19)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v22 = ssftriff_reader_ObjOpen(v17[1], v17[2], v21, v20, v55, 1031, &v58);
  if ((v22 & 0x80000000) == 0)
  {
    v30 = 0;
    while (!v30 && (ssftriff_reader_OpenChunk(v58, &v59, &v56, &v57, v26, v27, v28, v29) & 0x80000000) == 0)
    {
      if (v59 ^ 0x504D4C43 | v60)
      {
        goto LABEL_21;
      }

      v52 = 256;
      v31 = ssftriff_reader_ReadStringZ(v58, v57, v56, 0, __s1, &v52);
      if ((v31 & 0x80000000) != 0)
      {
        goto LABEL_42;
      }

      if (!strstr(__s1, __s2))
      {
LABEL_21:
        v30 = 0;
      }

      else
      {
        v31 = ssftriff_reader_DetachChunkData(v58, v17 + 3, v17 + 4, v32, v33, v34, v35, v36);
        if ((v31 & 0x80000000) != 0)
        {
LABEL_42:
          v11 = v31;
          ssftriff_reader_CloseChunk(v58);
          ssftriff_reader_ObjClose(v58, v43, v44, v45, v46, v47, v48, v49);
          goto LABEL_39;
        }

        v37 = v52 | 0xFFFFFFFC;
        if ((v52 & 3) == 0)
        {
          v37 = 0;
        }

        v38 = v52 - v37;
        v17[4] += v38;
        v30 = 1;
        *(v17 + 10) = v56 - v38;
        *(v17 + 11) = 1;
      }

      v39 = ssftriff_reader_CloseChunk(v58);
      if ((v39 & 0x80000000) != 0)
      {
        v11 = v39;
        ssftriff_reader_ObjClose(v58, v23, v24, v25, v26, v27, v28, v29);
        v17[3] = 0;
        goto LABEL_39;
      }
    }

    v11 = ssftriff_reader_ObjClose(v58, v23, v24, v25, v26, v27, v28, v29);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v18)
  {
    v11 = v22;
    log_OutPublic(*(*(a5 + 24) + 32), "CLM", 30006, "%s", v26, v27, v28, v29, "clm.dat not found");
    goto LABEL_39;
  }

  strcpy(v63, "clm/");
  __strcat_chk();
  inited = brokeraux_ComposeBrokerString(*(a5 + 24), v63, 0, 1, __s2, 0, 0, v62, 0x100uLL);
  if ((inited & 0x80000000) != 0 || (inited = brk_DataOpenEx(*(*v17 + 24), v62, 1, (v17 + 3)), (inited & 0x80000000) != 0))
  {
LABEL_38:
    v11 = inited;
  }

  else
  {
    *(v17 + 10) = 0;
    v11 = brk_DataMapEx(*(*v17 + 24), v17[3], 0, (v17 + 5), (v17 + 4));
    if ((v11 & 0x80000000) == 0)
    {
LABEL_33:
      *(a4 + 32) = *(a5 + 48);
      goto LABEL_41;
    }

    brk_DataClose(*(*v17 + 24), v17[3]);
  }

LABEL_39:
  v40 = *(a5 + 48);
  if (v40)
  {
    heap_Free(*(v51 + 8), v40);
    *(a5 + 48) = 0;
  }

LABEL_41:
  v41 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t IRefCnt_ObjcUnloadCLMData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 32);
  if (v8)
  {
    if (*(v8 + 44))
    {
      ssftriff_reader_ReleaseChunkData(*(v8 + 24), a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      brk_DataUnmap(*(*v8 + 24), *(v8 + 24), *(v8 + 32));
      brk_DataClose(*(*v8 + 24), *(v8 + 24));
    }

    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    heap_Free(*(*v8 + 8), v8);
  }

  return 0;
}

uint64_t CLM_LoadRules(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int *a5)
{
  v9 = 120;
  if (!a4)
  {
    v9 = 88;
  }

  v10 = 128;
  if (a4)
  {
    v11 = 136;
  }

  else
  {
    v10 = 96;
    v11 = 104;
  }

  if (a4)
  {
    v12 = 144;
  }

  else
  {
    v12 = 112;
  }

  result = CLM_EnumerateLanguages(a1, (a1 + v9), (a1 + v10), 0, a2, a3, *a5);
  if ((result & 0x80000000) == 0)
  {
    if ((CLM_FindSeperationRecord(a2, a3, a5) & 0x80000000) != 0)
    {
      return 2347777666;
    }

    else
    {
      v14 = CLM_EnumerateLanguages(a1, (a1 + v11), (a1 + v12), 0, a2, a3, *a5);
      return v14 & (v14 >> 31);
    }
  }

  return result;
}

uint64_t CLM_GetForeignLoanPhonemeSets(uint64_t a1, int a2, _WORD *a3, void *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 63000, 216);
  result = 2347769864;
  if ((v7 & 0x80000000) == 0)
  {
    if (a1)
    {
      result = 0;
      *a3 = *(a1 + 204);
      *a4 = *(a1 + 208);
    }
  }

  return result;
}

uint64_t fe_normout_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62387, 120);
  if ((result & 0x80000000) != 0)
  {
    return 2340429832;
  }

  if (a1)
  {
    v4 = a1[14];
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
    }

    a1[14] = 0;
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_normout_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62387, 120);
  if ((result & 0x80000000) != 0)
  {
    return 2340429832;
  }

  if (a1)
  {

    return fe_normout_get_fecfg(a1);
  }

  return result;
}

uint64_t fe_normout_get_fecfg(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  v3 = 0;
  *(a1 + 104) = 0;
  result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "usetntag", &v5, &v4, &v3);
  if ((result & 0x80000000) == 0)
  {
    if (v4 == 1 && v5 && **v5 == 49)
    {
      *(a1 + 104) = 1;
    }

    v4 = 0;
    result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "mdesegpos_morpheme_processing", &v5, &v4, &v3);
    if ((result & 0x80000000) == 0 && v4 == 1 && v5 && **v5 == 49)
    {
      *(a1 + 108) = 1;
    }
  }

  return result;
}

uint64_t fe_normout_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62387, 120);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2340429832;
  }
}

uint64_t fe_normout_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v230[16] = *MEMORY[0x1E69E9840];
  v225 = 0;
  v224 = 0;
  v222 = 0;
  v221 = 0;
  LOWORD(v220) = 0;
  v219 = 0;
  v218 = 0;
  v216 = 0;
  __s = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v209 = 0;
  v208 = 1;
  v207 = 1;
  v206 = 1;
  v205 = 0;
  v230[0] = 0x74756F6D726F6ELL;
  if ((safeh_HandleCheck(a1, a2, 62387, 120) & 0x80000000) != 0)
  {
    v10 = 2340429832;
    goto LABEL_37;
  }

  v223 = 0;
  HIWORD(v220) = 0;
  v215 = 0;
  v211 = 0;
  v210 = 0;
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  *a5 = 1;
  v9 = (*(a1[4] + 112))(a1[2], a1[3], &v210, 0);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = v9;
    goto LABEL_37;
  }

  v10 = (*(a1[1] + 104))(a3, a4, 1, 0, &v224 + 2);
  if ((v10 & 0x80000000) == 0 && ((*(a1[1] + 184))(a3, a4, HIWORD(v224), 0, &v214 + 2) & 0x80000000) == 0 && HIWORD(v214) == 1)
  {
    v10 = (*(a1[1] + 176))(a3, a4, HIWORD(v224), 0, &v225, &v222);
    if ((v10 & 0x80000000) == 0 && v222 >= 2u)
    {
      v11 = strlen(v225);
      v12 = heap_Calloc(*(*a1 + 8), 1, v11 + 1);
      if (!v12)
      {
        log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0, v13, v14, v15, v16, v177);
        v10 = 2340429834;
        goto LABEL_37;
      }

      v17 = v12;
      strcpy(v12, v225);
      v18 = (*(a1[1] + 176))(a3, a4, HIWORD(v224), 1, &v211, &v223 + 2);
      if ((v18 & 0x80000000) == 0)
      {
        v23 = HIWORD(v223);
        v24 = *(v211 + 12);
        log_Markers(a1, "Markers IN", v211, HIWORD(v223), v19, v20, v21, v22);
        v229 = 0;
        v227 = 0;
        v228 = 0;
        v226 = 0;
        v25 = (*(a1[1] + 104))(a3, a4, 2, HIWORD(v224), &v229);
        v10 = v25;
        if ((v25 & 0x80000000) == 0)
        {
          v29 = v229;
          if (v229)
          {
            __src = v17;
            v30 = 0;
            while (1)
            {
              v31 = (*(a1[1] + 168))(a3, a4, v29, 0, 1, &v228, &v227 + 2);
              if ((v31 & 0x80000000) != 0)
              {
                break;
              }

              if (v228 > 0xA || ((1 << v228) & 0x610) == 0)
              {
                v36 = 0;
                v35 = v229;
              }

              else
              {
                v31 = (*(a1[1] + 168))(a3, a4, v229, 1, 1, &v227, &v227 + 2);
                if ((v31 & 0x80000000) != 0)
                {
                  break;
                }

                v31 = (*(a1[1] + 168))(a3, a4, v229, 2, 1, &v226, &v227 + 2);
                if ((v31 & 0x80000000) != 0)
                {
                  break;
                }

                v34 = v227 > v30 || v30 < v226;
                v35 = v229;
                if (v34)
                {
                  v30 = v226;
                  v36 = 0;
                }

                else
                {
                  v36 = v229;
                }
              }

              v31 = (*(a1[1] + 120))(a3, a4, v35, &v229);
              if ((v31 & 0x80000000) != 0)
              {
                break;
              }

              if (v36)
              {
                log_OutText(*(*a1 + 32), "FE_NORMOUT", 1, 0, "%s", v26, v27, v28, "Dropping nested word record");
                v31 = (*(a1[1] + 192))(a3, a4, v36);
                if ((v31 & 0x80000000) != 0)
                {
                  break;
                }
              }

              v29 = v229;
              if (!v229)
              {
                v17 = __src;
                goto LABEL_40;
              }
            }

            v10 = v31;
            v97 = 0;
            v44 = 0;
            goto LABEL_81;
          }
        }

        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_78;
        }

LABEL_40:
        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v26, v27, v28, v177);
        *(&v194 + 1) = &v207;
        *&v195 = &v206;
        *&v194 = &v214;
        *&v193 = a1;
        *(&v196 + 1) = v17;
        *&v197 = 0;
        *(&v197 + 1) = &v209;
        *&v198 = &v222 + 2;
        *(&v195 + 1) = &v213 + 2;
        *&v196 = &v208;
        *(&v198 + 1) = &v212;
        *&v199 = &v213;
        *(&v199 + 1) = &v212 + 2;
        v18 = (*(a1[1] + 288))(a3, a4, HIWORD(v224), getSentenceAndInsertedCGNLengthPre, getSentenceAndInsertedCGNLength, 0, getSentenceAndInsertedCGNLengthPost, &v193);
        if ((v18 & 0x80000000) == 0)
        {
          LOWORD(v224) = WORD4(v193);
          v39 = heap_Calloc(*(*a1 + 8), 1, (16 * v214) | 1);
          v44 = v39;
          if (v39)
          {
            *v39 = 0;
            v39[1] = 0;
            v45 = heap_Alloc(*(*a1 + 8), v206 + 128);
            a1[8] = v45;
            if (v45)
            {
              *v45 = 0;
              v46 = heap_Alloc(*(*a1 + 8), v207);
              a1[9] = v46;
              if (v46)
              {
                *v46 = 0;
                v47 = heap_Alloc(*(*a1 + 8), v207);
                a1[10] = v47;
                if (v47)
                {
                  *v47 = 0;
                  v48 = heap_Alloc(*(*a1 + 8), v206 + 128);
                  a1[11] = v48;
                  if (v48)
                  {
                    *v48 = 0;
                    if (!*(a1 + 26))
                    {
                      goto LABEL_49;
                    }

                    v49 = heap_Alloc(*(*a1 + 8), v207);
                    a1[12] = v49;
                    if (v49)
                    {
                      *v49 = 0;
LABEL_49:
                      v208 = 1;
                      *(&v201 + 1) = v44;
                      v50 = (*(a1[1] + 288))(a3, a4, HIWORD(v224), 0, normOutFnc, 0, normOutFncPost, &v193);
                      if ((v50 & 0x80000000) == 0)
                      {
                        v190 = v24;
                        v191 = v23;
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "ORIG   : %s", v51, v52, v53, v17);
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v54, v55, v56, v179);
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L1: %s", v57, v58, v59, a1[8]);
                        v60 = strlen(a1[8]);
                        v50 = (*(a1[4] + 120))(a1[2], a1[3], 0, a1[8], v60);
                        if ((v50 & 0x80000000) == 0)
                        {
                          log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L2: %s", v61, v62, v63, a1[9]);
                          v64 = strlen(a1[9]);
                          v50 = (*(a1[4] + 120))(a1[2], a1[3], 1, a1[9], v64);
                          if ((v50 & 0x80000000) == 0)
                          {
                            log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L3: %s", v65, v66, v67, a1[10]);
                            v68 = strlen(a1[10]);
                            v50 = (*(a1[4] + 120))(a1[2], a1[3], 2, a1[10], v68);
                            if ((v50 & 0x80000000) == 0)
                            {
                              __src = v17;
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L4: %s", v69, v70, v71, a1[11]);
                              v72 = strlen(a1[11]);
                              v73 = (*(a1[4] + 120))(a1[2], a1[3], 3, a1[11], v72);
                              if ((v73 & 0x80000000) != 0)
                              {
                                goto LABEL_101;
                              }

                              if (*(a1 + 26))
                              {
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L5: %s", v74, v75, v76, a1[12]);
                                v77 = strlen(a1[12]);
                                v73 = (*(a1[4] + 136))(a1[2], a1[3], 4, a1[12], v77);
                                if ((v73 & 0x80000000) != 0)
                                {
                                  goto LABEL_101;
                                }
                              }

                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v74, v75, v76, v180);
                              if (((*(a1[4] + 80))(a1[2], a1[3], v230) & 0x80000000) != 0)
                              {
                                v97 = 0;
                                v98 = 0;
                                v10 = 0;
                                goto LABEL_82;
                              }

                              v73 = (*(a1[4] + 128))(a1[2], a1[3], 0, &__s, &v215);
                              if ((v73 & 0x80000000) != 0 || (__s[v215] = 0, log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "O1     : %s", v78, v79, v80, __s), v73 = (*(a1[4] + 128))(a1[2], a1[3], 3, &v216, &v215 + 2), (v73 & 0x80000000) != 0))
                              {
LABEL_101:
                                v10 = v73;
                                v97 = 0;
LABEL_81:
                                v98 = 0;
LABEL_82:
                                v17 = __src;
                                goto LABEL_84;
                              }

                              v216[HIWORD(v215)] = 0;
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "O4     : %s", v81, v82, v83, v216);
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "ORIGL1 : %s", v84, v85, v86, v17);
                              v87 = HIWORD(v215);
                              if (HIWORD(v215))
                              {
                                v88 = 0;
                                v89 = 0;
                                do
                                {
                                  if (v216[v88] == 226 && v216[v88 + 1] == 150 && v216[v88 + 2] == 172)
                                  {
                                    v90 = &__s[v89];
                                    if (*v90 != 226 || v90[1] != 150 || v90[2] != 172)
                                    {
                                      v91 = Utf8_LengthInUtf8chars(v216, v88);
                                      v89 = Utf8_LengthInBytes(__s, v91);
                                      memmove(&__s[v89 + 3], &__s[v89 + 1], v215 - v89);
                                      v92 = &__s[v89];
                                      *v92 = -26910;
                                      v92[2] = -84;
                                      LOWORD(v215) = v215 + 2;
                                      v87 = HIWORD(v215);
                                    }
                                  }

                                  ++v88;
                                  ++v89;
                                }

                                while (v88 < v87);
                              }

                              v93 = v215;
                              if (v215)
                              {
                                v94 = 0;
                                do
                                {
                                  v95 = v94;
                                  if (__s[v94] == 126)
                                  {
                                    if (v94 < v93)
                                    {
                                      do
                                      {
                                        __s[v95] = __s[v95 + 1];
                                        ++v95;
                                        v93 = v215;
                                      }

                                      while (v95 < v215);
                                    }

                                    LOWORD(v215) = --v93;
                                    --v94;
                                  }

                                  ++v94;
                                }

                                while (v94 < v93);
                                v96 = v93;
                              }

                              else
                              {
                                v96 = 0;
                              }

                              __s[v96] = 0;
                              __dst = heap_Calloc(*(*a1 + 8), 1, v222 + 1);
                              if (!__dst)
                              {
                                log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0, v104, v105, v106, v107, v181);
                                v97 = 0;
                                v98 = 0;
                                v10 = 2340429834;
                                goto LABEL_82;
                              }

                              v108 = strcpy(__dst, v17);
                              v109 = strlen(v108);
                              v110 = a1[14];
                              *v110 = 0u;
                              v110[1] = 0u;
                              v110[2] = 0u;
                              v110[3] = 0u;
                              v110[4] = 0u;
                              v110[5] = 0u;
                              v110[6] = 0u;
                              v110[7] = 0u;
                              v111 = fe_normout_split_words(a1, a3, a4, __s, a1[14], &v219);
                              if ((v111 & 0x80000000) != 0)
                              {
                                goto LABEL_155;
                              }

                              v111 = fe_normout_split_words(a1, a3, a4, v17, 0, &v219 + 1);
                              if ((v111 & 0x80000000) != 0)
                              {
                                goto LABEL_155;
                              }

                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v112, v113, v114, v181);
                              v115 = v219;
                              v116 = HIWORD(v219);
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "comparing O1 (%d words) and ORIGL1 (%d words) ", v117, v118, v119, v219);
                              if (v116 != v115)
                              {
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "Mismatch number of orthographic words and number of phonetic words : abandon processing", v120, v121, v122, v182);
                                v98 = 0;
                                v10 = 0;
LABEL_156:
                                v97 = __dst;
                                goto LABEL_82;
                              }

                              v220 = 0;
                              v123 = v222;
                              if (!v222)
                              {
                                v152 = 0;
LABEL_148:
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v120, v121, v122, v182);
                                v205 = 0;
                                LOWORD(v219) = 0;
                                v204 = __dst;
                                *&v200 = &v219;
                                *(&v200 + 1) = &v218;
                                *&v202 = 0;
                                *&v201 = &v205;
                                v111 = (*(a1[1] + 288))(a3, a4, HIWORD(v224), 0, MvToEqWordRecUpdFieldsFnc, 0, 0, &v193);
                                if ((v111 & 0x80000000) == 0)
                                {
                                  v98 = *(&v204 + 1);
                                  v153 = v204;
                                  v154 = strlen(v204);
                                  v155 = a4;
                                  v97 = v204;
                                  v156 = (*(a1[1] + 160))(a3, v155, HIWORD(v224), 0, (v154 + 1), v204, &v223);
                                  if ((v156 & 0x80000000) != 0)
                                  {
                                    v10 = v156;
                                  }

                                  else
                                  {
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "new SE_TEXT : %s", v157, v158, v159, v153);
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ", v160, v161, v162, v183);
                                    if (v214)
                                    {
                                      v166 = 0;
                                      v167 = (v44 + 14);
                                      do
                                      {
                                        v168 = *(v167 - 7);
                                        v169 = *(v167 - 3);
                                        v170 = *(v167 - 2);
                                        v171 = *(v167 - 1);
                                        v172 = *v167;
                                        v167 += 8;
                                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "WORDREC[%d] %d,%d --> %d,%d", v163, v164, v165, v168);
                                        ++v166;
                                      }

                                      while (v166 < v214);
                                    }

                                    *(v211 + 16) = strlen(v97);
                                    v210 += v152;
                                    v10 = (*(a1[4] + 104))(a1[2], a1[3]);
                                    if ((v10 & 0x80000000) == 0)
                                    {
                                      log_Markers(a1, "Markers OUT", v211, v191, v173, v174, v175, v176);
                                    }
                                  }

                                  goto LABEL_82;
                                }

                                goto LABEL_155;
                              }

                              v187 = 0;
                              v188 = 0;
                              v184 = v109;
                              while (1)
                              {
                                if (getNextWord(&v220 + 1, &v221 + 1, __src, v123))
                                {
                                  NextWord = getNextWord(&v220, &v221, __s, v215);
                                  v125 = HIWORD(v220);
                                  if (NextWord)
                                  {
                                    v126 = v220;
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "COMPARE WORD[%d] %s and %s", v120, v121, v122, v188);
                                    if (strcmp(&__src[HIWORD(v220)], &__s[v126]))
                                    {
                                      log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "   UPDATE WORD[%d] %s and %s", v120, v121, v122, v188);
                                      v127 = __s;
                                      v128 = strstr(&__s[v126], "▲");
                                      if (v128)
                                      {
                                        v129 = 0;
                                        while (1)
                                        {
                                          *(&v202 + 1) = v128;
                                          *&v203 = v129;
                                          *(&v203 + 1) = &v220 + 2;
                                          v111 = (*(a1[1] + 280))(a3, a4, &v224, updateWordRecFnc, &v193);
                                          if ((v111 & 0x80000000) != 0)
                                          {
                                            break;
                                          }

                                          v134 = *(&v202 + 1);
                                          v129 = v203;
                                          HIWORD(v220) = **(&v203 + 1);
                                          **(&v202 + 1) = 0;
                                          if (!v129)
                                          {
                                            log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43001, "%s%s", v130, v131, v132, v133, "message");
                                            v98 = 0;
                                            v10 = 2340429831;
                                            goto LABEL_156;
                                          }

                                          v135 = strlen((v129 + 3));
                                          memmove(v134, (v129 + 3), v135 + 1);
                                          v127 = __s;
                                          v128 = strstr(&__s[v126], "▲");
                                          if (!v128)
                                          {
                                            goto LABEL_118;
                                          }
                                        }

LABEL_155:
                                        v10 = v111;
                                        v98 = 0;
                                        goto LABEL_156;
                                      }

LABEL_118:
                                      v136 = strlen(&v127[v126]);
                                      v137 = strlen(&__src[HIWORD(v220)]);
                                      v185 = strlen(__dst);
                                      v186 = v136;
                                      v138 = v136;
                                      if (v136 > v137)
                                      {
                                        v139 = (v136 - v137 + v185);
                                        v140 = heap_Realloc(*(*a1 + 8), __dst, (v139 + 1));
                                        if (!v140)
                                        {
                                          v98 = 0;
                                          v10 = 2340429834;
                                          goto LABEL_156;
                                        }

                                        *(v140 + v139) = 0;
                                        __dst = v140;
                                      }

                                      v141 = v138 - v137;
                                      if (v138 == v137)
                                      {
                                        memcpy(&__dst[HIWORD(v220) + v187], &__s[v220], v186);
                                        goto LABEL_138;
                                      }

                                      memmove(&__dst[v138 + v187 + HIWORD(v220)], &__dst[v137 + HIWORD(v220) + v187], v184 - (v137 + HIWORD(v220)));
                                      memcpy(&__dst[HIWORD(v220) + v187], &__s[v220], v186);
                                      updateWordRecs(a1, a3, a4, v44, v214, HIWORD(v220), v137, v186);
                                      if (v191)
                                      {
                                        v142 = 0;
                                        v143 = (v211 + 12);
                                        while (1)
                                        {
                                          v144 = *v143;
                                          v143 += 8;
                                          if (v144 - v190 > (HIWORD(v220) + v187))
                                          {
                                            break;
                                          }

                                          if (v191 == ++v142)
                                          {
                                            goto LABEL_138;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        LOWORD(v142) = 0;
                                      }

                                      if (v191 > v142)
                                      {
                                        v145 = v211;
                                        v142 = v142;
                                        v146 = (v211 + 12);
                                        v147 = v142 - 1;
                                        v148 = (v211 + 12 + 32 * v142);
                                        do
                                        {
                                          if (v142)
                                          {
                                            v149 = v141 + *v148;
                                            if (*(v145 + 32 * v147 + 12) > v149)
                                            {
                                              goto LABEL_137;
                                            }
                                          }

                                          else
                                          {
                                            v149 = v141 + *v146;
                                          }

                                          *v148 = v149;
LABEL_137:
                                          ++v142;
                                          ++v147;
                                          v148 += 8;
                                        }

                                        while (v191 != v142);
                                      }

LABEL_138:
                                      v187 += v186 - v137;
                                      if (v138 < v137 && (v137 - v138) >= 1)
                                      {
                                        v150 = 0;
                                        v151 = v185 - 1;
                                        do
                                        {
                                          __dst[v151] = 0;
                                          ++v150;
                                          --v151;
                                        }

                                        while (v137 - v138 > v150);
                                      }
                                    }

                                    v125 = HIWORD(v221);
                                    LOWORD(v220) = v221;
                                    ++v188;
                                    v123 = v222;
                                  }
                                }

                                else
                                {
                                  v125 = HIWORD(v220);
                                }

                                HIWORD(v220) = v125 + 1;
                                if ((v125 + 1) >= v123)
                                {
                                  v152 = v187;
                                  goto LABEL_148;
                                }
                              }
                            }
                          }
                        }
                      }

                      v10 = v50;
                      v97 = 0;
LABEL_79:
                      v98 = 0;
LABEL_84:
                      heap_Free(*(*a1 + 8), v17);
                      if (v98)
                      {
                        heap_Free(*(*a1 + 8), v98);
                      }

                      if (v44)
                      {
                        heap_Free(*(*a1 + 8), v44);
                      }

                      if (v97)
                      {
                        heap_Free(*(*a1 + 8), v97);
                      }

                      v99 = a1[8];
                      if (v99)
                      {
                        heap_Free(*(*a1 + 8), v99);
                        a1[8] = 0;
                      }

                      v100 = a1[9];
                      if (v100)
                      {
                        heap_Free(*(*a1 + 8), v100);
                        a1[9] = 0;
                      }

                      v101 = a1[10];
                      if (v101)
                      {
                        heap_Free(*(*a1 + 8), v101);
                        a1[10] = 0;
                      }

                      v102 = a1[11];
                      if (v102)
                      {
                        heap_Free(*(*a1 + 8), v102);
                        a1[11] = 0;
                      }

                      v103 = a1[12];
                      if (v103)
                      {
                        heap_Free(*(*a1 + 8), v103);
                        a1[12] = 0;
                      }

                      goto LABEL_37;
                    }
                  }
                }
              }
            }
          }

          log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0, v40, v41, v42, v43, v178);
          v97 = 0;
          v98 = 0;
          v10 = 2340429834;
          goto LABEL_84;
        }
      }

      v10 = v18;
LABEL_78:
      v97 = 0;
      v44 = 0;
      goto LABEL_79;
    }
  }

LABEL_37:
  v37 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t log_Markers(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, a2, a6, a7, a8, v22);
  if (a4)
  {
    v15 = a4;
    v16 = (a3 + 8);
    do
    {
      v17 = *(*a1 + 32);
      v18 = *(v16 - 2);
      v19 = *v16;
      v20 = v16[1];
      v21 = v16[2];
      if (v18 == 0x4000)
      {
        v25 = v16[1];
        v27 = v16[2];
        v23 = *v16;
        result = log_OutText(v17, "FE_NORMOUT", 5, 0, "Marker [type=SYNC] Ref (%d,%d) Cur(%d,%d)", v12, v13, v14, *(v16 - 1));
      }

      else
      {
        v28 = v16[1];
        v29 = v16[2];
        v24 = *(v16 - 1);
        v26 = *v16;
        result = log_OutText(v17, "FE_NORMOUT", 5, 0, "Marker [type=%5u] Ref (%d,%d) Cur(%d,%d)", v12, v13, v14, v18);
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t getSentenceAndInsertedCGNLength(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t *a4)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  __s = 0;
  v8 = *a4;
  v9 = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v23, &v22 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  ++*a4[2];
  v10 = v23;
  if (v23 <= 0xA && ((1 << v23) & 0x610) != 0)
  {
    v11 = a4[6];
    if (!*v11)
    {
      v12 = a4[4];
      ++*a4[3];
      ++*v12;
    }

    *v11 = 0;
    v13 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, &v22, &v22 + 2);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v9 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, &v21, &v22 + 2);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    v14 = Utf8_LengthInUtf8chars((a4[7] + v22), v21 - v22);
    v15 = a4[4];
    *a4[3] += v14;
    *v15 = v21 + *v15 - v22;
    v10 = v23;
  }

  if (v10 == 7)
  {
    v9 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v22 + 2);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    v16 = __s;
    *a4[4] += strlen(__s) + 6;
    *a4[3] += strlen(v16) + 2;
    v10 = v23;
  }

  if (*(*a4 + 104))
  {
    v17 = v10 == 6;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v9 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v22 + 2);
    if ((v9 & 0x80000000) == 0)
    {
      v18 = __s;
      *a4[3] = *a4[3] + 2 * strlen(__s) - 2;
      *a4[4] = *a4[4] + 2 * strlen(v18) - 2;
    }
  }

  return v9;
}

uint64_t normOutFnc(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t *a4)
{
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v61 = 0;
  __s2 = 0;
  __s = 0;
  v8 = *a4;
  *(a4[17] + 16 * *a4[10]) = *a3;
  BacktransPOS = (*(*(v8 + 8) + 168))();
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  *(a4[17] + 16 * *a4[10] + 4) = v67;
  BacktransPOS = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, &v66, &v66 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  v10 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, &v65, &v66 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = v66;
  v12 = a4[17];
  v13 = a4[10];
  *(v12 + 16 * *v13 + 12) = v66;
  *(v12 + 16 * *v13 + 8) = v11;
  v14 = v65;
  *(v12 + 16 * *v13 + 14) = v65;
  *(v12 + 16 * *v13 + 10) = v14;
  v15 = Utf8_LengthInUtf8chars((a4[7] + v66), v65 - v66);
  v16 = v67;
  if (v67 <= 0xA && ((1 << v67) & 0x610) != 0)
  {
    *a4[5] = v65;
    BacktransPOS = (*(*(v8 + 8) + 176))(a1, a2, *a3, 5, &__s2, &v66 + 2);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      return BacktransPOS;
    }

    BacktransPOS = com_mosynt_UseMosynt(*(v8 + 40), *(v8 + 48), *(v8 + 56), &v64);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      return BacktransPOS;
    }

    if (v64)
    {
      BacktransPOS = com_mosynt_GetBacktransPOS(*(v8 + 40), *(v8 + 48), *(v8 + 56), __s2, &v63);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        return BacktransPOS;
      }

      __s2 = &v63;
    }

    v10 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 6, &v61, &v66 + 2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (*(v8 + 104) && !*a4[6])
    {
      v17 = a4[8];
      if (v17 && v66 != *a4[13])
      {
        if (v66 > *a4[12])
        {
          v19 = *a4[11];
          v20 = 2 * strlen(v17) - 2;
          *(*(v8 + 96) + strlen(*(v8 + 96))) = 88;
          v21 = strlen(a4[8]);
          strncat(*(v8 + 96), (a4[8] + 1), v21 - 2);
          if (v20 >= v19)
          {
            *(*(v8 + 96) + strlen(*(v8 + 96))) = 89;
            v24 = strlen(a4[8]);
            strncat(*(v8 + 96), (a4[8] + 1), v24 - 2);
            v25 = *a4[11];
            if (2 * strlen(a4[8]) - 2 > v25)
            {
              do
              {
                *(*(v8 + 64) + strlen(*(v8 + 64))) = 126;
                *(*(v8 + 72) + strlen(*(v8 + 72))) = 126;
                *(*(v8 + 80) + strlen(*(v8 + 80))) = 126;
                *(*(v8 + 88) + strlen(*(v8 + 88))) = 126;
                LODWORD(v25) = v25 + 1;
              }

              while (2 * strlen(a4[8]) - 2 > v25);
            }
          }

          else
          {
            v22 = 2 * strlen(a4[8]) - 2;
            if ((v22 & 0xFFFEu) < *a4[11])
            {
              do
              {
                *(*(v8 + 96) + strlen(*(v8 + 96))) = 126;
                ++v22;
              }

              while (*a4[11] > v22);
            }

            *(*(v8 + 96) + strlen(*(v8 + 96))) = 89;
            v23 = strlen(a4[8]);
            strncat(*(v8 + 96), (a4[8] + 1), v23 - 2);
          }

          a4[8] = 0;
        }
      }

      else if (*a4[9])
      {
        v18 = 0;
        do
        {
          *(*(v8 + 96) + strlen(*(v8 + 96))) = 32;
          ++v18;
        }

        while (v18 < *a4[9]);
      }
    }

    v26 = *a4[6];
    v27 = v66;
    if (v26)
    {
      v28 = 0;
    }

    else
    {
      v29 = v27 - utf8_GetPreviousUtf8Offset(a4[7], v66);
      strncat(*(v8 + 64), (a4[7] + v66 - v29), v29);
      *(*(v8 + 72) + strlen(*(v8 + 72))) = 32;
      *(*(v8 + 80) + strlen(*(v8 + 80))) = 32;
      strncat(*(v8 + 88), (a4[7] + v66 - v29), v29);
      v28 = 1;
      v27 = v66;
    }

    strncat(*(v8 + 64), (a4[7] + v27), v65 - v27);
    strncat(*(v8 + 88), (a4[7] + v66), v65 - v66);
    v15 = Utf8_LengthInUtf8chars((a4[7] + v66), v65 - v66);
    v30 = v15;
    if (v15)
    {
      do
      {
        strncat(*(v8 + 72), __s2, 1uLL);
        strncat(*(v8 + 80), v61, 1uLL);
        --v30;
      }

      while (v30);
    }

    *a4[9] = v15;
    if (*(v8 + 104))
    {
      v31 = a4[8];
      if (v31 && v66 != *a4[13])
      {
        *a4[11] += v28 + v15;
      }

      else
      {
        if (!v26)
        {
          *(*(v8 + 96) + strlen(*(v8 + 96))) = 32;
          v31 = a4[8];
        }

        if (v31)
        {
          *a4[11] = *a4[9];
        }
      }
    }

    *a4[6] = 0;
    v16 = v67;
  }

  if (v16 == 7)
  {
    v32 = strlen(*(v8 + 64));
    v10 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v66 + 2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v59 = a2;
    v33 = strlen(__s);
    v34 = Utf8_LengthInUtf8chars(*(v8 + 64), v32);
    v35 = Utf8_LengthInBytes(*(v8 + 88), v34);
    if (v66 >= *a4[5])
    {
      *(*(v8 + 64) + strlen(*(v8 + 64))) = 11704034;
      strcat(*(v8 + 64), __s);
      v48 = 0;
      *(*(v8 + 64) + strlen(*(v8 + 64))) = 12359394;
      do
      {
        *(*(v8 + 72) + strlen(*(v8 + 72))) = 32;
        *(*(v8 + 80) + strlen(*(v8 + 80))) = 32;
        *(*(v8 + 88) + strlen(*(v8 + 88))) = 126;
        ++v48;
      }

      while (v33 + 2 > v48);
    }

    else
    {
      v36 = v35;
      memmove((*(v8 + 64) + v32 + v66 - *a4[5] + v33 + 6), (*(v8 + 64) + v32 - *a4[5] + v66), *a4[5] - v66 + 1);
      v37 = (*(v8 + 72) + v34 - v15);
      memmove(&v37[v33 + 2], v37, v15 + 1);
      v38 = (*(v8 + 80) + v34 - v15);
      memmove(&v38[v33 + 2], v38, v15 + 1);
      v39 = *a4[5];
      v40 = (*(v8 + 88) + v36 - v39 + v66);
      memmove(&v40[v33 + 2], v40, v39 - v66 + 1);
      v41 = *(v8 + 64) + (v32 - *a4[5] + v66);
      *(v41 + 2) = -78;
      *v41 = -26910;
      v42 = v34 - v15;
      *(*(v8 + 72) + v42) = 32;
      *(*(v8 + 80) + v42) = 32;
      *(*(v8 + 88) + v36 - *a4[5] + v66) = 126;
      v43 = v42 + 1;
      if (v33)
      {
        v44 = 0;
        v45 = v36;
        do
        {
          if (__s[v44])
          {
            *(*(v8 + 64) + v32 + v44 + v66 - *a4[5] + 3) = __s[v44];
          }

          *(*(v8 + 72) + v43 + v44) = 32;
          *(*(v8 + 80) + v43 + v44) = 32;
          *(*(v8 + 88) + v45 - *a4[5] + v66 + 1) = 126;
          ++v44;
          ++v45;
        }

        while (v33 != v44);
      }

      v46 = *(v8 + 64) + (v32 + v33 - *a4[5] + v66 + 3);
      *(v46 + 2) = -68;
      *v46 = -26910;
      v47 = v43 + v33;
      *(*(v8 + 72) + v47) = 32;
      *(*(v8 + 80) + v47) = 32;
      *(*(v8 + 88) + v36 + v33 + v66 - *a4[5] + 1) = 126;
    }

    v49 = __s;
    if (a4[8])
    {
      *a4[11] += strlen(__s) + 2;
    }

    *a4[9] += strlen(v49) + 2;
    v16 = v67;
    a2 = v59;
  }

  if (v16 != 6)
  {
LABEL_71:
    ++*a4[10];
    return v10;
  }

  BacktransPOS = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, a4[13], &v66 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  if (*(v8 + 104))
  {
    v50 = a4[8];
    if (v50)
    {
      if (*a4[13] > *a4[12])
      {
        v51 = *a4[11];
        v52 = 2 * strlen(v50) - 2;
        *(*(v8 + 96) + strlen(*(v8 + 96))) = 88;
        v53 = strlen(a4[8]);
        strncat(*(v8 + 96), (a4[8] + 1), v53 - 2);
        if (v52 >= v51)
        {
          *(*(v8 + 96) + strlen(*(v8 + 96))) = 89;
          v56 = strlen(a4[8]);
          strncat(*(v8 + 96), (a4[8] + 1), v56 - 2);
          v57 = *a4[11];
          if (2 * strlen(a4[8]) - 2 > v57)
          {
            do
            {
              *(*(v8 + 64) + strlen(*(v8 + 64))) = 126;
              *(*(v8 + 72) + strlen(*(v8 + 72))) = 126;
              *(*(v8 + 80) + strlen(*(v8 + 80))) = 126;
              *(*(v8 + 88) + strlen(*(v8 + 88))) = 126;
              LODWORD(v57) = v57 + 1;
            }

            while (2 * strlen(a4[8]) - 2 > v57);
          }
        }

        else
        {
          v54 = 2 * strlen(a4[8]) - 2;
          if ((v54 & 0xFFFEu) < *a4[11])
          {
            do
            {
              *(*(v8 + 96) + strlen(*(v8 + 96))) = 126;
              ++v54;
            }

            while (*a4[11] > v54);
          }

          *(*(v8 + 96) + strlen(*(v8 + 96))) = 89;
          v55 = strlen(a4[8]);
          strncat(*(v8 + 96), (a4[8] + 1), v55 - 2);
        }

        a4[8] = 0;
        *a4[9] = 0;
      }
    }
  }

  BacktransPOS = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, a4 + 8, &v66 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  v10 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, a4[12], &v66 + 2);
  if ((v10 & 0x80000000) == 0)
  {
    *a4[11] = *a4[9];
    goto LABEL_71;
  }

  return v10;
}