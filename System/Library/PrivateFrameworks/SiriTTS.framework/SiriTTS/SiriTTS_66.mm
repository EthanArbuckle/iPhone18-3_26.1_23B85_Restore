void *rdr_freedat(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = 0;
    do
    {
      rdr_freeseq(a1, *(*(a2 + 16) + 8 * v4++));
    }

    while (v4 < *(a2 + 8));
  }

  heap_Free(*(a1 + 8), *(a2 + 16));
  v5 = *(a1 + 8);

  return heap_Free(v5, a2);
}

uint64_t rdr_readraw(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v7 = *a1;
  *a4 = 0;
  if (!*a2 || !**a2)
  {
    return 0;
  }

  v9 = heap_Alloc(*(v7 + 8), 16);
  if (v9)
  {
    v10 = heap_Calloc(*(v7 + 8), a3, 8);
    *(v9 + 8) = v10;
    if (v10)
    {
      if (!a3)
      {
        v18 = v10;
        v4 = 0;
        goto LABEL_24;
      }

      v11 = 0;
      v12 = MEMORY[0x1E69E9830];
LABEL_8:
      v13 = a2[v11];
      if (v13)
      {
        v14 = strlen(a2[v11]);
        if (!v14)
        {
          goto LABEL_19;
        }

        v15 = v14;
        while (1)
        {
          v16 = v13[v15 - 1];
          if (v16 < 0)
          {
            if (!__maskrune(v13[v15 - 1], 0x4000uLL))
            {
LABEL_17:
              *(*(v9 + 8) + 8 * v11) = heap_Calloc(*(v7 + 8), 1, (v15 + 1));
              v17 = *(*(v9 + 8) + 8 * v11);
              if (!v17)
              {
                if (v11)
                {
                  goto LABEL_37;
                }

                goto LABEL_30;
              }

              strncpy(v17, v13, v15);
LABEL_19:
              if (++v11 == a3)
              {
                v11 = a3;
                goto LABEL_26;
              }

              goto LABEL_8;
            }
          }

          else if ((*(v12 + 4 * v16 + 60) & 0x4000) == 0)
          {
            goto LABEL_17;
          }

          if (!--v15)
          {
            goto LABEL_19;
          }
        }
      }

      if (v11)
      {
LABEL_26:
        v19 = heap_Realloc(*(v7 + 8), *(v9 + 8), 8 * v11);
        *(v9 + 8) = v19;
        if (!v19)
        {
          goto LABEL_36;
        }

        v4 = 0;
        *v9 = v11;
        goto LABEL_37;
      }

      v4 = 0;
LABEL_30:
      if (!*(v9 + 8))
      {
        goto LABEL_36;
      }

      v20 = 0;
      do
      {
        v21 = *(*(v9 + 8) + 8 * v20);
        if (v21)
        {
          heap_Free(*(v7 + 8), v21);
        }

        ++v20;
      }

      while (a3 != v20);
      v18 = *(v9 + 8);
LABEL_24:
      heap_Free(*(v7 + 8), v18);
    }

LABEL_36:
    heap_Free(*(v7 + 8), v9);
    v9 = 0;
  }

LABEL_37:
  *a4 = v9;
  return v4;
}

uint64_t rdr_raw2seq(uint64_t *a1, unsigned int *a2, int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v5 = a4;
  v9 = *a2;
  v10 = *a1;
  *a4 = 0;
  v11 = heap_Alloc(*(v10 + 8), 8 * v9 + 32);
  if (!v11)
  {
    v38 = 0;
    goto LABEL_138;
  }

  v12 = v11;
  v91 = a1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v13 = (v11 + 8);
  v14 = heap_Calloc(*(v10 + 8), v9, 4);
  v13[1] = v14;
  if (!v14)
  {
    v38 = 0;
    goto LABEL_135;
  }

  *v13 = 0;
  if (a3 == 1)
  {
    v15 = heap_Calloc(*(v10 + 8), v9, 8);
    *v13 = v15;
    if (!v15)
    {
LABEL_76:
      v38 = 0;
      goto LABEL_126;
    }
  }

  v88 = v5;
  v89 = v13;
  if (v9)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E9830];
    while (1)
    {
      v18 = *(*(a2 + 1) + 8 * v16);
      if (!v18)
      {
        break;
      }

      v19 = v18 - 1;
      do
      {
        v20 = *(v19 + 1);
        if (v20 < 0)
        {
          v21 = __maskrune(*(v19 + 1), 0x4000uLL);
        }

        else
        {
          v21 = *(v17 + 4 * v20 + 60) & 0x4000;
        }

        ++v19;
      }

      while (v21);
      v22 = strlen(v19) + 1;
      v23 = heap_Alloc(*(v10 + 8), v22);
      if (!v23)
      {
        break;
      }

      v24 = v23;
      memcpy(v23, v19, v22);
      v25 = strlen(v24);
      v26 = heap_Alloc(*(v10 + 8), 8 * ((v25 >> 1) + 1));
      if (!v26)
      {
        break;
      }

      v27 = v26;
      if (!*v24)
      {
        v28 = 0;
        goto LABEL_35;
      }

      v28 = 0;
LABEL_18:
      v27[v28++] = v24;
      v29 = *v24;
      if (*v24)
      {
        do
        {
          if ((v29 & 0x80) != 0)
          {
            if (__maskrune(v29, 0x4000uLL))
            {
LABEL_25:
              if (*v24)
              {
                *v24 = 0;
                while (1)
                {
                  v32 = *++v24;
                  v31 = v32;
                  if (!v32)
                  {
                    break;
                  }

                  if ((v31 & 0x80) != 0)
                  {
                    if (!__maskrune(v31, 0x4000uLL))
                    {
LABEL_32:
                      if (*v24)
                      {
                        goto LABEL_18;
                      }

                      goto LABEL_35;
                    }
                  }

                  else if ((*(v17 + 4 * v31 + 60) & 0x4000) == 0)
                  {
                    goto LABEL_32;
                  }
                }
              }

              break;
            }
          }

          else if ((*(v17 + 4 * v29 + 60) & 0x4000) != 0)
          {
            goto LABEL_25;
          }

          v30 = *++v24;
          v29 = v30;
        }

        while (v30);
      }

LABEL_35:
      v33 = heap_Alloc(*(v10 + 8), 8 * v28);
      *&v12[2 * v16 + 6] = v33;
      if (!v33)
      {
        break;
      }

      *(*(v12 + 2) + 4 * v16) = v28;
      memcpy(v33, v27, 8 * v28);
      heap_Free(*(v10 + 8), v27);
      if (++v16 == v9)
      {
        goto LABEL_37;
      }
    }

LABEL_124:
    v38 = 0;
    goto LABEL_125;
  }

LABEL_37:
  *v12 = v9;
  v34 = *(v91 + 56);
  if (v34)
  {
    v35 = wapiti_rules_apply(v10, v34, v12);
    if ((v35 & 0x80000000) != 0)
    {
      v38 = 0;
LABEL_74:
      v4 = v35;
      goto LABEL_125;
    }
  }

  v36 = *v91;
  v37 = *v12;
  if (!*(v91 + 24))
  {
    if (*(v91 + 8))
    {
      v60 = **(v12 + 2);
    }

    else if (v37)
    {
      v61 = 0;
      v60 = 0;
      v62 = *(v12 + 2);
      v86 = *v12;
      do
      {
        if (*(v62 + 4 * v61))
        {
          v63 = 0;
          do
          {
            v64 = **(*&v12[2 * v61 + 6] + 8 * v63);
            if (v64 == 42)
            {
              v60 += 2;
            }

            else if (v64 == 98 || v64 == 117)
            {
              ++v60;
            }

            else
            {
              v84 = *(*&v12[2 * v61 + 6] + 8 * v63);
              wapiti_fatal(*(v36 + 32), "invalid feature: %s");
              v62 = *(v12 + 2);
            }

            ++v63;
          }

          while (v63 < *(v62 + 4 * v61));
        }

        ++v61;
        v37 = v86;
      }

      while (v61 != v86);
    }

    else
    {
      v60 = 0;
    }

    v38 = heap_Alloc(*(v36 + 8), 32 * v37 + 56);
    if (v38)
    {
      v65 = heap_Alloc(*(v36 + 8), 4 * v60);
      *(v38 + 8) = v65;
      v13 = v89;
      if (!v65)
      {
        v38 = 0;
        goto LABEL_118;
      }

      *v38 = v37;
      *(v38 + 16) = 0;
      if (!v37)
      {
        v4 = 0;
        goto LABEL_118;
      }

      v66 = v65;
      v67 = 0;
      v4 = 0;
      v68 = v38 + 24;
      v90 = v12 + 6;
      v69 = *(v12 + 2);
      v87 = v37;
      do
      {
        v70 = v68 + 32 * v67;
        *v70 = 0xFFFFFFFFLL;
        *(v70 + 16) = v66;
        if (*(v69 + 4 * v67))
        {
          v71 = 0;
          do
          {
            LODWORD(__s) = 0;
            v72 = *(*&v90[2 * v67] + 8 * v71);
            if (*(v91 + 8) || *v72 != 98)
            {
              v4 = rdr_mapobs(v91, v72, &__s);
              if ((v4 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

              if (__s != -1)
              {
                *v66++ = __s;
                ++*(v70 + 4);
              }
            }

            ++v71;
            v69 = *(v12 + 2);
          }

          while (v71 < *(v69 + 4 * v67));
          v13 = v89;
        }

        *(v70 + 8) = 0;
        if (!*(v91 + 8))
        {
          *(v70 + 24) = v66;
          if (*(v69 + 4 * v67))
          {
            v73 = 0;
            do
            {
              LODWORD(__s) = 0;
              v74 = *(*&v90[2 * v67] + 8 * v73);
              if (*v74 != 117)
              {
                v4 = rdr_mapobs(v91, v74, &__s);
                if ((v4 & 0x80000000) != 0)
                {
                  goto LABEL_124;
                }

                if (__s != -1)
                {
                  *v66++ = __s;
                  ++*(v70 + 8);
                }
              }

              ++v73;
              v69 = *(v12 + 2);
            }

            while (v73 < *(v69 + 4 * v67));
            v13 = v89;
          }
        }

        v68 = v38 + 24;
        ++v67;
      }

      while (v67 != v87);
      if (!*v13)
      {
        goto LABEL_118;
      }

      v75 = 0;
      do
      {
        v76 = *(*v89 + v75);
        LODWORD(__s) = 0;
        v4 = qrk_str2id(v36, *(v91 + 40), v76, &__s, 0);
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        *(v38 + 4 * v75 + 24) = __s;
        v75 += 8;
      }

      while (8 * v87 != v75);
    }

LABEL_125:
    v5 = v88;
    v13 = v89;
    goto LABEL_126;
  }

  v38 = heap_Alloc(*(v36 + 8), 32 * v37 + 56);
  if (!v38)
  {
    goto LABEL_125;
  }

  v39 = heap_Alloc(*(v36 + 8), 4 * v37 * (*(v91 + 16) + *(v91 + 12)));
  *(v38 + 8) = v39;
  v5 = v88;
  v13 = v89;
  if (!v39)
  {
    heap_Free(*(v36 + 8), v38);
    goto LABEL_76;
  }

  *v38 = v37;
  *(v38 + 16) = 0;
  if (!v37)
  {
    v4 = 0;
    goto LABEL_126;
  }

  v40 = v38 + 24;
  v41 = (v38 + 48);
  v42 = 4 * *(v91 + 12);
  v43 = v42 + 4 * *(v91 + 16);
  v44 = v37;
  do
  {
    *(v41 - 6) = -1;
    *(v41 - 1) = v39;
    *v41 = v39 + v42;
    v41 += 4;
    v39 += v43;
    --v44;
  }

  while (v44);
  v45 = 0;
  v4 = 0;
  LODWORD(v46) = *(v91 + 24);
  v85 = v37;
  do
  {
    v47 = v40 + 32 * v45;
    *(v47 + 4) = 0;
    *(v47 + 8) = 0;
    if (v46)
    {
      v48 = 0;
      v49 = v91;
      while (1)
      {
        __s = 0;
        v92 = 0;
        v35 = pat_exec(v36, *(*(v49 + 32) + 8 * v48), v12, v45, &__s);
        if ((v35 & 0x80000000) != 0)
        {
          goto LABEL_74;
        }

        v4 = rdr_mapobs(v49, __s, &v92);
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v50 = v92;
        if (v92 != -1)
        {
          break;
        }

        v55 = *(v36 + 8);
        v51 = __s;
LABEL_60:
        heap_Free(v55, v51);
        ++v48;
        v49 = v91;
        v46 = *(v91 + 24);
        if (v48 >= v46)
        {
          v37 = v85;
          v40 = v38 + 24;
          goto LABEL_62;
        }
      }

      v51 = __s;
      v52 = *__s;
      switch(v52)
      {
        case '*':
          v56 = *(v47 + 16);
          v57 = *(v47 + 4);
          *(v47 + 4) = v57 + 1;
          *(v56 + 4 * v57) = v50;
          v50 = v92;
          break;
        case 'b':
          break;
        case 'u':
          v53 = *(v47 + 16);
          v54 = *(v47 + 4);
          *(v47 + 4) = v54 + 1;
LABEL_58:
          *(v53 + 4 * v54) = v50;
          goto LABEL_59;
        default:
LABEL_59:
          v55 = *(v36 + 8);
          goto LABEL_60;
      }

      v53 = *(v47 + 24);
      v54 = *(v47 + 8);
      *(v47 + 8) = v54 + 1;
      goto LABEL_58;
    }

LABEL_62:
    ++v45;
  }

  while (v45 != v37);
  v13 = v89;
  if (*v89)
  {
    v58 = 0;
    do
    {
      v59 = *(*v89 + v58);
      LODWORD(__s) = 0;
      v4 = qrk_str2id(v36, *(v91 + 40), v59, &__s, 0);
      if ((v4 & 0x80000000) != 0)
      {
        break;
      }

      *(v38 + 4 * v58 + 24) = __s;
      v58 += 8;
    }

    while (8 * v37 != v58);
    goto LABEL_125;
  }

LABEL_118:
  v5 = v88;
LABEL_126:
  v77 = *(v12 + 2);
  if (v77)
  {
    if (v9)
    {
      v78 = v13;
      v79 = v5;
      v80 = 0;
      v81 = v12 + 6;
      do
      {
        if (*(*(v12 + 2) + 4 * v80))
        {
          v82 = *&v81[2 * v80];
          if (v82)
          {
            heap_Free(*(v10 + 8), *v82);
            heap_Free(*(v10 + 8), *&v81[2 * v80]);
          }
        }

        ++v80;
      }

      while (v9 != v80);
      v77 = *(v12 + 2);
      v5 = v79;
      v13 = v78;
    }

    heap_Free(*(v10 + 8), v77);
  }

LABEL_135:
  if (*v13)
  {
    heap_Free(*(v10 + 8), *v13);
  }

  heap_Free(*(v10 + 8), v12);
LABEL_138:
  *v5 = v38;
  return v4;
}

uint64_t rdr_raw2seq_qp(uint64_t a1, unsigned int *a2, int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v5 = a4;
  v9 = *a2;
  v10 = *a1;
  *a4 = 0;
  v11 = heap_Alloc(*(v10 + 8), 8 * v9 + 32);
  if (!v11)
  {
    v41 = 0;
LABEL_105:
    *v5 = v41;
    return v4;
  }

  v12 = v11;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v13 = (v11 + 8);
  v94 = v9;
  v14 = heap_Calloc(*(v10 + 8), v9, 4);
  v13[1] = v14;
  if (!v14)
  {
    v41 = 0;
LABEL_102:
    if (*v13)
    {
      heap_Free(*(v10 + 8), *v13);
    }

    heap_Free(*(v10 + 8), v12);
    goto LABEL_105;
  }

  v92 = v5;
  *v13 = 0;
  v15 = a3 == 1;
  v16 = v9;
  if (v15)
  {
    v17 = heap_Calloc(*(v10 + 8), v9, 8);
    *v13 = v17;
    if (!v17)
    {
      v41 = 0;
      goto LABEL_92;
    }
  }

  v91 = v13;
  if (v9)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E9830];
    do
    {
      v20 = *(*(a2 + 1) + 8 * v18);
      if (!v20)
      {
        break;
      }

      v21 = v20 - 1;
      do
      {
        v22 = *(v21 + 1);
        if (v22 < 0)
        {
          v23 = __maskrune(*(v21 + 1), 0x4000uLL);
        }

        else
        {
          v23 = *(v19 + 4 * v22 + 60) & 0x4000;
        }

        ++v21;
      }

      while (v23);
      v24 = strlen(v21) + 1;
      v25 = heap_Alloc(*(v10 + 8), v24);
      if (!v25)
      {
        break;
      }

      v26 = v25;
      memcpy(v25, v21, v24);
      v27 = strlen(v26);
      v28 = heap_Alloc(*(v10 + 8), 8 * ((v27 >> 1) + 1));
      if (!v28)
      {
        break;
      }

      v29 = v28;
      if (!*v26)
      {
        v30 = 0;
        goto LABEL_36;
      }

      v30 = 0;
LABEL_19:
      v29[v30++] = v26;
      v31 = *v26;
      if (*v26)
      {
        do
        {
          if ((v31 & 0x80) != 0)
          {
            if (__maskrune(v31, 0x4000uLL))
            {
LABEL_26:
              if (*v26)
              {
                *v26 = 0;
                while (1)
                {
                  v34 = *++v26;
                  v33 = v34;
                  if (!v34)
                  {
                    break;
                  }

                  if ((v33 & 0x80) != 0)
                  {
                    if (!__maskrune(v33, 0x4000uLL))
                    {
LABEL_33:
                      if (*v26)
                      {
                        goto LABEL_19;
                      }

                      goto LABEL_36;
                    }
                  }

                  else if ((*(v19 + 4 * v33 + 60) & 0x4000) == 0)
                  {
                    goto LABEL_33;
                  }
                }
              }

              break;
            }
          }

          else if ((*(v19 + 4 * v31 + 60) & 0x4000) != 0)
          {
            goto LABEL_26;
          }

          v32 = *++v26;
          v31 = v32;
        }

        while (v32);
      }

LABEL_36:
      v35 = heap_Alloc(*(v10 + 8), 8 * v30);
      *&v12[2 * v18 + 6] = v35;
      if (!v35)
      {
        break;
      }

      *(*(v12 + 2) + 4 * v18) = v30;
      memcpy(v35, v29, 8 * v30);
      heap_Free(*(v10 + 8), v29);
      ++v18;
    }

    while (v18 != v94);
  }

  v16 = v94;
  *v12 = v94;
  v36 = *(a1 + 56);
  if (v36)
  {
    v37 = wapiti_rules_apply(v10, v36, v12);
    if ((v37 & 0x80000000) != 0)
    {
      v41 = 0;
      v4 = v37;
LABEL_91:
      v13 = v91;
LABEL_92:
      v68 = *(v12 + 2);
      if (v68)
      {
        v5 = v92;
        if (v16)
        {
          v69 = v41;
          v70 = 0;
          v71 = v12 + 6;
          do
          {
            if (*(*(v12 + 2) + 4 * v70))
            {
              v72 = *&v71[2 * v70];
              if (v72)
              {
                heap_Free(*(v10 + 8), *v72);
                heap_Free(*(v10 + 8), *&v71[2 * v70]);
              }
            }

            ++v70;
          }

          while (v16 != v70);
          v68 = *(v12 + 2);
          v41 = v69;
        }

        heap_Free(*(v10 + 8), v68);
      }

      else
      {
        v5 = v92;
      }

      goto LABEL_102;
    }
  }

  v38 = *a1;
  v39 = *v12;
  v93 = v39;
  if (!*(a1 + 24))
  {
    if (*(a1 + 8))
    {
      v63 = **(v12 + 2);
    }

    else if (v39)
    {
      v64 = 0;
      v63 = 0;
      v65 = *(v12 + 2);
      do
      {
        if (*(v65 + 4 * v64))
        {
          v66 = 0;
          do
          {
            v67 = **(*&v12[2 * v64 + 6] + 8 * v66);
            if (v67 == 42)
            {
              v63 += 2;
            }

            else if (v67 == 98 || v67 == 117)
            {
              ++v63;
            }

            else
            {
              v88 = *(*&v12[2 * v64 + 6] + 8 * v66);
              wapiti_fatal(*(v38 + 32), "invalid feature: %s");
              v65 = *(v12 + 2);
            }

            ++v66;
          }

          while (v66 < *(v65 + 4 * v64));
        }

        ++v64;
        v39 = v93;
      }

      while (v64 != v93);
    }

    else
    {
      v63 = 0;
    }

    v74 = heap_Alloc(*(v38 + 8), 32 * v39 + 56);
    if (!v74)
    {
      return v4;
    }

    v41 = v74;
    v75 = heap_Alloc(*(v38 + 8), 4 * v63);
    *(v41 + 8) = v75;
    v13 = v91;
    v16 = v94;
    if (!v75)
    {
      return v4;
    }

    *v41 = v93;
    *(v41 + 16) = 0;
    if (v93)
    {
      v76 = v75;
      v77 = 0;
      v90 = v41;
      v78 = v41 + 24;
      v79 = v12 + 6;
      v80 = *(v12 + 2);
      v89 = v78;
      do
      {
        v81 = v78 + 32 * v77;
        *v81 = 0xFFFFFFFFLL;
        *(v81 + 16) = v76;
        if (*(v80 + 4 * v77))
        {
          v82 = 0;
          do
          {
            LODWORD(__s) = 0;
            v83 = *(*&v79[2 * v77] + 8 * v82);
            if (*(a1 + 8) || *v83 != 98)
            {
              v52 = rdr_mapobs_qp(a1, v83, &__s);
              if ((v52 & 0x80000000) != 0)
              {
                return v52;
              }

              if (__s != -1)
              {
                *v76++ = __s;
                ++*(v81 + 4);
              }
            }

            ++v82;
            v80 = *(v12 + 2);
          }

          while (v82 < *(v80 + 4 * v77));
          v16 = v94;
        }

        *(v81 + 8) = 0;
        if (!*(a1 + 8))
        {
          *(v81 + 24) = v76;
          if (*(v80 + 4 * v77))
          {
            v84 = 0;
            do
            {
              LODWORD(__s) = 0;
              v85 = *(*&v79[2 * v77] + 8 * v84);
              if (*v85 != 117)
              {
                v52 = rdr_mapobs_qp(a1, v85, &__s);
                if ((v52 & 0x80000000) != 0)
                {
                  return v52;
                }

                if (__s != -1)
                {
                  *v76++ = __s;
                  ++*(v81 + 8);
                }
              }

              ++v84;
              v80 = *(v12 + 2);
            }

            while (v84 < *(v80 + 4 * v77));
            v16 = v94;
          }
        }

        ++v77;
        v78 = v89;
      }

      while (v77 != v93);
      v13 = v91;
      if (*v91)
      {
        v86 = 0;
        do
        {
          v87 = *(*v91 + v86);
          LODWORD(__s) = 0;
          v4 = qp_str2id(v38, *(a1 + 40), v87, &__s, 0);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          *(v90 + 4 * v86 + 24) = __s;
          v86 += 8;
        }

        while (8 * v93 != v86);
      }

      else
      {
        v4 = 0;
      }

LABEL_142:
      v41 = v90;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_92;
  }

  v40 = heap_Alloc(*(v38 + 8), 32 * v39 + 56);
  if (!v40)
  {
    return v4;
  }

  v41 = v40;
  v42 = heap_Alloc(*(v38 + 8), 4 * v39 * (*(a1 + 16) + *(a1 + 12)));
  *(v41 + 8) = v42;
  if (!v42)
  {
    heap_Free(*(v38 + 8), v41);
    return v4;
  }

  *v41 = v39;
  *(v41 + 16) = 0;
  if (!v39)
  {
    v4 = 0;
    goto LABEL_91;
  }

  v43 = v41 + 24;
  v90 = v41;
  v44 = (v41 + 48);
  v45 = 4 * *(a1 + 12);
  v46 = v45 + 4 * *(a1 + 16);
  v47 = v39;
  v13 = v91;
  do
  {
    *(v44 - 6) = -1;
    *(v44 - 1) = v42;
    *v44 = v42 + v45;
    v44 += 4;
    v42 += v46;
    --v47;
  }

  while (v47);
  v48 = 0;
  v4 = 0;
  LODWORD(v49) = *(a1 + 24);
  do
  {
    v50 = v43 + 32 * v48;
    *(v50 + 4) = 0;
    *(v50 + 8) = 0;
    if (v49)
    {
      v51 = 0;
      while (1)
      {
        __s = 0;
        v95 = 0;
        v52 = pat_exec(v38, *(*(a1 + 32) + 8 * v51), v12, v48, &__s);
        if ((v52 & 0x80000000) != 0)
        {
          return v52;
        }

        v4 = rdr_mapobs_qp(a1, __s, &v95);
        if ((v4 & 0x80000000) != 0)
        {
          return v4;
        }

        v53 = v95;
        if (v95 != -1)
        {
          break;
        }

        v58 = *(v38 + 8);
        v54 = __s;
LABEL_61:
        heap_Free(v58, v54);
        ++v51;
        v49 = *(a1 + 24);
        if (v51 >= v49)
        {
          v13 = v91;
          goto LABEL_63;
        }
      }

      v54 = __s;
      v55 = *__s;
      switch(v55)
      {
        case '*':
          v59 = *(v50 + 16);
          v60 = *(v50 + 4);
          *(v50 + 4) = v60 + 1;
          *(v59 + 4 * v60) = v53;
          v53 = v95;
          break;
        case 'b':
          break;
        case 'u':
          v56 = *(v50 + 16);
          v57 = *(v50 + 4);
          *(v50 + 4) = v57 + 1;
LABEL_59:
          *(v56 + 4 * v57) = v53;
          goto LABEL_60;
        default:
LABEL_60:
          v58 = *(v38 + 8);
          goto LABEL_61;
      }

      v56 = *(v50 + 24);
      v57 = *(v50 + 8);
      *(v50 + 8) = v57 + 1;
      goto LABEL_59;
    }

LABEL_63:
    ++v48;
  }

  while (v48 != v93);
  if (!*v13)
  {
    v41 = v90;
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    goto LABEL_92;
  }

  v61 = 0;
  while (1)
  {
    v62 = *(*v13 + v61);
    LODWORD(__s) = 0;
    v4 = qp_str2id(v38, *(a1 + 40), v62, &__s, 0);
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    *(v90 + 4 * v61 + 24) = __s;
    v61 += 8;
    if (8 * v93 == v61)
    {
      goto LABEL_142;
    }
  }
}

uint64_t rdr_mapobs(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    v7 = strlen(__s);
    v8 = heap_Alloc(*(v6 + 8), (v7 + 2));
    if (!v8)
    {
      return 2585796618;
    }

    v9 = v8;
    v14 = 0;
    *v8 = 117;
    strcpy(v8 + 1, __s);
    v10 = qrk_str2id(v6, *(a1 + 48), v9, &v14, 0);
    if ((v10 & 0x80000000) == 0)
    {
      heap_Free(*(v6 + 8), v9);
      *a3 = v14;
    }

    return v10;
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *a1;

    return qrk_str2id(v12, v11, __s, a3, 0);
  }
}

uint64_t rdr_mapobs_qp(uint64_t a1, char *__s, int *a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    v7 = strlen(__s);
    v8 = heap_Alloc(*(v6 + 8), (v7 + 2));
    if (!v8)
    {
      return 2585796618;
    }

    v9 = v8;
    v14 = 0;
    *v8 = 117;
    strcpy(v8 + 1, __s);
    v10 = qp_str2id(v6, *(a1 + 48), v9, &v14, 0);
    if ((v10 & 0x80000000) == 0)
    {
      heap_Free(*(v6 + 8), v9);
      *a3 = v14;
    }

    return v10;
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *a1;

    return qp_str2id(v12, v11, __s, a3, 0);
  }
}

uint64_t mdl_new(uint64_t a1, void *a2)
{
  v4 = heap_Calloc(*(*a1 + 8), 1, 32904);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *v5 = *a1;
    v5[14] = a1;
  }

  else
  {
    result = 2585796618;
    if (!a2)
    {
      return result;
    }

    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void *mdl_free(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  heap_Free(*(*a1 + 8), a1[7]);
  heap_Free(*(v5 + 8), a1[8]);
  heap_Free(*(v5 + 8), a1[9]);
  v6 = a1[10];
  if (v6)
  {
    xvm_free(v5, v6);
  }

  v7 = a1[11];
  if (a3 == 1)
  {
    if (v7)
    {
      heap_Free(*(v5 + 8), v7);
    }
  }

  else if (v7)
  {
    xvm_free_sparse(v5);
  }

  v8 = a1[12];
  if (v8)
  {
    rdr_freedat(v5, v8);
  }

  v9 = a1[13];
  if (v9)
  {
    rdr_freedat(v5, v9);
  }

  v10 = a1[14];
  if (v10)
  {
    rdr_free(v10);
  }

  v11 = a1[15];
  if (v11)
  {
    heap_Free(*(v5 + 8), v11);
  }

  v12 = *(v5 + 8);

  return heap_Free(v12, a1);
}

void *mdl_free_qp(uint64_t *a1, int a2)
{
  v4 = *a1;
  heap_Free(*(*a1 + 8), a1[7]);
  heap_Free(*(v4 + 8), a1[8]);
  heap_Free(*(v4 + 8), a1[9]);
  v5 = a1[10];
  if (v5)
  {
    xvm_free(v4, v5);
  }

  v6 = a1[11];
  if (a2 == 1)
  {
    if (v6)
    {
      heap_Free(*(v4 + 8), v6);
    }
  }

  else if (v6)
  {
    xvm_free_sparse(v4);
  }

  v7 = a1[12];
  if (v7)
  {
    rdr_freedat(v4, v7);
  }

  v8 = a1[13];
  if (v8)
  {
    rdr_freedat(v4, v8);
  }

  v9 = a1[14];
  if (v9)
  {
    rdr_free_qp(v9);
  }

  v10 = a1[15];
  if (v10)
  {
    heap_Free(*(v4 + 8), v10);
  }

  v11 = *(v4 + 8);

  return heap_Free(v11, a1);
}

uint64_t mdl_sync(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 36);
  started = kbsymtab_PhonStartId(*(*(a1 + 112) + 40));
  v5 = kbsymtab_PhonStartId(*(*(a1 + 112) + 48));
  v6 = v5;
  v7 = *(a1 + 44);
  if (v7 == started && *(a1 + 48) == v5)
  {
    return 0;
  }

  if (started)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    wapiti_fatal(*(v2 + 32), "cannot synchronize an empty model");
    v7 = *(a1 + 44);
  }

  if (v7 == started || v7 == 0)
  {
    v11 = *(a1 + 48);
    v10 = *(a1 + 52);
  }

  else
  {
    wapiti_warning(*(v2 + 32), "labels count changed, discarding the model");
    heap_Free(*(v2 + 8), *(a1 + 56));
    *(a1 + 56) = 0;
    heap_Free(*(v2 + 8), *(a1 + 64));
    *(a1 + 64) = 0;
    heap_Free(*(v2 + 8), *(a1 + 72));
    *(a1 + 72) = 0;
    v12 = *(a1 + 80);
    if (v12)
    {
      xvm_free(v2, v12);
      v10 = 0;
      v11 = 0;
      *(a1 + 80) = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  *(a1 + 44) = started;
  *(a1 + 48) = v6;
  v13 = heap_Realloc(*(v2 + 8), *(a1 + 56), v6);
  *(a1 + 56) = v13;
  v14 = heap_Realloc(*(v2 + 8), *(a1 + 64), 4 * v6);
  *(a1 + 64) = v14;
  v15 = heap_Realloc(*(v2 + 8), *(a1 + 72), 4 * v6);
  v16 = v15;
  *(a1 + 72) = v15;
  if (v13)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v15 != 0)
  {
    v31 = v10;
    v21 = v6 - v11;
    if (v6 > v11)
    {
      v22 = v11;
      while (1)
      {
        v23 = *qrk_id2str(v2, *(*(a1 + 112) + 48), v22);
        if (v23 == 42)
        {
          break;
        }

        if (v23 == 117)
        {
          v24 = 1;
LABEL_41:
          *(v13 + v22) = v24;
LABEL_42:
          *(v14 + 4 * v22) = v10;
          v10 += started;
          v25 = *(v13 + v22);
          goto LABEL_43;
        }

        if (v23 == 98)
        {
          *(v13 + v22) = 2;
LABEL_44:
          *(v16 + 4 * v22) = v10;
          v10 += started * started;
          goto LABEL_45;
        }

        v25 = *(v13 + v22);
        if (v25)
        {
          goto LABEL_42;
        }

LABEL_43:
        if ((v25 & 2) != 0)
        {
          goto LABEL_44;
        }

LABEL_45:
        ++v22;
        if (!--v21)
        {
          goto LABEL_49;
        }
      }

      v24 = 3;
      goto LABEL_41;
    }

LABEL_49:
    *(a1 + 52) = v10;
    v26 = xvm_new(v2, v10);
    v27 = v26;
    if (v31)
    {
      if (v26)
      {
        v28 = 0;
        v29 = *(a1 + 80);
        do
        {
          *(v26 + v28) = *(v29 + v28);
          v28 += 4;
        }

        while (4 * v31 != v28);
        xvm_free(v2, v29);
        *(a1 + 80) = v27;
        goto LABEL_55;
      }
    }

    else
    {
      *(a1 + 80) = v26;
      if (v26)
      {
LABEL_55:
        if (v31 < v10)
        {
          bzero((v27 + 4 * v31), 4 * (v10 + ~v31) + 4);
        }

        qrk_lock(*(*(a1 + 112) + 40), 1);
        qrk_lock(*(*(a1 + 112) + 48), 1);
        return 0;
      }
    }

LABEL_58:
    heap_Free(*(v2 + 8), v13);
    *(a1 + 56) = 0;
    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v13)
  {
    goto LABEL_58;
  }

  if (v14)
  {
LABEL_28:
    heap_Free(*(v2 + 8), v14);
    *(a1 + 64) = 0;
  }

LABEL_29:
  if (v16)
  {
    heap_Free(*(v2 + 8), v16);
    *(a1 + 72) = 0;
  }

  v19 = 2585796618;
  v20 = *(a1 + 80);
  if (v20)
  {
    xvm_free(v2, v20);
    *(a1 + 80) = 0;
  }

  return v19;
}

uint64_t mdl_sync_sparse(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 36);
  started = kbsymtab_PhonStartId(*(*(a1 + 112) + 40));
  v5 = kbsymtab_PhonStartId(*(*(a1 + 112) + 48));
  v6 = v5;
  v7 = *(a1 + 44);
  if (v7 == started && *(a1 + 48) == v5)
  {
    return 0;
  }

  if (started)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    wapiti_fatal(*(v2 + 32), "cannot synchronize an empty model");
    v7 = *(a1 + 44);
  }

  if (v7 == started || v7 == 0)
  {
    v11 = *(a1 + 48);
    v10 = *(a1 + 52);
  }

  else
  {
    wapiti_warning(*(v2 + 32), "labels count changed, discarding the model");
    heap_Free(*(v2 + 8), *(a1 + 56));
    *(a1 + 56) = 0;
    heap_Free(*(v2 + 8), *(a1 + 64));
    *(a1 + 64) = 0;
    heap_Free(*(v2 + 8), *(a1 + 72));
    *(a1 + 72) = 0;
    if (*(a1 + 88))
    {
      xvm_free_sparse(v2);
      v10 = 0;
      v11 = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  *(a1 + 44) = started;
  *(a1 + 48) = v6;
  v12 = heap_Realloc(*(v2 + 8), *(a1 + 56), v6);
  *(a1 + 56) = v12;
  v13 = heap_Realloc(*(v2 + 8), *(a1 + 64), 4 * v6);
  *(a1 + 64) = v13;
  v14 = heap_Realloc(*(v2 + 8), *(a1 + 72), 4 * v6);
  v15 = v14;
  *(a1 + 72) = v14;
  if (v12)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && v14 != 0)
  {
    v30 = v10;
    v20 = v6 - v11;
    if (v6 > v11)
    {
      v10 = v10;
      v21 = v11;
      while (1)
      {
        v22 = *qrk_id2str(v2, *(*(a1 + 112) + 48), v21);
        if (v22 == 42)
        {
          break;
        }

        if (v22 == 117)
        {
          v23 = 1;
LABEL_41:
          *(v12 + v21) = v23;
LABEL_42:
          *(v13 + 4 * v21) = v10;
          v10 = (v10 + started);
          v24 = *(v12 + v21);
          goto LABEL_43;
        }

        if (v22 == 98)
        {
          *(v12 + v21) = 2;
LABEL_44:
          *(v15 + 4 * v21) = v10;
          v10 = (v10 + started * started);
          goto LABEL_45;
        }

        v24 = *(v12 + v21);
        if (v24)
        {
          goto LABEL_42;
        }

LABEL_43:
        if ((v24 & 2) != 0)
        {
          goto LABEL_44;
        }

LABEL_45:
        ++v21;
        if (!--v20)
        {
          goto LABEL_49;
        }
      }

      v23 = 3;
      goto LABEL_41;
    }

LABEL_49:
    *(a1 + 52) = v10;
    v25 = sparray_init(v2, v10);
    v26 = v25;
    if (v30)
    {
      if (v25)
      {
        for (i = 0; i != v30; ++i)
        {
          v28 = sparray_get(*(a1 + 88), i);
          sparray_set(v26, i, v28);
        }

        sparray_free(v2, *(a1 + 88));
        *(a1 + 88) = v26;
        goto LABEL_55;
      }
    }

    else
    {
      *(a1 + 88) = v25;
      if (v25)
      {
LABEL_55:
        qrk_lock(*(*(a1 + 112) + 40), 1);
        qrk_lock(*(*(a1 + 112) + 48), 1);
        return 0;
      }
    }

LABEL_56:
    heap_Free(*(v2 + 8), v12);
    *(a1 + 56) = 0;
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v12)
  {
    goto LABEL_56;
  }

  if (v13)
  {
LABEL_28:
    heap_Free(*(v2 + 8), v13);
    *(a1 + 64) = 0;
  }

LABEL_29:
  if (v15)
  {
    heap_Free(*(v2 + 8), v15);
    *(a1 + 72) = 0;
  }

  v18 = 2585796618;
  v19 = *(a1 + 88);
  if (v19)
  {
    sparray_free(v2, v19);
    *(a1 + 88) = 0;
  }

  return v18;
}

uint64_t pat_comp(uint64_t a1, _BYTE *a2, void *a3)
{
  v6 = 0;
  for (i = 0; a2[i] == 37; ++i)
  {
    ++v6;
LABEL_6:
    ;
  }

  if (a2[i])
  {
    goto LABEL_6;
  }

  v8 = 2585796618;
  v9 = heap_Calloc(*(a1 + 8), 1, 32 * ((2 * v6) | 1u) + 48);
  if (!v9)
  {
    goto LABEL_54;
  }

  v37 = v9;
  v38 = a3;
  *v9 = a2;
  v10 = v9 + 2;
  if (!*a2)
  {
    v12 = 0;
    v11 = 0;
LABEL_52:
    v8 = 0;
    v9 = v37;
    a3 = v38;
    *(v37 + 2) = v12;
    *(v37 + 3) = v11;
    goto LABEL_54;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a2;
  while (2)
  {
    v15 = &v10[4 * v11];
    v15[1] = 0;
    v16 = *v14;
    if (v16 != 37)
    {
      v25 = 1;
      v26 = v13;
      if (v16)
      {
        do
        {
          if (v16 == 37)
          {
            break;
          }

          v26 = (v26 + 1);
          v16 = a2[v26];
          ++v25;
        }

        while (a2[v26]);
      }

      *v15 = 115;
      *(v15 + 1) = 0;
      v27 = heap_Alloc(*(a1 + 8), v25);
      v15[1] = v27;
      if (!v27)
      {
        goto LABEL_53;
      }

      v28 = v25 - 1;
      memcpy(v27, &a2[v13], v28);
      *(v15[1] + v28) = 0;
LABEL_49:
      ++v11;
      v14 = &a2[v26];
      v13 = v26;
      if (!*v14)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  v39 = v12;
  v17 = v10;
  v40 = 0;
  v41 = 0;
  v18 = __tolower(a2[(v13 + 1)]);
  v19 = v18;
  v20 = v18 << 24;
  v21 = v18;
  if (v18 << 24 != 1828716544 && v20 != 1946157056 && v20 != 2013265920)
  {
    wapiti_fatal(*(a1 + 32), "unknown command type: '%c'");
  }

  *v15 = v19;
  *(v15 + 1) = v21 != a2[(v13 + 1)];
  v24 = (v13 + 2);
  *(v15 + 4) = 0;
  if (wapiti_scanf_pat_len(&a2[v24], "[@", &v41, &v41 + 1, &v40) == 2)
  {
    *(v15 + 4) = 1;
    v10 = v17;
  }

  else
  {
    v10 = v17;
    if (wapiti_scanf_pat_len(&a2[v24], "[", &v41, &v41 + 1, &v40) != 2)
    {
      wapiti_fatal(*(a1 + 32), "invalid pattern: %s");
    }
  }

  *(v15 + 5) = v41;
  v29 = HIDWORD(v41);
  *(v15 + 6) = HIDWORD(v41);
  v12 = v39;
  if (v39 <= v29)
  {
    v12 = v29;
  }

  v30 = v24 + v40;
  if (v20 != 1946157056 && v20 != 1828716544)
  {
LABEL_46:
    if (a2[v30] != 93)
    {
      wapiti_fatal(*(a1 + 32), "missing end of pattern: %s");
    }

    v26 = (v30 + 1);
    goto LABEL_49;
  }

  if (a2[v30] != 44 && a2[v30 + 1] != 34)
  {
    wapiti_fatal(*(a1 + 32), "missing arg in pattern: %s");
  }

  v31 = v30 + 2;
  v32 = v30 + 2;
  while (2)
  {
    v33 = a2[v32];
    if (v33 == 92)
    {
      if (a2[v32 + 1])
      {
        ++v32;
      }

LABEL_42:
      ++v32;
      continue;
    }

    break;
  }

  if (a2[v32])
  {
    if (v33 == 34)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  wapiti_fatal(*(a1 + 32), "unended argument: %s");
LABEL_44:
  v34 = v32 - v31;
  v35 = heap_Alloc(*(a1 + 8), (v34 + 1));
  v15[1] = v35;
  if (v35)
  {
    memcpy(v35, &a2[v31], v34);
    *(v15[1] + v34) = 0;
    v30 = v32 + 1;
    goto LABEL_46;
  }

LABEL_53:
  v9 = v37;
  a3 = v38;
  v8 = 2585796618;
LABEL_54:
  *a3 = v9;
  return v8;
}

uint64_t pat_exec(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t *a5)
{
  v5 = 2585796615;
  if (a5)
  {
    v10 = *a3;
    *a5 = 0;
    v11 = heap_Alloc(*(a1 + 8), 16);
    if (v11)
    {
      v12 = v11;
      LODWORD(v13) = *(a2 + 12);
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        v35 = a3 + 6;
        v36 = a3;
        LODWORD(v16) = 16;
        do
        {
          v17 = (a2 + 16 + 32 * v14);
          v38 = 0;
          v18 = *v17;
          if (v18 == 115)
          {
            v19 = *(v17 + 1);
            v20 = strlen(v19);
          }

          else
          {
            v24 = *(v17 + 5);
            if (v24 >= 0)
            {
              v25 = -1;
            }

            else
            {
              v25 = v10;
            }

            v26 = a4;
            if (*(v17 + 4))
            {
              v26 = v25;
            }

            v27 = v26 + v24;
            if (v27 < 0)
            {
              if (v27 <= 0xFFFFFFFB)
              {
                v27 = -5;
              }

              v29 = &bval[~v27];
            }

            else if (v27 >= v10)
            {
              if (v27 - v10 >= 4)
              {
                v30 = 4;
              }

              else
              {
                v30 = v27 - v10;
              }

              v29 = &eval[v30];
            }

            else
            {
              v28 = *(v17 + 6);
              if (v28 >= *(*(v36 + 2) + 4 * v27))
              {
                wapiti_fatal(*(a1 + 32), "missing tokens, cannot apply pattern");
                heap_Free(*(a1 + 8), v12);
                return 2585796615;
              }

              v29 = (*&v35[2 * v27] + 8 * v28);
            }

            v19 = *v29;
            if (v18 == 109)
            {
              v32 = rex_match(a1, *(v17 + 1), *v29, &v38);
              if (v32 == -1)
              {
                v20 = 0;
                v38 = 0;
              }

              else
              {
                v20 = v38;
              }

              v19 += v32;
              goto LABEL_8;
            }

            if (v18 != 116)
            {
              if (v18 == 120)
              {
                v20 = strlen(*v29);
                v38 = v20;
              }

              else
              {
                v20 = 0;
              }

              goto LABEL_8;
            }

            v31 = rex_match(a1, *(v17 + 1), *v29, &v38);
            if (v31 == -1)
            {
              v19 = "false";
            }

            else
            {
              v19 = "true";
            }

            if (v31 == -1)
            {
              v20 = 5;
            }

            else
            {
              v20 = 4;
            }
          }

          v38 = v20;
LABEL_8:
          if (v20 + v15 >= v16 - 1)
          {
            do
            {
              v16 = v16 + (v16 >> 1);
            }

            while (v20 + v15 >= v16 - 1);
            v21 = heap_Realloc(*(a1 + 8), v12, v16);
            if (!v21)
            {
              goto LABEL_52;
            }

            v22 = v21;
            v20 = v38;
            v12 = v22;
          }

          memcpy((v12 + v15), v19, v20);
          LODWORD(v13) = v38 + v15;
          if (*(v17 + 1) && v15 < v13)
          {
            v23 = v15;
            do
            {
              *(v12 + v23) = __tolower(*(v12 + v23));
              ++v23;
              v13 = v38 + v15;
            }

            while (v23 < v13);
          }

          ++v14;
          v15 = v13;
        }

        while (v14 < *(a2 + 12));
      }

      *(v12 + v13) = 0;
      v33 = heap_Realloc(*(a1 + 8), v12, (v13 + 1));
      if (v33)
      {
        v5 = 0;
      }

      else
      {
LABEL_52:
        heap_Free(*(a1 + 8), v12);
        v33 = 0;
        v5 = 2585796618;
      }

      *a5 = v33;
    }

    else
    {
      return 2585796618;
    }
  }

  return v5;
}

uint64_t rex_match(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, int *a4)
{
  v5 = a3;
  if (*a2 == 94)
  {
    *a4 = 0;
    if (rex_matchme(a1, a2 + 1, a3, a4))
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0;
    while (1)
    {
      *a4 = 0;
      if (rex_matchme(a1, a2, v5, a4))
      {
        break;
      }

      v9 = *v5++;
      v8 = (v8 + 1);
      if (!v9)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v8;
}

void *pat_free(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 12))
    {
      v4 = 0;
      v5 = (a2 + 24);
      do
      {
        v6 = *v5;
        v5 += 4;
        heap_Free(v3[1], v6);
        ++v4;
      }

      while (v4 < *(a2 + 12));
    }

    heap_Free(v3[1], *a2);
    v7 = v3[1];

    return heap_Free(v7, a2);
  }

  return result;
}

uint64_t rex_matchme(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, int *a4)
{
LABEL_1:
  while (2)
  {
    v8 = a2;
    while (1)
    {
      v9 = *v8;
      if (v9 == 36)
      {
        a2 = v8 + 1;
        v11 = v8[1];
        if (!v8[1])
        {
          return *a3 == 0;
        }
      }

      else
      {
        if (!*v8)
        {
          return 1;
        }

        v10 = v9 == 92 ? 2 : 1;
        if (v9 == 63 || v9 == 42)
        {
          wapiti_fatal(*(a1 + 32), "unescaped * or ? in regexp: %s");
        }

        a2 = &v8[v10];
        v11 = *a2;
      }

      if (v11 != 63)
      {
        break;
      }

      ++a2;
      v12 = rex_matchit(v8, a3);
      v8 = a2;
      if (v12)
      {
        ++*a4;
        if (!rex_matchme(a1, a2, a3 + 1, a4))
        {
          --*a4;
          goto LABEL_1;
        }

        return 1;
      }
    }

    if (v11 == 42)
    {
      while (1)
      {
        v14 = *a4;
        if (rex_matchme(a1, a2 + 1, a3, a4))
        {
          break;
        }

        *a4 = v14 + 1;
        result = rex_matchit(v8, a3++);
        if (!result)
        {
          return result;
        }
      }

      return 1;
    }

    ++*a4;
    result = rex_matchit(v8, a3++);
    if (result)
    {
      continue;
    }

    return result;
  }
}

uint64_t rex_matchit(unsigned __int8 *a1, _BYTE *a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (v4 == 46)
    {
      return 1;
    }

    if (v4 != 92)
    {
      return v4 == *a2;
    }

    v5 = a1[1];
    if (v5 <= 96)
    {
      if (v5 > 79)
      {
        if (v5 > 84)
        {
          if (v5 == 85)
          {
            if ((*a2 & 0x80) == 0)
            {
              v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x8000;
              return v6 == 0;
            }

            v10 = 0x8000;
            goto LABEL_66;
          }

          if (v5 == 87)
          {
            if ((result & 0x80000000) == 0)
            {
              v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x500;
              return v6 == 0;
            }

            v10 = 1280;
            goto LABEL_66;
          }
        }

        else
        {
          if (v5 == 80)
          {
            if ((result & 0x80000000) == 0)
            {
              v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x2000;
              return v6 == 0;
            }

            v10 = 0x2000;
            goto LABEL_66;
          }

          if (v5 == 83)
          {
            if ((result & 0x80000000) == 0)
            {
              v6 = *(MEMORY[0x1E69E9830] + 4 * *a2 + 60) & 0x4000;
              return v6 == 0;
            }

            LODWORD(result) = *a2;
            v10 = 0x4000;
            goto LABEL_66;
          }
        }

        return v5 == *a2;
      }

      if (v5 == 65)
      {
        if ((result & 0x80000000) == 0)
        {
          v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x100;
          return v6 == 0;
        }

        v10 = 256;
        goto LABEL_66;
      }

      if (v5 != 68)
      {
        if (v5 == 76)
        {
          if ((*a2 & 0x80) == 0)
          {
            v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x1000;
            return v6 == 0;
          }

          v10 = 4096;
LABEL_66:
          v6 = __maskrune(result, v10);
          return v6 == 0;
        }

        return v5 == *a2;
      }

      v9 = __CFADD__(result - 58, 10);
      return !v9;
    }

    if (v5 <= 111)
    {
      switch(v5)
      {
        case 'a':
          if ((result & 0x80000000) == 0)
          {
            v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x100;
            return v8 != 0;
          }

          v11 = 256;
          break;
        case 'd':
          v9 = (result - 48) >= 0xA;
          return !v9;
        case 'l':
          if ((result & 0x80000000) == 0)
          {
            v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x1000;
            return v8 != 0;
          }

          v11 = 4096;
          break;
        default:
          return v5 == *a2;
      }
    }

    else if (v5 > 116)
    {
      if (v5 == 117)
      {
        if ((*a2 & 0x80) == 0)
        {
          v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x8000;
          return v8 != 0;
        }

        v11 = 0x8000;
      }

      else
      {
        if (v5 != 119)
        {
          return v5 == *a2;
        }

        if ((*a2 & 0x80) == 0)
        {
          v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x500;
          return v8 != 0;
        }

        v11 = 1280;
      }
    }

    else if (v5 == 112)
    {
      if ((*a2 & 0x80) == 0)
      {
        v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x2000;
        return v8 != 0;
      }

      v11 = 0x2000;
    }

    else
    {
      if (v5 != 115)
      {
        return v5 == *a2;
      }

      if ((result & 0x80000000) == 0)
      {
        v8 = *(MEMORY[0x1E69E9830] + 4 * *a2 + 60) & 0x4000;
        return v8 != 0;
      }

      LODWORD(result) = *a2;
      v11 = 0x4000;
    }

    v8 = __maskrune(result, v11);
    return v8 != 0;
  }

  return result;
}

uint64_t wapiti_ns_readline(uint64_t a1, const char *a2, _DWORD *a3)
{
  v7 = 0;
  v6 = 0;
  if (!wapiti_scanf_fmt_prefix_len(a2, ":", &v6, &v7))
  {
    wapiti_fatal(*(a1 + 32), "cannot read from chars");
  }

  result = v7;
  *a3 = v6;
  return result;
}

uint64_t wapiti_scanf_fmt_prefix_len(const char *a1, char *__s, int *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strlen(a1);
  if (v9 > v8)
  {
    v10 = 0;
    v18 = 0;
    v11 = 1;
    memset(v17, 0, sizeof(v17));
    while (1)
    {
      v12 = a1[v10];
      if ((v12 - 48) >= 0xA && v12 != 45)
      {
        break;
      }

      *(v17 + v10++) = v12;
      v11 = v10 < v9;
      if (v9 == v10)
      {
        v10 = v9;
        goto LABEL_9;
      }
    }

    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_9:
    v14 = atoi(v17);
    v15 = 0;
    *a3 = v14;
    if (!v11 || !v8)
    {
LABEL_14:
      *a4 = v15 + v10;
      result = 1;
      goto LABEL_15;
    }

    v15 = 0;
    while (a1[v10 + v15] == __s[v15])
    {
      if (++v15 >= v8)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_8:
  result = 0;
LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wapiti_scanf_fmt_1(const char *a1, char *__s, int *a3)
{
  v4 = __s;
  v20 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  v7 = strlen(a1);
  v8 = v7 - v6;
  if (v7 <= v6)
  {
    goto LABEL_14;
  }

  if (!v6)
  {
LABEL_6:
    v14 = 0;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    while (1)
    {
      v15 = a1[v6 + v14];
      if ((v15 - 48) >= 0xA && v15 != 45)
      {
        break;
      }

      *(v18 + v14++) = v15;
      if (v8 == v14)
      {
        if (!v8)
        {
          goto LABEL_14;
        }

LABEL_12:
        *a3 = atoi(v18);
        result = 1;
        goto LABEL_15;
      }
    }

    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v9 = a1;
  v10 = v6;
  while (1)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v4++;
    if (v11 != v13)
    {
      break;
    }

    if (!--v10)
    {
      goto LABEL_6;
    }
  }

LABEL_14:
  result = 0;
LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wapiti_scanf_fmt_2(const char *a1, char *__s, int *a3, int *a4)
{
  v6 = __s;
  v31 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strlen(a1);
  v10 = v9 - v8;
  if (v9 <= v8)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v11 = v9;
  if (v8)
  {
    v12 = a1;
    v13 = v8;
    do
    {
      v15 = *v12++;
      v14 = v15;
      v16 = *v6++;
      if (v14 != v16)
      {
        goto LABEL_12;
      }
    }

    while (--v13);
  }

  v17 = 0;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  do
  {
    v18 = a1[v8 + v17];
    if ((v18 - 48) >= 0xA && v18 != 45)
    {
      v19 = v8 + v17 + 1;
      if (!v17)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    *(&v24 + v17++) = v18;
  }

  while (v10 != v17);
  v19 = v9;
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_15:
  *a3 = atoi(&v24);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  if (v11 <= v19)
  {
    goto LABEL_23;
  }

  v22 = 0;
  while (1)
  {
    v23 = a1[v19 + v22];
    if ((v23 - 48) >= 0xA && v23 != 45)
    {
      break;
    }

    *(&v24 + v22++) = v23;
    if (v11 - v19 == v22)
    {
      v22 = v11 - v19;
      break;
    }
  }

  if (v22)
  {
    *a4 = atoi(&v24);
    result = 2;
  }

  else
  {
LABEL_23:
    result = 1;
  }

LABEL_13:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wapiti_scanf_fmt_3(const char *a1, char *__s, int *a3, int *a4, int *a5)
{
  v8 = __s;
  v36 = *MEMORY[0x1E69E9840];
  v10 = strlen(__s);
  v11 = strlen(a1);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v13 = v11;
  if (v10)
  {
    v14 = a1;
    v15 = v10;
    do
    {
      v17 = *v14++;
      v16 = v17;
      v18 = *v8++;
      if (v16 != v18)
      {
        goto LABEL_12;
      }
    }

    while (--v15);
  }

  v19 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  do
  {
    v20 = a1[v10 + v19];
    if ((v20 - 48) >= 0xA && v20 != 45)
    {
      v21 = v10 + v19 + 1;
      if (!v19)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    *(&v29 + v19++) = v20;
  }

  while (v12 != v19);
  v21 = v11;
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_15:
  *a3 = atoi(&v29);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  if (v13 <= v21)
  {
    goto LABEL_30;
  }

  v24 = 0;
  while (1)
  {
    v25 = a1[v21 + v24];
    if ((v25 - 48) >= 0xA && v25 != 45)
    {
      break;
    }

    *(&v29 + v24++) = v25;
    if (v13 - v21 == v24)
    {
      v24 = v13 - v21;
      v26 = v13;
      goto LABEL_22;
    }
  }

  v26 = v21 + v24 + 1;
LABEL_22:
  if (v24)
  {
    *a4 = atoi(&v29);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    if (v13 <= v26)
    {
      goto LABEL_33;
    }

    v27 = 0;
    while (1)
    {
      v28 = a1[v26 + v27];
      if ((v28 - 48) >= 0xA && v28 != 45)
      {
        break;
      }

      *(&v29 + v27++) = v28;
      if (v13 - v26 == v27)
      {
        v27 = v13 - v26;
        break;
      }
    }

    if (v27)
    {
      *a5 = atoi(&v29);
      result = 3;
    }

    else
    {
LABEL_33:
      result = 2;
    }
  }

  else
  {
LABEL_30:
    result = 1;
  }

LABEL_13:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wapiti_scanf_fmt_pair(const char *a1, char *__s, int *a3, int *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strlen(a1);
  if (v9 <= v8)
  {
LABEL_8:
    result = 0;
    goto LABEL_23;
  }

  v10 = v9;
  v11 = 0;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = 1;
  v21 = 0u;
  v22 = 0u;
  while (1)
  {
    v13 = a1[v11];
    if ((v13 - 48) >= 0xA && v13 != 45)
    {
      break;
    }

    *(&v21 + v11++) = v13;
    v12 = v11 < v9;
    if (v9 == v11)
    {
      v11 = v9;
      goto LABEL_9;
    }
  }

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_9:
  v15 = atoi(&v21);
  v16 = 0;
  *a3 = v15;
  if (v12 && v8)
  {
    v16 = 0;
    while (a1[v11 + v16] == __s[v16])
    {
      if (++v16 >= v8)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_8;
  }

LABEL_14:
  v17 = v16 + v11;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (v17 >= v10)
  {
    goto LABEL_22;
  }

  v18 = 0;
  do
  {
    v19 = a1[v17 + v18];
    if ((v19 - 48) >= 0xA && v19 != 45)
    {
      break;
    }

    *(&v21 + v18++) = v19;
  }

  while (v17 + v18 < v10);
  if (v18)
  {
    *a4 = atoi(&v21);
    result = 2;
  }

  else
  {
LABEL_22:
    result = 1;
  }

LABEL_23:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t wapiti_scanf_pat_len(const char *a1, char *__s, int *a3, int *a4, size_t *a5)
{
  v8 = __s;
  v33 = *MEMORY[0x1E69E9840];
  v10 = strlen(__s);
  v11 = strlen(a1);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v13 = v11;
  if (v10)
  {
    v14 = a1;
    v15 = v10;
    do
    {
      v17 = *v14++;
      v16 = v17;
      v18 = *v8++;
      if (v16 != v18)
      {
        goto LABEL_12;
      }
    }

    while (--v15);
  }

  v19 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  do
  {
    v20 = a1[v10 + v19];
    if ((v20 - 48) >= 0xA && v20 != 45)
    {
      v21 = v10 + v19 + 1;
      if (!v19)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    *(&v26 + v19++) = v20;
  }

  while (v12 != v19);
  v21 = v11;
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_15:
  *a3 = atoi(&v26);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  if (v13 <= v21)
  {
    goto LABEL_24;
  }

  v24 = 0;
  while (1)
  {
    v25 = a1[v21 + v24];
    if ((v25 - 48) >= 0xA && v25 != 45)
    {
      break;
    }

    *(&v26 + v24++) = v25;
    if (v13 - v21 == v24)
    {
      v24 = v13 - v21;
      goto LABEL_22;
    }
  }

  v13 = v21 + v24;
LABEL_22:
  if (v24)
  {
    *a4 = atoi(&v26);
    *a5 = v13;
    result = 2;
  }

  else
  {
LABEL_24:
    result = 1;
  }

LABEL_13:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tag_label(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(a1 + 24);
  v190 = 0;
  v191[0] = 0;
  v10 = 2585796618;
  v189 = 0;
  if (!a4)
  {
    v10 = 2585796615;
    if (a5)
    {
      *a5 = 0;
    }

    return v10;
  }

  v11 = a4;
  v181 = v9;
  *a4 = 0;
  if (!a5)
  {
    return 2585796615;
  }

  v15 = a1;
  *a5 = 0;
  v16 = *(a1 + 112);
  if (*(a1 + 36))
  {
    v17 = rdr_readraw(v16, a2, a3, v191);
    if ((v17 & 0x80000000) == 0)
    {
      if (v191[0])
      {
        v18 = rdr_raw2seq_qp(v16, v191[0], *(v15 + 12) | (*(*(v15 + 112) + 56) != 0), &v190);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_21:
        LODWORD(v26) = 0;
        v10 = v18;
        goto LABEL_246;
      }

      return 2585796615;
    }

    return v17;
  }

  v17 = rdr_readraw(v16, a2, a3, v191);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (!v191[0])
  {
    return 2585796615;
  }

  v18 = rdr_raw2seq(v16, v191[0], *(v15 + 12) | (*(*(v15 + 112) + 56) != 0), &v190);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  v171 = v11;
  v168 = *v190;
  v19 = v181;
  v188 = v8;
  v20 = heap_Alloc(*(v8 + 8), 4 * v181 * v168);
  v21 = heap_Alloc(*(v8 + 8), 4 * v181 * v168);
  v22 = heap_Alloc(*(v8 + 8), 4 * v181);
  v23 = v22;
  v180 = v20;
  if (v20)
  {
    v24 = v21 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24 || v22 == 0)
  {
    v11 = v171;
    LODWORD(v26) = v168;
    goto LABEL_240;
  }

  v170 = v22;
  v172 = v21;
  v161 = a5;
  v187 = v15;
  if (a6 && a7)
  {
    v27 = *(v15 + 44);
    v28 = heap_Calloc(*(v8 + 8), 1, 4 * v27 * a3);
    *(v190 + 2) = v28;
    v11 = v171;
    if (!v28)
    {
      LODWORD(v26) = v168;
      v23 = v170;
      goto LABEL_241;
    }

    if (*(v15 + 36))
    {
      if (a3)
      {
        v29 = 0;
        v30 = 0;
        v31 = a3;
        do
        {
          v32 = *(a7 + 4 * v30);
          if (v32)
          {
            v33 = 0;
            v34 = 0;
            do
            {
              qp_str2id(v188, *(*(v187 + 112) + 40), *(*(a6 + 8 * v30) + 8 * v33), &v189, 0);
              if (v189 != -1)
              {
                *(*(v190 + 2) + 4 * (v189 + v27 * v30)) = 1;
                ++v34;
              }

              ++v33;
            }

            while (v33 < *(a7 + 4 * v30));
            LOBYTE(v32) = v34 != 0;
            v15 = v187;
            v19 = v181;
          }

          if ((v32 & 1) == 0 && v27)
          {
            v35 = *(v190 + 2);
            v36 = v27;
            v37 = v29;
            do
            {
              *(v35 + 4 * v37++) = 1;
              --v36;
            }

            while (v36);
          }

          ++v30;
          v29 += v27;
        }

        while (v30 != v31);
      }
    }

    else if (a3)
    {
      v38 = 0;
      v39 = 0;
      v40 = a3;
      do
      {
        v41 = *(a7 + 4 * v39);
        if (v41)
        {
          v42 = 0;
          v43 = 0;
          do
          {
            qrk_str2id(v188, *(*(v187 + 112) + 40), *(*(a6 + 8 * v39) + 8 * v42), &v189, 0);
            if (v189 != -1)
            {
              *(*(v190 + 2) + 4 * (v189 + v27 * v39)) = 1;
              ++v43;
            }

            ++v42;
          }

          while (v42 < *(a7 + 4 * v39));
          LOBYTE(v41) = v43 != 0;
          v15 = v187;
          v19 = v181;
        }

        if ((v41 & 1) == 0 && v27)
        {
          v44 = *(v190 + 2);
          v45 = v27;
          v46 = v38;
          do
          {
            *(v44 + 4 * v46++) = 1;
            --v45;
          }

          while (v45);
        }

        ++v39;
        v38 += v27;
      }

      while (v39 != v40);
    }
  }

  v47 = v190;
  v48 = *v15;
  v49 = *(v15 + 44);
  v50 = *v190;
  v51 = xvm_new(*v15, v49 * v49 * v50);
  v52 = *(v48 + 8);
  v173 = v48;
  v169 = v50;
  if (v19 != 1)
  {
    v64 = heap_Alloc(v52, 4 * v181 * v49 * v50);
    v65 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v66 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    if (v51)
    {
      v67 = v64 == 0;
    }

    else
    {
      v67 = 1;
    }

    if (v67 || v65 == 0 || v66 == 0)
    {
      v70 = 0;
      v10 = 2585796618;
      v21 = v172;
      goto LABEL_199;
    }

    v186 = v66;
    v184 = *(v15 + 40);
    v177 = v47;
    if (v184 == 1)
    {
      tag_memmsc(v15, v47, v51);
      v71 = 1;
    }

    else
    {
      tag_expsc(v15, v47, v51);
      v71 = 0;
    }

    v93 = v180;
    v21 = v172;
    if (*(*(v15 + 112) + 56))
    {
      tag_forced(v15, v177, v51, v71);
    }

    v94 = v169;
    if (v49)
    {
      v95 = 0;
      v96 = 0;
      do
      {
        *(v65 + 4 * v96) = v51[v95];
        v97 = v96 + 1;
        if (v19)
        {
          v98 = v96 + v19;
          v99 = v19 - 1;
          do
          {
            *(v65 + 4 * v97++) = 0x80000000;
            --v99;
          }

          while (v99);
          v97 = v98;
        }

        ++v95;
        v96 = v97;
      }

      while (v95 != v49);
    }

    if (v169 >= 2)
    {
      v100 = (v49 * v19);
      v165 = 4 * v100;
      v176 = vdupq_n_s64(v19 - 1);
      v163 = (v19 + 3) & 0x1FFFFFFFCLL;
      v160 = 1;
      v162 = vdupq_n_s64(4uLL);
      v159 = v49 * v19;
      v164 = v100;
      while (1)
      {
        v101 = v65;
        v102 = v186;
        v103 = v100;
        if (v100)
        {
          do
          {
            v104 = *v101++;
            *v102++ = v104;
            --v103;
          }

          while (v103);
        }

        if (v49)
        {
          break;
        }

LABEL_161:
        v159 += v100;
        v94 = v169;
        ++v160;
        v15 = v187;
        v93 = v180;
        if (v160 == v169)
        {
          goto LABEL_162;
        }
      }

      v183 = 0;
      v167 = v160 * v49;
      v179 = v159;
      while (1)
      {
        v105 = heap_Alloc(*(v48 + 8), v165);
        if (!v105)
        {
          break;
        }

        v106 = v105;
        v107 = 0;
        v108 = 0;
        v109 = v49;
        do
        {
          v110 = v109;
          while (!v19)
          {
            if (!--v110)
            {
              v120 = 0;
              v121 = v64;
              v48 = v173;
              v100 = v164;
              goto LABEL_149;
            }
          }

          v174 = v108 + v19;
          v111 = v19;
          do
          {
            v112 = v186[v108];
            *(v106 + 4 * v108) = v112;
            v113 = v51[(v183 + (v167 + v107) * v49)];
            if (v184 == 1)
            {
              v114 = fix16_mul(v112, v113);
            }

            else
            {
              v114 = fix16_add(v112, v113);
            }

            *(v106 + 4 * v108++) = v114;
            --v111;
          }

          while (v111);
          ++v107;
          --v109;
          v108 = v174;
          v19 = v181;
          v21 = v172;
        }

        while (v107 != v49);
        v115 = 0;
        v121 = (v64 + 4 * ((v167 + v183) * v181));
        v116 = xmmword_1C378AF00;
        v117 = xmmword_1C378AEF0;
        v48 = v173;
        v100 = v164;
        v118 = (v64 + 8 + 4 * v179);
        do
        {
          v119 = vmovn_s64(vcgeq_u64(v176, v116));
          if (vuzp1_s16(v119, *v116.i8).u8[0])
          {
            *(v118 - 2) = v115;
          }

          if (vuzp1_s16(v119, *&v116).i8[2])
          {
            *(v118 - 1) = v115 + 1;
          }

          if (vuzp1_s16(*&v116, vmovn_s64(vcgeq_u64(v176, *&v117))).i32[1])
          {
            *v118 = v115 + 2;
            v118[1] = v115 + 3;
          }

          v115 += 4;
          v117 = vaddq_s64(v117, v162);
          v116 = vaddq_s64(v116, v162);
          v118 += 4;
        }

        while (v163 != v115);
        v120 = v181 * v183;
LABEL_149:
        v122 = v19;
        if (v100 > v19)
        {
          do
          {
            v123 = 0;
            if (v19)
            {
              v124 = 1;
              do
              {
                if (*(v106 + 4 * v121[v124]) < *(v106 + 4 * v121[v123]))
                {
                  v123 = v124;
                }

                ++v124;
              }

              while (v19 != v124);
            }

            if (*(v106 + 4 * v122) > *(v106 + 4 * v121[v123]))
            {
              v121[v123] = v122;
            }

            ++v122;
          }

          while (v122 != v100);
        }

        v125 = v19;
        if (v19)
        {
          do
          {
            v126 = *v121++;
            *(v65 + 4 * v120++) = *(v106 + 4 * v126);
            --v125;
          }

          while (v125);
        }

        heap_Free(*(v48 + 8), v106);
        v179 += v19;
        if (++v183 == v49)
        {
          goto LABEL_161;
        }
      }

      v70 = 0;
      v10 = 2585796618;
      v15 = v187;
LABEL_198:
      v66 = v186;
LABEL_199:
      v11 = v171;
      v8 = v188;
      if (v66)
      {
        heap_Free(*(v173 + 8), v66);
      }

      if (v65)
      {
        heap_Free(*(v173 + 8), v65);
      }

      if (v64)
      {
        heap_Free(*(v173 + 8), v64);
      }

      if (v51)
      {
        xvm_free(v173, v51);
      }

      v26 = v168;
      v23 = v170;
      if (!v70)
      {
        goto LABEL_240;
      }

      goto LABEL_208;
    }

LABEL_162:
    if (!v19)
    {
      goto LABEL_178;
    }

    v127 = 0;
    v128 = (v49 * v19);
LABEL_164:
    if (v128 < 2)
    {
      v129 = 0;
    }

    else
    {
      v129 = 0;
      for (i = 1; i != v128; ++i)
      {
        if (*(v65 + 4 * i) > *(v65 + 4 * v129))
        {
          v129 = i;
        }
      }
    }

    v170[v127] = *(v65 + 4 * v129);
    *(v65 + 4 * v129) = 0x80000000;
    for (j = v94; ; v129 = *(v64 + 4 * (v129 + j * v49 * v19)))
    {
      if (j == 1)
      {
        j = 0;
        v132 = 0;
      }

      else
      {
        if (!j)
        {
          if (++v127 == v19)
          {
LABEL_178:
            v10 = 0;
            v70 = 1;
            goto LABEL_198;
          }

          goto LABEL_164;
        }

        v132 = *(v64 + 4 * (v129 + --j * v128)) / v19;
      }

      v133 = v127 + j * v19;
      *(v93 + 4 * v133) = v129 / v19;
      *(v21 + 4 * v133) = v51[v129 / v19 + (v132 + j * v49) * v49];
    }
  }

  v53 = v47;
  v54 = heap_Alloc(v52, 4 * v49 * v50);
  v55 = heap_Alloc(*(v48 + 8), 4 * v49);
  v56 = heap_Alloc(*(v48 + 8), 4 * v49);
  v57 = v56;
  if (v51)
  {
    v58 = v54 == 0;
  }

  else
  {
    v58 = 1;
  }

  v60 = v58 || v55 == 0 || v56 == 0;
  v61 = v60;
  v166 = v61;
  v10 = 2585796618;
  v21 = v172;
  if (v60)
  {
    goto LABEL_187;
  }

  v62 = *(v187 + 40);
  if (v62 == 1)
  {
    tag_memmsc(v187, v53, v51);
    v63 = 1;
  }

  else
  {
    tag_expsc(v187, v53, v51);
    v63 = 0;
  }

  if (*(*(v187 + 112) + 56))
  {
    tag_forced(v187, v53, v51, v63);
  }

  if (v49)
  {
    v72 = v51;
    v73 = v55;
    v74 = v49;
    do
    {
      v75 = *v72++;
      *v73++ = v75;
      --v74;
    }

    while (v74);
  }

  v76 = v169;
  if (v169 >= 2)
  {
    v178 = 1;
    v175 = v49 * v49;
    v182 = v55;
    v185 = v54;
    do
    {
      v77 = v55;
      v78 = v57;
      v79 = v49;
      if (v49)
      {
        do
        {
          v80 = *v77++;
          *v78++ = v80;
          --v79;
        }

        while (v79);
        v81 = 0;
        v82 = v175;
        do
        {
          v83 = 0;
          v84 = 0;
          v85 = 0x80000000;
          v86 = v82;
          do
          {
            v87 = *(v57 + 4 * v83);
            v88 = v51[v86];
            if (v62 == 1)
            {
              v89 = fix16_mul(v87, v88);
            }

            else
            {
              v89 = fix16_add(v87, v88);
            }

            if (v89 > v85)
            {
              v85 = v89;
              v84 = v83;
            }

            ++v83;
            v86 += v49;
          }

          while (v49 != v83);
          v55 = v182;
          *(v185 + 4 * (v178 * v49 + v81)) = v84;
          v54 = v185;
          *(v182 + 4 * v81++) = v85;
          ++v82;
        }

        while (v81 != v49);
      }

      v175 += v49 * v49;
      v76 = v169;
      ++v178;
    }

    while (v178 != v169);
  }

  if (v49 < 2)
  {
    v90 = 0;
    v92 = v180;
    v19 = v181;
    v21 = v172;
    v48 = v173;
  }

  else
  {
    v90 = 0;
    v91 = 1;
    v92 = v180;
    v19 = v181;
    v21 = v172;
    v48 = v173;
    do
    {
      if (*(v55 + 4 * v91) > *(v55 + 4 * v90))
      {
        v90 = v91;
      }

      ++v91;
    }

    while (v49 != v91);
  }

  *v170 = *(v55 + 4 * v90);
  while (1)
  {
    v134 = v76 - 1;
    if (v76 != 1)
    {
      break;
    }

    v135 = 0;
    v76 = 0;
    v136 = 0;
LABEL_185:
    *(v92 + 4 * v76) = v90;
    *(v21 + 4 * v76) = v51[v90 + (v136 + v135) * v49];
    v90 = v136;
  }

  if (v76)
  {
    v135 = v134 * v49;
    v136 = *(v54 + 4 * (v134 * v49 + v90));
    v76 = (v76 - 1);
    goto LABEL_185;
  }

  v10 = v76;
LABEL_187:
  if (v57)
  {
    heap_Free(*(v48 + 8), v57);
  }

  v11 = v171;
  v8 = v188;
  if (v55)
  {
    heap_Free(*(v173 + 8), v55);
  }

  v15 = v187;
  if (v54)
  {
    heap_Free(*(v173 + 8), v54);
  }

  if (v51)
  {
    xvm_free(v173, v51);
  }

  v26 = v168;
  v23 = v170;
  if (v166)
  {
    goto LABEL_240;
  }

LABEL_208:
  v137 = heap_Calloc(*(v8 + 8), 8, v26);
  *v11 = v137;
  if (!v137)
  {
    v10 = 2585796618;
    goto LABEL_239;
  }

  if (!v26)
  {
LABEL_235:
    v10 = 0;
    *v161 = v26;
    goto LABEL_238;
  }

  v138 = 0;
  v139 = (3 * v19 + 1);
  while (2)
  {
    v140 = heap_Alloc(*(v8 + 8), v139);
    if (v140)
    {
      v141 = v140;
      *v140 = 0;
      if (*(v15 + 36))
      {
        if (v19)
        {
          for (k = 0; k != v19; ++k)
          {
            v143 = qrk_id2str(v188, *(*(v15 + 112) + 40), *(v180 + 4 * (v19 * v138 + k)));
            v144 = strlen(v141);
            v145 = strlen(v143);
            v146 = 3 * v19 + 1;
            do
            {
              v147 = v146;
              v146 *= 2;
            }

            while (v147 < v144 + v145 + 2);
            if (v147 <= v139)
            {
              v26 = v141;
            }

            else
            {
              v26 = heap_Realloc(*(v188 + 8), v141, v147);
              if (!v26)
              {
                goto LABEL_237;
              }
            }

            v148 = strncat(v26, v143, v145);
            *&v26[strlen(v148)] = 32;
            v141 = v26;
            v15 = v187;
          }

LABEL_234:
          v11 = v171;
          *(*v171 + 8 * v138++) = v26;
          LODWORD(v26) = v168;
          v8 = v188;
          if (v138 == v168)
          {
            goto LABEL_235;
          }

          continue;
        }
      }

      else if (v19)
      {
        v149 = 0;
        while (1)
        {
          v150 = qrk_id2str(v188, *(*(v15 + 112) + 40), *(v180 + 4 * (v19 * v138 + v149)));
          v151 = strlen(v141);
          v152 = strlen(v150);
          v153 = 3 * v19 + 1;
          do
          {
            v154 = v153;
            v153 *= 2;
          }

          while (v154 < v151 + v152 + 2);
          if (v154 <= v139)
          {
            v26 = v141;
          }

          else
          {
            v26 = heap_Realloc(*(v188 + 8), v141, v154);
            if (!v26)
            {
LABEL_237:
              v8 = v188;
              heap_Free(*(v188 + 8), v141);
              v10 = 2585796618;
              v11 = v171;
              LODWORD(v26) = v168;
              goto LABEL_238;
            }
          }

          v155 = strncat(v26, v150, v152);
          *&v26[strlen(v155)] = 32;
          ++v149;
          v141 = v26;
          v15 = v187;
          if (v149 == v19)
          {
            goto LABEL_234;
          }
        }
      }

      v26 = v140;
      goto LABEL_234;
    }

    break;
  }

  v10 = 2585796618;
LABEL_238:
  v21 = v172;
LABEL_239:
  v23 = v170;
LABEL_240:
  if (v23)
  {
LABEL_241:
    heap_Free(*(v8 + 8), v23);
  }

  if (v21)
  {
    heap_Free(*(v8 + 8), v21);
  }

  if (v180)
  {
    heap_Free(*(v8 + 8), v180);
  }

LABEL_246:
  if (v190)
  {
    rdr_freeseq(v8, v190);
  }

  if (v191[0])
  {
    rdr_freeraw(v8, v191[0]);
  }

  if ((v10 & 0x80000000) == 0)
  {
    return 0;
  }

  v156 = *v11;
  if (*v11)
  {
    if (v26)
    {
      v157 = 0;
      do
      {
        heap_Free(*(v8 + 8), *(*v11 + v157));
        v157 += 8;
      }

      while (8 * v26 != v157);
      v156 = *v11;
    }

    heap_Free(*(v8 + 8), v156);
    *v11 = 0;
  }

  return v10;
}

uint64_t tag_label_sparse(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(a1 + 24);
  v190 = 0;
  v191[0] = 0;
  v10 = 2585796618;
  v189 = 0;
  if (!a4)
  {
    v10 = 2585796615;
    if (a5)
    {
      *a5 = 0;
    }

    return v10;
  }

  v11 = a4;
  v181 = v9;
  *a4 = 0;
  if (!a5)
  {
    return 2585796615;
  }

  v15 = a1;
  *a5 = 0;
  v16 = *(a1 + 112);
  if (*(a1 + 36))
  {
    v17 = rdr_readraw(v16, a2, a3, v191);
    if ((v17 & 0x80000000) == 0)
    {
      if (v191[0])
      {
        v18 = rdr_raw2seq_qp(v16, v191[0], *(v15 + 12) | (*(*(v15 + 112) + 56) != 0), &v190);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_21:
        LODWORD(v26) = 0;
        v10 = v18;
        goto LABEL_246;
      }

      return 2585796615;
    }

    return v17;
  }

  v17 = rdr_readraw(v16, a2, a3, v191);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (!v191[0])
  {
    return 2585796615;
  }

  v18 = rdr_raw2seq(v16, v191[0], *(v15 + 12) | (*(*(v15 + 112) + 56) != 0), &v190);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  v171 = v11;
  v168 = *v190;
  v19 = v181;
  v188 = v8;
  v20 = heap_Alloc(*(v8 + 8), 4 * v181 * v168);
  v21 = heap_Alloc(*(v8 + 8), 4 * v181 * v168);
  v22 = heap_Alloc(*(v8 + 8), 4 * v181);
  v23 = v22;
  v180 = v20;
  if (v20)
  {
    v24 = v21 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24 || v22 == 0)
  {
    v11 = v171;
    LODWORD(v26) = v168;
    goto LABEL_240;
  }

  v170 = v22;
  v172 = v21;
  v161 = a5;
  v187 = v15;
  if (a6 && a7)
  {
    v27 = *(v15 + 44);
    v28 = heap_Calloc(*(v8 + 8), 1, 4 * v27 * a3);
    *(v190 + 2) = v28;
    v11 = v171;
    if (!v28)
    {
      LODWORD(v26) = v168;
      v23 = v170;
      goto LABEL_241;
    }

    if (*(v15 + 36))
    {
      if (a3)
      {
        v29 = 0;
        v30 = 0;
        v31 = a3;
        do
        {
          v32 = *(a7 + 4 * v30);
          if (v32)
          {
            v33 = 0;
            v34 = 0;
            do
            {
              qp_str2id(v188, *(*(v187 + 112) + 40), *(*(a6 + 8 * v30) + 8 * v33), &v189, 0);
              if (v189 != -1)
              {
                *(*(v190 + 2) + 4 * (v189 + v27 * v30)) = 1;
                ++v34;
              }

              ++v33;
            }

            while (v33 < *(a7 + 4 * v30));
            LOBYTE(v32) = v34 != 0;
            v15 = v187;
            v19 = v181;
          }

          if ((v32 & 1) == 0 && v27)
          {
            v35 = *(v190 + 2);
            v36 = v27;
            v37 = v29;
            do
            {
              *(v35 + 4 * v37++) = 1;
              --v36;
            }

            while (v36);
          }

          ++v30;
          v29 += v27;
        }

        while (v30 != v31);
      }
    }

    else if (a3)
    {
      v38 = 0;
      v39 = 0;
      v40 = a3;
      do
      {
        v41 = *(a7 + 4 * v39);
        if (v41)
        {
          v42 = 0;
          v43 = 0;
          do
          {
            qrk_str2id(v188, *(*(v187 + 112) + 40), *(*(a6 + 8 * v39) + 8 * v42), &v189, 0);
            if (v189 != -1)
            {
              *(*(v190 + 2) + 4 * (v189 + v27 * v39)) = 1;
              ++v43;
            }

            ++v42;
          }

          while (v42 < *(a7 + 4 * v39));
          LOBYTE(v41) = v43 != 0;
          v15 = v187;
          v19 = v181;
        }

        if ((v41 & 1) == 0 && v27)
        {
          v44 = *(v190 + 2);
          v45 = v27;
          v46 = v38;
          do
          {
            *(v44 + 4 * v46++) = 1;
            --v45;
          }

          while (v45);
        }

        ++v39;
        v38 += v27;
      }

      while (v39 != v40);
    }
  }

  v47 = v190;
  v48 = *v15;
  v49 = *(v15 + 44);
  v50 = *v190;
  v51 = xvm_new(*v15, v49 * v49 * v50);
  v52 = *(v48 + 8);
  v173 = v48;
  v169 = v50;
  if (v19 != 1)
  {
    v64 = heap_Alloc(v52, 4 * v181 * v49 * v50);
    v65 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v66 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    if (v51)
    {
      v67 = v64 == 0;
    }

    else
    {
      v67 = 1;
    }

    if (v67 || v65 == 0 || v66 == 0)
    {
      v70 = 0;
      v10 = 2585796618;
      v21 = v172;
      goto LABEL_199;
    }

    v186 = v66;
    v184 = *(v15 + 40);
    v177 = v47;
    if (v184 == 1)
    {
      tag_memmsc_sparse(v15, v47, v51);
      v71 = 1;
    }

    else
    {
      tag_expsc_sparse(v15, v47, v51);
      v71 = 0;
    }

    v93 = v180;
    v21 = v172;
    if (*(*(v15 + 112) + 56))
    {
      tag_forced(v15, v177, v51, v71);
    }

    v94 = v169;
    if (v49)
    {
      v95 = 0;
      v96 = 0;
      do
      {
        *(v65 + 4 * v96) = v51[v95];
        v97 = v96 + 1;
        if (v19)
        {
          v98 = v96 + v19;
          v99 = v19 - 1;
          do
          {
            *(v65 + 4 * v97++) = 0x80000000;
            --v99;
          }

          while (v99);
          v97 = v98;
        }

        ++v95;
        v96 = v97;
      }

      while (v95 != v49);
    }

    if (v169 >= 2)
    {
      v100 = (v49 * v19);
      v165 = 4 * v100;
      v176 = vdupq_n_s64(v19 - 1);
      v163 = (v19 + 3) & 0x1FFFFFFFCLL;
      v160 = 1;
      v162 = vdupq_n_s64(4uLL);
      v159 = v49 * v19;
      v164 = v100;
      while (1)
      {
        v101 = v65;
        v102 = v186;
        v103 = v100;
        if (v100)
        {
          do
          {
            v104 = *v101++;
            *v102++ = v104;
            --v103;
          }

          while (v103);
        }

        if (v49)
        {
          break;
        }

LABEL_161:
        v159 += v100;
        v94 = v169;
        ++v160;
        v15 = v187;
        v93 = v180;
        if (v160 == v169)
        {
          goto LABEL_162;
        }
      }

      v183 = 0;
      v167 = v160 * v49;
      v179 = v159;
      while (1)
      {
        v105 = heap_Alloc(*(v48 + 8), v165);
        if (!v105)
        {
          break;
        }

        v106 = v105;
        v107 = 0;
        v108 = 0;
        v109 = v49;
        do
        {
          v110 = v109;
          while (!v19)
          {
            if (!--v110)
            {
              v120 = 0;
              v121 = v64;
              v48 = v173;
              v100 = v164;
              goto LABEL_149;
            }
          }

          v174 = v108 + v19;
          v111 = v19;
          do
          {
            v112 = v186[v108];
            *(v106 + 4 * v108) = v112;
            v113 = v51[(v183 + (v167 + v107) * v49)];
            if (v184 == 1)
            {
              v114 = fix16_mul(v112, v113);
            }

            else
            {
              v114 = fix16_add(v112, v113);
            }

            *(v106 + 4 * v108++) = v114;
            --v111;
          }

          while (v111);
          ++v107;
          --v109;
          v108 = v174;
          v19 = v181;
          v21 = v172;
        }

        while (v107 != v49);
        v115 = 0;
        v121 = (v64 + 4 * ((v167 + v183) * v181));
        v116 = xmmword_1C378AF00;
        v117 = xmmword_1C378AEF0;
        v48 = v173;
        v100 = v164;
        v118 = (v64 + 8 + 4 * v179);
        do
        {
          v119 = vmovn_s64(vcgeq_u64(v176, v116));
          if (vuzp1_s16(v119, *v116.i8).u8[0])
          {
            *(v118 - 2) = v115;
          }

          if (vuzp1_s16(v119, *&v116).i8[2])
          {
            *(v118 - 1) = v115 + 1;
          }

          if (vuzp1_s16(*&v116, vmovn_s64(vcgeq_u64(v176, *&v117))).i32[1])
          {
            *v118 = v115 + 2;
            v118[1] = v115 + 3;
          }

          v115 += 4;
          v117 = vaddq_s64(v117, v162);
          v116 = vaddq_s64(v116, v162);
          v118 += 4;
        }

        while (v163 != v115);
        v120 = v181 * v183;
LABEL_149:
        v122 = v19;
        if (v100 > v19)
        {
          do
          {
            v123 = 0;
            if (v19)
            {
              v124 = 1;
              do
              {
                if (*(v106 + 4 * v121[v124]) < *(v106 + 4 * v121[v123]))
                {
                  v123 = v124;
                }

                ++v124;
              }

              while (v19 != v124);
            }

            if (*(v106 + 4 * v122) > *(v106 + 4 * v121[v123]))
            {
              v121[v123] = v122;
            }

            ++v122;
          }

          while (v122 != v100);
        }

        v125 = v19;
        if (v19)
        {
          do
          {
            v126 = *v121++;
            *(v65 + 4 * v120++) = *(v106 + 4 * v126);
            --v125;
          }

          while (v125);
        }

        heap_Free(*(v48 + 8), v106);
        v179 += v19;
        if (++v183 == v49)
        {
          goto LABEL_161;
        }
      }

      v70 = 0;
      v10 = 2585796618;
      v15 = v187;
LABEL_198:
      v66 = v186;
LABEL_199:
      v11 = v171;
      v8 = v188;
      if (v66)
      {
        heap_Free(*(v173 + 8), v66);
      }

      if (v65)
      {
        heap_Free(*(v173 + 8), v65);
      }

      if (v64)
      {
        heap_Free(*(v173 + 8), v64);
      }

      if (v51)
      {
        xvm_free(v173, v51);
      }

      v26 = v168;
      v23 = v170;
      if (!v70)
      {
        goto LABEL_240;
      }

      goto LABEL_208;
    }

LABEL_162:
    if (!v19)
    {
      goto LABEL_178;
    }

    v127 = 0;
    v128 = (v49 * v19);
LABEL_164:
    if (v128 < 2)
    {
      v129 = 0;
    }

    else
    {
      v129 = 0;
      for (i = 1; i != v128; ++i)
      {
        if (*(v65 + 4 * i) > *(v65 + 4 * v129))
        {
          v129 = i;
        }
      }
    }

    v170[v127] = *(v65 + 4 * v129);
    *(v65 + 4 * v129) = 0x80000000;
    for (j = v94; ; v129 = *(v64 + 4 * (v129 + j * v49 * v19)))
    {
      if (j == 1)
      {
        j = 0;
        v132 = 0;
      }

      else
      {
        if (!j)
        {
          if (++v127 == v19)
          {
LABEL_178:
            v10 = 0;
            v70 = 1;
            goto LABEL_198;
          }

          goto LABEL_164;
        }

        v132 = *(v64 + 4 * (v129 + --j * v128)) / v19;
      }

      v133 = v127 + j * v19;
      *(v93 + 4 * v133) = v129 / v19;
      *(v21 + 4 * v133) = v51[v129 / v19 + (v132 + j * v49) * v49];
    }
  }

  v53 = v47;
  v54 = heap_Alloc(v52, 4 * v49 * v50);
  v55 = heap_Alloc(*(v48 + 8), 4 * v49);
  v56 = heap_Alloc(*(v48 + 8), 4 * v49);
  v57 = v56;
  if (v51)
  {
    v58 = v54 == 0;
  }

  else
  {
    v58 = 1;
  }

  v60 = v58 || v55 == 0 || v56 == 0;
  v61 = v60;
  v166 = v61;
  v10 = 2585796618;
  v21 = v172;
  if (v60)
  {
    goto LABEL_187;
  }

  v62 = *(v187 + 40);
  if (v62 == 1)
  {
    tag_memmsc_sparse(v187, v53, v51);
    v63 = 1;
  }

  else
  {
    tag_expsc_sparse(v187, v53, v51);
    v63 = 0;
  }

  if (*(*(v187 + 112) + 56))
  {
    tag_forced(v187, v53, v51, v63);
  }

  if (v49)
  {
    v72 = v51;
    v73 = v55;
    v74 = v49;
    do
    {
      v75 = *v72++;
      *v73++ = v75;
      --v74;
    }

    while (v74);
  }

  v76 = v169;
  if (v169 >= 2)
  {
    v178 = 1;
    v175 = v49 * v49;
    v182 = v55;
    v185 = v54;
    do
    {
      v77 = v55;
      v78 = v57;
      v79 = v49;
      if (v49)
      {
        do
        {
          v80 = *v77++;
          *v78++ = v80;
          --v79;
        }

        while (v79);
        v81 = 0;
        v82 = v175;
        do
        {
          v83 = 0;
          v84 = 0;
          v85 = 0x80000000;
          v86 = v82;
          do
          {
            v87 = *(v57 + 4 * v83);
            v88 = v51[v86];
            if (v62 == 1)
            {
              v89 = fix16_mul(v87, v88);
            }

            else
            {
              v89 = fix16_add(v87, v88);
            }

            if (v89 > v85)
            {
              v85 = v89;
              v84 = v83;
            }

            ++v83;
            v86 += v49;
          }

          while (v49 != v83);
          v55 = v182;
          *(v185 + 4 * (v178 * v49 + v81)) = v84;
          v54 = v185;
          *(v182 + 4 * v81++) = v85;
          ++v82;
        }

        while (v81 != v49);
      }

      v175 += v49 * v49;
      v76 = v169;
      ++v178;
    }

    while (v178 != v169);
  }

  if (v49 < 2)
  {
    v90 = 0;
    v92 = v180;
    v19 = v181;
    v21 = v172;
    v48 = v173;
  }

  else
  {
    v90 = 0;
    v91 = 1;
    v92 = v180;
    v19 = v181;
    v21 = v172;
    v48 = v173;
    do
    {
      if (*(v55 + 4 * v91) > *(v55 + 4 * v90))
      {
        v90 = v91;
      }

      ++v91;
    }

    while (v49 != v91);
  }

  *v170 = *(v55 + 4 * v90);
  while (1)
  {
    v134 = v76 - 1;
    if (v76 != 1)
    {
      break;
    }

    v135 = 0;
    v76 = 0;
    v136 = 0;
LABEL_185:
    *(v92 + 4 * v76) = v90;
    *(v21 + 4 * v76) = v51[v90 + (v136 + v135) * v49];
    v90 = v136;
  }

  if (v76)
  {
    v135 = v134 * v49;
    v136 = *(v54 + 4 * (v134 * v49 + v90));
    v76 = (v76 - 1);
    goto LABEL_185;
  }

  v10 = v76;
LABEL_187:
  if (v57)
  {
    heap_Free(*(v48 + 8), v57);
  }

  v11 = v171;
  v8 = v188;
  if (v55)
  {
    heap_Free(*(v173 + 8), v55);
  }

  v15 = v187;
  if (v54)
  {
    heap_Free(*(v173 + 8), v54);
  }

  if (v51)
  {
    xvm_free(v173, v51);
  }

  v26 = v168;
  v23 = v170;
  if (v166)
  {
    goto LABEL_240;
  }

LABEL_208:
  v137 = heap_Calloc(*(v8 + 8), 8, v26);
  *v11 = v137;
  if (!v137)
  {
    v10 = 2585796618;
    goto LABEL_239;
  }

  if (!v26)
  {
LABEL_235:
    v10 = 0;
    *v161 = v26;
    goto LABEL_238;
  }

  v138 = 0;
  v139 = (3 * v19 + 1);
  while (2)
  {
    v140 = heap_Alloc(*(v8 + 8), v139);
    if (v140)
    {
      v141 = v140;
      *v140 = 0;
      if (*(v15 + 36))
      {
        if (v19)
        {
          for (k = 0; k != v19; ++k)
          {
            v143 = qrk_id2str(v188, *(*(v15 + 112) + 40), *(v180 + 4 * (v19 * v138 + k)));
            v144 = strlen(v141);
            v145 = strlen(v143);
            v146 = 3 * v19 + 1;
            do
            {
              v147 = v146;
              v146 *= 2;
            }

            while (v147 < v144 + v145 + 2);
            if (v147 <= v139)
            {
              v26 = v141;
            }

            else
            {
              v26 = heap_Realloc(*(v188 + 8), v141, v147);
              if (!v26)
              {
                goto LABEL_237;
              }
            }

            v148 = strncat(v26, v143, v145);
            *&v26[strlen(v148)] = 32;
            v141 = v26;
            v15 = v187;
          }

LABEL_234:
          v11 = v171;
          *(*v171 + 8 * v138++) = v26;
          LODWORD(v26) = v168;
          v8 = v188;
          if (v138 == v168)
          {
            goto LABEL_235;
          }

          continue;
        }
      }

      else if (v19)
      {
        v149 = 0;
        while (1)
        {
          v150 = qrk_id2str(v188, *(*(v15 + 112) + 40), *(v180 + 4 * (v19 * v138 + v149)));
          v151 = strlen(v141);
          v152 = strlen(v150);
          v153 = 3 * v19 + 1;
          do
          {
            v154 = v153;
            v153 *= 2;
          }

          while (v154 < v151 + v152 + 2);
          if (v154 <= v139)
          {
            v26 = v141;
          }

          else
          {
            v26 = heap_Realloc(*(v188 + 8), v141, v154);
            if (!v26)
            {
LABEL_237:
              v8 = v188;
              heap_Free(*(v188 + 8), v141);
              v10 = 2585796618;
              v11 = v171;
              LODWORD(v26) = v168;
              goto LABEL_238;
            }
          }

          v155 = strncat(v26, v150, v152);
          *&v26[strlen(v155)] = 32;
          ++v149;
          v141 = v26;
          v15 = v187;
          if (v149 == v19)
          {
            goto LABEL_234;
          }
        }
      }

      v26 = v140;
      goto LABEL_234;
    }

    break;
  }

  v10 = 2585796618;
LABEL_238:
  v21 = v172;
LABEL_239:
  v23 = v170;
LABEL_240:
  if (v23)
  {
LABEL_241:
    heap_Free(*(v8 + 8), v23);
  }

  if (v21)
  {
    heap_Free(*(v8 + 8), v21);
  }

  if (v180)
  {
    heap_Free(*(v8 + 8), v180);
  }

LABEL_246:
  if (v190)
  {
    rdr_freeseq(v8, v190);
  }

  if (v191[0])
  {
    rdr_freeraw(v8, v191[0]);
  }

  if ((v10 & 0x80000000) == 0)
  {
    return 0;
  }

  v156 = *v11;
  if (*v11)
  {
    if (v26)
    {
      v157 = 0;
      do
      {
        heap_Free(*(v8 + 8), *(*v11 + v157));
        v157 += 8;
      }

      while (8 * v26 != v157);
      v156 = *v11;
    }

    heap_Free(*(v8 + 8), v156);
    *v11 = 0;
  }

  return v10;
}

uint64_t tag_memmsc(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 44);
  v5 = *a2;
  tag_expsc(a1, a2, a3);
  result = xvm_expma(a3, a3, 0, v4 * v4 * v5);
  v16 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v4)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = 0;
          v12 = v4;
          v13 = v10;
          do
          {
            v11 = fix16_add(v11, a3[v13++]);
            --v12;
          }

          while (v12);
          v14 = v4;
          v15 = v10;
          do
          {
            result = fix16_div(a3[v15], v11);
            a3[v15++] = result;
            --v14;
          }

          while (v14);
          ++v9;
          v10 += v4;
        }

        while (v9 != v4);
      }

      ++v8;
      v7 += v4 * v4;
    }

    while (v8 != v16);
  }

  return result;
}

uint64_t tag_expsc(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = *(result + 80);
  v42 = result;
  v5 = *(result + 44);
  v6 = *a2;
  v7 = *(a2 + 2);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v39 = *a2;
  if (v8)
  {
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v5)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = v5;
          v14 = v12;
          do
          {
            *(a3 + 4 * v14) = 0x80000000;
            v14 += v5;
            --v13;
          }

          while (v13);
          ++v11;
          ++v12;
        }

        while (v11 != v5);
      }

      ++v10;
      v9 += v5 * v5;
    }

    while (v10 != v39);
  }

  v43 = 0;
  *&v40[8] = 0;
  v37 = a2 + 6;
  *v40 = (v5 * v5);
  do
  {
    if (v5)
    {
      v15 = 0;
      v16 = v43;
      v17 = &v37[8 * *&v40[4]];
      do
      {
        if (!v7 || *(v7 + 4 * (v5 * *&v40[4] + v15)) || ((v18 = *v17, v18 != -1) ? (v19 = v15 == v18) : (v19 = 0), v19))
        {
          v20 = v17[1];
          if (v20)
          {
            LODWORD(result) = 0;
            v21 = *(v17 + 2);
            v22 = *(v42 + 64);
            do
            {
              v23 = *v21++;
              result = fix16_add(result, *(v4 + 4 * (*(v22 + 4 * v23) + v15)));
              --v20;
            }

            while (v20);
          }

          else
          {
            result = 0;
          }

          v24 = v5;
          v25 = v16;
          do
          {
            *(a3 + 4 * v25) = result;
            v25 += v5;
            --v24;
          }

          while (v24);
        }

        ++v15;
        ++v16;
      }

      while (v15 != v5);
    }

    v43 += *v40;
    ++*&v40[4];
  }

  while (*&v40[4] != v39);
  if (v39 >= 2)
  {
    for (i = 1; i != v39; ++i)
    {
      if (v5)
      {
        *&v41[8] = 0;
        v26 = 0;
        v27 = &v37[8 * i];
        *v41 = (v5 * (i - 1));
        v44 = v5 * i;
        do
        {
          if (!v7 || *(v7 + 4 * (*v41 + *&v41[4])) || v37[8 * i - 8] != -1 && *&v41[4] == *v27)
          {
            v28 = 0;
            v45 = (v44 + *&v41[4]) * v5;
            do
            {
              if (!v7 || *(v7 + 4 * (v44 + v28)) || ((v29 = *v27, v29 != -1) ? (v30 = v28 == v29) : (v30 = 0), v30))
              {
                v31 = v7;
                v32 = v27[2];
                if (v32)
                {
                  v33 = 0;
                  v34 = *(v27 + 3);
                  v35 = *(v42 + 72);
                  do
                  {
                    v36 = *v34++;
                    v33 = fix16_add(v33, *(v4 + 4 * (*(v35 + 4 * v36) + v26)));
                    --v32;
                  }

                  while (v32);
                }

                else
                {
                  v33 = 0;
                }

                result = fix16_add(*(a3 + 4 * (v45 + v28)), v33);
                *(a3 + 4 * (v45 + v28)) = result;
                v7 = v31;
              }

              ++v28;
              ++v26;
            }

            while (v28 != v5);
          }

          ++*&v41[4];
        }

        while (*&v41[4] != v5);
      }
    }
  }

  return result;
}

uint64_t tag_forced(uint64_t result, unsigned int *a2, uint64_t a3, int a4)
{
  v4 = *(result + 44);
  v5 = *a2;
  v6 = (a4 == 0) << 31;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = v4 * v4;
    v10 = v4 * v4;
    do
    {
      v11 = a2[8 * v8 + 6];
      if (v11 != -1)
      {
        if (v8 && v4)
        {
          LODWORD(result) = 0;
          v12 = v7;
          do
          {
            if (result != v11)
            {
              v13 = v4;
              v14 = v12;
              do
              {
                *(a3 + 4 * v14) = v6;
                v14 += v4;
                --v13;
              }

              while (v13);
            }

            result = (result + 1);
            ++v12;
          }

          while (result != v4);
        }

        if (v8 != v5 - 1 && v4)
        {
          LODWORD(result) = 0;
          v15 = v10;
          do
          {
            if (result != v11)
            {
              v16 = v4;
              v17 = v15;
              do
              {
                *(a3 + 4 * v17++) = v6;
                --v16;
              }

              while (v16);
            }

            result = (result + 1);
            v15 += v4;
          }

          while (result != v4);
        }
      }

      ++v8;
      v7 += v9;
      v10 += v9;
    }

    while (v8 != v5);
  }

  v18 = a2[6];
  if (v18 != -1 && v4 != 0)
  {
    v20 = 0;
    do
    {
      if (v18 != v20)
      {
        v21 = v4;
        v22 = v20;
        do
        {
          *(a3 + 4 * v22) = v6;
          v22 += v4;
          --v21;
        }

        while (v21);
      }

      ++v20;
    }

    while (v20 != v4);
  }

  return result;
}

uint64_t tag_memmsc_sparse(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 44);
  v5 = *a2;
  tag_expsc_sparse(a1, a2, a3);
  result = xvm_expma(a3, a3, 0, v4 * v4 * v5);
  v16 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v4)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = 0;
          v12 = v4;
          v13 = v10;
          do
          {
            v11 = fix16_add(v11, a3[v13++]);
            --v12;
          }

          while (v12);
          v14 = v4;
          v15 = v10;
          do
          {
            result = fix16_div(a3[v15], v11);
            a3[v15++] = result;
            --v14;
          }

          while (v14);
          ++v9;
          v10 += v4;
        }

        while (v9 != v4);
      }

      ++v8;
      v7 += v4 * v4;
    }

    while (v8 != v16);
  }

  return result;
}

uint64_t tag_expsc_sparse(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 88);
  v7 = *(result + 44);
  v8 = *a2;
  if (*(a2 + 2))
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (v7)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = v7;
          v15 = v13;
          do
          {
            *(a3 + 4 * v15) = 0x80000000;
            v15 += v7;
            --v14;
          }

          while (v14);
          ++v12;
          ++v13;
        }

        while (v12 != v7);
      }

      ++v11;
      v10 += v7 * v7;
    }

    while (v11 != v8);
  }

  v47 = 0;
  v16 = 0;
  v44 = a2 + 6;
  v17 = -v7;
  v46 = v8;
  do
  {
    if (v7)
    {
      v18 = 0;
      v19 = &v44[8 * v16];
      v20 = v47;
      v49 = v17;
      do
      {
        v21 = *(v4 + 2);
        if (!v21 || *(v21 + 4 * (v7 * v16 + v18)) || ((v22 = *v19, v22 != -1) ? (v23 = v18 == v22) : (v23 = 0), v23))
        {
          v51 = v20;
          if (v19[1])
          {
            v24 = 0;
            v25 = 0;
            do
            {
              v26 = sparray_get(v6, *(*(v5 + 64) + 4 * *(*(v19 + 2) + 4 * v24)) + v18);
              result = fix16_add(v25, v26);
              v25 = result;
              ++v24;
            }

            while (v24 < v19[1]);
          }

          else
          {
            v25 = 0;
          }

          v27 = 0;
          v20 = v51;
          v28 = v51;
          v17 = v49;
          do
          {
            if (!v16 || (v29 = *(v4 + 2)) == 0 || *(v29 + 4 * (v49 + v27)) || v44[8 * (v16 - 1)] != -1 && v27 == *v19)
            {
              *(a3 + 4 * v28) = v25;
            }

            ++v27;
            v28 += v7;
          }

          while (v7 != v27);
        }

        ++v18;
        ++v20;
      }

      while (v18 != v7);
    }

    ++v16;
    v47 += v7 * v7;
    v17 += v7;
  }

  while (v16 != v46);
  if (v46 >= 2)
  {
    for (i = 1; i != v46; ++i)
    {
      if (v7)
      {
        v30 = 0;
        v31 = 0;
        v32 = &v44[8 * i];
        v50 = v7 * i;
        do
        {
          v33 = *(v4 + 2);
          v48 = v30;
          if (!v33 || *(v33 + 4 * (v7 * (i - 1) + v30)) || ((v34 = v44[8 * i - 8], v34 != -1) ? (v35 = v30 == v34) : (v35 = 0), v35))
          {
            v36 = 0;
            v52 = (v50 + v30) * v7;
            do
            {
              v37 = *(v4 + 2);
              if (!v37 || *(v37 + 4 * (v50 + v36)) || ((v38 = *v32, v38 != -1) ? (v39 = v36 == v38) : (v39 = 0), v39))
              {
                v40 = v4;
                if (v32[2])
                {
                  v41 = 0;
                  v42 = 0;
                  do
                  {
                    v43 = sparray_get(v6, *(*(v5 + 72) + 4 * *(*(v32 + 3) + 4 * v41)) + v31);
                    v42 = fix16_add(v42, v43);
                    ++v41;
                  }

                  while (v41 < v32[2]);
                }

                else
                {
                  v42 = 0;
                }

                result = fix16_add(*(a3 + 4 * (v52 + v36)), v42);
                *(a3 + 4 * (v52 + v36)) = result;
                v4 = v40;
              }

              ++v36;
              ++v31;
            }

            while (v36 != v7);
          }

          else
          {
            v31 += v7;
          }

          v30 = v48 + 1;
        }

        while (v48 + 1 != v7);
      }
    }
  }

  return result;
}

void *kh_init_32(uint64_t a1)
{
  result = heap_Calloc(*(a1 + 8), 1, 48);
  if (result)
  {
    *result = a1;
  }

  return result;
}

void *kh_destroy_32(uint64_t *a1)
{
  v2 = *a1;
  heap_Free(*(*a1 + 8), a1[4]);
  heap_Free(*(v2 + 8), a1[3]);
  heap_Free(*(v2 + 8), a1[5]);
  v3 = *(v2 + 8);

  return heap_Free(v3, a1);
}

uint64_t kh_get_32(uint64_t a1, int a2)
{
  result = *(a1 + 8);
  if (result)
  {
    v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v5 = (v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11);
    v6 = (result - 1) & (v5 ^ HIWORD(v5));
    v7 = 1;
    v8 = v6;
    while (1)
    {
      v9 = *(*(a1 + 24) + 4 * (v8 >> 4)) >> (2 * (v8 & 0xF));
      if ((v9 & 2) != 0 || (v9 & 1) == 0 && *(*(a1 + 32) + 4 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + v7++) & (result - 1);
      if (v8 == v6)
      {
        return result;
      }
    }

    if ((v9 & 3) != 0)
    {
      return result;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t kh_resize_32(uint64_t *a1, int a2)
{
  v2 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  v4 = v3 | HIWORD(v3);
  if ((v4 + 1) > 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4;
  }

  v6 = 3 * v5 + 2;
  if (*(a1 + 3) >= v6)
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(*a1 + 8);
  if ((v4 + 1) >= 0x10)
  {
    v10 = (v5 >> 2) & 0x3FFFFFFC;
  }

  else
  {
    v10 = 4;
  }

  v11 = heap_Alloc(v9, v10);
  if (v11)
  {
    v12 = v11;
    memset(v11, 170, v10);
    v13 = *(a1 + 2);
    if (v13 >= v5)
    {
      goto LABEL_13;
    }

    v14 = heap_Realloc(*(v8 + 8), a1[4], 4 * v5);
    if (v14)
    {
      a1[4] = v14;
      v15 = heap_Realloc(*(v8 + 8), a1[5], 4 * v5);
      if (v15)
      {
        a1[5] = v15;
        v13 = *(a1 + 2);
        if (!v13)
        {
LABEL_26:
          heap_Free(*(v8 + 8), a1[3]);
          result = 0;
          a1[3] = v12;
          *(a1 + 2) = v5;
          *(a1 + 4) = *(a1 + 3);
          *(a1 + 5) = v6;
          return result;
        }

LABEL_13:
        v16 = 0;
        v17 = a1[3];
        v18 = v5 - 1;
        do
        {
          v19 = *(v17 + 4 * (v16 >> 4));
          if (((v19 >> (2 * (v16 & 0xF))) & 3) == 0)
          {
            v20 = a1[4];
            v21 = a1[5];
            v22 = *(v20 + 4 * v16);
            v23 = *(v21 + 4 * v16);
            *(v17 + 4 * (v16 >> 4)) = v19 | (1 << (2 * (v16 & 0xF)));
            while (1)
            {
              v24 = 9 * ((v22 + ~(v22 << 15)) ^ ((v22 + ~(v22 << 15)) >> 10));
              v25 = (v24 ^ (v24 >> 6)) + ~((v24 ^ (v24 >> 6)) << 11);
              v26 = (v25 ^ HIWORD(v25)) & v18;
              v27 = v26 >> 4;
              v28 = *(v12 + 4 * v27);
              v29 = 2 * (v26 & 0xF);
              v30 = 2 << v29;
              if (((2 << v29) & v28) == 0)
              {
                v31 = 1;
                do
                {
                  v26 = (v26 + v31) & v18;
                  v27 = v26 >> 4;
                  v28 = *(v12 + 4 * v27);
                  v29 = 2 * (v26 & 0xF);
                  v30 = 2 << v29;
                  ++v31;
                }

                while (((2 << v29) & v28) == 0);
              }

              *(v12 + 4 * v27) = v28 & ~v30;
              if (v26 >= *(a1 + 2) || ((*(v17 + 4 * v27) >> v29) & 3) != 0)
              {
                break;
              }

              v32 = *(v20 + 4 * v26);
              *(v20 + 4 * v26) = v22;
              v33 = *(v21 + 4 * v26);
              *(v21 + 4 * v26) = v23;
              *(v17 + 4 * v27) |= 1 << v29;
              v22 = v32;
              v23 = v33;
            }

            *(v20 + 4 * v26) = v22;
            *(v21 + 4 * v26) = v23;
            v13 = *(a1 + 2);
          }

          ++v16;
        }

        while (v16 != v13);
        if (v13 > v5)
        {
          a1[4] = heap_Realloc(*(v8 + 8), a1[4], 4 * v5);
          a1[5] = heap_Realloc(*(v8 + 8), a1[5], 4 * v5);
        }

        goto LABEL_26;
      }
    }

    heap_Free(*(v8 + 8), v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t kh_put_32(uint64_t a1, int a2, int *a3)
{
  if (*(a1 + 16) >= *(a1 + 20))
  {
    v6 = *(a1 + 8);
    v7 = v6 <= *(a1 + 12) >> 1 ? v6 + 1 : v6 - 1;
    if ((kh_resize_32(a1, v7) & 0x80000000) != 0)
    {
      *a3 = -1;
      return *(a1 + 8);
    }
  }

  v8 = *(a1 + 8);
  v9 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v10 = (v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11);
  v11 = (v8 - 1) & (v10 ^ HIWORD(v10));
  v12 = *(a1 + 24);
  if (((*(v12 + 4 * (v11 >> 4)) >> (2 * (v11 & 0xF))) & 2) != 0)
  {
    result = v11;
  }

  else
  {
    v14 = 1;
    v15 = v11;
    LODWORD(result) = *(a1 + 8);
    do
    {
      v16 = *(v12 + 4 * (v15 >> 4)) >> (2 * (v15 & 0xF));
      if ((v16 & 2) != 0 || (v16 & 1) == 0 && *(*(a1 + 32) + 4 * v15) == a2)
      {
        v17 = ((*(v12 + 4 * (v15 >> 4)) >> (2 * (v15 & 0xF))) & 2) == 0;
        goto LABEL_20;
      }

      if (v16)
      {
        result = v15;
      }

      else
      {
        result = result;
      }

      v15 = (v15 + v14++) & (v8 - 1);
    }

    while (v15 != v11);
    if (result != v8)
    {
      goto LABEL_26;
    }

    v17 = 1;
    LODWORD(result) = *(a1 + 8);
    v15 = v11;
LABEL_20:
    if (result == v8 || v17)
    {
      result = v15;
    }

    else
    {
      result = result;
    }
  }

LABEL_26:
  v19 = result >> 4;
  v20 = 2 * (result & 0xF);
  v21 = *(v12 + 4 * (result >> 4)) >> v20;
  if ((v21 & 2) != 0)
  {
    *(*(a1 + 32) + 4 * result) = a2;
    *(v12 + 4 * v19) &= ~(3 << v20);
    *(a1 + 12) = vadd_s32(*(a1 + 12), 0x400000004);
    v22 = 1;
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      *a3 = 0;
      return result;
    }

    *(*(a1 + 32) + 4 * result) = a2;
    *(v12 + 4 * v19) &= ~(3 << v20);
    *(a1 + 12) += 4;
    v22 = 2;
  }

  *a3 = v22;
  return result;
}

uint64_t xvm_expma(uint64_t result, unsigned int *a2, int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = result;
    v7 = a4;
    do
    {
      v8 = *a2++;
      v9 = fix16_exp(v8);
      result = fix16_sub(v9, a3);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t _parse_one_rule(uint64_t a1, char *__s1, uint64_t a3)
{
  v6 = *(a3 + 16) + 16 * *(a3 + 8);
  while (1)
  {
    v7 = *__s1;
    if (v7 != 32)
    {
      break;
    }

    ++__s1;
  }

  if (!*__s1 || v7 == 35)
  {
    return 0;
  }

  v8 = 2585796618;
  v9 = strstr(__s1, ")-->");
  if (v9 && (v10 = v9, strlen(v9) >= 5))
  {
    v11 = strlen(v10 + 4);
    v12 = heap_Calloc(*(a1 + 8), 1, (v11 + 1));
    *(v6 + 8) = v12;
    if (!v12)
    {
      return v8;
    }

    strcpy(v12, v10 + 4);
  }

  else
  {
    wapiti_info(*(a1 + 32), "invalid rule label: %s");
  }

  v13 = strlen(__s1);
  v14 = heap_Calloc(*(a1 + 8), 1, (v13 + 2));
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v34 = 0;
    *v6 = 0;
    v17 = __s1;
    do
    {
      if (!strstr(v17, ")^") && !strstr(v17, ")-->"))
      {
        break;
      }

      *v6 = ++v16;
      v18 = strstr(v17, ")^");
      v17 = v18 + 2;
    }

    while (v18);
    v19 = *(a3 + 32);
    v20 = *(a3 + 36);
    if (v19 + 4 * v16 <= v20)
    {
LABEL_19:
      *(v6 + 4) = v19;
      while (1)
      {
        v22 = strstr(__s1, ")^");
        if (!v22)
        {
          v22 = strstr(__s1, ")-->");
          if (!v22)
          {
            break;
          }
        }

        *v22 = 0;
        v23 = strchr(__s1, 40);
        if (!v23)
        {
          wapiti_info(*(a1 + 32), "invalid feature id: %s");
          break;
        }

        *v23 = 0;
        v24 = *__s1;
        v25 = v24 == 33;
        if (v24 == 33)
        {
          v26 = __s1 + 1;
        }

        else
        {
          v26 = __s1;
        }

        v27 = strchr(v26, 95);
        if (v27)
        {
          *v27 = 0;
          v28 = atoi(v26);
          v26 += strlen(v26) + 1;
        }

        else
        {
          wapiti_info(*(a1 + 32), "invalid offset: %s");
          v28 = 0;
        }

        v29 = atoi(v26);
        v30 = &v26[strlen(v26) + 1];
        *v15 = 124;
        v31 = strcat(v15, v30);
        *&v15[strlen(v31)] = 124;
        if ((qrk_str2id(a1, *a3, v15, &v34, 0) & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        v32 = *(a3 + 24);
        *(v32 + 4 * *(a3 + 32)) = v25;
        *(v32 + 4 * (*(a3 + 32) + 1)) = v28;
        *(v32 + 4 * (*(a3 + 32) + 2)) = v29;
        *(v32 + 4 * (*(a3 + 32) + 3)) = v34;
        *(a3 + 32) += 4;
        __s1 = &v30[strlen(v30) + 2];
      }

      ++*(a3 + 8);
LABEL_33:
      heap_Free(*(a1 + 8), v15);
      return 0;
    }

    v21 = heap_Realloc(*(a1 + 8), *(a3 + 24), 4 * (v16 + v20 + 50));
    if (v21)
    {
      v19 = *(a3 + 32);
      *(a3 + 36) += *v6 + 50;
      *(a3 + 24) = v21;
      goto LABEL_19;
    }
  }

  return v8;
}

uint64_t wapiti_rules_load(uint64_t a1, const char *a2, int a3, uint64_t *a4)
{
  wapiti_info(*(a1 + 32), "Load wapiti forcing rules...");
  result = heap_Calloc(*(a1 + 8), 1, 40);
  if (result)
  {
    v9 = result;
    if (!a3)
    {
      goto LABEL_4;
    }

    if (strncmp(a2, "Rule_Number: ", 0xDuLL))
    {
      goto LABEL_4;
    }

    v10 = atoi(a2 + 13);
    v11 = strlen(a2);
    if (!v10)
    {
      goto LABEL_4;
    }

    v12 = v11;
    if ((qrk_new(a1, v9) & 0x80000000) != 0)
    {
      return 0;
    }

    v13 = heap_Calloc(*(a1 + 8), 1, 16 * v10);
    *(v9 + 16) = v13;
    if (!v13)
    {
      return 2585796618;
    }

    result = heap_Calloc(*(a1 + 8), 300, 4);
    *(v9 + 24) = result;
    if (result)
    {
      v14 = &a2[v12 + 1];
      *(v9 + 36) = 300;
      *(v9 + 8) = 0;
      v15 = &a2[a3];
      while (v14 < v15)
      {
        v16 = strlen(v14);
        _parse_one_rule(a1, v14, v9);
        v14 += v16 + 1;
      }

LABEL_4:
      result = 0;
      *a4 = v9;
    }
  }

  return result;
}

uint64_t _apply_one_rule(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  if (!*a3)
  {
    return *(a3 + 8);
  }

  v10 = 0;
  v22 = a4 + 24;
  for (i = 3; ; i += 4)
  {
    v12 = a2[3];
    v13 = i + *(a3 + 4);
    v14 = *(v12 + 4 * (v13 - 3));
    v15 = *(v12 + 4 * (v13 - 2)) + a5;
    if (v15 < 0 || v15 >= *a4 || (v16 = *(v12 + 4 * (v13 - 1)), v16 >= *(*(a4 + 16) + 4 * v15)))
    {
      v18 = 0;
    }

    else
    {
      v25 = qrk_id2str(a1, *a2, *(v12 + 4 * v13));
      *a6 = 124;
      v17 = strcat(a6, *(*(v22 + 8 * v15) + 8 * v16));
      *&a6[strlen(v17)] = 124;
      v18 = strstr(v25, a6);
    }

    if (!v14 && v18 == 0)
    {
      break;
    }

    if (v14 == 1 && v18 != 0)
    {
      break;
    }

    if (++v10 >= *a3)
    {
      return *(a3 + 8);
    }
  }

  return 0;
}

uint64_t wapiti_rules_apply(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  wapiti_info(*(a1 + 32), "Apply wapiti forcing rules...");
  v6 = *a3;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*(a3 + 2) + 4 * v7);
      if (v9)
      {
        v10 = *&a3[2 * v7 + 6];
        do
        {
          v11 = *v10++;
          v12 = strlen(v11);
          if (v8 <= v12)
          {
            v8 = v12;
          }

          --v9;
        }

        while (v9);
      }

      ++v7;
    }

    while (v7 != v6);
    v13 = v8 + 10;
  }

  else
  {
    v13 = 10;
  }

  v14 = 2585796618;
  v15 = heap_Calloc(*(a1 + 8), 1, v13);
  if (v15)
  {
    v16 = v15;
    if (*(a3 + 1) || (v17 = heap_Calloc(*(a1 + 8), 1, 8 * *a3), (*(a3 + 1) = v17) != 0))
    {
      if (*a3)
      {
        v18 = 0;
        LODWORD(v19) = *(a2 + 8);
        while (!v19)
        {
          v22 = *(a3 + 1);
          if (!*(v22 + 8 * v18))
          {
            goto LABEL_26;
          }

LABEL_23:
          if (++v18 >= *a3)
          {
            goto LABEL_27;
          }
        }

        v20 = 0;
        v21 = 1;
        do
        {
          *(*(a3 + 1) + 8 * v18) = _apply_one_rule(a1, a2, *(a2 + 16) + v20, a3, v18, v16);
          v22 = *(a3 + 1);
          v23 = *(v22 + 8 * v18);
          v19 = *(a2 + 8);
          v20 += 16;
        }

        while (v21++ < v19 && v23 == 0);
        if (v23)
        {
          goto LABEL_23;
        }

LABEL_26:
        *(v22 + 8 * v18) = "";
        goto LABEL_23;
      }

LABEL_27:
      heap_Free(*(a1 + 8), v16);
      return 0;
    }
  }

  return v14;
}

uint64_t wapiti_rules_unload(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    wapiti_info(*(a1 + 32), "Unload wapiti forcing rules...");
    if (*(a2 + 8) && *(a2 + 16))
    {
      v4 = 0;
      v5 = 8;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 16) + v5));
        ++v4;
        v5 += 16;
      }

      while (v4 < *(a2 + 8));
      heap_Free(*(a1 + 8), *(a2 + 16));
      heap_Free(*(a1 + 8), *(a2 + 24));
    }

    if (*a2)
    {
      qrk_free(a1);
    }

    heap_Free(*(a1 + 8), a2);
  }

  return 0;
}

uint64_t crf_Init_ReadOnly_ReferenceCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, __int16 a9, char a10, uint64_t a11)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21[4] = 0;
  v22 = 0;
  result = InitRsrcFunction(a1, a2, &v26);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v25);
    if ((result & 0x80000000) == 0)
    {
      v21[0] = a1;
      v21[1] = a2;
      v21[2] = a3;
      v21[3] = a4;
      __strcpy_chk();
      LODWORD(v22) = a6;
      BYTE6(v22) = a10;
      WORD2(v22) = a9;
      v23 = a11;
      ObjcForThisApi = getObjcForThisApi(v26, v25);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a7, crf_ObjcLoad, crf_ObjcClose, v21, &v24);
      if ((result & 0x80000000) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v24 + 32);
      }

      *a5 = v20;
    }
  }

  return result;
}

uint64_t crf_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  result = InitRsrcFunction(a1, a2, &v23);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v24);
    if ((result & 0x80000000) == 0)
    {
      memcpy(__dst, v23, sizeof(__dst));
      *&__dst[32] = *(v24 + 32);
      v11 = *(a5 + 40);
      v12 = *(a5 + 48);
      v13 = *(a5 + 44) | (*(a5 + 46) << 16);
      v26 = 0;
      result = ssftriff_reader_ObjOpen(a1, a2, v11, a3, (a5 + 32), v13, &v26);
      if ((result & 0x80000000) == 0)
      {
        v14 = heap_Calloc(*&__dst[8], 1, 344);
        *(a4 + 32) = v14;
        if (v14)
        {
          result = crf_Init(a1, a2, v26, v14);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          strcpy((*(a4 + 32) + 84), a3);
          if (v12)
          {
            v25 = 1;
            result = v12(__dst, *(a4 + 32), &v25);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            *(*(*(a4 + 32) + 24) + 24) = v25;
          }

          return ssftriff_reader_ObjClose(v26, v15, v16, v17, v18, v19, v20, v21);
        }

        else
        {
          return 2585796618;
        }
      }
    }
  }

  return result;
}

uint64_t crf_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v14 = 0;
  result = InitRsrcFunction(a1, a2, &v14);
  if ((result & 0x80000000) == 0)
  {
    v12 = *(a3 + 32);
    if (v12)
    {
      v13 = v14;
      crf_Deinit(v12, v5, v6, v7, v8, v9, v10, v11);
      heap_Free(*(v13 + 8), v12);
    }

    return 0;
  }

  return result;
}

uint64_t crf_Deinit_ReadOnly_DereferenceCnt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjcForThisApi = getObjcForThisApi(a1, a2);

  return objc_ReleaseObject(ObjcForThisApi, a3 + 84);
}

uint64_t crf_Init(_WORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  __dst[13] = *MEMORY[0x1E69E9840];
  v213 = 0;
  v212 = 0;
  *(a4 + 68) = 0;
  Chunk = ssftriff_reader_FindChunk(a3, "FAST", 2 * (*(a4 + 72) != 0), &v213, &v212);
  if (Chunk < 0)
  {
    LODWORD(v10) = Chunk;
    if ((Chunk & 0x1FFF) == 0xA)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(a4 + 68) = 1;
    v9 = ssftriff_reader_CloseChunk(a3);
    if ((v9 & 0x80000000) != 0)
    {
LABEL_352:
      v10 = v9;
      goto LABEL_353;
    }
  }

  *(a4 + 80) = 0;
  v11 = ssftriff_reader_FindChunk(a3, "QPTR", 2 * (*(a4 + 72) != 0), &v213, &v212);
  if (v11 < 0)
  {
    LODWORD(v10) = v11;
    if ((v11 & 0x1FFF) != 0xA)
    {
      goto LABEL_12;
    }

LABEL_9:
    v12 = ssftriff_reader_CloseChunk(a3);
    if (v12 >= 0)
    {
      v10 = v10;
    }

    else
    {
      v10 = v12;
    }

    goto LABEL_353;
  }

  *(a4 + 80) = 1;
  v9 = ssftriff_reader_CloseChunk(a3);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_352;
  }

LABEL_12:
  if (!*(a4 + 68))
  {
    v215 = 0;
    __dst[0] = 0;
    v223 = 0;
    BYTE4(v214) = 0;
    LODWORD(v214) = 0;
    *v221 = 0;
    __s = 0;
    v220 = 0;
    HIDWORD(__n) = 0;
    inited = InitRsrcFunction(a1, a2, &__s);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    wapiti_info(*(__s + 4), "CRF COMP Init...");
    inited = rdr_new(__s, 0, v221);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    inited = mdl_new(*v221, &v220);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_330;
    }

    v100 = v220;
    *(v220 + 8) = opt_defaults;
    *(v100 + 24) = unk_1C37BE7A4;
    v101 = ssftriff_reader_OpenChunk(a3, &v214, &v215, __dst, v17, v18, v19, v20);
    v102 = 0;
    if ((v101 & 0x80000000) != 0)
    {
LABEL_186:
      if ((v101 & 0x1FFF) == 0x14)
      {
        v10 = 0;
      }

      else
      {
        v10 = v101;
      }

      wapiti_info(*(__s + 4), "OBS Count from model:%I32u, OBSW count:%d");
      goto LABEL_337;
    }

    v10 = 2585796618;
    while (1)
    {
      v103 = heap_Alloc(*(__s + 1), 100);
      if (!v103)
      {
        goto LABEL_337;
      }

      v104 = v103;
      if (!(v214 ^ 0x5453494C | BYTE4(v214)))
      {
        break;
      }

      if (!(v214 ^ 0x41524150 | BYTE4(v214)))
      {
        v105 = _crf_parse_params(__s, __dst[0], v215, a4);
        if ((v105 & 0x80000000) != 0)
        {
          goto LABEL_335;
        }

        goto LABEL_185;
      }

      if (!(v214 ^ 0x454C5552 | BYTE4(v214)))
      {
        v105 = wapiti_rules_load(__s, __dst[0], v215, (*(v220 + 112) + 56));
        if ((v105 & 0x80000000) != 0)
        {
          goto LABEL_335;
        }

        goto LABEL_185;
      }

      if (!(v214 ^ 0x53525053 | BYTE4(v214)))
      {
        *(v220 + 32) = 1;
        v106 = *(__s + 4);
        v107 = "sparse theta ENABLED";
        goto LABEL_132;
      }

      LODWORD(__n) = 0;
      wapiti_info(*(__s + 4), "ChunkID:%s, cChunk:%d");
      if (!(v214 ^ 0x5753424F | BYTE4(v214)))
      {
        if (*(v220 + 32))
        {
          v105 = mdl_sync_sparse(v220);
          if ((v105 & 0x80000000) != 0)
          {
            goto LABEL_335;
          }
        }

        else
        {
          v105 = mdl_sync(v220);
          if ((v105 & 0x80000000) != 0)
          {
LABEL_335:
            v10 = v105;
LABEL_337:
            v206 = v220;
            goto LABEL_350;
          }
        }
      }

      *(v104 + 96) = 0;
      *(v104 + 64) = 0u;
      *(v104 + 80) = 0u;
      *(v104 + 32) = 0u;
      *(v104 + 48) = 0u;
      *v104 = 0u;
      *(v104 + 16) = 0u;
      v108 = v215;
      if (v215)
      {
        v109 = 0;
        v110 = 0;
        do
        {
          v218 = 0;
          v223 = 100;
          ssftriff_reader_ReadStringZ(a3, __dst[0], v108, v109, v104, &v223);
          if (v214 ^ 0x45444F4D | BYTE4(v214))
          {
            if (v214 ^ 0x52454452 | BYTE4(v214))
            {
              if (v214 ^ 0x4C4B5251 | BYTE4(v214))
              {
                if (v214 ^ 0x4F4B5251 | BYTE4(v214))
                {
                  if (!(v214 ^ 0x5753424F | BYTE4(v214)))
                  {
                    v217 = 0;
                    if (wapiti_scanf_fmt_pair(v104, "=", &v217 + 1, &v217) != 2)
                    {
                      wapiti_fatal(*(__s + 4), "Bad format of OBSW chunk");
                    }

                    if (*(v220 + 32))
                    {
                      sparray_set(*(v220 + 88), SHIDWORD(v217), v217);
                    }

                    else
                    {
                      *(*(v220 + 80) + 4 * HIDWORD(v217)) = v217;
                    }

                    v102 = (v102 + 1);
                  }

                  goto LABEL_184;
                }

                v123 = *(v220 + 112);
                if (wapiti_scanf_fmt_1(v104, "#qrk#", &v218 + 1) != 1)
                {
                  HIDWORD(v217) = 0;
                  v124 = wapiti_ns_readline(__s, v104, &v217 + 1);
                  v125 = __s;
                  v126 = *(v123 + 48);
LABEL_172:
                  v105 = qrk_str2id(v125, v126, (v104 + v124), &__n, HIDWORD(v217));
                  if ((v105 & 0x80000000) != 0)
                  {
                    goto LABEL_335;
                  }

                  goto LABEL_184;
                }

                v115 = *(__s + 4);
                v116 = "Quark O Size:%d";
              }

              else
              {
                v114 = *(v220 + 112);
                if (wapiti_scanf_fmt_1(v104, "#qrk#", &v218 + 1) != 1)
                {
                  HIDWORD(v217) = 0;
                  v124 = wapiti_ns_readline(__s, v104, &v217 + 1);
                  v125 = __s;
                  v126 = *(v114 + 40);
                  goto LABEL_172;
                }

                v115 = *(__s + 4);
                v116 = "Quark L Size:%d";
              }

              wapiti_info(v115, v116);
            }

            else
            {
              v111 = *(v220 + 112);
              if (wapiti_scanf_fmt_3(v104, "#rdr#", (v111 + 24), (v111 + 20), (v111 + 8)) == 3)
              {
                *(v111 + 12) = 0;
                *(v111 + 16) = 0;
                v112 = *(v111 + 24);
                if (v112)
                {
                  v113 = heap_Calloc(*(__s + 1), 8, v112);
                  *(v111 + 32) = v113;
                  if (!v113)
                  {
                    goto LABEL_337;
                  }
                }

                v110 = 0;
              }

              else if (*(v111 + 24))
              {
                v117 = v102;
                HIDWORD(v217) = 0;
                v118 = wapiti_ns_readline(__s, v104, &v217 + 1);
                v119 = heap_Alloc(*(__s + 1), (HIDWORD(v217) + 1));
                if (!v119)
                {
                  goto LABEL_337;
                }

                v120 = v119;
                v121 = strncpy(v119, (v104 + v118), HIDWORD(v217));
                v121[HIDWORD(v217)] = 0;
                v105 = pat_comp(__s, v120, (*(v111 + 32) + 8 * v110));
                if ((v105 & 0x80000000) != 0)
                {
                  goto LABEL_335;
                }

                v122 = __tolower(*v120);
                if (v122 == 42)
                {
                  *(v111 + 12) = vadd_s32(*(v111 + 12), 0x100000001);
                  v102 = v117;
                }

                else
                {
                  v102 = v117;
                  if (v122 == 98)
                  {
                    ++*(v111 + 16);
                  }

                  else if (v122 == 117)
                  {
                    ++*(v111 + 12);
                  }
                }

                ++v110;
              }

              v127 = *(v111 + 24);
              if (v110 == v127)
              {
                v128 = 0;
              }

              else
              {
                v128 = v110;
              }

              if (v127)
              {
                v110 = v128;
              }
            }
          }

          else if (wapiti_scanf_fmt_2(v104, "#mdl#", &v218, &__n + 1) == 2)
          {
            *(v220 + 40) = v218;
          }

          else
          {
            if (wapiti_scanf_fmt_1(v104, "#mdl#", &__n + 1) != 1)
            {
              wapiti_fatal(*(__s + 4), "crf riff data error, mode chunk format error");
              v10 = 2585796626;
              goto LABEL_337;
            }

            *(v220 + 40) = 0;
          }

LABEL_184:
          v109 += v223;
          *v104 = 0u;
          *(v104 + 16) = 0u;
          *(v104 + 32) = 0u;
          *(v104 + 48) = 0u;
          *(v104 + 64) = 0u;
          *(v104 + 80) = 0u;
          *(v104 + 96) = 0;
          v108 = v215;
        }

        while (v109 < v215);
      }

LABEL_185:
      heap_Free(*(__s + 1), v104);
      ssftriff_reader_CloseChunk(a3);
      v101 = ssftriff_reader_OpenChunk(a3, &v214, &v215, __dst, v129, v130, v131, v132);
      if ((v101 & 0x80000000) != 0)
      {
        goto LABEL_186;
      }
    }

    v106 = *(__s + 4);
    v107 = "ChunkID:%s, cChunk:%d, pChunk:%s";
LABEL_132:
    wapiti_info(v106, v107);
    goto LABEL_185;
  }

  if (!*(a4 + 80))
  {
    v223 = 0;
    *v221 = 0;
    __s = 0;
    __n = 0;
    v220 = 0;
    v216 = 0;
    v215 = 0;
    v214 = 0;
    inited = InitRsrcFunction(a1, a2, v221);
    if ((inited & 0x80000000) == 0)
    {
      inited = rdr_new(*v221, 0, &v220);
      if ((inited & 0x80000000) == 0)
      {
        inited = mdl_new(v220, &v214);
        if ((inited & 0x80000000) == 0)
        {
          v133 = v214;
          *(v214 + 8) = opt_defaults;
          *(v133 + 24) = unk_1C37BE7A4;
          while (1)
          {
            v22 = ssftriff_reader_OpenChunk(a3, &v215, &v223, &__s, v17, v18, v19, v20);
            if ((v22 & 0x80000000) != 0)
            {
LABEL_332:
              if ((v22 & 0x1FFF) == 0x14)
              {
                v10 = 0;
              }

              else
              {
                v10 = v22;
              }

              goto LABEL_349;
            }

            if (!(v215 ^ 0x41524150 | v216))
            {
              StringZ = _crf_parse_params(*v221, __s, v223, a4);
              if ((StringZ & 0x80000000) != 0)
              {
                goto LABEL_348;
              }

              goto LABEL_221;
            }

            if (!(v215 ^ 0x454C5552 | v216))
            {
              StringZ = wapiti_rules_load(*v221, __s, v223, (*(v214 + 112) + 56));
              if ((StringZ & 0x80000000) != 0)
              {
                goto LABEL_348;
              }

              goto LABEL_221;
            }

            if (!(v215 ^ 0x53525053 | v216))
            {
              break;
            }

            if (!(v215 ^ 0x52545051 | v216))
            {
              *(v214 + 36) = 1;
              v138 = *(*v221 + 32);
              v139 = "QP-Tree ENABLED";
              goto LABEL_220;
            }

            if (!(v215 ^ 0x45444F4D | v216))
            {
              if (v223)
              {
                *(v214 + 40) = *__s;
              }

              goto LABEL_221;
            }

            if (v215 ^ 0x52454452 | v216)
            {
              if (v215 ^ 0x4C4B5251 | v216)
              {
                if (!(v215 ^ 0x4C59454B | v216) || !(v215 ^ 0x4C46454C | v216))
                {
                  LODWORD(__n) = 0;
                  if (v215 == 76)
                  {
                    v152 = *__s;
                    LODWORD(__n) = *__s;
                  }

                  else if (v215 == 75 && (v151 = v223, v223))
                  {
                    v152 = 0;
                    v153 = __s;
                    do
                    {
                      if (!*v153++)
                      {
                        LODWORD(__n) = ++v152;
                      }

                      --v151;
                    }

                    while (v151);
                  }

                  else
                  {
                    v152 = 0;
                  }

                  v10 = 2585796618;
                  v166 = heap_Realloc(*(*v221 + 8), *(*(v220 + 40) + 8), 8 * v152);
                  if (!v166)
                  {
                    goto LABEL_349;
                  }

                  v167 = v166;
                  v168 = __n;
                  *(*(v220 + 40) + 24) = __n;
                  v169 = heap_Calloc(*(*v221 + 8), v168, 16);
                  if (!v169)
                  {
                    goto LABEL_342;
                  }

                  v170 = v169;
                  v171 = ssftriff_reader_DetachChunkData(a3, a4, &__s, v16, v17, v18, v19, v20);
                  if ((v171 & 0x80001FFF) == 0x8000000A)
                  {
                    v10 = v171;
LABEL_342:
                    v209 = *(v220 + 40);
LABEL_343:
                    *(v209 + 8) = v167;
                    goto LABEL_349;
                  }

                  if (v215 == 75)
                  {
                    v175 = __n;
                    if (__n)
                    {
                      v176 = 0;
                      v177 = __s;
                      do
                      {
                        *v170 = v176;
                        *(v170 + 8) = v177;
                        *(v167 + 8 * v176) = v170;
                        v177 += strlen(v177) + 1;
                        ++v176;
                        v175 = __n;
                        v170 += 16;
                      }

                      while (v176 < __n);
                    }
                  }

                  else if (v215 == 76)
                  {
                    if (__n)
                    {
                      v172 = 0;
                      v173 = __s + 4;
                      v174 = &__s[__n + 4];
                      do
                      {
                        *v170 = v172;
                        *(v170 + 8) = v174;
                        *(v167 + 8 * v172) = v170;
                        v174 += v173[v172++] + 1;
                        v170 += 16;
                      }

                      while (v172 < __n);
                      v175 = __n;
                    }

                    else
                    {
                      v175 = 0;
                    }
                  }

                  else
                  {
                    v175 = __n;
                  }

                  v193 = *(v220 + 40);
                  goto LABEL_300;
                }

                if (v215 ^ 0x4F4B5251 | v216)
                {
                  if (!(v215 ^ 0x4F59454B | v216) || !(v215 ^ 0x4F46454C | v216))
                  {
                    LODWORD(__n) = 0;
                    if (v215 == 76)
                    {
                      v179 = *__s;
                      LODWORD(__n) = *__s;
                    }

                    else if (v215 == 75 && (v178 = v223, v223))
                    {
                      v179 = 0;
                      v180 = __s;
                      do
                      {
                        if (!*v180++)
                        {
                          LODWORD(__n) = ++v179;
                        }

                        --v178;
                      }

                      while (v178);
                    }

                    else
                    {
                      v179 = 0;
                    }

                    v10 = 2585796618;
                    v194 = heap_Realloc(*(*v221 + 8), *(*(v220 + 48) + 8), 8 * v179);
                    if (!v194)
                    {
                      goto LABEL_349;
                    }

                    v167 = v194;
                    v195 = __n;
                    *(*(v220 + 48) + 24) = __n;
                    v196 = heap_Calloc(*(*v221 + 8), v195, 16);
                    if (!v196)
                    {
                      goto LABEL_355;
                    }

                    v197 = v196;
                    v198 = ssftriff_reader_DetachChunkData(a3, (a4 + 8), &__s, v16, v17, v18, v19, v20);
                    if ((v198 & 0x80001FFF) == 0x8000000A)
                    {
                      v10 = v198;
LABEL_355:
                      v209 = *(v220 + 48);
                      goto LABEL_343;
                    }

                    if (v215 == 75)
                    {
                      v175 = __n;
                      if (__n)
                      {
                        v202 = 0;
                        v203 = __s;
                        do
                        {
                          *v197 = v202;
                          *(v197 + 8) = v203;
                          *(v167 + 8 * v202) = v197;
                          v203 += strlen(v203) + 1;
                          ++v202;
                          v175 = __n;
                          v197 += 16;
                        }

                        while (v202 < __n);
                      }
                    }

                    else if (v215 == 76)
                    {
                      if (__n)
                      {
                        v199 = 0;
                        v200 = __s + 4;
                        v201 = &__s[__n + 4];
                        do
                        {
                          *v197 = v199;
                          *(v197 + 8) = v201;
                          *(v167 + 8 * v199) = v197;
                          v201 += v200[v199++] + 1;
                          v197 += 16;
                        }

                        while (v199 < __n);
                        v175 = __n;
                      }

                      else
                      {
                        v175 = 0;
                      }
                    }

                    else
                    {
                      v175 = __n;
                    }

                    v193 = *(v220 + 48);
LABEL_300:
                    *(v193 + 8) = v167;
                    *(v193 + 20) = v175;
                    goto LABEL_221;
                  }

                  if (v215 ^ 0x5753424F | v216)
                  {
                    if (!(v215 ^ 0x4657424F | v216))
                    {
                      *(a4 + 76) = 1;
                      StringZ = mdl_sync_sparse(v214);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }

                      StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 16), &__s, v16, v17, v18, v19, v20);
                      if ((StringZ & 0x80001FFF) == 0x8000000A)
                      {
                        goto LABEL_348;
                      }

                      v134 = __s;
                      v135 = *__s;
                      v136 = *(v214 + 88);
                      *(v136 + 8) = *__s;
                      *(v136 + 12) = *(v134 + 1);
                      *(v136 + 16) = *(v134 + 2);
                      *(v136 + 20) = *(v134 + 3);
                      v137 = (v135 >> 4) + 4;
                      if (v135 < 0x10)
                      {
                        v137 = 5;
                      }

                      *(v136 + 24) = v134 + 16;
                      *(v136 + 32) = &v134[4 * v137];
                      *(v136 + 40) = &v134[4 * v137 + 4 * v135];
                    }
                  }

                  else
                  {
                    if (*(v214 + 32))
                    {
                      StringZ = mdl_sync_sparse(v214);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }
                    }

                    else
                    {
                      StringZ = mdl_sync(v214);
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }
                    }

                    LODWORD(__n) = v223 >> 2;
                    if (v223 >= 4)
                    {
                      v204 = 0;
                      v205 = __s;
                      do
                      {
                        if (*(v214 + 32))
                        {
                          sparray_set(*(v214 + 88), *&v205[4 * v204], *&v205[4 * v204 + 4]);
                        }

                        else
                        {
                          *(*(v214 + 80) + 4 * *&v205[4 * v204]) = *&v205[4 * v204 + 4];
                        }

                        v204 += 2;
                      }

                      while (v204 < __n);
                    }
                  }
                }

                else
                {
                  LODWORD(__n) = v223 >> 4;
                  v182 = heap_Alloc(*(*v221 + 8), 24 * (v223 >> 4));
                  if (!v182)
                  {
LABEL_340:
                    v10 = 2585796618;
                    goto LABEL_349;
                  }

                  **(v220 + 48) = v182;
                  v183 = **(v220 + 48);
                  v184 = __n;
                  LODWORD(__n) = v223 >> 2;
                  if (v223 >= 4)
                  {
                    v185 = 0;
                    v186 = v183 + 24 * v184;
                    v187 = __s;
                    v188 = v186 - 8;
                    do
                    {
                      v189 = *&v187[4 * v185];
                      if ((v189 & 0x80000000) != 0)
                      {
                        v190 = v186 + 24 * v189;
                      }

                      else
                      {
                        v190 = *(*(*(v220 + 48) + 8) + 8 * v189) | 1;
                      }

                      *(v188 - 16) = v190;
                      v191 = *&v187[4 * v185 + 4];
                      if ((v191 & 0x80000000) != 0)
                      {
                        v192 = v186 + 24 * v191;
                      }

                      else
                      {
                        v192 = *(*(*(v220 + 48) + 8) + 8 * v191) | 1;
                      }

                      *(v188 - 8) = v192;
                      *v188 = *&v187[4 * v185 + 8];
                      *(v188 + 4) = *&v187[4 * v185 + 12];
                      v185 += 4;
                      v188 -= 24;
                    }

                    while (v185 < __n);
                  }
                }
              }

              else
              {
                LODWORD(__n) = v223 >> 4;
                v155 = heap_Alloc(*(*v221 + 8), 24 * (v223 >> 4));
                if (!v155)
                {
                  goto LABEL_340;
                }

                **(v220 + 40) = v155;
                v156 = **(v220 + 40);
                v157 = __n;
                LODWORD(__n) = v223 >> 2;
                if (v223 >= 4)
                {
                  v158 = 0;
                  v159 = v156 + 24 * v157;
                  v160 = __s;
                  v161 = v159 - 8;
                  do
                  {
                    v162 = *&v160[4 * v158];
                    if ((v162 & 0x80000000) != 0)
                    {
                      v163 = v159 + 24 * v162;
                    }

                    else
                    {
                      v163 = *(*(*(v220 + 40) + 8) + 8 * v162) | 1;
                    }

                    *(v161 - 16) = v163;
                    v164 = *&v160[4 * v158 + 4];
                    if ((v164 & 0x80000000) != 0)
                    {
                      v165 = v159 + 24 * v164;
                    }

                    else
                    {
                      v165 = *(*(*(v220 + 40) + 8) + 8 * v164) | 1;
                    }

                    *(v161 - 8) = v165;
                    *v161 = *&v160[4 * v158 + 8];
                    *(v161 + 4) = *&v160[4 * v158 + 12];
                    v158 += 4;
                    v161 -= 24;
                  }

                  while (v158 < __n);
                }
              }
            }

            else
            {
              v140 = v223;
              if (v223)
              {
                v10 = 2585796618;
                v141 = __s;
                v142 = *(v214 + 112);
                v220 = v142;
                v143 = *__s;
                *(v142 + 24) = v143;
                *(v142 + 20) = *(v141 + 1);
                *(v142 + 8) = *(v141 + 2);
                *(v142 + 16) = 0;
                if (v143)
                {
                  v144 = heap_Calloc(*(*v221 + 8), v143, 8);
                  *(v220 + 32) = v144;
                  if (!v144)
                  {
                    goto LABEL_349;
                  }

                  v140 = v223;
                }

                if (v140 >= 0xD)
                {
                  v145 = 0;
                  v146 = 12;
                  do
                  {
                    HIDWORD(__n) = 100;
                    StringZ = ssftriff_reader_ReadStringZ(a3, __s, v140, v146, __dst, &__n + 1);
                    if ((StringZ & 0x80000000) != 0)
                    {
                      goto LABEL_348;
                    }

                    if (*(v220 + 24))
                    {
                      v147 = wapiti_ns_readline(*v221, __dst, &__n);
                      v148 = heap_Alloc(*(*v221 + 8), (__n + 1));
                      if (!v148)
                      {
                        goto LABEL_349;
                      }

                      v149 = v148;
                      *v148 = 0;
                      strncat(v148, __dst + v147, __n);
                      StringZ = pat_comp(*v221, v149, (*(v220 + 32) + 8 * v145));
                      if ((StringZ & 0x80000000) != 0)
                      {
                        goto LABEL_348;
                      }

                      v150 = __tolower(*v149);
                      switch(v150)
                      {
                        case '*':
                          *(v220 + 12) = vadd_s32(*(v220 + 12), 0x100000001);
                          break;
                        case 'b':
                          ++*(v220 + 16);
                          break;
                        case 'u':
                          ++*(v220 + 12);
                          break;
                      }

                      ++v145;
                    }

                    v146 += HIDWORD(__n);
                    v140 = v223;
                  }

                  while (v146 < v223);
                }
              }
            }

LABEL_221:
            StringZ = ssftriff_reader_CloseChunk(a3);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          *(v214 + 32) = 1;
          v138 = *(*v221 + 32);
          v139 = "sparse theta ENABLED";
LABEL_220:
          wapiti_info(v138, v139);
          goto LABEL_221;
        }
      }
    }

LABEL_330:
    v10 = inited;
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_351;
    }

    goto LABEL_353;
  }

  v223 = 0;
  *v221 = 0;
  __s = 0;
  __n = 0;
  v220 = 0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  inited = InitRsrcFunction(a1, a2, v221);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  inited = rdr_new_qp(*v221, 0, &v220);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  inited = mdl_new(v220, &v214);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_330;
  }

  v21 = v214;
  *(v214 + 24) = unk_1C37BE7A4;
  v10 = 2585796618;
  *(v21 + 8) = opt_defaults;
  *(v21 + 36) = 1;
  while (1)
  {
    v22 = ssftriff_reader_OpenChunk(a3, &v215, &v223, &__s, v17, v18, v19, v20);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_332;
    }

    if (!(v215 ^ 0x41524150 | v216))
    {
      StringZ = _crf_parse_params(*v221, __s, v223, a4);
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_348;
      }

      goto LABEL_107;
    }

    if (!(v215 ^ 0x454C5552 | v216))
    {
      StringZ = wapiti_rules_load(*v221, __s, v223, (*(v214 + 112) + 56));
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_348;
      }

      goto LABEL_107;
    }

    if (!(v215 ^ 0x53525053 | v216))
    {
      *(v214 + 32) = 1;
      wapiti_info(*(*v221 + 32), "sparse theta ENABLED");
      goto LABEL_107;
    }

    if (!(v215 ^ 0x45444F4D | v216))
    {
      if (v223)
      {
        *(v214 + 40) = *__s;
      }

      goto LABEL_107;
    }

    if (!(v215 ^ 0x52454452 | v216))
    {
      break;
    }

    if (v215 ^ 0x4C4B5251 | v216)
    {
      if (!(v215 ^ 0x4C46454C | v216))
      {
        v57 = *(__s + 1);
        LODWORD(__n) = *__s;
        v58 = __n;
        v59 = *(v220 + 40);
        *(v59 + 28) = v57;
        v60 = heap_Realloc(*(*v221 + 8), *(v59 + 8), 8 * v58);
        if (!v60)
        {
          goto LABEL_349;
        }

        v61 = v60;
        v62 = __n;
        *(*(v220 + 40) + 24) = __n;
        v63 = heap_Calloc(*(*v221 + 8), v62, 16);
        if (!v63)
        {
          v207 = *(v220 + 40);
LABEL_345:
          *(v207 + 8) = v61;
          goto LABEL_349;
        }

        v64 = v63;
        StringZ = ssftriff_reader_DetachChunkData(a3, a4, &__s, v16, v17, v18, v19, v20);
        if ((StringZ & 0x80001FFF) == 0x8000000A)
        {
          v208 = *(v220 + 40);
LABEL_347:
          *(v208 + 8) = v61;
          goto LABEL_348;
        }

        if (__n)
        {
          v65 = 0;
          v66 = __s + 8;
          v67 = &__s[__n + 8];
          do
          {
            *v64 = v65;
            *(v64 + 8) = v67;
            *(v61 + 8 * v65) = v64;
            v67 += v66[v65++] + 1;
            v68 = __n;
            v64 += 16;
          }

          while (v65 < __n);
        }

        else
        {
          v68 = 0;
        }

        v97 = *(v220 + 40);
        goto LABEL_106;
      }

      if (v215 ^ 0x4F4B5251 | v216)
      {
        if (!(v215 ^ 0x4F46454C | v216))
        {
          v87 = *(__s + 1);
          LODWORD(__n) = *__s;
          v88 = __n;
          v89 = *(v220 + 48);
          *(v89 + 28) = v87;
          v90 = heap_Realloc(*(*v221 + 8), *(v89 + 8), 8 * v88);
          if (!v90)
          {
            goto LABEL_349;
          }

          v61 = v90;
          v91 = __n;
          *(*(v220 + 48) + 24) = __n;
          v92 = heap_Calloc(*(*v221 + 8), v91, 16);
          if (!v92)
          {
            v207 = *(v220 + 48);
            goto LABEL_345;
          }

          v93 = v92;
          StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 8), &__s, v16, v17, v18, v19, v20);
          if ((StringZ & 0x80001FFF) == 0x8000000A)
          {
            v208 = *(v220 + 48);
            goto LABEL_347;
          }

          if (__n)
          {
            v94 = 0;
            v95 = __s + 8;
            v96 = &__s[__n + 8];
            do
            {
              *v93 = v94;
              *(v93 + 8) = v96;
              *(v61 + 8 * v94) = v93;
              v96 += v95[v94++] + 1;
              v68 = __n;
              v93 += 16;
            }

            while (v94 < __n);
          }

          else
          {
            v68 = 0;
          }

          v97 = *(v220 + 48);
LABEL_106:
          *(v97 + 8) = v61;
          *(v97 + 20) = v68;
          goto LABEL_107;
        }

        if (v215 ^ 0x5753424F | v216)
        {
          if (!(v215 ^ 0x4657424F | v216))
          {
            *(a4 + 76) = 1;
            StringZ = mdl_sync_sparse(v214);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }

            StringZ = ssftriff_reader_DetachChunkData(a3, (a4 + 16), &__s, v16, v17, v18, v19, v20);
            if ((StringZ & 0x80001FFF) == 0x8000000A)
            {
              goto LABEL_348;
            }

            v24 = __s;
            v25 = *__s;
            v26 = *(v214 + 88);
            *(v26 + 8) = *__s;
            *(v26 + 12) = *(v24 + 1);
            *(v26 + 16) = *(v24 + 2);
            *(v26 + 20) = *(v24 + 3);
            v27 = (v25 >> 4) + 4;
            if (v25 < 0x10)
            {
              v27 = 5;
            }

            *(v26 + 24) = v24 + 16;
            *(v26 + 32) = &v24[4 * v27];
            *(v26 + 40) = &v24[4 * v27 + 4 * v25];
          }
        }

        else
        {
          if (*(v214 + 32))
          {
            StringZ = mdl_sync_sparse(v214);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          else
          {
            StringZ = mdl_sync(v214);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_348;
            }
          }

          LODWORD(__n) = v223 >> 2;
          if (v223 >= 4)
          {
            v98 = 0;
            v99 = __s;
            do
            {
              if (*(v214 + 32))
              {
                sparray_set(*(v214 + 88), *&v99[4 * v98], *&v99[4 * v98 + 4]);
              }

              else
              {
                *(*(v214 + 80) + 4 * *&v99[4 * v98]) = *&v99[4 * v98 + 4];
              }

              v98 += 2;
            }

            while (v98 < __n);
          }
        }
      }

      else
      {
        v69 = *(*(v220 + 48) + 28);
        v70 = heap_Calloc(*(*v221 + 8), v69, 16);
        if (!v70)
        {
          goto LABEL_349;
        }

        **(v220 + 48) = v70;
        v71 = **(v220 + 48);
        v72 = (v223 >> 2) - 2 * v69;
        v73 = heap_Calloc(*(*v221 + 8), v72, 8);
        if (!v73)
        {
          goto LABEL_349;
        }

        ***(v220 + 48) = v73;
        v74 = ***(v220 + 48);
        LODWORD(__n) = v223 >> 2;
        if (v223 >= 4)
        {
          v75 = 0;
          v76 = (v71 + 16 * v69);
          v77 = __s;
          v78 = v74 + 8 * v72;
          v79 = v76;
          do
          {
            v80 = *&v77[4 * v75];
            *(v79 - 2) = v80;
            *(v79 - 1) = *&v77[4 * (v75 + 1)];
            v81 = popcount(v80);
            v78 -= 8 * v81;
            *(v79 - 2) = v78;
            v79 -= 2;
            v82 = v75 + 2;
            if (v81)
            {
              v83 = 0;
              v84 = v75 + 2;
              do
              {
                v85 = *&v77[4 * v84];
                if ((v85 & 0x80000000) != 0)
                {
                  v86 = &v76[2 * v85];
                }

                else
                {
                  v86 = *(*(*(v220 + 48) + 8) + 8 * v85) | 1;
                }

                *(*v79 + v83) = v86;
                v83 += 8;
                ++v84;
              }

              while (8 * v81 != v83);
            }

            v75 = v81 + v82;
          }

          while (v81 + v82 < __n);
        }
      }
    }

    else
    {
      v39 = *(*(v220 + 40) + 28);
      v40 = heap_Calloc(*(*v221 + 8), v39, 16);
      if (!v40)
      {
        goto LABEL_349;
      }

      **(v220 + 40) = v40;
      v41 = **(v220 + 40);
      v42 = (v223 >> 2) - 2 * v39;
      v43 = heap_Calloc(*(*v221 + 8), v42, 8);
      if (!v43)
      {
        goto LABEL_349;
      }

      ***(v220 + 40) = v43;
      v44 = ***(v220 + 40);
      LODWORD(__n) = v223 >> 2;
      if (v223 >= 4)
      {
        v45 = 0;
        v46 = (v41 + 16 * v39);
        v47 = __s;
        v48 = v44 + 8 * v42;
        v49 = v46;
        do
        {
          v50 = *&v47[4 * v45];
          *(v49 - 2) = v50;
          *(v49 - 1) = *&v47[4 * (v45 + 1)];
          v51 = popcount(v50);
          v48 -= 8 * v51;
          *(v49 - 2) = v48;
          v49 -= 2;
          v52 = v45 + 2;
          if (v51)
          {
            v53 = 0;
            v54 = v45 + 2;
            do
            {
              v55 = *&v47[4 * v54];
              if ((v55 & 0x80000000) != 0)
              {
                v56 = &v46[2 * v55];
              }

              else
              {
                v56 = *(*(*(v220 + 40) + 8) + 8 * v55) | 1;
              }

              *(*v49 + v53) = v56;
              v53 += 8;
              ++v54;
            }

            while (8 * v51 != v53);
          }

          v45 = v51 + v52;
        }

        while (v51 + v52 < __n);
      }
    }

LABEL_107:
    StringZ = ssftriff_reader_CloseChunk(a3);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_348;
    }
  }

  v28 = v223;
  if (!v223)
  {
    goto LABEL_107;
  }

  v29 = __s;
  v30 = *(v214 + 112);
  v220 = v30;
  v31 = *__s;
  *(v30 + 24) = v31;
  *(v30 + 20) = *(v29 + 1);
  *(v30 + 8) = *(v29 + 2);
  *(v30 + 16) = 0;
  if (v31)
  {
    v32 = heap_Calloc(*(*v221 + 8), v31, 8);
    *(v220 + 32) = v32;
    if (!v32)
    {
      goto LABEL_349;
    }

    v28 = v223;
  }

  if (v28 < 0xD)
  {
    goto LABEL_107;
  }

  v33 = 0;
  v34 = 12;
  while (1)
  {
    HIDWORD(__n) = 100;
    StringZ = ssftriff_reader_ReadStringZ(a3, __s, v28, v34, __dst, &__n + 1);
    if ((StringZ & 0x80000000) != 0)
    {
      break;
    }

    if (*(v220 + 24))
    {
      v35 = wapiti_ns_readline(*v221, __dst, &__n);
      v36 = heap_Alloc(*(*v221 + 8), (__n + 1));
      if (!v36)
      {
        goto LABEL_349;
      }

      v37 = v36;
      *v36 = 0;
      strncat(v36, __dst + v35, __n);
      StringZ = pat_comp(*v221, v37, (*(v220 + 32) + 8 * v33));
      if ((StringZ & 0x80000000) != 0)
      {
        break;
      }

      v38 = __tolower(*v37);
      switch(v38)
      {
        case '*':
          *(v220 + 12) = vadd_s32(*(v220 + 12), 0x100000001);
          break;
        case 'b':
          ++*(v220 + 16);
          break;
        case 'u':
          ++*(v220 + 12);
          break;
      }

      ++v33;
    }

    v34 += HIDWORD(__n);
    v28 = v223;
    if (v34 >= v223)
    {
      goto LABEL_107;
    }
  }

LABEL_348:
  v10 = StringZ;
LABEL_349:
  v206 = v214;
LABEL_350:
  *(a4 + 24) = v206;
  if ((v10 & 0x80000000) != 0)
  {
LABEL_351:
    crf_Deinit(a4, v14, v15, v16, v17, v18, v19, v20);
    v9 = ssftriff_reader_CloseChunk(a3);
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_352;
    }
  }

LABEL_353:
  v210 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t crf_Deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = *v9;
      if (*(a1 + 68))
      {
        ssftriff_reader_ReleaseChunkData(*a1, a2, a3, a4, a5, a6, a7, a8);
        ssftriff_reader_ReleaseChunkData(*(a1 + 8), v11, v12, v13, v14, v15, v16, v17);
      }

      if (*(a1 + 76))
      {
        ssftriff_reader_ReleaseChunkData(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
      }

      if (*(a1 + 80))
      {
        mdl_free_qp(v9, *(a1 + 76));
      }

      else
      {
        mdl_free(v9, *(a1 + 68), *(a1 + 76));
      }

      *(a1 + 24) = 0;
      v18 = *(a1 + 32);
      if (v18)
      {
        heap_Free(*(v10 + 8), v18);
        *(a1 + 32) = 0;
      }

      v19 = *(a1 + 48);
      if (v19)
      {
        heap_Free(*(v10 + 8), v19);
        *(a1 + 48) = 0;
      }

      v20 = *(a1 + 56);
      if (v20)
      {
        heap_Free(*(v10 + 8), v20);
        *(a1 + 56) = 0;
      }
    }
  }

  return 0;
}

uint64_t crf_Process_Constrained(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 24);
  if (*(v7 + 32))
  {
    return tag_label_sparse(v7, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return tag_label(v7, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t _crf_parse_params(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4)
{
  v8 = 2585796618;
  v9 = (a4 + 48);
  v10 = a3;
  v11 = heap_Realloc(*(a1 + 8), *(a4 + 48), a3);
  if (v11)
  {
    v12 = v11;
    memcpy(v11, a2, v10);
    v12[a3 - 1] = 0;
    *(a4 + 48) = v12;
    v13 = &v12[v10];
    *(a4 + 40) = 0;
    if (a3)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (!*v15)
        {
          *(a4 + 40) = ++v14;
        }

        ++v15;
      }

      while (v15 < v13);
      v16 = (v14 + 1) >> 1;
    }

    else
    {
      v16 = 0;
    }

    *(a4 + 40) = v16;
    v17 = heap_Realloc(*(a1 + 8), *(a4 + 32), 16 * v16);
    if (!v17)
    {
      *(a4 + 40) = 0;
      heap_Free(*(a1 + 8), *(a4 + 48));
LABEL_19:
      *v9 = 0;
      return v8;
    }

    v8 = 0;
    *(a4 + 32) = v17;
    v18 = *(a4 + 40);
    if (v18 && a3)
    {
      v9 = (v17 + 8);
      v19 = 1;
      while (1)
      {
        *(v9 - 1) = v12;
        v20 = &v12[strlen(v12) + 1];
        if (v20 >= v13)
        {
          break;
        }

        *v9 = v20;
        v9 += 2;
        v21 = strlen(v20);
        v8 = 0;
        if (v19 < v18)
        {
          v12 = &v20[v21 + 1];
          ++v19;
          if (v12 < v13)
          {
            continue;
          }
        }

        return v8;
      }

      v8 = 0;
      goto LABEL_19;
    }
  }

  return v8;
}

char *hlp_NLUStrAddI(char *__s, char *a2)
{
  if (*__s)
  {
    *&__s[strlen(__s)] = 59;
  }

  v4 = strlen(__s);
  v5 = hlp_NLUStrLength(a2);
  result = strncat(&__s[v4], a2, v5);
  __s[v4] = 73;
  return result;
}

char *hlp_NLUStrLength(char *a1)
{
  result = strchr(a1, 59);
  if (result)
  {
    LOWORD(result) = result - a1;
  }

  else
  {
    LOWORD(result) = strlen(a1);
  }

  return result;
}

char *hlp_NLUStrSearchI(char *a1, uint64_t a2)
{
  v4 = hlp_NLUStrLength(a2);
  if (!a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = v4 - 1;
  while (v5 != hlp_NLUStrLength(a1) || strncmp((a2 + 1), a1 + 1, v6))
  {
    result = strchr(a1, 59);
    a1 = result + 1;
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

char *hlp_NLUStrNext(char *a1)
{
  v1 = strchr(a1, 59);
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

char *hlp_NLUStrRemoveI(const char *a1, uint64_t a2)
{
  result = hlp_NLUStrLength(a2);
  if (a1)
  {
    v5 = result;
    v6 = result - 1;
    v7 = a1;
    while (v5 != hlp_NLUStrLength(v7) || strncmp((a2 + 1), v7 + 1, v6))
    {
      result = strchr(v7, 59);
      v7 = result + 1;
      if (!result)
      {
        return result;
      }
    }

    hlp_NLUStrStrip(v7);

    return hlp_NLUStrJoin(a1, "");
  }

  return result;
}

char *hlp_NLUStrStrip(char *a1)
{
  result = strchr(a1, 59);
  if (result)
  {
    v3 = result;
    v4 = strlen(result + 1) + 1;

    return memmove(a1, v3 + 1, v4);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

char *hlp_NLUStrJoin(const char *a1, const char *a2)
{
  v4 = &a1[strlen(a1)];
  if (*a1)
  {
    v5 = *(v4 - 1);
    if (*a2)
    {
      if (v5 != 59 || *v4)
      {
        *v4++ = 59;
      }
    }

    else if (v5 == 59 && !*v4)
    {
      --v4;
    }
  }

  return strcpy(v4, a2);
}

char *hlp_NLUStrKeyLen(char *a1)
{
  v2 = strchr(a1, 59);
  result = strchr(a1, 58);
  if (!result)
  {
    if (!v2)
    {
      LOWORD(result) = strlen(a1);
      return result;
    }

    goto LABEL_6;
  }

  if (v2 && v2 < result)
  {
LABEL_6:
    LOWORD(result) = v2 - a1;
    return result;
  }

  LOWORD(result) = result - a1;
  return result;
}

unsigned __int8 *hlp_NLUStrKeyValue(char *a1)
{
  v1 = &a1[hlp_NLUStrKeyLen(a1)];
  v3 = *v1;
  v2 = (v1 + 1);
  if (v3 == 58)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

char *hlp_NLUStrValueLen(char *a1)
{
  if (a1)
  {
    return hlp_NLUStrKeyLen(a1);
  }

  return a1;
}

char *hlp_NLUStrFind(char *a1, char *__s, uint64_t *a3, unsigned __int16 *a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = strlen(__s);
    while (hlp_NLUStrKeyLen(v7) != v8 || strncmp(__s, v7, v8))
    {
      v9 = strchr(v7, 59);
      v7 = v9 + 1;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v10 = v7[v8];
    v11 = v10 == 58;
    if (v10 == 58)
    {
      v12 = &v7[v8 + 1];
    }

    else
    {
      v12 = 0;
    }

    *a3 = v12;
    if (v11)
    {
      v13 = hlp_NLUStrKeyLen(&v7[v8 + 1]);
    }

    else
    {
      v13 = 0;
    }

    *a4 = v13;
  }

  else
  {
LABEL_6:
    v7 = 0;
    *a4 = 0;
    *a3 = 0;
  }

  return v7;
}

uint64_t hlp_NLUStrExist(char *a1, char *__s)
{
  v4 = strlen(__s);
  if (!a1)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    if (hlp_NLUStrKeyLen(a1) == v5)
    {
      result = strncmp(__s, a1, v5);
      if (!result)
      {
        break;
      }
    }

    v7 = strchr(a1, 59);
    a1 = v7 + 1;
    if (!v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t hlp_NLUStrRemoveKeyVal(char *a1, const char *a2)
{
  if (a1)
  {
    v3 = a1;
    while (1)
    {
      v4 = hlp_NLUStrKeyLen(v3);
      if (strlen(a2) != v4 || strncmp(a2, v3, v4))
      {
        goto LABEL_8;
      }

      v5 = strchr(v3, 59);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5 + 1);
        memmove(v3, v6 + 1, v7);
        v3[v7] = 0;
      }

      else
      {
        *v3 = 0;
LABEL_8:
        v8 = strchr(v3, 59);
        v3 = v8 + 1;
        if (!v8)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t hlp_NLUStrRemoveRangeKey(unsigned __int8 *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    v5 = a1;
    while (1)
    {
        ;
      }

      v6 = *v5 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      if (v7 || v8 == 0)
      {
        goto LABEL_20;
      }

      if (v5[1] != 95)
      {
        goto LABEL_20;
      }

      v10 = strlen(a2);
      if (strncmp(v5 + 2, a2, v10))
      {
        goto LABEL_20;
      }

      v11 = &v5[hlp_NLUStrKeyLen(v5)];
      v13 = *v11;
      v12 = (v11 + 1);
      if (v13 == 58)
      {
        if (!a3)
        {
          goto LABEL_20;
        }

        v14 = hlp_NLUStrLength(v12);
        if (strlen(a3) != v14 || strncmp(a3, v12, v14))
        {
          goto LABEL_20;
        }
      }

      else if (a3 && *a3)
      {
        goto LABEL_20;
      }

      v15 = strchr(v5, 59);
      if (v15)
      {
        v16 = v15;
        v17 = strlen(v15 + 1);
        memmove(v5, v16 + 1, v17);
        v5[v17] = 0;
      }

      else
      {
        *v5 = 0;
LABEL_20:
        v18 = strchr(v5, 59);
        v5 = (v18 + 1);
        if (!v18)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t hlp_NLUStrAppendKeyVal(char *a1, const char *a2, const char *a3)
{
  v6 = strlen(a1);
  if (v6 && a1[v6 - 1] != 59)
  {
    *&a1[strlen(a1)] = 59;
  }

  strcat(a1, a2);
  if (a3 && *a3)
  {
    *&a1[strlen(a1)] = 58;
    strcat(a1, a3);
  }

  return 0;
}

char *hlp_NLUStrSet(char *a1, char *a2, char *__s)
{
  v19 = 0;
  v18 = 0;
  v6 = strlen(__s);
  v7 = hlp_NLUStrFind(a1, a2, &v19, &v18);
  if (v7)
  {
    v8 = v7;
    if (v18 == v6)
    {
      if (!v18)
      {
        return v8;
      }

      v9 = v19;
      v10 = __s;
      v11 = v18;
    }

    else
    {
      v14 = v19;
      if (v18 || v19)
      {
        v17 = strlen(&v19[v18]);
        memmove(&v19[v6], &v19[v18], v17 + 1);
      }

      else
      {
        v15 = &v7[hlp_NLUStrKeyLen(v7)];
        v14 = (v15 + 1);
        v16 = strlen(v15);
        memmove(&v15[v6 + 1], v15, v16 + 1);
        *v15 = 58;
      }

      v11 = v6;
      v9 = v14;
      v10 = __s;
    }

    strncpy(v9, v10, v11);
    return v8;
  }

  v12 = hlp_NLUStrJoin(a1, a2);
  v8 = v12;
  if (!__s || !v6)
  {
    return v8;
  }

  *&v12[strlen(v12)] = 58;

  return strcat(v8, __s);
}

char *hlp_NLUStrAppend(char *a1, char *a2, char *a3, const char *a4)
{
  v16 = 0;
  v15 = 0;
  v8 = hlp_NLUStrFind(a1, a2, &v16, &v15);
  if (v8 && v15)
  {
    v9 = v8;
    v10 = (v16 + v15);
    v11 = strlen(a4);
    v12 = strlen(a3);
    v13 = strlen(v10);
    memmove(&v10[v11 + v12], v10, v13 + 1);
    strncpy(v10, a4, v11);
    strncpy(&v10[v11], a3, v12);
    return v9;
  }

  else
  {

    return hlp_NLUStrSet(a1, a2, a3);
  }
}

char *hlp_NLUStrOverride(char *a1, char *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = hlp_NLUStrKeyLen(v5);
      v7 = v5[v6];
      if (v7 == 58)
      {
        v8 = hlp_NLUStrKeyLen(&v5[v6 + 1]);
        __strncpy_chk();
        v13[v6] = 0;
        __strncpy_chk();
      }

      else
      {
        __strncpy_chk();
        v8 = 0;
        v13[v6] = 0;
      }

      v12[v8] = 0;
      if (v13[1] == 95)
      {
        hlp_NLUStrJoin(a1, v13);
        if (v7 == 58)
        {
          *&a1[strlen(a1)] = 58;
          strcat(a1, v12);
        }
      }

      else if (!a3 || *v13 == 4476482)
      {
        hlp_NLUStrSet(a1, v13, v12);
      }

      v9 = strchr(v5, 59);
      v5 = v9 + 1;
    }

    while (v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t hlp_dynstr_add(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v8 = 2601525248;
  v9 = *a2;
  v10 = strlen(*a2);
  v11 = strlen(a3);
  v12 = *(a2 + 8);
  if (v10 + v11 + 2 >= v12)
  {
    v13 = heap_Realloc(*(a1 + 8), v9, v11 + v12 + *(a2 + 10));
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "GLOBALBEADAPT", 66000, 0, v14, v15, v16, v17, v19);
      return 2601525258;
    }

    v9 = v13;
    *a2 = v13;
    *(a2 + 8) += v11 + *(a2 + 10);
  }

  if (a4 == 1)
  {
    strcat(v9, a3);
    return 0;
  }

  if (a4 == 2)
  {
    strcpy(v9, a3);
    return 0;
  }

  return v8;
}

uint64_t hlp_dynstr_init(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = a3;
  v8 = heap_Calloc(*(a1 + 8), 1, a3);
  *a2 = v8;
  if (v8)
  {
    v13 = v8;
    result = 0;
    *(a2 + 8) = v5;
    *(a2 + 10) = a4;
    *v13 = 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "GLOBALBEADAPT", 66000, 0, v9, v10, v11, v12, v15);
    return 2601525258;
  }

  return result;
}

uint64_t globalbeadapt_OutputMorphemesToLingDBAsWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, unsigned __int8 *a6, const char *a7, _DWORD *a8)
{
  v70 = 0;
  __sa = 0;
  v69 = 0;
  v19 = strlen(__s);
  *a8 = 0;
  v66[0] = 0;
  v66[1] = 0;
  v65[0] = 0;
  v65[1] = 0;
  v20 = a6 - 1;
  v64[0] = 0;
  v64[1] = 0;
  do
  {
    v22 = *++v20;
    v21 = v22;
  }

  while (v22 == 32);
  v23 = 0;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v71 = 0;
  v67 = 0;
  while (v21 == 32)
  {
    --v20;
    do
    {
      v24 = *++v20;
      v21 = v24;
    }

    while (v24 == 32);
    ++v23;
    a6 = v20;
LABEL_10:
    if (v21)
    {
      ++v20;
    }

    v21 = *v20;
  }

  if (v21)
  {
    goto LABEL_10;
  }

  v25 = v20 != a6;
  v26 = a7;
  v27 = a7;
  while (1)
  {
    v28 = *v26;
    if (v28 <= 0x22)
    {
      break;
    }

    if (v28 != 35)
    {
      if (v28 != 47)
      {
        goto LABEL_27;
      }

      if (v26[1] == 84)
      {
        v28 = 47;
        goto LABEL_27;
      }
    }

LABEL_19:
    LOWORD(v21) = v21 + 1;
    while (1)
    {
      if (v28 != 32 && v28 != 35)
      {
        if (v28 != 47)
        {
          goto LABEL_26;
        }

        if (v26[1] == 84)
        {
          break;
        }
      }

      v29 = *++v26;
      v28 = v29;
    }

    v28 = 47;
LABEL_26:
    v27 = v26;
LABEL_27:
    if (v28)
    {
      ++v26;
    }
  }

  if (v28 == 32)
  {
    goto LABEL_19;
  }

  if (*v26)
  {
    goto LABEL_27;
  }

  v30 = v23 + v25;
  if (v26 != v27)
  {
    LOWORD(v21) = v21 + 1;
  }

  if (v30 == v21)
  {
    v31 = (*(a1[1] + 104))(a2, a3, 2, a4, &v74 + 2);
    if ((v31 & 0x80000000) != 0 || (v31 = hlp_dynstr_init(*a1, v66, 0x20u, 16), (v31 & 0x80000000) != 0) || (v31 = hlp_dynstr_init(*a1, v65, 0x20u, 16), (v31 & 0x80000000) != 0) || (v31 = hlp_dynstr_init(*a1, v64, 0x20u, 16), (v31 & 0x80000000) != 0))
    {
LABEL_136:
      v62 = v31;
    }

    else
    {
      v67 = 0;
      v32 = HIWORD(v74);
      if (HIWORD(v74))
      {
        while (1)
        {
          v31 = (*(a1[1] + 168))(a2, a3, v32, 0, 1, &v71, &v74);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          if ((v71 - 9) >= 6 && v71 != 4)
          {
LABEL_103:
            v51 = 1;
            goto LABEL_128;
          }

          v31 = (*(a1[1] + 168))(a2, a3, HIWORD(v74), 1, 1, &v73, &v74);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v31 = (*(a1[1] + 168))(a2, a3, HIWORD(v74), 2, 1, &v72, &v74);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v34 = v73;
          if (!v73 || __s[v73 - 1] == 32)
          {
            goto LABEL_59;
          }

          if (v73 == 1 || __s[v73 - 1] != 95)
          {
            v36 = v71;
            if (v71 == 11)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v35 = memchr(":;,", __s[v73 - 2], 4uLL);
            v36 = v71;
            if (v35)
            {
              v37 = 1;
            }

            else
            {
              v37 = v71 == 11;
            }

            if (v37)
            {
              goto LABEL_59;
            }
          }

          if ((v36 - 12) > 2)
          {
            v38 = 0;
            goto LABEL_60;
          }

LABEL_59:
          HIWORD(v67) = v34;
          v38 = 1;
LABEL_60:
          v39 = v72;
          if (v19 <= v72 || (v40 = __s[v72], v40 == 32) || v40 == 95 && memchr(":;,", __s[v72 - 1], 4uLL) || v71 == 11 || (v71 - 12) <= 2)
          {
            LOWORD(v67) = v39;
            v41 = 1;
          }

          else
          {
            v41 = 0;
          }

          v31 = (*(a1[1] + 176))(a2, a3, HIWORD(v74), 3, &v70, &v74);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v31 = (*(a1[1] + 176))(a2, a3, HIWORD(v74), 5, &v69, &v74);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v31 = hlp_dynstr_add(*a1, v66, v69, 1);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          v31 = (*(a1[1] + 176))(a2, a3, HIWORD(v74), 14, &__sa, &v74);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

          if (v74)
          {
            hlp_NLUStrRemoveKeyVal(__sa, "POS");
            if (!hlp_NLUStrExist(__sa, "PHR"))
            {
              hlp_NLUStrRemoveKeyVal(__sa, "PHR");
            }

            v31 = hlp_dynstr_add(*a1, v65, __sa, 1);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            if (*__sa)
            {
              if (__sa[strlen(__sa) - 1] != 59)
              {
                v31 = hlp_dynstr_add(*a1, v65, ";", 1);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_136;
                }
              }
            }
          }

          if (!*v70)
          {
            goto LABEL_103;
          }

          if (strstr(v70, "-*"))
          {
            v45 = strchr(&__s[v73], 45);
            if (v45)
            {
              if (v45 < &__s[v72])
              {
                do
                {
                  *v45 = 95;
                  v45 = strchr(v45 + 1, 45);
                  if (v45)
                  {
                    v46 = v45 >= &__s[v72];
                  }

                  else
                  {
                    v46 = 1;
                  }
                }

                while (!v46);
              }
            }
          }

          if (v41)
          {
            i = a7;
            if ((v71 - 15) >= 0xFFFFFFFC)
            {
              while (1)
              {
                v48 = *i;
                v50 = v48 > 0x23 || ((1 << v48) & 0x900800001) == 0;
                if (!v50 || v48 == 95)
                {
                  break;
                }

                ++i;
              }
            }

            else
            {
              for (i = a7; ; ++i)
              {
                v48 = *i;
                if (v48 <= 0x23 && ((1 << v48) & 0x900000001) != 0)
                {
                  break;
                }
              }
            }

            if (v48)
            {
              *i++ = 0;
            }

            if (*a7 == 45)
            {
              ++a7;
            }

            log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "write joined word %d,%d POS=%s PHON=%s", v42, v43, v44, HIWORD(v67));
            if ((v38 & 1) == 0)
            {
              v31 = (*(a1[1] + 160))(a2, a3, HIWORD(v74), 0, 1, &v71, &v73 + 2);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }

              v31 = (*(a1[1] + 160))(a2, a3, HIWORD(v74), 1, 1, &v67 + 2, &v73 + 2);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }

              v31 = (*(a1[1] + 160))(a2, a3, HIWORD(v74), 2, 1, &v67, &v73 + 2);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }

              v52 = strlen(v66[0]);
              v31 = (*(a1[1] + 160))(a2, a3, HIWORD(v74), 5, (v52 + 1), v66[0], &v73 + 2);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }
            }

            v31 = hlp_dynstr_add(*a1, v64, v65[0], 1);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v31 = hlp_dynstr_add(*a1, v64, "POS:", 1);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v53 = v66[0];
            v54 = hlp_dynstr_add(*a1, v64, v66[0], 1);
            if ((v54 & 0x80000000) != 0)
            {
              v62 = v54;
              if (v53)
              {
                goto LABEL_138;
              }

              goto LABEL_139;
            }

            v55 = strlen(v64[0]);
            v31 = (*(a1[1] + 160))(a2, a3, HIWORD(v74), 14, (v55 + 1), v64[0], &v73 + 2);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v56 = strlen(a7);
            v31 = (*(a1[1] + 160))(a2, a3, HIWORD(v74), 3, (v56 + 1), a7, &v73 + 2);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            while (1)
            {
              v57 = *i;
              v58 = v57 > 0x2F;
              v59 = (1 << v57) & 0x800900000000;
              if (v58 || v59 == 0)
              {
                break;
              }

              ++i;
            }

            v31 = hlp_dynstr_add(*a1, v66, "", 2);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v31 = hlp_dynstr_add(*a1, v65, "", 2);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v31 = hlp_dynstr_add(*a1, v64, "", 2);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v51 = 1;
            a7 = i;
          }

          else
          {
            v51 = 0;
          }

LABEL_128:
          v61 = HIWORD(v74);
          v62 = (*(a1[1] + 120))(a2, a3, HIWORD(v74), &v74 + 2);
          if ((v62 & 0x80000000) == 0)
          {
            if ((v51 & 1) != 0 || (v62 = (*(a1[1] + 192))(a2, a3, v61), (v62 & 0x80000000) == 0))
            {
              v32 = HIWORD(v74);
              if (HIWORD(v74))
              {
                continue;
              }
            }
          }

          goto LABEL_137;
        }
      }

      v62 = 0;
    }

LABEL_137:
    v53 = v66[0];
    if (v66[0])
    {
LABEL_138:
      heap_Free(*(*a1 + 8), v53);
    }

LABEL_139:
    if (v65[0])
    {
      heap_Free(*(*a1 + 8), v65[0]);
    }

    if (v64[0])
    {
      heap_Free(*(*a1 + 8), v64[0]);
    }
  }

  else
  {
    *a8 = 1;
    log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "Could not align morphemes into words, word count in L2=%d, not equal to word count in O1=%d", v16, v17, v18, v30);
    return 0;
  }

  return v62;
}

uint64_t globalbeadapt_SetFEBOOLKeyword(void *a1, uint64_t a2, _DWORD *a3, int a4)
{
  memset(__c, 0, sizeof(__c));
  *a3 = a4;
  if (((*(a1[7] + 96))(a1[5], a1[6], "fecfg", a2, &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v6 = **&__c[3];
    v7 = strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
      v6 = **&__c[3];
    }

    v8 = *v6;
    if (v8 == 49)
    {
      if (v6[1])
      {
        return 0;
      }

      *a3 = 1;
      v8 = *v6;
    }

    if (v8 == 48 && !v6[1])
    {
      *a3 = 0;
    }
  }

  return 0;
}

uint64_t globalbeadapt_OutputToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  __s1 = 0;
  result = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v31 + 2);
  if ((result & 0x80000000) == 0)
  {
    v12 = HIWORD(v31);
    if (HIWORD(v31))
    {
      while (1)
      {
        result = (*(*(a1 + 8) + 168))(a2, a3, v12, 0, 1, &v28, &v31);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if ((v28 - 9) >= 6 && v28 != 4)
        {
          goto LABEL_26;
        }

        result = (*(*(a1 + 8) + 176))(a2, a3, HIWORD(v31), 3, &__s1, &v31);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (*__s1)
        {
          if (strstr(__s1, "-*"))
          {
            result = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v31), 1, 1, &v30, &v31);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v31), 2, 1, &v29, &v31);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v14 = strchr((a5 + v30), 45);
            if (v14 && v14 < a5 + v29)
            {
              do
              {
                *v14 = 95;
                v14 = strchr(v14 + 1, 45);
                if (v14)
                {
                  v15 = v14 >= a5 + v29;
                }

                else
                {
                  v15 = 1;
                }
              }

              while (!v15);
            }
          }

          for (i = a6; ; ++i)
          {
            v17 = *i;
            if (!*i)
            {
              break;
            }

            if (v17 == 32 || v17 == 35)
            {
              *i++ = 0;
              break;
            }
          }

          v19 = *a6;
          v18 = 1;
          if (*(a1 + 88) && v19 == 95)
          {
            v18 = a6[1] != 0;
          }

          if (v19 == 45)
          {
            ++a6;
          }

          v20 = strlen(a6);
          if (a6[(v20 + 1) - 1] == 45)
          {
            v21 = v20;
          }

          else
          {
            v21 = v20 + 1;
          }

          result = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v31), 3, v21, a6, &v30 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          while (1)
          {
            v22 = *i;
            v23 = v22 > 0x2F;
            v24 = (1 << v22) & 0x800900000000;
            if (v23 || v24 == 0)
            {
              break;
            }

            ++i;
          }

          a6 = i;
        }

        else
        {
LABEL_26:
          v18 = 1;
        }

        v26 = HIWORD(v31);
        result = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v31), &v31 + 2);
        if ((result & 0x80000000) == 0)
        {
          if (v18 || (result = (*(*(a1 + 8) + 192))(a2, a3, v26), (result & 0x80000000) == 0))
          {
            v12 = HIWORD(v31);
            if (HIWORD(v31))
            {
              continue;
            }
          }
        }

        return result;
      }
    }
  }

  return result;
}