uint64_t sqlite3changeset_apply(sqlite3 *a1, int a2, uint64_t a3, unsigned int (*a4)(uint64_t, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v13 = sub_181902484(152, 0x10B00400C7E3458);
  if (!v13)
  {
    return 7;
  }

  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 144) = 0;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 1;
  *(v13 + 92) = 0x100000000;

  return sub_1819235F4(a1, v13, a4, a5, a6, 0, 0, 0);
}

uint64_t sqlite3changeset_apply_v2_strm(sqlite3 *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, void *a7, _DWORD *a8, unsigned int a9)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v18 = sub_181902484(152, 0x10B00400C7E3458);
  if (!v18)
  {
    return 7;
  }

  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 144) = 0;
  *(v18 + 112) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 64) = a2 == 0;
  *(v18 + 92) = (a9 >> 1) & 1;
  *(v18 + 96) = 1;

  return sub_1819235F4(a1, v18, a4, a5, a6, a7, a8, a9);
}

uint64_t sqlite3changeset_apply_strm(sqlite3 *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v13 = sub_181902484(152, 0x10B00400C7E3458);
  if (!v13)
  {
    return 7;
  }

  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 144) = 0;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;
  *(v13 + 64) = a2 == 0;
  *(v13 + 92) = 0x100000000;

  return sub_1819235F4(a1, v13, a4, a5, a6, 0, 0, 0);
}

uint64_t sqlite3changegroup_new(void *a1)
{
  if (sqlite3_initialize())
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_181902484(48, 0x1030040447D65BFLL);
    if (v2)
    {
      v3 = 0;
      v2[1] = 0u;
      v2[2] = 0u;
      *v2 = 0u;
      goto LABEL_6;
    }
  }

  v3 = 7;
LABEL_6:
  *a1 = v2;
  return v3;
}

uint64_t sqlite3changegroup_schema(void *a1, uint64_t a2, const char *a3)
{
  if (a1[1] || a1[4])
  {
    return 21;
  }

  v6 = sqlite3_mprintf("%s", a3);
  a1[5] = v6;
  if (!v6)
  {
    return 7;
  }

  result = 0;
  a1[4] = a2;
  return result;
}

uint64_t sqlite3changegroup_add(uint64_t a1, int a2, uint64_t a3)
{
  if (sqlite3_initialize())
  {
    v6 = 0;
LABEL_3:
    v7 = 7;
    goto LABEL_4;
  }

  v9 = sub_181902484(152, 0x10B00400C7E3458);
  v6 = v9;
  if (!v9)
  {
    goto LABEL_3;
  }

  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 144) = 0;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 16) = a3;
  *(v9 + 24) = a2;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 1;
  *(v9 + 92) = 0;
  *(v9 + 96) = 0;
  v12 = 0;
  v11 = 0;
  *v9 = 1;
  while (sub_181921A00(v6, &v12, &v11, 0) == 100)
  {
    v10 = sub_1819246D8(a1, v6, 0);
    if (v10)
    {
      v7 = v10;
      goto LABEL_4;
    }
  }

  v7 = *(v6 + 100);
LABEL_4:
  sqlite3changeset_finalize(v6);
  return v7;
}

uint64_t sqlite3changegroup_add_change(uint64_t a1, _DWORD *a2)
{
  if (a2[1] == a2[2] || a2[25] || a2[23])
  {
    return 1;
  }

  *a2 = 1;
  return sub_1819246D8(a1, a2, 0);
}

uint64_t sub_1819246D8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 4);
  v8 = (a1 + 8);
  v9 = *(a2 + 88);
  if (*(a1 + 8))
  {
    if (v9 != *(a1 + 4))
    {
      return 1;
    }
  }

  else
  {
    *(a1 + 4) = v9;
  }

  v11 = v6 - v7;
  __n = (v6 - v7 - 2);
  __src = (v5 + v7 + 2);
  v12 = *(a2 + 120);
  v240 = *(a2 + 124);
  v13 = *(a2 + 112);
  v14 = *(a2 + 128);
  v15 = strlen(v13);
  v16 = *(a2 + 136);
  if (v13)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = v8;
  while (1)
  {
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    if (v15 <= -2)
    {
      sub_1819012D0(37608);
      goto LABEL_24;
    }

    v21 = *(v18 + 8);
    if (v21)
    {
      v20 = 1;
    }

    else
    {
      v20 = v17;
    }

    if (v13 && v21)
    {
      if (v15 == -1)
      {
        goto LABEL_24;
      }

      v22 = v15 + 2;
      v23 = v13;
      while (1)
      {
        v24 = *v21;
        if (!*v21)
        {
          break;
        }

        LODWORD(v24) = byte_181A20298[v24];
        v19 = byte_181A20298[*v23];
        if (v24 != v19)
        {
          goto LABEL_10;
        }

        ++v21;
        ++v23;
        if (--v22 <= 1)
        {
          goto LABEL_24;
        }
      }

      v19 = byte_181A20298[*v23];
LABEL_10:
      v20 = v24 - v19;
    }

    if (!v20)
    {
      goto LABEL_24;
    }
  }

  v40 = v15;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v231 = v40 << 32;
  v41 = sub_181902484(v12 + v40 + 89, 0x10B0040485C6CD4);
  if (!v41)
  {
    return 7;
  }

  v18 = v41;
  v233 = v14;
  *(v41 + 80) = 0;
  *(v41 + 48) = 0u;
  *(v41 + 64) = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0u;
  *v41 = 0u;
  *(v41 + 16) = v12;
  v42 = v41 + 88;
  *(v41 + 56) = v41 + 88;
  memcpy((v41 + 88), v16, v12);
  *(v18 + 8) = v42 + v12;
  memcpy((v42 + v12), v13, (v231 + 0x100000000) >> 32);
  v43 = *(a1 + 32);
  if (v43)
  {
    *(v18 + 16) = 0;
    v44 = sub_18191E5A4(0, v18, v43, *(a1 + 40));
    v14 = v233;
    if (v44)
    {
      v45 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v46 = v44;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
        --qword_1ED456A90;
        off_1ED452EB0(v18);
        v18 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          return v46;
        }

        v45 = &xmmword_1ED452F28;
      }

      else
      {
        v46 = v44;
      }

      (*v45)(v18);
      return v46;
    }
  }

  else
  {
    v14 = v233;
  }

  do
  {
    v156 = v8;
    v8 = *v8;
  }

  while (v8);
  *v156 = v18;
LABEL_24:
  v25 = *(v18 + 16);
  if (*(v18 + 32))
  {
    v26 = v25 <= v12;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    if (v25 != v12 || memcmp(v16, *(v18 + 56), v12))
    {
      return 17;
    }
  }

  else if (v25 >= 1)
  {
    v27 = 0;
    do
    {
      v28 = v27 >= v12 ? 0 : v16[v27];
      if (v28 != *(*(v18 + 56) + v27))
      {
        return 17;
      }
    }

    while (v25 != ++v27);
  }

  v232 = v14;
  if (v25 <= v12)
  {
    v29 = v240;
    v39 = __src;
    goto LABEL_199;
  }

  *(a1 + 24) = 0;
  v29 = v240;
  if (v240 == 23)
  {
    if (*(a1 + 4))
    {
      if (v11 < 3)
      {
        result = 0;
        goto LABEL_332;
      }

      LODWORD(v56) = 0;
      v58 = __n;
      v57 = __src;
      v59 = __n;
LABEL_318:
      v178 = *(a1 + 28);
      if (v59 <= v178)
      {
        v183 = *(a1 + 16);
      }

      else
      {
        if (v178)
        {
          v179 = *(a1 + 28);
        }

        else
        {
          v179 = 128;
        }

        do
        {
          v180 = v179;
          v179 *= 2;
        }

        while (v179 < v59);
        if (v180 > 1073741695)
        {
          v179 = 2147483391;
          if (v59 > 2147483391)
          {
            goto LABEL_331;
          }
        }

        v181 = *(a1 + 16);
        v182 = sqlite3_initialize();
        result = 7;
        if (!v179 || v182)
        {
          goto LABEL_332;
        }

        v183 = sub_18190287C(v181, v179, 0x100004077774924);
        if (!v183)
        {
LABEL_331:
          result = 7;
          goto LABEL_332;
        }

        *(a1 + 16) = v183;
        *(a1 + 28) = v179;
        LODWORD(v56) = *(a1 + 24);
      }

      memcpy((v183 + v56), v57, v58);
      result = 0;
      *(a1 + 24) += v58;
LABEL_332:
      if (*(v18 + 16) <= v12)
      {
LABEL_350:
        if (!result)
        {
          v39 = *(a1 + 16);
          LODWORD(__n) = *(a1 + 24);
          v29 = 23;
          goto LABEL_199;
        }

        return result;
      }

      v184 = 0;
      while (1)
      {
        if (!result)
        {
          v186 = *(a1 + 24);
          v185 = *(a1 + 28);
          v187 = v186;
          if (v186 < v185)
          {
            v188 = *(a1 + 16);
LABEL_339:
            result = 0;
            *(a1 + 24) = v186 + 1;
            *(v188 + v187) = 0;
            goto LABEL_335;
          }

          if (!v185)
          {
            v185 = 128;
          }

          v189 = v185;
          do
          {
            v190 = v189;
            v189 *= 2;
          }

          while (v189 <= v186);
          if (v190 <= 1073741695 || (v189 = 2147483391, v186 <= 2147483390))
          {
            v191 = *(a1 + 16);
            v192 = sqlite3_initialize();
            result = 7;
            if (!v189 || v192)
            {
              goto LABEL_335;
            }

            v193 = sub_18190287C(v191, v189, 0x100004077774924);
            if (v193)
            {
              v188 = v193;
              *(a1 + 16) = v193;
              *(a1 + 28) = v189;
              v186 = *(a1 + 24);
              v187 = v186;
              goto LABEL_339;
            }
          }

          result = 7;
        }

LABEL_335:
        if (++v184 >= *(v18 + 16) - v12)
        {
          goto LABEL_350;
        }
      }
    }

    LODWORD(v60) = 0;
    if (v12 < 1)
    {
      goto LABEL_277;
    }

    v61 = v12;
    do
    {
      v63 = &__src[v60];
      v64 = *v63;
      v62 = 1;
      if (*v63)
      {
        v65 = v64 == 5;
      }

      else
      {
        v65 = 1;
      }

      if (!v65 && v64 != 255)
      {
        if ((v64 - 1) < 2)
        {
          v62 = 9;
        }

        else
        {
          v66 = v63 + 1;
          v67 = v63[1];
          if (v67 < 0)
          {
            v69 = v63[2];
            if (v63[2] < 0)
            {
              v70 = v63[3];
              if (v70 < 0)
              {
                v244 = 0;
                v71 = sub_1818C7200(v66, &v244);
                if (HIDWORD(v244))
                {
                  v67 = -1;
                }

                else
                {
                  v67 = v244;
                }

                v68 = (v71 + 1);
              }

              else
              {
                v67 = ((v67 & 0x7F) << 14) | ((v69 & 0x7F) << 7) | v70;
                v68 = 4;
              }
            }

            else
            {
              v67 = v69 | ((v67 & 0x7F) << 7);
              v68 = 3;
            }
          }

          else
          {
            v68 = 2;
          }

          v62 = v68 + v67;
        }
      }

      v60 = (v62 + v60);
      --v61;
    }

    while (v61);
    if (v60 < 1)
    {
LABEL_277:
      result = 0;
LABEL_297:
      if (*(v18 + 16) <= v12)
      {
LABEL_315:
        v26 = __n <= v60;
        __na = (__n - v60);
        if (v26)
        {
          goto LABEL_332;
        }

        v58 = __na;
        if (result)
        {
          goto LABEL_332;
        }

        v57 = &__src[v60];
        v56 = *(a1 + 24);
        v59 = v56 + __na;
        goto LABEL_318;
      }

      v168 = 0;
      while (1)
      {
        if (!result)
        {
          v170 = *(a1 + 24);
          v169 = *(a1 + 28);
          v171 = v170;
          if (v170 < v169)
          {
            v172 = *(a1 + 16);
LABEL_304:
            result = 0;
            *(a1 + 24) = v170 + 1;
            *(v172 + v171) = 0;
            goto LABEL_300;
          }

          if (!v169)
          {
            v169 = 128;
          }

          v173 = v169;
          do
          {
            v174 = v173;
            v173 *= 2;
          }

          while (v173 <= v170);
          if (v174 <= 1073741695 || (v173 = 2147483391, v170 <= 2147483390))
          {
            v175 = *(a1 + 16);
            v176 = sqlite3_initialize();
            result = 7;
            if (!v173 || v176)
            {
              goto LABEL_300;
            }

            v177 = sub_18190287C(v175, v173, 0x100004077774924);
            if (v177)
            {
              v172 = v177;
              *(a1 + 16) = v177;
              *(a1 + 28) = v173;
              v170 = *(a1 + 24);
              v171 = v170;
              goto LABEL_304;
            }
          }

          result = 7;
        }

LABEL_300:
        if (++v168 >= *(v18 + 16) - v12)
        {
          goto LABEL_315;
        }
      }
    }

    v149 = *(a1 + 28);
    if (v60 <= v149)
    {
      v155 = 0;
      v154 = *(a1 + 16);
      goto LABEL_287;
    }

    if (!v149)
    {
      v149 = 128;
    }

    v150 = v149;
    do
    {
      v151 = v150;
      v150 *= 2;
    }

    while (v150 < v60);
    if (v151 > 1073741695)
    {
      if (v60 > 0x7FFFFEFF)
      {
        goto LABEL_296;
      }

      v150 = 2147483391;
    }

    v152 = *(a1 + 16);
    v153 = sqlite3_initialize();
    result = 7;
    if (!v150 || v153)
    {
      goto LABEL_297;
    }

    v154 = sub_18190287C(v152, v150, 0x100004077774924);
    if (v154)
    {
      *(a1 + 16) = v154;
      *(a1 + 28) = v150;
      v155 = *(a1 + 24);
LABEL_287:
      memcpy((v154 + v155), __src, v60);
      result = 0;
      *(a1 + 24) += v60;
      goto LABEL_297;
    }

LABEL_296:
    result = 7;
    goto LABEL_297;
  }

  if (v240 != 18 && (v240 != 9 || *(a1 + 4)))
  {
    if (v11 < 3)
    {
      LODWORD(__n) = 0;
      goto LABEL_198;
    }

    v30 = *(a1 + 28);
    v31 = __n;
    if (v30 >= __n)
    {
      v38 = 0;
      v37 = *(a1 + 16);
      v33 = __src;
      goto LABEL_86;
    }

    if (!v30)
    {
      v30 = 128;
    }

    v32 = v30;
    v33 = __src;
    do
    {
      v34 = v32;
      v32 *= 2;
    }

    while (v32 < __n);
    if (v34 > 1073741695)
    {
      if (__n > 0x7FFFFEFF)
      {
        return 7;
      }

      v32 = 2147483391;
    }

    v35 = *(a1 + 16);
    v36 = sqlite3_initialize();
    result = 7;
    if (!v32 || v36)
    {
      return result;
    }

    v37 = sub_18190287C(v35, v32, 0x100004077774924);
    if (v37)
    {
      *(a1 + 16) = v37;
      *(a1 + 28) = v32;
      v38 = *(a1 + 24);
      v29 = v240;
      v31 = __n;
LABEL_86:
      memcpy((v37 + v38), v33, v31);
      LODWORD(__n) = *(a1 + 24) + v31;
      *(a1 + 24) = __n;
      goto LABEL_198;
    }

    return 7;
  }

  if (v11 >= 3)
  {
    v47 = *(a1 + 28);
    v48 = __n;
    if (v47 >= __n)
    {
      v55 = 0;
      v54 = *(a1 + 16);
      v50 = __src;
    }

    else
    {
      if (!v47)
      {
        v47 = 128;
      }

      v49 = v47;
      v50 = __src;
      do
      {
        v51 = v49;
        v49 *= 2;
      }

      while (v49 < __n);
      if (v51 > 1073741695)
      {
        if (__n > 0x7FFFFEFF)
        {
          return 7;
        }

        v49 = 2147483391;
      }

      v52 = *(a1 + 16);
      v53 = sqlite3_initialize();
      result = 7;
      if (!v49 || v53)
      {
        return result;
      }

      v54 = sub_18190287C(v52, v49, 0x100004077774924);
      if (!v54)
      {
        return 7;
      }

      *(a1 + 16) = v54;
      *(a1 + 28) = v49;
      v55 = *(a1 + 24);
      v48 = __n;
    }

    memcpy((v54 + v55), v50, v48);
    *(a1 + 24) += v48;
  }

  v72 = (v18 + 80);
  if (!*(v18 + 80))
  {
    result = sub_181A12C5C(*(a1 + 32), v18, (v18 + 80));
    if (result)
    {
      return result;
    }

    if (sqlite3_step(*v72) != 100)
    {
      result = sqlite3_errcode(*(a1 + 32));
      if (result)
      {
        return result;
      }
    }
  }

  while (v12 < *(v18 + 16))
  {
    v74 = sqlite3_column_type(*v72, v12);
    v76 = *(a1 + 24);
    v75 = *(a1 + 28);
    v77 = v76;
    if (v76 < v75)
    {
      v78 = *(a1 + 16);
LABEL_122:
      result = 0;
      *(a1 + 24) = v76 + 1;
      *(v78 + v77) = v74;
      v79 = 1;
      goto LABEL_134;
    }

    if (!v75)
    {
      v75 = 128;
    }

    v80 = v75;
    do
    {
      v81 = v80;
      v80 *= 2;
    }

    while (v80 <= v76);
    if (v81 > 1073741695)
    {
      v80 = 2147483391;
      if (v76 > 2147483390)
      {
        goto LABEL_133;
      }
    }

    v82 = *(a1 + 16);
    v83 = sqlite3_initialize();
    v79 = 0;
    result = 7;
    if (v80 && !v83)
    {
      v84 = sub_18190287C(v82, v80, 0x100004077774924);
      if (v84)
      {
        v78 = v84;
        *(a1 + 16) = v84;
        *(a1 + 28) = v80;
        v76 = *(a1 + 24);
        v77 = v76;
        goto LABEL_122;
      }

LABEL_133:
      v79 = 0;
      result = 7;
    }

LABEL_134:
    if (v74 - 3 >= 2)
    {
      if (v74 - 1 > 1)
      {
        goto LABEL_118;
      }

      v85 = result;
      v86 = sqlite3_column_int64(*v72, v12);
      result = v85;
      v87 = v74 == 1 ? *&v86 : v86;
      if (!v79)
      {
        goto LABEL_118;
      }

      v88 = *(a1 + 24);
      v89 = *(a1 + 28);
      if (v88 + 8 <= v89)
      {
        v94 = *(a1 + 16);
      }

      else
      {
        if (v89)
        {
          v90 = *(a1 + 28);
        }

        else
        {
          v90 = 128;
        }

        do
        {
          v91 = v90;
          v90 *= 2;
        }

        while (v90 < v88 + 8);
        if (v91 > 1073741695)
        {
          v90 = 2147483391;
          if (v88 > 2147483383)
          {
            return 7;
          }
        }

        v92 = *(a1 + 16);
        v93 = sqlite3_initialize();
        result = 7;
        if (!v90 || v93)
        {
          return result;
        }

        v94 = sub_18190287C(v92, v90, 0x100004077774924);
        if (!v94)
        {
          return 7;
        }

        *(a1 + 16) = v94;
        *(a1 + 28) = v90;
        v88 = *(a1 + 24);
      }

      *(v94 + v88) = bswap64(*&v87);
      v96 = 8;
      goto LABEL_117;
    }

    v95 = result;
    v96 = sqlite3_column_bytes(*v72, v12);
    if (v79)
    {
      v97 = *(a1 + 24);
      v98 = *(a1 + 28);
      if (v97 + 9 <= v98)
      {
        v101 = *(a1 + 16);
LABEL_163:
        v102 = (v101 + v97);
        if (v96 > 0x7F)
        {
          if (v96 >> 14)
          {
            v103 = sub_1819436D0(v102, v96);
          }

          else
          {
            v102->i8[0] = (v96 >> 7) | 0x80;
            v102->i8[1] = v96 & 0x7F;
            v103 = 2;
          }
        }

        else
        {
          v102->i8[0] = v96;
          v103 = 1;
        }

        v95 = 0;
        *(a1 + 24) += v103;
        goto LABEL_173;
      }

      if (v98)
      {
        v99 = *(a1 + 28);
      }

      else
      {
        v99 = 128;
      }

      do
      {
        v100 = v99;
        v99 *= 2;
      }

      while (v99 < v97 + 9);
      if (v100 > 1073741695)
      {
        v99 = 2147483391;
        if (v97 > 2147483382)
        {
          v95 = 7;
          goto LABEL_173;
        }
      }

      v104 = *(a1 + 16);
      v105 = sqlite3_initialize();
      v95 = 7;
      if (v99)
      {
        if (!v105)
        {
          v101 = sub_18190287C(v104, v99, 0x100004077774924);
          if (v101)
          {
            *(a1 + 16) = v101;
            *(a1 + 28) = v99;
            v97 = *(a1 + 24);
            goto LABEL_163;
          }
        }
      }
    }

LABEL_173:
    v106 = *v72;
    if (v74 == 3)
    {
      v107 = sqlite3_column_text(v106, v12);
      if (v96 < 1)
      {
        goto LABEL_195;
      }

      v108 = v107;
      result = v95;
      if (v95)
      {
        return result;
      }

      v109 = v96;
      v110 = *(a1 + 24);
      v111 = *(a1 + 28);
      v112 = v110 + v96;
      if (v112 > v111)
      {
        if (v111)
        {
          v113 = *(a1 + 28);
        }

        else
        {
          v113 = 128;
        }

        do
        {
          v114 = v113;
          v113 *= 2;
        }

        while (v113 < v112);
LABEL_189:
        if (v114 > 1073741695)
        {
          v113 = 2147483391;
          if (v112 > 2147483391)
          {
            return 7;
          }
        }

        v117 = *(a1 + 16);
        v118 = sqlite3_initialize();
        result = 7;
        if (!v113 || v118)
        {
          return result;
        }

        v73 = sub_18190287C(v117, v113, 0x100004077774924);
        if (!v73)
        {
          return 7;
        }

        *(a1 + 16) = v73;
        *(a1 + 28) = v113;
        v110 = *(a1 + 24);
        goto LABEL_116;
      }
    }

    else
    {
      v115 = sqlite3_column_blob(v106, v12);
      if (v96 < 1)
      {
LABEL_195:
        result = v95;
        goto LABEL_118;
      }

      v108 = v115;
      result = v95;
      if (v95)
      {
        return result;
      }

      v109 = v96;
      v110 = *(a1 + 24);
      v116 = *(a1 + 28);
      v112 = v110 + v96;
      if (v112 > v116)
      {
        if (v116)
        {
          v113 = *(a1 + 28);
        }

        else
        {
          v113 = 128;
        }

        do
        {
          v114 = v113;
          v113 *= 2;
        }

        while (v113 < v112);
        goto LABEL_189;
      }
    }

    v73 = *(a1 + 16);
LABEL_116:
    memcpy((v73 + v110), v108, v109);
LABEL_117:
    result = 0;
    *(a1 + 24) += v96;
LABEL_118:
    ++v12;
    if (result)
    {
      return result;
    }
  }

  LODWORD(__n) = *(a1 + 24);
  v29 = v240;
LABEL_198:
  v39 = *(a1 + 16);
LABEL_199:
  if (sub_181A11DF0(0, *(a2 + 88), v18))
  {
    return 7;
  }

  if (*(a2 + 88))
  {
    v119 = v29 == 9;
  }

  else
  {
    v119 = 0;
  }

  v120 = v119;
  v121 = sub_181A130E4(v18, v120, v39, *(v18 + 68));
  v122 = *(v18 + 72) + 8 * v121;
  v123 = *v122;
  if (!*v122)
  {
LABEL_212:
    if (sqlite3_initialize())
    {
      return 7;
    }

    v132 = sub_181902484(__n + 32, 0x1030040ECD7FD48);
    if (!v132)
    {
      return 7;
    }

    v133 = v132;
    *v132 = 0u;
    *(v132 + 16) = 0u;
    *v132 = v240;
    *(v132 + 1) = v232;
    v134 = (v132 + 32);
    *(v132 + 16) = v132 + 32;
    if (a3 && v232)
    {
      if (*(v18 + 16) < 1)
      {
        LODWORD(v164) = v132 + 32;
      }

      else
      {
        v135 = v132;
        v136 = 0;
        do
        {
          v138 = *v39;
          if (*v39)
          {
            v137 = 1;
            if (v138 != 5 && v138 != 255)
            {
              if ((v138 - 1) < 2)
              {
                v137 = 9;
              }

              else
              {
                v139 = v39[1];
                if (v139 < 0)
                {
                  v141 = v39[2];
                  if (v39[2] < 0)
                  {
                    v142 = v39[3];
                    if (v142 < 0)
                    {
                      v244 = 0;
                      v143 = sub_1818C7200(v39 + 1, &v244);
                      if (HIDWORD(v244))
                      {
                        v139 = -1;
                      }

                      else
                      {
                        v139 = v244;
                      }

                      v140 = (v143 + 1);
                    }

                    else
                    {
                      v139 = ((v139 & 0x7F) << 14) | ((v141 & 0x7F) << 7) | v142;
                      v140 = 4;
                    }
                  }

                  else
                  {
                    v139 = v141 | ((v139 & 0x7F) << 7);
                    v140 = 3;
                  }
                }

                else
                {
                  v140 = 2;
                }

                v137 = v140 + v139;
              }
            }

            if (*(*(v18 + 56) + v136))
            {
              memcpy(v134, v39, v137);
              v134 += v137;
            }

            else
            {
              *v134++ = -1;
            }
          }

          else
          {
            *v134++ = 0;
            v137 = 1;
          }

          v39 += v137;
          ++v136;
        }

        while (v136 < *(v18 + 16));
        v133 = v135;
        v164 = *(v135 + 16);
      }

      result = 0;
      *(v133 + 2) = v134 - v164;
      goto LABEL_409;
    }

    *(v132 + 8) = __n;
    memcpy((v132 + 32), v39, __n);
LABEL_279:
    result = 0;
    goto LABEL_409;
  }

  while (1)
  {
    if (*(a2 + 88))
    {
      v124 = *v123 == 9;
      v125 = v29 == 9;
    }

    else
    {
      v124 = 0;
      v125 = 0;
    }

    v126 = sub_181A190A0(v18, v124, v123[2], v125, v39);
    v127 = *v122;
    v123 = *(*v122 + 24);
    if (v126)
    {
      break;
    }

    v122 = *v122 + 24;
    if (!v123)
    {
      goto LABEL_212;
    }
  }

  *v122 = v123;
  --*(v18 + 64);
  v128 = *v127;
  if (!a3)
  {
    v144 = v121;
    v145 = *(a2 + 88);
    v147 = v128 == 18 || v128 == 23;
    if (v29 == 18 && v147 || (v29 != 9 ? (v148 = v29 == 23) : (v148 = 1), v148 && v128 == 9))
    {
      result = 0;
      v133 = v127;
      v121 = v144;
      goto LABEL_409;
    }

    if (v29 == 9 && v128 == 18)
    {
      sqlite3_free(v127);
      return *(a2 + 100);
    }

    v165 = v39;
    v166 = v127[2];
    v167 = *(v127 + 2);
    if (sqlite3_initialize() || (v219 = sub_181902484(__n + v167 + 32, 0x1030040ECD7FD48)) == 0)
    {
      sqlite3_free(v127);
      return 7;
    }

    *v219 = 0u;
    *(v219 + 16) = 0u;
    v133 = v219;
    v220 = v232;
    __srcb = v166;
    if (v232)
    {
      v220 = *(v127 + 1) != 0;
    }

    *(v219 + 1) = v220;
    v221 = v219 + 32;
    *(v219 + 16) = v219 + 32;
    v244 = v219 + 32;
    if (v128 == 18)
    {
      v243 = v39;
      *v219 = 18;
      if (!v145)
      {
        sub_181A19420(&v243, *(v18 + 16));
        v165 = v243;
      }

      v222 = *(v18 + 16);
      v223 = __srcb;
      v224 = v165;
      goto LABEL_421;
    }

    if (v128 == 9)
    {
      *v219 = 23;
      if (!v145)
      {
        v225 = v18;
        v226 = 0;
        v227 = __srcb;
        v228 = 0;
        v229 = v39;
        v230 = 0;
        goto LABEL_429;
      }
    }

    else
    {
      if (v240 == 23)
      {
        v229 = __srcb;
        v242 = v39;
        v243 = __srcb;
        v230 = v39;
        if (!v145)
        {
          sub_181A19420(&v243, *(v18 + 16));
          sub_181A19420(&v242, *(v18 + 16));
          v230 = v242;
          v229 = v243;
        }

        *v133 = 23;
        v225 = v18;
        v226 = v145;
        v227 = v39;
        v228 = __srcb;
LABEL_429:
        if (!sub_181A19714(&v244, v225, v226, v227, v228, v229, v230))
        {
          sqlite3_free(v133);
          v133 = 0;
LABEL_434:
          v121 = v144;
          sqlite3_free(v127);
          goto LABEL_279;
        }

LABEL_433:
        *(v133 + 2) = v244 - *(v133 + 4);
        goto LABEL_434;
      }

      *v219 = 9;
      if (!v145)
      {
        v222 = *(v18 + 16);
        v223 = v39;
        v224 = __srcb;
LABEL_421:
        sub_181A19514(&v244, v222, v223, v224);
        goto LABEL_433;
      }
    }

    memcpy((v219 + 32), v39, __n);
    v244 = v221 + __n;
    goto LABEL_433;
  }

  if (v128 == 9 && *(v127 + 1))
  {
    return *(a2 + 100);
  }

  v129 = *(v127 + 2);
  if (sqlite3_initialize() || (v157 = v129 + __n, (v158 = sub_181902484(v157 + 32, 0x1030040ECD7FD48)) == 0))
  {
    v130 = 0;
    v131 = 7;
  }

  else
  {
    v159 = v39;
    v160 = v127[2];
    v161 = v157 + 32;
    v162 = v158;
    bzero(v158, v161);
    v163 = v232 || *(v127 + 1) != 0;
    v162[1] = v163;
    *v162 = v240;
    v194 = v162 + 32;
    *(v162 + 2) = v162 + 32;
    if (*(v18 + 16) < 1)
    {
      LODWORD(v216) = v162 + 32;
      v215 = v162;
    }

    else
    {
      __srca = v162;
      v241 = v121;
      v195 = 0;
      do
      {
        v196 = *v160;
        v197 = 1;
        if (*v160)
        {
          v198 = v196 == 5;
        }

        else
        {
          v198 = 1;
        }

        if (!v198 && v196 != 255)
        {
          if ((v196 - 1) >= 2)
          {
            v199 = v160[1];
            if (v199 < 0)
            {
              v201 = v160[2];
              if (v160[2] < 0)
              {
                v202 = v160[3];
                if (v202 < 0)
                {
                  v244 = 0;
                  v203 = v194;
                  v204 = sub_1818C7200(v160 + 1, &v244);
                  v194 = v203;
                  if (HIDWORD(v244))
                  {
                    v199 = -1;
                  }

                  else
                  {
                    v199 = v244;
                  }

                  v200 = (v204 + 1);
                }

                else
                {
                  v199 = ((v199 & 0x7F) << 14) | ((v201 & 0x7F) << 7) | v202;
                  v200 = 4;
                }
              }

              else
              {
                v199 = v201 | ((v199 & 0x7F) << 7);
                v200 = 3;
              }
            }

            else
            {
              v200 = 2;
            }

            v197 = v200 + v199;
          }

          else
          {
            v197 = 9;
          }
        }

        v205 = *v159;
        v206 = 1;
        if (*v159)
        {
          v207 = v205 == 5;
        }

        else
        {
          v207 = 1;
        }

        if (!v207 && v205 != 255)
        {
          if ((v205 - 1) >= 2)
          {
            v208 = v159[1];
            if (v208 < 0)
            {
              v210 = v159[2];
              if (v159[2] < 0)
              {
                v211 = v159[3];
                if (v211 < 0)
                {
                  v244 = 0;
                  v212 = v194;
                  v213 = sub_1818C7200(v159 + 1, &v244);
                  v194 = v212;
                  if (HIDWORD(v244))
                  {
                    v208 = -1;
                  }

                  else
                  {
                    v208 = v244;
                  }

                  v209 = (v213 + 1);
                }

                else
                {
                  v208 = ((v208 & 0x7F) << 14) | ((v210 & 0x7F) << 7) | v211;
                  v209 = 4;
                }
              }

              else
              {
                v208 = v210 | ((v208 & 0x7F) << 7);
                v209 = 3;
              }
            }

            else
            {
              v209 = 2;
            }

            v206 = v209 + v208;
          }

          else
          {
            v206 = 9;
          }
        }

        if (v196 == 255 || v232 && !*(*(v18 + 56) + v195))
        {
          *v194++ = -1;
        }

        else
        {
          v214 = v194;
          if (v205)
          {
            memcpy(v194, v159, v206);
            v194 = &v214[v206];
          }

          else
          {
            memcpy(v194, v160, v197);
            v194 = &v214[v197];
          }
        }

        v160 += v197;
        v159 += v206;
        ++v195;
      }

      while (v195 < *(v18 + 16));
      v215 = __srca;
      v121 = v241;
      v216 = *(__srca + 2);
    }

    v131 = 0;
    v130 = v215;
    *(v215 + 2) = v194 - v216;
  }

  v217 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v127);
    --qword_1ED456A90;
    off_1ED452EB0(v127);
    v127 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v217 = &xmmword_1ED452F28;
      goto LABEL_407;
    }
  }

  else
  {
LABEL_407:
    (*v217)(v127);
  }

  result = v131;
  v133 = v130;
LABEL_409:
  if (v133 && !result)
  {
    v218 = *(v18 + 72);
    *(v133 + 3) = *(v218 + 8 * v121);
    *(v218 + 8 * v121) = v133;
    ++*(v18 + 64);
    return *(a2 + 100);
  }

  if (!result)
  {
    return *(a2 + 100);
  }

  return result;
}

uint64_t sub_181925D6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, _DWORD *a4, uint64_t *a5)
{
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 8);
  if (!v6)
  {
    result = 0;
    if (!a2)
    {
      goto LABEL_63;
    }

LABEL_60:
    v35 = v43;
    if (v44 >= 1)
    {
      result = a2(a3, v43);
    }

LABEL_66:
    if (!v35)
    {
      return result;
    }

    v36 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v37 = result;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v35);
      --qword_1ED456A90;
      off_1ED452EB0(v35);
      v35 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return v37;
      }

      v36 = &xmmword_1ED452F28;
    }

    else
    {
      v37 = result;
    }

    (*v36)(v35);
    return v37;
  }

  v38 = a5;
  v39 = a4;
  result = 0;
  while (*(v6 + 64))
  {
    sub_181A13378(&v43, *(a1 + 4), v6, &v45);
    v8 = *(v6 + 68);
    if (v8 > 0)
    {
      v9 = 0;
      result = v45;
      v10 = v43;
      v42 = v6;
      while (1)
      {
        v12 = *(*(v6 + 72) + 8 * v9);
        if (v12)
        {
          break;
        }

        v6 = v42;
LABEL_7:
        v45 = result;
        v43 = v10;
        ++v9;
        v11 = result;
        if (v9 >= v8)
        {
          goto LABEL_53;
        }
      }

      while (1)
      {
        if (result)
        {
          goto LABEL_11;
        }

        v13 = *v12;
        v14 = HIDWORD(v44);
        v15 = v44;
        if (v44 >= SHIDWORD(v44))
        {
          if (!HIDWORD(v44))
          {
            v14 = 128;
          }

          v27 = v14;
          do
          {
            v28 = v27;
            v27 *= 2;
          }

          while (v27 <= v44);
          if (v28 > 1073741695)
          {
            v27 = 2147483391;
            if (v44 > 2147483390)
            {
              goto LABEL_10;
            }
          }

          v29 = sqlite3_initialize();
          result = 7;
          if (!v27 || v29)
          {
            goto LABEL_11;
          }

          v30 = sub_18190287C(v10, v27, 0x100004077774924);
          if (!v30)
          {
            goto LABEL_10;
          }

          HIDWORD(v44) = v27;
          v10 = v30;
        }

        v16 = v15 + 1;
        LODWORD(v44) = v15 + 1;
        *(v10 + v15) = v13;
        v17 = v12[1];
        v18 = HIDWORD(v44);
        if (v15 + 1 < SHIDWORD(v44))
        {
          goto LABEL_15;
        }

        if (!HIDWORD(v44))
        {
          v18 = 128;
        }

        v31 = v18;
        do
        {
          v32 = v31;
          v31 *= 2;
        }

        while (v31 <= v16);
        if (v32 <= 1073741695 || (v31 = 2147483391, v15 <= 2147483389))
        {
          v33 = sqlite3_initialize();
          result = 7;
          if (!v31 || v33)
          {
            goto LABEL_11;
          }

          v34 = sub_18190287C(v10, v31, 0x100004077774924);
          if (v34)
          {
            HIDWORD(v44) = v31;
            v10 = v34;
LABEL_15:
            LODWORD(v44) = v15 + 2;
            *(v10 + v16) = v17;
            v19 = *(v12 + 2);
            if (v19 < 1)
            {
              goto LABEL_28;
            }

            v20 = *(v12 + 2);
            v21 = v44;
            v22 = v44 + v19;
            if (v22 <= SHIDWORD(v44))
            {
              goto LABEL_27;
            }

            if (HIDWORD(v44))
            {
              v23 = SHIDWORD(v44);
            }

            else
            {
              v23 = 128;
            }

            do
            {
              v24 = v23;
              v23 *= 2;
            }

            while (v23 < v22);
            if (v24 <= 1073741695 || (v23 = 2147483391, v22 <= 2147483391))
            {
              v25 = sqlite3_initialize();
              result = 7;
              if (!v23 || v25)
              {
                goto LABEL_11;
              }

              v26 = sub_18190287C(v10, v23, 0x100004077774924);
              if (v26)
              {
                HIDWORD(v44) = v23;
                v10 = v26;
LABEL_27:
                memcpy((v10 + v21), v20, v19);
                LODWORD(v44) = v21 + v19;
LABEL_28:
                if (a2 && v44 >= dword_1EA8315B8)
                {
                  result = a2(a3, v10);
                  LODWORD(v44) = 0;
                }

                else
                {
                  result = 0;
                }

                goto LABEL_11;
              }
            }
          }
        }

LABEL_10:
        result = 7;
LABEL_11:
        v12 = *(v12 + 3);
        if (!v12)
        {
          v6 = v42;
          v8 = *(v42 + 68);
          goto LABEL_7;
        }
      }
    }

    result = v45;
    v11 = v45;
    if (v45)
    {
      goto LABEL_57;
    }

LABEL_54:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_57;
    }
  }

  v11 = 0;
LABEL_53:
  if (!v11)
  {
    goto LABEL_54;
  }

LABEL_57:
  if (v11)
  {
    v35 = v43;
    goto LABEL_66;
  }

  a5 = v38;
  a4 = v39;
  if (a2)
  {
    goto LABEL_60;
  }

LABEL_63:
  v35 = v43;
  if (!a5)
  {
    goto LABEL_66;
  }

  *a5 = v43;
  if (a4)
  {
    *a4 = v44;
  }

  return result;
}

uint64_t sqlite3changegroup_add_strm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sqlite3_initialize())
  {
    v6 = 0;
LABEL_3:
    v7 = 7;
    goto LABEL_4;
  }

  v9 = sub_181902484(152, 0x10B00400C7E3458);
  v6 = v9;
  if (!v9)
  {
    goto LABEL_3;
  }

  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 144) = 0;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  *(v9 + 64) = a2 == 0;
  *(v9 + 92) = 0;
  *(v9 + 96) = 0;
  v12 = 0;
  v11 = 0;
  *v9 = 1;
  while (sub_181921A00(v6, &v12, &v11, 0) == 100)
  {
    v10 = sub_1819246D8(a1, v6, 0);
    if (v10)
    {
      v7 = v10;
      goto LABEL_4;
    }
  }

  v7 = *(v6 + 100);
LABEL_4:
  sqlite3changeset_finalize(v6);
  return v7;
}

uint64_t sqlite3changegroup_delete(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_8:
      (*v3)(v2);
      goto LABEL_9;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v3 = &xmmword_1ED452F28;
      goto LABEL_8;
    }
  }

LABEL_9:
  sub_18191F78C(0, *(v1 + 8));
  v4 = *(v1 + 16);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_15;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
  --qword_1ED456A90;
  off_1ED452EB0(v4);
  v4 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v5 = &xmmword_1ED452F28;
LABEL_15:
    (*v5)(v4);
  }

LABEL_16:
  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_21:
    v7 = *v6;

    return v7(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
    goto LABEL_21;
  }

  return result;
}

uint64_t sqlite3changeset_concat(int a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, uint64_t *a6)
{
  if (sqlite3_initialize())
  {
    v12 = 0;
LABEL_3:
    v13 = 7;
    goto LABEL_9;
  }

  v12 = sub_181902484(48, 0x1030040447D65BFLL);
  if (!v12)
  {
    goto LABEL_3;
  }

  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  v14 = v12;
  v15 = sqlite3changegroup_add(v12, a1, a2);
  if (!v15)
  {
    v15 = sqlite3changegroup_add(v14, a3, a4);
    if (!v15)
    {
      v15 = sub_181925D6C(v14, 0, 0, a5, a6);
    }
  }

  v13 = v15;
  v12 = v14;
LABEL_9:
  sqlite3changegroup_delete(v12);
  return v13;
}

uint64_t sqlite3changeset_concat_strm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  if (sqlite3_initialize())
  {
    v12 = 0;
LABEL_3:
    v13 = 7;
    goto LABEL_9;
  }

  v12 = sub_181902484(48, 0x1030040447D65BFLL);
  if (!v12)
  {
    goto LABEL_3;
  }

  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  v14 = v12;
  v15 = sqlite3changegroup_add_strm(v12, a1, a2);
  if (!v15)
  {
    v15 = sqlite3changegroup_add_strm(v14, a3, a4);
    if (!v15)
    {
      v15 = sub_181925D6C(v14, a5, a6, 0, 0);
    }
  }

  v13 = v15;
  v12 = v14;
LABEL_9:
  sqlite3changegroup_delete(v12);
  return v13;
}

uint64_t sqlite3rebaser_create(void *a1)
{
  if (sqlite3_initialize())
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_181902484(48, 0x1030040447D65BFLL);
    if (v2)
    {
      v3 = 0;
      v2[1] = 0u;
      v2[2] = 0u;
      *v2 = 0u;
      goto LABEL_6;
    }
  }

  v3 = 7;
LABEL_6:
  *a1 = v2;
  return v3;
}

uint64_t sqlite3rebaser_configure(uint64_t a1, int a2, uint64_t a3)
{
  if (sqlite3_initialize())
  {
    v6 = 0;
LABEL_3:
    v7 = 7;
    goto LABEL_4;
  }

  v9 = sub_181902484(152, 0x10B00400C7E3458);
  v6 = v9;
  if (!v9)
  {
    goto LABEL_3;
  }

  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 144) = 0;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 16) = a3;
  *(v9 + 24) = a2;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 1;
  *(v9 + 92) = 0;
  *(v9 + 96) = 0;
  v12 = 0;
  v11 = 0;
  *v9 = 1;
  while (sub_181921A00(v6, &v12, &v11, 0) == 100)
  {
    v10 = sub_1819246D8(a1, v6, 1);
    if (v10)
    {
      v7 = v10;
      goto LABEL_4;
    }
  }

  v7 = *(v6 + 100);
LABEL_4:
  sqlite3changeset_finalize(v6);
  return v7;
}

uint64_t sqlite3rebaser_rebase(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t *a5)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v11 = sub_181902484(152, 0x10B00400C7E3458);
  if (!v11)
  {
    return 7;
  }

  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 144) = 0;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 16) = a3;
  *(v11 + 24) = a2;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 1;
  *(v11 + 92) = 0;
  *(v11 + 96) = 0;
  v12 = v11;
  v13 = sub_181926828(a1, v11, 0, 0, a4, a5);
  sqlite3changeset_finalize(v12);
  return v13;
}

uint64_t sub_181926828(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, _DWORD *a5, uint64_t *a6)
{
  v6 = a3;
  v8 = a1;
  v9 = 0;
  v227 = 0;
  v225 = 0;
  __s1 = 0;
  v223 = 0;
  v224 = 0;
  do
  {
    if (sub_181921A00(a2, &__s1, &v225 + 1, &v225) != 100)
    {
      if (v6)
      {
        v210 = v223;
        if (v224 >= 1)
        {
          v227 = v6(a4, v223);
          v210 = v223;
        }
      }

      else
      {
        v210 = v223;
        if (a6)
        {
          *a6 = v223;
          *a5 = v224;
          return v227;
        }
      }

      if (!v210)
      {
        return v227;
      }

      v213 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v210);
        --qword_1ED456A90;
        off_1ED452EB0(v210);
        v210 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          return v227;
        }

        v213 = &xmmword_1ED452F28;
      }

      (*v213)(v210);
      return v227;
    }

    if (v225)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        v11 = *(a2 + 112);
        do
        {
          v12 = *(v9 + 8);
          if (v12)
          {
            if (v11)
            {
              for (i = *(a2 + 112); ; ++i)
              {
                if (*v12 == *i)
                {
                  if (!*v12)
                  {
                    goto LABEL_17;
                  }
                }

                else if (byte_181A20298[*v12] != byte_181A20298[*i])
                {
                  break;
                }

                ++v12;
              }
            }
          }

          else if (!v11)
          {
            break;
          }

          v9 = *v9;
        }

        while (v9);
      }

LABEL_17:
      LODWORD(v225) = 0;
      if (*(a2 + 88))
      {
        v14 = 1;
        v227 = 1;
        goto LABEL_51;
      }

      v15 = v224;
      v16 = HIDWORD(v224);
      v17 = v224;
      if (v224 >= SHIDWORD(v224))
      {
        if (!HIDWORD(v224))
        {
          v16 = 128;
        }

        v27 = v16;
        do
        {
          v28 = v27;
          v27 *= 2;
        }

        while (v27 <= v224);
        if (v28 > 1073741695)
        {
          v27 = 2147483391;
          if (v224 > 2147483390)
          {
            goto LABEL_43;
          }
        }

        v29 = v223;
        v30 = sqlite3_initialize();
        if (!v27)
        {
          goto LABEL_43;
        }

        if (v30)
        {
          goto LABEL_43;
        }

        v18 = sub_18190287C(v29, v27, 0x100004077774924);
        if (!v18)
        {
          goto LABEL_43;
        }

        v223 = v18;
        HIDWORD(v224) = v27;
        v15 = v224;
        v17 = v224;
      }

      else
      {
        v18 = v223;
      }

      LODWORD(v224) = v15 + 1;
      *(v18 + v17) = 84;
      v19 = *(a2 + 120);
      v20 = v224;
      v21 = v224 + 9;
      if (v21 <= SHIDWORD(v224))
      {
        v26 = v223;
        goto LABEL_45;
      }

      if (HIDWORD(v224))
      {
        v22 = SHIDWORD(v224);
      }

      else
      {
        v22 = 128;
      }

      do
      {
        v23 = v22;
        v22 *= 2;
      }

      while (v22 < v21);
      if (v23 <= 1073741695 || (v22 = 2147483391, v224 <= 2147483382))
      {
        v24 = v223;
        v25 = sqlite3_initialize();
        if (v22)
        {
          if (!v25)
          {
            v26 = sub_18190287C(v24, v22, 0x100004077774924);
            if (v26)
            {
              v223 = v26;
              HIDWORD(v224) = v22;
              v20 = v224;
LABEL_45:
              v31 = (v26 + v20);
              if (v19 > 0x7F)
              {
                if (v19 >> 14)
                {
                  v32 = sub_1819436D0(v31, v19);
                  v14 = v227;
                }

                else
                {
                  v14 = 0;
                  v31->i8[0] = (v19 >> 7) | 0x80;
                  v31->i8[1] = v19 & 0x7F;
                  v32 = 2;
                }
              }

              else
              {
                v14 = 0;
                v31->i8[0] = v19;
                v32 = 1;
              }

              LODWORD(v224) = v224 + v32;
LABEL_51:
              v33 = *(a2 + 120);
              if (v33 >= 1 && !v14)
              {
                v34 = *(a2 + 136);
                v35 = v224;
                v36 = v224 + v33;
                if (v36 <= SHIDWORD(v224))
                {
                  v41 = v223;
                  goto LABEL_65;
                }

                if (HIDWORD(v224))
                {
                  v37 = SHIDWORD(v224);
                }

                else
                {
                  v37 = 128;
                }

                do
                {
                  v38 = v37;
                  v37 *= 2;
                }

                while (v37 < v36);
                if (v38 <= 1073741695 || (v37 = 2147483391, v36 <= 2147483391))
                {
                  v39 = v223;
                  v40 = sqlite3_initialize();
                  if (v37)
                  {
                    if (!v40)
                    {
                      v41 = sub_18190287C(v39, v37, 0x100004077774924);
                      if (v41)
                      {
                        v223 = v41;
                        HIDWORD(v224) = v37;
                        v35 = v224;
                        v8 = a1;
                        v6 = a3;
LABEL_65:
                        memcpy((v41 + v35), v34, v33);
                        v14 = 0;
                        LODWORD(v224) = v224 + v33;
                        goto LABEL_67;
                      }
                    }
                  }
                }

                v14 = 7;
                v227 = 7;
                v8 = a1;
                v6 = a3;
              }

LABEL_67:
              v42 = *(a2 + 112);
              v43 = strlen(v42);
              if ((v43 & 0x80000000) == 0)
              {
                if (v14)
                {
                  goto LABEL_369;
                }

                v44 = (v43 + 1);
                v45 = v224;
                v46 = v224 + v44;
                if (v46 <= SHIDWORD(v224))
                {
                  v49 = v223;
                }

                else
                {
                  if (HIDWORD(v224))
                  {
                    v47 = SHIDWORD(v224);
                  }

                  else
                  {
                    v47 = 128;
                  }

                  do
                  {
                    v48 = v47;
                    v47 *= 2;
                  }

                  while (v47 < v46);
                  if (v48 > 1073741695)
                  {
                    v47 = 2147483391;
                    if (v46 > 2147483391)
                    {
                      v227 = 7;
                      v6 = a3;
                      v10 = 7;
                      if (a3)
                      {
                        goto LABEL_370;
                      }

                      continue;
                    }
                  }

                  v98 = v223;
                  v99 = sqlite3_initialize();
                  if (!v47)
                  {
                    goto LABEL_367;
                  }

                  if (v99)
                  {
                    goto LABEL_367;
                  }

                  v49 = sub_18190287C(v98, v47, 0x100004077774924);
                  if (!v49)
                  {
                    goto LABEL_367;
                  }

                  v223 = v49;
                  HIDWORD(v224) = v47;
                  v45 = v224;
                  v8 = a1;
                  v6 = a3;
                }

                memcpy((v49 + v45), v42, v44);
                v14 = 0;
                LODWORD(v224) = v224 + v44;
              }

              goto LABEL_80;
            }
          }
        }
      }

LABEL_43:
      v14 = 7;
      v227 = 7;
      goto LABEL_51;
    }

    v14 = 0;
LABEL_80:
    if (!v9 || v14)
    {
      goto LABEL_85;
    }

    v50 = *(*(v9 + 72) + 8 * sub_181A130E4(v9, 0, __s1, *(v9 + 68)));
    if (!v50)
    {
      goto LABEL_86;
    }

    while (!sub_181A190A0(v9, 0, __s1, 0, *(v50 + 2)))
    {
      v50 = *(v50 + 3);
      if (!v50)
      {
        goto LABEL_85;
      }
    }

    v74 = *(a2 + 124);
    v75 = *v50;
    if (v74 != 23)
    {
      if (v74 == 18)
      {
        if (v75 == 18)
        {
          if (v50[1])
          {
            goto LABEL_369;
          }

          v76 = v224;
          v77 = HIDWORD(v224);
          v78 = v224;
          if (v224 < SHIDWORD(v224))
          {
            v79 = v223;
            goto LABEL_118;
          }

          if (!HIDWORD(v224))
          {
            v77 = 128;
          }

          v190 = v77;
          do
          {
            v191 = v190;
            v190 *= 2;
          }

          while (v190 <= v224);
          if (v191 > 1073741695)
          {
            v190 = 2147483391;
            if (v224 > 2147483390)
            {
              goto LABEL_337;
            }
          }

          v192 = v223;
          v193 = sqlite3_initialize();
          if (!v190)
          {
            goto LABEL_337;
          }

          if (v193)
          {
            goto LABEL_337;
          }

          v79 = sub_18190287C(v192, v190, 0x100004077774924);
          if (!v79)
          {
            goto LABEL_337;
          }

          v223 = v79;
          HIDWORD(v224) = v190;
          v76 = v224;
          v78 = v224;
LABEL_118:
          LODWORD(v224) = v76 + 1;
          *(v79 + v78) = 23;
          v80 = *(a2 + 128);
          v81 = v224;
          v82 = HIDWORD(v224);
          v83 = v224;
          if (v224 < SHIDWORD(v224))
          {
            v84 = v223;
            goto LABEL_120;
          }

          if (!HIDWORD(v224))
          {
            v82 = 128;
          }

          v198 = v82;
          do
          {
            v199 = v198;
            v198 *= 2;
          }

          while (v198 <= v224);
          if (v199 > 1073741695 && (v198 = 2147483391, v224 > 2147483390) || (v200 = v223, v201 = sqlite3_initialize(), !v198) || v201 || (v84 = sub_18190287C(v200, v198, 0x100004077774924)) == 0)
          {
LABEL_337:
            v202 = 0;
            v227 = 7;
            goto LABEL_356;
          }

          v223 = v84;
          HIDWORD(v224) = v198;
          v81 = v224;
          v83 = v224;
LABEL_120:
          LODWORD(v224) = v81 + 1;
          *(v84 + v83) = v80;
          v85 = *(v50 + 2);
          if (v85 >= 1)
          {
            v86 = *(v50 + 2);
            v87 = v224;
            v88 = v224 + v85;
            if (v88 > SHIDWORD(v224))
            {
              if (HIDWORD(v224))
              {
                v89 = SHIDWORD(v224);
              }

              else
              {
                v89 = 128;
              }

              do
              {
                v90 = v89;
                v89 *= 2;
              }

              while (v89 < v88);
              if (v90 <= 1073741695 || (v89 = 2147483391, v88 <= 2147483391))
              {
                v91 = v223;
                v92 = sqlite3_initialize();
                if (v89)
                {
                  if (!v92)
                  {
                    v93 = sub_18190287C(v91, v89, 0x100004077774924);
                    if (v93)
                    {
                      v223 = v93;
                      HIDWORD(v224) = v89;
                      v87 = v224;
                      v8 = a1;
                      v6 = a3;
                      goto LABEL_353;
                    }
                  }
                }
              }

              v202 = 0;
              v227 = 7;
              v8 = a1;
              v6 = a3;
LABEL_356:
              v61 = HIDWORD(v225);
              if (SHIDWORD(v225) < 1 || !v202)
              {
                goto LABEL_369;
              }

              v62 = __s1;
              v63 = v224;
              v207 = v224 + HIDWORD(v225);
              if (v207 > SHIDWORD(v224))
              {
                if (HIDWORD(v224))
                {
                  v65 = SHIDWORD(v224);
                }

                else
                {
                  v65 = 128;
                }

                do
                {
                  v208 = v65;
                  v65 *= 2;
                }

                while (v65 < v207);
                if (v208 > 1073741695)
                {
                  v65 = 2147483391;
                  if (v207 > 2147483391)
                  {
                    goto LABEL_367;
                  }
                }

                v67 = v223;
                v209 = sqlite3_initialize();
                if (!v65 || v209)
                {
                  goto LABEL_367;
                }

LABEL_100:
                v69 = sub_18190287C(v67, v65, 0x100004077774924);
                if (v69)
                {
                  v223 = v69;
                  HIDWORD(v224) = v65;
                  v63 = v224;
                  v8 = a1;
                  v6 = a3;
                  goto LABEL_374;
                }

LABEL_367:
                v227 = 7;
                goto LABEL_368;
              }

              goto LABEL_373;
            }

            v93 = v223;
LABEL_353:
            memcpy((v93 + v87), v86, v85);
            LODWORD(v224) = v224 + v85;
          }

          v202 = 1;
          goto LABEL_356;
        }

LABEL_85:
        if (v14)
        {
          goto LABEL_369;
        }

LABEL_86:
        v51 = v224;
        v52 = HIDWORD(v224);
        v53 = *(a2 + 124);
        v54 = v224;
        if (v224 < SHIDWORD(v224))
        {
          v55 = v223;
          goto LABEL_88;
        }

        if (!HIDWORD(v224))
        {
          v52 = 128;
        }

        v70 = v52;
        do
        {
          v71 = v70;
          v70 *= 2;
        }

        while (v70 <= v224);
        if (v71 <= 1073741695 || (v70 = 2147483391, v224 <= 2147483390))
        {
          v72 = v223;
          v73 = sqlite3_initialize();
          if (v70)
          {
            if (!v73)
            {
              v55 = sub_18190287C(v72, v70, 0x100004077774924);
              if (v55)
              {
                v223 = v55;
                HIDWORD(v224) = v70;
                v51 = v224;
                v54 = v224;
LABEL_88:
                LODWORD(v224) = v51 + 1;
                *(v55 + v54) = v53;
                v56 = *(a2 + 128);
                v57 = v224;
                v58 = HIDWORD(v224);
                v59 = v224;
                if (v224 < SHIDWORD(v224))
                {
                  v60 = v223;
                  goto LABEL_90;
                }

                if (!HIDWORD(v224))
                {
                  v58 = 128;
                }

                v94 = v58;
                do
                {
                  v95 = v94;
                  v94 *= 2;
                }

                while (v94 <= v224);
                if (v95 <= 1073741695 || (v94 = 2147483391, v224 <= 2147483390))
                {
                  v96 = v223;
                  v97 = sqlite3_initialize();
                  if (v94)
                  {
                    if (!v97)
                    {
                      v60 = sub_18190287C(v96, v94, 0x100004077774924);
                      if (v60)
                      {
                        v223 = v60;
                        HIDWORD(v224) = v94;
                        v57 = v224;
                        v59 = v224;
LABEL_90:
                        LODWORD(v224) = v57 + 1;
                        *(v60 + v59) = v56;
                        v61 = HIDWORD(v225);
                        if (SHIDWORD(v225) < 1)
                        {
                          goto LABEL_369;
                        }

                        v62 = __s1;
                        v63 = v224;
                        v64 = v224 + HIDWORD(v225);
                        if (v64 > SHIDWORD(v224))
                        {
                          if (HIDWORD(v224))
                          {
                            v65 = SHIDWORD(v224);
                          }

                          else
                          {
                            v65 = 128;
                          }

                          do
                          {
                            v66 = v65;
                            v65 *= 2;
                          }

                          while (v65 < v64);
                          if (v66 <= 1073741695 || (v65 = 2147483391, v64 <= 2147483391))
                          {
                            v67 = v223;
                            v68 = sqlite3_initialize();
                            if (v65)
                            {
                              if (!v68)
                              {
                                goto LABEL_100;
                              }
                            }
                          }

                          goto LABEL_367;
                        }

LABEL_373:
                        v69 = v223;
LABEL_374:
                        memcpy((v69 + v63), v62, v61);
                        LODWORD(v224) = v224 + v61;
                        v10 = v227;
                        if (v6)
                        {
                          goto LABEL_370;
                        }

                        continue;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v227 = 7;
        v10 = 7;
        if (v6)
        {
          goto LABEL_370;
        }

        continue;
      }

      if (v75 != 18)
      {
        goto LABEL_369;
      }

      v118 = v224;
      v119 = HIDWORD(v224);
      v120 = v224;
      if (v224 < SHIDWORD(v224))
      {
        v121 = v223;
        goto LABEL_176;
      }

      if (!HIDWORD(v224))
      {
        v119 = 128;
      }

      v159 = v119;
      do
      {
        v160 = v159;
        v159 *= 2;
      }

      while (v159 <= v224);
      if (v160 > 1073741695)
      {
        v159 = 2147483391;
        if (v224 > 2147483390)
        {
          goto LABEL_305;
        }
      }

      v161 = v223;
      v162 = sqlite3_initialize();
      if (!v159)
      {
        goto LABEL_305;
      }

      if (v162)
      {
        goto LABEL_305;
      }

      v121 = sub_18190287C(v161, v159, 0x100004077774924);
      if (!v121)
      {
        goto LABEL_305;
      }

      v223 = v121;
      HIDWORD(v224) = v159;
      v118 = v224;
      v120 = v224;
LABEL_176:
      LODWORD(v224) = v118 + 1;
      *(v121 + v120) = 9;
      v122 = *(a2 + 128);
      v123 = v224;
      v124 = HIDWORD(v224);
      v125 = v224;
      if (v224 < SHIDWORD(v224))
      {
        v126 = v223;
        goto LABEL_178;
      }

      if (!HIDWORD(v224))
      {
        v124 = 128;
      }

      v181 = v124;
      do
      {
        v182 = v181;
        v181 *= 2;
      }

      while (v181 <= v224);
      if (v182 > 1073741695)
      {
        v181 = 2147483391;
        if (v224 > 2147483390)
        {
          goto LABEL_305;
        }
      }

      v183 = v223;
      v184 = sqlite3_initialize();
      if (v181 && !v184 && (v126 = sub_18190287C(v183, v181, 0x100004077774924)) != 0)
      {
        v223 = v126;
        HIDWORD(v224) = v181;
        v123 = v224;
        v125 = v224;
LABEL_178:
        LODWORD(v224) = v123 + 1;
        *(v126 + v125) = v122;
      }

      else
      {
LABEL_305:
        v227 = 7;
      }

      v185 = *(a2 + 120);
      v186 = *(v50 + 2);
      v187 = *(v50 + 2);
      v188 = __s1;
      v189 = HIDWORD(v225);
LABEL_350:
      sub_181A1A314(&v223, v185, v186, v187, v188, v189, &v227);
      v10 = v227;
      if (v6)
      {
        goto LABEL_370;
      }

      continue;
    }

    if (v75 == 9)
    {
      if (v50[1])
      {
        goto LABEL_369;
      }

      v100 = __s1;
      v101 = *(a2 + 120);
      if (v101 >= 1)
      {
        do
        {
          while (1)
          {
            v103 = v100 + 1;
            v102 = *v100;
            if ((v102 - 3) <= 1)
            {
              break;
            }

            if ((v102 - 1) >= 2)
            {
              ++v100;
            }

            else
            {
              v100 += 9;
            }

            if (!--v101)
            {
              goto LABEL_168;
            }
          }

          v104 = *v103;
          if (v104 < 0)
          {
            v106 = v100[2];
            if (v100[2] < 0)
            {
              v107 = v100[3];
              if (v107 < 0)
              {
                v228 = 0;
                v108 = sub_1818C7200(v100 + 1, &v228);
                if (HIDWORD(v228))
                {
                  v104 = -1;
                }

                else
                {
                  v104 = v228;
                }

                v105 = v108;
              }

              else
              {
                v104 = ((v104 & 0x7F) << 14) | ((v106 & 0x7F) << 7) | v107;
                v105 = 3;
              }
            }

            else
            {
              v104 = v106 | ((v104 & 0x7F) << 7);
              v105 = 2;
            }
          }

          else
          {
            v105 = 1;
          }

          v100 = &v103[v105 + v104];
          --v101;
        }

        while (v101);
      }

LABEL_168:
      v109 = v224;
      v110 = HIDWORD(v224);
      v111 = v224;
      if (v224 < SHIDWORD(v224))
      {
        v112 = v223;
        goto LABEL_170;
      }

      if (!HIDWORD(v224))
      {
        v110 = 128;
      }

      v194 = v110;
      do
      {
        v195 = v194;
        v194 *= 2;
      }

      while (v194 <= v224);
      if (v195 > 1073741695)
      {
        v194 = 2147483391;
        if (v224 > 2147483390)
        {
          goto LABEL_348;
        }
      }

      v196 = v223;
      v197 = sqlite3_initialize();
      if (!v194)
      {
        goto LABEL_348;
      }

      if (v197)
      {
        goto LABEL_348;
      }

      v112 = sub_18190287C(v196, v194, 0x100004077774924);
      if (!v112)
      {
        goto LABEL_348;
      }

      v223 = v112;
      HIDWORD(v224) = v194;
      v109 = v224;
      v111 = v224;
LABEL_170:
      LODWORD(v224) = v109 + 1;
      *(v112 + v111) = 18;
      v113 = *(a2 + 128);
      v114 = v224;
      v115 = HIDWORD(v224);
      v116 = v224;
      if (v224 < SHIDWORD(v224))
      {
        v117 = v223;
        goto LABEL_172;
      }

      if (!HIDWORD(v224))
      {
        v115 = 128;
      }

      v203 = v115;
      do
      {
        v204 = v203;
        v203 *= 2;
      }

      while (v203 <= v224);
      if (v204 > 1073741695)
      {
        v203 = 2147483391;
        if (v224 > 2147483390)
        {
          goto LABEL_348;
        }
      }

      v205 = v223;
      v206 = sqlite3_initialize();
      if (v203 && !v206 && (v117 = sub_18190287C(v205, v203, 0x100004077774924)) != 0)
      {
        v223 = v117;
        HIDWORD(v224) = v203;
        v114 = v224;
        v116 = v224;
LABEL_172:
        LODWORD(v224) = v114 + 1;
        *(v117 + v116) = v113;
      }

      else
      {
LABEL_348:
        v227 = 7;
      }

      v185 = *(a2 + 120);
      v188 = *(v50 + 2);
      v189 = *(v50 + 2);
      v187 = HIDWORD(v225) + __s1 - v100;
      v186 = v100;
      goto LABEL_350;
    }

    v127 = __s1;
    v128 = *(v50 + 2);
    v129 = v224;
    v130 = SHIDWORD(v225) + *(v50 + 2) + v224 + 2;
    if (v130 <= SHIDWORD(v224))
    {
      v135 = v223;
    }

    else
    {
      if (HIDWORD(v224))
      {
        v131 = SHIDWORD(v224);
      }

      else
      {
        v131 = 128;
      }

      do
      {
        v132 = v131;
        v131 *= 2;
      }

      while (v131 < v130);
      if (v132 > 1073741695)
      {
        v131 = 2147483391;
        if (v130 > 2147483391)
        {
          goto LABEL_367;
        }
      }

      v133 = v223;
      v134 = sqlite3_initialize();
      if (!v131)
      {
        goto LABEL_367;
      }

      if (v134)
      {
        goto LABEL_367;
      }

      v135 = sub_18190287C(v133, v131, 0x100004077774924);
      if (!v135)
      {
        goto LABEL_367;
      }

      v223 = v135;
      HIDWORD(v224) = v131;
      v129 = v224;
    }

    v136 = (v135 + v129);
    *v136 = 23;
    v136[1] = *(a2 + 128);
    if (*(a2 + 120) < 1)
    {
      goto LABEL_368;
    }

    v137 = v128;
    v138 = 0;
    v217 = 0;
    __dst = v136 + 2;
    v220 = v137;
    while (1)
    {
      v142 = *v127;
      v143 = 1;
      if (*v127)
      {
        v144 = v142 == 5;
      }

      else
      {
        v144 = 1;
      }

      if (!v144 && v142 != 255)
      {
        if ((v142 - 1) >= 2)
        {
          v146 = v127[1];
          if (v146 < 0)
          {
            v149 = v127[2];
            if (v127[2] < 0)
            {
              v150 = v127[3];
              if (v150 < 0)
              {
                v228 = 0;
                v151 = sub_1818C7200(v127 + 1, &v228);
                v146 = v228;
                if (HIDWORD(v228))
                {
                  v146 = -1;
                }

                v147 = (v151 + 1);
              }

              else
              {
                v146 = ((v146 & 0x7F) << 14) | ((v149 & 0x7F) << 7) | v150;
                v147 = 4;
              }
            }

            else
            {
              v146 = v149 | ((v146 & 0x7F) << 7);
              v147 = 3;
            }
          }

          else
          {
            v147 = 2;
          }

          v143 = v147 + v146;
        }

        else
        {
          v143 = 9;
        }
      }

      v152 = *v137;
      v139 = 1;
      if (*v137)
      {
        v153 = v152 == 5;
      }

      else
      {
        v153 = 1;
      }

      if (!v153 && v152 != 255)
      {
        if ((v152 - 1) < 2)
        {
          v139 = 9;
        }

        else
        {
          v154 = v137[1];
          if (v154 < 0)
          {
            v156 = v137[2];
            if (v137[2] < 0)
            {
              v157 = v137[3];
              if (v157 < 0)
              {
                v228 = 0;
                v158 = sub_1818C7200(v137 + 1, &v228);
                v154 = v228;
                if (HIDWORD(v228))
                {
                  v154 = -1;
                }

                v155 = (v158 + 1);
              }

              else
              {
                v154 = ((v154 & 0x7F) << 14) | ((v156 & 0x7F) << 7) | v157;
                v155 = 4;
              }
            }

            else
            {
              v154 = v156 | ((v154 & 0x7F) << 7);
              v155 = 3;
            }
          }

          else
          {
            v155 = 2;
          }

          v139 = v155 + v154;
        }
      }

      if (*(*(a2 + 136) + v138))
      {
        goto LABEL_195;
      }

      if (v152 == 255)
      {
        goto LABEL_215;
      }

      if (!v152)
      {
        v145 = v217;
        if (v142)
        {
          v145 = 1;
        }

        v217 = v145;
LABEL_195:
        memcpy(__dst, v127, v143);
        v140 = &__dst[v143];
LABEL_196:
        v127 += v143;
        ++v138;
        v141 = *(a2 + 120);
        if (v138 < v141)
        {
          goto LABEL_197;
        }

        if (!v217)
        {
          goto LABEL_368;
        }

        if (v141 < 1)
        {
          goto LABEL_377;
        }

LABEL_252:
        v163 = 0;
        while (2)
        {
          v165 = *v127;
          v166 = 1;
          if (*v127)
          {
            v167 = v165 == 5;
          }

          else
          {
            v167 = 1;
          }

          if (!v167 && v165 != 255)
          {
            if ((v165 - 1) >= 2)
            {
              v168 = v127[1];
              if (v168 < 0)
              {
                v170 = v127[2];
                if (v127[2] < 0)
                {
                  v171 = v127[3];
                  if (v171 < 0)
                  {
                    v228 = 0;
                    v172 = sub_1818C7200(v127 + 1, &v228);
                    v168 = v228;
                    if (HIDWORD(v228))
                    {
                      v168 = -1;
                    }

                    v169 = (v172 + 1);
                  }

                  else
                  {
                    v168 = ((v168 & 0x7F) << 14) | ((v170 & 0x7F) << 7) | v171;
                    v169 = 4;
                  }
                }

                else
                {
                  v168 = v170 | ((v168 & 0x7F) << 7);
                  v169 = 3;
                }
              }

              else
              {
                v169 = 2;
              }

              v166 = v169 + v168;
            }

            else
            {
              v166 = 9;
            }
          }

          v173 = *v220;
          if (*v220)
          {
            v174 = v173 == 5;
          }

          else
          {
            v174 = 1;
          }

          if (v174 || v173 == 255)
          {
            if (v173 != 255 || *(*(a2 + 136) + v163) != 0)
            {
              v164 = 1;
              goto LABEL_294;
            }

            *v140++ = 0;
            v164 = 1;
          }

          else
          {
            if ((v173 - 1) >= 2)
            {
              v176 = v220[1];
              if (v176 < 0)
              {
                v178 = v220[2];
                if (v220[2] < 0)
                {
                  v179 = v220[3];
                  if (v179 < 0)
                  {
                    v228 = 0;
                    v180 = sub_1818C7200(v220 + 1, &v228);
                    v176 = v228;
                    if (HIDWORD(v228))
                    {
                      v176 = -1;
                    }

                    v177 = (v180 + 1);
                  }

                  else
                  {
                    v176 = ((v176 & 0x7F) << 14) | ((v178 & 0x7F) << 7) | v179;
                    v177 = 4;
                  }
                }

                else
                {
                  v176 = v178 | ((v176 & 0x7F) << 7);
                  v177 = 3;
                }
              }

              else
              {
                v177 = 2;
              }

              v164 = v177 + v176;
            }

            else
            {
              v164 = 9;
            }

LABEL_294:
            memcpy(v140, v127, v166);
            v140 += v166;
          }

          v127 += v166;
          v220 += v164;
          if (++v163 >= *(a2 + 120))
          {
            goto LABEL_377;
          }

          continue;
        }
      }

      if (!v142)
      {
LABEL_215:
        *__dst = 0;
        v140 = __dst + 1;
        goto LABEL_196;
      }

      memcpy(__dst, v137, v139);
      v140 = &__dst[v139];
      v127 += v143;
      ++v138;
      v148 = *(a2 + 120);
      if (v138 >= v148)
      {
        break;
      }

      v217 = 1;
LABEL_197:
      __dst = v140;
      v137 += v139;
    }

    if (v148 > 0)
    {
      goto LABEL_252;
    }

LABEL_377:
    LODWORD(v224) = v140 - v223;
LABEL_368:
    v8 = a1;
    v6 = a3;
LABEL_369:
    v10 = v227;
    if (v6)
    {
LABEL_370:
      if (!v10)
      {
        if (v224 > dword_1EA8315B8)
        {
          v10 = v6(a4, v223);
          v227 = v10;
          LODWORD(v224) = 0;
        }

        else
        {
          v10 = 0;
        }
      }
    }
  }

  while (!v10);
  v211 = v223;
  if (v223)
  {
    v212 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_387;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v211);
    --qword_1ED456A90;
    off_1ED452EB0(v211);
    v211 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v212 = &xmmword_1ED452F28;
LABEL_387:
      (*v212)(v211);
    }
  }

  return v227;
}

uint64_t sqlite3rebaser_rebase_strm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v11 = sub_181902484(152, 0x10B00400C7E3458);
  if (!v11)
  {
    return 7;
  }

  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 144) = 0;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 48) = a2;
  *(v11 + 56) = a3;
  *(v11 + 64) = a2 == 0;
  *(v11 + 92) = 0;
  *(v11 + 96) = 0;
  v12 = v11;
  v13 = sub_181926828(a1, v11, a4, a5, 0, 0);
  sqlite3changeset_finalize(v12);
  return v13;
}

uint64_t sqlite3rebaser_delete(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  sub_18191F78C(0, *(result + 8));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_8:
      (*v3)(v2);
      goto LABEL_9;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v3 = &xmmword_1ED452F28;
      goto LABEL_8;
    }
  }

LABEL_9:
  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_14:
    v5 = *v4;

    return v5(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v4 = &xmmword_1ED452F28;
    goto LABEL_14;
  }

  return result;
}

uint64_t sqlite3session_config(int a1, int *a2)
{
  if (a1 != 1)
  {
    return 21;
  }

  v2 = *a2;
  if (*a2 <= 0)
  {
    v2 = dword_1EA8315B8;
  }

  else
  {
    dword_1EA8315B8 = *a2;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t sqlite3_carray_bind(sqlite3_stmt *a1, int a2, void *a3, int a4, int a5, void (__cdecl *a6)(void *))
{
  LODWORD(v8) = a4;
  if (sqlite3_initialize() || (v13 = sub_181902484(24, 0x1080040EEF68E16)) == 0)
  {
    if (a6 + 1 >= 2)
    {
      (a6)(a3);
    }

    return 7;
  }

  v14 = v13;
  *(v13 + 8) = v8;
  *(v13 + 12) = a5;
  if (a6 != -1)
  {
    *v13 = a3;
    goto LABEL_8;
  }

  v15 = 0;
  v16 = a5 & 7;
  if (v16 <= 1)
  {
    if ((a5 & 7) == 0)
    {
      v15 = 0;
      v17 = 4 * v8;
      goto LABEL_36;
    }

    v17 = v8;
    if (v16 != 1)
    {
      goto LABEL_36;
    }

LABEL_20:
    v15 = 0;
    v17 = 8 * v8;
    goto LABEL_36;
  }

  if (v16 == 2)
  {
    goto LABEL_20;
  }

  if (v16 == 3)
  {
    v17 = 8 * v8;
    if (v8 >= 1)
    {
      v19 = v8;
      v20 = a3;
      do
      {
        if (*v20)
        {
          v17 += strlen(*v20) + 1;
        }

        ++v20;
        --v19;
      }

      while (v19);
    }

    v15 = 1;
  }

  else
  {
    v17 = v8;
    if (v16 == 4)
    {
      v17 = 16 * v8;
      if (v8 >= 1)
      {
        if (v8 >= 5)
        {
          v21 = v8 & 3;
          if ((v8 & 3) == 0)
          {
            v21 = 4;
          }

          v18 = v8 - v21;
          v22 = 0uLL;
          v23 = (16 * v8);
          v24 = (a3 + 5);
          v25 = v18;
          do
          {
            v26 = v24 - 4;
            v27 = vld2q_f64(v26);
            v28 = vld2q_f64(v24);
            v23 = vaddq_s64(v27, v23);
            v22 = vaddq_s64(v28, v22);
            v24 += 8;
            v25 -= 4;
          }

          while (v25);
          v17 = vaddvq_s64(vaddq_s64(v22, v23));
        }

        else
        {
          v18 = 0;
        }

        v29 = &a3[2 * v18 + 1];
        v30 = v8 - v18;
        do
        {
          v31 = *v29;
          v29 += 2;
          v17 += v31;
          --v30;
        }

        while (v30);
      }

      v15 = 0;
    }
  }

LABEL_36:
  if (sqlite3_initialize())
  {
    *v14 = 0;
LABEL_38:
    v32 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
      --qword_1ED456A90;
      off_1ED452EB0(v14);
      v14 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return 7;
      }

      v32 = &xmmword_1ED452F28;
    }

    (*v32)(v14);
    return 7;
  }

  v33 = sub_181902484(v17, 4171802398);
  *v14 = v33;
  if (!v33)
  {
    goto LABEL_38;
  }

  v34 = v33;
  if (v15)
  {
    if (v8 >= 1)
    {
      v35 = &v33[v8];
      v36 = v8;
      do
      {
        v38 = *a3;
        if (*a3)
        {
          *v34 = v35;
          v37 = strlen(v38) + 1;
          memcpy(v35, v38, v37);
          v35 += v37;
        }

        else
        {
          *v34 = 0;
        }

        ++v34;
        ++a3;
        --v36;
      }

      while (v36);
    }
  }

  else if (v16 == 4)
  {
    if (v8 >= 1)
    {
      v39 = &v33[2 * v8];
      v40 = v34 + 1;
      v41 = a3 + 1;
      v8 = v8;
      do
      {
        *(v40 - 1) = v39;
        v42 = *(v41 - 1);
        v43 = *v41;
        *v40 = *v41;
        v40 += 2;
        v44 = &v39[v43];
        memcpy(v39, v42, v43);
        v41 += 2;
        a6 = sqlite3_free;
        v39 = v44;
        --v8;
      }

      while (v8);
      goto LABEL_8;
    }
  }

  else
  {
    memcpy(v33, a3, v17);
  }

  a6 = sqlite3_free;
LABEL_8:
  v14[2] = a6;

  return sqlite3_bind_pointer(a1, a2, v14, "carray-bind", sub_1819282FC);
}

uint64_t sub_1819282FC(void *a1)
{
  v1 = a1;
  v2 = a1[2];
  if (v2)
  {
    v2(*a1);
  }

  v3 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_8;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v3 = &xmmword_1ED452F28;
LABEL_8:
    v5 = *v3;

    return v5(v1);
  }

  return result;
}

uint64_t sqlite3_carray_init(uint64_t a1)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_11;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(166473);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  return sub_181894BA4(a1, "carray", &unk_1EE341900, 0, 0);
}

uint64_t sqlite3_csv_init(uint64_t a1)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_11;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(166473);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  return sub_181894BA4(a1, "csv", &unk_1EE3419C8, 0, 0);
}

void sqlite3_activate_see(uint64_t a1)
{
  if (!sqlite3_initialize())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = sub_1819285D8;
    block[3] = &unk_1E6A26850;
    block[4] = a1;
    if (qword_1EA831880 != -1)
    {
      dispatch_once(&qword_1EA831880, block);
    }
  }
}

void sub_1819285D8(uint64_t a1)
{
  if (!dword_1EA831888)
  {
    v2 = xpc_copy_entitlement_for_self();
    if (v2 && (v3 = v2, MEMORY[0x1865D8740]() == MEMORY[0x1E69E9E58]) && xpc_BOOL_get_value(v3))
    {
      xpc_release(v3);
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    dword_1EA831888 = v4;
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }

LABEL_12:
    if (!os_variant_allows_internal_security_policies())
    {
      sqlite3_log(1, "entitlement %s required to activate SEE");
      return;
    }

    v5 = getenv("SQLITE_ENABLE_SEE");
    if (v5)
    {
      if (*v5 == 48)
      {
        v6 = v5[1] != 0;
LABEL_21:
        dword_1EA831888 = v6;
        return;
      }
    }

    else
    {
      if (dword_1EA831888)
      {
        return;
      }

      v7 = getprogname();
      if (strcmp("xctest", v7))
      {
        sqlite3_log(1, "entitlement %s or environment variable SQLITE_ENABLE_SEE=1 required to activate SEE");
        return;
      }
    }

    v6 = 1;
    goto LABEL_21;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

LABEL_3:

  sqlite3_log(28, "This version of the encryption extension does not support an activation passphrase");
}

uint64_t sqlite3_key_v2(uint64_t a1, _BYTE *a2, _BYTE *a3, unsigned int a4)
{
  if (!dword_1EA831888)
  {
    if (sqlite3_initialize() || (block[0] = MEMORY[0x1E69E9820], block[1] = 0x40000000, block[2] = sub_1819285D8, block[3] = &unk_1E6A26850, block[4] = 0, qword_1EA831880 == -1))
    {
      if (dword_1EA831888)
      {
        goto LABEL_5;
      }

      return 21;
    }

    dispatch_once(&qword_1EA831880, block);
    if (!dword_1EA831888)
    {
      return 21;
    }
  }

LABEL_5:
  v8 = *(a1 + 24);
  if (v8)
  {
    xmmword_1ED452F18(v8);
  }

  if (*(a1 + 111))
  {
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_20:
    LODWORD(i) = 0;
LABEL_21:
    v14 = sub_181928904(a1, i, a3, a4);
    if (*(a1 + 111))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  sub_181932C40(a1);
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_9:
  v9 = *(a1 + 40);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = *(a1 + 32) + 32 * i;
      if (*(v11 + 8))
      {
        v12 = *v11;
        for (j = a2; ; ++j)
        {
          if (*j == *v12)
          {
            if (!*j)
            {
              goto LABEL_21;
            }
          }

          else if (byte_181A20298[*j] != byte_181A20298[*v12])
          {
            break;
          }

          ++v12;
        }
      }
    }
  }

  v14 = 1;
  if (*(a1 + 111))
  {
    goto LABEL_23;
  }

LABEL_22:
  sub_181932CD8(a1);
LABEL_23:
  v15 = *(a1 + 24);
  if (v15)
  {
    xmmword_1ED452F28(v15);
  }

  return v14;
}

uint64_t sub_181928904(uint64_t a1, int a2, _BYTE *a3, unsigned int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32) + 32 * a2;
  v7 = *(v4 + 8);
  v6 = (v4 + 8);
  v5 = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = **(v5 + 8);
  if (!v8)
  {
    return 0;
  }

  if (sqlite3_initialize())
  {
    return 7;
  }

  v12 = sub_181902484(112, 0x1010040B5C1261ELL);
  if (!v12)
  {
    return 7;
  }

  v13 = v12;
  v12[5] = 0u;
  v12[6] = 0u;
  v12[3] = 0u;
  v12[4] = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  sub_1818F7260(*v6, 0, 12, 0);
  LOBYTE(v14) = 0;
  v15 = 1;
  if (a3 && a4)
  {
    if ((a4 & 0x80000000) != 0)
    {
      v35[0] = xmmword_181A1FD70;
      v35[1] = xmmword_181A1FD80;
      v36[5] = xmmword_181A1FDE0;
      v36[6] = xmmword_181A1FDF0;
      v36[7] = xmmword_181A1FE00;
      v36[8] = xmmword_181A1FE10;
      v36[9] = xmmword_181A1FE20;
      v36[10] = xmmword_181A1FE30;
      v36[11] = xmmword_181A1FE40;
      v36[12] = xmmword_181A1FE50;
      v36[13] = xmmword_181A1FE60;
      if (*a3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = *(v35 + v17);
          v21 = a3[v18];
          v19 += v20 + v21;
          v22 = *(v35 + v19);
          *(v35 + v19) = v20;
          *(v35 + v17++) = v22;
          if (v21)
          {
            ++v18;
          }

          else
          {
            v18 = 0;
          }
        }

        while (v17 != 256);
      }

      v23 = 0;
      v24 = 0;
      do
      {
        v25 = *(v35 + v23 + 1);
        v24 += v25;
        *(v35 + v23 + 1) = *(v35 + v24);
        *(v35 + v24) = v25;
        *(v13 + v23 + 2) = *(v35 + v23 + 1) + v25;
        ++v23;
      }

      while (v23 != 32);
      v15 = 0;
      LOBYTE(v14) = 32;
    }

    else
    {
      v16 = 0;
      if (a4 >= 0x20)
      {
        v14 = 32;
      }

      else
      {
        v14 = a4;
      }

      do
      {
        *(v13 + v16 + 2) = a3[v16 % v14];
        ++v16;
      }

      while (v16 != 32);
      v15 = 0;
    }
  }

  *v13 = v14;
  *(v13 + 1) = v15;
  v26 = *v13;
  *(v13 + 50) = v13[1];
  *(v13 + 33) = *(v13 + 16);
  *(v13 + 34) = v26;
  v27 = *(v8 + 312);
  if (v27)
  {
    v27(*(v8 + 320));
  }

  else
  {
    sub_181934D80(v8);
  }

  v28 = *(v8 + 19);
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_181A1D1D4;
  }

  *(v8 + 296) = v29;
  *(v8 + 304) = sub_181A1D794;
  *(v8 + 312) = sub_181A1D7B8;
  *(v8 + 320) = v13;
  v30 = sub_181933ECC;
  if (!*(v8 + 48))
  {
    v31 = !v28 || *(v8 + 27) == 0;
    v30 = sub_181933ED8;
    if (v31)
    {
      v30 = sub_18193417C;
    }
  }

  result = 0;
  *(v8 + 288) = v30;
  v32 = *(v8 + 200);
  v33 = *(v8 + 178);
  if (v33 >= 12)
  {
    v34 = 12;
  }

  else
  {
    v34 = *(v8 + 178);
  }

  *(v13 + 69) = v34;
  *(v13 + 19) = v32;
  *(v13 + 20) = v32 - v33;
  *(v13 + 18) = 12 - v34;
  return result;
}

uint64_t sqlite3_rekey_v2(sqlite3 *a1, _BYTE *a2, _BYTE *a3, unsigned int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = 0;
  if (!dword_1EA831888)
  {
    if (sqlite3_initialize())
    {
      if (dword_1EA831888)
      {
        goto LABEL_4;
      }

LABEL_34:
      v17 = 21;
      goto LABEL_92;
    }

    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 0x40000000;
    *&v52 = sub_1819285D8;
    *(&v52 + 1) = &unk_1E6A26850;
    *&v53[0] = 0;
    if (qword_1EA831880 == -1)
    {
      if (!dword_1EA831888)
      {
        goto LABEL_34;
      }
    }

    else
    {
      dispatch_once(&qword_1EA831880, &block);
      if (!dword_1EA831888)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_4:
  sqlite3_exec(a1, "PRAGMA page_count", 0, 0, 0);
  v8 = *(a1 + 3);
  if (v8)
  {
    xmmword_1ED452F18(v8);
  }

  if (*(a1 + 111))
  {
    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_181932C40(a1);
    if (a2)
    {
LABEL_8:
      v9 = *(a1 + 10);
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = *(a1 + 4);
        do
        {
          v12 = (v11 + 32 * v10);
          if (v12[1])
          {
            v13 = *v12;
            for (i = a2; ; ++i)
            {
              if (*i == *v13)
              {
                if (!*i)
                {
                  v15 = v10;
                  goto LABEL_20;
                }
              }

              else if (byte_181A20298[*i] != byte_181A20298[*v13])
              {
                break;
              }

              ++v13;
            }
          }

          ++v10;
        }

        while (v10 != v9);
      }

      v17 = 1;
      goto LABEL_87;
    }
  }

  v15 = 0;
  v11 = *(a1 + 4);
LABEL_20:
  v16 = **(*(v11 + 32 * v15 + 8) + 8);
  if (*(v16 + 18))
  {
    v17 = 8;
    goto LABEL_87;
  }

  v18 = *(v16 + 320);
  if (!v18)
  {
    sub_181928904(a1, 0, &byte_181A2878D, 0);
    v18 = *(v16 + 320);
    if (!v18)
    {
      v17 = 7;
      goto LABEL_87;
    }
  }

  v19 = *(v16 + 21);
  if (!*(v16 + 21))
  {
    v23 = sub_1818A3E30(v16);
    if (v23)
    {
LABEL_46:
      v17 = v23;
      v27 = v50;
      if (v50)
      {
        goto LABEL_85;
      }

      goto LABEL_87;
    }
  }

  v20 = (*(v16 + 288))(v16, 1, &v50, 0);
  v17 = v20;
  if (v19 <= 1 && v20 == 0)
  {
    v23 = sub_1819292CC(v16, 1, 0);
    if (v23)
    {
      goto LABEL_46;
    }
  }

  else if (v20)
  {
    v22 = 0;
    goto LABEL_37;
  }

  v22 = *(v16 + 32);
LABEL_37:
  LOBYTE(v24) = 0;
  v25 = 1;
  if (a3 && a4)
  {
    if ((a4 & 0x80000000) != 0)
    {
      block = xmmword_181A1FD70;
      v52 = xmmword_181A1FD80;
      v53[5] = xmmword_181A1FDE0;
      v53[6] = xmmword_181A1FDF0;
      v53[7] = xmmword_181A1FE00;
      v53[8] = xmmword_181A1FE10;
      v53[9] = xmmword_181A1FE20;
      v53[10] = xmmword_181A1FE30;
      v53[11] = xmmword_181A1FE40;
      v53[12] = xmmword_181A1FE50;
      v53[13] = xmmword_181A1FE60;
      if (*a3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = *(&block + v28);
          v32 = a3[v29];
          v30 += v31 + v32;
          v33 = *(&block + v30);
          *(&block + v30) = v31;
          *(&block + v28++) = v33;
          if (v32)
          {
            ++v29;
          }

          else
          {
            v29 = 0;
          }
        }

        while (v28 != 256);
      }

      v34 = 0;
      v35 = 0;
      do
      {
        v36 = *(&block + v34 + 1);
        v35 += v36;
        *(&block + v34 + 1) = *(&block + v35);
        *(&block + v35) = v36;
        *(v18 + 2 + v34) = *(&block + v34 + 1) + v36;
        ++v34;
      }

      while (v34 != 32);
      v25 = 0;
      LOBYTE(v24) = 32;
    }

    else
    {
      v26 = 0;
      if (a4 >= 0x20)
      {
        v24 = 32;
      }

      else
      {
        v24 = a4;
      }

      do
      {
        *(v18 + 2 + v26) = a3[v26 % v24];
        ++v26;
      }

      while (v26 != 32);
      v25 = 0;
    }
  }

  *v18 = v24;
  *(v18 + 1) = v25;
  if (v22 <= 0 || v17)
  {
LABEL_83:
    if (v17)
    {
      goto LABEL_84;
    }

    v48 = *(v18 + 16);
    *(v18 + 34) = *v18;
    *(v18 + 50) = v48;
    *(v18 + 66) = *(v18 + 32);
    if (v19 > 1)
    {
      v17 = 0;
      v27 = v50;
      if (v50)
      {
        goto LABEL_85;
      }

      goto LABEL_87;
    }

    v23 = sub_1818DCD58(v16, 0, 0);
    if (!v23)
    {
      v23 = sub_181929550(v16);
    }

    goto LABEL_46;
  }

  v37 = dword_1EA8315A8 / *(v18 + 76) + 1;
  v38 = 1;
  while (1)
  {
    if (v37 == v38)
    {
      v17 = 0;
      goto LABEL_78;
    }

    v39 = (*(v16 + 288))(v16, v38, &v49, 0);
    if (v39)
    {
      v17 = v39;
      goto LABEL_84;
    }

    if (*(a1 + 106))
    {
      break;
    }

    v40 = *(v49 + 40);
    if ((*(v49 + 52) & 4) == 0 || v40[8] < *(v49 + 48))
    {
      v17 = v40[12];
      if (!v17)
      {
        if (v40[46] <= v40[50])
        {
          v41 = sub_1818D8DD8(v49);
        }

        else
        {
          v41 = sub_181936438(v49);
        }

LABEL_73:
        v17 = v41;
      }

      v42 = v49;
      if (v49)
      {
        goto LABEL_75;
      }

      goto LABEL_78;
    }

    if (v40[32])
    {
      v41 = sub_1819360C0(v49);
      goto LABEL_73;
    }

    v17 = 0;
    v42 = v49;
    if (v49)
    {
LABEL_75:
      if ((*(v42 + 52) & 0x20) != 0)
      {
        v43 = *(v42 + 40);
        --*(v43 + 152);
        *(v42 + 32) = *(v43 + 168);
        *(v43 + 168) = v42;
        (*(**(v43 + 72) + 144))(*(v43 + 72), *(v43 + 200) * (*(v42 + 48) - 1), *(v42 + 8));
      }

      else
      {
        sub_181932B68(v42);
      }
    }

LABEL_78:
    if (v38 < v22)
    {
      v38 = (v38 + 1);
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_83;
  }

  *(a1 + 106) = 0;
  v17 = 9;
LABEL_84:
  v44 = *(v18 + 50);
  *v18 = *(v18 + 34);
  *(v18 + 16) = v44;
  *(v18 + 32) = *(v18 + 66);
  sub_1818E34C8(v16);
  v27 = v50;
  if (v50)
  {
LABEL_85:
    v45 = *(v27 + 40);
    sub_181932B68(v27);
    if (!*(*(v45 + 336) + 24))
    {
      sub_181934964(v45);
    }
  }

LABEL_87:
  if (!*(a1 + 111))
  {
    sub_181932CD8(a1);
  }

  v46 = *(a1 + 3);
  if (v46)
  {
    xmmword_1ED452F28(v46);
  }

  if (v17)
  {
LABEL_92:
    *(a1 + 20) = v17;
  }

  return v17;
}

uint64_t sub_1819292CC(uint64_t a1, int a2, char a3)
{
  result = *(a1 + 48);
  if (result)
  {
    return result;
  }

  *(a1 + 26) = a3;
  if (*(a1 + 21) != 1)
  {
    return 0;
  }

  v5 = *(a1 + 344);
  if (!v5)
  {
    v8 = *(a1 + 22);
    if (v8 <= 5 && ((1 << v8) & 0x23) != 0)
    {
      if (*(a1 + 17))
      {
        if (v8 == 5)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = a2;
        result = (*(**(a1 + 72) + 56))(*(a1 + 72), 2);
        if (result)
        {
          return result;
        }

        a2 = v13;
        if (*(a1 + 22) == 5)
        {
          goto LABEL_23;
        }
      }

      *(a1 + 22) = 2;
    }

LABEL_23:
    if (a2)
    {
      while (1)
      {
        v10 = *(a1 + 22);
        if (v10 >= 4 && v10 != 5)
        {
          break;
        }

        if (*(a1 + 17))
        {
          goto LABEL_37;
        }

        result = (*(**(a1 + 72) + 56))(*(a1 + 72), 4);
        if (result != 5)
        {
          if (result)
          {
            return result;
          }

LABEL_37:
          *(a1 + 22) = 4;
          goto LABEL_58;
        }

        v12 = (*(a1 + 232))(*(a1 + 240));
        result = 5;
        if (!v12)
        {
          return result;
        }
      }
    }

    goto LABEL_58;
  }

  if (*(a1 + 8))
  {
    v6 = (v5 + 63);
    if (!*(v5 + 63))
    {
      v7 = *(a1 + 22);
      if (v7 < 4 || v7 == 5)
      {
        if (*(a1 + 17))
        {
          *(a1 + 22) = 4;
        }

        else
        {
          result = (*(**(a1 + 72) + 56))(*(a1 + 72), 4);
          if (result)
          {
            return result;
          }

          v5 = *(a1 + 344);
          v27 = *(v5 + 63);
          v6 = (v5 + 63);
          *(a1 + 22) = 4;
          if (v27)
          {
            goto LABEL_11;
          }
        }
      }

      (*(**(v5 + 8) + 112))(*(v5 + 8), (*(v5 + 60) + 3), 1, 5);
      v5 = *(a1 + 344);
LABEL_11:
      *v6 = 1;
    }
  }

  if (*(v5 + 64))
  {
    goto LABEL_58;
  }

  if (*(v5 + 66))
  {
    return 8;
  }

  if (*(v5 + 63) || (result = (*(**(v5 + 8) + 112))(*(v5 + 8), 0, 1, 10), !result))
  {
    *(v5 + 64) = 1;
    v14 = **(v5 + 48);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v19 = v14[4];
    v20 = v14[5];
    if (*(v5 + 72) != v15 || *(v5 + 80) != v16 || *(v5 + 88) != v17 || *(v5 + 96) != v18 || *(v5 + 104) != v19 || *(v5 + 112) != v20)
    {
      if (!*(v5 + 63))
      {
        (*(**(v5 + 8) + 112))(*(v5 + 8), 0, 1, 9);
      }

      *(v5 + 64) = 0;
      return 517;
    }

LABEL_58:
    result = 0;
    *(a1 + 21) = 2;
    v26 = *(a1 + 32);
    *(a1 + 40) = v26;
    *(a1 + 44) = v26;
    *(a1 + 36) = v26;
    *(a1 + 96) = 0;
  }

  return result;
}

uint64_t sub_181929550(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    ++*(a1 + 132);
    if (*(a1 + 21) == 2 && *(a1 + 8) && *(a1 + 9) == 1)
    {
      result = 0;
      *(a1 + 21) = 1;
    }

    else
    {
      v3 = a1;
      result = sub_1818CD128(a1, *(a1 + 24), 1);
      if (result == 13 || result == 10)
      {
        *(v3 + 48) = result;
        *(v3 + 21) = 6;
        v5 = sub_181933ECC;
        if (!result)
        {
          if (!*(v3 + 27) || (v5 = sub_181933ED8, *(v3 + 296)))
          {
            v5 = sub_18193417C;
          }
        }

        *(v3 + 288) = v5;
      }
    }
  }

  return result;
}

uint64_t sub_181929628(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = sub_181932B68(a1);
  if (!*(*(v1 + 336) + 24))
  {

    return sub_181934964(v1);
  }

  return result;
}

char *sub_181929698(signed int a1)
{
  if (a1 <= 1)
  {
    result = sub_181902484(16, 0x1020040D5A9D86FLL);
    if (!result)
    {
      return result;
    }

    v3 = result;
    *result = 0;
    *(result + 1) = 0;
    *result = a1;
    if (!*(result + 1))
    {
      goto LABEL_8;
    }

    return v3;
  }

  if (a1 >= 0xE)
  {
    sub_1819012D0(30428);
    return 0;
  }

  v3 = &unk_1ED453980 + 16 * (a1 - 2);
  if (*(v3 + 1))
  {
    return v3;
  }

LABEL_8:
  v4 = sub_181929A70(a1);
  *(v3 + 1) = v4;
  if (v4)
  {
    result = v3;
  }

  else
  {
    result = 0;
  }

  if (a1 <= 1 && !v4)
  {
    v5 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v3);
      --qword_1ED456A90;
      off_1ED452EB0(v3);
      v3 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return 0;
      }

      v5 = &xmmword_1ED452F28;
    }

    (*v5)(v3);
    return 0;
  }

  return result;
}

uint64_t sub_1819297D4(uint64_t a1)
{
  if (*a1 > 1)
  {

    return sub_1819012D0(30466);
  }

  v1 = a1;
  v2 = *(a1 + 8);
  if (*(v2 + 8) > 1u)
  {
    sub_1819012D0(30887);
    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_19:
      v6 = *v4;

      return v6(v1);
    }

    goto LABEL_15;
  }

  v3 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_8;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v2);
  --qword_1ED456A90;
  off_1ED452EB0(v2);
  v2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v3 = &xmmword_1ED452F28;
LABEL_8:
    (*v3)(v2);
  }

  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v4 = &xmmword_1ED452F28;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_181929978(uint64_t a1)
{
  if (*a1 == -1)
  {
    v1 = a1;
    v2 = *(a1 + 8);
    if (v2[2]._os_unfair_lock_opaque == 1)
    {
      result = os_unfair_recursive_lock_trylock();
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = os_unfair_lock_trylock(v2);
      if (result)
      {
        return result;
      }
    }

    sub_181929B28();
    a1 = v1;
  }

  if (*(*(a1 + 8) + 8) == 1)
  {

    return os_unfair_recursive_lock_lock_with_options();
  }

  else
  {

    return MEMORY[0x1EEE73F90]();
  }
}

uint64_t sub_181929A1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1[2]._os_unfair_lock_opaque == 1)
  {
    v2 = os_unfair_recursive_lock_trylock();
  }

  else
  {
    v2 = os_unfair_lock_trylock(v1);
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

void sub_181929A58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1[2]._os_unfair_lock_opaque == 1)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    os_unfair_lock_unlock(v1);
  }
}

char *sub_181929A70(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    v2 = 30838;
    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      result = sub_181902484(12, 0x10000403E1C8BA9);
      if (result)
      {
        *result = 0;
        *(result + 2) = 1;
      }

      return result;
    }

    if (a1 < 0xE)
    {
      return &unk_1ED453680 + 64 * (a1 - 2);
    }

    v2 = 30866;
LABEL_11:
    sub_1819012D0(v2);
    return 0;
  }

  result = sub_181902484(12, 0x10000403E1C8BA9);
  if (result)
  {
    *result = 0;
    *(result + 2) = 0;
    *result = 0;
  }

  return result;
}

void sub_181929B28()
{
  sqlite3_log(1, "BUG IN CLIENT OF libsqlite3.dylib: illegal multi-threaded access to database connection");
  sqlite3_log(28, "Set a breakpoint in sqlite3MutexMisuseAssert to debug");
  if (qword_1EA831890 != -1)
  {
    dispatch_once(&qword_1EA831890, &unk_1EEF8FA10);
  }

  if (byte_1EA83188C != 1 || (dword_1ED45305C & 0x10) != 0)
  {
    qword_1EA831710 = "BUG IN CLIENT OF libsqlite3.dylib: illegal multi-threaded access to database connection";
    __break(1u);
  }
}

uint64_t sub_181929BB8()
{
  v0 = getprogname();
  if (!strcmp(v0, "Paper"))
  {
    byte_1EA83188C = 1;
  }

  if (!strcmp(v0, "GooglePhotos"))
  {
    byte_1EA83188C = 1;
  }

  if (!strcmp(v0, "grindrx"))
  {
    byte_1EA83188C = 1;
  }

  result = strcmp(v0, "AlipayWallet");
  if (!result)
  {
    byte_1EA83188C = 1;
  }

  return result;
}

void *sub_181929C84(void *result, void *a2)
{
  if (result)
  {
    if (result[64] > a2)
    {
      if (result[62] <= a2)
      {
        *a2 = result[61];
        result[61] = a2;
        return result;
      }

      if (result[63] <= a2)
      {
        *a2 = result[59];
        result[59] = a2;
        return result;
      }
    }

    if (result[103])
    {

      return sub_181929DC0(result, a2);
    }
  }

  if (!a2)
  {
    return result;
  }

  v2 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_15;
  }

  if (xmmword_1ED456AF0)
  {
    v3 = a2;
    xmmword_1ED452F18(xmmword_1ED456AF0);
    a2 = v3;
  }

  v4 = a2;
  qword_1ED456A48 -= xmmword_1ED452EC0(a2);
  --qword_1ED456A90;
  result = off_1ED452EB0(v4);
  a2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v2 = &xmmword_1ED452F28;
LABEL_15:
    v5 = *v2;

    return v5(a2);
  }

  return result;
}

uint64_t sub_181929DC0(uint64_t a1, unint64_t a2)
{
  if (a1 && *(a1 + 520) > a2)
  {
    if (*(a1 + 496) <= a2)
    {
      result = 128;
      goto LABEL_6;
    }

    if (*(a1 + 504) <= a2)
    {
      result = *(a1 + 438);
      goto LABEL_6;
    }
  }

  result = xmmword_1ED452EC0(a2);
LABEL_6:
  **(a1 + 824) += result;
  return result;
}

void *sub_181929E38(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return sub_181929E8C(a1, a3, a4);
  }

  if (*(a1 + 512) > a2)
  {
    if (*(a1 + 496) <= a2)
    {
      if (a3 < 0x81)
      {
        return a2;
      }
    }

    else if (*(a1 + 504) <= a2 && *(a1 + 438) >= a3)
    {
      return a2;
    }
  }

  return sub_181929F38(a1, a2, a3, a4);
}

uint64_t sub_181929E8C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 436) < a2)
  {
    if (*(a1 + 432))
    {
      if (*(a1 + 103))
      {
        return 0;
      }
    }

    else
    {
      ++*(a1 + 452);
    }

    return sub_18192A080(a1, a2, a3);
  }

  if (a2 <= 0x80)
  {
    v4 = *(a1 + 488);
    if (v4)
    {
      *(a1 + 488) = *v4;
      goto LABEL_16;
    }

    v4 = *(a1 + 480);
    if (v4)
    {
      *(a1 + 480) = *v4;
      goto LABEL_16;
    }
  }

  v4 = *(a1 + 472);
  if (v4)
  {
    *(a1 + 472) = *v4;
  }

  else
  {
    v4 = *(a1 + 464);
    if (!v4)
    {
      ++*(a1 + 456);
      return sub_18192A080(a1, a2, a3);
    }

    *(a1 + 464) = *v4;
  }

LABEL_16:
  ++*(a1 + 448);
  return v4;
}

void *sub_181929F38(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (*(a1 + 103))
  {
    return 0;
  }

  if (*(a1 + 504) <= a2 && *(a1 + 520) > a2)
  {
    result = sub_181929E8C(a1, a3, a4);
    if (result)
    {
      if (*(a1 + 496) <= a2)
      {
        v8 = 128;
      }

      else
      {
        v8 = *(a1 + 438);
      }

      v16 = result;
      memcpy(result, a2, v8);
      if (a2)
      {
        sub_181929C84(a1, a2);
      }

      return v16;
    }

    return result;
  }

  result = sub_18190287C(a2, a3, a4);
  if (result)
  {
    return result;
  }

  if (*(a1 + 103) || *(a1 + 104))
  {
    return 0;
  }

  *(a1 + 103) = 1;
  if (*(a1 + 220) >= 1)
  {
    *(a1 + 424) = 1;
  }

  ++*(a1 + 432);
  *(a1 + 436) = 0;
  result = *(a1 + 344);
  if (result)
  {
    sub_181910730(result, "out of memory", v10, v11, v12, v13, v14, v15, v4);
    v17 = *(a1 + 344);
    *(v17 + 24) = 7;
    v18 = *(v17 + 216);
    if (v18)
    {
      result = 0;
      do
      {
        ++*(v18 + 52);
        *(v18 + 24) = 7;
        v18 = *(v18 + 216);
      }

      while (v18);
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t sub_18192A080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_181902484(a2, a3);
  if (!result && !*(a1 + 103) && !*(a1 + 104))
  {
    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    if (*(a1 + 344))
    {
      sub_181910730(*(a1 + 344), "out of memory", v5, v6, v7, v8, v9, v10, v12);
      result = 0;
      for (i = *(a1 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }

  return result;
}

void *sub_18192A12C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  if (v2)
  {
    result = sub_181929E8C(v2, v3 + 1, 4241060481);
    if (result)
    {
LABEL_3:
      v5 = result;
      memcpy(result, a1[1], (*(a1 + 6) + 1));
      result = v5;
      *(a1 + 29) |= 4u;
      goto LABEL_11;
    }
  }

  else
  {
    result = sub_181902484(v3 + 1, 4241060481);
    if (result)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 28) = 7;
  if (*(a1 + 5))
  {
    v6 = *(a1 + 29);
    if ((v6 & 4) != 0)
    {
      v7 = a1[1];
      if (v7)
      {
        v8 = result;
        sub_181929C84(*a1, v7);
        result = v8;
        v6 = *(a1 + 29);
      }

      *(a1 + 29) = v6 & 0xFB;
    }

    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
  }

LABEL_11:
  a1[1] = result;
  return result;
}

os_log_t sub_18192A1F4()
{
  v0 = os_log_create("com.apple.libsqlite3", "logging");
  v1 = MEMORY[0x1E69E9C10];
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  qword_1ED456C08 = v2;
  v3 = os_log_create("com.apple.libsqlite3", "logging-persist");
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  qword_1ED456C10 = v4;
  v5 = os_log_create("com.apple.libsqlite3", "queries");
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v1;
  }

  qword_1ED456C18 = v6;
  v7 = os_log_create("com.apple.libsqlite3", "queries_performance");
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v1;
  }

  qword_1ED456C20 = v8;
  v9 = os_log_create("com.apple.libsqlite3", "queries_persist");
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v1;
  }

  qword_1ED456C28 = v10;
  result = os_log_create("com.apple.libsqlite3", "connections");
  if (result)
  {
    v12 = result;
  }

  else
  {
    v12 = v1;
  }

  qword_1ED456C30 = v12;
  return result;
}

uint64_t sub_18192A2E0(uint64_t a1, int *a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    xmmword_1ED452F18(v5);
    v4 = *(a1 + 16);
  }

  if (*(v4 + 32) <= 1u)
  {
    if (*(v4 + 33))
    {
      v6 = 0;
      v7 = 0;
      v8 = *(v4 + 16);
      if (!v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v10 = *(a1 + 24);
    v11 = off_1EE341B70(v10, 92);
    if (v11 == -1)
    {
      if ((*__error() == 45 || *__error() == 25) && !off_1EE341B70(v10, 7))
      {
        goto LABEL_17;
      }
    }

    else if (!v11)
    {
LABEL_17:
      v7 = 0;
      v6 = 1;
LABEL_18:
      v8 = *(*(a1 + 16) + 16);
      if (!v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v6 = 0;
    *(a1 + 32) = *__error();
    v7 = 3594;
    goto LABEL_18;
  }

  v7 = 0;
  v6 = 1;
  v8 = *(v4 + 16);
  if (v8)
  {
LABEL_8:
    xmmword_1ED452F28(v8);
  }

LABEL_9:
  *a2 = v6;
  return v7;
}

uint64_t sub_18192A440(uint64_t a1, int a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  v5 = *v2;
  v6 = *(*v2 + 8);
  if (v6)
  {
    xmmword_1ED452F18(v6);
  }

  v7 = (v5 + 56);
  do
  {
    v8 = v7;
    v9 = *v7;
    v7 = (*v7 + 8);
  }

  while (v9 != v2);
  *v8 = v2[1];
  v10 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_12;
    }

    v10 = &xmmword_1ED452F28;
  }

  (*v10)(v2);
LABEL_12:
  *(a1 + 64) = 0;
  v11 = *(v5 + 8);
  if (v11)
  {
    xmmword_1ED452F28(v11);
  }

  if (qword_1ED456B10)
  {
    xmmword_1ED452F18(qword_1ED456B10);
  }

  v12 = *(v5 + 48) - 1;
  *(v5 + 48) = v12;
  if (!v12)
  {
    if (a2 == 1 && (*(v5 + 24) & 0x80000000) == 0)
    {
      off_1EE341C48(*(v5 + 16));
    }

    sub_18192FD04(a1);
  }

  if (qword_1ED456B10)
  {
    xmmword_1ED452F28(qword_1ED456B10);
  }

  return 0;
}

uint64_t sub_18192A5B4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (*(a1 + 168) || (v6 = *(a1 + 64)) != 0 && *(*v6 + 168))
  {
    sqlite3_log(27, "denying read from invalidated fd %d", *(a1 + 24));
    return 6922;
  }

  else
  {
    *a4 = 0;
    if (*(a1 + 96) < 1)
    {
      return 0;
    }

    if (*(a1 + 104) || (v7 = a1, v8 = a2, v9 = a4, v10 = a3, v11 = sub_18192BCF4(a1, -1), a3 = v10, a2 = v8, a4 = v9, v4 = v11, a1 = v7, !v4))
    {
      if (*(a1 + 80) >= a2 + a3 + 256)
      {
        v4 = 0;
        *a4 = *(a1 + 104) + a2;
        ++*(a1 + 76);
        return v4;
      }

      return 0;
    }
  }

  return v4;
}

uint64_t sub_18192A6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    --*(a1 + 76);
    return 0;
  }

  else
  {
    v4 = *(a1 + 104);
    if (v4)
    {
      off_1EE341CF0(v4, *(a1 + 88));
      *(a1 + 104) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
    }

    return 0;
  }
}

void sub_18192A708(uint64_t a1)
{
  if ((*(a1 + 30) & 0x80) == 0)
  {
    memset(v2, 0, sizeof(v2));
    if (off_1EE341B40(*(a1 + 24), v2))
    {
      sqlite3_log(28, "cannot fstat db file %s");
    }

    else if (WORD3(v2[0]) == 1)
    {
      if (*(a1 + 16))
      {
        memset(v3, 0, sizeof(v3));
        if (off_1EE341B28(*(a1 + 56), v3) || *(&v3[0] + 1) != *(*(a1 + 16) + 8))
        {
          sqlite3_log(28, "file renamed while open: %s");
        }
      }
    }

    else if (WORD3(v2[0]))
    {
      sqlite3_log(28, "multiple links to file: %s");
    }

    else if ((*(a1 + 30) & 0x20) == 0)
    {
      sqlite3_log(28, "file unlinked while open: %s");
    }
  }
}

void sub_18192A824(NSObject **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();

      dispatch_release(v1);
    }
  }
}

uint64_t sub_18192A87C(uint64_t result)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = *(result + 16);
  if (!v1)
  {
    return result;
  }

  v2 = *(v1 + 48) - 1;
  *(v1 + 48) = v2;
  if (v2)
  {
    return result;
  }

  v3 = result;
  v4 = *(v1 + 16);
  v5 = 0x1ED452000uLL;
  v26 = v1;
  if (v4)
  {
    xmmword_1ED452F18(v4);
    v1 = *(v3 + 16);
  }

  v25 = v1;
  v6 = *(v1 + 40);
  v7 = &unk_1ED456000;
  v8 = &off_1ED452EB0;
  if (v6)
  {
    do
    {
      v15 = *(v6 + 1);
      v16 = *v6;
      if ((v16 & 0x80000000) == 0 && off_1EE341AE0(v16))
      {
        v17 = *(v3 + 56);
        v18 = v8;
        v19 = v7;
        v20 = v5;
        v21 = *__error();
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        *__strerrbuf = 0u;
        strerror_r(v21, __strerrbuf, 0x4FuLL);
        v22 = &byte_181A2878D;
        if (v17)
        {
          v22 = v17;
        }

        v24 = v21;
        v5 = v20;
        v7 = v19;
        v8 = v18;
        sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 43417, v24, "close", v22, __strerrbuf);
      }

      v23 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (v7[350])
        {
          (*(v5 + 3864))();
        }

        qword_1ED456A48 -= (v8)[2](v6);
        --qword_1ED456A90;
        (*v8)(v6);
        v6 = v7[350];
        if (!v6)
        {
          goto LABEL_22;
        }

        v23 = (v8 + 15);
      }

      (*v23)(v6);
LABEL_22:
      v6 = v15;
    }

    while (v15);
  }

  v9 = v26;
  *(v25 + 40) = 0;
  v10 = v26[2];
  if (v10)
  {
    xmmword_1ED452F28(v10);
  }

  v12 = v26[8];
  v11 = v26[9];
  v13 = (v11 + 64);
  if (!v11)
  {
    v13 = &qword_1ED456C40;
  }

  *v13 = v12;
  if (v12)
  {
    *(v12 + 72) = v11;
  }

  if (v26[2])
  {
    off_1ED452F10();
  }

  v14 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    return (*v14)(v9);
  }

  if (v7[350])
  {
    (*(v5 + 3864))();
  }

  qword_1ED456A48 -= (v8)[2](v26);
  --qword_1ED456A90;
  result = (*v8)(v26);
  v9 = v7[350];
  if (v9)
  {
    v14 = (v8 + 15);
    return (*v14)(v9);
  }

  return result;
}

uint64_t sub_18192AB0C(const char *a1, int a2, uint64_t a3)
{
  if (xmmword_1ED456B20 == 0)
  {
    return open(a1, a2, a3);
  }

  else
  {
    return guarded_open_np();
  }
}

uint64_t sub_18192AB6C(uint64_t a1)
{
  if (qword_1ED456B30)
  {
    return MEMORY[0x1EEE72620](a1, &qword_1EA8315F8);
  }

  else
  {
    return close(a1);
  }
}

ssize_t sub_18192AB88(uint64_t a1, void *__buf, size_t __nbyte)
{
  if (qword_1ED456B40)
  {
    return MEMORY[0x1EEE72640](a1, &qword_1EA8315F8, __buf, __nbyte);
  }

  else
  {
    return write(a1, __buf, __nbyte);
  }
}

ssize_t sub_18192ABB4(uint64_t a1, void *__buf, size_t __nbyte, off_t a4)
{
  if (qword_1ED456B38)
  {
    return MEMORY[0x1EEE72638](a1, &qword_1EA8315F8, __buf, __nbyte, a4);
  }

  else
  {
    return pwrite(a1, __buf, __nbyte, a4);
  }
}

uint64_t sub_18192AC04(uint64_t a1, const char *a2, const char *a3, int __errnum, int a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__strerrbuf = 0u;
  strerror_r(__errnum, __strerrbuf, 0x4FuLL);
  v10 = &byte_181A2878D;
  if (a3)
  {
    v10 = a3;
  }

  sqlite3_log(a1, "os_unix.c:%d: (%d) %s(%s) - %s", a5, __errnum, a2, v10, __strerrbuf);
  return a1;
}

uint64_t sub_18192ACE0(char *a1, int a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 420;
  }

  v15 = a4 & (a2 << 22 >> 31);
  v8 = a2 & 0xA00;
  while (1)
  {
    while (off_1EE341AC8 == sub_18192AB0C)
    {
      if (xmmword_1ED456B20 == 0)
      {
        v9 = open(a1, a2, v7);
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v15 && xmmword_1ED456B20)
        {
          v9 = guarded_open_dprotected_np();
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_19;
          }

          goto LABEL_15;
        }

        v9 = guarded_open_np();
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_19:
      if (*__error() != 4)
      {
        return v9;
      }
    }

    v9 = off_1EE341AC8(a1, a2, v7);
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v9 > 2)
    {
      break;
    }

    if (v8 == 2560)
    {
      off_1EE341C48(a1);
    }

    off_1EE341AE0(v9);
    sqlite3_log(28, "attempt to open %s as file descriptor %d", a1, v9);
    if ((off_1EE341AC8("/dev/null", 0, a3) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (a3)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    v10 = !off_1EE341B40(v9, v16) && v17 == 0;
    if (v10 && (WORD2(v16[0]) & 0x1FF) != a3)
    {
      off_1EE341C18(v9, a3);
    }
  }

  if (fcntl(v9, 95, 1) == -1)
  {
    v11 = *__error();
    v12 = __error();
    v13 = strerror(*v12);
    sqlite3_log(28, "Failed to confine fd %d for file %s (%d): %s", v9, a1, v11, v13);
  }

  return v9;
}

void sub_18192AFD0(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) == 0 && off_1EE341AE0(a2))
  {
    if (a1)
    {
      v5 = *(a1 + 56);
    }

    else
    {
      v5 = 0;
    }

    v6 = *__error();
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *__strerrbuf = 0u;
    strerror_r(v6, __strerrbuf, 0x4FuLL);
    v7 = &byte_181A2878D;
    if (v5)
    {
      v7 = v5;
    }

    sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", a3, v6, "close", v7, __strerrbuf);
  }
}

uint64_t sub_18192B0B8(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v8 = *__error();

  return sub_18192AC04(a1, a2, a3, v8, a4);
}

uint64_t sub_18192B114(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = off_1EE341BA0(*(a1 + 24), a3, a4, a2);
  if (v8 != v4)
  {
    v9 = 0;
    while (1)
    {
      if (v8 < 0)
      {
        v10 = v8;
        if (*__error() != 4)
        {
          *(a1 + 32) = *__error();
          sub_18192B0B8(266, "seekAndRead", *(a1 + 56), 45606);
          v9 = 0;
          v4 = v10;
          return (v9 + v4);
        }
      }

      else
      {
        if (!v8)
        {
          v4 = 0;
          return (v9 + v4);
        }

        v4 -= v8;
        v6 += v8 & 0x7FFFFFFF;
        v9 += v8;
        v5 += v8 & 0x7FFFFFFF;
      }

      v8 = off_1EE341BA0(*(a1 + 24), v5, v4, v6);
      if (v4 == v8)
      {
        return (v9 + v4);
      }
    }
  }

  v9 = 0;
  return (v9 + v4);
}

ssize_t sub_18192B21C(uint64_t a1, off_t a2, void *__buf, int a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 144);
  if (v7 >= 1)
  {
    v8 = v7 + 10485760;
    if (*(a1 + 56))
    {
      v9 = v8 < a2;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_29;
    }

    v10 = a4;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *__strerrbuf = 0u;
    v11 = off_1EE341B40(*(a1 + 24), __strerrbuf);
    v12 = *(a1 + 144);
    if (!v11)
    {
      sqlite3_log(1, "seekAndWrite: updated file size hint from %lld to actual size %lld", *(a1 + 144), v29);
      v12 = v29;
      *(a1 + 144) = v29;
    }

    if (v12 + 10485760 >= a2)
    {
      a4 = v10;
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_181A1EBD0();
    }

LABEL_12:
    *(a1 + 32) = 22;
    return 0xFFFFFFFFLL;
  }

  if (v7 || !*(a1 + 56))
  {
    goto LABEL_29;
  }

  v14 = *(a1 + 152);
  if ((v14 + 10485760) < a2)
  {
    v15 = a4;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *__strerrbuf = 0u;
    if (off_1EE341B40(*(a1 + 24), __strerrbuf))
    {
      v14 = *(a1 + 152);
    }

    else
    {
      v14 = v29;
      *(a1 + 152) = v29;
    }

    if ((v14 + 10485760) < a2)
    {
      if ((v14 + (*(*a1 + 88))(a1)) < a2)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          sub_181A1EB38();
        }

        goto LABEL_12;
      }

      v14 = *(a1 + 152);
    }

    a4 = v15;
  }

  v16 = a2 + a4;
  if (v14 > v16)
  {
    v16 = v14;
  }

  *(a1 + 152) = v16;
LABEL_29:
  v17 = *(a1 + 24);
  v18 = a4 & 0x1FFFF;
  while (1)
  {
    v13 = off_1EE341BE8(v17, __buf, v18, a2);
    if ((v13 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v19 = *__error();
      *(a1 + 32) = v19;
      v20 = *(a1 + 56);
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v19, __strerrbuf, 0x4FuLL);
      v21 = &byte_181A2878D;
      if (v20)
      {
        v21 = v20;
      }

      sqlite3_log(778, "os_unix.c:%d: (%d) %s(%s) - %s", 45841, v19, "seekAndWrite", v21, __strerrbuf);
      return v13;
    }
  }

  return v13;
}

uint64_t sub_18192B4C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 88);
  if (v3 == -1)
  {
    v3 = *(a1 + 24);
    *(v2 + 88) = v3;
  }

  if ((*(a1 + 30) & 3) != 1)
  {
    if (*(a1 + 136) && *(a2 + 20) == 1 && *a2 == dword_1EA8315A8 + 2 && *(a2 + 8) == 510)
    {
      v5 = *(a1 + 24);
      result = off_1EE341B70(v5, 91);
      if (result != -1)
      {
        return result;
      }

      if (*__error() == 45 || *__error() == 25)
      {
        return off_1EE341B70(v5, 9);
      }
    }

    else if (*(a1 + 132))
    {
      result = off_1EE341B70(v3, 93);
      if (result != -1)
      {
        return result;
      }

      if (*__error() == 45 || *__error() == 25)
      {
        return off_1EE341B70(v3, 10);
      }
    }

    else
    {
      result = off_1EE341B70(v3, 90);
      if (result != -1)
      {
        return result;
      }

      if (*__error() == 45 || *__error() == 25)
      {
        return off_1EE341B70(v3, 8);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 33))
  {
    return 0;
  }

  if (*(a1 + 132))
  {
    result = off_1EE341B70(v3, 93);
    if (result == -1)
    {
      if (*__error() != 45 && *__error() != 25)
      {
        return 0xFFFFFFFFLL;
      }

      result = off_1EE341B70(v3, 10);
    }

    goto LABEL_33;
  }

  result = off_1EE341B70(v3, 90);
  if (result == -1)
  {
    if (*__error() == 45 || *__error() == 25)
    {
      result = off_1EE341B70(v3, 8);
      goto LABEL_33;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_33:
  if ((result & 0x80000000) == 0)
  {
    *(v2 + 33) = 1;
    ++*(v2 + 28);
  }

  return result;
}

uint64_t sub_18192B800(uint64_t a1, signed int a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 28);
  if (v3 <= a2)
  {
    return 0;
  }

  v23 = 0;
  v24 = 0;
  v22 = 0;
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = a3;
    xmmword_1ED452F18(v7);
    a3 = v8;
    v3 = *(a1 + 28);
  }

  if (v3 >= 2)
  {
    if (a2 == 1)
    {
      if (a3)
      {
        HIDWORD(v24) = 2;
        v22 = dword_1EA8315A8 + 2;
        v23 = 509;
        if (sub_18192B4C8(a1, &v22) == -1)
        {
          goto LABEL_15;
        }

        HIDWORD(v24) = 1;
        v22 = dword_1EA8315A8 + 2;
        v23 = 509;
        if (sub_18192B4C8(a1, &v22) == -1)
        {
          goto LABEL_15;
        }

        HIDWORD(v24) = 2;
        v22 = dword_1EA8315A8 + 511;
        v23 = 1;
        if (sub_18192B4C8(a1, &v22) == -1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        HIDWORD(v24) = 1;
        v22 = dword_1EA8315A8 + 2;
        v23 = 510;
        if (sub_18192B4C8(a1, &v22))
        {
          *(a1 + 32) = *__error();
          result = 2314;
          goto LABEL_40;
        }
      }
    }

    HIDWORD(v24) = 2;
    v22 = dword_1EA8315A8;
    v23 = 2;
    if (sub_18192B4C8(a1, &v22))
    {
LABEL_15:
      *(a1 + 32) = *__error();
      result = 2058;
      goto LABEL_40;
    }

    *(v6 + 32) = 1;
  }

  if (a2)
  {
    result = 0;
    goto LABEL_40;
  }

  v10 = *(v6 + 24) - 1;
  *(v6 + 24) = v10;
  if (v10)
  {
    result = 0;
  }

  else
  {
    HIDWORD(v24) = 2;
    v22 = 0;
    v23 = 0;
    result = sub_18192B4C8(a1, &v22);
    if (result)
    {
      *(a1 + 32) = *__error();
      *(v6 + 32) = 0;
      *(a1 + 28) = 0;
      result = 2058;
    }

    else
    {
      *(v6 + 32) = 0;
    }
  }

  v11 = *(v6 + 28) - 1;
  *(v6 + 28) = v11;
  if (!v11)
  {
    v21 = result;
    *(v6 + 88) = -1;
    v20 = *(a1 + 16);
    v12 = *(v20 + 40);
    if (!v12)
    {
LABEL_39:
      *(v20 + 40) = 0;
      result = v21;
      goto LABEL_40;
    }

    while (1)
    {
      v13 = *(v12 + 1);
      v14 = *v12;
      if ((v14 & 0x80000000) == 0 && off_1EE341AE0(v14))
      {
        v15 = *(a1 + 56);
        v16 = *__error();
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        *__strerrbuf = 0u;
        strerror_r(v16, __strerrbuf, 0x4FuLL);
        v17 = &byte_181A2878D;
        if (v15)
        {
          v17 = v15;
        }

        sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 43417, v16, "close", v17, __strerrbuf);
      }

      v18 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v12);
        --qword_1ED456A90;
        off_1ED452EB0(v12);
        v12 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_28;
        }

        v18 = &xmmword_1ED452F28;
      }

      (*v18)(v12);
LABEL_28:
      v12 = v13;
      if (!v13)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  if (*(v6 + 16))
  {
    v19 = result;
    xmmword_1ED452F28(*(v6 + 16));
    result = v19;
  }

  if (!result)
  {
    *(a1 + 28) = a2;
  }

  return result;
}

uint64_t sub_18192BBB0(int a1, char *a2)
{
  *a2 = 0;
  if (word_1ED452E84)
  {
    v4 = qword_1ED452F08(11);
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }
  }

  v5 = sub_18192C3D8();
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = a2 - 2;
    while (1)
    {
      __buf = 0;
      sqlite3_initialize();
      arc4random_buf(&__buf, 8uLL);
      v8[a1] = 0;
      sqlite3_snprintf(a1, a2, "%s/etilqs_%llx%c", v6, __buf, 0);
      if (v8[a1] || v7 > 0xA)
      {
        break;
      }

      ++v7;
      if (off_1EE341AF8(a2, 0))
      {
        v10 = 0;
        if (word_1ED452E84)
        {
          goto LABEL_16;
        }

        return v10;
      }
    }

    v10 = 1;
    if (!word_1ED452E84)
    {
      return v10;
    }
  }

  else
  {
    v10 = 6410;
    if (!word_1ED452E84)
    {
      return v10;
    }
  }

LABEL_16:
  v11 = qword_1ED452F08(11);
  if (v11)
  {
    xmmword_1ED452F28(v11);
  }

  return v10;
}

uint64_t sub_18192BCF4(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 76) > 0)
  {
    return 0;
  }

  if (a2 < 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *__strerrbuf = 0u;
    if (off_1EE341B40(*(a1 + 24), __strerrbuf))
    {
      return 1802;
    }

    a2 = v19;
  }

  v4 = a2 >= *(a1 + 96) ? *(a1 + 96) : a2;
  if (v4 == *(a1 + 80))
  {
    return 0;
  }

  v5 = *(a1 + 104);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 88);
  v7 = *(a1 + 80) & -off_1EE341D20();
  if (v6 != v7)
  {
    off_1EE341CF0(v5 + v7, v6 - v7);
  }

  v8 = off_1EE341CD8(v5 + v7, v4 - v7, 1, 1);
  if (v8 == -1)
  {
    v9 = -1;
  }

  else
  {
    v9 = v5;
    if (v8 != v5 + v7)
    {
      off_1EE341CF0(v8, v4 - v7);
      v9 = 0;
    }
  }

  if ((v9 + 1) <= 1)
  {
    off_1EE341CF0(v5, v7);
    if (!v9)
    {
LABEL_21:
      v9 = off_1EE341CD8(0, v4, 1, 1);
    }
  }

  if (v9 == -1)
  {
    v10 = *(a1 + 56);
    v11 = *__error();
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *__strerrbuf = 0u;
    strerror_r(v11, __strerrbuf, 0x4FuLL);
    v12 = &byte_181A2878D;
    if (v10)
    {
      v12 = v10;
    }

    sqlite3_log(0, "os_unix.c:%d: (%d) %s(%s) - %s", 49411, v11, "mmap", v12, __strerrbuf);
    v9 = 0;
    v4 = 0;
    *(a1 + 96) = 0;
  }

  result = 0;
  *(a1 + 104) = v9;
  *(a1 + 80) = v4;
  *(a1 + 88) = v4;
  return result;
}

uint64_t sub_18192BF40(uint64_t a1, int a2, int *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if ((v4 & 0x80000000) != 0)
  {
    result = 1;
    v11 = -1;
    goto LABEL_46;
  }

  v7 = off_1EE341BA0(*(a1 + 24), v25, 100, 0);
  v8 = v7;
  if (v7)
  {
    if (v7 != 100 || (v25[0] == 0x66206574694C5153 ? (v9 = v25[1] == 0x332074616D726FLL) : (v9 = 0), !v9))
    {
      result = 26;
      v11 = 2;
      goto LABEL_46;
    }
  }

  v11 = 1;
  if (sub_18192F9EC(a2, v4, 1, dword_1EA8315A8 + 2, 0x1FEu))
  {
    result = 0;
    goto LABEL_46;
  }

  if (v8 != 100 || v26 != 2)
  {
    v13 = sub_18192F9EC(a2, v4, 1, dword_1EA8315A8, 1u);
    if (!v13)
    {
      v13 = sub_18192F9EC(a2, v4, 1, dword_1EA8315A8 + 1, 1u);
      if (!v13)
      {
        v13 = sub_18192F9EC(a2, v4, 3, dword_1EA8315A8 + 2, 0x1FEu);
      }
    }

    goto LABEL_37;
  }

  v14 = strlen(*(a1 + 56));
  v15 = sqlite3_initialize();
  result = 7;
  v11 = -1;
  if (v14 < -99 || v15)
  {
    goto LABEL_46;
  }

  v16 = sub_181902484((v14 + 100), 1545466516);
  if (!v16)
  {
    result = 7;
    goto LABEL_46;
  }

  v17 = v16;
  memcpy(v16, *(a1 + 56), v14);
  strcpy(&v17[v14], "-shm");
  v18 = open(v17, 0, 0);
  if ((v18 & 0x80000000) != 0)
  {
    if (*__error() != 2)
    {
      v24 = __error();
      sub_18192AC04(14, "open", v17, *v24, 49276);
      sqlite3_free(v17);
      result = 14;
      goto LABEL_46;
    }

    v21 = 0;
  }

  else
  {
    v19 = v18;
    v20 = sub_18192F9EC(a2, v18, 1, 0x7Au, 1u);
    if (!v20)
    {
      v20 = sub_18192F9EC(a2, v19, 1, 0x79u, 1u);
      if (!v20)
      {
        v20 = sub_18192F9EC(a2, v19, 1, 0x78u, 1u);
      }
    }

    v21 = v20;
    close(v19);
  }

  v22 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v17);
    --qword_1ED456A90;
    off_1ED452EB0(v17);
    v17 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_36;
    }

    v22 = &xmmword_1ED452F28;
  }

  (*v22)(v17);
LABEL_36:
  v13 = v21;
LABEL_37:
  if (v8)
  {
    v23 = 0;
  }

  else
  {
    v23 = 3;
  }

  if (v13)
  {
    v11 = (v13 >> 31) | 1;
  }

  else
  {
    v11 = v23;
  }

  if (v13)
  {
    result = v13 >> 31;
  }

  else
  {
    result = 0;
  }

LABEL_46:
  *a3 = v11;
  return result;
}

void sub_18192C2A4()
{
  memset(v6, 0, sizeof(v6));
  v0 = sqlite3_temp_directory;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    sub_181A1EC64();
  }

  v1 = 0;
  if (v0)
  {
LABEL_4:
    *__error() = 0;
    off_1EE341B28(v0, v6);
    v2 = *__error();
    if ((WORD2(v6[0]) & 0xF000) == 0x4000)
    {
      v3 = &byte_181A2878D;
    }

    else
    {
      v3 = " is not a directory";
    }

    if (v2)
    {
      v4 = &byte_181A2878D;
    }

    else
    {
      v4 = v3;
    }

    *__error() = 0;
    off_1EE341AF8(v0, 3);
    v5 = __error();
    sqlite3_log(1, "\t Attempted temporary directory at path '%s' with stat() errno %d and access errno %d%s\n", v0, v2, *v5, v4);
  }

  while (v1 != 7)
  {
    v0 = qword_1ED453A40[v1++];
    if (v0)
    {
      goto LABEL_4;
    }
  }
}

void *sub_18192C3D8()
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = &sqlite3_temp_directory;
  v1 = qword_1ED453A40;
  v6 = 0u;
  v7 = 0u;
  v2 = 7;
  v5 = 0u;
  while (1)
  {
    v3 = *v0;
    v0 = v1;
    if (v3 && !off_1EE341B28(v3, &v5) && (WORD2(v5) & 0xF000) == 0x4000 && !off_1EE341AF8(v3, 3))
    {
      return v3;
    }

    if (!v2)
    {
      break;
    }

    --v2;
    v1 = (v0 + 1);
  }

  if (!qword_1ED453A48)
  {
LABEL_17:
    sub_18192C2A4();
    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x400uLL, 0x7F061004uLL);
  if (!confstr(65537, v3, 0x400uLL))
  {
    free(v3);
    goto LABEL_17;
  }

  if (!v3)
  {
    goto LABEL_17;
  }

  qword_1ED453A48 = v3;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (off_1EE341B28(v3, &v5) || (WORD2(v5) & 0xF000) != 0x4000 || off_1EE341AF8(v3, 3))
  {
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    sub_181A1ECA8();
  }

  return v3;
}

uint64_t sub_18192C554(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(v1 + 40))
  {
    return 0;
  }

  v4 = *v1;
  v67 = 0uLL;
  v5 = sub_18192D888(a1, &v67, 1);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_68;
  }

  v10 = sub_18192B114(v4, 0, &v63, 1041);
  if ((v10 & 0x80000000) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    *(a1 + 32) = *(v4 + 32);
    v5 = 266;
    goto LABEL_68;
  }

  if (v10 < 0x12 || v63 != 2)
  {
    v9 = 0;
    v6 = 0;
    v12 = 1;
    v8 = 1;
    goto LABEL_28;
  }

  v14 = v64 != v67 || v65 != *(&v67 + 1);
  if (!*(v1 + 24))
  {
    if (!v14)
    {
      if (v10 - 17 >= 0x3FF)
      {
        v16 = 1023;
      }

      else
      {
        v16 = v10 - 17;
      }

      v9 = v62;
      __memcpy_chk();
      v8 = 0;
      v5 = 0;
      v62[v16] = 0;
      v6 = 1;
      v7 = 1;
      goto LABEL_68;
    }

LABEL_23:
    v12 = 0;
    v9 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_28;
  }

  if (v14)
  {
    goto LABEL_23;
  }

  v15 = strncmp(*(v1 + 24), v66, v10 - 17);
  v12 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v5 = 0;
  v6 = 1;
  if (v15)
  {
    goto LABEL_28;
  }

  while (1)
  {
LABEL_68:
    if (v5)
    {
      goto LABEL_95;
    }

    if (*(a1 + 120))
    {
      break;
    }

LABEL_77:
    if (*(v1 + 16))
    {
      v5 = 0;
LABEL_85:
      if (v5 || !v9)
      {
        if (v5)
        {
          goto LABEL_95;
        }

        v53 = *(v1 + 16);
      }

      else
      {
        v50 = strlen(v9);
        v51 = sub_181902484(v50 + 1, 354097263);
        if (!v51)
        {
          *(v1 + 24) = 0;
          *(*(v1 + 16) + 56) = 0;
          v5 = 7;
          goto LABEL_95;
        }

        v52 = v51;
        memcpy(v51, v9, v50 + 1);
        *(v1 + 24) = v52;
        v53 = *(v1 + 16);
        *(v53 + 56) = v52;
      }

      *(v1 + 40) = 1;
      if (*v53 == &unk_1EEF8FAE8)
      {
        result = 0;
        *(*(v53 + 40) + 8) = *(v1 + 24);
        return result;
      }

      return 0;
    }

    v49 = v9;
    if (!v9)
    {
      v49 = *(v1 + 24);
    }

    v5 = sub_18192DD70(v49, (v1 + 16), 1);
    if ((v7 & 1) == 0 || !v5 || v5 == 7)
    {
      goto LABEL_85;
    }

    v12 = v8 != 0;
LABEL_28:
    v5 = 5;
    if ((*(v4 + 120) & 2) != 0)
    {
      if (!*(v1 + 24))
      {
        v17 = *(v1 + 32);
        v9 = v62;
        if (confstr(65537, v62, 0x400uLL))
        {
          v18 = __strlcat_chk();
          if (v62[v18 - 1] != 47)
          {
            v18 = __strlcat_chk();
          }

          v19 = strlen(v17);
          v20 = v19;
          if (v19 > 248 || ((v19 + v18) << 32) - 0x3F900000001 < 0xFFFFFBFFFFFFFFFFLL)
          {
            memset(&c, 0, sizeof(c));
            CC_SHA256_Init(&c);
            CC_SHA256_Update(&c, v17, v20);
            CC_SHA256_Final(md, &c);
            v24.i64[0] = 0x3030303030303030;
            v24.i64[1] = 0x3030303030303030;
            v25.i64[0] = 0x3030303030303030;
            v25.i64[1] = 0x3030303030303030;
            v26 = vsraq_n_u8(v25, *md, 4uLL);
            v27.i64[0] = 0x3030303030303030;
            v27.i64[1] = 0x3030303030303030;
            v28 = vsraq_n_u8(v27, v69, 4uLL);
            v29.i64[0] = 0x3939393939393939;
            v29.i64[1] = 0x3939393939393939;
            v30.i64[0] = 0x5757575757575757;
            v30.i64[1] = 0x5757575757575757;
            v31.i64[0] = 0x5757575757575757;
            v31.i64[1] = 0x5757575757575757;
            v32.i64[0] = 0x5757575757575757;
            v32.i64[1] = 0x5757575757575757;
            v72.val[0] = vbslq_s8(vcgtq_u8(v26, v29), vsraq_n_u8(v31, *md, 4uLL), v26);
            v26.i64[0] = 0xF0F0F0F0F0F0F0FLL;
            v26.i64[1] = 0xF0F0F0F0F0F0F0FLL;
            v33 = vandq_s8(*md, v26);
            v34 = vorrq_s8(v33, v24);
            v72.val[1] = vbslq_s8(vcgtq_u8(v34, v29), vaddq_s8(v33, v30), v34);
            v71.val[0] = vbslq_s8(vcgtq_u8(v28, v29), vsraq_n_u8(v32, v69, 4uLL), v28);
            v35 = vandq_s8(v69, v26);
            v36 = vorrq_s8(v35, v24);
            v71.val[1] = vbslq_s8(vcgtq_u8(v36, v29), vaddq_s8(v35, v30), v36);
            v37 = v55;
            vst2q_s8(v37, v72);
            v37 += 32;
            vst2q_s8(v37, v71);
            LOWORD(v56) = 45;
            __strlcat_chk();
            strrchr(v17, 47);
            __strlcat_chk();
          }

          else
          {
            if (v19 >= 1)
            {
              v21 = 0;
              while (1)
              {
                v23 = &v17[v21];
                v22 = *v23;
                if (v21 + 2 >= v19 || v22 != 46 || v17[v21 + 1] != 47)
                {
                  break;
                }

                if (v21)
                {
                  if (*(v23 - 1) != 47)
                  {
                    break;
                  }

                  ++v21;
                }

                else
                {
                  v21 = 1;
                }

LABEL_40:
                if (++v21 >= v19)
                {
                  goto LABEL_49;
                }
              }

              if (v22 == 47)
              {
                LOBYTE(v22) = 95;
              }

              v62[v18++] = v22;
              goto LABEL_40;
            }

LABEL_49:
            v62[v18] = 0;
          }

          v9 = v62;
          __strlcat_chk();
        }
      }

      futimes(*(v4 + 24), 0);
      if (v6)
      {
        v38 = v12;
      }

      else
      {
        v38 = 1;
      }

      if ((v38 & 1) != 0 || (v39 = *(v4 + 16)) == 0 || (v40 = 5, *(v39 + 24) <= 1))
      {
        v40 = sub_18192D888(a1, &v67, 4);
        if (!v40)
        {
          LOBYTE(c.count[0]) = 2;
          *(c.count + 1) = v67;
          __strlcpy_chk();
          v41 = *(v4 + 24);
          v42 = (strlen(&c.hash[2] + 1) + 17);
            ;
          }

          v40 = sub_1818DD178(v4, &c, v42, 0);
          fsync(*(v4 + 24));
          v43 = !v12;
          if (v40)
          {
            v43 = 1;
          }

          if ((v43 & 1) == 0)
          {
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v56 = 0u;
            memset(v55, 0, sizeof(v55));
            if (!off_1EE341B40(*(a1 + 24), v55))
            {
              off_1EE341C18(*(v4 + 24), WORD2(v55[0]) & 0x1B6);
            }
          }
        }
      }

      (*(*v4 + 64))(v4, 1);
      v5 = v40;
    }

    v7 = 0;
  }

  v44 = *(a1 + 24);
  if ((v44 & 0x80000000) == 0 && off_1EE341AE0(v44))
  {
    v45 = *(a1 + 56);
    v46 = *__error();
    memset(&c, 0, 80);
    strerror_r(v46, &c, 0x4FuLL);
    v47 = &byte_181A2878D;
    if (v45)
    {
      v47 = v45;
    }

    sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 52603, v46, "close", v47, &c);
  }

  *(a1 + 24) = -1;
  v48 = sub_18192ACE0(*(v1 + 32), *(a1 + 120), 0, 0);
  if ((v48 & 0x80000000) == 0)
  {
    *(a1 + 24) = v48;
    goto LABEL_77;
  }

  v5 = sub_18192ACCC(52612);
LABEL_95:
  v54 = v5;
  (*(*v4 + 64))(v4, 0);
  return v54;
}

uint64_t sub_18192CC6C(uint64_t a1, const char *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(a1 + 28))
  {
    return 5;
  }

  if (*a1 == &unk_1EEF8FAE8)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1;
    if (*a1 == &unk_1EEF8FCB0)
    {
      strlen(*(a1 + 40));
      __memcpy_chk();
      if (!a2)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }
  }

  __strlcpy_chk();
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (*a2)
  {
    if (!strcmp(a2, ":auto:"))
    {
      v5 = 0;
    }

    else
    {
      v5 = a2;
    }

    if (sqlite3_initialize())
    {
      return 7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if (sqlite3_initialize())
  {
    return 7;
  }

LABEL_16:
  v6 = sub_181902484(64, 0x10F00404EA2B81ALL);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v8 = v6 + 1;
  v9 = strlen(__s);
  v10 = sqlite3_initialize();
  v11 = v8;
  if (v10)
  {
LABEL_18:
    *v11 = 0;
LABEL_19:
    v12 = 7;
LABEL_20:
    v13 = v12;
    if (*v7)
    {
      (*(**v7 + 8))(*v7);
      v14 = *v7;
      if (*v7)
      {
        v15 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
LABEL_27:
          (*v15)(v14);
          goto LABEL_28;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v14);
        --qword_1ED456A90;
        off_1ED452EB0(v14);
        v14 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v15 = &xmmword_1ED452F28;
          goto LABEL_27;
        }
      }
    }

LABEL_28:
    v16 = v7[3];
    if (!v16)
    {
      goto LABEL_35;
    }

    v17 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v16);
      --qword_1ED456A90;
      off_1ED452EB0(v16);
      v16 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_35:
        v18 = *v8;
        if (!*v8)
        {
          goto LABEL_42;
        }

        v19 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v18);
          --qword_1ED456A90;
          off_1ED452EB0(v18);
          v18 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_42:
            v20 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48 -= xmmword_1ED452EC0(v7);
              --qword_1ED456A90;
              off_1ED452EB0(v7);
              v7 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                return v13;
              }

              v20 = &xmmword_1ED452F28;
            }

            (*v20)(v7);
            return v13;
          }

          v19 = &xmmword_1ED452F28;
        }

        (*v19)(v18);
        goto LABEL_42;
      }

      v17 = &xmmword_1ED452F28;
    }

    (*v17)(v16);
    goto LABEL_35;
  }

  v21 = sub_181902484(((v9 << 32) + 0x800000000) >> 32, 0x100004077774924);
  *v8 = v21;
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = v21;
  memcpy(v21, __s, ((v9 << 32) + 0x100000000) >> 32);
  v23 = (v9 & (v9 >> 31)) - 1;
  v24 = v9 - 1;
  v25 = v9;
  while (1)
  {
    v26 = __OFSUB__(v25--, 1);
    if (v25 < 0 != v26)
    {
      break;
    }

    v27 = v22[v24--];
    if (v27 == 47)
    {
      v23 = v25 + 1;
      break;
    }
  }

  v28 = v23;
  v22[v23] = 46;
  if (v23 < v9)
  {
    v29 = v9 - v23;
    if (v29 >= 8 && (v22 - __s + 1) >= 0x20)
    {
      if (v29 < 0x20)
      {
        v30 = 0;
        goto LABEL_64;
      }

      v30 = v29 & 0xFFFFFFFFFFFFFFE0;
      v31 = &v22[v23 + 17];
      v32 = &__s[v23 + 16];
      v33 = v29 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v34 = *v32;
        *(v31 - 1) = *(v32 - 1);
        *v31 = v34;
        v31 += 2;
        v32 += 32;
        v33 -= 32;
      }

      while (v33);
      if (v29 == v30)
      {
        goto LABEL_71;
      }

      if ((v29 & 0x18) != 0)
      {
LABEL_64:
        v35 = v30 - (v29 & 0xFFFFFFFFFFFFFFF8);
        v36 = v30 + v23;
        v37 = &v22[v36 + 1];
        v38 = &__s[v36];
        do
        {
          v39 = *v38;
          v38 += 8;
          *v37++ = v39;
          v35 += 8;
        }

        while (v35);
        v28 = (v29 & 0xFFFFFFFFFFFFFFF8) + v23;
        if (v29 == (v29 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      v28 = v30 + v23;
    }

LABEL_69:
    v40 = v9 - v28;
    v41 = &v22[v28 + 1];
    v42 = &__s[v28];
    do
    {
      v43 = *v42++;
      *v41++ = v43;
      --v40;
    }

    while (v40);
LABEL_71:
    v28 = v9;
  }

  strcpy(&v22[v28 + 1], "-conch");
  v12 = sub_18192DD70(v7[1], v7, 0);
  if (v12 == 14)
  {
    if ((*(v4 + 120) & 2) != 0)
    {
      v12 = 14;
      goto LABEL_20;
    }

    memset(&v55, 0, 512);
    memset(v54, 0, sizeof(v54));
    if (off_1EE341B28(*v8, v54) == -1 && *__error() == 2 && statfs(__s, &v55) != -1 && (v55.f_flags & 1) != 0)
    {
      v12 = 0;
      *(v7 + 10) = -1;
      if (!v5)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    }

    v12 = 14;
  }

  if (!v5)
  {
    goto LABEL_86;
  }

LABEL_80:
  if (!v12)
  {
    v44 = strlen(v5);
    v45 = sub_181902484(v44 + 1, 354097263);
    if (!v45)
    {
      v11 = v7 + 3;
      goto LABEL_18;
    }

    v46 = v44 + 1;
    v47 = v45;
    memcpy(v45, v5, v46);
    v7[3] = v47;
    goto LABEL_87;
  }

LABEL_86:
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_87:
  v48 = strlen(__s);
  v49 = sub_181902484(v48 + 1, 354097263);
  if (!v49)
  {
    v11 = v7 + 4;
    goto LABEL_18;
  }

  v50 = v48 + 1;
  v51 = v49;
  memcpy(v49, __s, v50);
  result = 0;
  v7[4] = v51;
  v52 = *(v4 + 40);
  *(v4 + 40) = v7;
  v53 = *v4;
  v7[6] = v52;
  v7[7] = v53;
  *v4 = &unk_1EEF8FD48;
  return result;
}

uint64_t sub_18192D324(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 40);
  v3 = v2[2];
  v4 = *v2;
  if (v3)
  {
    result = (*(*v3 + 64))(v2[2], 0);
    if (result)
    {
      return result;
    }

    result = (*(*v3 + 8))(v3);
    if (result)
    {
      return result;
    }

    v5 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v3);
      --qword_1ED456A90;
      off_1ED452EB0(v3);
      v3 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_11;
      }

      v5 = &xmmword_1ED452F28;
    }

    (*v5)(v3);
LABEL_11:
    v2[2] = 0;
  }

  if (!v4)
  {
    goto LABEL_26;
  }

  if (*(v2 + 10))
  {
    v6 = v1[5];
    if (v6[10] <= 0)
    {
      v6[10] = 0;
    }

    else
    {
      result = (*(**v6 + 64))(*v6, 0);
      v6[10] = 0;
      if (result)
      {
        return result;
      }
    }
  }

  result = (*(*v4 + 8))(v4);
  if (!result)
  {
    v7 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v4);
      --qword_1ED456A90;
      off_1ED452EB0(v4);
      v4 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_26:
        v8 = v2[3];
        if (!v8)
        {
          goto LABEL_33;
        }

        v9 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v8);
          --qword_1ED456A90;
          off_1ED452EB0(v8);
          v8 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_33:
            v10 = v2[1];
            if (!v10)
            {
              goto LABEL_40;
            }

            v11 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48 -= xmmword_1ED452EC0(v10);
              --qword_1ED456A90;
              off_1ED452EB0(v10);
              v10 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
LABEL_40:
                v12 = v2[4];
                if (!v12)
                {
                  goto LABEL_47;
                }

                v13 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48 -= xmmword_1ED452EC0(v12);
                  --qword_1ED456A90;
                  off_1ED452EB0(v12);
                  v12 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
LABEL_47:
                    v14 = v2[7];
                    v1[5] = v2[6];
                    *v1 = v14;
                    v15 = &off_1ED452EB0;
                    if (dword_1ED452E80)
                    {
                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48 -= xmmword_1ED452EC0(v2);
                      --qword_1ED456A90;
                      off_1ED452EB0(v2);
                      v2 = xmmword_1ED456AF0;
                      if (!xmmword_1ED456AF0)
                      {
                        goto LABEL_53;
                      }

                      v15 = &xmmword_1ED452F28;
                    }

                    (*v15)(v2);
LABEL_53:
                    v16 = *(*v1 + 8);

                    return v16(v1);
                  }

                  v13 = &xmmword_1ED452F28;
                }

                (*v13)(v12);
                goto LABEL_47;
              }

              v11 = &xmmword_1ED452F28;
            }

            (*v11)(v10);
            goto LABEL_40;
          }

          v9 = &xmmword_1ED452F28;
        }

        (*v9)(v8);
        goto LABEL_33;
      }

      v7 = &xmmword_1ED452F28;
    }

    (*v7)(v4);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_18192D740(uint64_t a1, uint64_t a2)
{
  result = sub_18192C554(a1);
  if (!result)
  {
    v5 = *(a1 + 40);
    if (*(v5 + 40) < 1)
    {
      return 0;
    }

    else
    {
      v6 = *(v5 + 16);
      result = (*(*v6 + 56))(v6, a2);
      *(a1 + 28) = v6[28];
    }
  }

  return result;
}

uint64_t sub_18192D7AC(uint64_t a1, uint64_t a2)
{
  result = sub_18192C554(a1);
  if (!result)
  {
    v5 = *(a1 + 40);
    if (*(v5 + 40) < 1)
    {
      return 0;
    }

    else
    {
      v6 = *(v5 + 16);
      result = (*(*v6 + 64))(v6, a2);
      *(a1 + 28) = v6[28];
    }
  }

  return result;
}

uint64_t sub_18192D818(uint64_t a1)
{
  result = sub_18192C554(a1);
  if (!result)
  {
    v3 = *(a1 + 40);
    if (*(v3 + 40) < 1)
    {
      return 0;
    }

    else
    {
      v4 = *(**(v3 + 16) + 72);

      return v4();
    }
  }

  return result;
}

uint64_t sub_18192D888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v51 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 40);
  v9 = 0x1EE341000uLL;
  v10 = *v8;
  while (1)
  {
    result = (*(*v10 + 56))(v10, a3);
    if (result != 5)
    {
      return result;
    }

    ++*(v8 + 44);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    memset(v36, 0, sizeof(v36));
    if ((*(v9 + 2880))(v10[6], v36))
    {
      goto LABEL_37;
    }

    v12 = *(v8 + 44);
    v13 = v37;
    if (v12 == 1)
    {
      v7 = *(&v37 + 1);
      *__rqtp = xmmword_181A1FEB0;
      nanosleep(__rqtp, 0);
      v6 = v13;
    }

    else
    {
      result = 5;
      if (__PAIR128__(v7, v6) != v37)
      {
        return result;
      }

      if (v12 == 3)
      {
        v16 = *(v5 + 40);
        v17 = *v16;
        v18 = v16[1];
        v45 = 0u;
        v46 = 0u;
        *v43 = 0u;
        v44 = 0u;
        v19 = __strlcpy_chk();
        if ((v19 - 1025) >= 0xFFFFFFFFFFFFFC05)
        {
          strcpy(v48 + v19 - 5, "break");
          v20 = off_1EE341BA0(*(v17 + 24), __rqtp, 1041, 0);
          v21 = v20;
          if (v20 >= 0x11)
          {
            v35 = a2;
            v22 = sub_18192ACE0(v48, 536873474, 0, 0);
            if ((v22 & 0x80000000) != 0)
            {
              v32 = __error();
              sqlite3_snprintf(64, v43, "create failed (%d)", *v32);
            }

            else
            {
              v23 = v22;
              v34 = v5;
              v25 = "write failed (%d)";
              if (off_1EE341BE8(v22, __rqtp, v21, 0) == v21)
              {
                rename(v48, v18, v24);
                v25 = "rename failed (%d)";
                if (!v26)
                {
                  sqlite3_log(28, "broke stale lock on %s\n", v18);
                  v5 = v34;
                  sub_18192AFD0(v34, *(v17 + 24), 52321);
                  *(v17 + 24) = v23;
                  *(v17 + 120) = 514;
                  if (a3 != 4 || (result = (*(*v10 + 56))(v10, 1), !result))
                  {
                    result = (*(*v10 + 56))(v10, a3);
                  }

                  a2 = v35;
                  v9 = 0x1EE341000;
                  if (result != 5)
                  {
                    return result;
                  }

                  goto LABEL_3;
                }
              }

              v27 = __error();
              sqlite3_snprintf(64, v43, v25, *v27);
              off_1EE341C48(v48);
              v28 = off_1EE341AE0(v23);
              v5 = v34;
              a2 = v35;
              if (v28)
              {
                v29 = *(v34 + 56);
                v30 = *__error();
                memset(v50, 0, sizeof(v50));
                *__strerrbuf = 0u;
                strerror_r(v30, __strerrbuf, 0x4FuLL);
                v31 = &byte_181A2878D;
                if (v29)
                {
                  v31 = v29;
                }

                v33 = v30;
                v5 = v34;
                sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 52329, v33, "close", v31, __strerrbuf);
              }
            }
          }

          else
          {
            sqlite3_snprintf(64, v43, "read error (len %d)", v20);
          }
        }

        else
        {
          sqlite3_snprintf(64, v43, "path error (len %d)", v19);
        }

        sqlite3_log(1, "failed to break stale lock on %s, %s\n", v18, v43);
        v9 = 0x1EE341000;
      }

      else if (v12 == 2)
      {
        v14 = off_1EE341BA0(v10[6], __rqtp, 1041, 0);
        if ((v14 & 0x80000000) != 0)
        {
LABEL_37:
          *(v5 + 32) = *__error();
          return 3850;
        }

        result = 5;
        if (v14 < 0x12 || __rqtp[0] != 2)
        {
          return result;
        }

        if (*&__rqtp[1] != *a2 || *&__rqtp[9] != *(a2 + 8))
        {
          memset(v48, 0, 37);
          *__strerrbuf = 0u;
          memset(v50, 0, 21);
          *v43 = *&__rqtp[1];
          uuid_unparse(v43, v48);
          uuid_unparse(a2, __strerrbuf);
          sqlite3_log(1, "ERROR: sqlite database is locked because it is in use by another host that holds a host-exclusive lock on %s; this host (UUID %s) cannot override the host-exclusive lock until the other host (UUID %s) releases its locks on %s\n", *(v5 + 56), __strerrbuf, v48, *(v10 + 7));
          return 5;
        }

        *&v48[0].__pn_.__r_.__value_.__l.__data_ = xmmword_181A1FEA0;
        nanosleep(v48, 0);
      }
    }

LABEL_3:
    if (*(v8 + 44) >= 3)
    {
      return 5;
    }
  }
}

uint64_t sub_18192DD70(char *a1, uint64_t *a2, int a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = sub_18192E2E4(a1, 6);
  if (v6)
  {
    v7 = v6;
    v8 = *v6;
    if ((v8 & 0x80000000) == 0)
    {
LABEL_3:
      v9 = 770;
LABEL_8:
      v11 = 6;
LABEL_9:
      if (sqlite3_initialize() || (v20 = sub_181902484(192, 0x10F0040BF46716CLL)) == 0)
      {
        v10 = 7;
        if (!off_1EE341AE0(v8))
        {
          goto LABEL_21;
        }

        v12 = 0;
        v13 = 0;
        v14 = 1;
      }

      else
      {
        v12 = v20;
        *(v20 + 160) = 0u;
        *(v20 + 176) = 0u;
        *(v20 + 128) = 0u;
        *(v20 + 144) = 0u;
        *(v20 + 96) = 0u;
        *(v20 + 112) = 0u;
        *(v20 + 64) = 0u;
        *(v20 + 80) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0u;
        *v20 = 0u;
        *(v20 + 16) = 0u;
        *(v20 + 120) = v9;
        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        v33 = 0u;
        *&v34 = 0;
        *(&v35 + 1) = 0;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        *(&v34 + 1) = "dummy";
        *&v35 = off_1EEF8F9B0;
        *v7 = v8;
        v7[1] = v11;
        *(v20 + 48) = v7;
        v10 = sub_1818929D8(&v33, v8, v20, a1, 0);
        if (!v10)
        {
          *a2 = v12;
          return v10;
        }

        if (!off_1EE341AE0(v8))
        {
LABEL_15:
          v17 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
LABEL_20:
            (*v17)(v12);
            goto LABEL_21;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v12);
          --qword_1ED456A90;
          off_1ED452EB0(v12);
          v12 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v17 = &xmmword_1ED452F28;
            goto LABEL_20;
          }

LABEL_21:
          v18 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v7);
            --qword_1ED456A90;
            off_1ED452EB0(v7);
            v7 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              return v10;
            }

            v18 = &xmmword_1ED452F28;
          }

          (*v18)(v7);
          return v10;
        }

        v14 = 0;
        v13 = *(v12 + 56);
      }

      v15 = *__error();
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v15, __strerrbuf, 0x4FuLL);
      v16 = &byte_181A2878D;
      if (v13)
      {
        v16 = v13;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 52218, v15, "close", v16, __strerrbuf);
      if (v14)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (sqlite3_initialize())
    {
      return 7;
    }

    v7 = sub_181902484(16, 0x10200405730B0C9);
    if (!v7)
    {
      return 7;
    }
  }

  v9 = 770;
  v8 = sub_18192ACE0(a1, 770, 0, 0);
  __error();
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v21 = __error();
  if (!a3 || *v21 != 2)
  {
    goto LABEL_54;
  }

  v22 = strlen(a1);
  __strerrbuf[0] = *a1;
  if (v22 < 2)
  {
    goto LABEL_52;
  }

  v23 = 0;
  v24 = 0;
  v25 = (v22 & 0x7FFFFFFF) - 1;
  v26 = a1 + 1;
  while (1)
  {
    v27 = v26[v23];
    if (v27 != 47)
    {
      goto LABEL_37;
    }

    if (v23 - v24 + 1 >= 1)
    {
      break;
    }

    LOBYTE(v27) = 47;
LABEL_37:
    __strerrbuf[++v23] = v27;
    if (v25 == v23)
    {
      goto LABEL_52;
    }
  }

  if ((v23 - v24 + 1) > 2)
  {
    goto LABEL_41;
  }

  v29 = __strerrbuf[v24];
  if (v23 == v24)
  {
    if ((v29 & 0xFE) != 0x2E)
    {
      goto LABEL_41;
    }

    goto LABEL_49;
  }

  if (v29 == 46 || __strerrbuf[v24 + 1] == 46)
  {
    goto LABEL_49;
  }

LABEL_41:
  __strerrbuf[v23 + 1] = 0;
  if (!off_1EE341C78(__strerrbuf, 493) || (v28 = *__error(), v28 == 17))
  {
LABEL_49:
    v24 = v23 + 2;
    LOBYTE(v27) = v26[v23];
    goto LABEL_37;
  }

  if (!v28)
  {
LABEL_52:
    v8 = sub_18192ACE0(a1, 770, 0, 0);
  }

  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

LABEL_54:
  v9 = 0x20000000;
  v8 = sub_18192ACE0(a1, 0x20000000, 0, 0);
  v30 = __error();
  if ((v8 & 0x80000000) == 0)
  {
    v11 = 1;
    goto LABEL_9;
  }

  v31 = *v30;
  v32 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v7);
    --qword_1ED456A90;
    off_1ED452EB0(v7);
    v7 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v32 = &xmmword_1ED452F28;
      goto LABEL_61;
    }
  }

  else
  {
LABEL_61:
    (*v32)(v7);
  }

  if (a3)
  {
    return 5;
  }

  if (v31 == 13)
  {
    return 3;
  }

  if (v31 == 5)
  {
    return 3850;
  }

  return sub_18192ACCC(52194);
}

uint64_t sub_18192E2E4(uint64_t a1, char a2)
{
  if (qword_1ED456B10)
  {
    xmmword_1ED452F18(qword_1ED456B10);
  }

  memset(v12, 0, sizeof(v12));
  if (qword_1ED456C40 && !off_1EE341B28(a1, v12) && (v6 = qword_1ED456C40) != 0)
  {
    while (*v6 != LODWORD(v12[0]) || *(v6 + 8) != *(&v12[0] + 1))
    {
      v6 = *(v6 + 64);
      if (!v6)
      {
        v4 = 0;
        goto LABEL_24;
      }
    }

    v7 = *(v6 + 16);
    if (v7)
    {
      xmmword_1ED452F18(v7);
    }

    v8 = (v6 + 40);
    v4 = *(v6 + 40);
    if (v4)
    {
      if (*(v4 + 4) == (a2 & 3))
      {
LABEL_19:
        *v8 = *(v4 + 8);
      }

      else
      {
        while (1)
        {
          v9 = v4;
          v4 = *(v4 + 8);
          if (!v4)
          {
            break;
          }

          if (*(v4 + 4) == (a2 & 3))
          {
            v8 = (v9 + 8);
            goto LABEL_19;
          }
        }
      }
    }

    v10 = *(v6 + 16);
    if (v10)
    {
      xmmword_1ED452F28(v10);
      v5 = qword_1ED456B10;
      if (qword_1ED456B10)
      {
        goto LABEL_25;
      }

      return v4;
    }

LABEL_24:
    v5 = qword_1ED456B10;
    if (!qword_1ED456B10)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    v5 = qword_1ED456B10;
    if (!qword_1ED456B10)
    {
      return v4;
    }
  }

LABEL_25:
  xmmword_1ED452F28(v5);
  return v4;
}

void sub_18192E440(unsigned int a1, NSObject **a2, uint64_t a3)
{
  if ((a1 & 0x80000000) == 0)
  {
    if (_dispatch_is_multithreaded())
    {
      if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
      {
        global_queue = dispatch_get_global_queue(0, 2uLL);
        v7 = dispatch_source_create(MEMORY[0x1E69E9728], a1, a3 ^ 0x71, global_queue);
        if (v7)
        {
          v8 = v7;
          dispatch_set_context(v7, a2);
          dispatch_source_set_event_handler_f(v8, sub_18192E4FC);
          *a2 = v8;

          dispatch_resume(v8);
        }
      }
    }
  }
}

void sub_18192E4FC(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    data = dispatch_source_get_data(*a1);
    if (data)
    {
      v4 = data;
      handle = dispatch_source_get_handle(v1);
      v6 = handle;
      if ((v4 & 8) == 0 || ((v10 = 0u, v11 = 0u, v9 = 0u, memset(v8, 0, sizeof(v8)), !off_1EE341B40(handle, v8)) ? (v7 = v9 == 0) : (v7 = 1), v7))
      {
        atomic_fetch_or_explicit((a1 + 8), 1u, memory_order_relaxed);
        sub_18192E5BC(v6, v4);
        sqlite3_log(1, "invalidated open fd: %d (0x%02lx)", v6, v4);
      }
    }
  }
}

void sub_18192E5BC(int a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = v15;
  if (fcntl(a1, 50, v15))
  {
    v3 = "<unresolvable path>";
  }

  if (a2 > 16)
  {
    if (a2 == 64)
    {
      v4 = "revoked";
      goto LABEL_18;
    }

    if (a2 == 32)
    {
      v4 = "renamed";
      goto LABEL_18;
    }

    if (a2 != 17)
    {
      goto LABEL_13;
    }

LABEL_11:
    v4 = "unlinked";
    goto LABEL_18;
  }

  switch(a2)
  {
    case 1:
      goto LABEL_11;
    case 8:
      v4 = "truncated";
      goto LABEL_18;
    case 16:
      v4 = "linked";
      goto LABEL_18;
  }

LABEL_13:
  if ((a2 & (a2 - 1)) != 0)
  {
    v4 = "affected by unexpected operations";
  }

  else
  {
    v4 = "affected by unexpected operation";
  }

LABEL_18:
  sqlite3_log(1, "BUG IN CLIENT OF libsqlite3.dylib: database integrity compromised by API violation: vnode %s while in use: %s", v4, v3);
  if ((dword_1ED45305C & 4) != 0 || (dword_1ED45305C & 2) != 0 && (strstr(v3, "/iTunes/MediaLibrary.sqlitedb") || strstr(v3, "/PhotoData/Photos.sqlite") || strstr(v3, "/Notes/notes.sqlite") || strstr(v3, "/Accounts/Accounts3.sqlite") || strstr(v3, "/Calendar/Calendar.sqlitedb") || strstr(v3, "/AddressBook/AddressBook.sqlitedb") || strstr(v3, "/NoteStore.sqlite")))
  {
    v12 = v4;
    v14 = 0;
    v5 = strrchr(v3, 47);
    v6 = 0;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*v7)
    {
      v8 = strlen(v7);
      v9 = v8;
      v10 = v8;
      if (v8 < 5 || (v11 = v8 - 4, strcmp(&v7[v11], "-shm")) && strcmp(&v7[v11], "-wal") && (v10 < 9 || (LODWORD(v11) = v10 - 8, strcmp(&v7[v10 - 8], "-journal"))) && (v10 < 7 || (LODWORD(v11) = v10 - 6, strcmp(&v7[v10 - 6], "-conch"))))
      {
        LODWORD(v11) = v9;
      }

      v6 = sub_18192E8CC(v7, v11) << 16;
    }

    qword_1EA831740 = (v6 | a2) ^ 0x1B0A00000000;
    v13 = 0;
    asprintf(&v13, "BUG IN CLIENT OF libsqlite3.dylib: database integrity compromised by API violation: vnode %s while in use", v12);
    if ((dword_1ED45305C & 0x20) != 0)
    {
      asprintf(&v14, "%s: %s");
    }

    else if (dword_1ED45305C)
    {
      asprintf(&v14, "%s. See syslog for more information");
    }

    else
    {
      v14 = v13;
    }

    qword_1EA831710 = v14;
    __break(1u);
  }
}

uint64_t sub_18192E8CC(unsigned __int8 *a1, int a2)
{
  v2 = 0xFFFF;
  if (a1 && a2 >= 1)
  {
    do
    {
      v3 = *a1++;
      v4 = (v3 ^ ((v2 & 0xFF00) >> 8) ^ ((v3 ^ ((v2 & 0xFF00) >> 8)) >> 4));
      v2 = (v2 << 8) ^ ((v3 ^ ((v2 & 0xFF00) >> 8) ^ ((v3 ^ ((v2 & 0xFF00) >> 8)) >> 4)) << 12) ^ (32 * v4) ^ v4;
      --a2;
    }

    while (a2);
  }

  return v2;
}

uint64_t sub_18192E914(uint64_t a1, int a2, uint64_t **a3)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v7 = sub_181902484(16, 0x10200403A5D3213);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  *v7 = 0;
  v7[1] = 0;
  v9 = sub_18188D94C(*(a1 + 56), v7, a2 | 6u, *(*(a1 + 8) + 24));
  if (v9)
  {
    goto LABEL_5;
  }

  v12 = *(a1 + 176);
  if (v12 >= 1)
  {
    v9 = sqlite3_key_v2(*v8, 0, *(a1 + 184), v12);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  v13 = *v8;
  if (!*v8)
  {
    v15 = "NULL";
    goto LABEL_29;
  }

  v14 = *(v13 + 113);
  if (v14 == 186)
  {
LABEL_23:
    v15 = "unopened";
LABEL_29:
    sqlite3_log(21, "API call with %s database connection pointer", v15);
    sub_1819012D0(196159);
    goto LABEL_30;
  }

  if (v14 != 118)
  {
    if (v14 != 109)
    {
      v15 = "invalid";
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  v16 = *(v13 + 24);
  if (v16)
  {
    xmmword_1ED452F18(v16);
    v17 = *(v13 + 24);
    *(v13 + 88) = -1;
    if (v17)
    {
      xmmword_1ED452F28(v17);
    }
  }

  else
  {
    *(v13 + 88) = -1;
  }

LABEL_30:
  v35 = 0;
  v36 = 0;
  v18 = *v8;
  if (!*v8)
  {
    v20 = "NULL";
    goto LABEL_40;
  }

  v19 = *(v18 + 113);
  if (v19 == 186)
  {
LABEL_34:
    v20 = "unopened";
LABEL_40:
    sqlite3_log(21, "API call with %s database connection pointer", v20);
    sub_1819012D0(193572);
    goto LABEL_41;
  }

  if (v19 != 118)
  {
    if (v19 != 109)
    {
      v20 = "invalid";
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v21 = *(v18 + 24);
  if (v21)
  {
    xmmword_1ED452F18(v21);
    v22 = *(v18 + 24);
    *(v18 + 664) = sub_18192F488;
    *(v18 + 672) = &v35;
    *(v18 + 680) = v18;
    *(v18 + 688) = 0;
    *(v18 + 788) = 0;
    if (v22)
    {
      xmmword_1ED452F28(v22);
    }
  }

  else
  {
    *(v18 + 664) = sub_18192F488;
    *(v18 + 672) = &v35;
    *(v18 + 680) = v18;
    *(v18 + 688) = 0;
    *(v18 + 788) = 0;
  }

LABEL_41:
  v9 = sqlite3_exec(*v8, "BEGIN EXCLUSIVE", 0, 0, 0);
  if (v9 || (pStmt = 0, v9 = sub_1818954B4(*v8, "PRAGMA main.journal_mode", 0xFFFFFFFFLL, 0, 0, &pStmt, 0, v23), v9))
  {
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  *(v8 + 2) = 0;
  if (sqlite3_step(pStmt) != 100)
  {
    goto LABEL_56;
  }

  v24 = sqlite3_column_text(pStmt, 0);
  if (!v24)
  {
    goto LABEL_56;
  }

  v25 = v24;
  if (strlen(v24) != 3)
  {
    goto LABEL_56;
  }

  v26 = *v25;
  if ((v26 & 0xFFFFFFDF) == 0x57)
  {
    v26 = v25[1];
    if ((v26 & 0xFFFFFFDF) == 0x41)
    {
      v26 = v25[2];
      if ((v26 & 0xFFFFFFDF) == 0x4C)
      {
LABEL_55:
        *(v8 + 2) = 1;
        goto LABEL_56;
      }

      v27 = 108;
    }

    else
    {
      v27 = 97;
    }
  }

  else
  {
    v27 = 119;
  }

  if (v27 == byte_181A20298[v26])
  {
    goto LABEL_55;
  }

LABEL_56:
  v9 = sqlite3_finalize(pStmt);
  if (v9)
  {
    goto LABEL_5;
  }

  if (!*(v8 + 2))
  {
    result = 0;
    goto LABEL_16;
  }

  v9 = sqlite3_exec(*v8, "COMMIT", 0, 0, 0);
  if (v9)
  {
    goto LABEL_5;
  }

  v28 = *v8;
  v38 = 0;
  pStmt = 0;
  v9 = sqlite3_file_control(v28, "main", 7, &pStmt);
  if (v9)
  {
    goto LABEL_5;
  }

  v29 = pStmt;
  v30 = *(*pStmt + 112);
  while (1)
  {
    v9 = v30(v29, 2, 1, 10);
    if (v9 != 5)
    {
      break;
    }

    if (v35)
    {
      LODWORD(v37) = v37 + 1;
      if (v35(v36))
      {
        continue;
      }
    }

LABEL_64:
    v10 = 5;
    goto LABEL_6;
  }

  if (v9)
  {
    goto LABEL_5;
  }

  v9 = (*(*pStmt + 104))(pStmt, 0, 0x8000, 1, &v38);
  if (v9)
  {
    goto LABEL_5;
  }

  v31 = v38;
  v32 = pStmt;
  *v38 = 0u;
  v31[1] = 0u;
  v33 = *(*v32 + 112);
  while (1)
  {
    result = v33(v32, 3, 5, 10);
    if (result != 5)
    {
      break;
    }

    if (!v35)
    {
      goto LABEL_64;
    }

    LODWORD(v37) = v37 + 1;
    v34 = v35(v36);
    v9 = 5;
    if (!v34)
    {
      goto LABEL_5;
    }
  }

  v10 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (*(v8 + 2))
  {
    pStmt = 0;
    if (!sqlite3_file_control(*v8, "main", 7, &pStmt))
    {
      (*(*pStmt + 112))(pStmt, 2, 1, 9);
      (*(*pStmt + 112))(pStmt, 3, 5, 9);
    }
  }

  sub_181914B98(*v8, 0);
  v11 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v8);
    --qword_1ED456A90;
    off_1ED452EB0(v8);
    v8 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_15;
    }

    v11 = &xmmword_1ED452F28;
  }

  (*v11)(v8);
  v8 = 0;
LABEL_15:
  result = v10;
LABEL_16:
  *a3 = v8;
  return result;
}