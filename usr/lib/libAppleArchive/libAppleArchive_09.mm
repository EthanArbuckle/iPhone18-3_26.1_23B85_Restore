uint64_t stateCollectorStreamWriteHeader(void *a1, AAHeader header)
{
  v123 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v117 = 0;
  value = 0;
  v115 = 0;
  v116 = -1;
  v114 = 0;
  hash_function = 0;
  v5 = *(v4 + 56);
  *(a1 + 1) = 0u;
  v6 = a1 + 2;
  v7 = a1[1];
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  v9.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v9);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, &value), FieldUInt <= 1) ? (v14 = 1) : (v14 = FieldUInt), v14 <= 0))
  {
    v16 = "no TYP";
    v17 = 246;
    goto LABEL_9;
  }

  if (value != 77)
  {
    v20.ikey = 5521744;
    v21 = AAHeaderGetKeyIndex(header, v20);
    if ((v21 & 0x80000000) != 0 || ((FieldString = AAHeaderGetFieldString(header, v21, 0x400uLL, __s, 0), FieldString <= 1) ? (v23 = 1) : (v23 = FieldString), v23 <= 0))
    {
      v16 = "no PAT";
      v17 = 248;
      goto LABEL_9;
    }

    v24.ikey = 5784649;
    v25 = AAHeaderGetKeyIndex(header, v24);
    if ((v25 & 0x80000000) != 0 || ((v26 = AAHeaderGetFieldUInt(header, v25, &v115), v26 <= 1) ? (v27 = 1) : (v27 = v26), v27 <= 0))
    {
      v16 = "no IDX";
      v17 = 249;
      goto LABEL_9;
    }

    v28.ikey = 5915721;
    v29 = AAHeaderGetKeyIndex(header, v28);
    if ((v29 & 0x80000000) != 0 || ((v30 = AAHeaderGetFieldUInt(header, v29, &v114), v30 <= 1) ? (v31 = 1) : (v31 = v30), v31 <= 0))
    {
      v16 = "no IDZ";
      v17 = 250;
      goto LABEL_9;
    }

    v32 = v5 - 1;
    v33 = value;
    if (value == 70)
    {
      v34.ikey = 3295315;
      v35 = AAHeaderGetKeyIndex(header, v34);
      if ((v35 & 0x80000000) != 0 || ((FieldHash = AAHeaderGetFieldHash(header, v35, 0x20uLL, &hash_function, v119), FieldHash <= 1) ? (v37 = 1) : (v37 = FieldHash), v37 <= 0))
      {
        v111 = __s;
        v16 = "no hash: %s";
        v17 = 255;
        goto LABEL_9;
      }

      v38.ikey = 5917011;
      v39 = AAHeaderGetKeyIndex(header, v38);
      if ((v39 & 0x80000000) != 0 || ((v40 = AAHeaderGetFieldUInt(header, v39, &v117), v40 <= 1) ? (v41 = 1) : (v41 = v40), v41 <= 0))
      {
        v111 = __s;
        v16 = "no SIZ: %s";
        v17 = 256;
        goto LABEL_9;
      }

      v42.ikey = 4410440;
      v43 = AAHeaderGetKeyIndex(header, v42);
      if ((v43 & 0x80000000) != 0 || ((v44 = AAHeaderGetFieldUInt(header, v43, &v116), v44 <= 1) ? (v45 = 1) : (v45 = v44), v45 <= 0))
      {
        v116 = -1;
      }

      if (v7 != v32)
      {
        goto LABEL_66;
      }

      size[0] = 0;
      offset = 0;
      v46.ikey = 4408665;
      v47 = AAHeaderGetKeyIndex(header, v46);
      if ((v47 & 0x80000000) == 0)
      {
        FieldBlob = AAHeaderGetFieldBlob(header, v47, size, &offset);
        v49 = FieldBlob <= 1 ? 1 : FieldBlob;
        if (v49 >= 1)
        {
          *v6 = size[0];
        }
      }

      v33 = value;
    }

    if ((v33 & 0xFFFFFFFFFFFFFFFDLL) != 0x44 || v7 != v32)
    {
      goto LABEL_67;
    }

    size[0] = 0;
    offset = 0;
    v50.ikey = 5521752;
    v51 = AAHeaderGetKeyIndex(header, v50);
    if ((v51 & 0x80000000) == 0)
    {
      v52 = AAHeaderGetFieldBlob(header, v51, size, &offset);
      v53 = v52 <= 1 ? 1 : v52;
      if (v53 >= 1)
      {
        a1[4] = size[0];
      }
    }

    v54.ikey = 4997953;
    v55 = AAHeaderGetKeyIndex(header, v54);
    if ((v55 & 0x80000000) == 0)
    {
      v56 = AAHeaderGetFieldBlob(header, v55, size, &offset);
      v57 = v56 <= 1 ? 1 : v56;
      if (v57 >= 1)
      {
        a1[6] = size[0];
      }
    }

LABEL_66:
    v33 = value;
LABEL_67:
    if (v33 == 76 && ((v58.ikey = 4935244, v59 = AAHeaderGetKeyIndex(header, v58), (v59 & 0x80000000) != 0) || ((v60 = AAHeaderGetFieldString(header, v59, 0x400uLL, size, 0), v60 <= 1) ? (v61 = 1) : (v61 = v60), v61 <= 0)))
    {
      v16 = "no LNK";
      v17 = 284;
    }

    else
    {
      v62 = *(v4 + 64);
      if (*(v4 + 72) >= v62)
      {
        v63 = 2 * v62;
        v64 = v62 == 0;
        v65 = 32;
        if (!v64)
        {
          v65 = v63;
        }

        *(v4 + 64) = v65;
        if ((992 * v65) >= 0x2000000001)
        {
          *__error() = 12;
LABEL_104:
          *(v4 + 80) = 0;
          v18 = *__error();
          v16 = "malloc";
          v17 = 292;
          goto LABEL_10;
        }

        v66 = *(v4 + 80);
        v67 = realloc(v66, 992 * v65);
        if (!v67)
        {
          free(v66);
          goto LABEL_104;
        }

        *(v4 + 80) = v67;
      }

      LODWORD(offset) = -1;
      v68 = strlen(__s);
      if ((StringTableAppend(*(v4 + 32), __s, v68, &offset, v69, v70, v71, v72) & 0x80000000) == 0)
      {
        v74 = *(v4 + 72);
        v73 = *(v4 + 80);
        *(v4 + 72) = v74 + 1;
        v75 = v73 + 992 * v74;
        if (v73)
        {
          memset_s((v73 + 992 * v74), 0x3E0uLL, 0, 0x3E0uLL);
        }

        *v75 = offset;
        *(v75 + 136) = -1;
        v76 = a1[1];
        v77 = v75 + 272 + 72 * v76;
        *v77 = value;
        *(v77 + 16) = v117;
        *(v77 + 24) = v115;
        *(v77 + 32) = v114;
        if (hash_function)
        {
          v78 = *v119;
          v79 = v75 + 272 + 72 * v76;
          *(v79 + 56) = v120;
          *(v79 + 40) = v78;
        }

        if (v7 != v32)
        {
          goto LABEL_7;
        }

        v80 = *v6;
        if (*v6)
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
LABEL_153:
            v16 = "YEC blob";
            v17 = 315;
            goto LABEL_9;
          }

          v81 = (v75 + 40);
          v82 = *(v75 + 48);
          if (v82 < v80)
          {
            do
            {
              while (!v82)
              {
                v82 = 0x4000;
                if (v80 <= 0x4000)
                {
                  v84 = (v75 + 56);
                  v82 = 0x4000;
                  goto LABEL_107;
                }
              }

              v83 = v82 >> 1;
              if ((v82 & (v82 >> 1)) != 0)
              {
                v83 = v82 & (v82 >> 1);
              }

              v82 += v83;
            }

            while (v82 < v80);
            v84 = (v75 + 56);
            if (v82 >= 0x2000000001)
            {
              *__error() = 12;
              goto LABEL_152;
            }

LABEL_107:
            v85 = *v84;
            v86 = v82;
            v87 = realloc(*v84, v82);
            if (v87)
            {
              *(v75 + 48) = v86;
              *(v75 + 56) = v87;
              goto LABEL_109;
            }

            free(v85);
LABEL_152:
            *v84 = 0;
            *v81 = 0;
            *(v75 + 48) = 0;
            goto LABEL_153;
          }

LABEL_109:
          a1[3] = v81;
        }

        v88 = a1[4];
        if (v88)
        {
          if ((v88 & 0x8000000000000000) != 0)
          {
LABEL_156:
            v16 = "XAT blob";
            v17 = 320;
            goto LABEL_9;
          }

          v89 = (v75 + 88);
          v90 = *(v75 + 96);
          if (v90 < v88)
          {
            do
            {
              while (!v90)
              {
                v90 = 0x4000;
                if (v88 <= 0x4000)
                {
                  v92 = (v75 + 104);
                  v90 = 0x4000;
                  goto LABEL_122;
                }
              }

              v91 = v90 >> 1;
              if ((v90 & (v90 >> 1)) != 0)
              {
                v91 = v90 & (v90 >> 1);
              }

              v90 += v91;
            }

            while (v90 < v88);
            v92 = (v75 + 104);
            if (v90 >= 0x2000000001)
            {
              *__error() = 12;
              goto LABEL_155;
            }

LABEL_122:
            v93 = *v92;
            v94 = realloc(*v92, v90);
            if (v94)
            {
              *(v75 + 96) = v90;
              *(v75 + 104) = v94;
              goto LABEL_124;
            }

            free(v93);
LABEL_155:
            *v92 = 0;
            *v89 = 0;
            *(v75 + 96) = 0;
            goto LABEL_156;
          }

LABEL_124:
          a1[5] = v89;
        }

        v95 = a1[6];
        if (v95)
        {
          if ((v95 & 0x8000000000000000) != 0)
          {
LABEL_160:
            v16 = "ACL blob";
            v17 = 325;
            goto LABEL_9;
          }

          v96 = (v75 + 112);
          v97 = *(v75 + 120);
          if (v97 < v95)
          {
            do
            {
              while (!v97)
              {
                v97 = 0x4000;
                if (v95 <= 0x4000)
                {
                  v99 = (v75 + 128);
                  v97 = 0x4000;
                  goto LABEL_137;
                }
              }

              v98 = v97 >> 1;
              if ((v97 & (v97 >> 1)) != 0)
              {
                v98 = v97 & (v97 >> 1);
              }

              v97 += v98;
            }

            while (v97 < v95);
            v99 = (v75 + 128);
            if (v97 >= 0x2000000001)
            {
              *__error() = 12;
              goto LABEL_159;
            }

LABEL_137:
            v100 = *v99;
            v101 = realloc(*v99, v97);
            if (v101)
            {
              *(v75 + 120) = v97;
              *(v75 + 128) = v101;
              goto LABEL_139;
            }

            free(v100);
LABEL_159:
            *v99 = 0;
            *v96 = 0;
            *(v75 + 120) = 0;
            goto LABEL_160;
          }

LABEL_139:
          a1[7] = v96;
        }

        if (value != 76)
        {
          goto LABEL_166;
        }

        v102 = strlen(size) + 1;
        v104 = (v75 + 64);
        v103 = *(v75 + 64);
        v105 = v103 + v102;
        if (!__CFADD__(v103, v102) && (v105 & 0x8000000000000000) == 0)
        {
          v106 = *(v75 + 72);
          if (v106 < v105)
          {
            do
            {
              while (!v106)
              {
                v106 = 0x4000;
                if (v105 <= 0x4000)
                {
                  v108 = (v75 + 80);
                  v106 = 0x4000;
                  goto LABEL_163;
                }
              }

              v107 = v106 >> 1;
              if ((v106 & (v106 >> 1)) != 0)
              {
                v107 = v106 & (v106 >> 1);
              }

              v106 += v107;
            }

            while (v106 < v105);
            v108 = (v75 + 80);
            if (v106 >= 0x2000000001)
            {
              *__error() = 12;
              goto LABEL_170;
            }

LABEL_163:
            v110 = *v108;
            v109 = realloc(*v108, v106);
            if (v109)
            {
              *(v75 + 72) = v106;
              *(v75 + 80) = v109;
              v103 = *(v75 + 64);
              goto LABEL_165;
            }

            free(v110);
LABEL_170:
            *v108 = 0;
            *v104 = 0;
            *(v75 + 72) = 0;
            goto LABEL_171;
          }

          v109 = *(v75 + 80);
LABEL_165:
          memcpy(&v109[v103], size, v102);
          *v104 += v102;
          if ((v102 & 0x8000000000000000) == 0)
          {
LABEL_166:
            if ((aaEntryAttributesInitWithHeader((v75 + 144), (v75 + 216), 0, header) & 0x80000000) == 0)
            {
              result = 0;
              *(v75 + 136) = v116;
              goto LABEL_11;
            }

            v16 = "attributes from header";
            v17 = 333;
            goto LABEL_9;
          }
        }

LABEL_171:
        v16 = "LNK blob";
        v17 = 331;
        goto LABEL_9;
      }

      v16 = "string table append";
      v17 = 295;
    }

LABEL_9:
    v18 = 0;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", v17, 27, v18, v16, v11, v12, v111);
    result = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

LABEL_7:
  result = 0;
LABEL_11:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t stateCollectorStreamWriteBlob(void *a1, int a2, void *__src, rsize_t __smax, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1[3];
  v12 = *&a2 & 0xFFFFFFLL;
  if (v11)
  {
    v13 = v12 == 4408665;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_5;
  }

  if (a1[2] < __smax)
  {
    v18 = "invalid blob size";
    v19 = 345;
    goto LABEL_86;
  }

  v20 = *v11 + __smax;
  if (__CFADD__(*v11, __smax) || (v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  v21 = v11[1];
  if (v21 < v20)
  {
    do
    {
      while (!v21)
      {
        v21 = 0x4000;
        if (v20 <= 0x4000)
        {
          v21 = 0x4000;
          goto LABEL_49;
        }
      }

      v22 = v21 >> 1;
      if ((v21 & (v21 >> 1)) != 0)
      {
        v22 = v21 & (v21 >> 1);
      }

      v21 += v22;
    }

    while (v21 < v20);
    if (v21 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_68;
    }

LABEL_49:
    v29 = v11[2];
    v30 = realloc(v29, v21);
    if (v30)
    {
      v11[1] = v21;
      v11[2] = v30;
      goto LABEL_51;
    }

    free(v29);
LABEL_68:
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    goto LABEL_69;
  }

LABEL_51:
  v31 = v11[2];
  if (__src)
  {
    memcpy((v31 + *v11), __src, __smax);
  }

  else if (v31)
  {
    memset_s((v31 + *v11), __smax, 0, __smax);
  }

  *v11 += __smax;
  if ((__smax & 0x8000000000000000) != 0)
  {
LABEL_69:
    v18 = "blob append";
    v19 = 346;
    goto LABEL_86;
  }

  a1[2] -= __smax;
LABEL_5:
  v14 = a1[5];
  if (v14)
  {
    v15 = v12 == 5521752;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    if (a1[4] >= __smax)
    {
      v23 = *v14 + __smax;
      if (!__CFADD__(*v14, __smax) && (v23 & 0x8000000000000000) == 0)
      {
        v24 = v14[1];
        if (v24 >= v23)
        {
LABEL_61:
          v34 = v14[2];
          if (__src)
          {
            memcpy((v34 + *v14), __src, __smax);
          }

          else if (v34)
          {
            memset_s((v34 + *v14), __smax, 0, __smax);
          }

          *v14 += __smax;
          if ((__smax & 0x8000000000000000) == 0)
          {
            a1[4] -= __smax;
            goto LABEL_9;
          }
        }

        else
        {
          do
          {
            while (!v24)
            {
              v24 = 0x4000;
              if (v23 <= 0x4000)
              {
                v24 = 0x4000;
                goto LABEL_59;
              }
            }

            v25 = v24 >> 1;
            if ((v24 & (v24 >> 1)) != 0)
            {
              v25 = v24 & (v24 >> 1);
            }

            v24 += v25;
          }

          while (v24 < v23);
          if (v24 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_81;
          }

LABEL_59:
          v32 = v14[2];
          v33 = realloc(v32, v24);
          if (v33)
          {
            v14[1] = v24;
            v14[2] = v33;
            goto LABEL_61;
          }

          free(v32);
LABEL_81:
          v14[1] = 0;
          v14[2] = 0;
          *v14 = 0;
        }
      }

      v18 = "blob append";
      v19 = 352;
    }

    else
    {
      v18 = "invalid blob size";
      v19 = 351;
    }

LABEL_86:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteBlob", v19, 27, 0, v18, a7, a8, v38);
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  result = 0;
  v17 = a1[7];
  if (v17 && v12 == 4997953)
  {
    if (a1[6] >= __smax)
    {
      v26 = *v17 + __smax;
      if (!__CFADD__(*v17, __smax) && (v26 & 0x8000000000000000) == 0)
      {
        v27 = v17[1];
        if (v27 >= v26)
        {
LABEL_74:
          v37 = v17[2];
          if (__src)
          {
            memcpy((v37 + *v17), __src, __smax);
          }

          else if (v37)
          {
            memset_s((v37 + *v17), __smax, 0, __smax);
          }

          *v17 += __smax;
          if ((__smax & 0x8000000000000000) == 0)
          {
            result = 0;
            a1[6] -= __smax;
            return result;
          }
        }

        else
        {
          do
          {
            while (!v27)
            {
              v27 = 0x4000;
              if (v26 <= 0x4000)
              {
                v27 = 0x4000;
                goto LABEL_72;
              }
            }

            v28 = v27 >> 1;
            if ((v27 & (v27 >> 1)) != 0)
            {
              v28 = v27 & (v27 >> 1);
            }

            v27 += v28;
          }

          while (v27 < v26);
          if (v27 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_84;
          }

LABEL_72:
          v35 = v17[2];
          v36 = realloc(v35, v27);
          if (v36)
          {
            v17[1] = v27;
            v17[2] = v36;
            goto LABEL_74;
          }

          free(v35);
LABEL_84:
          v17[1] = 0;
          v17[2] = 0;
          *v17 = 0;
        }
      }

      v18 = "blob append";
      v19 = 358;
    }

    else
    {
      v18 = "invalid blob size";
      v19 = 357;
    }

    goto LABEL_86;
  }

  return result;
}

uint64_t entryVectorCmp(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t entryIndexCmpHLC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 992 * *a2 + 136);
  v4 = *(a1 + 992 * *a3 + 136);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4 < v3;
  }
}

uint64_t computePatchesWorkerProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v105 = *MEMORY[0x29EDCA608];
  v9 = *v8;
  bzero(v104, 0x400uLL);
  memset(v103, 0, sizeof(v103));
  memset(v102, 0, sizeof(v102));
  v99 = 0;
  st_size = 0;
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  *v92 = 0u;
  *v93 = 0u;
  v15 = v8[1];
  if (v15 >= *(v9 + 72))
  {
    v49 = "invalid entry";
    v50 = 510;
    goto LABEL_54;
  }

  v16 = (*(v9 + 80) + 992 * v15);
  v87 = v8;
  __s = (*(*(v9 + 32) + 32) + *(*(*(v9 + 32) + 8) + 16 * *v16));
  v86 = *(v9 + 56);
  if (v86)
  {
    v17 = 0;
    v84 = *(v9 + 80) + 992 * v15;
    v85 = v16 + 68;
    while (1)
    {
      v18 = v8[1];
      *&offset[0] = 0;
      *&size.st_dev = 0;
      EntryHeader = stateLoadEntryHeader(v9, v17, v18);
      v22 = EntryHeader;
      if (!EntryHeader)
      {
        v51 = "loading entry header";
        v52 = 728;
        goto LABEL_52;
      }

      v23.ikey = 5521732;
      KeyIndex = AAHeaderGetKeyIndex(EntryHeader, v23);
      if ((KeyIndex & 0x80000000) != 0 || ((FieldBlob = AAHeaderGetFieldBlob(v22, KeyIndex, &size, offset), FieldBlob <= 1) ? (v26 = 1) : (v26 = FieldBlob), v26 <= 0))
      {
        v51 = "blob not found";
        v52 = 729;
        goto LABEL_52;
      }

      if (*&size.st_dev >= 0x2000000001uLL)
      {
        break;
      }

      v27 = malloc(*&size.st_dev);
      if (!v27)
      {
        v58 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryBlob", 732, 27, *v58, "malloc", v59, v60, v83);
        goto LABEL_53;
      }

      v28 = *(*(v9 + 80) + 992 * v18 + 72 * v17 + 296);
      header = v22;
      EncodedSize = AAHeaderGetEncodedSize(v22);
      v32 = *&size.st_dev;
      if (*&size.st_dev)
      {
        v33 = 0;
        v90 = EncodedSize + *&offset[0] + v28;
        while (1)
        {
          v34 = v32 - v33 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v32 - v33;
          v35 = *(*(v9 + 8) + 8 * v17 + 24);
          if (!v35[4])
          {
            break;
          }

          if (v32 == v33)
          {
            v36 = 0;
          }

          else
          {
            v36 = 0;
            v37 = &v27[v33];
            v38 = v90 + v33;
            v39 = v34;
            while (1)
            {
              v40 = (v35[4])(*v35, v37, v39, v38);
              if (v40 < 0)
              {
                break;
              }

              if (v40)
              {
                v37 += v40;
                v36 += v40;
                v38 += v40;
                v39 -= v40;
                if (v39)
                {
                  continue;
                }
              }

              goto LABEL_26;
            }

            v36 = v40;
          }

LABEL_26:
          if (v36 != v34)
          {
            break;
          }

          v33 += v34;
          v32 = *&size.st_dev;
          if (v33 >= *&size.st_dev)
          {
            goto LABEL_28;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryBlob", 742, 27, 0, "loading entry blob", v30, v31, v83);
        v22 = header;
        goto LABEL_53;
      }

LABEL_28:
      AAHeaderDestroy(header);
      *(v102 + v17) = v27;
      v41 = *&size.st_dev;
      *(v103 + v17) = *&size.st_dev;
      if (v41 != *&v85[18 * v17 + 4])
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 517, 27, 0, "size mismatch: %s", v13, v14, __s);
        goto LABEL_55;
      }

      ++v17;
      v16 = v84;
      v8 = v87;
      if (v17 >= *(v9 + 56))
      {
        goto LABEL_30;
      }
    }

    v51 = "blob too large";
    v52 = 730;
LABEL_52:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryBlob", v52, 27, 0, v51, v20, v21, v83);
    v27 = 0;
LABEL_53:
    AAHeaderDestroy(v22);
    free(v27);
    *(v102 + v17) = 0;
    *(v103 + v17) = 0;
    v83 = __s;
    v49 = "loading file contents: %s";
    v50 = 516;
    goto LABEL_54;
  }

LABEL_30:
  v42 = v86 - 1;
  if ((**(v9 + 8) & 4) == 0 || (v43 = strrchr(__s, 46)) == 0 || strcasecmp(v43, ".dmg"))
  {
LABEL_33:
    v44 = 1;
    HIDWORD(v98) = 1;
    v45 = *(v102 + v42);
    *&v95 = *(v9 + 48);
    *(&v95 + 1) = v102;
    *&v96 = v103;
    *(&v96 + 1) = v45;
    *&v97 = *(v103 + v42);
    LODWORD(v98) = 2 * (*(*v8 + 16) != 0);
    if ((BXDiff5(&v95, &v99, &st_size, v10, v11, v12, v13, v14) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v49 = "BXDiff5";
    v50 = 587;
LABEL_54:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", v50, 27, 0, v49, v13, v14, v83);
    goto LABEL_55;
  }

  if (snprintf(v104, 0x400uLL, "%s/0x%08zx", (v9 + 92), v8[1]) >= 0x400)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 526, 27, 0, "patch path: %s", v53, v54, __s);
    goto LABEL_55;
  }

  v63 = v16;
  v64 = strlen(v104);
  v65 = v64 + 1;
  if (v64 + 1 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_74:
    v93[1] = 0;
    v49 = "aaStrdup";
    v50 = 528;
    goto LABEL_54;
  }

  v68 = malloc(v64 + 1);
  if (!v68)
  {
    goto LABEL_74;
  }

  v69 = v68;
  memcpy(v68, v104, v65);
  v93[1] = v69;
  v70 = *(v9 + 56);
  if (v70 >= 0x400000001)
  {
    *__error() = 12;
    v92[1] = 0;
LABEL_87:
    v49 = "aaCalloc";
    v50 = 532;
    goto LABEL_54;
  }

  v71 = calloc(v70, 8uLL);
  v92[1] = v71;
  if (!v71)
  {
    goto LABEL_87;
  }

  if (*(v9 + 56))
  {
    v72 = v71;
    v73 = 0;
    while (1)
    {
      snprintf(v104, 0x400uLL, "%s-%zd.dmg", v69, v73);
      v74 = strlen(v104);
      v75 = v74 + 1;
      if (v74 + 1 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_95:
        v49 = "aaStrdup";
        v50 = 540;
        goto LABEL_54;
      }

      v76 = malloc(v74 + 1);
      if (!v76)
      {
        goto LABEL_95;
      }

      v77 = v76;
      memcpy(v76, v104, v75);
      v78 = v73 >= *(v9 + 56) - 1 ? v93 : v72;
      *v78 = v77;
      if ((storeFileContents(v104, *(v102 + v73), *(v103 + v73)) & 0x80000000) != 0)
      {
        break;
      }

      ++v73;
      v81 = *(v9 + 56);
      ++v72;
      if (v73 >= v81)
      {
        v82 = v81 - 1;
        goto LABEL_89;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 547, 27, 0, "storeFileContents %s", v79, v80, v104);
    goto LABEL_55;
  }

  v82 = -1;
LABEL_89:
  v92[0] = v82;
  LODWORD(v94) = 1;
  DWORD2(v94) = 1;
  saveThreadErrorContext(offset);
  v16 = v63;
  if (RawImageDiff(v92))
  {
    unlink(v93[1]);
    v8 = v87;
    if ((**(v9 + 8) & 8) != 0)
    {
      v49 = "RawImageDiff";
      v50 = 574;
      goto LABEL_54;
    }

    restoreThreadErrorContext(offset);
    goto LABEL_33;
  }

  memset(&size, 0, sizeof(size));
  if (stat(v93[1], &size))
  {
    v49 = "stat";
    v50 = 564;
    goto LABEL_54;
  }

  v44 = 0;
  st_size = size.st_size;
  v8 = v87;
LABEL_34:
  CompressedSize = ParallelCompressionGetCompressedSize(*(v102 + v42), *(v103 + v42), 1);
  if (CompressedSize <= 0)
  {
    CompressedSize = *(v103 + v42);
  }

  v47 = st_size;
  if (CompressedSize >= st_size)
  {
    if ((v44 & 1) == 0)
    {
      free(*(v16 + 7));
      memset_s(v16 + 10, 0x18uLL, 0, 0x18uLL);
      v48 = 0;
      *(v16 + 2) = st_size;
      v16[8] = 1;
      goto LABEL_56;
    }

    if (st_size < *(*(v9 + 8) + 120))
    {
      *(v16 + 3) = v99;
      v99 = 0;
LABEL_70:
      v48 = 0;
      *(v16 + 2) = v47;
      goto LABEL_56;
    }

    if (snprintf(v104, 0x400uLL, "%s/0x%08zx", (v9 + 92), v8[1]) >= 0x400)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 614, 27, 0, "patch path: %s", v61, v62, __s);
      goto LABEL_55;
    }

    if ((storeFileContents(v104, v99, st_size) & 0x80000000) == 0)
    {
      v47 = st_size;
      goto LABEL_70;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 615, 27, 0, "storing patch: %s", v66, v67, __s);
LABEL_55:
    v48 = 0xFFFFFFFFLL;
    goto LABEL_56;
  }

  v16[2] = 3;
  if (*(v9 + 24) >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "ARCHIVE (smaller than patch): %s\n", __s);
  }

  v48 = 0;
LABEL_56:
  if (*(v9 + 56))
  {
    v55 = 0;
    do
    {
      free(*(v102 + v55));
      if (v92[1])
      {
        free(*(v92[1] + v55));
      }

      ++v55;
    }

    while (v55 < *(v9 + 56));
  }

  free(v92[1]);
  free(v93[0]);
  free(v93[1]);
  free(v99);
  v56 = *MEMORY[0x29EDCA608];
  return v48;
}

AAHeader stateLoadEntryHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 80) + 992 * a3 + 72 * a2 + 296);
  v6 = malloc(0x10000uLL);
  v9 = v6;
  if (v6)
  {
    v10 = *(*(a1 + 8) + 8 * a2 + 24);
    if (*(v10 + 32))
    {
      v11 = 0;
      v12 = 6;
      v13 = v6;
      v14 = v5;
      while (1)
      {
        v15 = (*(v10 + 32))(*v10, v13, v12, v14);
        if (v15 < 0)
        {
          break;
        }

        if (v15)
        {
          v13 += v15;
          v11 += v15;
          v14 += v15;
          v12 -= v15;
          if (v12)
          {
            continue;
          }
        }

        if (v11 != 6)
        {
          break;
        }

        if (*v9 != 826360153 && *v9 != 825246017)
        {
          v16 = "invalid header magic";
          v17 = 706;
          goto LABEL_12;
        }

        v21 = *(*(a1 + 8) + 8 * a2 + 24);
        if (!v21[4])
        {
          goto LABEL_28;
        }

        v22 = *(v9 + 2);
        if (*(v9 + 2))
        {
          v23 = 0;
          v24 = v9;
          v25 = *(v9 + 2);
          while (1)
          {
            v26 = (v21[4])(*v21, v24, v25, v5);
            if (v26 < 0)
            {
              break;
            }

            if (v26)
            {
              v24 += v26;
              v23 += v26;
              v5 += v26;
              v25 -= v26;
              if (v25)
              {
                continue;
              }
            }

            goto LABEL_25;
          }

          v23 = v26;
        }

        else
        {
          v23 = 0;
        }

LABEL_25:
        if (v23 == v22)
        {
          v27 = AAHeaderCreateWithEncodedData(v22, v9);
          if (v27)
          {
            v19 = v27;
            free(v9);
            return v19;
          }

          v16 = "invalid header";
          v17 = 711;
        }

        else
        {
LABEL_28:
          v16 = "reading header";
          v17 = 708;
        }

        goto LABEL_12;
      }
    }

    v16 = "reading header magic";
    v17 = 705;
LABEL_12:
    v18 = 0;
  }

  else
  {
    v18 = *__error();
    v16 = "malloc";
    v17 = 702;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryHeader", v17, 27, v18, v16, v7, v8, v28);
  free(v9);
  AAHeaderDestroy(0);
  return 0;
}

void *subArchiveCreate(unint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = malloc(0x28uLL);
  v9 = v8;
  if (v8)
  {
    memset_s(v8, 0x28uLL, 0, 0x28uLL);
    *v9 = a2;
    *(v9 + 1) = a3;
    *(v9 + 4) = a4;
    v10 = AATempStreamOpen(a1);
    *(v9 + 3) = v10;
    if (!v10)
    {
      v14 = "AATempStreamOpen";
      v15 = 166;
      goto LABEL_8;
    }

    if (*v9)
    {
      v13 = AACompressionOutputStreamOpen(v10, *v9, *(v9 + 1), 0, *(v9 + 4));
      *(v9 + 4) = v13;
      if (!v13)
      {
        v14 = "AACompressionOutputStreamOpen";
        v15 = 170;
LABEL_8:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "subArchiveCreate", v15, 27, 0, v14, v11, v12, v20);
        AAByteStreamClose(*(v9 + 4));
        AAByteStreamClose(*(v9 + 3));
        free(v9);
        return 0;
      }
    }
  }

  else
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "subArchiveCreate", 160, 27, *v16, "malloc", v17, v18, v20);
  }

  return v9;
}

uint64_t encodeEntry(uint64_t a1, unsigned int a2, const char *a3)
{
  v6 = AAHeaderCreate();
  v9 = v6;
  if (!v6)
  {
    v20 = "AAHeaderCreate";
    v21 = 469;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeEntry", v21, 27, 0, v20, v7, v8, v24);
    v22 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v10.ikey = 5265748;
  v11 = AAHeaderSetFieldUInt(v6, 0xFFFFFFFF, v10, a2);
  v12 = strlen(a3);
  v13.ikey = 5521744;
  if (AAHeaderSetFieldString(v9, 0xFFFFFFFF, v13, a3, v12) < 0 || v11 < 0)
  {
    v20 = "setup header";
    v21 = 474;
    goto LABEL_18;
  }

  EncodedSize = AAHeaderGetEncodedSize(v9);
  EncodedData = AAHeaderGetEncodedData(v9);
  if (*(a1 + 24))
  {
    if (EncodedSize)
    {
      v16 = EncodedData;
      v17 = 0;
      v18 = EncodedSize;
      while (1)
      {
        v19 = (*(a1 + 24))(*a1, v16, v18);
        if (v19 < 1)
        {
          break;
        }

        v16 += v19;
        v17 += v19;
        v18 -= v19;
        if (!v18)
        {
          goto LABEL_15;
        }
      }

      v17 = v19;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = -1;
  }

LABEL_15:
  if (v17 != EncodedSize)
  {
    v20 = "write header";
    v21 = 478;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_19:
  AAHeaderDestroy(v9);
  return v22;
}

uint64_t encodeYOPEntry(AAByteStream_impl *a1, unsigned int a2, const char *a3, const char *a4, AAByteStream s)
{
  if (s)
  {
    v12 = AAByteStreamSeek(s, 0, 2);
    if (v12 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeYOPEntry", 417, 27, 0, "seek dat stream", v10, v11, v37);
      v13 = 0;
LABEL_37:
      v35 = 0xFFFFFFFFLL;
      goto LABEL_38;
    }
  }

  else
  {
    v12 = -1;
  }

  v14 = AAHeaderCreate();
  v13 = v14;
  if (!v14)
  {
    v32 = "AAHeaderCreate";
    v33 = 422;
    goto LABEL_36;
  }

  v17.ikey = 5265748;
  v18 = AAHeaderSetFieldUInt(v14, 0xFFFFFFFF, v17, 0x4DuLL);
  v19.ikey = 5263193;
  v20 = (AAHeaderSetFieldUInt(v13, 0xFFFFFFFF, v19, a2) | v18) >= 0;
  if (a3)
  {
    v21 = strlen(a3);
    v22.ikey = 5521744;
    if (AAHeaderSetFieldString(v13, 0xFFFFFFFF, v22, a3, v21) < 0)
    {
      v20 = 0;
    }
  }

  if (a4)
  {
    v23 = strlen(a4);
    v24.ikey = 4997708;
    if (AAHeaderSetFieldString(v13, 0xFFFFFFFF, v24, a4, v23) < 0)
    {
      v20 = 0;
    }
  }

  if (v12 != -1 && (v25.ikey = 5521732, AAHeaderSetFieldBlob(v13, 0xFFFFFFFF, v25, v12) < 0) || !v20)
  {
    v32 = "setup header";
    v33 = 428;
    goto LABEL_36;
  }

  EncodedSize = AAHeaderGetEncodedSize(v13);
  EncodedData = AAHeaderGetEncodedData(v13);
  if (*(a1 + 3))
  {
    if (EncodedSize)
    {
      v28 = EncodedData;
      v29 = 0;
      v30 = EncodedSize;
      while (1)
      {
        v31 = (*(a1 + 3))(*a1, v28, v30);
        if (v31 < 1)
        {
          break;
        }

        v28 += v31;
        v29 += v31;
        v30 -= v31;
        if (!v30)
        {
          goto LABEL_26;
        }
      }

      v29 = v31;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = -1;
  }

LABEL_26:
  if (v29 != EncodedSize)
  {
    v32 = "write header";
    v33 = 432;
    goto LABEL_36;
  }

  if (v12 != -1)
  {
    if (s)
    {
      if (AAByteStreamSeek(s, 0, 0) < 0)
      {
        v32 = "seek dat stream";
        v33 = 438;
        goto LABEL_36;
      }

      v34 = AAByteStreamProcess(s, a1);
      if ((v34 & 0x8000000000000000) == 0 && v34 == v12)
      {
        goto LABEL_32;
      }
    }

    v32 = "write blob";
    v33 = 441;
LABEL_36:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeYOPEntry", v33, 27, 0, v32, v15, v16, v37);
    goto LABEL_37;
  }

LABEL_32:
  v35 = 0;
LABEL_38:
  AAHeaderDestroy(v13);
  return v35;
}

void subArchiveDestroy(AAByteStream *a1)
{
  if (a1)
  {
    AAByteStreamClose(a1[4]);
    AAByteStreamClose(a1[3]);

    free(a1);
  }
}

uint64_t aaEntryYECBlobInitWithEncodedData(void *a1, void *__src, rsize_t __smax, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  if ((__smax & 0x8000000000000000) != 0)
  {
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithEncodedData", 22, 105, 0, "malloc", a7, a8, v17);
    return 0xFFFFFFFFLL;
  }

  v11 = a1[1];
  if (v11 < __smax)
  {
    do
    {
      while (!v11)
      {
        v11 = 0x4000;
        if (__smax <= 0x4000)
        {
          v11 = 0x4000;
          goto LABEL_12;
        }
      }

      v12 = v11 >> 1;
      if ((v11 & (v11 >> 1)) != 0)
      {
        v12 = v11 & (v11 >> 1);
      }

      v11 += v12;
    }

    while (v11 < __smax);
    if (v11 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_20;
    }

LABEL_12:
    v13 = a1[2];
    v14 = realloc(v13, v11);
    if (v14)
    {
      a1[1] = v11;
      a1[2] = v14;
      goto LABEL_14;
    }

    free(v13);
LABEL_20:
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    goto LABEL_21;
  }

LABEL_14:
  v15 = a1[2];
  if (__src)
  {
    memcpy((v15 + *a1), __src, __smax);
  }

  else if (v15)
  {
    memset_s((v15 + *a1), __smax, 0, __smax);
  }

  result = 0;
  *a1 += __smax;
  return result;
}

uint64_t aaEntryYECBlobInitWithPath(void *a1, int a2, char *a3, const char *a4)
{
  v4 = a3;
  v25 = *MEMORY[0x29EDCA608];
  if ((concatPath(v24, 0x800uLL, a3, a4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 34, 105, 0, "invalid path %s/%s", v7, v8, v4);
LABEL_7:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v9 = open(v24, 0);
  if (v9 < 0)
  {
    v19 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 38, 105, v19, "open: %s", v20, v21, v24);
    goto LABEL_7;
  }

  v15 = v9;
  if ((aaEntryYECBlobInitWithFD(a1, a2, v9, v10, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 40, 105, 0, "computing YEC blob: %s", v16, v17, v24);
    v18 = 0xFFFFFFFFLL;
  }

  else
  {
    v18 = 0;
  }

  close(v15);
LABEL_10:
  v22 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t aaEntryYECBlobInitWithFD(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 65552)
  {
    memset(&v39, 0, sizeof(v39));
    if (!fstat(a3, &v39) && (v39.st_mode & 0xF000) == 0x8000)
    {
      st_size = v39.st_size;
      v15 = IFileStreamCreateWithFD(a3, 0, v39.st_size);
      if (v15)
      {
        v18 = OECCStreamCreate(1, 0x4000u, st_size);
        if (v18)
        {
          v19 = MemBufferCreate(0x10000uLL);
          v22 = v19;
          if (v19)
          {
            v23 = MemBufferTransmit(v19, st_size, IFileStreamRead, v15, OECCStreamWrite, v18, v20, v21);
            if ((v23 & 0x8000000000000000) == 0 && v23 == st_size)
            {
              DataSize = OECCStreamGetDataSize(v18);
              DataPtr = OECCStreamGetDataPtr(v18);
              *a1 = 0;
              if ((DataSize & 0x8000000000000000) != 0)
              {
LABEL_41:
                v29 = "alloc blob failed";
                v30 = 89;
                goto LABEL_19;
              }

              v26 = DataPtr;
              v27 = a1[1];
              if (v27 < DataSize)
              {
                do
                {
                  while (!v27)
                  {
                    v27 = 0x4000;
                    if (DataSize <= 0x4000)
                    {
                      v27 = 0x4000;
                      goto LABEL_32;
                    }
                  }

                  v28 = v27 >> 1;
                  if ((v27 & (v27 >> 1)) != 0)
                  {
                    v28 = v27 & (v27 >> 1);
                  }

                  v27 += v28;
                }

                while (v27 < DataSize);
                if (v27 >= 0x2000000001)
                {
                  *__error() = 12;
                  goto LABEL_40;
                }

LABEL_32:
                v35 = a1[2];
                v36 = realloc(v35, v27);
                if (v36)
                {
                  a1[1] = v27;
                  a1[2] = v36;
                  goto LABEL_34;
                }

                free(v35);
LABEL_40:
                a1[1] = 0;
                a1[2] = 0;
                *a1 = 0;
                goto LABEL_41;
              }

LABEL_34:
              v37 = a1[2];
              if (v26)
              {
                memcpy((v37 + *a1), v26, DataSize);
              }

              else if (v37)
              {
                memset_s((v37 + *a1), DataSize, 0, DataSize);
              }

              v31 = 0;
              *a1 += DataSize;
LABEL_22:
              IFileStreamDestroy(v15);
              OECCStreamDestroy(v18);
              MemBufferDestroy(v22);
              return v31;
            }

            v33 = "reading file data for ECC";
            v34 = 84;
          }

          else
          {
            v33 = "allocating mem buffer";
            v34 = 80;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", v34, 105, 0, v33, v20, v21, v38);
LABEL_21:
          v31 = 0xFFFFFFFFLL;
          goto LABEL_22;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 78, 105, 0, "creating the ECC stream", v16, v17, v38);
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 76, 105, 0, "opening file", v13, v14, v38);
        v18 = 0;
      }

      v22 = 0;
      goto LABEL_21;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 71, 105, 0, "entry not found, or not a regular file", v10, v11, v38);
    v18 = 0;
    v22 = 0;
    v15 = 0;
    goto LABEL_21;
  }

  v38 = a2;
  v29 = "invalid YEC variant: %u";
  v30 = 57;
LABEL_19:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", v30, 105, 0, v29, a7, a8, v38);
  return 0xFFFFFFFFLL;
}

void *AAEntryYECBlobCreate()
{
  v0 = malloc(0x18uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x18uLL, 0, 0x18uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobCreate", 105, 105, *v2, "malloc", v3, v4, v6);
  }

  return v1;
}

void AAEntryYECBlobDestroy(void **a1)
{
  if (a1)
  {
    free(a1[2]);
    memset_s(a1, 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

void **AAEntryYECBlobCreateWithEncodedData(void *a1, rsize_t a2)
{
  v4 = AAEntryYECBlobCreate();
  v10 = v4;
  if (v4 && (aaEntryYECBlobInitWithEncodedData(v4, a1, a2, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    AAEntryYECBlobDestroy(v10);
    return 0;
  }

  return v10;
}

void **AAEntryYECBlobCreateWithPath(int a1, char *a2, const char *a3)
{
  v6 = AAEntryYECBlobCreate();
  v7 = v6;
  if (v6 && (aaEntryYECBlobInitWithPath(v6, a1, a2, a3) & 0x80000000) != 0)
  {
    AAEntryYECBlobDestroy(v7);
    return 0;
  }

  return v7;
}

uint64_t AAEntryYECBlobApplyToPath(uint64_t a1, char *__s, const char *a3, int *a4, uint64_t a5, int a6)
{
  v8 = __s;
  v34 = *MEMORY[0x29EDCA608];
  memset(&v32, 0, sizeof(v32));
  __sa[0] = 0;
  __sa[1] = 0;
  v31 = 0;
  if ((concatPath(v33, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    LOBYTE(v29) = v8;
    v22 = "invalid path %s/%s";
    v23 = 153;
    goto LABEL_12;
  }

  if (lstat(v33, &v32) || (v32.st_mode & 0xF000) != 0x8000)
  {
    v29 = v33;
    v22 = "entry not found, or not a regular file: %s";
    v23 = 156;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", v23, 105, 0, v22, v10, v11, v29);
    goto LABEL_13;
  }

  st_size = v32.st_size;
  memset_s(__sa, 0x18uLL, 0, 0x18uLL);
  HIDWORD(__sa[0]) = a6;
  v13 = open(v33, 2);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v13;
    v15 = ParallelArchiveECCFixFileSegment(v13, 0, st_size, *(a1 + 16), *a1, __sa);
    v18 = HIDWORD(v31);
    if (v15 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 166, 105, 0, "file can't be fixed: %s", v16, v17, v33);
    }

    else
    {
      if (!v15 || !statIsCompressed(v32.st_flags) || (ParallelCompressionAFSCCompress(v33, 1) & 0x80000000) == 0)
      {
        v21 = 0;
        goto LABEL_19;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 171, 105, 0, "file can't be re-compressed: %s", v19, v20, v33);
    }

    v21 = 0xFFFFFFFFLL;
LABEL_19:
    close(v14);
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v26 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 163, 105, v26, "opening file RW: %s", v27, v28, v33);
LABEL_13:
  v21 = 0xFFFFFFFFLL;
  v18 = -1;
  if (a4)
  {
LABEL_14:
    *a4 = v18;
  }

LABEL_15:
  v24 = *MEMORY[0x29EDCA608];
  return v21;
}

AAArchiveStream AAEncodeArchiveOutputStreamOpen(AAByteStream stream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v10 = malloc(0x38uLL);
  v11 = v10;
  if (v10)
  {
    memset_s(v10, 0x38uLL, 0, 0x38uLL);
  }

  v12 = malloc(0x478uLL);
  v13 = v12;
  if (!v12 || (memset_s(v12, 0x478uLL, 0, 0x478uLL), !v11))
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "AAEncodeArchiveOutputStreamOpen", 246, 99, *v16, "malloc", v17, v18, v23);
LABEL_10:
    encoderStreamClose(v13);
    free(v11);
    return 0;
  }

  *v13 = flags;
  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  *(v13 + 8) = n_threads;
  *(v13 + 16) = stream;
  *(v13 + 80) = msg_data;
  *(v13 + 88) = msg_proc;
  RealTime = getRealTime();
  *(v13 + 24) = xmmword_296AD1FB0;
  *(v13 + 1136) = RealTime;
  v15 = malloc(0x40000uLL);
  *(v13 + 40) = v15;
  if (!v15)
  {
    v20 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "AAEncodeArchiveOutputStreamOpen", 260, 99, *v20, "malloc", v21, v22, v23);
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    goto LABEL_10;
  }

  v11[2] = encoderStreamAbort;
  *v11 = v13;
  v11[1] = encoderStreamClose;
  v11[3] = encoderStreamWriteHeader;
  v11[4] = encoderStreamWriteBlob;
  return v11;
}

uint64_t encoderStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if ((flushOBuf(result) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamClose", 98, 99, 0, "flushing buffer", v3, v4, v8);
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    if (*(v1 + 32))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamClose", 99, 99, 0, "bytes remaining in obuf", v3, v4, v8);
      v5 = 0;
    }

    if (*(v1 + 72))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamClose", 100, 99, 0, "truncated entry when encoder destroyed", v3, v4, v8);
      v5 = 0;
    }

    free(*(v1 + 56));
    memset_s((v1 + 48), 0x10uLL, 0, 0x10uLL);
    free(*(v1 + 40));
    if (v5 && v2 >> 62)
    {
      v6 = getRealTime() - *(v1 + 1136);
      v7 = MEMORY[0x29EDCA610];
      fwrite("Encode archive\n", 0xFuLL, 1uLL, *MEMORY[0x29EDCA610]);
      fprintf(*v7, "%12u entries in archive\n", *(v1 + 1128));
      fprintf(*v7, "%12llu bytes in archive (uncompressed)\n", *(v1 + 1120));
      fprintf(*v7, "%12.0f MB/s\n", *(v1 + 1120) * 0.000000953674316 / v6);
      fprintf(*v7, "%12.2f encoding time (s)\n", v6);
    }

    free(v1);
    if (v5)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void encoderStreamAbort(uint64_t a1)
{
  if (!*(a1 + 68))
  {
    *(a1 + 68) = 1;
    AAByteStreamCancel(*(a1 + 16));
  }
}

uint64_t encoderStreamWriteHeader(uint64_t a1, AAHeader header, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 68))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 72))
  {
    v11 = "truncated entry when header encoded";
    v12 = 136;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteHeader", v12, 99, 0, v11, a7, a8, v8);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 96) = 0;
  if (!*(header + 2))
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    v15.ikey = 5521744;
    KeyIndex = AAHeaderGetKeyIndex(header, v15);
    if ((KeyIndex & 0x80000000) == 0)
    {
      FieldString = AAHeaderGetFieldString(header, KeyIndex, 0x400uLL, (a1 + 96), 0);
      v18 = FieldString <= 1 ? 1 : FieldString;
      if (v18 >= 1 && ((*(a1 + 88))(*(a1 + 80), 31, a1 + 96, 0) & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if ((aaHeaderBlobArrayInitWithHeader(a1 + 48, header) & 0x80000000) != 0)
  {
    v11 = "initializing blob array";
    v12 = 159;
    goto LABEL_5;
  }

  if ((writeOBuf(a1, *(header + 4), *(header + 2)) & 0x80000000) != 0)
  {
    v11 = "writing header blob";
    v12 = 162;
    goto LABEL_5;
  }

  *(a1 + 64) = 0;
  v19 = *(a1 + 48);
  if (v19 && (v20 = *(a1 + 56), !*(v20 + 8)))
  {
    v22 = (v20 + 32);
    v23 = 1;
    do
    {
      v21 = v23;
      if (v19 == v23)
      {
        break;
      }

      v24 = *v22;
      v22 += 3;
      ++v23;
    }

    while (!v24);
    *(a1 + 64) = v21;
  }

  else
  {
    v21 = 0;
  }

  result = 0;
  *(a1 + 72) = v21 < v19;
  ++*(a1 + 1128);
  return result;
}

uint64_t encoderStreamWriteBlob(uint64_t a1, int a2, char *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[2] = *MEMORY[0x29EDCA608];
  v33 = a2;
  if (*(a1 + 68))
  {
    goto LABEL_13;
  }

  if (a4)
  {
    if (*(a1 + 72))
    {
      v11 = *(a1 + 64);
      if (v11 >= *(a1 + 48))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", 190, 99, 0, "unexpected blob data received: %llu B", a7, a8, a4);
        goto LABEL_13;
      }

      v12 = *(a1 + 56) + 24 * v11;
      if (*v12 == a2)
      {
        if (*(v12 + 8) < a4)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", 193, 99, 0, "extra data received for blob %s: received %llu, expecting %llu", a7, a8, a4);
LABEL_13:
          result = 0xFFFFFFFFLL;
          goto LABEL_14;
        }

        v19 = writeOBuf(a1, a3, a4);
        if (v19 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", 201, 99, 0, "writing data blob", v17, v18, v32);
        }

        v20 = *(v12 + 8) - a4;
        *(v12 + 8) = v20;
        if (!v20)
        {
          v21 = *(a1 + 64);
          v22 = (v21 + 1);
          *(a1 + 64) = v22;
          v23 = *(a1 + 48);
          if (v22 < v23)
          {
            v24 = *(a1 + 56);
            if (!*(v24 + 24 * v22 + 8))
            {
              v25 = (v24 + 24 * v22 + 32);
              v26 = ~v22 + v23;
              v27 = v21 + 2;
              do
              {
                LODWORD(v22) = v27;
                if (!v26)
                {
                  break;
                }

                v28 = *v25;
                v25 += 3;
                --v26;
                ++v27;
              }

              while (!v28);
              *(a1 + 64) = v22;
            }
          }

          *(a1 + 72) = v22 < v23;
        }

        v29 = *(a1 + 88);
        if (v29)
        {
          v30 = (a2 & 0xFFFFFF) == 5521732;
        }

        else
        {
          v30 = 0;
        }

        if (!v30 || !*(a1 + 96) || (v31 = *(v12 + 16) - v20, v34[0] = *(v12 + 16), v34[1] = v31, (v29(*(a1 + 80), 31, a1 + 96, v34) & 0x80000000) == 0))
        {
          result = (v19 >> 31);
          goto LABEL_14;
        }

        v14 = "client callback cancel";
        v15 = 220;
      }

      else
      {
        v32 = &v33;
        v14 = "unexpected blob key: received %s, expecting %s";
        v15 = 192;
      }
    }

    else
    {
      v14 = "receiving blob data outside of entry";
      v15 = 187;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", v15, 99, 0, v14, a7, a8, v32);
    goto LABEL_13;
  }

  result = 0;
LABEL_14:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t flushOBuf(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = AAByteStreamWrite(*(a1 + 16), (*(a1 + 40) + v3), v1 - v3);
    if (v4 < 1)
    {
      break;
    }

    v3 += v4;
    *(a1 + 1120) += v4;
    v1 = *(a1 + 32);
    if (v3 >= v1)
    {
      result = 0;
      *(a1 + 32) = 0;
      return result;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "flushOBuf", 54, 99, 0, "Writing to ostream failed", v5, v6, v8);
  return 0xFFFFFFFFLL;
}

uint64_t writeOBuf(void *a1, char *__src, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = a1[4];
  while (1)
  {
    v7 = a1[3];
    if (v6 == v7)
    {
      break;
    }

LABEL_6:
    if (v6 + v3 <= v7)
    {
      v10 = v3;
    }

    else
    {
      v10 = v7 - v6;
    }

    memcpy((a1[5] + v6), __src, v10);
    v6 = a1[4] + v10;
    a1[4] = v6;
    __src += v10;
    v3 -= v10;
    if (!v3)
    {
      return 0;
    }
  }

  if ((flushOBuf(a1) & 0x80000000) == 0)
  {
    v7 = a1[3];
    v6 = a1[4];
    goto LABEL_6;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "writeOBuf", 70, 99, 0, "flush output buffer failed", v8, v9, v12);
  return 0xFFFFFFFFLL;
}

uint64_t forceInPlaceControls(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  if (a1 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  v9 = ((v8 + 4095) >> 12) + 16;
  if (a5 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "Post-processing ctrl for in-place patching, %u pages\n", v9);
  }

  v10 = calloc(v9, 4uLL);
  v11 = calloc(v9, 4uLL);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a4)
    {
      v19 = 0;
      v20 = 0;
      v21 = v9;
      do
      {
        v22 = (a3 + 24 * v20);
        v23 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
          v23 = 0x8000000000000000 - *v22;
        }

        v24 = v22[2];
        if (v24 < 0)
        {
          v24 = 0x8000000000000000 - v24;
        }

        v25 = v19 >> 12;
        if (v23)
        {
          v26 = ((v19 + v23 - 1) >> 12) - (v19 >> 12) + 1;
        }

        else
        {
          v26 = 0;
        }

        v27 = (v26 + v25);
        if (v27 > v25)
        {
          v28 = &v10[v25];
          v29 = v27 - v25;
          do
          {
            v21 = (__PAIR64__(v21, (*v28++)++) - 1) >> 32;
            --v29;
          }

          while (v29);
        }

        v19 += v23 + v24;
        ++v20;
      }

      while (v20 != a4);
    }

    else
    {
      v21 = v9;
    }

    if (a5 > 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "After input pages retained, %u free pages\n", v21);
    }

    if (a4)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = v21;
      do
      {
        v34 = (a3 + 24 * v32);
        v35 = v34[1];
        v36 = 0x8000000000000000 - *v34;
        if ((*v34 & 0x8000000000000000) == 0)
        {
          v36 = *v34;
        }

        v37 = 0x8000000000000000 - v35;
        if (v35 >= 0)
        {
          v37 = v34[1];
        }

        v38 = v34[2];
        if (v38 < 0)
        {
          v38 = 0x8000000000000000 - v38;
        }

        if (v36)
        {
          v39 = v36 + v30;
          do
          {
            v40 = (v30 & 0xFFFFFFFFFFFFF000) + 4096;
            if (v40 >= v39)
            {
              v40 = v39;
            }

            v41 = v31 >> 12;
            v42 = v40 - v30;
            if (v40 == v30)
            {
              v43 = 0;
            }

            else
            {
              v43 = ((v31 + v42 - 1) >> 12) - v41 + 1;
            }

            v44 = v30 >> 12;
            v45 = v10[v44] - 1;
            v10[v44] = v45;
            if (!v45)
            {
              ++v21;
            }

            v46 = (v43 + v41);
            if (v46 > v41)
            {
              v47 = &v12[4 * v41];
              v48 = v46 - v41;
              do
              {
                v21 = (__PAIR64__(v21, (*v47)++) - 1) >> 32;
                v47 += 4;
                --v48;
              }

              while (v48);
            }

            v31 += v42;
            if (v21 < v33)
            {
              v33 = v21;
            }

            v30 = v40;
            v36 -= v42;
          }

          while (v36);
        }

        else
        {
          v40 = v30;
        }

        v30 = v40 + v38;
        v31 += v37;
        ++v32;
      }

      while (v32 != a4);
    }

    else
    {
      v33 = v21;
    }

    if (a5 > 2)
    {
      v49 = MEMORY[0x29EDCA610];
      fprintf(*MEMORY[0x29EDCA610], "Free pages after diff controls: %u\n", v21);
      fprintf(*v49, "Min free pages reached: %d\n", v33);
    }

    bzero(v10, 4 * v9);
    if (a4)
    {
      v50 = 0;
      v51 = 0;
      do
      {
        v52 = (a3 + 24 * v51);
        v53 = *v52;
        if ((*v52 & 0x8000000000000000) != 0)
        {
          v53 = 0x8000000000000000 - *v52;
        }

        v54 = v52[2];
        if (v54 < 0)
        {
          v54 = 0x8000000000000000 - v54;
        }

        v55 = v50 >> 12;
        if (v53)
        {
          v56 = ((v50 + v53 - 1) >> 12) - (v50 >> 12) + 1;
        }

        else
        {
          v56 = 0;
        }

        v57 = (v56 + v55);
        if (v57 > v55)
        {
          v58 = &v10[v55];
          v59 = v57 - v55;
          do
          {
            ++*v58++;
            --v59;
          }

          while (v59);
        }

        v50 += v53 + v54;
        ++v51;
      }

      while (v51 != a4);
      v82 = v12;
      v60 = v33 < 4;
      if (v33 <= 3)
      {
        v83 = a3;
        v84 = a4;
        v61 = 0;
        v62 = 0;
        v63 = vnegq_f64(0);
        v64 = MEMORY[0x29EDCA610];
        v85 = v63;
        do
        {
          v65 = (v83 + 24 * v61);
          v66 = vbslq_s8(vcltzq_s64(*v65), vsubq_s64(v63, *v65), *v65);
          v67 = v65[1].i64[0];
          if (v67 >= 0)
          {
            v68 = v65[1].i64[0];
          }

          else
          {
            v68 = 0x8000000000000000 - v67;
          }

          if (a5 >= 3)
          {
            v88 = v66;
            fprintf(*v64, "ctrl[%zu]: ndiff=%llu nlit=%llu\n", v61, v66.i64[0], v66.i64[1]);
            v66 = v88;
            v63 = v85;
          }

          v69 = v66.i64[0];
          if (v66.i64[0])
          {
            do
            {
              v70 = v66.i64[0] + v62;
              v71 = (v66.i64[0] + v62 - 1) & 0xFFFFFFFFFFFFF000;
              if (v71 <= v62)
              {
                v71 = v62;
              }

              v72 = v10[(v71 >> 12)] - 1;
              v10[(v71 >> 12)] = v72;
              if (!v72)
              {
                ++v33;
              }

              v73 = v70 - v71;
              v74 = vdupq_n_s64(v70 - v71);
              v75 = vsubq_s64(v66, v74).u64[0];
              if (a5 >= 3)
              {
                v89 = v66;
                v86 = v74;
                v87 = v75;
                fprintf(*v64, "ctrl[%zu]: moving %llu bytes from diff to lit (minFree=%d, ndiff=%llu)\n", v61, v70 - v71, v33, v75);
                v74 = v86;
                v75 = v87;
                v66 = v89;
                v63 = v85;
              }

              v76 = vaddq_s64(v66, v74);
              v66.i64[0] = v75;
              v66.i64[1] = v76.i64[1];
              v68 += v73;
              *v65 = vbslq_s8(vcltzq_s64(v66), vsubq_s64(v63, v66), v66);
              v77 = 0x8000000000000000 - v68;
              if (v68 >= 0)
              {
                v77 = v68;
              }

              v65[1].i64[0] = v77;
              v69 = v75;
            }

            while (v33 <= 3 && v75 != 0);
          }

          ++v61;
          v60 = v33 < 4;
          if (v61 >= v84)
          {
            break;
          }

          v62 += v69 + v68;
        }

        while (v33 <= 3);
      }

      v12 = v82;
      if (v60)
      {
        goto LABEL_96;
      }
    }

    else if (v33 < 4)
    {
LABEL_96:
      v81 = 4;
      v17 = "Could not reduce minFree to %d, something is wrong";
      v18 = 264;
      v14 = 0;
      goto LABEL_97;
    }

    v79 = 0;
    goto LABEL_100;
  }

  v14 = *__error();
  v17 = "malloc";
  v18 = 139;
LABEL_97:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "forceInPlaceControls", v18, 53, v14, v17, v15, v16, v81);
  v79 = 0xFFFFFFFFLL;
LABEL_100:
  free(v10);
  free(v12);
  return v79;
}

void *initDiffSegmentVector(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t reserveDiffSegmentVector(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) >= a2)
  {
    return 0;
  }

  *(a1 + 8) = a2;
  v4 = reallocf(*(a1 + 16), 24 * a2);
  *(a1 + 16) = v4;
  if (v4)
  {
    return 0;
  }

  v6 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "reserveDiffSegmentVector", 327, 53, *v6, "reallocf", v7, v8, v2);
  return 0xFFFFFFFFLL;
}

__n128 pushDiffSegment(unint64_t *a1, __n128 *a2)
{
  if (!a2[1].n128_u64[0])
  {
    return result;
  }

  v4 = *a1;
  v5 = a1[1];
  if (*a1 < v5)
  {
LABEL_10:
    v8 = a1[2];
    *a1 = v4 + 1;
    v9 = (v8 + 24 * v4);
    result = *a2;
    v9[1].n128_u64[0] = a2[1].n128_u64[0];
    *v9 = result;
    return result;
  }

  if (v5)
  {
    v6 = v5 + (v5 >> 1);
  }

  else
  {
    v6 = 64;
  }

  if (!reserveDiffSegmentVector(a1, v6))
  {
    v4 = *a1;
    goto LABEL_10;
  }

  return result;
}

uint64_t pushControls(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  v8 = (a2 + 16);
  v9 = 1;
  v10 = a3;
  v11 = 1;
  do
  {
    v12 = *(v8 - 2);
    v13 = *(v8 - 1);
    if (v12 >= 0)
    {
      v14 = *(v8 - 2);
    }

    else
    {
      v14 = 0x8000000000000000 - v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v8 - 1);
    }

    else
    {
      v15 = 0x8000000000000000 - v13;
    }

    if ((*v8 & 0x8000000000000000) == 0)
    {
      v16 = *v8;
    }

    else
    {
      v16 = 0x8000000000000000 - *v8;
    }

    v22.n128_u64[0] = a5;
    v22.n128_u64[1] = a4;
    v23 = v14;
    pushDiffSegment(a1, &v22);
    if (v17)
    {
      break;
    }

    v18 = v14 + a5;
    v22.n128_u64[0] = v18;
    v22.n128_u64[1] = -1;
    v23 = v15;
    pushDiffSegment(a1, &v22);
    if (v19)
    {
      break;
    }

    v8 += 3;
    a4 += v14 + v16;
    a5 = v18 + v15;
    v11 = v9++ < a3;
    --v10;
  }

  while (v10);
  return (v11 << 31 >> 31);
}

uint64_t mergeDiffSegmentVectors(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v61 = 0uLL;
  v62 = 0;
  do
  {
    v14 = &a2[3 * v13];
    v15 = *v14;
    if (!*v14)
    {
      v43 = "empty segment vector";
      v44 = 429;
LABEL_41:
      v42 = 0;
      goto LABEL_34;
    }

    v16 = (v14[2] + 16);
    do
    {
      if (v10 + 4 > v11)
      {
        v11 += 0x4000;
        v12 = reallocf(v12, 16 * v11);
        if (!v12)
        {
          v42 = *__error();
          v43 = "malloc";
          v44 = 437;
LABEL_34:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "mergeDiffSegmentVectors", v44, 53, v42, v43, a7, a8, v56);
          goto LABEL_35;
        }
      }

      v17 = *(v16 - 2);
      if (*(v16 - 1) == -1)
      {
        v21 = *v16;
        v22 = &v12[16 * v10];
        *v22 = v17;
        v17 += v21;
        v20 = v10 + 1;
        *(v22 + 1) = 1;
        v18 = -1;
        v19 = 2;
      }

      else
      {
        v18 = 0;
        v19 = 1;
        v20 = v10;
      }

      v23 = &v12[16 * v20];
      *v23 = v17;
      v10 += v19;
      *(v23 + 2) = v18;
      *(v23 + 3) = 0;
      v16 += 3;
      --v15;
    }

    while (v15);
    ++v13;
  }

  while (v13 != a1);
  v24 = a2[2] + 24 * *a2;
  v25 = v10 + 1;
  v26 = &v12[16 * v10];
  *v26 = *(v24 - 8) + *(v24 - 24);
  *(v26 + 1) = 0;
  qsort(v12, v10 + 1, 0x10uLL, mergeDiffSegmentEventCompareProc);
  if (v10 != -1)
  {
    v46 = 0;
    v27 = 0;
    v47 = 0;
    while (1)
    {
      v48 = 0;
      v49 = *&v12[16 * v46];
      if (v25 <= v46 + 1)
      {
        v50 = v46 + 1;
      }

      else
      {
        v50 = v25;
      }

      v51 = &v12[16 * v46 + 8];
      while (*(v51 - 1) == v49)
      {
        v52 = *v51;
        v51 += 16;
        v48 += v52;
        if (v50 == ++v46)
        {
          v46 = v50;
          break;
        }
      }

      if (v48 | v47)
      {
        if (!v48)
        {
          goto LABEL_57;
        }

        if (!v47)
        {
          v55 = &v12[16 * v27];
          *v55 = v49;
          *(v55 + 2) = 1;
          ++v27;
        }

        v47 += v48;
        if (v47)
        {
          goto LABEL_57;
        }

        v53 = -1;
      }

      else
      {
        v53 = 0;
      }

      v47 = 0;
      v54 = &v12[16 * v27];
      *v54 = v49;
      *(v54 + 2) = v53;
      ++v27;
LABEL_57:
      if (v46 >= v25)
      {
        goto LABEL_14;
      }
    }
  }

  v27 = 0;
LABEL_14:
  v28 = 0;
  while (1)
  {
    v29 = &a2[3 * v28];
    v30 = *v29;
    v58 = v29[2];
    if (reserveDiffSegmentVector(&v61, v27))
    {
      break;
    }

    v57 = v28;
    if (v27)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      while (1)
      {
        v35 = &v12[16 * v31];
        v36 = *v35;
        if (v34 < v30)
        {
          v37 = (v58 + 16 + 24 * v34);
          while (*v37 + *(v37 - 2) < v36)
          {
            v37 += 3;
            if (v30 == ++v34)
            {
              goto LABEL_40;
            }
          }
        }

        if (v34 == v30)
        {
          break;
        }

        if (v31)
        {
          if (v33)
          {
            v38 = -1;
          }

          else
          {
            v38 = *(v58 + 24 * v34 + 8) + v32 - *(v58 + 24 * v34);
          }

          v59.n128_u64[0] = v32;
          v59.n128_u64[1] = v38;
          v60 = v36 - v32;
          pushDiffSegment(&v61, &v59);
          v32 = *v35;
        }

        else
        {
          v32 = *v35;
        }

        v33 += *(v35 + 2);
        if (++v31 == v27)
        {
          goto LABEL_31;
        }
      }

LABEL_40:
      v43 = "no overlapping segment found";
      v44 = 539;
      goto LABEL_41;
    }

LABEL_31:
    v39 = v61;
    v40 = reallocToFit(v62, 24 * v61);
    *(&v61 + 1) = v39;
    v62 = v40;
    free(v29[2]);
    *v29 = v61;
    v29[2] = v62;
    v62 = 0;
    v61 = 0uLL;
    v28 = v57 + 1;
    if (v57 + 1 == a1)
    {
      v41 = 0;
      goto LABEL_36;
    }
  }

LABEL_35:
  v41 = 0xFFFFFFFFLL;
LABEL_36:
  free(v12);
  free(v62);
  return v41;
}

uint64_t mergeDiffSegmentEventCompareProc(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 >= *a1)
  {
    return (*(a1 + 8) - *(a2 + 8));
  }

  return 1;
}

uint64_t getComboControlsFromMergedDiffSegmentVectors(char *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (!a1)
  {
    v16 = 0;
LABEL_39:
    v39 = 0;
    goto LABEL_40;
  }

  v7 = a1;
  v8 = *a2;
  v9 = a1 + 2;
  v10 = calloc(&v9[v9 * *a2], 8uLL);
  if (v10)
  {
    v11 = calloc(v7, 8uLL);
    if (v11)
    {
      if (v8)
      {
        v12 = 0;
        v15 = a2[2];
        v14 = a2 + 2;
        v13 = v15;
        v16 = 1;
        while (1)
        {
          v17 = &v10[8 * v16 * v9];
          v18 = &v10[8 * (v16 - 1) * v9];
          v19 = *(v13 + 24 * v12 + 16);
          if (*(v13 + 24 * v12 + 8) == -1)
          {
            if (v19 < 0)
            {
              v19 = 0x8000000000000000 - v19;
            }

            if (!v18[1])
            {
              v18[1] = v19;
              goto LABEL_25;
            }

            v17[1] = v19;
          }

          else
          {
            v20 = (v18 + 2);
            v21 = 1;
            v22 = v14;
            v23 = v11;
            v24 = v7;
            do
            {
              v25 = *v22;
              v22 += 3;
              v26 = *(v25 + 24 * v12 + 8);
              v27 = v26 - *v23;
              if (v26 != *v23)
              {
                v21 = 0;
              }

              *v23++ = v26 + v19;
              v28 = 0x8000000000000000 - v27;
              if (v27 >= 0)
              {
                v28 = v27;
              }

              *v20++ = v28;
              --v24;
            }

            while (v24);
            if (v21)
            {
              v29 = v18[1];
              if (v29 < 0)
              {
                v29 = 0x8000000000000000 - v29;
              }

              if (!v29)
              {
                v31 = *v18;
                if ((*v18 & 0x8000000000000000) != 0)
                {
                  v31 = 0x8000000000000000 - *v18;
                }

                v32 = __OFADD__(v31, v19);
                v33 = v31 + v19;
                if (v33 < 0 != v32)
                {
                  v33 = 0x8000000000000000 - v33;
                }

                *v18 = v33;
                goto LABEL_25;
              }
            }

            v30 = 0x8000000000000000 - v19;
            if (v19 >= 0)
            {
              v30 = v19;
            }

            *v17 = v30;
          }

          ++v16;
LABEL_25:
          if (++v12 == v8)
          {
            goto LABEL_38;
          }
        }
      }

      v16 = 1;
LABEL_38:
      free(v11);
      a1 = reallocToFit(v10, 8 * v9 * v16);
      goto LABEL_39;
    }

    v34 = *__error();
    v37 = "calloc ipos";
    v38 = 600;
  }

  else
  {
    v34 = *__error();
    v37 = "calloc controls";
    v38 = 596;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "getComboControlsFromMergedDiffSegmentVectors", v38, 53, v34, v37, v35, v36, v41);
  free(v10);
  a1 = 0;
  v16 = 0;
  v39 = 0xFFFFFFFFLL;
LABEL_40:
  *a3 = a1;
  *a4 = v16;
  return v39;
}

ssize_t decodeStreamRefillBuffer(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    memmove(*(a1 + 32), (*(a1 + 32) + v2), *(a1 + 48) - v2);
    v2 = *(a1 + 40);
  }

  v3 = *(a1 + 48) - v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = v3;
  if (!*(a1 + 1128))
  {
    while (!(v3 >> 18))
    {
      result = AAByteStreamRead(*(a1 + 8), (*(a1 + 32) + v3), 0x40000 - v3);
      if (!result)
      {
        *(a1 + 1128) = 1;
        return result;
      }

      if (result < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamRefillBuffer", 38, 61, 0, "istream read error", v5, v6, v7);
        return 0xFFFFFFFFLL;
      }

      v3 = *(a1 + 48) + result;
      *(a1 + 48) = v3;
      if (*(a1 + 1128))
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t decodeStreamReadData(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1[5];
  while (1)
  {
    if (a1[6] - v7 >= a3 - v6)
    {
      v8 = a3 - v6;
    }

    else
    {
      v8 = a1[6] - v7;
    }

    if (v8)
    {
      if (a2)
      {
        memcpy((a2 + v6), (a1[4] + v7), v8);
        v7 = a1[5];
      }

      v7 += v8;
      a1[5] = v7;
      a1[142] += v8;
      goto LABEL_12;
    }

    if ((decodeStreamRefillBuffer(a1) & 0x80000000) != 0)
    {
      v12 = "Refill buffer failed";
      v13 = 69;
      goto LABEL_17;
    }

    v7 = a1[5];
    if (v7 == a1[6])
    {
      break;
    }

LABEL_12:
    v6 += v8;
    if (v6 >= a3)
    {
      return 0;
    }
  }

  v12 = "No more data";
  v13 = 70;
LABEL_17:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadData", v13, 61, 0, v12, v9, v10, v14);
  return 0xFFFFFFFFLL;
}

uint64_t decodeStreamLoadHeader(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[9];
  v9 = a2 - v8;
  if (a2 <= v8)
  {
    return 0;
  }

  if (a1[10] >= a2)
  {
    if ((decodeStreamReadData(a1, a1[8] + v8, v9) & 0x80000000) == 0)
    {
      result = 0;
      a1[9] += v9;
      return result;
    }

    v11 = "read error";
    v12 = 82;
  }

  else
  {
    v11 = "invalid header size";
    v12 = 80;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamLoadHeader", v12, 61, 0, v11, a7, a8, v14);
  return 0xFFFFFFFFLL;
}

uint64_t loadAndDecodeHeader_AA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72) > 5uLL)
  {
    if ((decodeStreamLoadHeader(a1, *(*(a1 + 64) + 4), a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
    {
      v8 = "truncated stream";
      v9 = 96;
    }

    else
    {
      if ((aaHeaderInitWithEncodedData(*(a1 + 88), *(a1 + 64), *(a1 + 72)) & 0x80000000) == 0)
      {
        return 0;
      }

      v8 = "corrupted archive header";
      v9 = 99;
    }
  }

  else
  {
    v8 = "Invalid decoder state";
    v9 = 92;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "loadAndDecodeHeader_AA", v9, 61, 0, v8, a7, a8, v12);
  return 0xFFFFFFFFLL;
}

uint64_t decodeStreamHLCFromINO(void *a1, unint64_t a2, unint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1[147];
  if (v12 && (v13 = a1[149], *v13 < a2))
  {
    if (v12 == 1)
    {
      v14 = 1;
    }

    else
    {
      v28 = 0;
      v29 = a1[147];
      v14 = v29;
      do
      {
        v30 = v28 + (v29 >> 1);
        if (v13[4 * v30] >= a2)
        {
          v14 = v30;
        }

        else
        {
          v28 = v30;
        }

        v29 = v14 - v28;
      }

      while ((v14 - v28) > 1);
    }
  }

  else
  {
    v14 = 0;
  }

  if (v14 == v12 || (v15 = a1[149], *(v15 + 32 * v14) != a2))
  {
    v16 = a1[148];
    if (v12 >= v16)
    {
      v17 = 2 * v16;
      if (!v16)
      {
        v17 = 32;
      }

      a1[148] = v17;
      if ((32 * v17) >= 0x2000000001)
      {
        *__error() = 12;
LABEL_31:
        a1[149] = 0;
        v31 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", 132, 61, *v31, "malloc", v32, v33, v34);
        a1[147] = 0;
        a1[148] = 0;
        return -1;
      }

      v18 = a1[149];
      v19 = realloc(v18, 32 * v17);
      if (!v19)
      {
        free(v18);
        goto LABEL_31;
      }

      a1[149] = v19;
      v12 = a1[147];
    }

    v20 = v14;
    v21 = v12 - v14;
    if (v21)
    {
      memmove((a1[149] + 32 * v14 + 32), (a1[149] + 32 * v14), 32 * v21);
      v20 = a1[147];
    }

    a1[147] = v20 + 1;
    v15 = a1[149];
    v22 = v15 + 32 * v14;
    *v22 = a2;
    *(v22 + 24) = v20;
    *(v22 + 8) = vdupq_n_s64(a3);
  }

  v23 = (v15 + 32 * v14);
  if (v23[1] == a3)
  {
    v24 = v23[2] - 1;
    v23[2] = v24;
    if (v24 < a3)
    {
      *a4 = v24 == 0;
      return v23[3];
    }

    v26 = "invalid nlink";
    v27 = 151;
  }

  else
  {
    v26 = "nlink mismatch";
    v27 = 149;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", v27, 61, 0, v26, a7, a8, v34);
  return -1;
}

AAArchiveStream AADecodeArchiveInputStreamOpen(AAByteStream stream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v9 = malloc(0x4C0uLL);
  v10 = v9;
  if (v9)
  {
    memset_s(v9, 0x4C0uLL, 0, 0x4C0uLL);
  }

  v11 = malloc(0x38uLL);
  v12 = v11;
  if (!v11 || (memset_s(v11, 0x38uLL, 0, 0x38uLL), !v10))
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 374;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "AADecodeArchiveInputStreamOpen", v20, 61, v18, v19, v14, v15, v22);
    free(v12);
    decodeStreamClose(v10);
    return 0;
  }

  v13 = malloc(0x40000uLL);
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 4) = v13;
  if (!v13)
  {
    v19 = "init buffer";
    v20 = 379;
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  *(v10 + 1) = stream;
  *(v10 + 14) = -1;
  *(v10 + 72) = xmmword_296AD1FD0;
  v16 = malloc(0x10000uLL);
  *(v10 + 8) = v16;
  if (!v16)
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 385;
    goto LABEL_15;
  }

  *(v10 + 11) = AAHeaderCreate();
  v17 = AAHeaderCreate();
  *(v10 + 12) = v17;
  if (!*(v10 + 11) || !v17)
  {
    v19 = "allocating header";
    v20 = 388;
    goto LABEL_14;
  }

  *v10 = flags;
  *(v10 + 2) = msg_proc;
  *(v10 + 3) = msg_data;
  *(v10 + 151) = getRealTime();
  v12[5] = decodeStreamReadHeader;
  v12[6] = decodeStreamReadBlob;
  v12[2] = decodeStreamAbort;
  *v12 = v10;
  v12[1] = decodeStreamClose;
  return v12;
}

uint64_t decodeStreamReadHeader(uint64_t a1, AAHeader *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1132))
  {
    return 0xFFFFFFFFLL;
  }

  v56[7] = v8;
  v56[8] = v9;
  v55 = 0;
  v56[0] = 0;
  v12 = *(a1 + 1136);
  v13 = *(a1 + 1144);
  if (v13 >= v12)
  {
    if ((decodeStreamReadData(a1, 0, v13 - v12) & 0x80000000) != 0)
    {
      v14 = "truncated archive";
      v15 = 180;
      goto LABEL_66;
    }

    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    if (v21 == v22)
    {
      if (*(a1 + 1128))
      {
LABEL_11:
        if (*(a1 + 1128))
        {
          return 0;
        }

LABEL_12:
        v23 = *(a1 + 1136);
        *(a1 + 104) = 0;
        *(a1 + 72) = 0;
        if ((decodeStreamLoadHeader(a1, 6uLL, v17, v18, v19, v20, a7, a8) & 0x80000000) != 0)
        {
          v14 = "truncated stream";
          v15 = 195;
          goto LABEL_66;
        }

        v29 = *(a1 + 56);
        if (v29 < 0)
        {
          v30 = *(a1 + 64);
          if (*v30 == 825246017 || *v30 == 826360153)
          {
            *(a1 + 56) = 0;
            goto LABEL_32;
          }

          if (*v30 == 925906736 && *(v30 + 2) == 12592)
          {
            v36 = 1;
          }

          else
          {
            v32 = *v30;
            v33 = *(v30 + 2);
            if (v32 != 925906736 || v33 != 14128)
            {
              v14 = "Invalid/non-supported archive stream";
              v15 = 212;
              goto LABEL_66;
            }

            v36 = 2;
          }

          *(a1 + 56) = v36;
        }

        else if ((v29 - 1) >= 2)
        {
          if (v29 == 3)
          {
            v35 = loadAndDecodeHeader_Ustar(a1, v56);
            goto LABEL_39;
          }

          if (v29)
          {
            v14 = "Invalid archive stream";
            v15 = 226;
            goto LABEL_66;
          }

LABEL_32:
          v35 = loadAndDecodeHeader_AA(a1, v24, v25, v26, v27, v28, a7, a8);
LABEL_39:
          if (v35 < 0)
          {
            v14 = "parsing entry header";
            v15 = 228;
            goto LABEL_66;
          }

          if (!v35)
          {
            v37 = *(a1 + 72);
            v38 = *(a1 + 88);
            v39.ikey = 5265748;
            KeyIndex = AAHeaderGetKeyIndex(v38, v39);
            if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(v38, KeyIndex, &v55), FieldUInt <= 1) ? (v42 = 1) : (v42 = FieldUInt), v42 <= 0))
            {
              v14 = "Invalid entry: no TYP field";
              v15 = 235;
              goto LABEL_66;
            }

            if (v55 != 77)
            {
              v43 = *(a1 + 88);
              v44.ikey = 5521744;
              v45 = AAHeaderGetKeyIndex(v43, v44);
              if ((v45 & 0x80000000) == 0)
              {
                FieldString = AAHeaderGetFieldString(v43, v45, 0x400uLL, (a1 + 104), 0);
                v47 = FieldString <= 1 ? 1 : FieldString;
                if (v47 >= 1)
                {
                  v48 = strlen((a1 + 104));
                  if (!pathIsValid((a1 + 104), v48))
                  {
                    v14 = "Invalid entry path";
                    v15 = 241;
                    goto LABEL_66;
                  }
                }
              }
            }

            v49 = *(a1 + 16);
            if (v49 && *(a1 + 104) && (v49(*(a1 + 24), 60, a1 + 104, 0) & 0x80000000) != 0)
            {
              v14 = "callback cancel";
              v15 = 248;
              goto LABEL_66;
            }

            if ((aaHeaderBlobArrayInitWithHeader(a1 + 1152, *(a1 + 88)) & 0x80000000) != 0)
            {
              v14 = "initializing blob array";
              v15 = 252;
              goto LABEL_66;
            }

            *(a1 + 1168) = 0;
            if (!*(a1 + 56))
            {
              v56[0] = aaHeaderBlobArrayPayloadSize((a1 + 1152));
            }

            if (a2)
            {
              v50 = *a2;
              if (*a2)
              {
                if (AAHeaderAssign(*a2, *(a1 + 88)) < 0)
                {
                  v14 = "header init";
                  v15 = 272;
                  goto LABEL_66;
                }
              }

              else
              {
                v50 = AAHeaderClone(*(a1 + 88));
                if (!v50)
                {
                  v14 = "header init";
                  v15 = 268;
                  goto LABEL_66;
                }
              }

              if (*(a1 + 1))
              {
                v51.ikey = 5784649;
                if (AAHeaderGetKeyIndex(v50, v51) < 0)
                {
                  v52.ikey = 5915721;
                  if (AAHeaderGetKeyIndex(v50, v52) < 0)
                  {
                    v53.ikey = 5784649;
                    if (AAHeaderSetFieldUInt(v50, 0xFFFFFFFF, v53, v23) < 0 || (v54.ikey = 5915721, AAHeaderSetFieldUInt(v50, 0xFFFFFFFF, v54, v56[0] + v37) < 0))
                    {
                      v14 = "inserting IDX,IDZ fields";
                      v15 = 281;
                      goto LABEL_66;
                    }
                  }
                }
              }

              *a2 = v50;
            }

            ++*(a1 + 1200);
            *(a1 + 1144) = v37 + v23 + v56[0];
            return 1;
          }

          return 0;
        }

        v35 = loadAndDecodeHeader_Cpio(a1, v56);
        goto LABEL_39;
      }

      if ((decodeStreamRefillBuffer(a1) & 0x80000000) != 0)
      {
        v14 = "refill buffer";
        v15 = 185;
        goto LABEL_66;
      }

      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
    }

    if (v21 != v22)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = "invalid state";
  v15 = 179;
LABEL_66:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", v15, 61, 0, v14, a7, a8, v55);
  if (!*(a1 + 1132))
  {
    *(a1 + 1132) = 1;
    AAByteStreamCancel(*(a1 + 8));
  }

  return 0xFFFFFFFFLL;
}

uint64_t decodeStreamReadBlob(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[2] = *MEMORY[0x29EDCA608];
  if (!a4)
  {
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  v9 = *(a1 + 1168);
  if (v9 >= *(a1 + 1152))
  {
    goto LABEL_7;
  }

  while (1)
  {
    v13 = *(a1 + 1160) + 24 * v9;
    v14 = *(v13 + 8);
    if (((*v13 ^ a2) & 0xFFFFFF) == 0)
    {
      if (v14)
      {
        break;
      }
    }

    if ((decodeStreamReadData(a1, 0, v14) & 0x80000000) != 0)
    {
      v15 = "reading blob data";
      v16 = 307;
      goto LABEL_9;
    }

    *(v13 + 8) = 0;
    v9 = *(a1 + 1168) + 1;
    *(a1 + 1168) = v9;
    if (v9 >= *(a1 + 1152))
    {
      goto LABEL_7;
    }
  }

  if (v14 < a4)
  {
LABEL_7:
    v15 = "invalid read blob request";
    v16 = 312;
  }

  else if ((decodeStreamReadData(a1, a3, a4) & 0x80000000) != 0)
  {
    v15 = "read error";
    v16 = 315;
  }

  else
  {
    v18 = *(v13 + 8);
    v19 = v18 - a4;
    *(v13 + 8) = v18 - a4;
    if (v18 == a4)
    {
      ++*(a1 + 1168);
    }

    v20 = *(a1 + 16);
    if (!v20)
    {
      goto LABEL_18;
    }

    if (!*(a1 + 104))
    {
      goto LABEL_18;
    }

    if ((*v13 & 0xFFFFFF) != 0x544144)
    {
      goto LABEL_18;
    }

    v21 = *(v13 + 16) - v19;
    v24[0] = *(v13 + 16);
    v24[1] = v21;
    if ((v20(*(a1 + 24), 60, a1 + 104, v24) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = "callback cancel";
    v16 = 328;
  }

LABEL_9:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", v16, 61, 0, v15, a7, a8, v23);
  result = 0xFFFFFFFFLL;
LABEL_19:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void decodeStreamAbort(uint64_t a1)
{
  if (!*(a1 + 1132))
  {
    *(a1 + 1132) = 1;
    AAByteStreamCancel(*(a1 + 8));
  }
}

uint64_t decodeStreamClose(char *a1)
{
  if (a1)
  {
    free(*(a1 + 4));
    free(*(a1 + 8));
    free(*(a1 + 149));
    free(*(a1 + 145));
    memset_s(a1 + 1152, 0x10uLL, 0, 0x10uLL);
    AAHeaderDestroy(*(a1 + 11));
    AAHeaderDestroy(*(a1 + 12));
    if (*a1 >> 62)
    {
      v2 = getRealTime() - *(a1 + 151);
      v3 = MEMORY[0x29EDCA610];
      fwrite("Decode archive\n", 0xFuLL, 1uLL, *MEMORY[0x29EDCA610]);
      fprintf(*v3, "%12llu entries in archive\n", *(a1 + 150));
      fprintf(*v3, "%12llu bytes in archive (uncompressed)\n", *(a1 + 142));
      fprintf(*v3, "%12.0f MB/s\n", *(a1 + 142) * 0.000000953674316 / v2);
      fprintf(*v3, "%12.2f decoding time (s)\n", v2);
    }

    free(a1);
  }

  return 0;
}

void *aaCreateArchString()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v14 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x1000uLL, "1 0x%x %u", *v0, v0[1]);
  if (v0[1])
  {
    v1 = strlen(__str);
    v2 = 0;
    v3 = v0 + 10;
    while (1)
    {
      snprintf(&__str[v1], 4096 - v1, " (0x%x %i %i %u %llu %llu %u)", *(v3 - 8), *(v3 - 7), *(v3 - 6), *(v3 - 5), *v3, *(v3 + 1), v3[4]);
      v1 += strlen(&__str[v1]);
      if (v1 + 1 >= 0x1000)
      {
        break;
      }

      v3 += 14;
      if (++v2 >= v0[1])
      {
        goto LABEL_5;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaCreateArchString", 476, 148, 0, "String overflow", v4, v5, v12);
    v8 = 0;
  }

  else
  {
LABEL_5:
    v6 = strlen(__str);
    v7 = v6 + 1;
    if (v6 + 1 < 0x2000000001)
    {
      v9 = malloc(v6 + 1);
      v8 = v9;
      if (v9)
      {
        memcpy(v9, __str, v7);
      }
    }

    else
    {
      v8 = 0;
      *__error() = 12;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t aaEntryMCOStringCreateWithPath(void *a1, const char *a2, unint64_t a3)
{
  bzero(&v78, 0xE08uLL);
  *a1 = 0;
  v6 = open(a2, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    memset(&v81, 0, sizeof(v81));
    v10 = fstat(v6, &v81);
    if (v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "AAEntryMCOBlobInitWithFD", 492, 148, 0, "fstat failed", v8, v9, v67);
      goto LABEL_4;
    }

    st_size = v81.st_size;
    Magic = aaGetMagic(v7, 0, v81.st_size);
    v13 = Magic;
    v78 = Magic | 0x100000000;
    if (Magic <= -822415875)
    {
      if (Magic > -889275715)
      {
        if ((Magic + 889275714) < 2)
        {
          goto LABEL_21;
        }

        v21 = -872498498;
      }

      else
      {
        if ((Magic + 1095041334) < 2)
        {
          goto LABEL_21;
        }

        v21 = -1078264118;
      }

      if (Magic != v21)
      {
        goto LABEL_4;
      }

LABEL_21:
      v23 = Magic == -1078264118 || Magic == -889275713;
      v24 = (Magic | 0x1000000) == 0xBFBAFECA || Magic == -1095041333;
      v90 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      memset(v86, 0, sizeof(v86));
      if (v23)
      {
        v25 = 32;
      }

      else
      {
        v25 = 20;
      }

      if ((aaPReadExpected(v7, &v90, 8uLL, 0, st_size) & 0x80000000) == 0)
      {
        v27 = HIDWORD(v90);
        v28 = bswap32(HIDWORD(v90));
        if (v24)
        {
          v27 = v28;
        }

        HIDWORD(v78) = v27;
        if (v27 > 0x40)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaParseFatFile", 302, 148, "Too many arches", v26, v11, v12, v67);
          goto LABEL_4;
        }

        v76 = v24;
        v68 = a3;
        v69 = a2;
        v71 = a1;
        if (v27)
        {
          v45 = 0;
          v46 = 0;
          v47 = bswap32(v13);
          v48 = vdup_n_s32(!v76);
          if (v76)
          {
            v49 = v47;
          }

          else
          {
            v49 = v13;
          }

          v74 = v49;
          v73 = 56 * v27;
          v50 = 8;
          v51 = vcltz_s32(vshl_n_s32(v48, 0x1FuLL));
          v52.i64[0] = v48.u32[0];
          v52.i64[1] = v48.u32[1];
          v72 = vcltzq_s64(vshlq_n_s64(v52, 0x3FuLL));
          v75 = v25;
          do
          {
            v85 = 0;
            v83 = 0u;
            v84 = 0u;
            v82 = 0u;
            if (v13 == -889275713 || v13 == -1078264118)
            {
              if ((aaPReadExpected(v7, v86, v25, v50, st_size) & 0x80000000) != 0)
              {
                goto LABEL_99;
              }

              *&v79[v45 + 4] = vbsl_s8(v51, v86[0], vrev32_s8(v86[0]));
              v53 = &v80[56 * v46 + 20];
              v54 = vbslq_s8(v72, *v86[1].i8, vrev64q_s8(*v86[1].i8));
            }

            else
            {
              if ((aaPReadExpected(v7, &v87, v25, v50, st_size) & 0x80000000) != 0)
              {
LABEL_99:
                a2 = v69;
                a1 = v71;
                a3 = v68;
                v10 = 0;
                goto LABEL_4;
              }

              v55 = v88;
              *&v79[v45 + 4] = vbsl_s8(v51, v87, vrev32_s8(v87));
              v53 = &v80[v45 + 20];
              v56 = vbsl_s8(v51, v55, vrev32_s8(v55));
              v57.i64[0] = v56.u32[0];
              v57.i64[1] = v56.u32[1];
              v54 = v57;
            }

            v58 = v54.i64[0];
            v59 = &v79[v45 - 8];
            *(v59 + 6) = v54.i64[1];
            *v53 = v54.i64[0];
            *&v79[v45] = v74;
            *(v59 + 14) = v76;
            v60 = vaddvq_s64(v54);
            if (v60 <= st_size)
            {
              v61 = v60;
              v62 = aaGetMagic(v7, v58, v60);
              if (v62 <= -17958195)
              {
                if (v62 != -822415874 && v62 != -805638658)
                {
                  goto LABEL_97;
                }
              }

              else if ((v62 + 17958194) >= 2)
              {
                v63 = v62 == 1918975009 || v62 == 557605234;
                if (!v63 || (aaParseARSection(&v82, v7, v58, v61) & 0x80000000) != 0)
                {
                  goto LABEL_97;
                }

LABEL_96:
                *&v79[v45] = v82;
                v65 = &v79[v45 - 8];
                *(v65 + 3) = v83;
                v66 = v85;
                *(v65 + 8) = DWORD2(v83);
                *(v59 + 14) = v66;
                goto LABEL_97;
              }

              if ((aaParseMachOSection(&v82, v7, v62, v58, v61) & 0x80000000) == 0)
              {
                goto LABEL_96;
              }
            }

LABEL_97:
            ++v46;
            v45 += 56;
            v25 = v75;
            v50 += v75;
          }

          while (v73 != v45);
        }

        a2 = v69;
        a1 = v71;
        a3 = v68;
        goto LABEL_42;
      }

LABEL_4:
      v13 = 0;
      v78 = 0;
      if (v10)
      {
        v14 = "Can't init MCO";
        v15 = 545;
        goto LABEL_6;
      }

LABEL_42:
      if (!v13)
      {
        goto LABEL_65;
      }

      if (a3 >> 62 == 3)
      {
        v70 = a1;
        v29 = MEMORY[0x29EDCA610];
        v30 = *MEMORY[0x29EDCA610];
        BinaryTypeString = aaGetBinaryTypeString(v13);
        v32 = HIDWORD(v78);
        fprintf(v30, "%s (N=%u)", BinaryTypeString, HIDWORD(v78));
        if (v32)
        {
          v33 = v80;
          do
          {
            v34 = *v29;
            v35 = aaGetBinaryTypeString(*(v33 - 3));
            v36 = *(v33 - 2);
            if (v36 <= 16777222)
            {
              v39 = "x86";
              if (v36 != 7)
              {
                if (v36 != 12)
                {
                  goto LABEL_59;
                }

                v39 = "arm";
              }
            }

            else
            {
              if (v36 != 33554444)
              {
                v37 = *(v33 - 1) & 0xFFFFFF;
                if (v36 == 16777228)
                {
                  v38 = v37 == 2;
                  v39 = "arm64";
                  v40 = "arm64e";
LABEL_56:
                  if (v38)
                  {
                    v39 = v40;
                  }

                  goto LABEL_60;
                }

                if (v36 == 16777223)
                {
                  v38 = v37 == 8;
                  v39 = "x86_64";
                  v40 = "x86_64h";
                  goto LABEL_56;
                }

LABEL_59:
                v39 = "?";
                goto LABEL_60;
              }

              v39 = "arm64_32";
            }

LABEL_60:
            v41 = *v33 - 1;
            v42 = "?";
            if (v41 <= 0xD)
            {
              v42 = (&off_29EE51350)[v41];
            }

            fprintf(v34, " [%s, %s, %s]", v35, v39, v42);
            v33 += 14;
            --v32;
          }

          while (v32);
        }

        fprintf(*v29, "\t<%s>\n", a2);
        a1 = v70;
      }

      ArchString = aaCreateArchString();
      *a1 = ArchString;
      if (ArchString)
      {
LABEL_65:
        v16 = 0;
        goto LABEL_66;
      }

      v14 = "MCO creation failed";
      v15 = 555;
LABEL_6:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", v15, 148, 0, v14, v11, v12, v67);
      v16 = 0xFFFFFFFFLL;
LABEL_66:
      close(v7);
      return v16;
    }

    if (Magic <= -17958195)
    {
      if (Magic != -822415874 && Magic != -805638658)
      {
        goto LABEL_4;
      }
    }

    else if ((Magic + 17958194) >= 2)
    {
      if (Magic != 1918975009 && Magic != 557605234 || aaParseARSection(v79, v7, 0, st_size))
      {
        goto LABEL_4;
      }

LABEL_41:
      v13 = v78;
      goto LABEL_42;
    }

    if (aaParseMachOSection(v79, v7, Magic, 0, st_size))
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  v17 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", 542, 148, *v17, "%s", v18, v19, a2);
  return 0xFFFFFFFFLL;
}

uint64_t aaGetMagic(int a1, off_t a2, size_t a3)
{
  v10[1] = *MEMORY[0x29EDCA608];
  v9 = 0;
  if ((aaPReadExpected(a1, &v9, 4uLL, a2, a3) & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  result = v9;
  if (v9 == 1918975009 || v9 == 557605234)
  {
    v10[0] = 0;
    if ((aaPReadExpected(a1, v10, 8uLL, a2, a3) & 0x80000000) == 0)
    {
      if (v10[0] == 0xA3E686372613C21)
      {
        result = v9;
      }

      else
      {
        result = 0;
      }

      goto LABEL_12;
    }

LABEL_11:
    result = 0;
  }

LABEL_12:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaParseARSection(uint64_t a1, int a2, uint64_t a3, size_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a3 + 8;
  if (a3 + 8 < a4)
  {
    v8 = a3 + 68;
    while (1)
    {
      v20 = 0u;
      memset(v21, 0, 28);
      v19 = 0u;
      if ((aaPReadExpected(a2, &v19, 0x3CuLL, v4, a4) & 0x80000000) != 0)
      {
        break;
      }

      if (v19 != 12579 || BYTE2(v19) != 47)
      {
        break;
      }

      if (HIWORD(v21[6]) != 2656)
      {
        break;
      }

      LOBYTE(v20) = 0;
      BYTE2(v21[6]) = 0;
      v10 = strtoull(&v19 + 3, 0, 10);
      v11 = strtoull(&v21[4], 0, 10);
      v12 = v11 + v8;
      if (v11 + v8 > a4)
      {
        break;
      }

      v13 = v11;
      if (v10 > v11 || v12 < v4)
      {
        break;
      }

      Magic = aaGetMagic(a2, v10 + v8, v12);
      v15 = Magic;
      v16 = Magic + 17958194;
      if ((Magic + 17958194) < 2 || Magic == -822415874 || Magic == -805638658)
      {
        result = aaParseMachOSection(a1, a2, Magic, v10 + v8, v12);
        if (v16 < 2 || v15 == -805638658 || v15 == -822415874)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v4 = v12 + (v13 & 1);
        v8 = v4 + 60;
        result = 0xFFFFFFFFLL;
        if (v4 >= a4)
        {
          goto LABEL_23;
        }
      }
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_23:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaParseMachOSection(uint64_t a1, int a2, int a3, off_t a4, size_t a5)
{
  v8 = a3 & 0xFEFFFFFF;
  v9 = (a3 & 0xFEFFFFFF) == -822415874;
  if (a3 == -17958193 || a3 == -805638658)
  {
    v17 = 0u;
    v18 = 0u;
    v10 = a2;
    v11 = 32;
  }

  else
  {
    v17 = 0uLL;
    DWORD2(v18) = 0;
    *&v18 = 0;
    v10 = a2;
    v11 = 28;
  }

  if ((aaPReadExpected(v10, &v17, v11, a4, a5) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v8 == -822415874;
  v13 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12)), 0x1FuLL)), vrev32q_s8(v17), v17);
  *a1 = v13;
  *(a1 + 16) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v12), 0x1FuLL)), vrev32_s8(*&v18), *&v18);
  v14 = DWORD2(v18);
  v15 = bswap32(DWORD2(v18));
  if (v8 == -822415874)
  {
    v14 = v15;
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5 - a4;
  *(a1 + 48) = v9;
  if ((v13.i32[0] + 17958192) >= 0xFFFFFFFE)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aaPReadExpected(int a1, void *a2, size_t a3, off_t a4, size_t a5)
{
  if (a4 + a3 > a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (pread(a1, a2, a3, a4) == a3)
  {
    return 0;
  }

  v7 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaPReadExpected", 181, 148, *v7, "pread failed", v8, v9, v5);
  return 0xFFFFFFFFLL;
}

const char *aaGetBinaryTypeString(int a1)
{
  if (a1 > -822415875)
  {
    if (a1 > -17958194)
    {
      switch(a1)
      {
        case -17958193:
          return "Mach-O 64-bit";
        case 1918975009:
          return "Object archive BE";
        case 557605234:
          return "Object archive";
      }
    }

    else
    {
      switch(a1)
      {
        case -822415874:
          return "Mach-O BE";
        case -805638658:
          return "Mach-O 64-bit BE";
        case -17958194:
          return "Mach-O";
      }
    }
  }

  else if (a1 > -889275715)
  {
    switch(a1)
    {
      case -889275714:
        return "Fat binary";
      case -889275713:
        return "Fat binary 64-bit";
      case -872498498:
        return "Fat GPU binary";
    }
  }

  else
  {
    switch(a1)
    {
      case -1095041334:
        return "Fat binary BE";
      case -1095041333:
        return "Fat GPU binary BE";
      case -1078264118:
        return "Fat binary 64-bit BE";
    }
  }

  return "?";
}

uint64_t aaByteStreamSimulate(void *a1)
{
  v1 = a1[11];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return -1;
  }
}

uint64_t aaByteStreamPCWriteProc(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamWrite(AAByteStream s, const void *buf, size_t nbyte)
{
  v3 = *(s + 3);
  if (v3)
  {
    return v3(*s, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

uint64_t aaFileStreamGetFD(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 == aaFileStreamClose || v1 == aaTempFileStreamClose)
  {
    return **a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aaFileStreamClose(int *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    free(a1);
  }

  return 0;
}

uint64_t aaTempFileStreamClose(char *a1)
{
  if (a1)
  {
    v2 = *a1;
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
      unlink(a1 + 12);
    }

    free(a1);
  }

  return 0;
}

ssize_t AAByteStreamPWrite(AAByteStream s, const void *buf, size_t nbyte, off_t offset)
{
  v4 = *(s + 5);
  if (v4)
  {
    return v4(*s, buf, nbyte, offset);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamRead(AAByteStream s, void *buf, size_t nbyte)
{
  v3 = *(s + 2);
  if (v3)
  {
    return v3(*s, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamPRead(AAByteStream s, void *buf, size_t nbyte, off_t offset)
{
  v4 = *(s + 4);
  if (v4)
  {
    return v4(*s, buf, nbyte, offset);
  }

  else
  {
    return -1;
  }
}

void AAByteStreamCancel(AAByteStream s)
{
  v1 = *(s + 7);
  if (v1)
  {
    v1(*s);
  }
}

int AAByteStreamClose(AAByteStream s)
{
  if (!s)
  {
    return 0;
  }

  if (*s)
  {
    v2 = (*(s + 1))();
  }

  else
  {
    v2 = 0;
  }

  free(s);
  return v2;
}

uint64_t AAByteStreamCloseWithState(uint64_t (**a1)(void))
{
  if (a1)
  {
    v2 = a1[12];
    v3 = *a1;
    if (v2)
    {
      if (v3)
      {
        v4 = v2();
LABEL_8:
        v5 = v4;
LABEL_10:
        free(a1);
        return v5;
      }
    }

    else if (v3)
    {
      v4 = a1[1]();
      goto LABEL_8;
    }

    v5 = 0;
    goto LABEL_10;
  }

  return 0;
}

uint64_t AAByteStreamFlush(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AAByteStreamTruncate(void *a1)
{
  v1 = a1[8];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AAByteStreamPReadAsync(void *a1)
{
  v1 = a1[10];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream AAFileStreamOpenWithFD(int fd, int automatic_close)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0xCuLL);
  v6 = v5;
  if (v4 && v5)
  {
    *v5 = fd;
    v5[1] = automatic_close;
    v5[2] = 0;
    *v4 = v5;
    v4[1] = aaFileStreamClose;
    v4[2] = aaFileStreamRead;
    v4[3] = aaFileStreamWrite;
    v4[4] = aaFileStreamPRead;
    v4[5] = aaFileStreamPWrite;
    v4[7] = aaFileStreamAbort;
    v4[6] = aaFileStreamSeek;
    v4[8] = aaFileStreamTruncate;
    v4[9] = aaFileStreamFlush;
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithFD", 402, 17, *v7, "malloc", v8, v9, v11);
    free(v4);
    free(v6);
    return 0;
  }

  return v4;
}

uint64_t aaFileStreamRead(int *a1, void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = read(*a1, a2, a3);
  if (v3 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamRead", 92, 17, "aaFileStreamRead err=%zd buf=%p n=%zu", v4, v5, v6, v3);
  }

  return v3;
}

uint64_t aaFileStreamWrite(int *a1, const void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = write(*a1, a2, a3);
  if (v3 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamWrite", 104, 17, "aaFileStreamWrite err=%zd buf=%p n=%zu", v4, v5, v6, v3);
  }

  return v3;
}

uint64_t aaFileStreamPRead(int *a1, void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pread(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPRead", 116, 17, "aaFileStreamPRead err=%zd buf=%p n=%zu off=%llu", v5, v6, v7, v4);
  }

  return v4;
}

uint64_t aaFileStreamPWrite(int *a1, const void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pwrite(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPWrite", 128, 17, "aaFileStreamPWrite err=%zd buf=%p n=%zu off=%llu", v5, v6, v7, v4);
  }

  return v4;
}

off_t aaFileStreamSeek(int *a1, off_t a2, int a3)
{
  if (a1[2])
  {
    return -1;
  }

  else
  {
    return lseek(*a1, a2, a3);
  }
}

uint64_t aaFileStreamTruncate(int *a1, off_t a2)
{
  if (a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ftruncate(*a1, a2);
  }
}

uint64_t aaFileStreamFlush(int *a1)
{
  if (a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  result = fsync(*a1);
  if (result)
  {
    v3 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamFlush", 151, 17, *v3, "fsync", v4, v5, v1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

AAByteStream AAFileStreamOpenWithPath(const char *path, int open_flags, mode_t open_mode)
{
  v3 = path;
  v4 = open(path, open_flags, open_mode);
  if (v4 < 0)
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithPath", 428, 17, *v7, "open: %s", v8, v9, v3);
  }

  else
  {
    v5 = v4;
    result = AAFileStreamOpenWithFD(v4, 1);
    if (result)
    {
      return result;
    }

    close(v5);
  }

  return 0;
}

void *AATempFileStreamOpenWithDirectory(const char *a1)
{
  v2 = calloc(1uLL, 0x68uLL);
  v3 = malloc(0x40CuLL);
  v4 = v3;
  if (!v2 || !v3)
  {
    v9 = *__error();
    v7 = "malloc";
    v8 = 447;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AATempFileStreamOpenWithDirectory", v8, 17, v9, v7, v5, v6, v12);
    free(v2);
    free(v4);
    return 0;
  }

  memset_s(v3, 0x40CuLL, 0, 0x40CuLL);
  if (a1)
  {
    memset(&v13, 0, sizeof(v13));
    if (!realpath_DARWIN_EXTSN(a1, v4 + 12) || stat(v4 + 12, &v13) || (v13.st_mode & 0xF000) != 0x4000)
    {
      v12 = a1;
      v7 = "invalid temp_dir: %s";
      v8 = 457;
LABEL_15:
      v9 = 0;
      goto LABEL_16;
    }
  }

  else if ((getTempDir(v4 + 12, 0x400uLL) & 0x80000000) != 0)
  {
    v7 = "get temp dir";
    v8 = 462;
    goto LABEL_15;
  }

  if (__strlcat_chk() >= 0x400)
  {
    v12 = v4 + 12;
    v7 = "Invalid temp dir path: %s";
    v8 = 464;
    goto LABEL_15;
  }

  v10 = mkostemp(v4 + 12, 0x1000000);
  *v4 = v10;
  if (v10 < 0)
  {
    v9 = *__error();
    v7 = "mkostemp";
    v8 = 466;
    goto LABEL_16;
  }

  *v2 = v4;
  v2[1] = aaTempFileStreamClose;
  v2[2] = aaFileStreamRead;
  v2[3] = aaFileStreamWrite;
  v2[4] = aaFileStreamPRead;
  v2[5] = aaFileStreamPWrite;
  v2[7] = aaFileStreamAbort;
  v2[6] = aaFileStreamSeek;
  v2[8] = aaFileStreamTruncate;
  v2[9] = aaFileStreamFlush;
  return v2;
}

int AASharedBufferPipeOpen(AAByteStream *ostream, AAByteStream *istream, size_t buffer_capacity)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = calloc(1uLL, 0x68uLL);
  v15 = v7;
  if (v6 && v7)
  {
    v16 = SharedBufferCreate(buffer_capacity, v8, v9, v10, v11, v12, v13, v14);
    if (v16)
    {
      v19 = v16;
      result = 0;
      *v15 = v19;
      *(v15 + 1) = aaSharedBufferOStreamClose;
      *(v15 + 3) = aaSharedBufferWrite;
      *(v15 + 7) = SharedBufferAbort;
      *v6 = v19;
      *(v6 + 1) = aaSharedBufferIStreamClose;
      *(v6 + 2) = aaSharedBufferRead;
      *(v6 + 7) = SharedBufferAbort;
      *ostream = v15;
      *istream = v6;
      return result;
    }

    v22 = "SharedBufferCreate";
    v23 = 503;
    v21 = 0;
  }

  else
  {
    v21 = *__error();
    v22 = "malloc";
    v23 = 499;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AASharedBufferPipeOpen", v23, 17, v21, v22, v17, v18, v24);
  free(v6);
  free(v15);
  SharedBufferDestroy(0);
  return -1;
}

uint64_t aaSharedBufferOStreamClose(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SharedBufferWrite(a1, 0, 0, a4, a5, a6, a7, a8);
  if (SharedBufferDecRefCount(a1))
  {
    SharedBufferDestroy(a1);
  }

  return 0;
}

uint64_t aaSharedBufferIStreamClose(uint64_t a1)
{
  if (SharedBufferDecRefCount(a1))
  {
    SharedBufferDestroy(a1);
  }

  return 0;
}

void *AAMagicInputStreamOpen(void *a1, size_t a2, void *a3, size_t *a4)
{
  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x18uLL);
  v10 = v9;
  if (!v8 || !v9)
  {
    v11 = *__error();
    v14 = "malloc";
    v15 = 552;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAMagicInputStreamOpen", v15, 17, v11, v14, v12, v13, v21);
    free(v8);
    free(v10);
    return 0;
  }

  memset_s(v9, 0x18uLL, 0, 0x18uLL);
  *v10 = a1;
  if (a2 >= 0x2000000001)
  {
    *__error() = 12;
    v10[2] = 0;
LABEL_10:
    v11 = *__error();
    v14 = "malloc";
    v15 = 558;
    goto LABEL_11;
  }

  v16 = malloc(a2);
  v10[2] = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = a1[2];
  if (!v17 || (v18 = v17(*a1, v16, a2), (v18 & 0x8000000000000000) != 0))
  {
    v14 = "reading magic bytes\n";
    v15 = 562;
    v11 = 0;
    goto LABEL_11;
  }

  v19 = v18;
  v10[1] = v18;
  memcpy(a3, v10[2], v18);
  *a4 = v19;
  *v8 = v10;
  v8[1] = aaMagicStreamClose;
  v8[2] = aaMagicStreamRead;
  v8[7] = aaMagicStreamAbort;
  return v8;
}

uint64_t aaMagicStreamClose(void **a1)
{
  free(a1[2]);
  free(a1);
  return 0;
}

uint64_t aaMagicStreamRead(uint64_t **a1, char *__dst, size_t a3)
{
  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    do
    {
      if (v6 >= v3)
      {
        v8 = v3;
      }

      else
      {
        v8 = v6;
      }

      memcpy(__dst, a1[2], v8);
      v9 = a1[1];
      if (v9 > v8)
      {
        memmove(a1[2], a1[2] + v8, v9 - v8);
        v9 = a1[1];
      }

      __dst += v8;
      v3 -= v8;
      v7 += v8;
      v6 = (v9 - v8);
      a1[1] = v6;
      if (v6)
      {
        v10 = v3 == 0;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
    if (!v3)
    {
      return v7;
    }

    v11 = (*a1)[2];
    if (v11)
    {
      v12 = v11(**a1, __dst, v3);
      if (v12 < 0)
      {
        return v12;
      }

      v7 += v12;
      return v7;
    }

    return -1;
  }

  v13 = (*a1)[2];
  if (!v13)
  {
    return -1;
  }

  v14 = **a1;

  return v13(v14);
}

void **aaMagicStreamAbort(void **result)
{
  v1 = (*result)[7];
  if (v1)
  {
    return v1(**result);
  }

  return result;
}

void *AATeeOutputStreamOpen(uint64_t a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x10uLL);
  v6 = v5;
  if (v5 && (memset_s(v5, 0x10uLL, 0, 0x10uLL), v4))
  {
    *v6 = a1;
    v6[1] = a2;
    *v4 = v6;
    v4[1] = aaTeeStreamClose;
    v4[3] = aaTeeStreamWrite;
    v4[5] = aaTeeStreamPWrite;
    v4[7] = aaTeeStreamAbort;
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AATeeOutputStreamOpen", 591, 17, *v7, "malloc", v8, v9, v11);
    free(v4);
    free(v6);
    return 0;
  }

  return v4;
}

uint64_t aaTeeStreamWrite(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (*(*a1 + 24))
  {
    v7 = 0;
    if (!a3)
    {
      if (*(a1[1] + 24))
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      goto LABEL_20;
    }

    v8 = a2;
    v9 = a3;
    while (1)
    {
      v10 = (*(v6 + 24))(*v6, v8, v9);
      if (v10 < 1)
      {
        break;
      }

      v8 += v10;
      v7 += v10;
      v9 -= v10;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    v7 = v10;
  }

  else
  {
    v7 = -1;
  }

LABEL_12:
  v12 = a1[1];
  if (*(v12 + 24))
  {
    v11 = 0;
    if (a3)
    {
      v13 = a3;
      while (1)
      {
        v14 = (*(v12 + 24))(*v12, v4, v13);
        if (v14 < 1)
        {
          break;
        }

        v4 += v14;
        v11 += v14;
        v13 -= v14;
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v11 = v14;
    }
  }

  else
  {
    v11 = -1;
  }

LABEL_20:
  if (v11 == a3 && v7 == a3)
  {
    return a3;
  }

  else
  {
    return -1;
  }
}

uint64_t aaTeeStreamPWrite(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = *a1;
  if (*(*a1 + 40))
  {
    v9 = 0;
    if (!a3)
    {
      if (*(a1[1] + 40))
      {
        v14 = 0;
      }

      else
      {
        v14 = -1;
      }

      goto LABEL_20;
    }

    v10 = a2;
    v11 = a4;
    v12 = a3;
    while (1)
    {
      v13 = (*(v8 + 40))(*v8, v10, v12, v11);
      if (v13 < 1)
      {
        break;
      }

      v10 += v13;
      v9 += v13;
      v11 += v13;
      v12 -= v13;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    v9 = v13;
  }

  else
  {
    v9 = -1;
  }

LABEL_12:
  v15 = a1[1];
  if (*(v15 + 40))
  {
    v14 = 0;
    if (a3)
    {
      v16 = a3;
      while (1)
      {
        v17 = (*(v15 + 40))(*v15, v6, v16, v4);
        if (v17 < 1)
        {
          break;
        }

        v6 += v17;
        v14 += v17;
        v4 += v17;
        v16 -= v17;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      v14 = v17;
    }
  }

  else
  {
    v14 = -1;
  }

LABEL_20:
  if (v14 == a3 && v9 == a3)
  {
    return a3;
  }

  else
  {
    return -1;
  }
}

void **aaTeeStreamAbort(void **result)
{
  v1 = result;
  v2 = (*result)[7];
  if (v2)
  {
    result = v2(**result);
  }

  v3 = v1[1];
  v4 = v3[7];
  if (v4)
  {
    v5 = *v3;

    return v4(v5);
  }

  return result;
}

AAByteStream AACustomByteStreamOpen(void)
{
  v0 = calloc(1uLL, 0x68uLL);
  if (!v0)
  {
    v1 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AACustomByteStreamOpen", 619, 17, *v1, "malloc", v2, v3, v5);
  }

  return v0;
}

AAByteStream_impl *AAAFSCStreamOpen(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = afscStreamOpen(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v11)
  {
    v12 = "alloc stream";
    v13 = 1041;
    goto LABEL_5;
  }

  if ((stripAFSC(a1) & 0x80000000) != 0)
  {
    v12 = "clearing file";
    v13 = 1043;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpen", v13, 55, 0, v12, v9, v10, v15);
    AAByteStreamClose(v11);
    return 0;
  }

  return v11;
}

void *afscStreamOpen(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a2 < 4194304001)
  {
    if (a3 < 0xF && ((0x7F99u >> a3) & 1) != 0)
    {
      v12 = dword_296AD2034[a3];
      v13 = calloc(1uLL, 0x68uLL);
      v14 = malloc(0x80uLL);
      v15 = v14;
      if (v14 && (memset_s(v14, 0x80uLL, 0, 0x80uLL), v13))
      {
        *v15 = a1;
        *(v15 + 8) = a4;
        *(v15 + 16) = a2;
        *(v15 + 32) = v12;
        if ((a2 + 0xFFFF) >> 48)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size", v16, v17, v53);
          v18 = 0;
          *(v15 + 44) = -1;
        }

        else
        {
          v34 = (a2 + 0xFFFF) >> 16;
          *(v15 + 44) = v34;
          v18 = v34 + 1;
        }

        v35 = calloc(v18, 4uLL);
        *(v15 + 48) = v35;
        if (v35)
        {
          if (v12 > 10)
          {
            if ((v12 - 11) < 2)
            {
              v38 = COMPRESSION_LZFSE;
              goto LABEL_31;
            }

            if ((v12 - 13) < 2)
            {
              v38 = COMPRESSION_LZBITMAP;
              goto LABEL_31;
            }
          }

          else
          {
            if ((v12 - 7) < 2)
            {
              v38 = 2304;
              goto LABEL_31;
            }

            if (v12 == 4)
            {
              v38 = 1285;
LABEL_31:
              v39 = compression_encode_scratch_buffer_size(v38);
              if (v39)
              {
                if (v39 >= 0x2000000001)
                {
                  *__error() = 12;
                  *(v15 + 56) = 0;
LABEL_57:
                  v29 = *__error();
                  v32 = "malloc";
                  v33 = 1002;
                  goto LABEL_15;
                }

                v40 = malloc(v39);
                *(v15 + 56) = v40;
                if (!v40)
                {
                  goto LABEL_57;
                }
              }

LABEL_35:
              v41 = *(v15 + 72);
              if (!(v41 >> 16))
              {
                v42 = (v15 + 64);
                do
                {
                  v43 = (v41 >> 1) + v41;
                  if (((v41 >> 1) & v41) != 0)
                  {
                    v43 = ((v41 >> 1) & v41) + v41;
                  }

                  if (v41)
                  {
                    v41 = v43;
                  }

                  else
                  {
                    v41 = 0x4000;
                  }
                }

                while (v41 < 0x10000);
                v44 = *(v15 + 80);
                v45 = realloc(v44, v41);
                if (!v45)
                {
                  goto LABEL_58;
                }

                *(v15 + 72) = v41;
                *(v15 + 80) = v45;
              }

              v46 = *(v15 + 96);
              if (v46 >= 0x80008)
              {
LABEL_55:
                if ((v12 - 3) > 0xB)
                {
                  v49 = 0;
                }

                else
                {
                  v49 = byte_296AD2070[v12 - 3];
                }

                *(v15 + 36) = v49;
                v50 = *(v15 + 44);
                v51 = 8 * v50 + 264;
                v52 = 4 * v50 + 4;
                if (a3 < 7)
                {
                  v52 = v51;
                }

                if (v52 < 0xFFFFFFFF)
                {
                  **(v15 + 48) = v52;
                  *v13 = v15;
                  v13[1] = afscStreamClose;
                  v13[7] = afscStreamCancel;
                  v13[3] = afscStreamWrite;
                  v13[12] = afscStreamCloseWithState;
                  return v13;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", v36, v37, v53);
                **(v15 + 48) = -1;
                v33 = 1010;
                v29 = 0;
                v32 = "invalid file size";
                goto LABEL_15;
              }

              v42 = (v15 + 88);
              do
              {
                v47 = (v46 >> 1) + v46;
                if (((v46 >> 1) & v46) != 0)
                {
                  v47 = ((v46 >> 1) & v46) + v46;
                }

                if (v46)
                {
                  v46 = v47;
                }

                else
                {
                  v46 = 0x4000;
                }
              }

              while (v46 < 0x80008);
              v44 = *(v15 + 104);
              v48 = realloc(v44, v46);
              if (v48)
              {
                *(v15 + 96) = v46;
                *(v15 + 104) = v48;
                goto LABEL_55;
              }

LABEL_58:
              free(v44);
              *v42 = 0;
              v42[1] = 0;
              v42[2] = 0;
              v29 = *__error();
              v32 = "malloc";
              v33 = 1005;
              goto LABEL_15;
            }

            if (v12 == 10)
            {
              goto LABEL_35;
            }
          }

          v38 = -1;
          goto LABEL_31;
        }

        v29 = *__error();
        v32 = "malloc";
        v33 = 997;
      }

      else
      {
        v29 = *__error();
        v32 = "malloc";
        v33 = 988;
      }

LABEL_15:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", v33, 55, v29, v32, v30, v31, v53);
      goto LABEL_12;
    }

    v53 = a3;
    v19 = "invalid compression type: %d";
    v20 = 981;
  }

  else
  {
    v19 = "invalid uncompressed size";
    v20 = 959;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", v20, 55, 0, v19, a7, a8, v53);
  v13 = 0;
  v15 = 0;
LABEL_12:
  afscStreamClose(v15, v21, v22, v23, v24, v25, v26, v27);
  free(v13);
  return 0;
}

uint64_t stripAFSC(int a1)
{
  memset(&v17, 0, sizeof(v17));
  if (fstat(a1, &v17))
  {
    v2 = *__error();
    v5 = "fstat";
    v6 = 100;
  }

  else
  {
    if ((v17.st_flags & 0x20) == 0 || (fchflags(a1, v17.st_flags & 0xFFFFFFDF) & 0x80000000) == 0)
    {
      v9 = 1;
      goto LABEL_7;
    }

    v2 = *__error();
    v5 = "fchflags UF_COMPRESSED";
    v6 = 105;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "clearUFCompressedBit", v6, 55, v2, v5, v3, v4, v17.st_dev);
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 154, 55, 0, "clearing UF_COMPRESSED", v7, v8, v17.st_dev);
  v9 = 0;
LABEL_7:
  if ((fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32) & 0x8000000000000000) == 0 && fremovexattr(a1, "com.apple.ResourceFork", 32) < 0)
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 159, 55, *v10, "fremovexattr", v11, v12, v17.st_dev);
    v9 = 0;
  }

  if ((fgetxattr(a1, "com.apple.decmpfs", 0, 0, 0, 32) & 0x8000000000000000) == 0 && fremovexattr(a1, "com.apple.decmpfs", 32) < 0)
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 161, 55, *v13, "fremovexattr", v14, v15, v17.st_dev);
    v9 = 0;
  }

  if (v9)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream_impl *AAAFSCStreamOpenWithMetadata(int a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 > 0xE)
  {
    goto LABEL_4;
  }

  if (((1 << a3) & 0x2A88) != 0)
  {
    if (a4)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1060, 55, 0, "invalid resource fork for type", a7, a8, v19);
      goto LABEL_7;
    }
  }

  else if (((1 << a3) & 0x5510) == 0)
  {
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1059, 55, 0, "invalid compression_type: %d", a7, a8, a3);
LABEL_7:
    v11 = 0;
LABEL_13:
    AAByteStreamClose(v11);
    return 0;
  }

  v12 = afscStreamOpen(a1, a2, a3, 0, a5, a6, a7, a8);
  v11 = v12;
  if (!v12)
  {
    v16 = "alloc stream";
    v17 = 1064;
    goto LABEL_12;
  }

  v15 = *v12;
  *(v15 + 112) = a3;
  *(v15 + 116) = a4;
  if ((stripAFSC(a1) & 0x80000000) != 0)
  {
    v16 = "clearing file";
    v17 = 1070;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", v17, 55, 0, v16, v13, v14, v19);
    goto LABEL_13;
  }

  return v11;
}

AAByteStream_impl *AAAFSCStreamOpenWithState(int a1, AAByteStream_impl *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  if (!*(a2 + 2))
  {
LABEL_71:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", 1088, 55, 0, "loading state", a7, a8, v52);
    v20 = 0;
    goto LABEL_78;
  }

  v11 = &v52;
  v12 = 48;
  do
  {
    v13 = (*(a2 + 2))(*a2, v11, v12);
    if (v13 < 0)
    {
      goto LABEL_71;
    }

    v11 = (v11 + v13);
    v12 -= v13;
    if (v13)
    {
      v16 = v12 == 0;
    }

    else
    {
      v16 = 1;
    }
  }

  while (!v16);
  v17 = afscStreamOpen(a1, *(&v52 + 1), DWORD2(v53), v52, v14, v15, a7, a8);
  v20 = v17;
  if (!v17)
  {
    v49 = "open AFSC stream";
    v50 = 1092;
    goto LABEL_77;
  }

  v21 = *v17;
  *(v21 + 24) = v53;
  *(v21 + 40) = HIDWORD(v53);
  *(v21 + 112) = v54;
  if (!*(a2 + 2))
  {
    goto LABEL_76;
  }

  v22 = *(v21 + 44);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    v25 = 4 * v24;
    v26 = *(v21 + 48);
    do
    {
      v27 = (*(a2 + 2))(*a2, v26, v25);
      if (v27 < 0)
      {
        goto LABEL_76;
      }

      v26 += v27;
      v25 -= v27;
      if (v27)
      {
        v28 = v25 == 0;
      }

      else
      {
        v28 = 1;
      }
    }

    while (!v28);
  }

  v29 = DWORD2(v54);
  if (!DWORD2(v54))
  {
LABEL_44:
    v40 = HIDWORD(v54);
    if (!HIDWORD(v54))
    {
LABEL_69:
      if (a3)
      {
        *a3 = *(v21 + 24);
      }

      return v20;
    }

    v30 = (v21 + 88);
    v42 = *(v21 + 88);
    v41 = *(v21 + 96);
    while (1)
    {
      if (v42 != v41)
      {
        goto LABEL_57;
      }

      v43 = v41 + 0x40000;
      if ((v41 + 0x40000) < 0)
      {
        goto LABEL_76;
      }

      if (v41 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v41)
        {
          v41 = 0x4000;
          v45 = 0x4000;
          if (v43 <= 0x4000)
          {
            goto LABEL_59;
          }
        }

        v44 = v41 >> 1;
        if ((v41 & (v41 >> 1)) != 0)
        {
          v44 = v41 & (v41 >> 1);
        }

        v41 += v44;
      }

      while (v41 < v43);
      v45 = v41;
      if (v41 >= 0x2000000001)
      {
        goto LABEL_74;
      }

LABEL_59:
      v36 = *(v21 + 104);
      v46 = realloc(v36, v45);
      if (!v46)
      {
        goto LABEL_73;
      }

      *(v21 + 96) = v45;
      *(v21 + 104) = v46;
      v42 = *(v21 + 88);
LABEL_61:
      if (v45 - v42 >= v40)
      {
        v47 = v40;
      }

      else
      {
        v47 = v45 - v42;
      }

      v48 = AAByteStreamRead(a2, (*(v21 + 104) + v42), v47);
      if (v48 < 0)
      {
        goto LABEL_76;
      }

      if (!v48)
      {
        goto LABEL_69;
      }

      v42 = *v30 + v48;
      if (__CFADD__(*v30, v48))
      {
        goto LABEL_76;
      }

      v41 = *(v21 + 96);
      if (v42 > v41)
      {
        goto LABEL_76;
      }

      *v30 = v42;
      v40 -= v48;
      if (!v40)
      {
        goto LABEL_69;
      }
    }

    v42 = v41;
LABEL_57:
    v45 = v41;
    goto LABEL_61;
  }

  v30 = (v21 + 64);
  v32 = *(v21 + 64);
  v31 = *(v21 + 72);
  while (1)
  {
    if (v32 != v31)
    {
      goto LABEL_32;
    }

    v33 = v31 + 0x40000;
    if ((v31 + 0x40000) < 0)
    {
      goto LABEL_76;
    }

    if (v31 > 0xFFFFFFFFFFFBFFFFLL)
    {
      v32 = v31;
LABEL_32:
      v35 = v31;
      goto LABEL_36;
    }

    do
    {
      while (!v31)
      {
        v31 = 0x4000;
        v35 = 0x4000;
        if (v33 <= 0x4000)
        {
          goto LABEL_34;
        }
      }

      v34 = v31 >> 1;
      if ((v31 & (v31 >> 1)) != 0)
      {
        v34 = v31 & (v31 >> 1);
      }

      v31 += v34;
    }

    while (v31 < v33);
    v35 = v31;
    if (v31 >= 0x2000000001)
    {
      break;
    }

LABEL_34:
    v36 = *(v21 + 80);
    v37 = realloc(v36, v35);
    if (!v37)
    {
LABEL_73:
      free(v36);
      goto LABEL_75;
    }

    *(v21 + 72) = v35;
    *(v21 + 80) = v37;
    v32 = *(v21 + 64);
LABEL_36:
    if (v35 - v32 >= v29)
    {
      v38 = v29;
    }

    else
    {
      v38 = v35 - v32;
    }

    v39 = AAByteStreamRead(a2, (*(v21 + 80) + v32), v38);
    if (v39 < 0)
    {
      goto LABEL_76;
    }

    if (!v39)
    {
      goto LABEL_44;
    }

    v32 = *v30 + v39;
    if (__CFADD__(*v30, v39))
    {
      goto LABEL_76;
    }

    v31 = *(v21 + 72);
    if (v32 > v31)
    {
      goto LABEL_76;
    }

    *v30 = v32;
    v29 -= v39;
    if (!v29)
    {
      goto LABEL_44;
    }
  }

LABEL_74:
  *__error() = 12;
LABEL_75:
  *v30 = 0;
  v30[1] = 0;
  v30[2] = 0;
LABEL_76:
  v49 = "loading state";
  v50 = 1103;
LABEL_77:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", v50, 55, 0, v49, v18, v19, v52);
LABEL_78:
  AAByteStreamClose(v20);
  return 0;
}

uint64_t AAAFSCGetMetadata(int a1, _DWORD *a2, _DWORD *a3)
{
  memset(&v17, 0, sizeof(v17));
  __s[0] = 0;
  __s[1] = 0;
  v16 = 0;
  if (!fstat(a1, &v17))
  {
    if (statIsCompressed(v17.st_flags))
    {
      if ((loadDecmpfsXattr(a1, a2, &v14, __s) & 0x80000000) != 0)
      {
        v9 = "loading decmpfs";
        v10 = 1137;
      }

      else
      {
        if (*a2 <= 0xDu && ((1 << *a2) & 0x2A88) != 0)
        {
          v11 = 0;
LABEL_10:
          *a3 = 0;
          goto LABEL_11;
        }

        v13 = resourceForkSize(a1);
        *a3 = v13;
        if (v13 != -1)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v9 = "invalid resource fork";
        v10 = 1140;
      }

      v6 = 0;
      goto LABEL_3;
    }

    v11 = 0;
    *a2 = -1;
    goto LABEL_10;
  }

  v6 = *__error();
  v9 = "fstat";
  v10 = 1123;
LABEL_3:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCGetMetadata", v10, 55, v6, v9, v7, v8, v14);
  v11 = 0xFFFFFFFFLL;
LABEL_11:
  free(v16);
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  return v11;
}

uint64_t loadDecmpfsXattr(int a1, _DWORD *a2, void *a3, unint64_t *a4)
{
  *a4 = 0;
  v8 = a4[1];
  if (v8 >> 16)
  {
    v12 = 0;
    v11 = a4[2];
  }

  else
  {
    do
    {
      v9 = (v8 >> 1) + v8;
      if (((v8 >> 1) & v8) != 0)
      {
        v9 = ((v8 >> 1) & v8) + v8;
      }

      if (v8)
      {
        v8 = v9;
      }

      else
      {
        v8 = 0x4000;
      }
    }

    while (v8 < 0x10000);
    v10 = a4[2];
    v11 = realloc(v10, v8);
    if (!v11)
    {
      free(v10);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v17 = "blob reserve";
      v18 = 255;
      goto LABEL_20;
    }

    a4[1] = v8;
    a4[2] = v11;
    v12 = *a4;
  }

  v13 = fgetxattr(a1, "com.apple.decmpfs", &v11[v12], v8 - v12, 0, 32);
  if (v13 < 16 || (v16 = *a4 + v13, __CFADD__(*a4, v13)) || v16 > a4[1])
  {
    v17 = "invalid/missing decmpfs";
    v18 = 261;
LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", v18, 55, 0, v17, v14, v15, v23);
    return 0xFFFFFFFFLL;
  }

  *a4 = v16;
  v19 = a4[2];
  if (*v19 != 1668116582)
  {
    v17 = "Invalid decmpfs xattr";
    v18 = 263;
    goto LABEL_20;
  }

  v20 = *(v19 + 8);
  *a2 = *(v19 + 4);
  *a3 = v20;
  v21 = v16 - 16;
  if (v16 < 0x10)
  {
    v17 = "blob resize";
    v18 = 268;
    goto LABEL_20;
  }

  if (v16 != 16)
  {
    memmove(v19, (v19 + 16), v16 - 16);
  }

  result = 0;
  *a4 = v21;
  return result;
}

unint64_t resourceForkSize(int a1)
{
  result = fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32);
  if ((result & 0x8000000000000000) != 0)
  {
    v4 = "Missing resource fork xattr";
    v5 = 309;
  }

  else
  {
    if (!HIDWORD(result))
    {
      return result;
    }

    v4 = "Invalid resource fork xattr";
    v5 = 310;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkSize", v5, 55, 0, v4, v2, v3, vars0);
  return 0xFFFFFFFFLL;
}

uint64_t AAAFSCSetMetadata(int a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v43, 0, sizeof(v43));
  v41 = 0;
  v42 = -1;
  __s = 0;
  v39 = 0;
  v40 = 0;
  if (a2 <= 0xD && ((1 << a2) & 0x2A88) != 0)
  {
    if (a3)
    {
      v11 = "invalid resource fork size";
      v12 = 1169;
LABEL_5:
      v13 = 0;
LABEL_10:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", v12, 55, v13, v11, a7, a8, v36);
      v15 = 0;
LABEL_11:
      v16 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }

    v14 = 0;
  }

  else
  {
    v14 = a3 != 0;
  }

  if (fstat(a1, &v43))
  {
    v13 = *__error();
    v11 = "fstat";
    v12 = 1171;
    goto LABEL_10;
  }

  st_size = v43.st_size;
  if ((AAAFSCGetMetadata(a1, &v42, &v41) & 0x80000000) != 0)
  {
    v11 = "reading current metadata";
    v12 = 1175;
    goto LABEL_5;
  }

  v21 = v42 != -1;
  v22 = v42 != a2 && v42 != -1;
  if (v42 != a2)
  {
    v21 = 0;
  }

  if (v41 <= a3)
  {
    v21 = 0;
  }

  if (v22 || v14 && v21)
  {
    if ((decompressToData(a1) & 0x80000000) != 0)
    {
      v11 = "decompression failed";
      v12 = 1188;
      goto LABEL_5;
    }

    v41 = 0;
    v42 = -1;
    if (a2 == -1)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v42 == a2)
    {
      goto LABEL_61;
    }

    if (v42 != -1)
    {
      v11 = "invalid state";
      v12 = 1200;
      goto LABEL_5;
    }
  }

  v15 = AAAFSCStreamOpenWithMetadata(a1, st_size, a2, a3, v19, v20, a7, a8);
  if (!v15)
  {
    v34 = "open AFSC stream";
    v35 = 1202;
LABEL_75:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", v35, 55, 0, v34, v23, v24, v36);
    goto LABEL_11;
  }

  v25 = 0;
  do
  {
    v26 = (v25 >> 1) + v25;
    if (((v25 >> 1) & v25) != 0)
    {
      v26 = ((v25 >> 1) & v25) + v25;
    }

    if (v25)
    {
      v25 = v26;
    }

    else
    {
      v25 = 0x4000;
    }
  }

  while (v25 < 0x80000);
  v27 = malloc(v25);
  if (!v27)
  {
    __s = 0;
    v39 = 0;
    v40 = 0;
    v34 = "blob alloc";
    v35 = 1205;
    goto LABEL_75;
  }

  v28 = v27;
  v39 = v25;
  v40 = v27;
  if (st_size)
  {
    v29 = 0;
    v36 = v27;
    v37 = st_size;
    while (1)
    {
      __s = 0;
      if (v25 >= st_size - v29)
      {
        v30 = st_size - v29;
      }

      else
      {
        v30 = v25;
      }

      if (pread(a1, v28, v30, v29) != v30)
      {
LABEL_72:
        v34 = "read data";
        v35 = 1213;
        goto LABEL_75;
      }

      if (v30)
      {
        if (__CFADD__(__s, v30))
        {
          goto LABEL_72;
        }

        v25 = v39;
        if (__s + v30 > v39)
        {
          goto LABEL_72;
        }

        __s += v30;
        if (*(v15 + 3))
        {
          v31 = 0;
          v32 = v30;
          while (1)
          {
            v33 = (*(v15 + 3))(*v15, v28, v32);
            if (v33 < 1)
            {
              break;
            }

            v28 += v33;
            v31 += v33;
            v32 -= v33;
            if (!v32)
            {
              goto LABEL_57;
            }
          }

          v31 = v33;
LABEL_57:
          v28 = v36;
          st_size = v37;
        }

        else
        {
          v31 = -1;
        }
      }

      else
      {
        v31 = *(v15 + 3) ? 0 : -1;
      }

      if (v31 != v30)
      {
        break;
      }

      v29 += v30;
      if (v29 >= st_size)
      {
        goto LABEL_60;
      }
    }

    v34 = "write data";
    v35 = 1215;
    goto LABEL_75;
  }

LABEL_60:
  if (AAByteStreamClose(v15) < 0)
  {
    v11 = "AFSC stream close";
    v12 = 1222;
    goto LABEL_5;
  }

LABEL_61:
  if ((AAAFSCGetMetadata(a1, &v42, &v41) & 0x80000000) != 0)
  {
    v11 = "reading current metadata";
    v12 = 1229;
    goto LABEL_5;
  }

  if (v42 != a2 || (v16 = 0, v15 = 0, a3) && v41 != a3)
  {
    if ((resizeResourceFork(a1, a3) & 0x80000000) == 0)
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_12;
    }

    v11 = "resizing resource fork";
    v12 = 1236;
    goto LABEL_5;
  }

LABEL_12:
  free(v40);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  AAByteStreamClose(v15);
  return v16;
}

uint64_t decompressToData(int a1)
{
  v2 = 0;
  __s = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v71 = -1;
  v70 = 0;
  do
  {
    v3 = (v2 >> 1) + v2;
    if (((v2 >> 1) & v2) != 0)
    {
      v3 = ((v2 >> 1) & v2) + v2;
    }

    if (v2)
    {
      v2 = v3;
    }

    else
    {
      v2 = 0x4000;
    }
  }

  while (v2 <= 0x10000);
  v4 = malloc(v2);
  if (!v4)
  {
    p_s = &__s;
LABEL_22:
    *p_s = 0;
    p_s[1] = 0;
    p_s[2] = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 448, 55, 0, "blob alloc", v5, v6, v61);
    v10 = 0;
LABEL_44:
    v24 = 0;
LABEL_45:
    v26 = 0;
    goto LABEL_46;
  }

  v7 = 0;
  v76 = v2;
  v77 = v4;
  do
  {
    v8 = (v7 >> 1) + v7;
    if (((v7 >> 1) & v7) != 0)
    {
      v8 = ((v7 >> 1) & v7) + v7;
    }

    if (v7)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0x4000;
    }
  }

  while (v7 < 0x80000);
  v9 = malloc(v7);
  if (!v9)
  {
    p_s = &v72;
    goto LABEL_22;
  }

  v10 = v9;
  v73 = v7;
  v74 = v9;
  if ((loadDecmpfsXattr(a1, &v71, &v70, &__s) & 0x80000000) != 0)
  {
    v17 = "loading decmpfs xattr";
    v18 = 451;
LABEL_42:
    v25 = 0;
LABEL_43:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", v18, 55, v25, v17, v11, v12, v61);
    goto LABEL_44;
  }

  v13 = v71;
  v14 = v71 - 3;
  if (v71 - 3 > 0xB)
  {
    v15 = 0;
  }

  else
  {
    v15 = byte_296AD2070[v14];
  }

  if (v71 > 0xE)
  {
    goto LABEL_30;
  }

  if (((1 << v71) & 0x180) != 0)
  {
    v19 = 0;
    v20 = 2304;
    goto LABEL_35;
  }

  if (((1 << v71) & 0x1800) != 0)
  {
    v19 = 0;
    v20 = COMPRESSION_LZFSE;
    goto LABEL_35;
  }

  if (((1 << v71) & 0x6000) != 0)
  {
    v19 = 0;
    v20 = COMPRESSION_LZBITMAP;
  }

  else
  {
LABEL_30:
    if (v14 >= 2)
    {
      v20 = -1;
      v19 = 1;
    }

    else
    {
      v19 = 0;
      v20 = 1285;
    }
  }

LABEL_35:
  v21 = v70;
  if (!v70 || (v22 = v70 + 0xFFFF, (v70 + 0xFFFF) >> 48))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size", v11, v12, v61);
    goto LABEL_41;
  }

  v23 = v22 >> 16;
  if (v22 >> 16 == 0xFFFFFFFF)
  {
LABEL_41:
    v17 = "invalid uncompressed size";
    v18 = 457;
    goto LABEL_42;
  }

  if (v19)
  {
    v24 = 0;
    goto LABEL_53;
  }

  v29 = v15;
  v30 = compression_decode_scratch_buffer_size(v20);
  if (v30)
  {
    if (v30 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_64:
      v25 = *__error();
      v17 = "malloc";
      v18 = 463;
      goto LABEL_43;
    }

    v24 = malloc(v30);
    v15 = v29;
    if (!v24)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v24 = 0;
    v15 = v29;
  }

LABEL_53:
  if (v13 <= 0xD && ((1 << v13) & 0x2A88) != 0)
  {
    v31 = v77;
    if (*v77 == v15)
    {
      v32 = __s - 1;
      memcpy(v10, v77 + 1, __s - 1);
    }

    else
    {
      v32 = compression_decode_buffer(v10, 0x10000uLL, v77, __s, v24, v20);
    }

    if (v32 - 65537 <= 0xFFFFFFFFFFFEFFFFLL)
    {
      v35 = "invalid chunk";
      v36 = 487;
LABEL_66:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", v36, 55, 0, v35, v33, v34, v61);
      goto LABEL_45;
    }

    v72 = v32;
    v37 = pwrite(a1, v31, v32, 0);
    v26 = 0;
    if (v37 != v32)
    {
      v35 = "writing chunk";
      v36 = 490;
      goto LABEL_66;
    }

LABEL_61:
    if (fremovexattr(a1, "com.apple.ResourceFork", 32) < 0)
    {
      v48 = *__error();
      v46 = "Removing xattr";
      v47 = 548;
      goto LABEL_79;
    }

    if (fremovexattr(a1, "com.apple.decmpfs", 32) < 0)
    {
      v48 = *__error();
      v46 = "Removing xattr";
      v47 = 549;
      goto LABEL_79;
    }

    v27 = 0;
    goto LABEL_47;
  }

  v64 = v15;
  v26 = calloc(v23 + 1, 4uLL);
  if (!v26)
  {
    v48 = *__error();
    v46 = "malloc";
    v47 = 498;
    goto LABEL_79;
  }

  if ((loadChunkOffsets(a1, v13, v22 >> 16, v26, v38, v39, v40, v41) & 0x80000000) != 0)
  {
    v46 = "loading chunk offsets";
    v47 = 499;
    goto LABEL_78;
  }

  if (v22 < 0x10000)
  {
    v44 = 0;
    v45 = 1;
LABEL_71:
    if (v44 != v21 || !v45)
    {
      v46 = "corrupted resource fork";
      v47 = 544;
      goto LABEL_78;
    }

    goto LABEL_61;
  }

  v44 = 0;
  v49 = 0;
  v62 = v76;
  if (v23 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v23;
  }

  v51 = v26 + 1;
  v52 = v23 - 1;
  value = v77;
  while (1)
  {
    v65 = v50;
    __s = 0;
    if (!((v7 - v49) >> 16))
    {
      v46 = "obuf full";
      v47 = 507;
      goto LABEL_78;
    }

    v66 = v44;
    v53 = *(v51 - 1);
    v54 = *v51;
    v63 = v51;
    v55 = *v51 - v53;
    if (v62 < v55)
    {
      v46 = "invalid chunk size";
      v47 = 510;
      goto LABEL_78;
    }

    v68 = v52;
    v69 = v49;
    if (fgetxattr(a1, "com.apple.ResourceFork", value, v54 - v53, v53, 32) != v55)
    {
      v46 = "read resource fork chunk";
      v47 = 513;
      goto LABEL_78;
    }

    if (v54 != v53)
    {
      __s = v54 - v53;
    }

    v44 = v66;
    if (*value == v64)
    {
      v56 = (v55 - 1);
      memcpy(&v10[v69], value + 1, v56);
    }

    else
    {
      v56 = compression_decode_buffer(&v10[v69], 0x10000uLL, value, v55, v24, v20);
    }

    v57 = v68;
    if (v56 != 0x10000 && (!v56 || v68 || v56 > 0x10000) || (v49 = v69 + v56, __CFADD__(v69, v56)) || v7 < v49)
    {
      v46 = "invalid chunk";
      v47 = 532;
      goto LABEL_78;
    }

    v72 = v69 + v56;
    if (!v68 || !((v7 - v49) >> 16))
    {
      break;
    }

    v58 = v65;
    v59 = v63;
LABEL_103:
    v51 = v59 + 1;
    v52 = v57 - 1;
    v50 = v58 - 1;
    if (!v50)
    {
      v45 = v49 == 0;
      goto LABEL_71;
    }
  }

  v60 = v69 + v56;
  if (pwrite(a1, v10, v49, v66) == v49)
  {
    v44 = v60 + v66;
    v72 = 0;
    v49 = 0;
    v58 = v65;
    v59 = v63;
    v57 = v68;
    goto LABEL_103;
  }

  v46 = "writing chunk";
  v47 = 539;
LABEL_78:
  v48 = 0;
LABEL_79:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", v47, 55, v48, v46, v42, v43, v61);
LABEL_46:
  v27 = 0xFFFFFFFFLL;
LABEL_47:
  free(v77);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  free(v10);
  memset_s(&v72, 0x18uLL, 0, 0x18uLL);
  free(v24);
  free(v26);
  return v27;
}

uint64_t resizeResourceFork(int a1, unsigned int a2)
{
  __s = 0;
  v71 = 0;
  __ptr = 0;
  v69 = -1;
  v68 = 0;
  if ((loadDecmpfsXattr(a1, &v69, &v68, &__s) & 0x80000000) != 0)
  {
    v8 = "loading decmpfs xattr";
    v9 = 574;
    goto LABEL_8;
  }

  v6 = v69;
  if ((v69 + 1) <= 0xE && ((1 << (v69 + 1)) & 0x5511) != 0)
  {
    v8 = "invalid compression type";
    v9 = 575;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", v9, 55, 0, v8, v4, v5, v61);
LABEL_9:
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v14 = resourceForkSize(a1);
  if (v14 == -1)
  {
    v8 = "invalid resource fork";
    v9 = 579;
    goto LABEL_8;
  }

  if (a2 < v14)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 580, 55, 0, "can't resize resource fork %u to %u", v4, v5, v14);
    goto LABEL_9;
  }

  v15 = a2 - v14;
  if (a2 == v14)
  {
    v10 = 0;
    v11 = 0;
LABEL_18:
    v12 = 0;
    goto LABEL_11;
  }

  v16 = v68;
  if (!v68 || (v17 = v68 + 0xFFFF, (v68 + 0xFFFF) >> 48))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size", v4, v5, v61);
    goto LABEL_44;
  }

  v18 = v17 >> 16;
  if ((v17 >> 16) + 1 <= 1)
  {
LABEL_44:
    v8 = "invalid uncompressed size";
    v9 = 589;
    goto LABEL_8;
  }

  v11 = calloc((v17 >> 16) + 1, 4uLL);
  v19 = calloc((v17 >> 16) + 1, 4uLL);
  v10 = v19;
  if (!v11 || !v19)
  {
    v39 = *__error();
    v59 = "malloc";
    v60 = 594;
    goto LABEL_100;
  }

  if ((loadChunkOffsets(a1, v6, v17 >> 16, v11, v20, v21, v22, v23) & 0x80000000) != 0)
  {
    v59 = "loading chunk offsets";
    v60 = 595;
    goto LABEL_99;
  }

  v10[v18] = v15 + v11[v18];
  v28 = v17 >> 16;
  while (v28)
  {
    v29 = (v28 - 1);
    v30 = v16 - (v29 << 16);
    if (v30 >= 0x10000)
    {
      LODWORD(v30) = 0x10000;
    }

    v31 = v11[v28];
    v32 = v11[v29];
    v33 = v10[v28];
    v34 = v31 - v32;
    v35 = v33 - v32;
    if (v35 >= 0x10000)
    {
      v35 = 0x10000;
    }

    if (v34 > v35)
    {
      v35 = v34;
    }

    v36 = (v34 & 0xFFFF0000) != 0 || v34 >= v30;
    if (v36)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    v36 = v33 >= v37;
    v38 = v33 - v37;
    v10[v29] = v38;
    if (!v36)
    {
      v59 = "resource fork resize failed";
      v60 = 607;
      goto LABEL_99;
    }

    LODWORD(v28) = v29;
    if (v38 < v11[v29])
    {
      v59 = "invalid state when resizing resource fork";
      v60 = 608;
      goto LABEL_99;
    }
  }

  if (*v10 != *v11)
  {
    v59 = "resource fork resize failed";
    v60 = 610;
    goto LABEL_99;
  }

  v40 = v71;
  if (v71 <= 0x10000)
  {
    do
    {
      v41 = (v40 >> 1) + v40;
      if (((v40 >> 1) & v40) != 0)
      {
        v41 = ((v40 >> 1) & v40) + v40;
      }

      if (v40)
      {
        v40 = v41;
      }

      else
      {
        v40 = 0x4000;
      }
    }

    while (v40 < 0x10001);
    v42 = __ptr;
    v43 = realloc(__ptr, v40);
    if (!v43)
    {
      free(v42);
      __s = 0;
      v71 = 0;
      __ptr = 0;
      v59 = "blob alloc";
      v60 = 613;
      goto LABEL_99;
    }

    __ptr = v43;
  }

  v44 = __s;
  if (v17 < 0x10000)
  {
    goto LABEL_91;
  }

  value = __ptr;
  v45 = v11[(v18 - 1)];
  __n = v11[v18];
  size_4 = v18 - 1;
  v62 = &v10[(v18 - 1)];
  if (v45 == *v62 && __n - v45 == v10[v18] - *v62)
  {
LABEL_90:
    __ptr = value;
LABEL_91:
    __s = v44;
    v71 = v40;
    if ((storeChunkOffsets(a1, v6, v18, v10, v24, v25, v26, v27) & 0x80000000) != 0)
    {
      v59 = "storing new offsets";
      v60 = 635;
      goto LABEL_99;
    }

    goto LABEL_18;
  }

  v47 = v10[v18] - *v62;
  v48 = __n - v45;
  v49 = v40;
  while (1)
  {
    size = v47;
    v50 = v48;
    v51 = v48;
    v52 = fgetxattr(a1, "com.apple.ResourceFork", value, v48, v45, 32);
    v53 = size;
    if (v52 != v51)
    {
LABEL_94:
      v71 = v40;
      __ptr = value;
      __s = 0;
      v59 = "read chunk";
      v60 = 628;
      goto LABEL_99;
    }

    if (__n == v45)
    {
      v54 = 0;
    }

    else
    {
      v54 = v50;
      if (v49 < v50)
      {
        goto LABEL_94;
      }
    }

    if (size <= v50)
    {
      v44 = v54;
      v56 = v62;
      goto LABEL_83;
    }

    __na = size - v50;
    v44 = v54 + __na;
    if (v49 < v54 + __na)
    {
      break;
    }

    if (value)
    {
      v57 = value;
LABEL_81:
      memset_s(&v57[v54], __na, 0, __na);
      value = v57;
    }

    else
    {
      value = 0;
    }

    v56 = v62;
    v53 = size;
LABEL_83:
    if (fsetxattr(a1, "com.apple.ResourceFork", value, v53, *v56, 0) < 0)
    {
      v71 = v40;
      __ptr = value;
      __s = v44;
      v59 = "write chunk";
      v60 = 631;
      goto LABEL_99;
    }

    if (size_4)
    {
      v58 = size_4 - 1;
      v45 = v11[size_4 - 1];
      __n = v11[size_4];
      v48 = __n - v45;
      v62 = &v10[size_4 - 1];
      v47 = v10[size_4--] - *v62;
      if (v45 != *v62)
      {
        continue;
      }

      size_4 = v58;
      if (v48 != v47)
      {
        continue;
      }
    }

    goto LABEL_90;
  }

  do
  {
    while (!v49)
    {
      v49 = 0x4000;
      v40 = 0x4000;
      if (v44 <= 0x4000)
      {
        goto LABEL_80;
      }
    }

    v55 = v49 >> 1;
    if ((v49 & (v49 >> 1)) != 0)
    {
      v55 = v49 & (v49 >> 1);
    }

    v49 += v55;
  }

  while (v49 < v44);
  v40 = v49;
  if (v49 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_98;
  }

LABEL_80:
  v57 = realloc(value, v40);
  v49 = v40;
  if (v57)
  {
    goto LABEL_81;
  }

  free(value);
LABEL_98:
  __s = 0;
  v71 = 0;
  __ptr = 0;
  v59 = "store padding";
  v60 = 629;
LABEL_99:
  v39 = 0;
LABEL_100:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", v60, 55, v39, v59, v26, v27, v61);
LABEL_10:
  v12 = 0xFFFFFFFFLL;
LABEL_11:
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  free(v11);
  free(v10);
  return v12;
}

uint64_t afscStreamClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = atomic_load((result + 120));
    v10 = v9 == 0;
    v11 = *(result + 16);
    if (*(result + 24) < v11 || *(result + 64))
    {
      goto LABEL_4;
    }

    v15 = *(result + 88);
    v16 = *(result + 40);
    if (v15)
    {
      if (v16)
      {
LABEL_4:
        v39 = *(result + 24);
        v12 = "invalid final AFSC stream state, received %zu/%zu bytes";
        v13 = 826;
        goto LABEL_5;
      }

LABEL_17:
      v18 = *(v8 + 32) - (v15 != 0);
      v19 = *v8;
      __s = 0uLL;
      v41 = 0;
      if ((v18 - 7) >= 8 && (v18 - 3) >= 2)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", 286, 55, 0, "unsupported compression type: %d", a7, a8, v18);
        v23 = 0;
LABEL_55:
        free(v23);
        memset_s(&__s, 0x18uLL, 0, 0x18uLL);
        v12 = "store decmpfs xattr";
        v13 = 837;
        goto LABEL_5;
      }

      v20 = malloc(0x4000uLL);
      if (!v20)
      {
        goto LABEL_52;
      }

      v23 = v20;
      v41 = v20;
      *v20 = 1668116582;
      *(v20 + 1) = v18;
      *(v20 + 1) = v11;
      __s = xmmword_296AD1FE0;
      v24 = v15 + 16;
      if (v15 >= 0xFFFFFFFFFFFFFFF0 || (v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      v25 = *(v8 + 104);
      if (v24 > 0x4000)
      {
        for (i = 0x4000; i < v24; i += v27)
        {
          v27 = i >> 1;
          if ((i & (i >> 1)) != 0)
          {
            v27 = i & (i >> 1);
          }
        }

        if (i >= 0x2000000001)
        {
          *__error() = 12;
LABEL_52:
          v23 = 0;
          __s = 0uLL;
          v41 = 0;
          goto LABEL_53;
        }

        v30 = realloc(v20, i);
        if (!v30)
        {
          free(v23);
          goto LABEL_52;
        }

        *(&__s + 1) = i;
        v41 = v30;
        v23 = v30;
      }

      v31 = v23 + 16;
      if (v25)
      {
        memcpy(v31, v25, v15);
      }

      else
      {
        memset_s(v31, v15, 0, v15);
      }

      *&__s = v15 + 16;
      if ((v15 & 0x8000000000000000) == 0)
      {
        if ((fsetxattr(v19, "com.apple.decmpfs", v23, v15 + 16, 0, 0) & 0x80000000) == 0)
        {
          free(v23);
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (ftruncate(*v8, 0))
          {
            v14 = *__error();
            v12 = "ftruncate";
            v13 = 840;
            goto LABEL_6;
          }

          if ((*(v8 + 8) & 4) != 0 || (v35 = *(v8 + 40), !v35) || 93 * *(v8 + 16) / 0x64uLL >= v35 || *(v8 + 32) == 10 || *(v8 + 112))
          {
            v36 = *(v8 + 112);
            if (!v36 || v36 == v18)
            {
              v37 = *(v8 + 116);
              if (v37 && (v38 = *(v8 + 40)) != 0 && v37 != v38 && (resizeResourceFork(*v8, v37) & 0x80000000) != 0)
              {
                v12 = "resizing resource fork";
                v13 = 861;
              }

              else
              {
                if ((setUFCompressedBit(*v8) & 0x80000000) == 0)
                {
                  goto LABEL_7;
                }

                v12 = "set UF_COMPRESSED";
                v13 = 865;
              }
            }

            else
            {
              v12 = "compression type mismatch";
              v13 = 858;
            }
          }

          else
          {
            if ((decompressToData(*v8) & 0x80000000) == 0)
            {
              goto LABEL_7;
            }

            v12 = "decompressing to regular data file";
            v13 = 853;
          }

LABEL_5:
          v14 = 0;
LABEL_6:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamClose", v13, 55, v14, v12, a7, a8, v39);
          v10 = 0;
LABEL_7:
          free(*(v8 + 48));
          free(*(v8 + 56));
          free(*(v8 + 80));
          memset_s((v8 + 64), 0x18uLL, 0, 0x18uLL);
          free(*(v8 + 104));
          memset_s((v8 + 88), 0x18uLL, 0, 0x18uLL);
          free(v8);
          return (v10 - 1);
        }

        v32 = *__error();
        v33 = "fsetxattr decmpfs";
        v34 = 297;
        goto LABEL_54;
      }

LABEL_53:
      v33 = "prepare decmpfs header";
      v34 = 291;
      v32 = 0;
LABEL_54:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", v34, 55, v32, v33, v21, v22, v39);
      goto LABEL_55;
    }

    if (!v16)
    {
      v15 = 0;
      goto LABEL_17;
    }

    if ((storeChunkOffsets(*result, *(result + 32), *(result + 44), *(result + 48), a5, a6, a7, a8) & 0x80000000) != 0)
    {
      v28 = "storing offsets";
      v29 = 796;
    }

    else
    {
      v17 = resourceForkSize(*v8);
      *(v8 + 40) = v17;
      if (v17 != -1)
      {
        v15 = *(v8 + 88);
        v11 = *(v8 + 16);
        goto LABEL_17;
      }

      v28 = "invalid resource fork";
      v29 = 800;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "finalizeResourceFork", v29, 55, 0, v28, a7, a8, v39);
    v12 = "finalize resource fork";
    v13 = 832;
    goto LABEL_5;
  }

  return result;
}

uint64_t afscStreamWrite(uint64_t a1, char *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 120)))
  {
    return -1;
  }

  v10 = a3;
  v12 = *(a1 + 24);
  v13 = __CFADD__(v12, a3);
  v14 = v12 + a3;
  if (v13 || v14 > *(a1 + 16))
  {
    v15 = "too many bytes received";
    v16 = 923;
LABEL_6:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamWrite", v16, 55, 0, v15, a7, a8, v44);
    v9 = -1;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v19 = __src;
    v9 = 0;
    v21 = (a1 + 64);
    v20 = *(a1 + 64);
    v45 = (a1 + 64);
    do
    {
      if (v10 >= 0x10000 - v20)
      {
        v22 = 0x10000 - v20;
      }

      else
      {
        v22 = v10;
      }

      v23 = v20 + v22;
      if (__CFADD__(v20, v22) || (v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v24 = *(a1 + 72);
      if (v24 < v23)
      {
        do
        {
          while (!v24)
          {
            v24 = 0x4000;
            v26 = 0x4000;
            if (v23 <= 0x4000)
            {
              goto LABEL_25;
            }
          }

          v25 = v24 >> 1;
          if ((v24 & (v24 >> 1)) != 0)
          {
            v25 = v24 & (v24 >> 1);
          }

          v24 += v25;
        }

        while (v24 < v23);
        v26 = v24;
        if (v24 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_69;
        }

LABEL_25:
        v27 = *(a1 + 80);
        v28 = realloc(v27, v26);
        if (v28)
        {
          *(a1 + 72) = v26;
          *(a1 + 80) = v28;
          goto LABEL_27;
        }

        free(v27);
LABEL_69:
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
LABEL_70:
        v15 = "append to ibuf";
        v16 = 928;
        goto LABEL_6;
      }

LABEL_27:
      v29 = *(a1 + 80);
      if (v19)
      {
        memcpy((v29 + *v21), v19, v22);
      }

      else if (v29)
      {
        memset_s((v29 + *v21), v22, 0, v22);
      }

      v20 = *v21 + v22;
      *v21 = v20;
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v30 = *(a1 + 24) + v22;
      *(a1 + 24) = v30;
      if (v20 == 0x10000 || v20 && v30 == *(a1 + 16))
      {
        v31 = (v30 + 0xFFFFFFFFFFFFLL) >> 16;
        if (*(a1 + 44) <= v31)
        {
          v42 = "invalid state";
          v43 = 740;
          goto LABEL_72;
        }

        v32 = *(a1 + 88);
        if ((*(a1 + 96) - v32) <= 0x10000)
        {
          if ((flushOBuf_0(a1, __src, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
          {
            v42 = "flushing obuf";
            v43 = 744;
            goto LABEL_72;
          }

          v20 = *(a1 + 64);
          v32 = *(a1 + 88);
        }

        v33 = *(a1 + 80);
        v34 = (*(a1 + 104) + v32);
        v35 = *(a1 + 32);
        if (v35 != 10 && v20 >= 0x78 && ((v36 = v35 - 3, v36 > 0xB) ? (v37 = -1) : (v37 = dword_296AD207C[v36]), (v38 = compression_encode_buffer(v34, 0x10000uLL, *(a1 + 80), v20, *(a1 + 56), v37)) != 0 && ((*(a1 + 8) & 1) != 0 ? (__src = ((v38 >> 6) + 32)) : (__src = 0), (v39 = &__src[v38]) != 0 && v39 < v20)))
        {
          if (v39 > v38)
          {
            memset_s(&v34[v38], __src, 0, __src);
          }
        }

        else
        {
          *v34 = *(a1 + 36);
          memcpy(v34 + 1, v33, v20);
          v39 = (v20 + 1);
        }

        *(*(a1 + 48) + 4 * (v31 + 1)) = *(*(a1 + 48) + 4 * v31) + v39;
        if (v39)
        {
          v40 = *(a1 + 88);
          v13 = __CFADD__(v40, v39);
          v41 = &v39[v40];
          if (v13 || v41 > *(a1 + 96))
          {
            v42 = "expand obuf";
            v43 = 780;
LABEL_72:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", v43, 55, 0, v42, a7, a8, v44);
            v15 = "flushing ibuf";
            v16 = 938;
            goto LABEL_6;
          }

          *(a1 + 88) = v41;
        }

        if (*(a1 + 24) == *(a1 + 16) && (flushOBuf_0(a1, __src, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
        {
          v42 = "flushing obuf";
          v43 = 784;
          goto LABEL_72;
        }

        v20 = 0;
        v21 = v45;
        *v45 = 0;
      }

      v19 += v22;
      v9 += v22;
      v10 -= v22;
    }

    while (v10);
    if ((v9 & 0x8000000000000000) == 0)
    {
      return v9;
    }
  }

  v17 = 0;
  atomic_compare_exchange_strong((a1 + 120), &v17, 1u);
  return v9;
}

uint64_t afscStreamCloseWithState(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 120)))
  {
    return 0xFFFFFFFFLL;
  }

  v46 = v8;
  v47 = v9;
  v16 = (a1 + 88);
  v15 = *(a1 + 88);
  if (v15)
  {
    if ((flushOBuf_0(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
    {
      v29 = "flushing obuf";
      v30 = 884;
LABEL_42:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamCloseWithState", v30, 55, 0, v29, a7, a8, v39);
      return 0xFFFFFFFFLL;
    }

    LODWORD(v15) = *v16;
  }

  v17 = *(a1 + 64);
  v39 = *(a1 + 8);
  v40 = *(a1 + 24);
  v18 = *(a1 + 40);
  v41 = *(a1 + 32);
  v42 = v18;
  v43 = *(a1 + 112);
  v44 = v17;
  v45 = v15;
  if (!a2[3])
  {
    goto LABEL_41;
  }

  v19 = 0;
  v20 = *(a1 + 44);
  v21 = &v39;
  v22 = 48;
  while (1)
  {
    v23 = (a2[3])(*a2, v21, v22);
    if (v23 < 1)
    {
      break;
    }

    v21 = (v21 + v23);
    v19 += v23;
    v22 -= v23;
    if (!v22)
    {
      if (v19 < 0)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }
  }

  if (v23 < 0)
  {
    goto LABEL_41;
  }

LABEL_13:
  if (!a2[3])
  {
    goto LABEL_41;
  }

  v24 = v20 + 1;
  if (v20 != -1)
  {
    v25 = 0;
    v26 = 4 * v24;
    v27 = *(a1 + 48);
    while (1)
    {
      v28 = (a2[3])(*a2, v27, v26);
      if (v28 < 1)
      {
        break;
      }

      v27 += v28;
      v25 += v28;
      v26 -= v28;
      if (!v26)
      {
        goto LABEL_21;
      }
    }

    v25 = v28;
LABEL_21:
    if (v25 < 0 || !a2[3])
    {
      goto LABEL_41;
    }
  }

  v31 = *(a1 + 64);
  if (v31)
  {
    v32 = 0;
    v33 = *(a1 + 80);
    while (1)
    {
      v34 = (a2[3])(*a2, v33, v31);
      if (v34 < 1)
      {
        break;
      }

      v33 += v34;
      v32 += v34;
      v31 -= v34;
      if (!v31)
      {
        goto LABEL_29;
      }
    }

    v32 = v34;
LABEL_29:
    if (v32 < 0)
    {
      goto LABEL_41;
    }
  }

  if (!a2[3])
  {
    goto LABEL_41;
  }

  v35 = *v16;
  if (*v16)
  {
    v36 = 0;
    v37 = *(a1 + 104);
    while (1)
    {
      v38 = (a2[3])(*a2, v37, v35);
      if (v38 < 1)
      {
        break;
      }

      v37 += v38;
      v36 += v38;
      v35 -= v38;
      if (!v35)
      {
        goto LABEL_37;
      }
    }

    v36 = v38;
LABEL_37:
    if (v36 < 0)
    {
LABEL_41:
      v29 = "serializing state";
      v30 = 901;
      goto LABEL_42;
    }
  }

  if (a3)
  {
    *a3 = *(a1 + 24);
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 80));
  memset_s((a1 + 64), 0x18uLL, 0, 0x18uLL);
  free(*(a1 + 104));
  memset_s(v16, 0x18uLL, 0, 0x18uLL);
  free(a1);
  return 0;
}

uint64_t setUFCompressedBit(int a1)
{
  memset(&v8, 0, sizeof(v8));
  if (fstat(a1, &v8))
  {
    v2 = *__error();
    v5 = "fstat";
    v6 = 115;
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "setUFCompressedBit", v6, 55, v2, v5, v3, v4, v8.st_dev);
    return 0xFFFFFFFFLL;
  }

  if ((v8.st_flags & 0x20) == 0 && fchflags(a1, v8.st_flags | 0x20) < 0)
  {
    v2 = *__error();
    v5 = "fchflags UF_COMPRESSED";
    v6 = 120;
    goto LABEL_3;
  }

  return 0;
}

uint64_t storeChunkOffsets(int fd, int a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x29EDCA608];
  v47 = 0uLL;
  value = 0;
  if (a2 == 4)
  {
    v9 = 8 * a3 + 264;
  }

  else
  {
    v9 = 4 * a3 + 4;
  }

  if (v9 < 0xFFFFFFFF)
  {
    if (a2 == 4)
    {
      v17 = a3;
      if (fsetxattr(fd, "com.apple.ResourceFork", &old_resource_fork_map_0, 0x32uLL, a4[a3], 0) < 0)
      {
        v13 = *__error();
        v14 = "fsetxattr resource fork";
        v12 = 379;
        goto LABEL_41;
      }

      v18 = a4[a3];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v19 = malloc(0x4000uLL);
      v22 = v19;
      if (!v19)
      {
        v47 = 0uLL;
        v44 = 399;
LABEL_45:
        value = 0;
LABEL_53:
        v46 = "prepare zlib header";
        v45 = 0;
LABEL_54:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", v44, 55, v45, v46, v20, v21, v47);
        goto LABEL_42;
      }

      value = v19;
      *v19 = 0x10000;
      *(v19 + 1) = bswap32(v18);
      *(v19 + 2) = bswap32(v18 - 256);
      *(v19 + 3) = 838860800;
      v23 = v62;
      *(v19 + 13) = v61;
      *(v19 + 14) = v23;
      *(v19 + 15) = v63;
      v24 = v58;
      *(v19 + 9) = v57;
      *(v19 + 10) = v24;
      v25 = v60;
      *(v19 + 11) = v59;
      *(v19 + 12) = v25;
      v26 = v54;
      *(v19 + 5) = v53;
      *(v19 + 6) = v26;
      v27 = v56;
      *(v19 + 7) = v55;
      *(v19 + 8) = v27;
      v28 = v50;
      *(v19 + 1) = v49;
      *(v19 + 2) = v28;
      v29 = v52;
      *(v19 + 3) = v51;
      *(v19 + 4) = v29;
      *(v19 + 64) = bswap32(v18 - 260);
      *(v19 + 65) = a3;
      v47 = xmmword_296AD1FF0;
      if (a3)
      {
        v30 = 0;
        v9 = 264;
        v31 = 0x4000;
        while (1)
        {
          v32 = v9 + 8;
          if (v9 >= 0xFFFFFFFFFFFFFFF8 || (v32 & 0x8000000000000000) != 0)
          {
            v44 = 406;
            v22 = value;
            goto LABEL_53;
          }

          v33 = a4[v30++];
          v34 = a4[v30];
          if (v31 < v32)
          {
            break;
          }

LABEL_24:
          *&v22[v9] = (v33 - 260) | ((v34 - v33) << 32);
          v9 = v47 + 8;
          *&v47 = v47 + 8;
          if (v30 == v17)
          {
            v22 = value;
            goto LABEL_49;
          }
        }

        do
        {
          while (!v31)
          {
            v31 = 0x4000;
            v36 = 0x4000;
            if (v32 <= 0x4000)
            {
              goto LABEL_22;
            }
          }

          v35 = v31 >> 1;
          if ((v31 & (v31 >> 1)) != 0)
          {
            v35 = v31 & (v31 >> 1);
          }

          v31 += v35;
        }

        while (v31 < v32);
        v36 = v31;
        if (v31 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_57;
        }

LABEL_22:
        v37 = realloc(v22, v36);
        if (v37)
        {
          *(&v47 + 1) = v36;
          value = v37;
          v22 = v37;
          v31 = v36;
          goto LABEL_24;
        }

        free(v22);
LABEL_57:
        v22 = 0;
        v47 = 0uLL;
        v44 = 406;
        goto LABEL_45;
      }

      v9 = 264;
    }

    else
    {
      v38 = 0;
      do
      {
        while (!v38)
        {
          v38 = 0x4000;
          if (v9 <= 0x4000)
          {
            v38 = 0x4000;
            goto LABEL_36;
          }
        }

        v39 = v38 >> 1;
        if ((v38 & (v38 >> 1)) != 0)
        {
          v39 = v38 & (v38 >> 1);
        }

        v38 += v39;
      }

      while (v38 < v9);
      if (v38 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_39:
        value = 0;
        v47 = 0uLL;
        v14 = "prepare non zlib header";
        v12 = 411;
        v13 = 0;
        goto LABEL_41;
      }

LABEL_36:
      v40 = malloc(v38);
      if (!v40)
      {
        goto LABEL_39;
      }

      v22 = v40;
      *(&v47 + 1) = v38;
      value = v40;
      if (a4)
      {
        memcpy(v40, a4, v9);
      }

      else
      {
        memset_s(v40, v9, 0, v9);
      }

      *&v47 = v9;
    }

LABEL_49:
    if ((fsetxattr(fd, "com.apple.ResourceFork", v22, v9, 0, 0) & 0x80000000) == 0)
    {
      v41 = 0;
      goto LABEL_43;
    }

    v45 = *__error();
    v46 = "fsetxattr resource fork";
    v44 = 420;
    goto LABEL_54;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", a7, a8, v47);
  v12 = 373;
  v13 = 0;
  v14 = "invalid file size";
LABEL_41:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", v12, 55, v13, v14, v10, v11, v47);
  v22 = 0;
LABEL_42:
  v41 = 0xFFFFFFFFLL;
LABEL_43:
  free(v22);
  memset_s(&v47, 0x18uLL, 0, 0x18uLL);
  v42 = *MEMORY[0x29EDCA608];
  return v41;
}

uint64_t flushOBuf_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a1 + 8) & 2) != 0 && *(a1 + 32) != 10;
  v10 = *(a1 + 112);
  if (v10)
  {
    if (v10 > 0xD || ((1 << v10) & 0x2A88) == 0)
    {
      v13 = (a1 + 40);
      LODWORD(v12) = *(a1 + 40);
LABEL_15:
      v15 = v10 > 0xD;
      v16 = (1 << v10) & 0x2A88;
      if (!v15 && v16 != 0)
      {
        v18 = "requested compression type requests inline storage";
        v19 = 704;
        v20 = 0;
LABEL_20:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", v19, 55, v20, v18, a7, a8, v27);
        return 0xFFFFFFFFLL;
      }

LABEL_21:
      if (!v12)
      {
        v21 = *(a1 + 44);
        v22 = 8 * v21 + 264;
        v23 = 4 * v21 + 4;
        if (*(a1 + 32) == 4)
        {
          v12 = v22;
        }

        else
        {
          v12 = v23;
        }

        v14 = 0xFFFFFFFFLL;
        if (v12 >= 0xFFFFFFFF)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", a7, a8, v27);
          *v13 = -1;
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", 714, 55, 0, "File too large for AFSC", v24, v25, v28);
          return v14;
        }

        *v13 = v12;
      }

      if ((fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 104), *(a1 + 88), v12, 0) & 0x80000000) == 0)
      {
        v14 = 0;
        *(a1 + 40) += *(a1 + 88);
        *(a1 + 88) = 0;
        return v14;
      }

      v20 = *__error();
      v18 = "fsetxattr resource fork";
      v19 = 723;
      goto LABEL_20;
    }
  }

  v13 = (a1 + 40);
  LODWORD(v12) = *(a1 + 40);
  if (v12 != 0 || v9 || *(a1 + 44) != 1 || *(a1 + 24) != *(a1 + 16) || (*(a1 + 88) + 16) >= 0xE01)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t loadChunkOffsets(int a1, int a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __s = 0;
  v31 = 0;
  v32 = 0;
  v9 = 4 * a3 + 4;
  if (a2 == 4)
  {
    v10 = 8 * a3 + 264;
  }

  else
  {
    v10 = 4 * a3 + 4;
  }

  if (v10 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", a7, a8, v29);
    v13 = 329;
    v14 = "invalid file size";
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", v13, 55, 0, v14, v11, v12, v29);
    v22 = 0;
    goto LABEL_25;
  }

  v18 = 0;
  v19 = a3;
  do
  {
    while (!v18)
    {
      v18 = 0x4000;
      if (v10 <= 0x4000)
      {
        v18 = 0x4000;
        goto LABEL_16;
      }
    }

    v20 = v18 >> 1;
    if ((v18 & (v18 >> 1)) != 0)
    {
      v20 = v18 & (v18 >> 1);
    }

    v18 += v20;
  }

  while (v18 < v10);
  if (v18 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_23:
    v31 = 0;
    v32 = 0;
    __s = 0;
    v14 = "alloc buffer";
    v13 = 332;
    goto LABEL_24;
  }

LABEL_16:
  v21 = malloc(v18);
  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = v21;
  v31 = v18;
  v32 = v21;
  if (fgetxattr(a1, "com.apple.ResourceFork", v21, v10, 0, 32) != v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", 335, 55, 0, "read resource fork header", v23, v24, v29);
LABEL_25:
    v27 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  __s = v10;
  if (a2 == 4)
  {
    *a4 = v10;
    if (a3)
    {
      v25 = a4 + 1;
      v26 = 268;
      do
      {
        LODWORD(v10) = v10 + *&v22[v26];
        *v25++ = v10;
        v26 += 8;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    memcpy(a4, v22, v9);
  }

  v27 = 0;
LABEL_26:
  free(v22);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  return v27;
}

AAByteStream AACompressionOutputStreamOpen(AAByteStream compressed_stream, AACompressionAlgorithm compression_algorithm, size_t block_size, AAFlagSet flags, int n_threads)
{
  v37 = *MEMORY[0x29EDCA608];
  v9 = calloc(1uLL, 0x68uLL);
  if (!v9)
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", 254, 19, *v16, "malloc", v17, v18, v33);
    v10 = 0;
LABEL_37:
    free(v9);
    aaCompressionOutputStreamClose(v10, v24, v25, v26, v27, v28, v29, v30);
    v9 = 0;
    goto LABEL_38;
  }

  v10 = calloc(1uLL, 0x30uLL);
  if (!v10)
  {
    v19 = *__error();
    v20 = "malloc";
    v21 = 256;
LABEL_36:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", v21, 19, v19, v20, v13, v14, v33);
    goto LABEL_37;
  }

  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  *(v10 + 2) = n_threads;
  v11 = calloc(n_threads, 8uLL);
  v10[2] = v11;
  if (*(v10 + 2))
  {
    v12 = 0;
    while (1)
    {
      *(v10[2] + 8 * v12) = CompressionWorkerDataCreate(block_size, compression_algorithm);
      v15 = v10[2];
      if (!*(v15 + 8 * v12))
      {
        break;
      }

      ++v12;
      v11 = *(v10 + 2);
      if (v12 >= v11)
      {
        goto LABEL_13;
      }
    }

    v20 = "Worker data allocation";
    v21 = 264;
    goto LABEL_35;
  }

  v15 = v11;
  LODWORD(v11) = 0;
LABEL_13:
  v22 = ThreadPipelineCreate(v11, v15, CompressionWorkerProc, v10, CompressionConsumerProc, 0);
  *v10 = v22;
  if (!v22)
  {
    v20 = "Thread allocation";
    v21 = 267;
LABEL_35:
    v19 = 0;
    goto LABEL_36;
  }

  v10[3] = compressed_stream;
  qmemcpy(buf, "pbz", sizeof(buf));
  v23 = 122;
  if (compression_algorithm <= 1284)
  {
    if (compression_algorithm)
    {
      if (compression_algorithm != 256)
      {
        if (compression_algorithm == 774)
        {
          v23 = 120;
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v23 = 52;
    }

    else
    {
      v23 = 45;
    }
  }

  else
  {
    if (compression_algorithm <= 2048)
    {
      if (compression_algorithm == 1285)
      {
        goto LABEL_32;
      }

      if (compression_algorithm == 1794)
      {
        v23 = 98;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (compression_algorithm != 2049)
    {
      if (compression_algorithm == 2304)
      {
        v23 = 102;
        goto LABEL_32;
      }

LABEL_29:
      v20 = "Invalid compression algorithm";
      v21 = 274;
      goto LABEL_35;
    }

    v23 = 101;
  }

LABEL_32:
  v35 = v23;
  v36 = bswap64(block_size);
  if (AAByteStreamWrite(compressed_stream, buf, 0xCuLL) != 12)
  {
    v20 = "writing stream magic";
    v21 = 277;
    goto LABEL_35;
  }

  v9[3] = aaCompressionOutputStreamWrite;
  v9[7] = aaCompressionOutputStreamAbort;
  *v9 = v10;
  v9[1] = aaCompressionOutputStreamClose;
  v9[9] = aaCompressionOutputStreamFlush;
LABEL_38:
  v31 = *MEMORY[0x29EDCA608];
  return v9;
}

void **CompressionWorkerDataCreate(size_t a1, compression_algorithm a2)
{
  v4 = 56;
  v5 = calloc(1uLL, 0x38uLL);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v5[1] = 0;
  v5[2] = 0;
  *v5 = a1;
  if (a1 >= 0x2000000001)
  {
    *__error() = 12;
    v6[3] = 0;
    v4 = 62;
    v7 = 4;
LABEL_4:
    *__error() = 12;
    v6[v7] = 0;
LABEL_5:
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "CompressionWorkerDataCreate", v4, 19, *v8, "malloc", v9, v10, v16);
    CompressionWorkerDataDestroy(v6);
    return 0;
  }

  v12 = malloc(a1);
  v6[3] = v12;
  v13 = malloc(a1);
  v6[4] = v13;
  v4 = 62;
  if (!v12 || !v13)
  {
    goto LABEL_5;
  }

  *(v6 + 10) = a2;
  if (a2)
  {
    if (a2 != COMPRESSION_LZMA)
    {
      v14 = compression_encode_scratch_buffer_size(a2);
      if (v14)
      {
        if (v14 <= 0x2000000000)
        {
          v15 = malloc(v14);
          v6[6] = v15;
          if (v15)
          {
            return v6;
          }

          v4 = 68;
          goto LABEL_5;
        }

        v4 = 68;
        v7 = 6;
        goto LABEL_4;
      }
    }
  }

  return v6;
}

uint64_t CompressionWorkerProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if (!v3 || (v3 != COMPRESSION_LZMA ? (v5 = compression_encode_buffer(*(a1 + 32), *a1, *(a1 + 24), v2, *(a1 + 48), v3)) : (v4 = PCompressLZMA6Encode(*(a1 + 32), *a1, *(a1 + 24), v2), v5 = v4 & ~(v4 >> 63)), v5 ? (v6 = v5 + (v2 >> 4) >= v2) : (v6 = 1), v6))
  {
    memcpy(*(a1 + 32), *(a1 + 24), v2);
    v5 = v2;
  }

  *(a1 + 16) = v5;
  return 0;
}

uint64_t CompressionConsumerProc(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a1 + 40))
  {
    goto LABEL_8;
  }

  v9 = vrev64q_s8(*(a2 + 8));
  if (AAByteStreamWrite(*(a1 + 24), &v9, 0x10uLL) != 16)
  {
    v7 = 115;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "CompressionConsumerProc", v7, 19, 0, "Stream write failed", v4, v5, v9.i8[0]);
    *(a1 + 40) = 1;
LABEL_8:
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  if (AAByteStreamWrite(*(a1 + 24), *(a2 + 32), *(a2 + 16)) != *(a2 + 16))
  {
    v7 = 119;
    goto LABEL_7;
  }

  result = 0;
LABEL_9:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t aaCompressionOutputStreamWrite(uint64_t a1, uint64_t __src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a3;
  v9 = __src;
  v11 = 0;
  while (1)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = v12[1];
      goto LABEL_7;
    }

    Worker = ThreadPipelineGetWorker(*a1, __src, a3, a4, a5, a6, a7, a8);
    *(a1 + 32) = Worker;
    if (!Worker)
    {
      break;
    }

    v12 = Worker;
    v13 = 0;
    *(Worker + 8) = 0;
    *(Worker + 16) = 0;
LABEL_7:
    if (*v12 - v13 >= v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = *v12 - v13;
    }

    memcpy((v12[3] + v13), v9, v15);
    v16 = *v12;
    v17 = v12[1] + v15;
    v12[1] = v17;
    if (v17 == v16)
    {
      if ((ThreadPipelineRunWorker(*a1, *(a1 + 32), a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
      {
        v18 = "running worker";
        v19 = 186;
        goto LABEL_18;
      }

      *(a1 + 32) = 0;
    }

    v9 += v15;
    v11 += v15;
    v8 -= v15;
    if (!v8)
    {
      return v11;
    }
  }

  v18 = "getting next worker";
  v19 = 168;
LABEL_18:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamWrite", v19, 19, 0, v18, a7, a8, v21);
  *(a1 + 40) = 1;
  return -1;
}

uint64_t *aaCompressionOutputStreamClose(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = result[4];
    if (v9)
    {
      if ((ThreadPipelineRunWorker(*result, v9, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 133, 19, 0, "RunWorker", v10, v11, v20);
        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v8[4] = 0;
    }

    else
    {
      v12 = 1;
    }

    if ((ThreadPipelineDestroy(*v8) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 138, 19, 0, "Thread shutdown", v13, v14, v20);
      v12 = 0;
    }

    v15 = v8[2];
    if (v15)
    {
      if (*(v8 + 2))
      {
        v16 = 0;
        do
        {
          CompressionWorkerDataDestroy(*(v8[2] + 8 * v16++));
        }

        while (v16 < *(v8 + 2));
        v15 = v8[2];
      }

      free(v15);
    }

    if (*(v8 + 11) && (AAByteStreamSeek(v8[3], 0, 1) < 0 || (AAByteStreamTruncate(v8[3]) & 0x80000000) != 0))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 151, 19, "Truncate on compressed stream failed", v17, v18, v19, v20);
    }

    free(v8);
    if (v12)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t aaCompressionOutputStreamFlush(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v1;
  if ((ThreadPipelineFlush(*a1) & 0x80000000) != 0)
  {
    v11 = "ThreadPipelineFlush";
    v12 = 209;
    goto LABEL_16;
  }

  if (*(a1 + 32))
  {
    v6 = AAByteStreamSeek(*(a1 + 24), 0, 1);
    if (v6 < 0)
    {
      v11 = "AAByteStreamSeek";
      v12 = 216;
    }

    else
    {
      v7 = v6;
      CompressionWorkerProc(*(a1 + 32));
      if ((CompressionConsumerProc(a1, *(a1 + 32)) & 0x80000000) != 0)
      {
        v11 = "CompressionConsumerProc";
        v12 = 220;
      }

      else
      {
        if (v7 == AAByteStreamSeek(*(a1 + 24), v7, 0))
        {
          *(a1 + 44) = 1;
          goto LABEL_9;
        }

        v11 = "AAByteStreamSeek";
        v12 = 223;
      }
    }

LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", v12, 19, 0, v11, v4, v5, v13);
    *(a1 + 40) = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  if ((AAByteStreamFlush(*(a1 + 24)) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 230, 19, "Flush on underlying stream failed", v8, v9, v10, v13);
  }

  return 0;
}

AAByteStream AACompressionOutputStreamOpenExisting(AAByteStream compressed_stream, AAFlagSet flags, int n_threads)
{
  v90 = *MEMORY[0x29EDCA608];
  v5 = AAByteStreamSeek(compressed_stream, 0, 2);
  if (v5 < 0)
  {
    v15 = "Stream seek";
    v16 = 311;
    goto LABEL_15;
  }

  if (!*(compressed_stream + 4))
  {
LABEL_13:
    v15 = "Truncated stream";
    v16 = 315;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", v16, 19, 0, v15, v6, v7, v77);
    v17 = 0;
    v18 = 0;
LABEL_16:
    v19 = 0;
    v20 = 0;
LABEL_17:
    v21 = 1;
    goto LABEL_18;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = &v86;
  v12 = 12;
  do
  {
    v13 = (*(compressed_stream + 4))(*compressed_stream, v11, v12, v10);
    if (v13 < 0)
    {
      goto LABEL_13;
    }

    if (!v13)
    {
      break;
    }

    v11 = (v11 + v13);
    v9 += v13;
    v10 += v13;
    v12 -= v13;
  }

  while (v12);
  if (v9 != 12)
  {
    goto LABEL_13;
  }

  if (v86 != 25200 || v87 != 122)
  {
    v15 = "Invalid stream magic";
    v16 = 316;
    goto LABEL_15;
  }

  if (v88 <= 0x64u)
  {
    switch(v88)
    {
      case '-':
        v31 = 0;
        v78 = 0x100000000;
        break;
      case '4':
        v78 = 0;
        v31 = 256;
        break;
      case 'b':
        v78 = 0;
        v31 = 1794;
        break;
      default:
        goto LABEL_34;
    }
  }

  else if (v88 > 0x77u)
  {
    if (v88 == 120)
    {
      v31 = 774;
      v78 = 1;
    }

    else
    {
      if (v88 != 122)
      {
        goto LABEL_34;
      }

      v78 = 0;
      v31 = 1285;
    }
  }

  else
  {
    if (v88 != 101)
    {
      if (v88 == 102)
      {
        v78 = 0;
        v31 = 2304;
        goto LABEL_38;
      }

LABEL_34:
      v15 = "Invalid stream compression key";
      v16 = 317;
      goto LABEL_15;
    }

    v78 = 0;
    v31 = 2049;
  }

LABEL_38:
  algorithm = v31;
  v32 = bswap64(v89);
  if (v8 >= 13)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 12;
LABEL_40:
    v79 = v35;
    src_size = v34;
    v37 = v36;
    if (*(compressed_stream + 4))
    {
      v38 = v33;
      v39 = 0;
      v40 = &v84;
      v41 = v36;
      v42 = 16;
      while (1)
      {
        v43 = (*(compressed_stream + 4))(*compressed_stream, v40, v42, v41);
        if (v43 < 0)
        {
          break;
        }

        if (!v43)
        {
          if (!v39)
          {
            v36 = v37;
            v37 = v79;
            v33 = v38;
            v34 = src_size;
            goto LABEL_56;
          }

LABEL_47:
          if (v39 <= 0xF)
          {
            v15 = "Truncated stream";
            v16 = 329;
            goto LABEL_15;
          }

          v44 = v85;
          v33 = bswap64(v84);
          v34 = bswap64(v85);
          v84 = v33;
          v85 = v34;
          if (v33 < v34 || (v33 - 1 < v32 ? (v45 = v44 == 0) : (v45 = 1), v45))
          {
            v15 = "Corrupted stream";
            v16 = 339;
            goto LABEL_15;
          }

          v36 = v37 + v34 + 16;
          v35 = v37;
          if (v36 < v8)
          {
            goto LABEL_40;
          }

          goto LABEL_56;
        }

        v40 = (v40 + v43);
        v39 += v43;
        v41 += v43;
        v42 -= v43;
        if (!v42)
        {
          goto LABEL_47;
        }
      }
    }

    v15 = "reading block header";
    v16 = 327;
    goto LABEL_15;
  }

  v37 = 0;
  v34 = 0;
  v33 = 0;
  v36 = 12;
LABEL_56:
  if (v36 != v8)
  {
    v15 = "Corrupted stream";
    v16 = 342;
    goto LABEL_15;
  }

  if (v33 >= v32)
  {
    v17 = 0;
    v18 = 0;
    v51 = algorithm;
  }

  else
  {
    if (v32 >= 0x2000000001)
    {
      *__error() = 12;
      v17 = 0;
      v18 = 0;
      *__error() = 12;
LABEL_60:
      v46 = *__error();
      v49 = "malloc";
      v50 = 349;
LABEL_107:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", v50, 19, v46, v49, v47, v48, v77);
      goto LABEL_16;
    }

    v18 = malloc(v32);
    v57 = malloc(v32);
    v17 = v57;
    if (!v18 || !v57)
    {
      goto LABEL_60;
    }

    src_sizea = v34;
    if (*(compressed_stream + 4))
    {
      v58 = 0;
      if (v34)
      {
        v59 = v37 + 16;
        v60 = v57;
        while (1)
        {
          v80 = v58;
          v61 = (*(compressed_stream + 4))(*compressed_stream, v60, v34, v59);
          if (v61 < 0)
          {
            v58 = v61;
            goto LABEL_102;
          }

          if (!v61)
          {
            break;
          }

          v60 += v61;
          v58 = v61 + v80;
          v59 += v61;
          v34 -= v61;
          if (!v34)
          {
            goto LABEL_102;
          }
        }

        v58 = v80;
      }
    }

    else
    {
      v58 = -1;
    }

LABEL_102:
    if (v58 != src_sizea)
    {
      v49 = "loading last block";
      v50 = 352;
      goto LABEL_106;
    }

    if (((src_sizea != v33) & ~HIDWORD(v78)) != 0)
    {
      v51 = algorithm;
      if (v78)
      {
        v72 = PCompressLZMADecode(v18, v32, v17, src_sizea);
        v73 = v72 & ~(v72 >> 63);
      }

      else
      {
        v73 = compression_decode_buffer(v18, v32, v17, src_sizea, 0, algorithm);
      }

      if (v73 != v33)
      {
        v49 = "Last block decompression";
        v50 = 369;
        goto LABEL_106;
      }
    }

    else
    {
      memcpy(v18, v17, v33);
      v51 = algorithm;
    }

    if ((AAByteStreamTruncate(compressed_stream) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 375, 19, "Warning: container truncate failed", v74, v75, v76, v77);
    }

    v8 = v37;
  }

  if (AAByteStreamSeek(compressed_stream, v8, 0) < 0)
  {
    v49 = "Stream seek";
    v50 = 380;
LABEL_106:
    v46 = 0;
    goto LABEL_107;
  }

  v20 = calloc(1uLL, 0x68uLL);
  if (!v20)
  {
    v62 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 384, 19, *v62, "malloc", v63, v64, v77);
    v19 = 0;
    goto LABEL_17;
  }

  v19 = calloc(1uLL, 0x30uLL);
  if (!v19)
  {
    v65 = *__error();
    v66 = "malloc";
    v67 = 386;
LABEL_99:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", v67, 19, v65, v66, v54, v55, v77);
    goto LABEL_17;
  }

  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  v19[2] = n_threads;
  v52 = calloc(n_threads, 8uLL);
  *(v19 + 2) = v52;
  if (v19[2])
  {
    v53 = 0;
    while (1)
    {
      *(*(v19 + 2) + 8 * v53) = CompressionWorkerDataCreate(v32, v51);
      v56 = *(v19 + 2);
      if (!*(v56 + 8 * v53))
      {
        break;
      }

      ++v53;
      v52 = v19[2];
      if (v53 >= v52)
      {
        goto LABEL_89;
      }
    }

    v66 = "Worker data allocation";
    v67 = 394;
    goto LABEL_98;
  }

  v56 = v52;
  LODWORD(v52) = 0;
LABEL_89:
  v68 = ThreadPipelineCreate(v52, v56, CompressionWorkerProc, v19, CompressionConsumerProc, 0);
  *v19 = v68;
  if (!v68)
  {
    v66 = "Thread allocation";
    v67 = 397;
LABEL_98:
    v65 = 0;
    goto LABEL_99;
  }

  *(v19 + 3) = compressed_stream;
  if (v18 && aaCompressionOutputStreamWrite(v19, v18, v33, v69, v70, v71, v54, v55) != v33)
  {
    v66 = "re-writing last block";
    v67 = 404;
    goto LABEL_98;
  }

  v21 = 0;
  v20[3] = aaCompressionOutputStreamWrite;
  v20[7] = aaCompressionOutputStreamAbort;
  *v20 = v19;
  v20[1] = aaCompressionOutputStreamClose;
  v20[9] = aaCompressionOutputStreamFlush;
LABEL_18:
  free(v18);
  free(v17);
  if (v21)
  {
    free(v20);
    aaCompressionOutputStreamClose(v19, v22, v23, v24, v25, v26, v27, v28);
    v20 = 0;
  }

  v29 = *MEMORY[0x29EDCA608];
  return v20;
}

void CompressionWorkerDataDestroy(void **a1)
{
  if (a1)
  {
    free(a1[3]);
    free(a1[4]);
    free(a1[6]);

    free(a1);
  }
}

void *aaSequentialDecompressionIStreamOpen(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    getDefaultNThreads();
  }

  v3 = calloc(1uLL, 0x68uLL);
  v4 = malloc(0x160uLL);
  v5 = v4;
  if (!v4 || (memset_s(v4, 0x160uLL, 0, 0x160uLL), !v3))
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 266;
LABEL_31:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", v20, 20, v18, v19, v14, v15, v23);
    free(v3);
    aaDecompressionStreamClose(v5);
    v3 = 0;
    goto LABEL_32;
  }

  *v5 = a1;
  *(v5 + 56) = -1;
  v6 = (v5 + 8);
  v7 = *(v5 + 16);
  if (!(v7 >> 16))
  {
    do
    {
      v8 = (v7 >> 1) + v7;
      if (((v7 >> 1) & v7) != 0)
      {
        v8 = ((v7 >> 1) & v7) + v7;
      }

      if (v7)
      {
        v7 = v8;
      }

      else
      {
        v7 = 0x4000;
      }
    }

    while (v7 < 0x10000);
    v9 = *(v5 + 24);
    v10 = realloc(v9, v7);
    if (!v10)
    {
      goto LABEL_29;
    }

    *(v5 + 16) = v7;
    *(v5 + 24) = v10;
  }

  v11 = *(v5 + 40);
  if (v11 >> 16)
  {
    goto LABEL_23;
  }

  do
  {
    v12 = (v11 >> 1) + v11;
    if (((v11 >> 1) & v11) != 0)
    {
      v12 = ((v11 >> 1) & v11) + v11;
    }

    if (v11)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0x4000;
    }
  }

  while (v11 < 0x10000);
  v9 = *(v5 + 48);
  v13 = realloc(v9, v11);
  if (!v13)
  {
    v6 = (v5 + 32);
LABEL_29:
    free(v9);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v19 = "allocating buffer";
    v20 = 273;
    goto LABEL_30;
  }

  *(v5 + 40) = v11;
  *(v5 + 48) = v13;
LABEL_23:
  if (aaDecompressionStreamRefill(v5, 0xCuLL) < 0)
  {
    v19 = "reading magic";
    v20 = 276;
LABEL_30:
    v18 = 0;
    goto LABEL_31;
  }

  v16 = *(v5 + 8);
  v17 = *(v5 + 24);
  __memcpy_chk();
  if (*(v5 + 56) == -1)
  {
    *(v5 + 56) = 0;
  }

  *v3 = v5;
  v3[1] = aaDecompressionStreamClose;
  v3[2] = aaDecompressionStreamRead;
  v3[7] = aaDecompressionStreamAbort;
LABEL_32:
  v21 = *MEMORY[0x29EDCA608];
  return v3;
}