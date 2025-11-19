uint64_t readDataBlockFromFileRefCnt(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v22);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v21);
    if ((result & 0x80000000) == 0)
    {
      v16[0] = a1;
      v16[1] = a2;
      v17 = a3;
      v18 = a4;
      LODWORD(v19) = a5;
      v14 = v21;
      v13 = v22;
      __s1 = 0;
      if ((paramc_ParamGetStr(*(v22 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !cstdlib_strcmp(__s1, "internal"))
      {
        v13 = v14;
      }

      result = objc_GetAddRefCountedObject(*(v13 + 48), a6, readDataBlockFromFile_ObjcLoad, readDataBlockFromFile_ObjcClose, v16, &v20);
      if ((result & 0x80000000) != 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v20 + 32);
      }

      *(*(*(a1 + 152) + 16) + 136) = v15;
    }
  }

  return result;
}

uint64_t readDataBlockFromFile_ObjcLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  v9 = *(a5 + 16);
  v8 = *(a5 + 20);
  v10 = *(a5 + 24);
  v11 = *(*(*a5 + 152) + 16);
  v12 = heap_Calloc(*(**a5 + 8), 1, 16);
  *(a4 + 32) = v12;
  v17 = *v6;
  if (!v12)
  {
LABEL_144:
    log_OutPublic(*(v17 + 32), v6[23], 24048, 0, v13, v14, v15, v16, v132);
    StringZ = FEDATA_ERROR(10);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_145;
    }

    return StringZ;
  }

  *(*(a4 + 32) + 8) = heap_Calloc(*(v17 + 8), 1, (8 * *v11) | 1);
  v18 = *(a4 + 32);
  if (!*(v18 + 8))
  {
LABEL_143:
    v17 = *v6;
    goto LABEL_144;
  }

  v19 = *v11;
  *v18 = v19;
  if (!v19)
  {
    return 0;
  }

  v138 = v10;
  v139 = v8;
  v20 = 0;
  while (1)
  {
    *(*(*(a4 + 32) + 8) + 8 * v20) = heap_Calloc(*(*v6 + 8), 1, 48);
    v21 = *(*(*(a4 + 32) + 8) + 8 * v20);
    if (!v21)
    {
      goto LABEL_143;
    }

    __dst = 0;
    v145 = 0;
    v144 = 0;
    v143 = 0;
    v141 = 0;
    __src = 0;
    Chunk = ssftriff_reader_FindChunk(v7, "HEAD", 1, &v144, &__src);
    if ((Chunk & 0x80000000) != 0)
    {
      goto LABEL_124;
    }

    v143 = 0;
    cstdlib_memcpy(&__dst + 2, __src, 2uLL);
    v143 += 2;
    *v21 = HIWORD(__dst);
    StringZ = ssftriff_reader_CloseChunk(v7);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_125;
    }

    v28 = *v21;
    if ((*v21 - 3) <= 2)
    {
      v29 = heap_Calloc(*(*v6 + 8), 1, 24);
      *(v21 + 24) = v29;
      if (!v29)
      {
        goto LABEL_40;
      }

      Chunk = ssftriff_reader_FindChunk(v7, "REMP", 1, &v144, &__src);
      if ((Chunk & 0x80000000) != 0)
      {
        goto LABEL_124;
      }

      v143 = 0;
      cstdlib_memcpy(&__dst + 2, __src, 2uLL);
      v143 += 2;
      v31 = HIWORD(__dst);
      v32 = *(v21 + 24);
      *v32 = HIWORD(__dst);
      if (!v31)
      {
        cstdlib_memcpy(v32 + 4, __src + v143, 2uLL);
        v143 += 2;
        if (*(*(v21 + 24) + 16))
        {
          v61 = heap_Calloc(*(*v6 + 8), 1, 8 * *(*(v21 + 24) + 16));
          v66 = *(v21 + 24);
          *(v66 + 8) = v61;
          if (!v61)
          {
            log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v62, v63, v64, v65, v132);
            *(*(v21 + 24) + 16) = 0;
            goto LABEL_132;
          }

          if (*(v66 + 16))
          {
            v67 = 0;
            do
            {
              *(*(*(v21 + 24) + 8) + 8 * v67) = heap_Calloc(*(*v6 + 8), 1, 24);
              v68 = *(v21 + 24);
              if (!*(*(v68 + 8) + 8 * v67))
              {
                goto LABEL_131;
              }

              ++v67;
            }

            while (v67 < *(v68 + 16));
            if (*(v68 + 16))
            {
              v69 = 0;
              while (1)
              {
                v70 = *(*(v68 + 8) + 8 * v69);
                cstdlib_memcpy(&__dst + 2, __src + v143, 2uLL);
                v143 += 2;
                ++HIWORD(__dst);
                v71 = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
                *v70 = v71;
                if (!v71)
                {
                  goto LABEL_131;
                }

                HIDWORD(v141) = HIWORD(__dst);
                StringZ = ssftriff_reader_ReadStringZ(v7, __src, v144, v143, v71, &v141 + 1);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_133;
                }

                v136 = v69;
                if (HIDWORD(v141) != HIWORD(__dst))
                {
                  goto LABEL_127;
                }

                v143 += HIDWORD(v141);
                cstdlib_memcpy(v70 + 1, __src + v143, 2uLL);
                v143 += 2;
                cstdlib_memcpy(v70 + 10, __src + v143, 2uLL);
                v143 += 2;
                cstdlib_memcpy(v70 + 12, __src + v143, 2uLL);
                v143 += 2;
                if (*(v70 + 6))
                {
                  v72 = heap_Calloc(*(*v6 + 8), 1, 8 * *(v70 + 6));
                  v70[2] = v72;
                  if (!v72)
                  {
                    log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v73, v74, v75, v76, v132);
                    *(v70 + 6) = 0;
                    goto LABEL_132;
                  }

                  if (*(v70 + 6))
                  {
                    break;
                  }
                }

LABEL_64:
                v69 = v136 + 1;
                v68 = *(v21 + 24);
                if (v136 + 1 >= *(v68 + 16))
                {
                  goto LABEL_12;
                }
              }

              v77 = 0;
              v78 = v143;
              while (1)
              {
                cstdlib_memcpy(&__dst + 2, __src + v78, 2uLL);
                v143 += 2;
                ++HIWORD(__dst);
                *(v70[2] + 8 * v77) = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
                v37 = *(v70[2] + 8 * v77);
                if (!v37)
                {
                  break;
                }

                HIDWORD(v141) = HIWORD(__dst);
                StringZ = ssftriff_reader_ReadStringZ(v7, __src, v144, v143, v37, &v141 + 1);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_133;
                }

                if (HIDWORD(v141) != HIWORD(__dst))
                {
                  goto LABEL_127;
                }

                v78 = v143 + HIDWORD(v141);
                v143 += HIDWORD(v141);
                if (++v77 >= *(v70 + 6))
                {
                  goto LABEL_64;
                }
              }

LABEL_131:
              log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v37, v38, v39, v40, v132);
LABEL_132:
              StringZ = FEDATA_ERROR(10);
              v60 = 1;
              goto LABEL_42;
            }
          }
        }
      }

LABEL_12:
      StringZ = ssftriff_reader_CloseChunk(v7);
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_125;
      }

      v28 = *v21;
    }

    if (v28 <= 5 && ((1 << v28) & 0x2D) != 0)
    {
      v33 = heap_Calloc(*(*v6 + 8), 1, 72);
      *(v21 + 8) = v33;
      if (!v33)
      {
        goto LABEL_40;
      }

      v28 = *v21;
    }

    if (v28 <= 5 && ((1 << v28) & 0x36) != 0)
    {
      v34 = heap_Calloc(*(*v6 + 8), 1, 64);
      *(v21 + 16) = v34;
      if (!v34)
      {
LABEL_40:
        log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v30, v24, v25, v26, v132);
        v59 = FEDATA_ERROR(10);
        goto LABEL_41;
      }

      v28 = *v21;
    }

    if (v28 > 5 || ((1 << v28) & 0x2D) == 0)
    {
      goto LABEL_79;
    }

    Chunk = ssftriff_reader_FindChunk(v7, "TDAT", 1, &v144, &__src);
    if ((Chunk & 0x80000000) != 0)
    {
      goto LABEL_124;
    }

    v143 = 0;
    v35 = __src;
    *(v21 + 40) = __src;
    cstdlib_memcpy(&__dst + 2, v35, 2uLL);
    v143 += 2;
    ++HIWORD(__dst);
    v36 = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
    **(v21 + 8) = v36;
    if (!v36)
    {
      goto LABEL_131;
    }

    HIDWORD(v141) = HIWORD(__dst);
    StringZ = ssftriff_reader_ReadStringZ(v7, __src, v144, v143, v36, &v141 + 1);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_133;
    }

    if (HIDWORD(v141) != HIWORD(__dst))
    {
      goto LABEL_127;
    }

    v143 += HIDWORD(v141);
    cstdlib_memcpy((*(v21 + 8) + 8), __src + v143, 2uLL);
    v143 += 2;
    cstdlib_memcpy((*(v21 + 8) + 12), __src + v143, 2uLL);
    v143 += 2;
    cstdlib_memcpy(&v145, __src + v143, 4uLL);
    v143 += 4;
    cstdlib_memcpy(&v144 + 4, __src + v143, 4uLL);
    v41 = v143 + 4;
    v42 = *(v21 + 8);
    *(v42 + 16) = v41;
    v43 = __src;
    *(v42 + 24) = __src + v41;
    v44 = (v145 + v41);
    v143 = v44;
    cstdlib_memcpy(&v141, &v43[v44], 4uLL);
    v45 = v143 + v141 + 4;
    v46 = *(v21 + 8);
    *(v46 + 40) = v45;
    *(v46 + 32) = __src + v45;
    v143 = HIDWORD(v144) + v45;
    if (*(v46 + 8))
    {
      break;
    }

    v135 = v9;
LABEL_68:
    v79 = *(v46 + 12);
    if (v79)
    {
      v80 = heap_Calloc(*(*v6 + 8), 1, 16 * v79);
      v81 = *(v21 + 8);
      *(v81 + 64) = v80;
      if (!v80)
      {
        v124 = *(*v6 + 32);
        v125 = v6[23];
        v56 = 0;
        goto LABEL_137;
      }

      if (*(v81 + 12))
      {
        v82 = 0;
        v83 = 0;
        do
        {
          v84 = *(v81 + 64);
          v85 = v84 + v82;
          if (v135 == 1)
          {
            cstdlib_memcpy((v85 + 4), __src + v143, 4uLL);
            v86 = v143 + 4;
            v143 += 4;
          }

          else
          {
            cstdlib_memcpy(&__dst, __src + v143, 2uLL);
            v143 += 2;
            *(v85 + 4) = __dst;
            v86 = v143;
          }

          v87 = (v84 + v82);
          cstdlib_memcpy(v87 + 2, __src + v86, 2uLL);
          v143 += 2;
          cstdlib_memcpy(v87 + 10, __src + v143, 2uLL);
          v143 += 2;
          cstdlib_memcpy(v85, __src + v143, 2uLL);
          v143 += 2;
          cstdlib_memcpy(&__dst, __src + v143, 2uLL);
          v143 += 2;
          v87[3] = __dst;
          ++v83;
          v81 = *(v21 + 8);
          v82 += 16;
        }

        while (v83 < *(v81 + 12));
      }
    }

    v57 = ssftriff_reader_DetachChunkData(v7, (v21 + 32), &__src);
    if ((v57 & 0x80000000) != 0)
    {
LABEL_134:
      StringZ = v57;
      v60 = 1;
      v9 = v135;
      goto LABEL_126;
    }

    v88 = __src;
    *(v21 + 40) = __src;
    v89 = *(v21 + 8);
    v90 = &v88[*(v89 + 16)];
    v91 = &v88[*(v89 + 40)];
    *(v89 + 24) = v90;
    *(v89 + 32) = v91;
    StringZ = ssftriff_reader_CloseChunk(v7);
    v9 = v135;
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_125;
    }

    v28 = *v21;
LABEL_79:
    if (v28 <= 5 && ((1 << v28) & 0x36) != 0)
    {
      Chunk = ssftriff_reader_FindChunk(v7, "DDAT", 1, &v144, &__src);
      if ((Chunk & 0x80000000) != 0)
      {
LABEL_124:
        StringZ = Chunk;
LABEL_125:
        v60 = 0;
      }

      else
      {
        v143 = 0;
        cstdlib_memcpy(&__dst + 2, __src, 2uLL);
        v143 += 2;
        ++HIWORD(__dst);
        v92 = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
        **(v21 + 16) = v92;
        if (!v92)
        {
          goto LABEL_131;
        }

        HIDWORD(v141) = HIWORD(__dst);
        StringZ = ssftriff_reader_ReadStringZ(v7, __src, v144, v143, v92, &v141 + 1);
        if ((StringZ & 0x80000000) == 0)
        {
          if (HIDWORD(v141) != HIWORD(__dst))
          {
            goto LABEL_127;
          }

          v143 += HIDWORD(v141);
          cstdlib_memcpy(&__dst + 2, __src + v143, 2uLL);
          v143 += 2;
          v93 = v143;
          v94 = *(v21 + 16);
          *(v94 + 8) = HIWORD(__dst);
          cstdlib_memcpy((v94 + 24), __src + v93, 2uLL);
          v143 += 2;
          cstdlib_memcpy((*(v21 + 16) + 50), __src + v143, 2uLL);
          v143 += 2;
          v95 = *(v21 + 16);
          *(v95 + 56) = 0;
          if (*(v95 + 50))
          {
            v96 = heap_Calloc(*(*v6 + 8), 1, 8 * *(v95 + 50));
            v95 = *(v21 + 16);
            *(v95 + 56) = v96;
            if (!v96)
            {
              goto LABEL_131;
            }

            if (*(v95 + 50))
            {
              v97 = 0;
              v98 = v143;
              do
              {
                cstdlib_memcpy(&__dst + 2, __src + v98, 2uLL);
                v143 += 2;
                ++HIWORD(__dst);
                *(*(*(v21 + 16) + 56) + 8 * v97) = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
                v37 = *(*(*(v21 + 16) + 56) + 8 * v97);
                if (!v37)
                {
                  goto LABEL_131;
                }

                HIDWORD(v141) = HIWORD(__dst);
                StringZ = ssftriff_reader_ReadStringZ(v7, __src, v144, v143, v37, &v141 + 1);
                if ((StringZ & 0x80000000) != 0)
                {
                  goto LABEL_133;
                }

                if (HIDWORD(v141) != HIWORD(__dst))
                {
                  goto LABEL_127;
                }

                v98 = v143 + HIDWORD(v141);
                v143 += HIDWORD(v141);
                ++v97;
                v95 = *(v21 + 16);
              }

              while (v97 < *(v95 + 50));
            }
          }

          if (*(v95 + 24))
          {
            v99 = heap_Calloc(*(*v6 + 8), 1, 72 * *(v95 + 24));
            v95 = *(v21 + 16);
            *(v95 + 16) = v99;
            if (!v99)
            {
              goto LABEL_131;
            }

            if (*(v95 + 24))
            {
              v100 = 0;
              do
              {
                v101 = *(v95 + 16) + 72 * v100;
                cstdlib_memcpy(&__dst + 2, __src + v143, 2uLL);
                v143 += 2;
                v102 = HIWORD(__dst);
                *(v101 + 56) = HIWORD(__dst);
                v103 = heap_Calloc(*(*v6 + 8), 1, v102 + 1);
                *(v101 + 48) = v103;
                if (!v103)
                {
                  goto LABEL_131;
                }

                cstdlib_memcpy(v103, __src + v143, HIWORD(__dst));
                *(*(v101 + 48) + HIWORD(__dst)) = 0;
                v143 += *(v101 + 56);
                cstdlib_memcpy(v101, __src + v143, 2uLL);
                v143 += 2;
                cstdlib_memcpy((v101 + 2), __src + v143, 2uLL);
                v143 += 2;
                cstdlib_memcpy(&__dst, __src + v143, 2uLL);
                v143 += 2;
                *(v101 + 60) = __dst;
                cstdlib_memcpy(&__dst, __src + v143, 2uLL);
                v143 += 2;
                *(v101 + 64) = __dst;
                cstdlib_memcpy(&__dst, __src + v143, 2uLL);
                v143 += 2;
                v104 = __dst;
                *(v101 + 8) = __dst;
                if (v104 == 1)
                {
                  cstdlib_memcpy((v101 + 4), __src + v143, 2uLL);
                  v143 += 2;
                  cstdlib_memcpy((v101 + 12), __src + v143, 2uLL);
                  v143 += 2;
                }

                if (!v139)
                {
                  cstdlib_memcpy((v101 + 40), __src + v143, 2uLL);
                  v105 = v143 + 2;
                  v143 += 2;
                  if (*(v101 + 40))
                  {
                    v106 = 0;
                    do
                    {
                      cstdlib_memcpy(&__dst, __src + v105, 2uLL);
                      v143 += 2;
                      cstdlib_memcpy(&__dst, __src + v143, 2uLL);
                      v105 = v143 + 2;
                      v143 += 2;
                      ++v106;
                    }

                    while (v106 < *(v101 + 40));
                  }
                }

                ++v100;
                v95 = *(v21 + 16);
              }

              while (v100 < *(v95 + 24));
            }
          }

          cstdlib_memcpy((v95 + 48), __src + v143, 2uLL);
          v143 += 2;
          v107 = *(v21 + 16);
          v108 = *(v107 + 48);
          if (*(v107 + 48))
          {
            *(v107 + 40) = 0;
            v109 = heap_Calloc(*(v6[3] + 8), 1, 16 * v108);
            v110 = *(v21 + 16);
            *(v110 + 40) = v109;
            if (!v109)
            {
              goto LABEL_131;
            }

            if (*(v110 + 48))
            {
              v111 = 0;
              do
              {
                v137 = v111;
                v112 = (*(v110 + 40) + 16 * v111);
                cstdlib_memcpy(v112 + 1, __src + v143, 2uLL);
                v143 += 2;
                *v112 = 0;
                v113 = heap_Calloc(*(*v6 + 8), 1, 24 * *(v112 + 4));
                *v112 = v113;
                if (!v113)
                {
                  goto LABEL_131;
                }

                if (*(v112 + 4))
                {
                  v114 = 0;
                  for (i = 0; i < *(v112 + 4); ++i)
                  {
                    v140 = 0;
                    *(*v112 + v114) = 0;
                    v116 = heap_Calloc(*(*v6 + 8), 1, 12);
                    *(*v112 + v114) = v116;
                    if (!v116)
                    {
                      goto LABEL_131;
                    }

                    v116[1] = 0;
                    if (v139)
                    {
                      cstdlib_memcpy(&v140, __src + v143++, 1uLL);
                      v117 = v143;
                      **(*v112 + v114) = v140;
                      cstdlib_memcpy(&v140, __src + v117, 1uLL);
                      ++v143;
                      *(*(*v112 + v114) + 4) = v140;
                    }

                    else
                    {
                      cstdlib_memcpy(v116, __src + v143, 2uLL);
                      v143 += 2;
                      cstdlib_memcpy((*(*v112 + v114) + 4), __src + v143, 2uLL);
                      v143 += 2;
                      if (v138 == 1)
                      {
                        *(*v112 + v114 + 8) = 0;
                        v118 = heap_Calloc(*(*v6 + 8), 1, 2);
                        *(*v112 + v114 + 8) = v118;
                        if (!v118)
                        {
                          goto LABEL_131;
                        }

                        cstdlib_memcpy(v118, __src + v143, 2uLL);
                        v143 += 2;
                        cstdlib_memcpy(&__dst + 2, __src + v143, 2uLL);
                        v143 += 2;
                        ++HIWORD(__dst);
                        v119 = heap_Calloc(*(*v6 + 8), 1, HIWORD(__dst));
                        *(*v112 + v114 + 16) = v119;
                        if (!v119)
                        {
                          log_OutPublic(*(*v6 + 32), v6[23], 24048, 0, v120, v121, v122, v123, v132);
                          v126 = 10;
LABEL_141:
                          StringZ = FEDATA_ERROR(v126);
                          if ((StringZ & 0x80000000) == 0)
                          {
                            goto LABEL_129;
                          }

                          goto LABEL_142;
                        }

                        HIDWORD(v141) = HIWORD(__dst);
                        if ((ssftriff_reader_ReadStringZ(v7, __src, v144, v143, v119, &v141 + 1) & 0x80000000) != 0 || HIDWORD(v141) != HIWORD(__dst))
                        {
                          v126 = 0;
                          goto LABEL_141;
                        }

                        v143 += HIDWORD(v141);
                      }
                    }

                    v114 += 24;
                  }
                }

                v111 = v137 + 1;
                v110 = *(v21 + 16);
              }

              while (v137 + 1 < *(v110 + 48));
            }
          }

          v59 = ssftriff_reader_CloseChunk(v7);
LABEL_41:
          StringZ = v59;
          v60 = 0;
          goto LABEL_42;
        }

LABEL_133:
        v60 = 1;
      }

LABEL_126:
      log_OutPublic(*(*v6 + 32), v6[23], 24052, 0, v23, v24, v25, v26, v132);
      if (!v60)
      {
        goto LABEL_128;
      }

      goto LABEL_127;
    }

LABEL_129:
    log_OutText(*(*v6 + 32), v6[23], 4, 0, "loaded data block %d", v24, v25, v26, v20);
    v20 = v20 + 1;
    if (v20 >= *v11)
    {
      return StringZ;
    }
  }

  v47 = heap_Calloc(*(*v6 + 8), 1, 32 * *(v46 + 8));
  v46 = *(v21 + 8);
  *(v46 + 48) = v47;
  if (!v47)
  {
    goto LABEL_131;
  }

  v135 = v9;
  if (!*(v46 + 8))
  {
    goto LABEL_68;
  }

  v48 = 0;
  v49 = 16;
  while (1)
  {
    v134 = *(v46 + 48);
    v50 = v134 + v49;
    cstdlib_memcpy(&__dst, __src + v143, 2uLL);
    v143 += 2;
    *(v50 - 16) = __dst;
    cstdlib_memcpy((v134 + v49 - 12), __src + v143, 2uLL);
    v143 += 2;
    cstdlib_memcpy((v134 + v49 - 10), __src + v143, 2uLL);
    v143 += 2;
    cstdlib_memcpy((v134 + v49 + 8), __src + v143, 2uLL);
    v143 += 2;
    cstdlib_memcpy((v134 + v49 + 10), __src + v143, 2uLL);
    v143 += 2;
    cstdlib_memcpy((v134 + v49 + 12), __src + v143, 2uLL);
    v143 += 2;
    *(v50 - 8) = 0;
    if (*(v134 + v49 + 8))
    {
      v51 = heap_Calloc(*(*v6 + 8), 1, 56);
      v56 = v51;
      *(v50 - 8) = v51;
      if (!v51)
      {
        goto LABEL_136;
      }

      *v51 = &StaticIntPointers;
      *(v51 + 24) = 0;
      *(v51 + 16) = 0;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 32) = 0;
      v57 = FEData_readFunctionDataFromBinaryFile(v6, v7, *v6, v51, __src, &v143, v144);
      if ((v57 & 0x80000000) != 0)
      {
        goto LABEL_134;
      }
    }

    *(v134 + v49) = 0;
    if (*(v50 + 10))
    {
      break;
    }

LABEL_38:
    ++v48;
    v46 = *(v21 + 8);
    v49 += 32;
    if (v48 >= *(v46 + 8))
    {
      goto LABEL_68;
    }
  }

  v58 = heap_Calloc(*(*v6 + 8), 1, 56);
  v56 = v58;
  *(v134 + v49) = v58;
  if (v58)
  {
    *v58 = &StaticIntPointers;
    *(v58 + 24) = 0;
    *(v58 + 16) = 0;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 32) = 0;
    v57 = FEData_readFunctionDataFromBinaryFile(v6, v7, *v6, v58, __src, &v143, v144);
    if ((v57 & 0x80000000) != 0)
    {
      goto LABEL_134;
    }

    goto LABEL_38;
  }

LABEL_136:
  v124 = *(*v6 + 32);
  v125 = v6[23];
LABEL_137:
  log_OutPublic(v124, v125, 24048, v56, v52, v53, v54, v55, v132);
  StringZ = FEDATA_ERROR(10);
  v60 = 1;
  v9 = v135;
LABEL_42:
  if ((StringZ & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v60)
  {
LABEL_127:
    ssftriff_reader_CloseChunk(v7);
  }

LABEL_128:
  if ((StringZ & 0x80000000) == 0)
  {
    goto LABEL_129;
  }

LABEL_142:
  *(*(*(a4 + 32) + 8) + 8 * v20) = 0;
  log_OutPublic(*(*v6 + 32), v6[23], 24044, 0, v23, v24, v25, v26, v132);
LABEL_145:
  log_OutPublic(*(*v6 + 32), v6[23], 24052, 0, v127, v128, v129, v130, v133);
  return StringZ;
}

uint64_t readDataBlockFromFile_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v52 = 0;
  inited = InitRsrcFunction(a1, a2, &v52);
  v5 = inited;
  if ((inited & 0x80000000) == 0)
  {
    if (v3)
    {
      v6 = *(v3 + 1);
      if (v6)
      {
        v7 = *v3;
        if (*v3)
        {
          v51 = inited;
          v8 = 0;
          v50 = v3;
          while (1)
          {
            v9 = *(*(v3 + 1) + 8 * v8);
            if (v9)
            {
              v11 = (v9 + 32);
              v10 = *(v9 + 32);
              if (v10)
              {
                v51 = ssftriff_reader_ReleaseChunkData(v10);
                if ((v51 & 0x80000000) != 0)
                {
                  return v51;
                }

                *v11 = 0;
                *(v9 + 40) = 0;
              }

              v12 = v52;
              v14 = *(v9 + 8);
              v13 = *(v9 + 16);
              v15 = *(v9 + 24);
              if (v14)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x2D) != 0)
                {
                  heap_Free(*(v52 + 8), *v14);
                  *v14 = 0;
                  v17 = *(v14 + 48);
                  if (v17)
                  {
                    if (*(v14 + 8))
                    {
                      v18 = 0;
                      v19 = 0;
                      do
                      {
                        v20 = *(v14 + 48) + v18;
                        v21 = *(v20 + 8);
                        if (v21)
                        {
                          FEData_freeEntry(v12, v21, 1);
                          heap_Free(*(v12 + 8), *(v20 + 8));
                          *(v20 + 8) = 0;
                        }

                        v22 = *(v20 + 16);
                        if (v22)
                        {
                          FEData_freeEntry(v12, v22, 1);
                          heap_Free(*(v12 + 8), *(v20 + 16));
                          *(v20 + 16) = 0;
                        }

                        ++v19;
                        v18 += 32;
                      }

                      while (v19 < *(v14 + 8));
                      v17 = *(v14 + 48);
                      v3 = v50;
                    }

                    heap_Free(*(v12 + 8), v17);
                    *(v14 + 48) = 0;
                  }

                  v23 = *(v14 + 64);
                  if (v23)
                  {
                    heap_Free(*(v12 + 8), v23);
                    *(v14 + 64) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 8));
                  *(v9 + 8) = 0;
                }
              }

              if (v13)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x36) != 0)
                {
                  if (*v13)
                  {
                    heap_Free(*(v12 + 8), *v13);
                    *v13 = 0;
                  }

                  v25 = *(v13 + 56);
                  if (v25)
                  {
                    if (*(v13 + 50))
                    {
                      v26 = 0;
                      do
                      {
                        heap_Free(*(v12 + 8), *(*(v13 + 56) + 8 * v26));
                        *(*(v13 + 56) + 8 * v26++) = 0;
                      }

                      while (v26 < *(v13 + 50));
                      v25 = *(v13 + 56);
                    }

                    heap_Free(*(v12 + 8), v25);
                    *(v13 + 56) = 0;
                  }

                  if (*(v13 + 16))
                  {
                    if (*(v13 + 24))
                    {
                      v27 = 0;
                      v28 = 0;
                      do
                      {
                        v29 = *(v13 + 16) + v27;
                        heap_Free(*(v12 + 8), *(v29 + 48));
                        *(v29 + 48) = 0;
                        v30 = *(v29 + 16);
                        if (v30)
                        {
                          heap_Free(*(v12 + 8), v30);
                          *(v29 + 16) = 0;
                        }

                        ++v28;
                        v27 += 72;
                      }

                      while (v28 < *(v13 + 24));
                    }

                    v31 = *(v13 + 40);
                    v3 = v50;
                    if (v31)
                    {
                      v32 = *(v13 + 48);
                      if (v32)
                      {
                        for (i = 0; i < v32; ++i)
                        {
                          v34 = *(v13 + 40) + 16 * i;
                          v35 = *v34;
                          if (*v34)
                          {
                            if (*(v34 + 8))
                            {
                              v36 = 0;
                              v37 = 0;
                              do
                              {
                                heap_Free(*(v12 + 8), *(v35 + v36));
                                v38 = (*v34 + v36);
                                *v38 = 0;
                                heap_Free(*(v12 + 8), v38[1]);
                                v39 = *v34 + v36;
                                *(v39 + 8) = 0;
                                heap_Free(*(v12 + 8), *(v39 + 16));
                                v35 = *v34;
                                *(*v34 + v36 + 16) = 0;
                                ++v37;
                                v36 += 24;
                              }

                              while (v37 < *(v34 + 8));
                            }

                            heap_Free(*(v12 + 8), v35);
                            *v34 = 0;
                            v32 = *(v13 + 48);
                          }
                        }

                        v31 = *(v13 + 40);
                        v3 = v50;
                      }

                      heap_Free(*(v12 + 8), v31);
                      *(v13 + 40) = 0;
                    }

                    heap_Free(*(v12 + 8), *(v13 + 16));
                    *(v13 + 16) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 16));
                  *(v9 + 16) = 0;
                }
              }

              if (v15)
              {
                v40 = *(v15 + 8);
                if (v40)
                {
                  v41 = *(v15 + 16);
                  if (v41)
                  {
                    for (j = 0; j < v41; ++j)
                    {
                      v43 = *(v15 + 8);
                      v44 = *(v43 + 8 * j);
                      if (v44)
                      {
                        if (*v44)
                        {
                          heap_Free(*(v12 + 8), *v44);
                          v43 = *(v15 + 8);
                          **(v43 + 8 * j) = 0;
                          v44 = *(v43 + 8 * j);
                        }

                        v45 = *(v44 + 16);
                        if (v45)
                        {
                          if (*(v44 + 12))
                          {
                            v46 = 0;
                            do
                            {
                              v47 = *(*(v44 + 16) + 8 * v46);
                              if (v47)
                              {
                                heap_Free(*(v12 + 8), v47);
                                *(*(*(*(v15 + 8) + 8 * j) + 16) + 8 * v46) = 0;
                                v43 = *(v15 + 8);
                              }

                              ++v46;
                              v44 = *(v43 + 8 * j);
                            }

                            while (v46 < *(v44 + 12));
                            v45 = *(v44 + 16);
                          }

                          heap_Free(*(v12 + 8), v45);
                          v48 = *(v15 + 8);
                          *(*(v48 + 8 * j) + 16) = 0;
                          v44 = *(v48 + 8 * j);
                        }

                        *(v44 + 12) = 0;
                        heap_Free(*(v12 + 8), v44);
                        *(*(v15 + 8) + 8 * j) = 0;
                        v41 = *(v15 + 16);
                      }
                    }

                    v40 = *(v15 + 8);
                  }

                  heap_Free(*(v12 + 8), v40);
                  *(v15 + 8) = 0;
                }

                *(v15 + 16) = 0;
                heap_Free(*(v12 + 8), v15);
              }

              if (*v11)
              {
                ssftriff_reader_ReleaseChunkData(*v11);
                *v11 = 0;
                *(v9 + 40) = 0;
              }

              heap_Free(*(v12 + 8), v9);
              v7 = *v3;
            }

            if (++v8 >= v7)
            {
              v6 = *(v3 + 1);
              v5 = v51;
              break;
            }
          }
        }

        heap_Free(*(v52 + 8), v6);
        heap_Free(*(v52 + 8), v3);
      }
    }
  }

  return v5;
}

uint64_t FERuntimeData_DumpMatch_NNTN(uint64_t a1, uint64_t a2, __int16 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0;
  if (*(a1 + 176))
  {
    if (a4 == 1)
    {
      v11 = "<LOGFE> ";
    }

    else
    {
      v11 = "";
    }

    cstdlib_strcpy(__dst, v11);
    FEData_blockData_getTokenData_NNTN(a1, *(a2 + 96), &v35, v12, v13, v14, v15, v16);
    cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + *a3), (a3[1] - *a3));
    *(*(a1 + 552) - *a3 + a3[1]) = 0;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s%20s [%d,%d] _%s_ (domainBlockID=%d, domainNum=%d)", v17, v18, v19, __dst);
    if (*(a2 + 82))
    {
      v23 = 0;
      v24 = (a2 + 44);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        if (v25 == -1 && v26 == 0xFFFF)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _NULL_", v20, v21, v22, "MATCH");
        }

        else
        {
          cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + v25), (v26 - v25));
          *(*(a1 + 552) - *(v24 - 1) + *v24) = 0;
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _%s_", v28, v29, v30, "MATCH");
        }

        ++v23;
        v24 += 2;
      }

      while (v23 < *(a2 + 82));
    }

    if (*(a2 + 40))
    {
      v31 = 0;
      v32 = a2 + 2;
      do
      {
        v32 += 4;
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] %s", v20, v21, v22, "EXPANDEDORTH");
        ++v31;
      }

      while (v31 < *(a2 + 40));
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v34);

    return NNTNERROR(7);
  }
}

uint64_t FERuntimeData_DumpMatches_NNTN(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 548))
  {
    return 0;
  }

  v9 = *(a1 + 176);
  if (v9)
  {
    if (a3 == 1)
    {
      v11 = "<LOGFE> ";
    }

    else
    {
      v11 = "";
    }

    cstdlib_strcpy(__dst, v11);
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches Begin %s", v12, v13, v14, __dst);
    if (*(v9 + 16))
    {
      for (i = *(v9 + 8); i; i = *i)
      {
        FERuntimeData_DumpMatch_NNTN(a1, (i + 12), i + 8, a3, v15, v16, v17, v18);
      }
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches End (%x)", v16, v17, v18, __dst);
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v21);

  return NNTNERROR(7);
}

uint64_t FERuntimeData_DeleteMatch_NNTN(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = (v3 + 8);
    v5 = (v3 + 8);
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        return 0;
      }

      v6 = *(v5 + 8);
      v7 = *a2;
      if (v6 == v7 && *(v5 + 9) == a2[1] && v5[15] == *(a3 + 96))
      {
        break;
      }

      if (v6 > v7)
      {
        return 0;
      }
    }

    v9 = *v5;
    v10 = v5[1];
    if (v10)
    {
      *v10 = v9;
      if (!v9)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (v9)
    {
      v9[1] = 0;
    }

    *v4 = v9;
    v9 = *v5;
    if (*v5)
    {
LABEL_15:
      v9[1] = v5[1];
    }
  }

  return 0;
}

uint64_t partialMatchFoundInBasicToken_NNTN(uint64_t result, __int16 *a2)
{
  v15 = 0;
  if (result)
  {
    v2 = result;
    v3 = *(*(result + 264) + 16);
    for (i = *(v3 + 80); i < *(v3 + 88); ++i)
    {
      __s1 = 0;
      v6 = LDOTreeNode_ComputeAbsoluteFrom(*i, &v15 + 1);
      if ((LH_ERROR_to_VERROR(v6) & 0x80000000) != 0)
      {
        break;
      }

      v7 = LDOTreeNode_ComputeAbsoluteTo(*i, &v15);
      if ((LH_ERROR_to_VERROR(v7) & 0x80000000) != 0)
      {
        break;
      }

      Type = LDOObject_GetType(*i, &__s1);
      if ((LH_ERROR_to_VERROR(Type) & 0x80000000) != 0)
      {
        break;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_ALPHA") || !cstdlib_strcmp(__s1, "TOKEN_DIGIT") || !cstdlib_strcmp(__s1, "TOKEN_PUNCT") || !cstdlib_strcmp(__s1, "TOKEN_WSPACE"))
      {
        v12 = *a2;
        if (__PAIR64__(v15, SWORD2(v15)) != __PAIR64__(a2[1], v12))
        {
          if (SWORD2(v15) >= v12)
          {
            v13 = a2[1];
          }

          else
          {
            v13 = a2[1];
            if (v12 < v15)
            {
              goto LABEL_20;
            }
          }

          if (SWORD2(v15) < v13 && v13 < v15)
          {
LABEL_20:
            log_OutText(*(*v2 + 32), v2[23], 5, 0, "Regex match %d,%d bisects basic token %d,%d", v9, v10, v11, v12);
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t tokenizer_apply_regex_NNTN(uint64_t *a1, uint64_t a2, size_t **a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 44);
  v29 = 0;
  v7 = nuance_pcre_exec(a1[17], a1[18], *(a2 + 32), *a2, a1[38], *(a2 + 42), v6, *(a2 + 64), &v30, 100);
  v11 = v31;
  if (v31 > *(a2 + 46))
  {
    goto LABEL_9;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v12 = nuance_pcre_ErrorToLhError(v7);
    if (v12 >> 20 == 2213)
    {
      v14 = v12;
      if ((v12 & 0x1FFF) == 0xA)
      {
        v15 = 11002;
        goto LABEL_23;
      }

      if ((v12 & 0x1FFF) != 0x14)
      {
        v15 = 11027;
LABEL_23:
        log_OutPublic(*(*a1 + 32), a1[23], v15, "%s%x%s%s", v13, v8, v9, v10, "lhError");
        return v14;
      }

      goto LABEL_9;
    }

    v11 = v31;
  }

  v16 = v30;
  v17 = *(a2 + 16);
  v18 = *(v17 + 8);
  *v18 = v30;
  v18[1] = v11;
  if (!(v16 | v11))
  {
LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  if (*(v17 + 44) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s already validated", v8, v9, v10, *(a2 + 24));
  }

  else if (partialMatchFoundInBasicToken_NNTN(a1, v18) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "token %s invalidated.", v24, v25, v26, *(a2 + 24));
    goto LABEL_9;
  }

  *(**(a2 + 16) + 96) = *(a2 + 56);
  v27 = sortExpansionNNTN(a1, a2);
  if ((v27 & 0x80000000) != 0)
  {
    return v27;
  }

  v19 = 0;
  *(a2 + 72) = 1;
LABEL_10:
  v20 = LDOTreeNode_ComputeAbsoluteTo(**a3, &v29);
  v21 = LH_ERROR_to_VERROR(v20);
  v14 = v21;
  if ((v19 & 1) == 0 && (v21 & 0x80000000) == 0)
  {
    do
    {
      if (v29 >= *(*(*(a2 + 16) + 8) + 2))
      {
        break;
      }

      v22 = (*a3)++;
      v23 = LDOTreeNode_ComputeAbsoluteTo(v22[1], &v29);
      v14 = LH_ERROR_to_VERROR(v23);
    }

    while ((v14 & 0x80000000) == 0);
  }

  return v14;
}

uint64_t tokenizer_ResolveMatches_NNTN(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  if (!a1)
  {
    goto LABEL_76;
  }

  if (!*(a1 + 304))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v71);
LABEL_76:

    return NNTNERROR(7);
  }

  if (*(a1 + 548) == 1 && FERuntimeData_GetNumMatches(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    FERuntimeData_DumpMatches_NNTN(a1, "Dump at start of ResolveMatches", 0, a4, a5, a6, a7, a8);
  }

  v74 = 0;
  if (!*(a1 + 312))
  {
    matched = 0;
    goto LABEL_81;
  }

  v9 = 0;
  v10 = 0;
  matched = 0;
  while (2)
  {
    FERuntimeData_GetKeyAtPos(a1, v10, &v75, &v73);
    a2 = v75;
    if (!v75 || v9 != *v75)
    {
      ++v10;
      goto LABEL_73;
    }

    FERuntimeData_FindLongestMatch(a1, v75, &v76);
    LOWORD(v74) = *v75;
    HIWORD(v74) = v76;
    FERuntimeData_DeleteSubsumedkeys(a1, v75, v76);
    AllMatchesAtKey = FERuntimeData_GetAllMatchesAtKey(a1, &v74);
    if ((AllMatchesAtKey & 0x80000000) != 0)
    {
      return AllMatchesAtKey;
    }

    v16 = *(a1 + 386);
    if (v16 < 2)
    {
      goto LABEL_71;
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "applying token priority lists to resolve %d token clashes at position %d,%d", v13, v14, v15, v16);
    LODWORD(v22) = *(a1 + 386);
    if (*(a1 + 548) == 1 && *(a1 + 386))
    {
      v23 = 0;
      do
      {
        FEData_blockData_getTokenData_NNTN(a1, *(*(*(a1 + 376) + 8 * v23) + 96), &v72, v17, v18, v19, v20, v21);
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "[%d] = token %s", v24, v25, v26, v23++);
        v22 = *(a1 + 386);
      }

      while (v23 < v22);
    }

    v78 = 0;
    v79 = 0;
    v77 = 0;
    AllMatchesAtKey = resetSolutionList(a1, v22);
    if ((AllMatchesAtKey & 0x80000000) != 0)
    {
      return AllMatchesAtKey;
    }

    if (!*(a1 + 386))
    {
      goto LABEL_53;
    }

    v32 = 0;
    v33 = 0;
    v34 = 4;
    do
    {
      AllMatchesAtKey = FEData_blockData_newGetDomainDefBlockInfo(a1, *(*(*(a1 + 376) + 8 * v32) + 104), &v77, v27, v28, v29, v30, v31);
      if ((AllMatchesAtKey & 0x80000000) != 0)
      {
        return AllMatchesAtKey;
      }

      v35 = *(v77 + 8);
      v36 = *(a1 + 360);
      *(v36 + v34) = v35;
      if (v35 > v33)
      {
        v33 = v35;
      }

      ++v32;
      v37 = *(a1 + 386);
      v34 += 12;
    }

    while (v32 < v37);
    if (!*(a1 + 386))
    {
      goto LABEL_53;
    }

    v38 = 0;
    v39 = 0;
    v40 = (v36 + 4);
    v41 = 999;
    do
    {
      v42 = *v40;
      v40 += 3;
      if (v42 == v33)
      {
        ++v39;
        v41 = v38;
      }

      ++v38;
    }

    while (v37 != v38);
    if (v39 == 1)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "priority list resolution by domain type : match %d", v29, v30, v31, v41);
      goto LABEL_66;
    }

    v46 = 0;
    v47 = 0;
    v48 = 0;
    v41 = 999;
    do
    {
      *(*(a1 + 360) + 12 * v46) = 999;
      v49 = *(*(a1 + 376) + 8 * v46);
      FEData_blockData_newGetDomainEntry(a1, *(v49 + 104), *(v49 + 106), &v79, v28, v29, v30, v31);
      if (*(v79 + 8) != 1)
      {
        v50 = v48;
LABEL_48:
        v57 = *(a1 + 386);
        v48 = v50;
        goto LABEL_49;
      }

      FEData_blockData_newGetPriorityList_NNTN(a1, *(*(*(a1 + 376) + 8 * v46) + 104), *(v79 + 12), &v78, v28, v29, v30, v31);
      v50 = v78;
      if (!v78 || v78 == v48)
      {
        goto LABEL_48;
      }

      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "using priority list from match %d, to resolve", v29, v30, v31, v47);
      v48 = v78;
      if (*(a1 + 386))
      {
        v51 = 0;
        v52 = 0;
        v53 = *(v78 + 4);
        do
        {
          if (*(v78 + 4))
          {
            v54 = 0;
            v55 = **(*(*(a1 + 376) + 8 * v51) + 96);
            v56 = *v78;
            while (*(v55 + 2) != *(*v56 + 2) || *(v55 + 4) != *(*v56 + 4))
            {
              ++v54;
              v56 += 24;
              if (*(v78 + 4) == v54)
              {
                goto LABEL_45;
              }
            }

            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "token [%d] priority = %d", v29, v30, v31, v52);
            if (v53 > v54)
            {
              v53 = v54;
              *(*(a1 + 360) + 12 * v46) = v51;
              v41 = v51;
            }
          }

LABEL_45:
          ++v51;
          v57 = *(a1 + 386);
          v52 = v51;
        }

        while (v51 < v57);
        v48 = v78;
      }

      else
      {
        v57 = 0;
      }

LABEL_49:
      v47 = ++v46;
    }

    while (v46 < v57);
    if (v41 == 999)
    {
LABEL_53:
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "no priority list resolution : return default match %d", v29, v30, v31, 0);
      v41 = 0;
    }

    else if (v57)
    {
      v58 = 0;
      v59 = 0;
LABEL_56:
      v60 = (*(a1 + 360) + 12 * v58);
      do
      {
        v62 = *v60;
        v60 += 6;
        v61 = v62;
        if (v62 != 999 && v61 != v41)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "priority lists conflict in resolution : solution %d and %d", v29, v30, v31, v61);
          v57 = *(a1 + 386);
          ++v58;
          v59 = 1;
          if (v58 < v57)
          {
            goto LABEL_56;
          }

          goto LABEL_64;
        }

        ++v58;
      }

      while (v58 < v57);
      if ((v59 & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_64:
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "priority list resolution : conflict found, so choosing match %d", v29, v30, v31, v41);
    }

    else
    {
LABEL_65:
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "priority list resolution : match %d", v29, v30, v31, v41);
    }

LABEL_66:
    v63 = *(a1 + 386);
    if (v63)
    {
      for (i = 0; i < v63; ++i)
      {
        if (v41 != i)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "deleting match %d", v43, v44, v45, i);
          FERuntimeData_DeleteMatch_NNTN(a1, &v74, *(*(a1 + 376) + 8 * i));
          v63 = *(a1 + 386);
        }
      }
    }

LABEL_71:
    matched = resetMatchList(a1, 0);
    if ((matched & 0x80000000) == 0)
    {
      v10 = v76;
LABEL_73:
      v75 = 0;
      v9 = v10;
      if (v10 >= *(a1 + 312))
      {
LABEL_81:
        if (*(a1 + 548) == 1)
        {
          if (FERuntimeData_GetNumMatches(a1, a2, a3, a4, a5, a6, a7, a8))
          {
            FERuntimeData_DumpMatches_NNTN(a1, "Dump at end of ResolveMatches", 0, v66, v67, v68, v69, v70);
          }
        }

        return matched;
      }

      continue;
    }

    return matched;
  }
}

uint64_t tokenizer_NNTN_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen Begin", a6, a7, a8, v48);
  v9 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (v9)
  {
    v14 = v9;
    a1[21] = v9;
    v15 = heap_Calloc(*(*a1 + 8), 1, 80);
    *v14 = v15;
    v20 = *a1;
    if (v15)
    {
      v21 = heap_Calloc(*(v20 + 8), 1, 40);
      **v14 = v21;
      v20 = *a1;
      if (v21)
      {
        v22 = heap_Calloc(*(v20 + 8), 1, 64);
        *(*v14 + 16) = v22;
        v20 = *a1;
        if (v22)
        {
          v23 = heap_Calloc(*(v20 + 8), 1, 4);
          *(*(*v14 + 16) + 8) = v23;
          if (v23)
          {
            *v23 = 0;
            v24 = heap_Calloc(*(*a1 + 8), 1, 112);
            v25 = *v14;
            v26 = *(*v14 + 16);
            *v26 = v24;
            if (v24)
            {
              *(v24 + 96) = 0;
              *(v26 + 40) = 0;
              *(v26 + 48) = 0;
              *(v26 + 16) = 0;
              *(v26 + 24) = 0;
              v27 = *v25;
              *v27 |= 4uLL;
              v27[3] = v26;
              v51 = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : InitCheckFunctions Begin", v17, v18, v19, v49);
              Map = FEFunctionMap_GetMap(a1, &v51);
              if ((Map & 0x80000000) != 0)
              {
                v39 = Map;
              }

              else
              {
                v29 = &off_287EEBD48;
                v30 = 8;
                do
                {
                  v31 = ssftmap_Insert(v51, *(v29 - 1), *v29);
                  if ((v31 & 0x80000000) != 0)
                  {
                    v39 = v31;
                    log_OutPublic(*(*a1 + 32), a1[23], 21011, 0, v32, v33, v34, v35, v50);
                    goto LABEL_22;
                  }

                  v29 += 2;
                  --v30;
                }

                while (v30);
                v39 = FEFunctionMap_AddFunctionMap(a1, 0, v51);
                if ((v39 & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }
              }

LABEL_22:
              ssftmap_ObjClose(v51);
LABEL_23:
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : InitCheckFunctions End (%x)", v36, v37, v38, v39);
              if ((v39 & 0x80000000) == 0)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          v20 = *a1;
        }
      }
    }

    log_OutPublic(*(v20 + 32), a1[23], 24048, 0, v16, v17, v18, v19, v49);
    v39 = NNTNERROR(10);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_19:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen End (%x)", v45, v46, v47, v39);
      return v39;
    }

LABEL_18:
    tokenizer_loc_ObjClose(a1, v41, v42, v43, v44, v45, v46, v47);
    goto LABEL_19;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v10, v11, v12, v13, v49);

  return NNTNERROR(10);
}

uint64_t tokenizer_loc_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[21];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : loc ObjClose Begin", a6, a7, a8, v16);
  v10 = *v9;
  if (*v9)
  {
    v11 = v10[2];
    if (v11)
    {
      if (v11[1])
      {
        heap_Free(*(*a1 + 8), v11[1]);
        v11 = *(*v9 + 16);
        v11[1] = 0;
      }

      if (*v11)
      {
        heap_Free(*(*a1 + 8), *v11);
        v11 = *(*v9 + 16);
        *v11 = 0;
      }

      heap_Free(*(*a1 + 8), v11);
      v10 = *v9;
      *(*v9 + 16) = 0;
    }

    if (*v10)
    {
      heap_Free(*(*a1 + 8), *v10);
      v10 = *v9;
      **v9 = 0;
    }

    heap_Free(*(*a1 + 8), v10);
    *v9 = 0;
  }

  heap_Free(*(*a1 + 8), v9);
  a1[21] = 0;
  return log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : loc ObjClose End (%x)", v12, v13, v14, 0);
}

uint64_t tokenizer_NNTN_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[21])
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjClose Begin", a6, a7, a8, v21);
    tokenizer_loc_ObjClose(a1, v10, v11, v12, v13, v14, v15, v16);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer_NNTN : ObjOpen End (%x)", v17, v18, v19, 0);
    return 0;
  }

  else
  {

    return NNTNERROR(8);
  }
}

uint64_t fe_nnws_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2588942337;
  }

  result = 0;
  *a2 = &IFeNNWS;
  return result;
}

uint64_t fe_nnws_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2588942343;
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

uint64_t fe_nnws_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v5 = 2588942343;
  v43 = 0;
  v44 = 0;
  memset(v53, 0, sizeof(v53));
  if (!a5)
  {
    return v5;
  }

  v48 = 0;
  v46 = 0uLL;
  v47 = 0uLL;
  v45 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a1, a2, &v51);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a3, a4, &v52);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v52 + 8), 1, 208);
  if (!v12)
  {
    log_OutPublic(*(v52 + 32), "FE_NNWS", 75000, 0, v13, v14, v15, v16, v41);
    v5 = 2588942346;
LABEL_25:
    fe_nnws_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  v17 = v12;
  Object = objc_GetObject(*(v52 + 48), "LINGDB", &v50);
  if ((Object & 0x80000000) != 0 || (*(v17 + 48) = *(v50 + 8), Object = objc_GetObject(*(v52 + 48), "FE_DCTLKP", &v49), (Object & 0x80000000) != 0) || (v22 = v49, *(v17 + 56) = *(v49 + 8), *(v17 + 64) = *(v22 + 16), *v17 = v52, *(v17 + 8) = a3, v23 = v51, *(v17 + 16) = a4, *(v17 + 24) = v23, *(v17 + 32) = a1, *(v17 + 40) = a2, *(v17 + 104) = 0, Object = fe_nnws_loadCfg(v17), (Object & 0x80000000) != 0) || (*(v17 + 128) = 0, Object = nn_word_lkp_GetInterface(1u, &v45), (Object & 0x80000000) != 0))
  {
LABEL_24:
    v5 = Object;
    log_OutText(*(*v17 + 32), "FE_NNWS", 2, 0, "fe_nnws ObjOpen Failed!", v19, v20, v21, v41);
    goto LABEL_25;
  }

  *(v17 + 128) = v45;
  *(v17 + 136) = safeh_GetNullHandle();
  *(v17 + 144) = v24;
  *(v17 + 152) = safeh_GetNullHandle();
  *(v17 + 160) = v25;
  *(v17 + 168) = safeh_GetNullHandle();
  *(v17 + 176) = v26;
  v27 = *(v17 + 136);
  v28 = *(*(v17 + 128) + 16);
  v29 = *(v17 + 144);
  v30 = *(v17 + 8);
  v31 = *(v17 + 16);
  if (*(v17 + 200))
  {
    Object = v28(v27, v29, "albert", v30, v31, v17 + 152);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    Object = v28(v27, v29, "char", v30, v31, v17 + 152);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_24;
    }

    v47 = *(v17 + 152);
    *(&v46 + 1) = v45;
    Object = objc_RegisterObject(*(v52 + 48), "NNCHRLKP", &v46);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_24;
    }
  }

  if (!*(v17 + 200))
  {
    Object = (*(*(v17 + 128) + 16))(*(v17 + 136), *(v17 + 144), "nnws_wlist", *(v17 + 8), *(v17 + 16), v17 + 168);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_24;
    }
  }

  Object = fe_nnws_CreateBrokerString(*v17, v53, "nnws_");
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

  v32 = fi_init(a3, a4, a1, a2, &v44, 0, v53, "FINN", 1, 0);
  if ((v32 & 0x80000000) != 0)
  {
    v5 = v32;
    v39 = *(*v17 + 32);
    v40 = "create FI model failed";
LABEL_29:
    log_OutText(v39, "FE_NNWS", 5, 0, v40, v33, v34, v35, v42);
    return v5;
  }

  *(v17 + 80) = v44;
  v36 = fe_nnws_tagInit(*v17, &v43);
  if ((v36 & 0x80000000) != 0)
  {
    v5 = v36;
    v39 = *(*v17 + 32);
    v40 = "create SBME tags failed";
    goto LABEL_29;
  }

  *(v17 + 120) = v43;
  v5 = fe_nnws_tryLoadingIGTree(*(v17 + 8), *(v17 + 16), *v17, (v17 + 184));
  if ((v5 & 0x80000000) != 0)
  {
    v37 = *(v17 + 184);
    if (v37)
    {
      igtree_Deinit(*v17, v37);
      heap_Free(*(*v17 + 8), *(v17 + 184));
      v5 = 0;
      *(v17 + 184) = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  *a5 = v17;
  *(a5 + 8) = 62346;
  return v5;
}

uint64_t fe_nnws_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62346, 208);
  if ((v3 & 0x80000000) != 0)
  {
    return 2588942344;
  }

  v4 = v3;
  if (a1)
  {
    if (a1[6])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v5 = a1[16];
    if (v5)
    {
      v4 = (*(v5 + 24))(a1[19], a1[20]);
      v6 = (*(a1[16] + 24))(a1[21], a1[22]);
      if ((v4 & 0x80000000) == 0 && (v6 & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNCHRLKP");
      }
    }

    v7 = a1[14];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
      a1[14] = 0;
    }

    v8 = a1[10];
    if (v8)
    {
      v4 = fi_deinit(*a1, a1[3], v8);
    }

    if (a1[15])
    {
      for (i = 0; i != 32; i += 8)
      {
        heap_Free(*(*a1 + 8), *(a1[15] + i));
        *(a1[15] + i) = 0;
      }

      heap_Free(*(*a1 + 8), a1[15]);
      a1[15] = 0;
    }

    v10 = a1[23];
    if (v10)
    {
      igtree_Deinit(*a1, v10);
      heap_Free(*(*a1 + 8), a1[23]);
      a1[23] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_nnws_ObjReopen(void *a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v4 = 2588942342;
  v31 = 0;
  memset(v36, 0, sizeof(v36));
  if ((safeh_HandleCheck(a1, a2, 62346, 208) & 0x80000000) != 0)
  {
    return 2588942344;
  }

  if (a1)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v5 = a1[16];
    if (v5)
    {
      v6 = (*(v5 + 24))(a1[19], a1[20]);
      v7 = (*(a1[16] + 24))(a1[21], a1[22]);
      if ((v6 & 0x80000000) == 0 && (v7 & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNCHRLKP");
      }
    }

    v8 = a1[10];
    if (v8)
    {
      Cfg = fi_deinit(*a1, a1[3], v8);
      if ((Cfg & 0x80000000) != 0)
      {
LABEL_29:
        v4 = Cfg;
LABEL_30:
        log_OutText(*(*a1 + 32), "FE_NNWS", 2, 0, "fe_nnws ObjReopen Failed!", v10, v11, v12, v29);
        fe_nnws_ObjClose(a1, a2);
        return v4;
      }

      a1[10] = 0;
    }

    v13 = a1[14];
    if (v13)
    {
      heap_Free(*(*a1 + 8), v13);
      a1[14] = 0;
    }

    v15 = a1 + 23;
    v14 = a1[23];
    if (v14)
    {
      igtree_Deinit(*a1, v14);
      heap_Free(*(*a1 + 8), a1[23]);
      a1[23] = 0;
    }

    a1[13] = 0;
    Cfg = fe_nnws_loadCfg(a1);
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    Cfg = nn_word_lkp_GetInterface(1u, &v35);
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    a1[16] = v35;
    a1[17] = safeh_GetNullHandle();
    a1[18] = v16;
    a1[19] = safeh_GetNullHandle();
    a1[20] = v17;
    a1[21] = safeh_GetNullHandle();
    a1[22] = v18;
    v19 = a1[17];
    v20 = *(a1[16] + 16);
    v21 = a1[18];
    v22 = a1[1];
    v23 = a1[2];
    if (*(a1 + 50))
    {
      Cfg = v20(v19, v21, "albert", v22, v23, a1 + 19);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      Cfg = v20(v19, v21, "char", v22, v23, a1 + 19);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v33 = *(a1 + 19);
      *(&v32 + 1) = v35;
      Cfg = objc_RegisterObject(*(*a1 + 48), "NNCHRLKP", &v32);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    if (!*(a1 + 50))
    {
      Cfg = (*(a1[16] + 16))(a1[17], a1[18], "nnws_wlist", a1[1], a1[2], a1 + 21);
      if ((Cfg & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    Cfg = fe_nnws_CreateBrokerString(*a1, v36, "nnws_");
    if ((Cfg & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    v24 = fi_init(a1[1], a1[2], a1[4], a1[5], &v31, 0, v36, "FINN", 1, 0);
    if ((v24 & 0x80000000) != 0)
    {
      v4 = v24;
      log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "re-create FI model failed", v25, v26, v27, v30);
      goto LABEL_30;
    }

    a1[10] = v31;
    v4 = fe_nnws_tryLoadingIGTree(a1[1], a1[2], *a1, a1 + 23);
    if ((v4 & 0x80000000) != 0)
    {
      if (*v15)
      {
        igtree_Deinit(*a1, *v15);
        heap_Free(*(*a1 + 8), a1[23]);
        v4 = 0;
        a1[23] = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t fe_nnws_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62346, 208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2588942344;
  }
}

uint64_t fe_nnws_Process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v176 = 0;
  v171 = 0;
  __s = 0;
  v5 = 2588942346;
  v170 = 0;
  v169 = 0;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  *a5 = 1;
  if (!a1)
  {
    return 2588942343;
  }

  v175 = 0;
  v174 = 0;
  v173 = 0;
  v9 = log_GetLogLevel(*(*a1 + 32)) > 4;
  v10 = (*(a1[6] + 104))(a3, a4, 1, 0, &v176);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = v10;
LABEL_117:
    v12 = 0;
    goto LABEL_118;
  }

  v11 = (*(a1[6] + 184))(a3, a4, v176, 0, &v174);
  v12 = 0;
  if ((v11 & 0x80000000) != 0 || v174 != 1)
  {
    goto LABEL_118;
  }

  v11 = (*(a1[6] + 176))(a3, a4, v176, 0, &__s, &v175 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  if (HIWORD(v175) < 2u)
  {
    return v11;
  }

  v13 = *(*a1 + 8);
  v14 = cstdlib_strlen(__s);
  v15 = heap_Alloc(v13, v14 + 1);
  v171 = v15;
  if (!v15)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v16, v17, v18, v19, v148);
    v12 = 0;
LABEL_214:
    v11 = 2588942346;
    goto LABEL_118;
  }

  v20 = v15;
  cstdlib_strcpy(v15, __s);
  v21 = cstdlib_strlen(v20);
  v22 = Utf8_LengthInUtf8chars(v20, v21);
  v23 = heap_Calloc(*(*a1 + 8), v22, 56);
  v168 = v23;
  if (!v23)
  {
    goto LABEL_213;
  }

  v28 = v23;
  v29 = a1[6];
  v159 = *a1;
  v30 = v176;
  v185 = 0;
  v184 = 0;
  v182 = 0;
  v183 = 0;
  v180 = 0;
  v181 = 0;
  v179 = 0;
  UTF8Char = (*(v29 + 176))(a3, a4, v176, 1, &v179, &v183 + 2);
  if ((UTF8Char & 0x80000000) != 0 || (UTF8Char = (*(v29 + 104))(a3, a4, 3, v30, &v183), (UTF8Char & 0x80000000) != 0))
  {
    LODWORD(v37) = 0;
LABEL_145:
    v5 = UTF8Char;
    goto LABEL_146;
  }

  v32 = v183;
  v149 = v30;
  if (v183)
  {
    while (1)
    {
      v178 = 0;
      v177 = 0;
      v33 = (*(v29 + 168))(a3, a4, v32, 0, 1, &v178, &v177);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      if (v178 == 6)
      {
        break;
      }

      v33 = (*(v29 + 120))(a3, a4, v183, &v183);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      v32 = v183;
      if (!v183)
      {
        goto LABEL_16;
      }
    }

    v33 = (*(v29 + 168))(a3, a4, v183, 1, 1, &v180 + 4, &v177);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_257;
    }

    v33 = (*(v29 + 168))(a3, a4, v183, 2, 1, &v180, &v177);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_257;
    }

    v127 = (*(v29 + 184))(a3, a4, v183, 8, &v182 + 2);
    if ((v127 & 0x80000000) != 0)
    {
      goto LABEL_227;
    }

    if (HIWORD(v182) == 1)
    {
      v127 = (*(v29 + 168))(a3, a4, v183, 8, 1, &v185, &v177);
      if ((v127 & 0x80000000) != 0)
      {
        goto LABEL_227;
      }
    }

    else
    {
      v185 = v180 - HIDWORD(v180);
    }

    v127 = (*(v29 + 176))(a3, a4, v183, 4, &v184, &v177);
    if ((v127 & 0x80000000) != 0)
    {
LABEL_227:
      v5 = v127;
      LODWORD(v37) = 0;
      goto LABEL_146;
    }

    v128 = cstdlib_strcmp(v184, "_PR_");
    v34 = 0;
    v150 = v128 == 0;
  }

  else
  {
LABEL_16:
    v150 = 0;
    v34 = 1;
  }

  v35 = HIWORD(v183);
  v155 = v28;
  if (!HIWORD(v183))
  {
    LODWORD(v37) = 0;
    goto LABEL_148;
  }

  v157 = v34;
  v36 = 0;
  v162 = 0;
  v163 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 40;
  v41 = 1;
  v154 = v22;
  v165 = v29;
  do
  {
    v42 = v179;
    v43 = (v179 + 32 * v36);
    v44 = *v43;
    if (*v43 != 1)
    {
      if (v37 && (v62 = v28 + 56 * (v37 - 1), *(v62 + 36) = 0x100000001, v36 >= 2) && v44 == 99)
      {
        if (*(v43 - 8) == 1 && v43[3] == *(v43 - 5))
        {
          *(v62 + 48) = 1;
        }
      }

      else if (v44 == 0x4000)
      {
        v38 = v43[3];
      }

      goto LABEL_113;
    }

    v38 += v39;
    v45 = v43[3];
    v160 = v38;
    v152 = v40;
    v153 = v36;
    v151 = v41;
    if (v45 > v38 && v43[1] > v38)
    {
      v46 = v28 + 56 * v37;
      *(v46 + 36) = 1;
      *(v46 + 8) = v39;
      *(v46 + 12) = v39;
      *(v46 + 16) = v45 + ~v38;
      v47 = v39;
      v48 = heap_Alloc(*(v159 + 8), 4);
      *v46 = v48;
      if (!v48)
      {
LABEL_223:
        log_OutPublic(*(v159 + 32), "FE_NNWS", 75000, 0, v49, v50, v51, v52, v148);
        goto LABEL_146;
      }

      cstdlib_strcpy(v48, "ENG");
      v53 = *(v46 + 16);
      v54 = (v53 + v47);
      v162 += v53;
      v163 = v54;
      v37 = (v37 + 1);
      v35 = HIWORD(v183);
      v42 = v179;
      v28 = v155;
      v40 = v152;
      v36 = v153;
      v38 = v160;
      v39 = v54;
      v29 = v165;
      v41 = v151;
    }

    v55 = v42 + 32 * v36;
    v56 = 0;
    if (v36 + 1 >= v35)
    {
LABEL_30:
      v60 = *(v42 + 16) + *(v42 + 12);
      v61 = v56 + *(v55 + 12);
    }

    else
    {
      v57 = (v42 + v40);
      v58 = v41;
      while (*(v57 - 2) != 1)
      {
        v59 = *v57;
        v57 += 8;
        if (v59 == 1)
        {
          ++v56;
        }

        if (v35 == ++v58)
        {
          goto LABEL_30;
        }
      }

      v60 = *(v42 + 32 * v58 + 12);
      v61 = v56 + *(v55 + 12);
    }

    v156 = v60 - v61;
    if (v37 >= v22)
    {
      goto LABEL_111;
    }

    v161 = 0;
    v158 = 1;
    while (1)
    {
      v63 = v39;
      if (cstdlib_strlen(v20) <= v162 || v161 >= v156)
      {
        break;
      }

      if (v183 && v157 == 1)
      {
        if (v63 < v180)
        {
          v157 = 1;
          goto LABEL_63;
        }

        LODWORD(v64) = v37;
        do
        {
          v33 = (*(v165 + 120))(a3, a4);
          if ((v33 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          if (!v183)
          {
            v157 = 1;
            goto LABEL_63;
          }

          v178 = 0;
          v177 = 0;
          v33 = (*(v165 + 168))(a3, a4, v183, 0, 1, &v178, &v177);
          if ((v33 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }
        }

        while (v178 != 6);
        v33 = (*(v165 + 168))(a3, a4, v183, 1, 1, &v180 + 4, &v177);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v33 = (*(v165 + 168))(a3, a4, v183, 2, 1, &v180, &v177);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v65 = (*(v165 + 184))(a3, a4, v183, 8, &v182 + 2);
        if ((v65 & 0x80000000) != 0)
        {
LABEL_235:
          v5 = v65;
LABEL_222:
          LODWORD(v37) = v64;
LABEL_146:
          v169 = v37;
          v12 = 1;
          v11 = v5;
LABEL_118:
          v89 = v171;
          if (!v171)
          {
            goto LABEL_120;
          }

LABEL_119:
          heap_Free(*(*a1 + 8), v89);
          goto LABEL_120;
        }

        if (HIWORD(v182) == 1)
        {
          v65 = (*(v165 + 168))(a3, a4, v183, 8, 1, &v185, &v177);
          v66 = v165;
          if ((v65 & 0x80000000) != 0)
          {
            goto LABEL_235;
          }
        }

        else
        {
          v185 = v180 - HIDWORD(v180);
          v66 = v165;
        }

        v65 = (*(v66 + 176))(a3, a4, v183, 4, &v184, &v177);
        if ((v65 & 0x80000000) != 0)
        {
          goto LABEL_235;
        }

        v157 = 0;
        v150 = cstdlib_strcmp(v184, "_PR_") == 0;
      }

LABEL_63:
      UTF8Char = utf8_getUTF8Char(v20, v163, __src);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_145;
      }

      v64 = v37;
      if (utf8_IsChineseLetter(__src))
      {
        v67 = 1;
        v68 = "ENG";
        v38 = v160;
        v39 = v63;
LABEL_68:
        v29 = v165;
        goto LABEL_69;
      }

      v39 = v63;
      v67 = 0;
      v68 = "NUM";
      if (__src[0] - 48 < 0xA)
      {
        v38 = v160;
        goto LABEL_68;
      }

      v38 = v160;
      v29 = v165;
      if ((__src[0] - 35 > 0x3C || ((1 << (__src[0] - 35)) & 0x1800000004000503) == 0) && __src[0] != 124)
      {
        v67 = (__src[0] & 0xDFu) - 65 >= 0x1A && (__src[0] - 38 > 0x1A || ((1 << (__src[0] - 38)) & 0x4000003) == 0);
        v68 = "ENG";
      }

LABEL_69:
      if (!v183 || v163 != HIDWORD(v180))
      {
        if (v67)
        {
          if (v158)
          {
            v158 = 1;
            v37 = v64;
          }

          else
          {
            v37 = v64;
            v84 = v28 + 56 * v64;
            if (**v84 == 124)
            {
              v158 = 0;
            }

            else
            {
              *(v84 + 16) = v163 - v39;
              v37 = (v64 + 1);
              v158 = 1;
              LODWORD(v39) = v163;
            }
          }

          if (__src[0] == 32)
          {
            v39 = (v39 + 1);
            ++v161;
            ++v162;
            v163 = v39;
LABEL_104:
            v22 = v154;
            goto LABEL_105;
          }

          v85 = v28 + 56 * v37;
          *(v85 + 36) = (*(v85 + 32) & 0xFFFFFFFE) == 2;
          *(v85 + 40) = 0;
          *(v85 + 8) = v39;
          *(v85 + 12) = v39;
          v86 = v39;
          LODWORD(v64) = v37;
          v76 = utf8_determineUTF8CharLength(v20[v39]);
          *(v85 + 16) = v76;
          v164 = *(v159 + 8);
          v87 = cstdlib_strlen(__src);
          v88 = heap_Calloc(v164, 1, v87 + 1);
          *v85 = v88;
          if (!v88)
          {
LABEL_228:
            log_OutPublic(*(v159 + 32), "FE_NNWS", 75000, 0, v72, v73, v74, v75, v148);
            goto LABEL_222;
          }

          cstdlib_strcpy(v88, __src);
          v77 = *(v85 + 16);
          v70 = (v77 + v86);
          v64 = (v64 + 1);
          v163 = v70;
LABEL_102:
          v28 = v155;
          v38 = v160;
          v39 = v70;
          v29 = v165;
        }

        else
        {
          if (v158)
          {
            v69 = v28 + 56 * v64;
            *(v69 + 8) = v39;
            *(v69 + 12) = v39;
            *(v69 + 16) = 1;
            v70 = v39;
            v71 = heap_Calloc(*(v159 + 8), 1, 4);
            *v69 = v71;
            if (!v71)
            {
              goto LABEL_228;
            }

            cstdlib_strcpy(v71, v68);
            v158 = 0;
            v163 = v70 + 1;
            v76 = 1;
            v77 = 1;
            goto LABEL_102;
          }

          v158 = 0;
          ++v163;
          v76 = 1;
          v77 = 1;
        }

        v161 += v76;
        v162 += v77;
        v37 = v64;
        goto LABEL_104;
      }

      if (v158)
      {
        LODWORD(v37) = v64;
      }

      else
      {
        *(v28 + 56 * v64 + 16) = v163 - v39;
        LODWORD(v37) = v64 + 1;
        LODWORD(v39) = v163;
      }

      v78 = v28 + 56 * v37;
      v22 = v154;
      if (v150)
      {
        *(v78 + 32) = 5;
        if (v37)
        {
          *(v28 + 56 * (v37 - 1) + 36) = 0x100000001;
        }
      }

      else
      {
        *(v78 + 32) = 3;
      }

      v79 = v28 + 56 * v37;
      *(v79 + 8) = v39;
      *(v79 + 12) = v39;
      *(v79 + 20) = v185;
      *(v79 + 16) = v180 - v163;
      *(v79 + 36) = 1;
      v80 = v39;
      v81 = heap_Calloc(*(v159 + 8), 1, 4);
      *v79 = v81;
      if (!v81)
      {
        goto LABEL_223;
      }

      cstdlib_strcpy(v81, "NUM");
      v82 = *(v79 + 16);
      v162 += v82;
      v38 = v160;
      v161 += v82;
      v83 = (v82 + v80);
      v37 = (v37 + 1);
      v157 = 1;
      v158 = 1;
      v163 = v83;
      v28 = v155;
      v39 = v83;
      v29 = v165;
LABEL_105:
      if (v37 >= v22)
      {
        goto LABEL_109;
      }
    }

    v38 = v160;
    v39 = v63;
    v29 = v165;
LABEL_109:
    if (!v158)
    {
      *(v28 + 56 * v37 + 16) = v163 - v39;
      v37 = (v37 + 1);
      v39 = v163;
    }

LABEL_111:
    v40 = v152;
    v36 = v153;
    v41 = v151;
    if (v37)
    {
      *(v28 + 56 * (v37 - 1) + 36) = 0x100000001;
    }

LABEL_113:
    ++v36;
    v35 = HIWORD(v183);
    ++v41;
    v40 += 32;
  }

  while (v36 < HIWORD(v183));
LABEL_148:
  LODWORD(v64) = v37;
  v169 = v37;
  v11 = (*(v29 + 104))(a3, a4, 3, v149, &v182);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_221:
    v5 = v11;
    goto LABEL_222;
  }

  v97 = v182;
  if (v182)
  {
    while (1)
    {
      v178 = 0;
      v177 = 0;
      v33 = (*(v29 + 168))(a3, a4, v97, 0, 1, &v178, &v177);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_257;
      }

      if (v178 == 5)
      {
        v33 = (*(v29 + 168))(a3, a4, v182, 1, 1, &v180 + 4, &v177);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v33 = (*(v29 + 168))(a3, a4, v182, 2, 1, &v180, &v177);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        v11 = (*(v29 + 176))(a3, a4, v182, 4, &v181, &v177);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_221;
        }

        if (!cstdlib_strcmp(v181, "phon"))
        {
          break;
        }
      }

      v11 = (*(v29 + 120))(a3, a4, v182, &v182);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_258;
      }

      v97 = v182;
      if (!v182)
      {
        goto LABEL_158;
      }
    }

    v98 = 1;
    if (!v64)
    {
      goto LABEL_230;
    }
  }

  else
  {
LABEL_158:
    v98 = 0;
    if (!v64)
    {
LABEL_230:
      v129 = 0;
      v169 = 0;
LABEL_231:
      v33 = fe_nnws_writeLDB_v2(a1, a3, a4, v176, v155, v129, __s);
      if ((v33 & 0x80000000) != 0)
      {
LABEL_257:
        v11 = v33;
      }

      else
      {
        v89 = v171;
        v130 = fe_nnws_adjustTokenRecordBND(v155, v129, v171, v176, a3, a4, a1);
        if ((v130 & 0x80000000) != 0)
        {
          goto LABEL_251;
        }

        v131 = *(a1[6] + 160);
        v132 = v176;
        v133 = cstdlib_strlen(v89);
        v11 = v131(a3, a4, v132, 0, (v133 + 1), v89, &v175);
        if ((v11 & 0x80000000) == 0)
        {
          log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, v89, v134, v135, v136, 0);
        }
      }

LABEL_258:
      v12 = 1;
      goto LABEL_118;
    }
  }

  v99 = 0;
  while (2)
  {
    if (v98 == 1)
    {
      v100 = (v155 + 56 * v99);
      v101 = v100[3];
      v102 = v180;
      if (v101 < HIDWORD(v180))
      {
        v103 = v155;
        goto LABEL_164;
      }

      v103 = v155;
      if (v100[4] + v101 <= v180)
      {
        v98 = 1;
        v100[11] = 1;
        goto LABEL_182;
      }
    }

    else
    {
      v103 = v155;
      v101 = *(v155 + 56 * v99 + 12);
      v102 = v180;
    }

LABEL_164:
    v104 = v103 + 56 * v99;
    if (*(v104 + 16) + v101 > v102 && v182 != 0)
    {
      while (1)
      {
        v106 = (*(v29 + 120))(a3, a4);
        v11 = v106;
        if ((v106 & 0x80000000) != 0)
        {
          goto LABEL_258;
        }

        if (!v182)
        {
          goto LABEL_184;
        }

        v178 = 0;
        v177 = 0;
        v33 = (*(v29 + 168))(a3, a4, v182, 0, 1, &v178, &v177);
        if ((v33 & 0x80000000) != 0)
        {
          goto LABEL_257;
        }

        if (v178 == 5)
        {
          v33 = (*(v29 + 168))(a3, a4, v182, 1, 1, &v180 + 4, &v177);
          if ((v33 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          v33 = (*(v29 + 168))(a3, a4, v182, 2, 1, &v180, &v177);
          if ((v33 & 0x80000000) != 0)
          {
            goto LABEL_257;
          }

          v11 = (*(v29 + 176))(a3, a4, v182, 4, &v181, &v177);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_221;
          }

          if (!cstdlib_strcmp(v181, "phon"))
          {
            v98 = 1;
            goto LABEL_184;
          }

          v98 = 0;
        }
      }
    }

    *(v104 + 44) = 0;
LABEL_182:
    ++v99;
LABEL_184:
    if (v99 < v64)
    {
      continue;
    }

    break;
  }

  v169 = v64;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_258;
  }

  v33 = (*(a1[16] + 40))(a1[19], a1[20], &v173);
  if ((v33 & 0x80000000) != 0)
  {
    goto LABEL_257;
  }

  v111 = *(a1 + 24);
  if (v111 != *(a1 + 25) + v173)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v107, v108, v109, v110, v148);
    v11 = 2588942361;
    goto LABEL_258;
  }

  v112 = *(a1 + 50) ? v64 + 2 : v64;
  v113 = heap_Alloc(*(*a1 + 8), 4 * (v111 * v112));
  v167 = v113;
  if (!v113)
  {
LABEL_213:
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v24, v25, v26, v27, v148);
    v12 = 1;
    goto LABEL_214;
  }

  v114 = v113;
  if (*(a1 + 50))
  {
    *v113 = 1120534528;
    v114 = &v113[v173];
  }

  v115 = 0;
  v116 = 0;
  do
  {
    if (*(a1 + 48))
    {
      v117 = (a1[16] + 64);
    }

    else
    {
      v118 = a1[16];
      if (*(a1 + 50))
      {
        v117 = (v118 + 72);
      }

      else
      {
        v117 = (v118 + 56);
      }
    }

    v11 = (*v117)(a1[19], a1[20], v168[v115], v114);
    if ((v11 & 0x1FFF) == 0x14)
    {
      log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "No embedding vector for character %s . Fall back!", v120, v121, v122, v168[v115]);
      if (*(a1 + 48))
      {
        v123 = (a1[16] + 64);
      }

      else
      {
        v124 = a1[16];
        if (*(a1 + 50))
        {
          v123 = (v124 + 72);
        }

        else
        {
          v123 = (v124 + 56);
        }
      }

      v11 = (*v123)(a1[19], a1[20], a1[14], v114);
    }

    v125 = &v114[v173];
    if (*(a1 + 48) || *(a1 + 50))
    {
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_258;
      }
    }

    else
    {
      fe_nnws_dynamic_feat(a1, v168, v169, v116, v125);
    }

    v114 = (v125 + 4 * *(a1 + 25));
    ++v116;
    v126 = v169;
    v115 += 7;
  }

  while (v116 < v169);
  if (*(a1 + 50))
  {
    *v114 = 1120665600;
    v137 = a1[10];
    v138 = (v126 + 2);
  }

  else
  {
    v137 = a1[10];
    v138 = v169;
  }

  v11 = fi_predict(v137, &v167, v138, &v170, v119, v120, v121, v122);
  if ((v11 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_NNWS", 5, 0, "FI Word Segmentation Prediction Failed", v139, v140, v141, 0);
    goto LABEL_258;
  }

  if (*(a1 + 50))
  {
    ++v170;
  }

  if ((paramc_ParamGetInt(*(*a1 + 40), "nnwsAddonEnable", &v166) & 0x80000000) != 0)
  {
    v142 = *(a1 + 49);
  }

  else
  {
    v142 = v166;
    *(a1 + 49) = v166;
  }

  if (v142 < 1 || (v89 = v171, v130 = fe_nnws_addon_lookup(a1, v168, v126, v171, &v170, a1[15], v142), (v130 & 0x80000000) == 0))
  {
    v143 = *a1;
    v155 = v168;
    v144 = a1[15];
    if (*(a1 + 50))
    {
      fe_nnws_adjustBMES_Edge(v143, v126, v168, v9, v144, &v170);
    }

    else
    {
      fe_nnws_adjustBMES(v143, v126, v168, v9, v144, &v170);
    }

    v33 = fe_nnws_IGTreeProcess(a1, v126, a1[15], v155, &v170, v145, v146, v147);
    if ((v33 & 0x80000000) == 0)
    {
      fe_nnws_retag_word_under_phon(&v170, &v168, &v169, a1[15]);
      v33 = fe_nnws_group(*a1, v170, &v168, &v169, &v171);
      if ((v33 & 0x80000000) == 0)
      {
        v129 = v169;
        goto LABEL_231;
      }
    }

    goto LABEL_257;
  }

LABEL_251:
  v11 = v130;
  v12 = 1;
  if (v89)
  {
    goto LABEL_119;
  }

LABEL_120:
  v90 = v168;
  if (v168)
  {
    v91 = v169;
    if (v169)
    {
      v92 = v168;
      do
      {
        if (*v92)
        {
          heap_Free(*(*a1 + 8), *v92);
          *v92 = 0;
        }

        v92 += 7;
        --v91;
      }

      while (v91);
    }

    heap_Free(*(*a1 + 8), v90);
  }

  v93 = v12 ^ 1;
  if (v11 < 0)
  {
    v93 = 1;
  }

  if ((v93 & 1) == 0)
  {
    LODWORD(v184) = 0;
    LODWORD(v181) = 0;
    LODWORD(v179) = 0;
    *__src = 0;
    LOWORD(v185) = 0;
    v11 = (*(a1[6] + 104))(a3, a4, 3, v176, __src);
    if ((v11 & 0x80000000) == 0)
    {
      while (*__src)
      {
        v94 = (*(a1[6] + 168))(a3, a4, *__src, 0, 1, &v184, &v185);
        if ((v94 & 0x80000000) != 0)
        {
          return v94;
        }

        v94 = (*(a1[6] + 168))(a3, a4, *__src, 1, 1, &v181, &v185);
        if ((v94 & 0x80000000) != 0)
        {
          return v94;
        }

        v94 = (*(a1[6] + 168))(a3, a4, *__src, 2, 1, &v179, &v185);
        if ((v94 & 0x80000000) != 0)
        {
          return v94;
        }

        if ((v184 - 7) >= 0xFFFFFFFD)
        {
          v95 = 0;
        }

        else
        {
          v95 = *__src;
        }

        v11 = (*(a1[6] + 120))(a3, a4);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        if (v95)
        {
          v11 = (*(a1[6] + 192))(a3, a4, v95);
        }
      }
    }
  }

  return v11;
}

uint64_t fe_nnws_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62346, 208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2588942344;
  }
}

uint64_t fe_nnws_loadCfg(uint64_t a1)
{
  memset(__c, 0, sizeof(__c));
  *(a1 + 192) = 0;
  if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_static_feat", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
  {
    v2 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v2)
    {
      *v2 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "yes"))
    {
      *(a1 + 192) = 1;
    }
  }

  v3 = 2588943364;
  *&__c[1] = 0;
  if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_null_fea", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
  {
    *(a1 + 112) = 0;
    v4 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
    }

    v5 = *(*a1 + 8);
    v6 = cstdlib_strlen(**&__c[3]);
    v7 = heap_Alloc(v5, v6 + 1);
    *(a1 + 112) = v7;
    if (v7)
    {
      v12 = v7;
      v13 = **&__c[3];
      v14 = cstdlib_strlen(**&__c[3]);
      cstdlib_strncpy(v12, v13, v14);
      v15 = *(a1 + 112);
      *(v15 + cstdlib_strlen(**&__c[3])) = 0;
      *&__c[1] = 0;
      if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_indim", &__c[3], &__c[1], __c) & 0x80000000) == 0)
      {
        if (*&__c[1])
        {
          *(a1 + 96) = 0;
          *(a1 + 96) = LH_atou(**&__c[3]);
          *&__c[1] = 0;
          if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_nn_ddim", &__c[3], &__c[1], __c) & 0x80000000) == 0)
          {
            if (*&__c[1])
            {
              *(a1 + 100) = 0;
              *(a1 + 100) = LH_atou(**&__c[3]);
              *&__c[1] = 0;
              *(a1 + 196) = 0;
              if (((*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_force_ws", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
              {
                *(a1 + 196) = LH_atou(**&__c[3]);
              }

              *&__c[1] = 0;
              *(a1 + 200) = 0;
              v16 = (*(*(a1 + 56) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nnws_use_albert", &__c[3], &__c[1], __c);
              v3 = 0;
              if ((v16 & 0x80000000) == 0 && *&__c[1])
              {
                v17 = v16;
                v18 = cstdlib_strchr(**&__c[3], __c[0]);
                if (v18)
                {
                  *v18 = 0;
                }

                if (!cstdlib_strcmp(**&__c[3], "yes"))
                {
                  *(a1 + 200) = 1;
                }

                return v17;
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v8, v9, v10, v11, v20);
      return 2588942346;
    }
  }

  return v3;
}

uint64_t fe_nnws_CreateBrokerString(uint64_t a1, _BYTE *a2, const char *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = 0;
  __s2 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__s1 = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, a3);
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v7);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t fe_nnws_tagInit(uint64_t a1, uint64_t *a2)
{
  strcpy(v21, "SBME");
  v8 = heap_Calloc(*(a1 + 8), 4, 8);
  if (v8)
  {
    v9 = 0;
    v10 = v21;
    while (1)
    {
      v11 = heap_Calloc(*(a1 + 8), 2, 1);
      *(v8 + v9) = v11;
      if (!v11)
      {
        break;
      }

      cstdlib_strncpy(v11, v10, 1uLL);
      v9 += 8;
      ++v10;
      if (v9 == 32)
      {
        v16 = 0;
        goto LABEL_12;
      }
    }

    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0, v12, v13, v14, v15, v20);
    for (i = 0; i != 32; i += 8)
    {
      v18 = *(v8 + i);
      if (v18)
      {
        heap_Free(*(a1 + 8), v18);
      }
    }

    v16 = 2588942346;
    heap_Free(*(a1 + 8), v8);
    v8 = 0;
  }

  else
  {
    v16 = 2588942346;
    log_OutPublic(*(a1 + 32), "FE_NNWS", 75000, 0, v4, v5, v6, v7, v20);
  }

LABEL_12:
  *a2 = v8;
  return v16;
}

uint64_t fe_nnws_tryLoadingIGTree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v27, 0, sizeof(v27));
  *v26 = 0;
  *a4 = 0;
  BrokerString = fe_nnws_CreateBrokerString(a3, v27, "nnwsigrules_");
  if ((BrokerString & 0x80000000) != 0 || (BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v27, "IGTR", 1031, v26), (BrokerString & 0x80000000) != 0))
  {
    v21 = BrokerString;
  }

  else
  {
    v16 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v16;
    if (v16)
    {
      v21 = igtree_Init(a1, a2, *v26, v16);
      ssftriff_reader_CloseChunk(*v26);
      if ((v21 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v26);
        v21 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_NNWS", 37000, 0, v17, v18, v19, v20, v25);
      v21 = 2588942346;
    }
  }

  if (*v26)
  {
    v22 = ssftriff_reader_ObjClose(*v26, v9, v10, v11, v12, v13, v14, v15);
    if (v22 >= 0 || v21 <= -1)
    {
      return v21;
    }

    else
    {
      return v22;
    }
  }

  return v21;
}

void *fe_nnws_dynamic_feat(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v6 = a4;
  v70 = *MEMORY[0x277D85DE8];
  v69 = 0;
  *__s1 = 0u;
  v68 = 0u;
  v63 = 0;
  v64 = 0;
  v66 = 0;
  v65 = 0;
  v10 = (a2 + 56 * a4);
  result = cstdlib_strcmp(*v10, "NUM");
  if (result && (result = cstdlib_strcmp(*v10, "ENG"), result))
  {
    v61 = a1;
    v12 = (a2 + 56 * v6 - 56);
    v13 = 8;
    v14 = 1;
    do
    {
      if (v14 < v6)
      {
        result = cstdlib_strcmp(*v12, "NUM");
        if (result)
        {
          result = cstdlib_strcmp(*v12, "ENG");
          if (result)
          {
            *(&v63 + v13) = 1;
          }
        }
      }

      ++v14;
      v13 -= 4;
      v12 -= 7;
    }

    while (v13 != -4);
    v15 = v6 + 1;
    v16 = (a2 + 56 * v6 + 56);
    for (i = 16; i != 28; i += 4)
    {
      if (v15 < a3)
      {
        result = cstdlib_strcmp(*v16, "NUM");
        if (result)
        {
          result = cstdlib_strcmp(*v16, "ENG");
          if (result)
          {
            *(&v63 + i) = 1;
          }
        }
      }

      ++v15;
      v16 += 7;
    }

    v18 = v64;
    if (v64 == 1)
    {
      v20 = a5;
      v19 = v61;
      if (v6)
      {
        v21 = v6 - 1;
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v21++));
        }

        while (v6 >= v21);
      }

      v22 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v23 = 0.0;
      if (v22 >= 0)
      {
        v23 = 1.0;
      }

      *a5 = v23;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      v20 = a5;
      v19 = v61;
      *a5 = 0;
    }

    v24 = v65;
    if (v65 == 1)
    {
      v25 = v6;
      do
      {
        cstdlib_strcat(__s1, *(a2 + 56 * v25++));
      }

      while (v6 + 2 > v25);
      v26 = (*(v19[16] + 56))(v19[21], v19[22], __s1, v62);
      v27 = 0.0;
      if (v26 >= 0)
      {
        v27 = 1.0;
      }

      *(v20 + 4) = v27;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 4) = 0;
    }

    v28 = v18 == 1 && HIDWORD(v63) == 1;
    v29 = v28;
    if (v28)
    {
      v30 = v6 - 2;
      if (v6 >= 2)
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v30++));
        }

        while (v6 >= v30);
      }

      v31 = (*(v19[16] + 56))(v19[21], v19[22], __s1, v62);
      v32 = 0.0;
      if (v31 >= 0)
      {
        v32 = 1.0;
      }

      *(v20 + 8) = v32;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 8) = 0;
    }

    v33 = v18 == 1 && v24 == 1;
    v34 = v33;
    if (v33)
    {
      v35 = v6 - 1;
      if (v6 + 2 > (v6 - 1))
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v35++));
        }

        while (v6 + 2 > v35);
      }

      v36 = (*(v19[16] + 56))(v19[21], v19[22], __s1, v62);
      v37 = 0.0;
      if (v36 >= 0)
      {
        v37 = 1.0;
      }

      *(v20 + 12) = v37;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 12) = 0;
    }

    v38 = HIDWORD(v65);
    v39 = v24 == 1 && HIDWORD(v65) == 1;
    v40 = v39;
    if (v39)
    {
      v41 = v6;
      do
      {
        cstdlib_strcat(__s1, *(a2 + 56 * v41++));
      }

      while (v6 + 3 > v41);
      v42 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v43 = 0.0;
      if (v42 >= 0)
      {
        v43 = 1.0;
      }

      v20 = a5;
      *(a5 + 16) = v43;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 16) = 0;
    }

    if (v63 == 1)
    {
      v44 = v29;
    }

    else
    {
      v44 = 0;
    }

    if (v44)
    {
      v45 = v6 - 3;
      if (v6 >= 3)
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v45++));
        }

        while (v6 >= v45);
      }

      v46 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v47 = 0.0;
      if (v46 >= 0)
      {
        v47 = 1.0;
      }

      *(v20 + 20) = v47;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 20) = 0;
    }

    if (v24 == 1)
    {
      v48 = v29;
    }

    else
    {
      v48 = 0;
    }

    if (v48)
    {
      v49 = v6 - 2;
      if (v6 + 2 > (v6 - 2))
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v49++));
        }

        while (v6 + 2 > v49);
      }

      v50 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v51 = 0.0;
      if (v50 >= 0)
      {
        v51 = 1.0;
      }

      *(v20 + 24) = v51;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 24) = 0;
    }

    if (v38 == 1)
    {
      v52 = v34;
    }

    else
    {
      v52 = 0;
    }

    if (v52)
    {
      v53 = v6 - 1;
      v54 = v61;
      if (v6 + 3 > (v6 - 1))
      {
        do
        {
          cstdlib_strcat(__s1, *(a2 + 56 * v53++));
        }

        while (v6 + 3 > v53);
      }

      v55 = (*(v61[16] + 56))(v61[21], v61[22], __s1, v62);
      v56 = 0.0;
      if (v55 >= 0)
      {
        v56 = 1.0;
      }

      *(v20 + 28) = v56;
      result = cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 28) = 0;
      v54 = v61;
    }

    if (v66 == 1)
    {
      v57 = v40;
    }

    else
    {
      v57 = 0;
    }

    if (v57)
    {
      v58 = v6 + 4;
      do
      {
        cstdlib_strcat(__s1, *(a2 + 56 * v6++));
      }

      while (v58 > v6);
      v59 = (*(v54[16] + 56))(v54[21], v54[22], __s1, v62);
      v60 = 0.0;
      if (v59 >= 0)
      {
        v60 = 1.0;
      }

      *(v20 + 32) = v60;
      return cstdlib_memset(__s1, 0, 0x21uLL);
    }

    else
    {
      *(v20 + 32) = 0;
    }
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t fe_nnws_addon_lookup(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, void *a6, unsigned __int16 a7)
{
  v11 = *a5;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = a7;
  v43 = a7 + 1;
  v12 = heap_Calloc(*(*a1 + 8), 1, v43);
  if (v12)
  {
    v17 = v12;
    if (a3)
    {
      v39 = v11;
      v40 = a6;
      v18 = 0;
      v41 = a6 + 3;
      v19 = 1;
      while (1)
      {
        v20 = 0;
        v21 = *(a2 + 56 * v18 + 12);
        LODWORD(v22) = v18;
        while (1)
        {
          v23 = a2 + 56 * v22;
          if (!cstdlib_strcmp(*v23, "NUM"))
          {
            break;
          }

          if (!cstdlib_strcmp(*v23, "ENG"))
          {
            break;
          }

          v24 = *(v23 + 16) + v20;
          if (v24 > v44)
          {
            break;
          }

          LODWORD(v22) = v22 + 1;
          v20 = v24;
          if (v22 >= a3)
          {
            goto LABEL_11;
          }
        }

        v24 = v20;
LABEL_11:
        if (v18 >= v22)
        {
          v17[v24] = 0;
        }

        else
        {
          cstdlib_memcpy(v17, (a4 + v21), v24 + 1);
          v17[v24] = 0;
          if (v24)
          {
            v25 = (a2 - 40 + 56 * v22);
            v22 = v22;
            v26 = v22 - v18 - 3;
            while (1)
            {
              cstdlib_memset(&v17[v24], 0, v43 - v24);
              v17[v24] = 0;
              v47 = 0;
              v19 = (*(a1[7] + 232))(a1[8], a1[9], "force_ws", v17, &v46, &v47, &v45, 0);
              if ((v19 & 0x80000000) != 0)
              {
                goto LABEL_45;
              }

              if (v47)
              {
                break;
              }

              if (--v22 > v18)
              {
                v27 = *v25;
                v25 -= 14;
                --v26;
                v24 -= v27;
                if (v24)
                {
                  continue;
                }
              }

              goto LABEL_20;
            }

            if (v18)
            {
              v28 = **(v39 + 8 * (v18 - 1));
              v29 = v40;
              if (v28 == 66)
              {
                goto LABEL_29;
              }

              if (v28 == 77)
              {
                v29 = v41;
LABEL_29:
                *(v39 + 8 * (v18 - 1)) = *v29;
              }
            }

            v30 = v40[1];
            *(v39 + 8 * v18) = v30;
            if (v22 < a3)
            {
              v31 = **(v39 + 8 * v22);
              if (v31 == 77)
              {
                goto LABEL_34;
              }

              if (v31 == 69)
              {
                v30 = *v40;
LABEL_34:
                *(v39 + 8 * v22) = v30;
              }
            }

            *(v39 + 8 * (v22 - 1)) = *v41;
            if (v18 + 1 < v22 - 1)
            {
              v32 = 0;
              v33 = v40[2];
              v34 = vdupq_n_s64(v26);
              v35 = v39 + 8 * (v18 + 1);
              do
              {
                v36 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v32), xmmword_26ECC7980)));
                if (v36.i8[0])
                {
                  *(v35 + 8 * v32) = v33;
                }

                if (v36.i8[4])
                {
                  *(v35 + 8 * v32 + 8) = v33;
                }

                v32 += 2;
              }

              while (((v26 + 2) & 0x1FFFFFFFELL) != v32);
            }

            v19 = 1;
          }
        }

LABEL_20:
        if (v18 == v22)
        {
          v18 = v22 + 1;
        }

        else
        {
          v18 = v22;
        }

        if (v18 >= a3)
        {
          goto LABEL_45;
        }
      }
    }

    v19 = 1;
LABEL_45:
    heap_Free(*(*a1 + 8), v17);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v13, v14, v15, v16, v38);
    return 2588942346;
  }

  return v19;
}

uint64_t fe_nnws_adjustBMES_Edge(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t **a6)
{
  v7 = a2;
  v9 = *a6;
  v24 = *a6;
  if (a2 < 2)
  {
    goto LABEL_26;
  }

  v10 = a2 - 2;
  for (i = v9; ; ++i)
  {
    v12 = *i[1];
    if (v12 <= 0x4C)
    {
      if (v12 != 66)
      {
        if (v12 == 69)
        {
          v13 = **i;
          v14 = a5;
          if (v13 == 83)
          {
            goto LABEL_19;
          }

          v14 = a5;
          if (v13 == 69)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_20;
      }

      v15 = **i;
      v14 = a5 + 2;
      if (v15 == 66)
      {
        goto LABEL_19;
      }

      v14 = a5 + 2;
LABEL_15:
      if (v15 == 77)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (v12 != 77)
    {
      if (v12 != 83)
      {
        goto LABEL_20;
      }

      v15 = **i;
      v14 = a5 + 3;
      if (v15 == 66)
      {
LABEL_19:
        i[1] = *v14;
        goto LABEL_20;
      }

      v14 = a5 + 3;
      goto LABEL_15;
    }

    v16 = **i;
    v14 = a5 + 1;
    if (v16 == 69)
    {
      goto LABEL_19;
    }

    v14 = a5 + 1;
    if (v16 == 83)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (!v10)
    {
      break;
    }

    --v10;
  }

  v17 = a5 + 3;
  if (**i == 77 || (v17 = a5, *i[1] == 66))
  {
    i[1] = *v17;
  }

LABEL_26:
  result = fe_nnws_adjust_ENP_labels(a2, a3, a5, &v24);
  if (a4 == 1 && v7)
  {
    v22 = v7;
    do
    {
      v23 = *v9++;
      result = log_OutText(*(a1 + 32), "FE_NNWS", 5, 0, "[NNWS][adjustBMES_Edge] Predicted Tag: %s", v19, v20, v21, v23);
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t fe_nnws_adjustBMES(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t **a6)
{
  v7 = a2;
  v9 = *a6;
  v22 = *a6;
  if (a2)
  {
    v10 = (v9 + 1);
    for (i = a2; i; --i)
    {
      v12 = **(v10 - 1);
      if (i == 1)
      {
        v13 = a5 + 3;
        if (v12 != 77)
        {
          v13 = a5;
          if (v12 != 66)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_21;
      }

      if (**(v10 - 1) > 0x4Cu)
      {
        if (v12 == 77)
        {
          v15 = **v10;
          v13 = a5 + 3;
          if (v15 == 66)
          {
            goto LABEL_21;
          }

          v13 = a5 + 3;
LABEL_20:
          if (v15 == 83)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v12 == 83)
        {
          v14 = **v10 | 8;
          v13 = a5 + 1;
          goto LABEL_14;
        }
      }

      else
      {
        if (v12 == 66)
        {
          v15 = **v10;
          v13 = a5;
          if (v15 == 66)
          {
            goto LABEL_21;
          }

          v13 = a5;
          goto LABEL_20;
        }

        if (v12 == 69)
        {
          v14 = **v10 | 8;
          v13 = a5 + 2;
LABEL_14:
          if (v14 != 77)
          {
            goto LABEL_22;
          }

LABEL_21:
          *(v10 - 1) = *v13;
        }
      }

LABEL_22:
      ++v10;
    }
  }

  result = fe_nnws_adjust_ENP_labels(a2, a3, a5, &v22);
  if (a4 == 1 && v7)
  {
    v20 = v7;
    do
    {
      v21 = *v9++;
      result = log_OutText(*(a1 + 32), "FE_NNWS", 5, 0, "[NNWS] Predicted Tag: %s", v17, v18, v19, v21);
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t fe_nnws_IGTreeProcess(uint64_t *a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = a1[23];
  __s1 = 0;
  if (!a2 || !v9)
  {
    log_OutText(*(v8 + 32), "FE_NNWS", 5, 0, "IGTree model for NNWS does not exist", a6, a7, a8, v47);
    return 0;
  }

  v13 = heap_Alloc(*(v8 + 8), 8 * *(v9 + 1296) - 8);
  if (!v13)
  {
    v40 = 2588942346;
    log_OutPublic(*(v8 + 32), "FE_NNWS", 750000, 0, v14, v15, v16, v17, v47);
    return v40;
  }

  v18 = v13;
  v52 = a5;
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
        v40 = 2588942346;
        log_OutPublic(*(v8 + 32), "FE_NNWS", 750000, 0, v22, v23, v24, v25, v47);
        goto LABEL_57;
      }

      cstdlib_strcpy(v21, "=");
      ++v20;
      --v19;
    }

    while (v19);
  }

  v26 = 0;
  v50 = a3 + 2;
  v51 = a3;
  v48 = a3 + 3;
  v49 = a3 + 1;
  do
  {
    v27 = *(v9 + 1312);
    v28 = *(v9 + 1296);
    v29 = fe_nnws_setFeature(v8, v27, v28, 0, v18, *(*a5 + 8 * v26));
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v30 = "=";
    if (a2 > v26)
    {
      v30 = *(a4 + 56 * v26);
    }

    v29 = fe_nnws_setFeature(v8, v27, v28, 1, v18, v30);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v31 = "=";
    if (v26 - 1 < a2)
    {
      v31 = *(a4 + 56 * (v26 - 1));
    }

    v29 = fe_nnws_setFeature(v8, v27, v28, 2, v18, v31);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v32 = "=";
    if (v26 - 2 < a2)
    {
      v32 = *(a4 + 56 * (v26 - 2));
    }

    v29 = fe_nnws_setFeature(v8, v27, v28, 3, v18, v32);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v33 = "=";
    if (v26 - 3 < a2)
    {
      v33 = *(a4 + 56 * (v26 - 3));
    }

    v29 = fe_nnws_setFeature(v8, v27, v28, 4, v18, v33);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v34 = "=";
    if (v26 - 4 < a2)
    {
      v34 = *(a4 + 56 * (v26 - 4));
    }

    v29 = fe_nnws_setFeature(v8, v27, v28, 5, v18, v34);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v35 = "=";
    if (v26 + 1 < a2)
    {
      v35 = *(a4 + 56 * (v26 + 1));
    }

    v29 = fe_nnws_setFeature(v8, v27, v28, 6, v18, v35);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v36 = "=";
    if (v26 + 2 < a2)
    {
      v36 = *(a4 + 56 * (v26 + 2));
    }

    v29 = fe_nnws_setFeature(v8, v27, v28, 7, v18, v36);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v37 = "=";
    if (v26 + 3 < a2)
    {
      v37 = *(a4 + 56 * (v26 + 3));
    }

    v29 = fe_nnws_setFeature(v8, v27, v28, 8, v18, v37);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v38 = "=";
    if (v26 + 4 < a2)
    {
      v38 = *(a4 + 56 * (v26 + 4));
    }

    v29 = fe_nnws_setFeature(v8, v27, v28, 9, v18, v38);
    if ((v29 & 0x80000000) != 0)
    {
LABEL_55:
      v40 = v29;
      goto LABEL_57;
    }

    v39 = "=";
    if (v26 < a2)
    {
      v39 = v55;
      LH_itoa(v26 + 1, v55, 0xAu);
    }

    v40 = fe_nnws_setFeature(v8, v27, v28, 10, v18, v39);
    a5 = v52;
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_57;
    }

    igtree_Process(v9, v18, &__s1);
    if (cstdlib_strcmp(__s1, "NOMATCH"))
    {
      v40 = 0;
      v41 = *__s1;
      if (v41 <= 0x4C)
      {
        v42 = v49;
        if (v41 != 66)
        {
          if (v41 != 69)
          {
            goto LABEL_48;
          }

          v42 = v48;
        }

LABEL_47:
        *(*v52 + 8 * v26) = *v42;
        fe_hlp_adjustBMES_basedSingleLabel(a2, v26, v51, v52);
        v40 = 0;
        goto LABEL_48;
      }

      v42 = v50;
      if (v41 == 77)
      {
        goto LABEL_47;
      }

      v42 = v51;
      if (v41 == 83)
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
    v43 = (*(v9 + 1296) - 1);
    v44 = v18;
    do
    {
      v45 = *v44++;
      heap_Free(*(v8 + 8), v45);
      --v43;
    }

    while (v43);
  }

LABEL_57:
  heap_Free(*(v8 + 8), v18);
  return v40;
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
  v71 = cstdlib_strlen(*a5);
  if (!v9)
  {
    v17 = 0;
    v15 = 0;
LABEL_31:
    v47 = v17;
    if (v17 < v9)
    {
      v48 = (v7 + 56 * v17);
      v49 = v9 - v17;
      do
      {
        v50 = *v48;
        v48 += 7;
        heap_Free(*(a1 + 8), v50);
        --v49;
      }

      while (v49);
    }

    *a4 = v47;
    v51 = v15 + v47;
    if (v51 + 1 <= v71)
    {
      v53 = v47;
      if (v47)
      {
LABEL_37:
        v54 = 0;
        v55 = v53;
        v56 = (v7 + 16);
        v57 = v53;
        do
        {
          v58 = v54;
          cstdlib_memcpy(&v8[v54], *(v56 - 2), *v56);
          v8[*v56 + v58] = 32;
          v60 = *v56;
          v56 += 14;
          v59 = v60;
          v54 = v58 + v60 + 1;
          --v57;
        }

        while (v57);
        if (v54)
        {
          v8[v58 + v59] = 0;
        }

        v61 = 0;
        *a5 = v8;
        do
        {
          v62 = v7 + 56 * v61;
          if (*(v62 + 32) == 1)
          {
            v63 = v61;
            if (v61 < v47)
            {
              v64 = (v7 + 88 + 56 * v61);
              do
              {
                *(v64 - 14) = 4;
                ++v63;
                v65 = *v64;
                v64 += 14;
              }

              while (v65 != 2 && v63 < v55);
              v61 = v63;
            }

            *(v7 + 56 * v63 + 8) = *(v62 + 8);
          }

          else
          {
            ++v61;
          }
        }

        while (v61 < v47);
        return 0;
      }
    }

    else
    {
      v52 = heap_Realloc(*(a1 + 8), v8, v51);
      v53 = v47;
      v8 = v52;
      if (!v52)
      {
LABEL_57:
        v67 = 2588942346;
        v68 = *(a1 + 32);
        goto LABEL_60;
      }

      if (v47)
      {
        goto LABEL_37;
      }
    }

    v67 = 0;
    *a5 = v8;
    return v67;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v7 + 32;
  v75 = a2;
  v73 = a1;
  while (1)
  {
    v19 = **(a2 + 8 * v14);
    if (v19 == 66)
    {
      v43 = v7 + 56 * v17;
      *(v43 + 8) = *(v18 - 24);
      *(v43 + 32) = *v18;
      v16 = v14;
      goto LABEL_28;
    }

    if (v19 == 83)
    {
      v74 = v16;
      v38 = v15;
      v39 = *(v18 - 16);
      v40 = v17;
      v41 = v7 + 56 * v17;
      if (cstdlib_strcmp(*v41, "NUM") && cstdlib_strcmp(*v41, "ENG"))
      {
        v42 = *(v18 - 16);
      }

      else
      {
        v42 = *(v18 - 16);
        if (v42 - 4 <= 0xFFFFFFFA)
        {
          v44 = v42 + 1;
          goto LABEL_21;
        }
      }

      v44 = v42 + 1;
      if (*(v41 + 16) >= v42 + 1)
      {
        v45 = *v41;
LABEL_27:
        cstdlib_strncpy(v45, &v8[*(v18 - 20)], v42);
        *(*v41 + *(v18 - 16)) = 0;
        v46 = *(v18 - 12);
        *(v41 + 16) = v39;
        *(v41 + 20) = v46;
        *(v41 + 8) = *(v18 - 24);
        *(v41 + 40) = *(v18 + 8);
        *(v41 + 32) = *v18;
        *(v41 + 48) = *(v18 + 16);
        v15 = v39 + v38;
        v17 = v40 + 1;
        v16 = v74;
        a2 = v75;
        goto LABEL_28;
      }

LABEL_21:
      v45 = heap_Realloc(*(a1 + 8), *v41, v44);
      *v41 = v45;
      if (!v45)
      {
        goto LABEL_57;
      }

      v42 = *(v18 - 16);
      goto LABEL_27;
    }

    if (v19 == 69)
    {
      break;
    }

LABEL_28:
    ++v14;
    v18 += 56;
    if (v9 == v14)
    {
      goto LABEL_31;
    }
  }

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

  v25 = a1;
  v26 = v9;
  v27 = v15;
  v28 = v17;
  v29 = v7 + 56 * v17;
  v30 = heap_Realloc(*(v25 + 8), *v29, (v24 + 1));
  *v29 = v30;
  if (v30)
  {
    cstdlib_strncpy(v30, &v8[*v21], v24);
    *(*v29 + v24) = 0;
    *(v29 + 16) = v24;
    *(v29 + 36) = *(v18 + 4);
    v35 = *v18;
    if (*(v29 + 32) == 1 && v35 == 2)
    {
      v35 = 3;
      v37 = v28;
    }

    else
    {
      v37 = v28;
      if ((v35 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_25;
      }
    }

    *(v29 + 32) = v35;
    *(v29 + 20) = *(v18 - 12);
LABEL_25:
    v15 = v24 + v27;
    v17 = v37 + 1;
    v16 = v14 + 1;
    v9 = v26;
    a1 = v73;
    a2 = v75;
    goto LABEL_28;
  }

  v67 = 2588942346;
  v68 = *(v73 + 32);
LABEL_60:
  log_OutPublic(v68, "FE_NNWS", 75000, 0, v31, v32, v33, v34, a5);
  return v67;
}

uint64_t fe_nnws_writeLDB_v2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v10 = a4;
  v145 = 0;
  v144 = 0;
  v13 = (*(a1[6] + 176))(a2, a3, a4, 1, &v145, &v144);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v141 = a3;
  v142 = v10;
  reorder_pMrk(&v145, v144, 40);
  reorder_pMrk(&v145, v144, 1);
  if (a6)
  {
    v14 = heap_Calloc(*(*a1 + 8), a6, 32);
    v19 = *a1;
    if (!v14)
    {
      v26 = 2588942346;
      log_OutPublic(*(v19 + 32), "FE_NNWS", 75000, 0, v15, v16, v17, v18, v140);
      return v26;
    }

    v20 = v14;
    v25 = heap_Calloc(*(v19 + 8), a6, 4);
    if (!v25)
    {
      v26 = 2588942346;
      log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v21, v22, v23, v24, v140);
      v27 = 0;
LABEL_182:
      heap_Free(*(*a1 + 8), v20);
      goto LABEL_183;
    }
  }

  else
  {
    v20 = 0;
    v25 = 0;
  }

  v28 = v144;
  v29 = v145;
  if (v144)
  {
    v30 = 0;
    v31 = v145;
    while (1)
    {
      v33 = *v31;
      v31 += 2;
      v32 = v33;
      if (v33 == 41 || v32 == 1)
      {
        break;
      }

      if (v144 == ++v30)
      {
        LODWORD(v30) = -1;
        break;
      }
    }

    v35 = 0;
    v36 = v30 & ~(v30 >> 31);
    v37 = v145;
    while (1)
    {
      v38 = *v37;
      v37 += 2;
      if (v38 == 40)
      {
        break;
      }

      if (v144 == ++v35)
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
      v43 = *(v145 + 3);
      v44 = &v145[2 * v42];
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
          cstdlib_memmove(v61 - 8, v61, 32 * (v62 + v63--));
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
    LOWORD(v144) = v63;
    if (v63)
    {
      v69 = 0;
      v28 = 0;
      v70 = v145;
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
    v81 = v144;
    if (v144)
    {
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = v145;
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
        v126 = *v125;
        if (*v125 != 51)
        {
          goto LABEL_162;
        }

        v127 = cstdlib_strcmp(v125[3], "R_CLASS");
        if (v76 - v123 < 2 || v127)
        {
          break;
        }

        LODWORD(v124) = v123++;
LABEL_177:
        if (++v123 >= v76)
        {
          goto LABEL_178;
        }
      }

      v126 = *v125;
LABEL_162:
      if (v126 != 57 || v124 == -1)
      {
        goto LABEL_177;
      }

      v129 = v123 - 1;
      do
      {
        v130 = v129;
        if (!v129)
        {
          break;
        }

        v131 = v27[8 * v129--];
      }

      while (v131 != 1);
      if (v124 >= v130)
      {
        if (!v124)
        {
LABEL_176:
          LODWORD(v124) = -1;
          goto LABEL_177;
        }
      }

      else
      {
        v132 = v124;
        v124 = v124 + 1;
        if (v124 < v130)
        {
          LODWORD(v124) = v130;
          v133 = &v27[8 * v132 + 8];
          v134 = ~v132 + v130;
          do
          {
            v136 = *(v133 - 16);
            v146 = *(v133 - 32);
            v135 = v146;
            v147 = v136;
            v137 = *(v133 + 16);
            *(v133 - 32) = *v133;
            *(v133 - 16) = v137;
            *v133 = v135;
            *(v133 + 16) = v136;
            *(v133 - 28) = *(v133 + 4);
            v133 += 32;
            --v134;
          }

          while (v134);
        }
      }

      v27[8 * (v124 - 1) + 3] = v27[8 * v124 + 3];
      goto LABEL_176;
    }

LABEL_178:
    v26 = (*(a1[6] + 160))(a2, v141, v142, 1, v76, v27, &v144 + 2);
    if ((v26 & 0x80000000) == 0)
    {
      v138 = v27[4] + v27[3];
      *(a1 + 26) = v27[2] + v27[1];
      *(a1 + 27) = v138;
      if (!v20)
      {
        goto LABEL_183;
      }

      goto LABEL_182;
    }
  }

  else
  {
    v26 = 2588942346;
  }

  log_OutPublic(*(*a1 + 32), "FE_NNWS", 75000, 0, v77, v78, v79, v80, v140);
  if (v20)
  {
    goto LABEL_182;
  }

LABEL_183:
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

uint64_t fe_nnws_adjustTokenRecordBND(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  __s1 = 0;
  v41 = 0;
  result = (*(*(a7 + 48) + 176))(a5, a6, a4, 1, &v41, &v42);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a7 + 48) + 104))(a5, a6, 3, a4, &v43 + 2);
    if ((result & 0x80000000) == 0)
    {
      v15 = HIWORD(v43);
      if (HIWORD(v43))
      {
        v16 = 0;
        v17 = 0;
        v18 = a2;
        v36 = (a1 + 48);
        v37 = a1 + 32;
        v39 = a2;
        v38 = a1;
        while (1)
        {
          result = (*(*(a7 + 48) + 168))(a5, a6, v15, 0, 1, &v45 + 4, &v42 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIDWORD(v45) == 5)
          {
            break;
          }

          if (HIDWORD(v45) != 6)
          {
            v31 = HIWORD(v43);
LABEL_55:
            result = (*(*(a7 + 48) + 120))(a5, a6, HIWORD(v43), &v43 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v31)
            {
              result = (*(*(a7 + 48) + 192))(a5, a6, v31);
            }

            goto LABEL_58;
          }

          if (v17 < a2)
          {
            v19 = v17;
            v20 = (v37 + 56 * v17);
            do
            {
              v21 = *v20;
              v20 += 14;
              v22 = (1 << v21) & 0x2C;
              if (v21 <= 5 && v22 != 0)
              {
                v17 = v19;
                goto LABEL_40;
              }

              ++v19;
            }

            while (v18 != v19);
            v17 = v18;
          }

LABEL_40:
          v32 = a1 + 56 * v17;
          v33 = *(v32 + 24);
          v44 = *(v32 + 28);
          LODWORD(v45) = v33;
          ++v17;
          v34 = *(a7 + 48);
          if (v44 > v33)
          {
            result = (*(v34 + 160))(a5, a6, HIWORD(v43), 1, 1, &v45, &v43);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v43), 2, 1, &v44, &v43);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v31 = 0;
            goto LABEL_55;
          }

          result = (*(v34 + 120))(a5, a6, HIWORD(v43), &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_58:
          v15 = HIWORD(v43);
          if (!HIWORD(v43))
          {
            return result;
          }
        }

        result = (*(*(a7 + 48) + 168))(a5, a6, HIWORD(v43), 1, 1, &v45, &v42 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 168))(a5, a6, HIWORD(v43), 2, 1, &v44, &v42 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 176))(a5, a6, HIWORD(v43), 4, &__s1, &v42 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v24 = a3;
        v25 = v44;
        v26 = v45;
        if (v44 < *(v41 + 16) + v45)
        {
          LODWORD(v45) = v45 + v16;
          if (a2)
          {
            v27 = 0;
            v28 = v36;
            while (1)
            {
              if (*(v28 - 2) == 1)
              {
                if (cstdlib_strcmp(__s1, "prompt") || *(v28 - 4) == 5)
                {
                  v25 = v44;
                  if (*v28 != 1)
                  {
                    v29 = *(v28 - 9);
                    goto LABEL_32;
                  }
                }

                else
                {
                  v25 = v44;
                }
              }

              v29 = *(v28 - 9);
              if (v29 >= v26 && *(v28 - 8) + v29 < v25)
              {
                ++v16;
                goto LABEL_37;
              }

LABEL_32:
              v30 = *(v28 - 8) + v29;
              if (v30 >= v25)
              {
                if (*v28 != 1)
                {
LABEL_47:
                  v25 += v16;
                  v44 = v25;
                  a2 = v39;
                  goto LABEL_48;
                }

                v25 += ++v16;
                v44 = v25;
              }

              else if (v30 == *(v41 + 16) + *(v41 + 12))
              {
                goto LABEL_47;
              }

LABEL_37:
              ++v27;
              v28 += 14;
              if (v18 == v27)
              {
                goto LABEL_49;
              }
            }
          }

          LODWORD(v27) = 0;
LABEL_48:
          if (v27 == a2)
          {
LABEL_49:
            v44 = v25 + v16;
          }
        }

        a3 = v24;
        v35 = cstdlib_strlen(v24);
        if (v44 > v35)
        {
          v44 = v35;
        }

        result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v43), 1, 1, &v45, &v43);
        a1 = v38;
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v43), 2, 1, &v44, &v43);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v31 = 0;
        a2 = v39;
        goto LABEL_55;
      }
    }
  }

  return result;
}

uint64_t fe_nnws_adjust_ENP_labels(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (result)
  {
    v7 = result;
    v22 = a3 + 1;
    v23 = a3 + 3;
    v8 = result;
    v9 = -result;
    v10 = *a4;
    v11 = 1;
    do
    {
      if (!cstdlib_strcmp(*a2, "ENG") || (result = cstdlib_strcmp(*a2, "NUM"), !result))
      {
        *v10 = *a3;
        result = fe_hlp_adjustBMES_basedSingleLabel(v7, v11 - 1, a3, a4);
        goto LABEL_13;
      }

      if (v11 != 1 && !*(a2 - 16) && *(a2 + 16) == 1)
      {
        result = cstdlib_strcmp(*a2, "/");
        if (result)
        {
          *v10 = a3[3];
          result = fe_hlp_adjustBMES_basedSingleLabel(v7, v11 - 1, a3, a4);
          v12 = *(a2 - 24);
          if (v12 == 3)
          {
            *(a2 - 24) = 1;
            goto LABEL_37;
          }

          if (v12 == 2)
          {
            *(a2 - 24) = 0;
LABEL_37:
            *(a2 + 32) = 2;
            *(a2 + 20) = *(a2 - 36) + 1;
            goto LABEL_13;
          }

          goto LABEL_13;
        }
      }

      if (!*(a2 + 36))
      {
        v13 = *(a2 + 32);
        if ((v13 - 2) >= 2)
        {
          if (v13 != 1)
          {
            goto LABEL_13;
          }

          v18 = **v10;
          v19 = a3;
          if (v18 == 69)
          {
LABEL_29:
            *v10 = *v19;
          }

          else if (v18 == 77)
          {
            v19 = v22;
            goto LABEL_29;
          }

          if (v11 != 1)
          {
            v20 = **(v10 - 1);
            if (v20 == 77)
            {
              v21 = *v23;
              goto LABEL_39;
            }

            if (v20 == 66)
            {
              v21 = *a3;
LABEL_39:
              *(v10 - 1) = v21;
              goto LABEL_13;
            }
          }

          goto LABEL_13;
        }
      }

      v14 = **v10;
      v15 = a3;
      if (v14 != 66)
      {
        if (v14 != 77)
        {
          goto LABEL_21;
        }

        v15 = v23;
      }

      *v10 = *v15;
LABEL_21:
      if (v11 < v8)
      {
        v16 = *v10[1];
        if (v16 == 69)
        {
          v17 = *a3;
          goto LABEL_35;
        }

        if (v16 == 77)
        {
          v17 = *v22;
LABEL_35:
          v10[1] = v17;
        }
      }

LABEL_13:
      ++v11;
      ++v10;
      a2 += 56;
    }

    while (v9 + v11 != 1);
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

  v21 = v6;
  v11 = nnws_g_featureNames[a4];
  v12 = (a3 - 1);
  while (cstdlib_strcmp(*a2, v11))
  {
    ++a5;
    ++a2;
    if (!--v12)
    {
      return 0;
    }
  }

  if (!cstdlib_strcmp(a6, ""))
  {
    v15 = *a5;
    v20 = "=";
LABEL_14:
    cstdlib_strcpy(v15, v20);
    return 0;
  }

  if (cstdlib_strlen(a6) <= 0x40)
  {
    v15 = *a5;
    goto LABEL_13;
  }

  v14 = cstdlib_strlen(a6);
  v15 = heap_Realloc(*(a1 + 8), *a5, v14 + 1);
  if (v15)
  {
    *a5 = v15;
LABEL_13:
    v20 = a6;
    goto LABEL_14;
  }

  log_OutPublic(*(a1 + 32), "FE_NNWS", 37000, 0, v16, v17, v18, v19, v21);
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
  if (__s && cstdlib_strlen(__s) == 3)
  {
    cstdlib_strcpy(a2, __s);
    if (cstdlib_strlen(a2))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        a2[v5] = ssft_tolower(a2[v5]);
        v5 = ++v6;
      }

      while (cstdlib_strlen(a2) > v6);
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
  memset(v234, 0, 12);
  v9 = 2307923978;
  v232 = 0;
  v233 = 0;
  v231 = 0;
  v229 = 0;
  v230 = 0;
  v226 = 0;
  v224 = 0;
  v223 = 0;
  *&__c[3] = 0;
  v222 = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v227 = 0;
  v228 = 0;
  v225 = 0;
  *a5 = 1;
  v10 = (*(a1[10] + 144))(a1[114], a1[115], &v234[1], v234);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[10] + 144))(a1[116], a1[117], v234 + 4, v234);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[9] + 56))(a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[9] + 104))(a3, a4, 1, 0, &v227 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (!LODWORD(v234[1]))
  {
    v22 = v234[0];
    if (v234[0])
    {
      if (HIDWORD(v234[0]))
      {
        v10 = (*(a1[10] + 88))(a1[116], a1[117], &v230, &v228);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v23 = v228;
        if ((v228 & 0x1FFFE0) != 0 && (v228 >> 5))
        {
          v24 = 0;
          v25 = 0;
LABEL_23:
          v26 = &v230[32 * v24++];
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
              if (v24 != (v228 >> 5))
              {
                goto LABEL_23;
              }

              goto LABEL_77;
            }

            ++v24;
          }

          while (v24 - (v228 >> 5) != 1);
          if ((v25 & 1) == 0)
          {
            goto LABEL_79;
          }

LABEL_77:
          v54 = (*(a1[9] + 160))(a3, a4, HIWORD(v227), 1, (v228 >> 5), v230, &v227);
          if ((v54 & 0x80000000) != 0)
          {
            v9 = v54;
            log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30002, 0, v55, v56, v57, v58, v201);
            return v9;
          }

          v23 = v228;
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

        v22 = v234[0];
      }

      if (v22)
      {
        *a5 = 1;
        v224 = 1;
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

    return (*(a1[9] + 160))(a3, a4, HIWORD(v227), 3, 1, &v224, &v227);
  }

  v10 = (*(a1[9] + 160))(a3, a4, HIWORD(v227), 3, 1, &v224, &v227);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[10] + 88))(a1[114], a1[115], &v232, &v231);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = hlp_CopyString(*a1, &v233, v232, 0);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  v12 = a1[10];
  if (v231 == 1)
  {
    v13 = (*(v12 + 96))(a1[114], a1[115], 1);
    if ((v13 & 0x80000000) != 0 || (v13 = (*(a1[10] + 88))(a1[116], a1[117], &v230, &v228), (v13 & 0x80000000) != 0))
    {
      v9 = v13;
LABEL_104:
      v20 = 0;
LABEL_105:
      v21 = 0;
      goto LABEL_106;
    }

    if (!HIDWORD(v234[0]) || (v226 = v228 >> 5, v14 = (*(a1[9] + 160))(a3, a4, HIWORD(v227), 1, v226, v230, &v227), (v14 & 0x80000000) == 0))
    {
      v19 = (*(a1[10] + 96))(a1[116], a1[117], v228);
      v20 = 0;
      v21 = 0;
      v9 = v19 & (v19 >> 31);
      goto LABEL_106;
    }

    v9 = v14;
    v60 = *(*a1 + 32);
    v61 = 30002;
LABEL_103:
    log_OutPublic(v60, "FE_INITLINGDB", v61, 0, v15, v16, v17, v18, v201);
    goto LABEL_104;
  }

  v11 = (*(v12 + 88))(a1[116], a1[117], &v230, &v228);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_73:
    v20 = 0;
    goto LABEL_74;
  }

  v31 = v228;
  v32 = v228 >> 5;
  v226 = v228 >> 5;
  v33 = heap_Alloc(*(*a1 + 8), v228);
  v229 = v33;
  if (!v33)
  {
LABEL_87:
    v60 = *(*a1 + 32);
    v61 = 30000;
    goto LABEL_103;
  }

  cstdlib_memcpy(v33, v230, v228);
  if ((v31 >> 5))
  {
    v34 = 0;
    v35 = 0;
    v36 = 0xFFFF;
    v37 = "normal";
    while (1)
    {
      v38 = v35;
      v39 = &v229[8 * v35];
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
              if (v229[8 * v41] == 34)
              {
                goto LABEL_57;
              }
            }

            v41 = v42;
          }

LABEL_57:
          v43 = &v229[8 * v41];
          if (*(v43 + 3) == *(v39 + 3))
          {
            if ((hlp_ValidatePhoneticTranscription(a1, v37, v43[3]) & 0x80000000) != 0)
            {
              __s1 = v37;
              v44 = v233;
              v45 = cstdlib_strlen(v233);
              v46 = v229;
              v47 = &v229[8 * v38];
              v48 = *(v47 + 2);
              if (v45 >= v48)
              {
                if (v34 >= v41)
                {
                  v51 = v41;
                }

                else
                {
                  v51 = v34;
                }

                if (v34 <= v41)
                {
                  v52 = v41;
                }

                else
                {
                  v52 = v34;
                }

                cstdlib_memcpy(&v44[*(v47 + 3) - v229[3]], v47[3], v48);
                v53 = v226;
                cstdlib_memmove((v46 + 32 * v52), (v46 + 32 * v52 + 32), 32 * (v226 + ~v52));
                cstdlib_memmove((v46 + 32 * v51), (v46 + 32 * v51 + 32), 32 * (~v51 + (v53 - 1)));
                v32 = v53 - 2;
                v226 = v53 - 2;
                v50 = heap_Realloc(*(*a1 + 8), v46, 32 * (v53 - 2));
                if (!v50)
                {
                  goto LABEL_87;
                }
              }

              else
              {
                v49 = v226;
                cstdlib_memmove(v47, v47 + 4, 32 * (v226 + ~v34));
                v32 = v49 - 1;
                v226 = v49 - 1;
                v50 = heap_Realloc(*(*a1 + 8), v46, 32 * (v49 - 1));
                if (!v50)
                {
                  goto LABEL_87;
                }
              }

              v37 = __s1;
              v35 = 0;
              v229 = v50;
              v41 = 0xFFFF;
            }

            else
            {
              v41 = 0xFFFF;
              v32 = v226;
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
  v62 = *(a1[9] + 160);
  v63 = HIWORD(v227);
  v64 = v233;
  v65 = cstdlib_strlen(v233);
  v70 = v62(a3, a4, v63, 0, (v65 + 1), v64, &v227);
  v71 = *(*a1 + 32);
  if ((v70 & 0x80000000) != 0)
  {
    log_OutPublic(v71, "FE_INITLINGDB", 30002, 0, v66, v67, v68, v69, v201);
    v20 = 0;
    v21 = 0;
    v9 = v70;
    goto LABEL_106;
  }

  log_OutText(v71, "FE_INITLINGDB", 5, 0, "Initializing LINGDB with %s", v67, v68, v69, v64);
  v72 = heap_Alloc(*(*a1 + 8), 4 * v32);
  v20 = v72;
  if (!v72)
  {
    log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0, v73, v74, v75, v76, v202);
    goto LABEL_105;
  }

  v77 = v229;
  if (v32)
  {
    v78 = v229 + 4;
    v79 = v32;
    do
    {
      if (*(v78 - 4) == 1)
      {
        *v78 = 0;
      }

      v78 += 8;
      --v79;
    }

    while (v79);
    v80 = (v77 + 12);
    if (v32)
    {
      v81 = 0;
      v82 = (v77 + 12);
      while (1)
      {
        v83 = *v82;
        v82 += 8;
        if (v83 != *(v77 + 12))
        {
          break;
        }

        if (v32 == ++v81)
        {
          LOWORD(v81) = v32;
          break;
        }
      }
    }

    else
    {
      LOWORD(v81) = 0;
    }
  }

  else
  {
    LOWORD(v81) = 0;
    v80 = v229 + 3;
  }

  v84 = v81;
  v85 = v77 + 32 * v81;
  if (v81 == v32)
  {
    marker_sort(v85, v32 - v81);
  }

  else
  {
    v86 = 0;
    v87 = (v32 - v84);
    v88 = (v85 + 4);
    do
    {
      *(v72 + 4 * v86) = *v88;
      *v88 = v86;
      v88 += 8;
      ++v86;
    }

    while (v87 != v86);
    marker_sort(v85, v32 - v84);
    v89 = (v85 + 4);
    do
    {
      *v89 = *(v20 + 4 * *v89);
      v89 += 8;
      --v87;
    }

    while (v87);
  }

  v11 = (*(a1[8] + 56))(a1[6], a1[7], a3, a4, v77, v32);
  if ((v11 & 0x80000000) != 0 || (v11 = (*(a1[9] + 104))(a3, a4, 3, HIWORD(v227), &v225), (v11 & 0x80000000) != 0) || (v215 = *v80, v11 = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "normal", &__c[3], &__c[1], __c), (v11 & 0x80000000) != 0))
  {
LABEL_74:
    v21 = 0;
    v9 = v11;
    goto LABEL_106;
  }

  if (*&__c[1])
  {
    v91 = cstdlib_strchr(**&__c[3], __c[0]);
    v92 = __s1a;
    if (v91)
    {
      *v91 = 0;
    }

    hlp_CreatePauseDurParam(*a1, "normal", **&__c[3]);
    v93 = **&__c[3];
  }

  else
  {
    v93 = "normal";
    v92 = __s1a;
  }

  v208 = v20;
  if (v32)
  {
    v94 = v77;
    v95 = 0;
    v214 = 0;
    v96 = 0;
    v213 = 0;
    v97 = 0;
    v98 = 0;
    v99 = v215;
    __s = "normal";
    while (1)
    {
      while (1)
      {
        v100 = v98;
        v101 = v94 + 32 * v98;
        if (*v101 > 0x24u || ((1 << *v101) & 0x1400200000) == 0)
        {
          goto LABEL_274;
        }

        v103 = v98 + 1;
        if ((v98 + 1) < v32 && (v104 = *(v101 + 12), v105 = (v94 + 32 * (v98 + 1)), v105[3] == v104))
        {
          v90 = 0;
          v106 = 0;
          v107 = v98;
          v108 = v98 + 1;
          while (1)
          {
            v98 = v108;
            v109 = *v105;
            switch(v109)
            {
              case 36:
                v90 = v108;
                break;
              case 34:
                v98 = v107;
                goto LABEL_153;
              case 21:
                v106 = v108;
                break;
            }

            v108 = (v108 + 1);
            if ((v98 + 1) >= v32)
            {
              break;
            }

            v105 = (v94 + 32 * v108);
            v107 = v98;
            if (v105[3] != v104)
            {
              goto LABEL_153;
            }
          }

          v98 = v32 - 1;
        }

        else
        {
          v90 = 0;
          v106 = 0;
        }

LABEL_153:
        if (!v95 || *v101 != 36 || v106)
        {
          break;
        }

        v97 = *(v101 + 24);
        v95 = 1;
        v98 = v103;
        if (v103 >= v32)
        {
          goto LABEL_277;
        }
      }

      v111 = *(v101 + 12);
      v110 = (v101 + 12);
      v112 = v111 - v215;
      v212 = v100;
      if (v111 != v215)
      {
        v206 = v90;
        v207 = v97;
        v204 = v99;
        v203 = v93;
        v209 = v96;
        v205 = v94;
        __s1b = v92;
        v113 = v233;
        v114 = cstdlib_strlen(v233);
        while (v113[v112] == 95 || utf8_BelongsToSet(0, v113, v112, v114))
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(v113, v112);
          *v110 += NextUtf8Offset - v112;
          v112 = NextUtf8Offset;
        }

        v97 = v207;
        v20 = v208;
        v92 = __s1b;
        v100 = v212;
        v94 = v205;
        LOWORD(v90) = v206;
        if (v204 != *v110)
        {
          log_OutText(*(*a1 + 32), "FE_INITLINGDB", 5, 0, "Creating USER TN %s token at pos  %u,%u in lingdb", v115, v116, v206, v203);
          inserted = hlp_InsertUserTNToken(a1, a3, a4, HIWORD(v227), &v225, (v204 - v215), LOWORD(v229[8 * v212 + 3]) - v215, v203, v209, __s1b, v233, v214, v229, v226);
          if ((inserted & 0x80000000) != 0)
          {
            goto LABEL_287;
          }

          v94 = v229;
          v92 = __s1b;
          v100 = v212;
          LOWORD(v90) = v206;
          v97 = v207;
        }
      }

      v119 = v94 + 32 * v100;
      v120 = *v119;
      if (*v119 == 36)
      {
        v92 = *(v119 + 24);
      }

      else if (v120 == 21)
      {
        __s = *(v119 + 24);
      }

      if (v90)
      {
        v92 = *(v94 + 32 * v90 + 24);
      }

      if (v106)
      {
        __s = *(v94 + 32 * v106 + 24);
      }

      if (v120 == 34)
      {
        v121 = v97;
        v122 = v92;
        v123 = *(*a1 + 8);
        v124 = cstdlib_strlen(*(v119 + 24)) + 1;
        v96 = heap_Realloc(v123, v213, v124);
        if (v96)
        {
          v128 = 0;
          v129 = 0;
          v94 = v229;
          v130 = v212;
          v131 = &v229[8 * v212];
          v92 = v122;
          v97 = v121;
          while (1)
          {
            v132 = *(*(v131 + 3) + v129);
            if (v132 != 32)
            {
              if (!*(*(v131 + 3) + v129))
              {
                v214 = 0;
                *(v96 + v128) = 0;
                v95 = 1;
                v93 = "phon";
                v213 = v96;
                goto LABEL_273;
              }

              v133 = v128++;
              *(v96 + v133) = v132;
            }

            ++v129;
          }
        }

        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0, v125, v126, v127, v90, v202);
        v21 = v213;
        goto LABEL_106;
      }

      if (v120 != 36 && v97 != 0)
      {
        v92 = v97;
      }

      v135 = *(*a1 + 8);
      v136 = v223;
      v137 = cstdlib_strlen(__s);
      v138 = cstdlib_strlen("normal");
      __s1c = v92;
      if (v138 <= cstdlib_strlen(v92))
      {
        v139 = cstdlib_strlen(v92);
      }

      else
      {
        v139 = cstdlib_strlen("normal");
      }

      v140 = heap_Realloc(v135, v136, (v137 + v139 + 2));
      if (!v140)
      {
        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0, v141, v142, v143, v144, v202);
        goto LABEL_298;
      }

      v223 = v140;
      if (cstdlib_strcmp(__s, "normal") || cstdlib_strcmp(v92, "normal"))
      {
        break;
      }

      v170 = v223;
      cstdlib_strcpy(v223, "normal");
      v214 = 0;
LABEL_266:
      *&__c[1] = -1;
      BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", v170, &__c[3], &__c[1], __c);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_296;
      }

      if (*&__c[1])
      {
        v182 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v182)
        {
          *v182 = 0;
        }

        hlp_CreatePauseDurParam(*a1, v170, **&__c[3]);
        v183 = *&__c[3];
      }

      else
      {
        v183 = &v223;
      }

      v20 = v208;
      v92 = __s1c;
      v97 = 0;
      v96 = 0;
      v95 = 0;
      v93 = *v183;
      v94 = v229;
      v130 = v212;
LABEL_273:
      v99 = *(v94 + 32 * v130 + 12);
      v32 = v226;
LABEL_274:
      if (++v98 >= v32)
      {
        goto LABEL_277;
      }
    }

    *v223 = 0;
    if (!cstdlib_strcmp(__s, "normal"))
    {
      v149 = 0;
      goto LABEL_239;
    }

    v145 = *__s;
    v146 = v223;
    if (*__s)
    {
      v147 = 0;
      do
      {
        v146[v147++] = ssft_tolower(v145);
        v148 = v147;
        v145 = __s[v147];
      }

      while (v145);
    }

    else
    {
      v148 = 0;
    }

    v146[v148] = 0;
    if (*(a1 + 236) == 1 && cstdlib_strcmp(v146, "normal") && *v146)
    {
      *&__c[1] = -1;
      BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", v146, &__c[3], &__c[1], __c);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_296;
      }

      if (*&__c[1])
      {
        v151 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v151)
        {
          *v151 = 0;
        }

        v152 = *a1;
        v153 = **&__c[3];
        v154 = cstdlib_strlen(__s1c);
        BestTNType = hlp_CopyString(v152, &v223, v153, v154 + 1);
        if ((BestTNType & 0x80000000) != 0)
        {
LABEL_296:
          v9 = BestTNType;
LABEL_298:
          v20 = v208;
          goto LABEL_288;
        }

        v146 = v223;
        cstdlib_strlen(v223);
      }
    }

    *&__c[1] = -1;
    BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "esctn", &__c[3], &__c[1], __c);
    if ((BestTNType & 0x80000000) != 0)
    {
      goto LABEL_296;
    }

    if (*&__c[1])
    {
      v155 = *a1;
      v156 = **&__c[3];
      v157 = __c[0];
      v158 = cstdlib_strlen(__s1c);
      BestTNType = hlp_FindBestTNType(v155, v156, v157, v146, &v222, v158 + 1);
      if ((BestTNType & 0x80000000) == 0)
      {
        v159 = v222;
        v160 = v223;
        if (v222 != v223)
        {
          if (hlp_LogUnsupportedTNType(*a1, v223))
          {
            log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30005, "%s%s%s%s", v161, v162, v163, v164, "OriginalTNType");
          }

          heap_Free(*(*a1 + 8), v160);
          v223 = v159;
        }

        goto LABEL_234;
      }

      if ((BestTNType & 0x1FFF) != 0)
      {
        goto LABEL_296;
      }

      if (hlp_LogUnsupportedTNType(*a1, v223))
      {
        v169 = *(*a1 + 32);
        goto LABEL_230;
      }
    }

    else
    {
      if (!cstdlib_strcmp(v146, "normal") || !cstdlib_strcmp(v146, "sms") || !cstdlib_strcmp(v146, "address") || !cstdlib_strcmp(v146, "spell") || !cstdlib_strcmp(v146, "NOR") || !cstdlib_strcmp(v146, "SMS") || !cstdlib_strcmp(v146, "ADR"))
      {
LABEL_234:
        v173 = cstdlib_strlen(v223);
        if (cstdlib_strcmp(__s1c, "normal") && (v174 = v223, cstdlib_strcmp(v223, "normal")) && *v174)
        {
          v149 = v173 + 1;
          v174[v173] = 95;
        }

        else
        {
          v149 = v173;
        }

LABEL_239:
        v175 = cstdlib_strcmp(__s1c, "normal");
        v170 = v223;
        if (v175 && cstdlib_strcmp(v223, "normal"))
        {
          if (cstdlib_strlen(__s1c) == 7 && cstdlib_strstr(__s1c, "_lid"))
          {
            __s1c[3] = 0;
            v214 = 1;
          }

          else
          {
            v214 = 0;
          }

          if (cstdlib_strlen(__s1c) == 3)
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
              goto LABEL_296;
            }

            if (*&__c[1] && cstdlib_strstr(**&__c[3], __s2))
            {
              v177 = *__s1c;
              v170 = v223;
              if (*__s1c)
              {
                v178 = 0;
                do
                {
                  v170[v149++] = ssft_tolower(v177);
                  v177 = __s1c[++v178];
                }

                while (v177);
              }

              goto LABEL_263;
            }
          }

          else if (!cstdlib_strcmp(__s1c, "latin"))
          {
            v179 = *__s1c;
            v170 = v223;
            if (*__s1c)
            {
              v180 = 0;
              do
              {
                v170[v149++] = ssft_tolower(v179);
                v179 = __s1c[++v180];
              }

              while (v179);
            }

            goto LABEL_263;
          }

          v170 = v223;
          if (*v223)
          {
            v223[v149 - 1] = 0;
          }

          else
          {
            cstdlib_strcpy(v223, "normal");
          }
        }

        else
        {
          v214 = 0;
        }

LABEL_263:
        v181 = cstdlib_strlen("normal");
        if (cstdlib_strncmp(v170, "normal", v181) && *v170)
        {
          v170[v149] = 0;
        }

        goto LABEL_266;
      }

      if (hlp_LogUnsupportedTNType(*a1, v146))
      {
        v169 = *(*a1 + 32);
LABEL_230:
        log_OutPublic(v169, "FE_INITLINGDB", 30004, "%s%s", v165, v166, v167, v168, "TNType");
      }
    }

    if (cstdlib_strcmp(__s1c, "normal"))
    {
      *v223 = 0;
    }

    else
    {
      v171 = *a1;
      v172 = cstdlib_strlen(__s1c);
      BestTNType = hlp_CopyString(v171, &v223, "normal", v172 + 1);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_296;
      }
    }

    goto LABEL_234;
  }

  v213 = 0;
  v96 = 0;
  v214 = 0;
  v99 = v215;
LABEL_277:
  v210 = v96;
  v184 = v93;
  v185 = v99;
  log_OutText(*(*a1 + 32), "FE_INITLINGDB", 5, 0, "Creating USER TN %s token in lingdb", v93, v99, v90, v93);
  v186 = HIWORD(v227);
  v187 = v92;
  v188 = v233;
  v189 = cstdlib_strlen(v233);
  inserted = hlp_InsertUserTNToken(a1, a3, a4, v186, &v225, (v185 - v215), v189, v184, v210, v187, v188, v214, v229, v226);
  if ((inserted & 0x80000000) != 0)
  {
    goto LABEL_287;
  }

  v190 = v226;
  v191 = v229;
  if (!v226)
  {
LABEL_282:
    v195 = &v229[8 * v226];
    LODWORD(v193) = v226;
LABEL_283:
    marker_sort(v195, v226 - v193);
    goto LABEL_284;
  }

  v192 = 0;
  v193 = 0;
  v194 = v226;
  while (1)
  {
    v195 = &v229[v192];
    if (v229[v192 + 3] != v215)
    {
      break;
    }

    ++v193;
    --v194;
    v192 += 8;
    if (8 * v226 == v192)
    {
      goto LABEL_282;
    }
  }

  if (v226 == v193)
  {
    v20 = v208;
    goto LABEL_283;
  }

  v196 = 0;
  v197 = 0;
  v198 = (v195 + 4);
  v20 = v208;
  do
  {
    v199 = v191 + v196 + v192 * 4;
    *(v208 + 4 * v197) = *(v199 + 4);
    *(v199 + 4) = v197++;
    v196 += 32;
  }

  while (v194 != v197);
  marker_sort(v195, v190 - v193);
  v200 = v194;
  do
  {
    *v198 = *(v208 + 4 * *v198);
    v198 += 8;
    --v200;
  }

  while (v200);
LABEL_284:
  inserted = hlp_ReplacePauseZeroWithNluBndNo_And_WriteMarkersToLingDB(*a1, a1[9], a3, a4, HIWORD(v227), &v229, &v226);
  if ((inserted & 0x80000000) == 0)
  {
    inserted = (*(a1[10] + 96))(a1[114], a1[115], v231);
    if ((inserted & 0x80000000) == 0)
    {
      inserted = (*(a1[10] + 96))(a1[116], a1[117], v228);
    }
  }

LABEL_287:
  v9 = inserted;
LABEL_288:
  v21 = v213;
LABEL_106:
  if (v223)
  {
    heap_Free(*(*a1 + 8), v223);
    v223 = 0;
  }

  if (v21)
  {
    heap_Free(*(*a1 + 8), v21);
  }

  if (v229)
  {
    heap_Free(*(*a1 + 8), v229);
  }

  if (v233)
  {
    heap_Free(*(*a1 + 8), v233);
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
    v8 = cstdlib_strlen(__s) + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = heap_Realloc(*(a1 + 8), *a2, (v8 + a4));
  if (v9)
  {
    v14 = v9;
    if (__s)
    {
      v15 = __s;
    }

    else
    {
      v15 = "";
    }

    cstdlib_strcpy(v9, v15);
    result = 0;
    *a2 = v14;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_INITLINGDB", 30000, 0, v10, v11, v12, v13, v17);
    return 2307923978;
  }

  return result;
}

uint64_t hlp_ValidatePhoneticTranscription(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  if (!a3)
  {
    return v3;
  }

  hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(a3, __dst, v24);
  hlp_GetLowerCasedLng3FromLangTag(a1, a2, __s);
  if (cstdlib_strlen(__s) != 3)
  {
    return 0;
  }

  v6 = *(a1 + 968);
  if (!v6 || !(*(v6 + 56))(*(a1 + 952), *(a1 + 960)))
  {
    if (cstdlib_strcmp(__s, (a1 + 948)))
    {
      return 2307923968;
    }

    else
    {
      return 0;
    }
  }

  v7 = cstdlib_strstr(v3, "_#_");
  if (v7)
  {
    v8 = v7;
    do
    {
      *v8 = 35;
      v9 = cstdlib_strlen(v3);
      cstdlib_memmove(v8 + 1, v8 + 3, v9 - (v8 - v3) - 2);
      v8 = cstdlib_strstr(v3, "_#_");
    }

    while (v8);
  }

  v10 = !hlp_checkDoClmInCurrentComponent(a1) || hlp_checkDoClmForLng3(a1, __s) == 0;
  v11 = cstdlib_strstr(v3, "\x14");
  v12 = v11;
  if (v11)
  {
    *v11 = 0;
  }

  if (v10)
  {
    v13 = cstdlib_strlen(v24) == 0;
    v14 = (*(*(a1 + 968) + 120))(*(a1 + 952), *(a1 + 960), __s, v24, v3, &v23, v13);
    v15 = 0;
    if (v23)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 <= -1;
    }

    if (v16)
    {
      v3 = v14;
    }

    else
    {
      v3 = 2307931781;
    }

    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v17 = *(*a1 + 8);
  v18 = cstdlib_strlen(v3);
  v15 = heap_Alloc(v17, (4 * v18 + 4));
  if (v15)
  {
    v19 = *(*(a1 + 968) + 64);
    v20 = cstdlib_strlen(v3);
    v3 = v19(*(a1 + 952), *(a1 + 960), __s, v3, v15, 0, 0, (4 * v20 + 4));
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v3 = 2307923978;
  if (v12)
  {
LABEL_28:
    v21 = cstdlib_strlen("\x14");
    cstdlib_strncpy(v12, "\x14", v21);
  }

LABEL_29:
  if (v15)
  {
    heap_Free(*(*a1 + 8), v15);
  }

  return v3;
}

uint64_t hlp_CreatePauseDurParam(uint64_t a1, const char *a2, const char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  cstdlib_strcpy(__dst, "tnpausedur");
  v6 = cstdlib_strlen(a2);
  result = cstdlib_strlen(__dst);
  if (v6 < 255 - result)
  {
    cstdlib_strcat(__dst, a2);
    result = paramc_ParamGetUInt(*(a1 + 40), __dst, &v8);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcpy(__dst, "tnpausedur");
      cstdlib_strcat(__dst, a3);
      return paramc_ParamSetUInt(*(a1 + 40), __dst, v8);
    }
  }

  return result;
}

uint64_t hlp_InsertUserTNToken(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, unsigned __int16 a7, const char *a8, char *a9, char *a10, const char *a11, int a12, uint64_t a13, unsigned __int16 a14)
{
  v121 = *MEMORY[0x277D85DE8];
  v118 = a7;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v21 = *a5;
  v22 = hlp_checkDoClmInCurrentComponent(a1);
  hlp_GetLowerCasedLng3FromLangTag(a1, a10, __s);
  if (*a5)
  {
    v108 = v21;
    v23 = *a5;
    v107 = v22;
    while (1)
    {
      v28 = (*(*(a1 + 72) + 168))(a2, a3, v23, 1, 1, &v116 + 2, &v117);
      if ((v28 & 0x80000000) != 0)
      {
LABEL_131:
        v32 = *(*a1 + 32);
        v98 = 30003;
        goto LABEL_136;
      }

      if (HIWORD(v116) < a6)
      {
        goto LABEL_8;
      }

      v28 = (*(*(a1 + 72) + 168))(a2, a3, *a5, 0, 1, &v115, &v117);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_131;
      }

      if (v115 == 3 || HIWORD(v116) == v118)
      {
LABEL_8:
        v29 = 1;
        goto LABEL_9;
      }

      v31 = (*(*(a1 + 72) + 80))(a2, a3, *a5, a5);
      if ((v31 & 0x80000000) != 0)
      {
        return v31;
      }

      v115 = 5;
      v28 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 0, 1, &v115, &v116);
      v32 = *(*a1 + 32);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_135;
      }

      log_OutText(v32, "FE_INITLINGDB", 5, 0, "Creating token %u %u in lingdb", v25, v26, v27, HIWORD(v116));
      v33 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 1, 1, &v116 + 2, &v116);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_133;
      }

      v33 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 2, 1, &v118, &v116);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_133;
      }

      v34 = *(*(a1 + 72) + 160);
      v35 = *a5;
      v36 = cstdlib_strlen(a8);
      v28 = v34(a2, a3, v35, 4, (v36 + 1), a8, &v116);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_134;
      }

      if (a12)
      {
        v28 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 6, 4, "lid", &v116);
        if ((v28 & 0x80000000) != 0)
        {
          return v28;
        }
      }

      if (a9)
      {
        break;
      }

LABEL_61:
      v29 = 0;
LABEL_9:
      if (HIWORD(v116) == v118)
      {
        return v28;
      }

      v28 = (*(*(a1 + 72) + 120))(a2, a3, *a5, a5);
      v30 = v28 >= 0 ? v29 : 0;
      if ((v30 & 1) == 0)
      {
        return v28;
      }

      v23 = *a5;
      if (!*a5)
      {
        if (HIWORD(v116) != a6)
        {
          return v28;
        }

        v31 = (*(*(a1 + 72) + 80))(a2, a3, v108, a5);
        if ((v31 & 0x80000000) != 0)
        {
          return v31;
        }

        v115 = 5;
        v28 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 0, 1, &v115, &v116);
        v32 = *(*a1 + 32);
        if ((v28 & 0x80000000) == 0)
        {
          log_OutText(v32, "FE_INITLINGDB", 5, 0, "Creating token %u %u in lingdb", v25, v26, v27, HIWORD(v116));
          v33 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 1, 1, &v116 + 2, &v116);
          if ((v33 & 0x80000000) != 0 || (v33 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 2, 1, &v118, &v116), (v33 & 0x80000000) != 0))
          {
LABEL_133:
            v28 = v33;
          }

          else
          {
            v95 = *(*(a1 + 72) + 160);
            v96 = *a5;
            v97 = cstdlib_strlen(a8);
            v28 = v95(a2, a3, v96, 4, (v97 + 1), a8, &v116);
            if ((v28 & 0x80000000) == 0)
            {
              return v28;
            }
          }

LABEL_134:
          v32 = *(*a1 + 32);
        }

LABEL_135:
        v98 = 30002;
LABEL_136:
        log_OutPublic(v32, "FE_INITLINGDB", v98, 0, v24, v25, v26, v27, v100);
        return v28;
      }
    }

    v106 = a8;
    v112 = 0;
    v37 = cstdlib_strstr(a9, "_#_");
    if (v37)
    {
      v38 = v37;
      do
      {
        *v38 = 35;
        v39 = cstdlib_strlen(a9);
        cstdlib_memmove(v38 + 1, v38 + 3, v39 - (v38 - a9) - 2);
        v38 = cstdlib_strstr(a9, "_#_");
      }

      while (v38);
    }

    if (cstdlib_strlen(__s) != 3)
    {
      v41 = a9;
      goto LABEL_31;
    }

    v40 = !v107 || hlp_checkDoClmForLng3(a1, __s) == 0;
    v42 = *(*a1 + 8);
    v43 = cstdlib_strlen(a9);
    v44 = heap_Alloc(v42, 4 * v43 + 200);
    if (!v44)
    {
      log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 34000, 0, v45, v46, v47, v48, v100);
      return 2307923978;
    }

    __s1 = v44;
    hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(a9, __s2, v113);
    cstdlib_strcpy(__dst, "");
    v49 = cstdlib_strstr(a9, "\x14");
    if (v49)
    {
      v50 = v49;
      cstdlib_strcat(__dst, v49);
      *v50 = 0;
    }

    v51 = *(a1 + 968);
    if (v51 && (*(v51 + 56))(*(a1 + 952), *(a1 + 960)))
    {
      if (v40)
      {
        v52 = cstdlib_strlen(v113);
        v53 = (*(*(a1 + 968) + 120))(*(a1 + 952), *(a1 + 960), __s, v113, a9, &v112, v52 == 0);
        if (v112)
        {
          v54 = 1;
        }

        else
        {
          v54 = v53 <= -1;
        }

        if (v54)
        {
          LODWORD(v28) = v53;
        }

        else
        {
          LODWORD(v28) = -1987035515;
        }

        if (!v52 && cstdlib_strlen(v113))
        {
          cstdlib_strcpy(__dst, "\x14");
          cstdlib_strcat(__dst, __s2);
          cstdlib_strcat(__dst, "\x14");
          cstdlib_strcat(__dst, v113);
        }

LABEL_50:
        if ((v28 & 0x80000000) == 0)
        {
          if (v40)
          {
            cstdlib_strcpy(__s1, a9);
            cstdlib_strcat(__s1, __dst);
            if (cstdlib_strcmp(__s, (a1 + 948)))
            {
              v55 = *(*(a1 + 72) + 160);
              v56 = *a5;
              v57 = cstdlib_strlen(__s);
              v31 = v55(a2, a3, v56, 6, (v57 + 1), __s, &v116);
              v41 = __s1;
              if ((v31 & 0x80000000) != 0)
              {
                return v31;
              }
            }

            else
            {
              v41 = __s1;
            }

            goto LABEL_57;
          }

LABEL_56:
          v41 = __s1;
          cstdlib_strcat(__s1, __dst);
LABEL_57:
          v60 = *(*(a1 + 72) + 160);
          v61 = *a5;
          v62 = cstdlib_strlen(v41);
          v28 = v60(a2, a3, v61, 3, (v62 + 1), v41, &v116);
          if (v41 != a9)
          {
            heap_Free(*(*a1 + 8), v41);
          }

          a8 = v106;
LABEL_60:
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_134;
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      v58 = *(*(a1 + 968) + 64);
      v59 = cstdlib_strlen(a9);
      if ((v58(*(a1 + 952), *(a1 + 960), __s, a9, __s1, 0, 0, (4 * v59 + 4)) & 0x80000000) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (!cstdlib_strcmp(__s, (a1 + 948)))
    {
      goto LABEL_50;
    }

LABEL_62:
    v63 = cstdlib_strlen("§");
    v111 = v118;
    v64 = a11;
    v65 = cstdlib_strstr(&a11[HIWORD(v116)], "§");
    if (v65 == &a11[HIWORD(v116)])
    {
      v41 = __s1;
      cstdlib_strcpy(__s1, __dst);
      v28 = 0;
      a8 = v106;
    }

    else
    {
      v66 = v65;
      if (v65)
      {
        v102 = v63 - a11;
        v101 = v63;
        do
        {
          if (v66 - v64 >= v111 || v66 == &v64[HIWORD(v116)])
          {
            break;
          }

          if (v66 <= v64)
          {
            v103 = v66 - v64;
          }

          else
          {
            v68 = v102 + v66;
            v69 = v66;
            while (1)
            {
              v70 = *--v69;
              if (v70 != 32)
              {
                break;
              }

              ++v63;
              v66 = v69;
              if (v69 <= v64)
              {
                v63 = v68;
                v66 = v64;
                break;
              }
            }

            v103 = v66 - v64;
          }

          v111 -= v63;
          v71 = cstdlib_strlen(&v66[v63]);
          cstdlib_memmove(v66, &v66[v63], v71 + 1);
          v72 = *(*(a1 + 72) + 160);
          v73 = cstdlib_strlen(v64);
          v31 = v72(a2, a3, a4, 0, (v73 + 1), v64, &v116);
          if ((v31 & 0x80000000) != 0)
          {
            return v31;
          }

          v31 = (*(*(a1 + 72) + 160))(a2, a3, *a5, 2, 1, &v111, &v116);
          if ((v31 & 0x80000000) != 0)
          {
            return v31;
          }

          v109 = 0;
          v110 = *a5;
          v31 = (*(*(a1 + 72) + 120))(a2, a3);
          if ((v31 & 0x80000000) != 0)
          {
            return v31;
          }

          v74 = v110;
          if (v110)
          {
            v104 = v63;
            v75 = v63 + v103;
            do
            {
              v31 = (*(*(a1 + 72) + 168))(a2, a3, v74, 1, 1, &v109 + 2, &v117);
              if ((v31 & 0x80000000) != 0)
              {
                return v31;
              }

              v31 = (*(*(a1 + 72) + 168))(a2, a3, v110, 2, 1, &v109, &v117);
              if ((v31 & 0x80000000) != 0)
              {
                return v31;
              }

              v76 = v103 <= HIWORD(v109) && v75 >= HIWORD(v109);
              if (v76 && v103 <= v109 && v75 >= v109)
              {
                v77 = v110;
                v78 = v110;
              }

              else
              {
                v77 = v110;
                if (v75 <= HIWORD(v109))
                {
                  HIWORD(v109) -= v104;
                  LOWORD(v109) = v109 - v104;
                  v31 = (*(*(a1 + 72) + 160))(a2, a3, v110, 1, 1, &v109 + 2, &v116);
                  if ((v31 & 0x80000000) != 0)
                  {
                    return v31;
                  }

                  v31 = (*(*(a1 + 72) + 160))(a2, a3, v110, 2, 1, &v109, &v116);
                  if ((v31 & 0x80000000) != 0)
                  {
                    return v31;
                  }

                  v78 = 0;
                  v77 = v110;
                }

                else
                {
                  v78 = 0;
                }
              }

              v31 = (*(*(a1 + 72) + 120))(a2, a3, v77, &v110);
              if ((v31 & 0x80000000) != 0)
              {
                return v31;
              }

              if (v78)
              {
                v31 = (*(*(a1 + 72) + 192))(a2, a3, v78);
                if ((v31 & 0x80000000) != 0)
                {
                  return v31;
                }
              }

              v74 = v110;
            }

            while (v110);
          }

          v64 = a11;
          v66 = cstdlib_strstr(&a11[HIWORD(v116)], "§");
          v63 = v101;
        }

        while (v66);
      }

      v79 = v111;
      v80 = v118;
      v81 = v118 - v111;
      a8 = v106;
      if (v118 > v111 && a14)
      {
        v83 = (a13 + 16);
        v82 = a14;
        do
        {
          v84 = *(v83 - 1);
          if (v84 <= v79)
          {
            v89 = *v83;
            if (*v83)
            {
              v90 = v89 + v84;
              if (v79 < v90)
              {
                v91 = (v90 - v79);
                if (v91 >= v81)
                {
                  v91 = v81;
                }

                *v83 = v89 - v91;
              }
            }
          }

          else
          {
            v85 = (v84 - v79);
            v86 = *v83;
            if (*v83)
            {
              v87 = *(v83 - 1) >= v80;
            }

            else
            {
              v87 = 1;
            }

            v88 = (v80 - v84);
            if (v87)
            {
              v88 = 0;
            }

            if (v85 >= v81)
            {
              v85 = v81;
            }

            *(v83 - 1) = v84 - v85;
            *v83 = v86 - v88;
          }

          v83 += 8;
          --v82;
        }

        while (v82);
      }

      v92 = *(*(a1 + 72) + 160);
      v93 = *a5;
      v94 = cstdlib_strlen("normal");
      v28 = v92(a2, a3, v93, 4, (v94 + 1), "normal", &v116);
      heap_Free(*(*a1 + 8), __s1);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_134;
      }

      v41 = 0;
    }

LABEL_31:
    if (!v41)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  return 0;
}

uint64_t hlp_LogUnsupportedTNType(uint64_t a1, char *__s)
{
  __s1 = 0;
  v4 = cstdlib_strlen(__s);
  if ((paramc_ParamGetStr(*(a1 + 40), "domainmngrtntypes", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || (v5 = cstdlib_strstr(__s1, __s)) == 0 || (v6 = v5, v5 != __s1) && *(v5 - 1) != 124 || (result = 0, (v8 = v6[v4]) != 0) && v8 != 124)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "extraesctn", &__s1) & 0x80000000) != 0)
    {
      return 1;
    }

    if (!__s1)
    {
      return 1;
    }

    result = cstdlib_strcmp(__s1, __s);
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
  result = cstdlib_strcmp(__s1, "internal-nuance-system-norm");
  if (result)
  {
    while (1)
    {
      v13 = cstdlib_strstr(a2, *a5);
      if (v13)
      {
        v14 = v13[cstdlib_strlen(*a5)];
        if (a3 == v14)
        {
          return 0;
        }

        result = 0;
        if (!v14 || v14 == 124)
        {
          return result;
        }
      }

      v15 = cstdlib_strrchr(*a5, 58);
      v16 = *a5;
      if (!v15)
      {
        break;
      }

      if (v16 == __s1)
      {
        *a5 = 0;
        result = hlp_CopyString(a1, a5, __s1, a6);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v15 = cstdlib_strrchr(*a5, 58);
        if (!v15)
        {
          continue;
        }
      }

      *v15 = 0;
    }

    if (v16 != __s1)
    {
      heap_Free(*(a1 + 8), v16);
    }

    *a5 = 0;
    return 2307923968;
  }

  return result;
}

uint64_t hlp_ReplacePauseZeroWithNluBndNo_And_WriteMarkersToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned __int16 *a7)
{
  v7 = a7;
  v60 = 0;
  v14 = *a7;
  if (!*a7)
  {
    goto LABEL_35;
  }

  v15 = 0;
  v16 = *a6;
  v17 = *a7;
  do
  {
    if (*v16 == 8 && v16[6] == 1)
    {
      ++v15;
    }

    v16 += 8;
    --v17;
  }

  while (v17);
  if (v15)
  {
    v18 = 2307923978;
    v19 = heap_Calloc(*(a1 + 8), 8, v15);
    if (!v19)
    {
      goto LABEL_45;
    }

    v20 = v19;
    v14 = *v7;
    if (*v7)
    {
      v53 = a2;
      v54 = a3;
      v55 = a4;
      v56 = a5;
      v21 = 0;
      v58 = v7;
      v59 = 0;
      v22 = -1;
      v57 = v19;
      while (1)
      {
        v23 = *a6;
        v24 = (*a6 + 32 * v21);
        if (*v24 == 1)
        {
          v22 = v21;
        }

        else if ((v22 & 0x80000000) == 0 && *v24 == 8 && v24[6] == 1)
        {
          v25 = v22;
          v26 = v23 + 32 * v22;
          v27 = *(v26 + 12);
          v28 = v22;
          if (v14)
          {
            v29 = 1;
            v30 = v14;
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
          if (v21 == v25)
          {
            v7 = v58;
          }

          else
          {
            if (v21 + 1 != v14)
            {
              cstdlib_memmove(v24, (v23 + 32 * (v21 + 1)), 32 * (~v21 + v14));
              v14 = *v58;
              v23 = *a6;
            }

            v38 = v14 - 1;
            *v58 = v38;
            v39 = v23 + 32 * v28;
            v40 = v38 - v28;
            v7 = v58;
            cstdlib_memmove((v39 + 32), (v23 + 32 * v25), 32 * v40);
            ++*v58;
            v23 = *a6;
          }

          v41 = (v23 + 32 * v25);
          *v41 = 51;
          v41[1] = v37;
          v41[2] = 0;
          v41[3] = v27;
          v41[4] = 0;
          v42 = *(a1 + 8);
          v43 = cstdlib_strlen("BND:N");
          *(*a6 + 32 * v25 + 24) = heap_Alloc(v42, v43 + 1);
          v44 = *(*a6 + 32 * v25 + 24);
          if (!v44)
          {
            v20 = v57;
            v18 = 2307923978;
            v52 = v59;
            goto LABEL_39;
          }

          v20 = v57;
          *(v57 + 8 * v59) = v44;
          cstdlib_strcpy(*(*a6 + 32 * v25 + 24), "BND:N");
          v14 = *v7;
          ++v59;
        }

        if (++v21 >= v14)
        {
          a5 = v56;
          a3 = v54;
          a4 = v55;
          v52 = v59;
          goto LABEL_36;
        }
      }
    }

    v52 = 0;
  }

  else
  {
LABEL_35:
    v52 = 0;
    v20 = 0;
  }

LABEL_36:
  v18 = (*(a2 + 160))(a3, a4, a5, 1, v14, *a6, &v60);
  if ((v18 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "FE_INITLINGDB", 30002, 0, v45, v46, v47, v48, v53);
  }

  if (v20)
  {
LABEL_39:
    if (v52)
    {
      v49 = v52;
      v50 = v20;
      do
      {
        if (*v50)
        {
          heap_Free(*(a1 + 8), *v50);
        }

        ++v50;
        --v49;
      }

      while (v49);
    }

    heap_Free(*(a1 + 8), v20);
  }

LABEL_45:
  heap_Free(*(a1 + 8), *a6);
  *a6 = 0;
  *v7 = 0;
  return v18;
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

unint64_t hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(char *a1, char *__dst, _BYTE *a3)
{
  cstdlib_strcpy(__dst, "EXTMRKP");
  *a3 = 0;
  result = cstdlib_strstr(a1, "\x14");
  if (result)
  {
    v7 = (result + 1);
    result = cstdlib_strstr((result + 1), "\x14");
    v8 = result;
    if (result)
    {
      v9 = result - v7;
    }

    else
    {
      result = cstdlib_strlen(v7);
      v9 = result;
    }

    if (v9 <= 9)
    {
      result = cstdlib_strncpy(__dst, v7, v9);
      __dst[v9] = 0;
    }

    if (v8)
    {
      v10 = v8 + 1;
      if (cstdlib_strlen((v8 + 1)) == 3 || (result = cstdlib_strlen((v8 + 1)), result >= 4) && (result = cstdlib_strcmp((v8 + 4), "\x14"), !result))
      {
        for (i = 0; i != 3; ++i)
        {
          result = ssft_tolower(*(v10 + i));
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
    if (cstdlib_strlen(a2) == 3)
    {
      cstdlib_strcpy(__dst, a2);
      result = cstdlib_strlen(__dst);
      if (result)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          __dst[v7] = ssft_tolower(__dst[v7]);
          v7 = ++v8;
          result = cstdlib_strlen(__dst);
        }

        while (result > v8);
      }

      return result;
    }

    v9 = "";
  }

  else
  {
    v9 = (a1 + 948);
  }

  return cstdlib_strcpy(__dst, v9);
}

BOOL hlp_checkDoClmInCurrentComponent(void *a1)
{
  __s1 = 0;
  v3 = 0;
  return (((*(a1[121] + 96))(a1[119], a1[120], &v3) & 0x80000000) != 0 || !v3) && ((paramc_ParamGetStr(*(*a1 + 40), "clm", &__s1) & 0x80000000) != 0 || !__s1 || !cstdlib_strcmp(__s1, "yes"));
}

uint64_t hlp_checkDoClmForLng3(const char *a1, char *__s1)
{
  v9 = *MEMORY[0x277D85DE8];
  __s1a = 0;
  result = cstdlib_strcmp(__s1, a1 + 948);
  if (result)
  {
    cstdlib_strcpy(__dst, "clm");
    cstdlib_strcat(__dst, __s1);
    if ((paramc_ParamGetStr(*(*a1 + 40), __dst, &__s1a) & 0x80000000) != 0 || (v5 = __s1a) == 0)
    {
      __s1a = 0;
      Str = paramc_ParamGetStr(*(*a1 + 40), "noclmset", &__s1a);
      v5 = __s1a;
      if (Str < 0 || !__s1a)
      {
        if (!__s1a)
        {
          return 1;
        }
      }

      else
      {
        if (cstdlib_strstr(__s1a, __s1))
        {
          v5 = "no";
        }

        else
        {
          v5 = "yes";
        }

        __s1a = v5;
      }
    }

    return cstdlib_strcmp(v5, "yes") == 0;
  }

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
  v55 = *MEMORY[0x277D85DE8];
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v51 = 0;
  Allocator = ooc_utils_createAllocator(v52, *(a1 + 32), *(a1 + 40));
  v5 = LH_ERROR_to_VERROR(Allocator);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  v6 = luavmldoutil_initialize_lua_vm(*(a1 + 32), *(a1 + 40), v52, "getForeignLangSupportForCLMv2", "CLM", &v51, "clm");
  v7 = 0;
  v8 = v51;
  if ((v6 & 0x80000000) == 0 && v51)
  {
    *(a1 + 200) = 0;
    v9 = LuaVMLDO_RunFunctionReturningString(v8, "getForeignLangSupportForCLMv2", a2, 0x400u, __s);
    v5 = LH_ERROR_to_VERROR(v9);
    if ((v5 & 0x80000000) == 0)
    {
      if (cstdlib_strlen(__s) || (v49 = LuaVMLDO_RunFunctionReturningString(v8, "getFeClmSupportedLanguages", "all", 0x400u, __s), (LH_ERROR_to_VERROR(v49) & 0x80000000) == 0) && cstdlib_strstr(__s, a2))
      {
        *(a1 + 200) = 1;
      }

      v10 = v51;
      *__s = 0;
      v11 = PNEW_LDOObject_Con(v52, v52, __s);
      v12 = LH_ERROR_to_VERROR(v11);
      if ((v12 & 0x80000000) != 0)
      {
        v7 = v12;
        log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Error creating LDOObject", v13, v14, v15, v50);
      }

      else
      {
        v16 = LuaVMLDO_RunFunctionWithStringArgumentReturningTableWithStrings(v10, "getLoanPhonemeSupport", a2, *__s);
        v17 = LH_ERROR_to_VERROR(v16);
        if ((v17 & 0x80000000) != 0)
        {
          v7 = 0;
        }

        else
        {
          v7 = v17;
          v19 = *(*__s + 32);
          v18 = *(*__s + 40);
          *(a1 + 204) = (v18 - v19) >> 5;
          if (((v18 - v19) & 0x1FFFE0) != 0)
          {
            v20 = heap_Calloc(*(*(a1 + 24) + 8), ((v18 - v19) >> 5), 16);
            *(a1 + 208) = v20;
            if (v20)
            {
              if (v19 < v18)
              {
                v25 = 0;
                v50 = v18;
                while (1)
                {
                  v26 = v19[3];
                  v27 = LHString_BorrowCPtr(*v19);
                  if (cstdlib_strlen(v27) != 3)
                  {
                    goto LABEL_49;
                  }

                  v28 = 16 * v25;
                  v29 = 3;
                  do
                  {
                    v30 = *v27++;
                    *(*(a1 + 208) + v28++) = cstdlib_tolower(v30);
                    --v29;
                  }

                  while (v29);
                  v31 = LHString_BorrowCPtr(v26);
                  if (!v31 || (v32 = v31, !cstdlib_strlen(v31)))
                  {
LABEL_49:
                    v7 = 2347769856;
                    goto LABEL_51;
                  }

                  v33 = cstdlib_strstr(v32, "||");
                  for (i = 1; v33; ++i)
                  {
                    v36 = v33[2];
                    v35 = v33 + 2;
                    if (!v36)
                    {
                      break;
                    }

                    v33 = cstdlib_strstr(v35, "||");
                  }

                  *(*(a1 + 208) + 16 * v25 + 4) = i;
                  v37 = heap_Calloc(*(*(a1 + 24) + 8), i, 24);
                  *(*(a1 + 208) + 16 * v25 + 8) = v37;
                  if (!v37)
                  {
                    goto LABEL_50;
                  }

                  v38 = cstdlib_strstr(v32, "|");
                  if (v38)
                  {
                    break;
                  }

LABEL_33:
                  ++v25;
                  v19 += 4;
                  if (v19 >= v50)
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

                  v43 = cstdlib_strstr(v39 + 1, "|");
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
                  v46 = cstdlib_strstr(v45, "|");
                  if (!v46)
                  {
                    v46 = &v45[cstdlib_strlen(v45)];
                  }

                  v42 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v25 + 8) + 24 * v41 + 16), v45, v46);
                  if ((v42 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v47 = cstdlib_strstr(v45, "||");
                  if (v47)
                  {
                    v32 = v47 + 2;
                    v39 = cstdlib_strstr(v47 + 2, "|");
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
              log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0, v21, v22, v23, v24, v50);
              v7 = 2347769866;
            }
          }
        }
      }

LABEL_51:
      if (*__s)
      {
        OOC_PlacementDeleteObject(v52, *__s);
      }

      goto LABEL_36;
    }

LABEL_35:
    v7 = v5;
LABEL_36:
    v8 = v51;
  }

  if (v8)
  {
    luavmldoutil_destroy_lua_vm(v52, &v51);
  }

  OOCAllocator_Des();
  if ((v7 & 0x80000000) != 0)
  {
    CLM_DeInitFromCLMv2Lua(a1);
  }

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
    v7 = cstdlib_strlen(__s);
  }

  v8 = heap_Calloc(*(a1 + 8), v7 + 1, 1);
  *a2 = v8;
  if (v8)
  {
    cstdlib_strncpy(v8, __s, v7);
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
  __b = 0;
  v49 = 0;
  cstdlib_memset(&__b, 0, 0x10uLL);
  if (!a3 || !a4 || (CountStrings = StringList_GetCountStrings(a3), v9 = StringList_GetCountStrings(a4), a2) && StringList_GetCountStrings(a2) != CountStrings)
  {
    v14 = 2347769856;
    goto LABEL_21;
  }

  v10 = StringList_GetCountStrings(a3);
  v11 = StringList_GetCountStrings(a4);
  v12 = v11;
  if (CountStrings && v9)
  {
    v13 = 0;
    if (v10)
    {
      v14 = 0;
      v47 = a2;
      while (v13 < v12)
      {
        v15 = StringList_GetAt(a3, v13);
        if (cstdlib_strcmp(v15, "*"))
        {
          v16 = StringList_GetAt(a3, v13);
          v17 = StringList_GetAt(a4, v13);
          v18 = v16;
          a2 = v47;
          if (cstdlib_strcmp(v18, v17))
          {
            break;
          }
        }

        else
        {
          v19 = StringList_InsertAt(a4, v13, "*");
          if (v19)
          {
            v14 = LH_ERROR_to_VERROR(v19);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v14 = 0;
          }

          LOWORD(v12) = v12 + 1;
        }

        if (v10 <= ++v13)
        {
          v13 = v10;
LABEL_66:
          v31 = v14;
          goto LABEL_69;
        }
      }

      if (v10 <= v13)
      {
        goto LABEL_66;
      }

      v32 = a4;
      while (1)
      {
        v33 = v12;
        v34 = v10;
        if (v12 <= v13)
        {
          break;
        }

        LOWORD(v10) = v10 - 1;
        v35 = StringList_GetAt(a3, (v34 - 1));
        if (cstdlib_strcmp(v35, "*"))
        {
          v36 = StringList_GetAt(a3, v10);
          LOWORD(v12) = v12 - 1;
          v37 = StringList_GetAt(v32, (v33 - 1));
          v38 = v36;
          a2 = v47;
          if (cstdlib_strcmp(v38, v37))
          {
            break;
          }
        }

        else
        {
          v39 = StringList_InsertAt(v32, v12, "*");
          if (v39)
          {
            v14 = LH_ERROR_to_VERROR(v39);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        if (v10 <= v13)
        {
          goto LABEL_68;
        }
      }

      LOWORD(v10) = v34;
      LOWORD(v12) = v33;
LABEL_68:
      v31 = v14;
      a4 = v32;
    }

    else
    {
      v31 = 0;
    }

LABEL_69:
    v40 = StringList_GetCountStrings(a3) - v10;
    v14 = 2347769856;
    if (v40 == StringList_GetCountStrings(a4) - v12)
    {
      if ((v31 & 0x80000000) != 0)
      {
        v14 = v31;
      }

      else if (v13 != v10 || (v14 = v31, v13 != v12))
      {
        v50 = 0;
        v41 = hlp_RecursiveAddBestAnchorsForSublist(a1, a3, v13, v10, a4, v13, v12, &__b, &v50);
        if ((v41 & 0x80000000) != 0)
        {
          v14 = v41;
        }

        else
        {
          if (v50 == 0xFFFF)
          {
            v42 = 0;
          }

          else
          {
            v42 = __b + 16 * v50;
          }

          v43 = hlp_Align(a2, a3, a4, v10, v12, v42);
          v44 = v43;
          if ((v43 & 0x80000000) != 0)
          {
            v14 = v43;
          }

          else
          {
            v45 = StringList_GetCountStrings(a3);
            v46 = StringList_GetCountStrings(a4);
            if (v45 == v46)
            {
              v14 = v44;
            }

            else
            {
              v14 = 2347769856;
            }

            if (a2 && v45 == v46)
            {
              if (StringList_GetCountStrings(a2) == v45)
              {
                v14 = v44;
              }

              else
              {
                v14 = 2347769856;
              }
            }
          }
        }
      }
    }

    goto LABEL_21;
  }

  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_52;
    }

    v28 = 0;
    while (1)
    {
      v29 = StringList_Append(a3, "*");
      if (v29)
      {
        v14 = LH_ERROR_to_VERROR(v29);
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

        if (a2)
        {
LABEL_46:
          v30 = StringList_Append(a2, "*");
          if (v30)
          {
            v14 = LH_ERROR_to_VERROR(v30);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v14 = 0;
          }
        }
      }

      else
      {
        v14 = 0;
        if (a2)
        {
          goto LABEL_46;
        }
      }

      if (v12 <= ++v28)
      {
        goto LABEL_21;
      }
    }
  }

  if (v11)
  {
LABEL_52:
    v14 = 0;
    goto LABEL_21;
  }

  v26 = 0;
  do
  {
    v27 = StringList_Append(a4, "*");
    if (v27)
    {
      v14 = LH_ERROR_to_VERROR(v27);
      if ((v14 & 0x80000000) != 0)
      {
        break;
      }
    }

    else
    {
      v14 = 0;
    }

    ++v26;
  }

  while (v10 > v26);
LABEL_21:
  v20 = __b;
  if (__b)
  {
    v21 = v49;
    if (v49)
    {
      v22 = 0;
      v23 = 8;
      do
      {
        v24 = *(__b + v23);
        if (v24)
        {
          heap_Free(*(a1 + 8), v24);
          v21 = v49;
        }

        ++v22;
        v23 += 16;
      }

      while (v22 < v21);
      v20 = __b;
    }

    heap_Free(*(a1 + 8), v20);
  }

  return v14;
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
        if (!cstdlib_strcmp(v20, v21))
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
          cstdlib_memmove(v55, v28[v32], 4 * *(v56 + 4));
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