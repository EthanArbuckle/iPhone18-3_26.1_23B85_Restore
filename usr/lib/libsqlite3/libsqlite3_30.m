uint64_t sub_1819C23C0(uint64_t a1, int a2)
{
  v26 = 0;
  LODWORD(result) = sub_1819C2600(a1);
  if (result || (LODWORD(result) = sub_1819AE4E4(a1, 0x1Bu, &v26, 0), result))
  {
LABEL_28:
    v17 = 0;
    v18 = *(a1 + 480);
    if (!v18)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v5 = v26;
  v6 = *(a1 + 520);
  if (!sub_1818DF6EC(v26, 0))
  {
    v7 = *(v5 + 16);
    if ((*(v7 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v7, v6);
    }

    else
    {
      *v7 = v6;
      *(v7 + 20) = 4;
    }

    v8 = *(*v5 + 24);
    if (v8)
    {
      xmmword_1ED452F28(v8);
    }
  }

  v9 = *(a1 + 492);
  if (!sub_1818DF6EC(v5, 1u))
  {
    v10 = *(v5 + 16);
    if ((*(v10 + 84) & 0x9000) != 0)
    {
      sub_18193D288(v10 + 64, v9);
    }

    else
    {
      *(v10 + 64) = v9;
      *(v10 + 84) = 4;
    }

    v11 = *(*v5 + 24);
    if (v11)
    {
      xmmword_1ED452F28(v11);
    }
  }

  if (sqlite3_step(v5) != 100)
  {
    LODWORD(result) = sqlite3_reset(v5);
    goto LABEL_28;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = sqlite3_column_int(v5, 0);
    if (v13)
    {
      goto LABEL_18;
    }

    v15 = v14;
    while (1)
    {
      if (v13 >= *(a1 + 492))
      {
        v13 = 0;
        goto LABEL_18;
      }

      v16 = sub_1819C2700(a1, v15, v13, -2);
      if (v16 == 101)
      {
        v12 = 1;
        goto LABEL_21;
      }

      if (v16)
      {
        break;
      }

LABEL_21:
      v13 = (v13 + 1);
    }

    v13 = v16;
LABEL_18:
    if (sqlite3_step(v5) == 100)
    {
      continue;
    }

    break;
  }

  v17 = v12 != 0;
  LODWORD(result) = sqlite3_reset(v5);
  if (v13)
  {
    LODWORD(result) = v13;
  }

  v18 = *(a1 + 480);
  if (v18)
  {
LABEL_29:
    v19 = result;
    v20 = v18[3];
    v21 = v18[4];
    v22 = v21[3];
    if (v22)
    {
      xmmword_1ED452F18(v22);
    }

    sub_181929C84(v21, v18);
    v23 = v21[3];
    if (v23)
    {
      xmmword_1ED452F28(v23);
    }

    sqlite3_finalize(v20);
    LODWORD(result) = v19;
  }

LABEL_34:
  *(a1 + 480) = 0;
  if (a2)
  {
    v24 = result == 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if ((v25 & v17) != 0)
  {
    return 101;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1819C2600(uint64_t a1)
{
  for (i = 0; i < *(a1 + 492); i = (i + 1))
  {
    result = sub_1819C2700(a1, *(a1 + 520), i, -1);
    if (result != 101 && result != 0)
    {
      return result;
    }
  }

  if (*(a1 + 461) && *(a1 + 96) == 255 && *(a1 + 100))
  {
    v9 = 0;
    result = sub_1819AE4E4(a1, 0x16u, &v9, 0);
    if (result)
    {
      return result;
    }

    v5 = v9;
    sqlite3_bind_int64(v9, 1, 2);
    v6 = sqlite3_step(v5);
    if (v6 == 101)
    {
      v8 = 0;
    }

    else
    {
      if (v6 != 100)
      {
        goto LABEL_20;
      }

      v7 = sqlite3_column_int(v5, 0);
      if (v7 == 1)
      {
        v8 = 8;
      }

      else
      {
        v8 = v7;
      }
    }

    *(a1 + 96) = v8;
LABEL_20:
    result = sqlite3_reset(v5);
    if (result)
    {
      return result;
    }
  }

  sub_1819C49E8(a1);
  return 0;
}

uint64_t sub_1819C2700(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4)
{
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v165 = 0u;
  v8 = sub_1819AD3D8(a1, a2, a3, a4, 0, 0, 1, 0, &v165);
  v9 = DWORD2(v165);
  if (v8 || !DWORD2(v165))
  {
    goto LABEL_158;
  }

  if (a4 == -1)
  {
    v16 = 0;
    v11 = a2;
    v13 = a3;
  }

  else
  {
    v174[0] = 0;
    v8 = sub_1819AE4E4(a1, 0xFu, v174, 0);
    if (v8)
    {
      goto LABEL_157;
    }

    v10 = v174[0];
    v11 = a2;
    v12 = *(a1 + 492);
    v13 = a3;
    if (!sub_1818DF6EC(v174[0], 0))
    {
      v14 = (a3 + v12 * a2) << 10;
      v15 = *(v10 + 16);
      if ((*(v15 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v15, v14);
      }

      else
      {
        *v15 = v14;
        *(v15 + 20) = 4;
      }

      v24 = *(*v10 + 24);
      if (v24)
      {
        xmmword_1ED452F28(v24);
      }
    }

    v25 = *(a1 + 492);
    if (!sub_1818DF6EC(v10, 1u))
    {
      v26 = ((a3 + v25 * a2) << 10) | 0x3FF;
      v27 = *(v10 + 16);
      if ((*(v27 + 84) & 0x9000) != 0)
      {
        sub_18193D288(v27 + 64, v26);
      }

      else
      {
        *(v27 + 64) = v26;
        *(v27 + 84) = 4;
      }

      v28 = *(*v10 + 24);
      if (v28)
      {
        xmmword_1ED452F28(v28);
      }
    }

    v16 = sqlite3_step(v10) == 100 ? sqlite3_column_int64(v10, 0) : 0;
    v8 = sqlite3_reset(v10);
    if (v8)
    {
      goto LABEL_157;
    }

    if (a4 == -2)
    {
      if (v9 == 1 && !*(*v165 + 64))
      {
        v8 = 101;
        goto LABEL_157;
      }

      v29 = 0;
      v30 = 1;
      v31 = 3;
      v158 = v16;
      goto LABEL_52;
    }
  }

  v17 = *(a1 + 492);
  v174[0] = 0;
  v8 = sub_1819AE4E4(a1, 8u, v174, 0);
  if (v8)
  {
    goto LABEL_157;
  }

  v158 = v16;
  v18 = v13 + v11 * v17;
  v19 = a4 + 1;
  v16 = v19 + (v18 << 10);
  v20 = v174[0];
  v21 = *(a1 + 492);
  if (!sub_1818DF6EC(v174[0], 0))
  {
    v22 = v19 + ((v13 + v11 * v21) << 10);
    v23 = *(v20 + 16);
    if ((*(v23 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v23, v22);
    }

    else
    {
      *v23 = v22;
      *(v23 + 20) = 4;
    }

    v32 = *(*v20 + 24);
    if (v32)
    {
      xmmword_1ED452F28(v32);
    }
  }

  if (sqlite3_step(v20) == 100)
  {
    v29 = sqlite3_column_int(v20, 0);
    v8 = sqlite3_reset(v20);
    if (v8)
    {
      goto LABEL_157;
    }

    if (v29 > 15)
    {
      v8 = sub_1819C2700(a1, a2, a3, v19);
      if (v16 <= v158 || a4 == -1)
      {
        v31 = 1;
      }

      else
      {
        v31 = 3;
      }

      if (v8)
      {
        goto LABEL_157;
      }

      v29 = 0;
      v30 = 0;
      goto LABEL_52;
    }
  }

  else
  {
    v8 = sqlite3_reset(v20);
    if (v8)
    {
      goto LABEL_157;
    }

    v29 = 0;
  }

  v30 = 0;
  if (v16 <= v158 || a4 == -1)
  {
    v31 = 1;
  }

  else
  {
    v31 = 3;
  }

LABEL_52:
  v172 = 0;
  v171 = 0;
  v173 = v31;
  *&v166 = &v171;
  v8 = sub_1819AEA58(a1, &v165, 0, 0);
  if (v8)
  {
    goto LABEL_157;
  }

  v154 = v29;
  v155 = v30;
  v35 = 0;
  for (i = v16; ; v16 = i)
  {
    v8 = sub_1819AF3DC(a1, &v165);
    if (v8 != 100)
    {
      if (v8)
      {
        goto LABEL_135;
      }

      if (a4 == -1)
      {
        if (!v35)
        {
          v8 = 0;
          goto LABEL_157;
        }

        goto LABEL_222;
      }

      v92 = v165;
      v93 = DWORD2(v165);
      v174[0] = 0;
      if (SDWORD2(v165) >= 1)
      {
        v94 = 1;
        do
        {
          v95 = *v92++;
          v8 = sub_1819C4090(a1, v95);
          if (v8)
          {
            v96 = 1;
          }

          else
          {
            v96 = v94 >= v93;
          }

          ++v94;
        }

        while (!v96);
        if (v8)
        {
          goto LABEL_135;
        }
      }

      if (v155)
      {
        v8 = sub_1819AE4E4(a1, 0x1Au, v174, 0);
        if (v8)
        {
          goto LABEL_135;
        }

        v97 = v174[0];
        v98 = *(a1 + 492);
        if (!sub_1818DF6EC(v174[0], 0))
        {
          v99 = (a3 + v98 * a2) << 10;
          v100 = *(v97 + 16);
          if ((*(v100 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v100, v99);
          }

          else
          {
            *v100 = v99;
            *(v100 + 20) = 4;
          }

          v127 = *(*v97 + 24);
          v16 = i;
          if (v127)
          {
            xmmword_1ED452F28(v127);
          }
        }

        v128 = *(a1 + 492);
        if (!sub_1818DF6EC(v97, 1u))
        {
          v129 = ((a3 + v128 * a2) << 10) | 0x3FF;
          v130 = *(v97 + 16);
          if ((*(v130 + 84) & 0x9000) != 0)
          {
            sub_18193D288(v130 + 64, v129);
          }

          else
          {
            *(v130 + 64) = v129;
            *(v130 + 84) = 4;
          }

          goto LABEL_218;
        }
      }

      else
      {
        v8 = sub_1819AE4E4(a1, 0x10u, v174, 0);
        if (v8)
        {
          goto LABEL_135;
        }

        v97 = v174[0];
        v124 = *(a1 + 492);
        if (!sub_1818DF6EC(v174[0], 0))
        {
          v125 = ((a3 + v124 * a2) << 10) + a4;
          v126 = *(v97 + 16);
          if ((*(v126 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v126, v125);
          }

          else
          {
            *v126 = v125;
            *(v126 + 20) = 4;
          }

LABEL_218:
          v131 = *(*v97 + 24);
          v16 = i;
          if (v131)
          {
            xmmword_1ED452F28(v131);
          }
        }
      }

      sqlite3_step(v97);
      v8 = sqlite3_reset(v97);
      if (v8 || !v35)
      {
        goto LABEL_135;
      }

LABEL_222:
      if (*v35)
      {
        v132 = v35[2];
        v35[2] = v132 + 1;
        v133 = v35;
        v8 = sub_1819C3C04(a1, v132, v35[7], *(v35 + 13));
        if (v8)
        {
LABEL_224:
          ++*(a1 + 100);
          v35 = v133;
          goto LABEL_135;
        }

        v134 = *v35;
        v135 = v35[1];
        v136 = v35[2];
        v137 = **v35;
        if (v137)
        {
          v138 = 1;
          do
          {
            v139 = v136;
            v140 = v134[2];
            v141 = v137;
            if (v140)
            {
              do
              {
                v142 = 10;
                v143 = v135;
                do
                {
                  --v142;
                  v57 = v143 > 0x7F;
                  v143 >>= 7;
                }

                while (v57);
                *(*(v140 + 64) + v142) = v138;
                v144 = (*(v140 + 64) + v142 + 1);
                v145 = v135;
                do
                {
                  v146 = v145;
                  *v144++ = v145 | 0x80;
                  v57 = v145 > 0x7F;
                  v145 >>= 7;
                }

                while (v57);
                *(v144 - 1) = v146;
                v8 = sub_1819C3C04(a1, v136++, (*(v140 + 64) + v142), *(v140 + 56) - v142);
                v135 += *(v140 + 24) + 1;
                v140 = *(v140 + 8);
                if (v140)
                {
                  v147 = v8 == 0;
                }

                else
                {
                  v147 = 0;
                }
              }

              while (v147);
              if (v8)
              {
                goto LABEL_224;
              }

              v141 = *v134;
            }

            ++v138;
            v137 = *v141;
            v135 = v139;
            v134 = v141;
          }

          while (*v141);
          v134 = v141;
          v135 = v139;
        }

        else
        {
          v138 = 1;
        }

        v148 = 10;
        v149 = v135;
        do
        {
          --v148;
          v57 = v149 > 0x7F;
          v149 >>= 7;
        }

        while (v57);
        *(v134[8] + v148) = v138;
        v150 = (v134[8] + v148 + 1);
        do
        {
          v151 = v135;
          *v150++ = v135 | 0x80;
          v96 = v135 >= 0x80;
          v135 >>= 7;
        }

        while (v96);
        *(v150 - 1) = v151;
        v35 = v133;
        v152 = v133[1];
        v153 = v133[8];
        v16 = i;
        v8 = sub_1819C41B4(a1, i, v154, v152, v132, v136 - 1, v153, (v134[8] + v148), *(v134 + 14) - v148);
      }

      else
      {
        v8 = sub_1819C41B4(a1, v16, v154, 0, 0, 0, v35[8], v35[7], *(v35 + 13));
      }

      ++*(a1 + 100);
      if (!v8)
      {
        if (a4 == -1 || v16 < v158)
        {
          v8 = sub_1819C376C(a1, v16, v35[8]);
        }

        else
        {
          v8 = 0;
        }
      }

      goto LABEL_136;
    }

    v38 = *(&v168 + 1);
    v39 = v169;
    v40 = *(&v169 + 1);
    v41 = v170;
    v161 = v170;
    if (v35)
    {
      goto LABEL_67;
    }

    v174[0] = 0;
    if (sqlite3_initialize())
    {
      v35 = 0;
      goto LABEL_134;
    }

    v42 = sub_181902484(72, 0x1030040EFC49525);
    v35 = v42;
    if (!v42)
    {
      goto LABEL_134;
    }

    *(v42 + 64) = 0;
    *(v42 + 32) = 0u;
    *(v42 + 48) = 0u;
    *v42 = 0u;
    *(v42 + 16) = 0u;
    v43 = *(a1 + 456);
    if (sqlite3_initialize())
    {
      break;
    }

    v44 = sub_181902484(v43, 0x100004077774924);
    v35[7] = v44;
    if (!v44)
    {
      goto LABEL_134;
    }

    *(v35 + 12) = *(a1 + 456);
    v8 = sub_1819AE4E4(a1, 0xAu, v174, 0);
    if (v8)
    {
      goto LABEL_135;
    }

    v45 = v174[0];
    if (sqlite3_step(v174[0]) == 100)
    {
      v46 = sqlite3_column_int64(v45, 0);
      v35[1] = v46;
      v35[2] = v46;
    }

    v8 = sqlite3_reset(v45);
    if (v8)
    {
      goto LABEL_136;
    }

    v41 = v161;
LABEL_67:
    v47 = *(v35 + 8);
    if (v47 >= v39)
    {
      v48 = v39;
    }

    else
    {
      v48 = v47;
    }

    __src = v40;
    if (v48 < 1)
    {
      LODWORD(v48) = 0;
    }

    else
    {
      v49 = 0;
      while (*(v35[3] + v49) == v38[v49])
      {
        if (v48 == ++v49)
        {
          goto LABEL_77;
        }
      }

      LODWORD(v48) = v49;
    }

LABEL_77:
    v50 = v39 - v48;
    if (v50 < 1)
    {
      v8 = 267;
      goto LABEL_135;
    }

    __n = v39;
    v160 = v39;
    v163 = v35;
    v51 = *(v35 + 13);
    v52 = v48;
    v53 = v39 + v41 - v48 + 1;
    v54 = v39 + v41 + 2;
    v55 = v54 - v48;
    do
    {
      v56 = v55;
      ++v53;
      ++v55;
      v57 = v52 > 0x7F;
      v52 >>= 7;
    }

    while (v57);
    v58 = v50;
    do
    {
      v59 = v56++;
      v57 = v58 > 0x7F;
      v58 >>= 7;
    }

    while (v57);
    v60 = v41;
    do
    {
      ++v59;
      v57 = v60 > 0x7F;
      v60 >>= 7;
    }

    while (v57);
    v61 = v59;
    if (v51 >= 1 && v59 + v51 > *(a1 + 456))
    {
      v62 = v163[2];
      if (v62 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = v163;
        v8 = 267;
        goto LABEL_136;
      }

      v163[2] = v62 + 1;
      v8 = sub_1819C3C04(a1, v62, v163[7], v51);
      if (v8)
      {
        v35 = v163;
        goto LABEL_136;
      }

      ++*(a1 + 100);
      v8 = sub_1819C3D6C(a1, v163, v38, (v48 + 1));
      v35 = v163;
      if (v8)
      {
        goto LABEL_136;
      }

      *(v163 + 8) = 0;
      v63 = __n;
      do
      {
        v64 = v54++;
        v57 = v63 > 0x7F;
        v63 >>= 7;
      }

      while (v57);
      LODWORD(v41) = v161;
      v65 = v161;
      do
      {
        ++v64;
        v57 = v65 > 0x7F;
        v65 >>= 7;
      }

      while (v57);
      LODWORD(v51) = 0;
      LODWORD(v48) = 0;
      v61 = v64;
      LODWORD(v50) = v160;
    }

    v66 = v163[7];
    v163[8] += v61;
    if (v61 > *(v163 + 12))
    {
      v67 = sqlite3_initialize();
      if (!v61 || v67)
      {
        v35 = v163;
        v8 = 7;
        goto LABEL_136;
      }

      v68 = sub_18190287C(v66, v61, 3375295313);
      if (!v68)
      {
        v8 = 7;
        v35 = v163;
        goto LABEL_136;
      }

      v66 = v68;
      LODWORD(v41) = v161;
      v163[7] = v68;
      *(v163 + 12) = v61;
    }

    v69 = v48;
    v70 = v50 + v51 + 2;
    v71 = v70 + v41;
    v72 = (v66 + v51);
    v73 = v48;
    do
    {
      v74 = v72;
      v75 = v71;
      v76 = v73;
      *v72++ = v73 | 0x80;
      v77 = v70;
      ++v71;
      ++v70;
      v57 = v73 > 0x7F;
      v73 >>= 7;
    }

    while (v57);
    *v74 = v76;
    v78 = v51 + (v72 - (v66 + v51));
    v35 = v163;
    v79 = (v163[7] + v78);
    v80 = v79;
    v81 = v50;
    do
    {
      v82 = v80;
      v83 = v75;
      v84 = v81;
      *v80++ = v81 | 0x80;
      v85 = v77;
      ++v75;
      ++v77;
      v57 = v81 > 0x7F;
      v81 >>= 7;
    }

    while (v57);
    *v82 = v84;
    v86 = v78 + v80 - v79;
    memcpy((v163[7] + v86), &v38[v69], v50);
    v87 = (v163[7] + v86 + v50);
    v88 = v161;
    do
    {
      v89 = v88;
      *v87++ = v88 | 0x80;
      ++v83;
      ++v85;
      v57 = v88 > 0x7F;
      v88 >>= 7;
    }

    while (v57);
    *(v87 - 1) = v89;
    memcpy((v163[7] + v85), __src, v161);
    *(v163 + 13) = v83;
    if (*(v163 + 9) >= v160)
    {
      v36 = v163[3];
      v37 = __n;
    }

    else
    {
      v90 = v163[5];
      v91 = sqlite3_initialize();
      v37 = __n;
      if (!v160 || v91 || (v36 = sub_18190287C(v90, 2 * __n, 348274523)) == 0)
      {
        v8 = 7;
        goto LABEL_136;
      }

      *(v163 + 9) = 2 * v160;
      v163[5] = v36;
      v163[3] = v36;
    }

    memcpy(v36, v38, v37);
    *(v163 + 8) = v160;
  }

  v35[7] = 0;
LABEL_134:
  v8 = 7;
LABEL_135:
  if (!v35)
  {
    goto LABEL_157;
  }

LABEL_136:
  v101 = v8;
  v102 = v35[7];
  if (v102)
  {
    v103 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_142;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v102);
    --qword_1ED456A90;
    off_1ED452EB0(v102);
    v102 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v103 = &xmmword_1ED452F28;
LABEL_142:
      (*v103)(v102);
    }
  }

  v104 = v35[5];
  if (v104)
  {
    v105 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_149;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v104);
    --qword_1ED456A90;
    off_1ED452EB0(v104);
    v104 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v105 = &xmmword_1ED452F28;
LABEL_149:
      (*v105)(v104);
    }
  }

  sub_1819C44EC(*v35);
  v106 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v35);
    --qword_1ED456A90;
    off_1ED452EB0(v35);
    v35 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v106 = &xmmword_1ED452F28;
      goto LABEL_155;
    }
  }

  else
  {
LABEL_155:
    (*v106)(v35);
  }

  v8 = v101;
LABEL_157:
  v9 = DWORD2(v165);
LABEL_158:
  v162 = v8;
  v107 = v165;
  v164 = v165;
  if (v9 >= 1)
  {
    v108 = v9;
    while (2)
    {
      v109 = *v107;
      if (!*v107)
      {
        goto LABEL_161;
      }

      v110 = *(v109 + 80);
      if (v110)
      {
        v111 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_169;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v110);
        --qword_1ED456A90;
        off_1ED452EB0(v110);
        v110 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v111 = &xmmword_1ED452F28;
LABEL_169:
          (*v111)(v110);
        }
      }

      if (!*(v109 + 5))
      {
        v112 = *(v109 + 40);
        if (v112)
        {
          v113 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_177;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v112);
          --qword_1ED456A90;
          off_1ED452EB0(v112);
          v112 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v113 = &xmmword_1ED452F28;
LABEL_177:
            (*v113)(v112);
          }
        }
      }

      v114 = *(v109 + 56);
      if (v114)
      {
        v115 = v114[3];
        v116 = v114[4];
        v117 = v116[3];
        if (v117)
        {
          xmmword_1ED452F18(v117);
        }

        sub_181929C84(v116, v114);
        v118 = v116[3];
        if (v118)
        {
          xmmword_1ED452F28(v118);
        }

        sqlite3_finalize(v115);
      }

      v119 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v109);
        --qword_1ED456A90;
        off_1ED452EB0(v109);
        v109 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_161;
        }

        v119 = &xmmword_1ED452F28;
      }

      (*v119)(v109);
LABEL_161:
      ++v107;
      if (!--v108)
      {
        goto LABEL_190;
      }

      continue;
    }
  }

  if (v165)
  {
LABEL_190:
    v120 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_195;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v164);
    --qword_1ED456A90;
    off_1ED452EB0(v164);
    v164 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v120 = &xmmword_1ED452F28;
LABEL_195:
      (*v120)(v164);
    }
  }

  v121 = *(&v166 + 1);
  if (*(&v166 + 1))
  {
    v122 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_202;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v121);
    --qword_1ED456A90;
    off_1ED452EB0(v121);
    v121 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v122 = &xmmword_1ED452F28;
LABEL_202:
      (*v122)(v121);
    }
  }

  return v162;
}

uint64_t sub_1819C376C(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = 0;
  result = sub_1819AE4E4(a1, 0x25u, &v50, 0);
  if (!result)
  {
    if (a2 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 + 1023;
    }

    v8 = v50;
    if (!sub_1818DF6EC(v50, 0))
    {
      v9 = a2 + 1;
      v10 = *(v8 + 16);
      if ((*(v10 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v10, v9);
      }

      else
      {
        *v10 = v9;
        *(v10 + 20) = 4;
      }

      v11 = *(*v8 + 24);
      if (v11)
      {
        xmmword_1ED452F28(v11);
      }
    }

    if (!sub_1818DF6EC(v8, 1u))
    {
      v12 = v7 | 0x3FF;
      v13 = *(v8 + 16);
      if ((*(v13 + 84) & 0x9000) != 0)
      {
        sub_18193D288(v13 + 64, v12);
      }

      else
      {
        *(v13 + 64) = v12;
        *(v13 + 84) = 4;
      }

      v14 = *(*v8 + 24);
      if (v14)
      {
        xmmword_1ED452F28(v14);
      }
    }

    if (sqlite3_step(v8) == 100)
    {
      v15 = 3 * a3 / 2;
      while (1)
      {
        v16 = sqlite3_column_text(v8, 2);
        if (!v16)
        {
          break;
        }

        if (*v16 - 48 > 9)
        {
          v19 = 0;
        }

        else
        {
          v17 = 0;
          do
          {
            v18 = v16[++v17];
          }

          while ((v18 - 48) < 0xA);
          v19 = v17;
        }

        while (1)
        {
          v20 = v16[v19];
          if (v20 != 32)
          {
            break;
          }

          ++v19;
        }

        v21 = v20 == 45;
        v22 = v20 == 45 ? v19 + 1 : v19;
        v23 = v21 ? -1 : 1;
        v24 = v22;
        v25 = v16[v22];
        if ((v25 - 48) > 9)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          v27 = &v16[v24 + 1];
          do
          {
            v26 = (v25 & 0xF) + 10 * v26;
            v28 = *v27++;
            LOBYTE(v25) = v28;
          }

          while ((v28 - 48) < 0xA);
        }

        v29 = v26 * v23;
        if (v29 < 1 || v29 > v15)
        {
          break;
        }

        if (sqlite3_step(v8) != 100)
        {
          result = sqlite3_reset(v8);
          v48 = 0;
          v49 = 0;
          if (!result)
          {
            result = sub_1819AE4E4(a1, 0x26u, &v49, 0);
            if (!result)
            {
              result = sub_1819AE4E4(a1, 0x27u, &v48, 0);
              if (!result)
              {
                if (!sub_1818DF6EC(v8, 0))
                {
                  v31 = *(v8 + 16);
                  if ((*(v31 + 20) & 0x9000) != 0)
                  {
                    sub_18193D288(v31, a2);
                  }

                  else
                  {
                    *v31 = a2;
                    *(v31 + 20) = 4;
                  }

                  v32 = *(*v8 + 24);
                  if (v32)
                  {
                    xmmword_1ED452F28(v32);
                  }
                }

                v33 = 0;
                v34 = v49;
                while (sqlite3_step(v8) == 100)
                {
                  if (!sub_1818DF6EC(v34, 0))
                  {
                    v36 = *(v34 + 16);
                    if ((*(v36 + 20) & 0x9000) != 0)
                    {
                      sub_18193D288(v36, v33);
                    }

                    else
                    {
                      *v36 = v33;
                      *(v36 + 20) = 4;
                    }

                    v37 = *(*v34 + 24);
                    if (v37)
                    {
                      xmmword_1ED452F28(v37);
                    }
                  }

                  v38 = sqlite3_column_int(v8, 0);
                  if (!sub_1818DF6EC(v34, 1u))
                  {
                    v39 = *(v34 + 16);
                    if ((*(v39 + 84) & 0x9000) != 0)
                    {
                      sub_18193D288(v39 + 64, v38);
                    }

                    else
                    {
                      *(v39 + 64) = v38;
                      *(v39 + 84) = 4;
                    }

                    v40 = *(*v34 + 24);
                    if (v40)
                    {
                      xmmword_1ED452F28(v40);
                    }
                  }

                  v41 = sqlite3_column_int(v8, 1);
                  if (!sub_1818DF6EC(v34, 2u))
                  {
                    v42 = *(v34 + 16);
                    if ((*(v42 + 148) & 0x9000) != 0)
                    {
                      sub_18193D288(v42 + 128, v41);
                    }

                    else
                    {
                      *(v42 + 128) = v41;
                      *(v42 + 148) = 4;
                    }

                    v43 = *(*v34 + 24);
                    if (v43)
                    {
                      xmmword_1ED452F28(v43);
                    }
                  }

                  sqlite3_step(v34);
                  v35 = sqlite3_reset(v34);
                  ++v33;
                  if (v35)
                  {
                    v46 = v35;
                    sqlite3_reset(v8);
                    return v46;
                  }
                }

                result = sqlite3_reset(v8);
                if (!result)
                {
                  v44 = v48;
                  if (!sub_1818DF6EC(v48, 0))
                  {
                    v45 = *(v44 + 16);
                    if ((*(v45 + 20) & 0x9000) != 0)
                    {
                      sub_18193D288(v45, a2);
                    }

                    else
                    {
                      *v45 = a2;
                      *(v45 + 20) = 4;
                    }

                    v47 = *(*v44 + 24);
                    if (v47)
                    {
                      xmmword_1ED452F28(v47);
                    }
                  }

                  sqlite3_step(v44);
                  return sqlite3_reset(v44);
                }
              }
            }
          }

          return result;
        }
      }
    }

    return sqlite3_reset(v8);
  }

  return result;
}

uint64_t sub_1819C3C04(void *a1, uint64_t a2, char *a3, unsigned int a4)
{
  v17 = 0;
  result = sub_1819AE4E4(a1, 9u, &v17, 0);
  if (!result)
  {
    v8 = v17;
    if (!sub_1818DF6EC(v17, 0))
    {
      v9 = v8[16];
      if ((*(v9 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v9, a2);
      }

      else
      {
        *v9 = a2;
        *(v9 + 20) = 4;
      }

      v10 = *(*v8 + 24);
      if (v10)
      {
        xmmword_1ED452F28(v10);
      }
    }

    if ((a4 & 0x80000000) != 0)
    {
      sub_1819012D0(101409);
    }

    else if (!sub_1818DF6EC(v8, 1u))
    {
      if (a3)
      {
        v11 = sub_1818900D0(v8[16] + 64, a3, a4, 0, 0);
        if (v11)
        {
          v12 = v11;
          v13 = *v8;
          *(v13 + 80) = v12;
          sub_181932D5C(v13, v12);
          sub_18193C988(*v8, v12);
        }
      }

      v14 = *(*v8 + 24);
      if (v14)
      {
        xmmword_1ED452F28(v14);
      }
    }

    sqlite3_step(v8);
    v15 = sqlite3_reset(v8);
    if (!sub_1818DF6EC(v8, 1u))
    {
      v16 = *(*v8 + 24);
      if (v16)
      {
        xmmword_1ED452F28(v16);
      }
    }

    return v15;
  }

  return result;
}

uint64_t sub_1819C3D6C(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = v6[4];
    v8 = *(v6 + 10);
    if (v8 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = v8;
    }

    if (v9 < 1)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v10 = 0;
      while (*(v7 + v10) == a3[v10])
      {
        if (v9 == ++v10)
        {
          goto LABEL_13;
        }
      }

      LODWORD(v9) = v10;
    }

LABEL_13:
    v12 = (a4 - v9);
    if (v12 < 1)
    {
      return 267;
    }

    v13 = *(v6 + 14);
    v14 = v9;
    v15 = v13 + a4 - v9;
    v16 = v9;
    do
    {
      ++v15;
      v17 = v16 > 0x7F;
      v16 >>= 7;
    }

    while (v17);
    v18 = (a4 - v9);
    do
    {
      ++v15;
      v17 = v18 > 0x7F;
      v18 >>= 7;
    }

    while (v17);
    v11 = *(a1 + 456);
    if (v15 > v11)
    {
      if (v7)
      {
        goto LABEL_20;
      }

      v25 = (a4 - v9);
      if (sqlite3_initialize())
      {
        v6[8] = 0;
        return 7;
      }

      v26 = sub_181902484(v15, 0x100004077774924);
      v6[8] = v26;
      if (!v26)
      {
        return 7;
      }

      v7 = v6[4];
      v12 = v25;
    }

    if (v7)
    {
      v27 = (v6[8] + v13);
      v28 = v9;
      do
      {
        v29 = v28;
        *v27++ = v28 | 0x80;
        ++v13;
        v17 = v28 > 0x7F;
        v28 >>= 7;
      }

      while (v17);
      *(v27 - 1) = v29;
    }

    v30 = (v6[8] + v13);
    v31 = v13 + a4 - v9;
    v32 = v12;
    do
    {
      v33 = v32;
      *v30++ = v32 | 0x80;
      ++v31;
      ++v13;
      v17 = v32 > 0x7F;
      v32 >>= 7;
    }

    while (v17);
    *(v30 - 1) = v33;
    memcpy((v6[8] + v13), &a3[v14], v12);
    *(v6 + 14) = v31;
    ++*(v6 + 6);
    v34 = v6[6];
    if (*(v6 + 11) >= a4)
    {
      v37 = a4;
    }

    else
    {
      v35 = v6[6];
      v36 = sqlite3_initialize();
      result = 7;
      if (!a4 || v36)
      {
        return result;
      }

      v34 = sub_18190287C(v35, 2 * a4, 1122957413);
      if (!v34)
      {
        return 7;
      }

      v37 = a4;
      *(v6 + 11) = 2 * a4;
      v6[6] = v34;
    }

    v6[4] = v34;
    memcpy(v34, a3, v37);
    result = 0;
    *(v6 + 10) = a4;
    return result;
  }

  v11 = *(a1 + 456);
LABEL_20:
  if (sqlite3_initialize())
  {
    return 7;
  }

  v22 = sub_181902484(v11 + 72, 0x1030040C31A1D90);
  v39 = v22;
  if (!v22)
  {
    return 7;
  }

  v23 = v22;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 56) = 11;
  *(v22 + 64) = v22 + 72;
  if (v6)
  {
    v38 = *v6;
    result = sub_1819C3D6C(a1, &v38, a3, a4);
    v24 = v38;
    if (!*v6)
    {
      *v6 = v38;
    }

    v6[1] = v23;
    *(v23 + 16) = v6[2];
    *v23 = v24;
    *(v23 + 48) = v6[6];
    *(v23 + 44) = *(v6 + 11);
    v6[6] = 0;
  }

  else
  {
    *(v22 + 16) = v22;
    result = sub_1819C3D6C(a1, &v39, a3, a4);
    v23 = v39;
  }

  *a2 = v23;
  return result;
}

uint64_t sub_1819C4090(void *a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    return 0;
  }

  v11 = 0;
  result = sub_1819AE4E4(a1, 0x11u, &v11, 0);
  if (!result)
  {
    v4 = v11;
    v5 = *(a2 + 8);
    if (!sub_1818DF6EC(v11, 0))
    {
      v6 = *(v4 + 16);
      if ((*(v6 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v6, v5);
      }

      else
      {
        *v6 = v5;
        *(v6 + 20) = 4;
      }

      v7 = *(*v4 + 24);
      if (v7)
      {
        xmmword_1ED452F28(v7);
      }
    }

    v8 = *(a2 + 24);
    if (!sub_1818DF6EC(v4, 1u))
    {
      v9 = *(v4 + 16);
      if ((*(v9 + 84) & 0x9000) != 0)
      {
        sub_18193D288(v9 + 64, v8);
      }

      else
      {
        *(v9 + 64) = v8;
        *(v9 + 84) = 4;
      }

      v10 = *(*v4 + 24);
      if (v10)
      {
        xmmword_1ED452F28(v10);
      }
    }

    sqlite3_step(v4);
    return sqlite3_reset(v4);
  }

  return result;
}

uint64_t sub_1819C41B4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, unsigned int a9)
{
  v35 = 0;
  result = sub_1819AE4E4(a1, 0xBu, &v35, 0);
  if (!result)
  {
    v17 = v35;
    if (!sub_1818DF6EC(v35, 0))
    {
      v18 = v17[16];
      if ((*(v18 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v18, a2);
      }

      else
      {
        *v18 = a2;
        *(v18 + 20) = 4;
      }

      v19 = *(*v17 + 24);
      if (v19)
      {
        xmmword_1ED452F28(v19);
      }
    }

    if (!sub_1818DF6EC(v17, 1u))
    {
      v20 = v17[16];
      if ((*(v20 + 84) & 0x9000) != 0)
      {
        sub_18193D288(v20 + 64, a3);
      }

      else
      {
        *(v20 + 64) = a3;
        *(v20 + 84) = 4;
      }

      v21 = *(*v17 + 24);
      if (v21)
      {
        xmmword_1ED452F28(v21);
      }
    }

    if (!sub_1818DF6EC(v17, 2u))
    {
      v22 = v17[16];
      if ((*(v22 + 148) & 0x9000) != 0)
      {
        sub_18193D288(v22 + 128, a4);
      }

      else
      {
        *(v22 + 128) = a4;
        *(v22 + 148) = 4;
      }

      v23 = *(*v17 + 24);
      if (v23)
      {
        xmmword_1ED452F28(v23);
      }
    }

    if (!sub_1818DF6EC(v17, 3u))
    {
      v24 = v17[16];
      if ((*(v24 + 212) & 0x9000) != 0)
      {
        sub_18193D288(v24 + 192, a5);
      }

      else
      {
        *(v24 + 192) = a5;
        *(v24 + 212) = 4;
      }

      v25 = *(*v17 + 24);
      if (v25)
      {
        xmmword_1ED452F28(v25);
      }
    }

    if (a7)
    {
      v26 = sqlite3_mprintf("%lld %lld", a6, a7);
      if (!v26)
      {
        return 7;
      }

      sub_1818DF574(v17, 5, v26, -1, sqlite3_free, 1u);
    }

    else if (!sub_1818DF6EC(v17, 4u))
    {
      v27 = v17[16];
      if ((*(v27 + 276) & 0x9000) != 0)
      {
        sub_18193D288(v27 + 256, a6);
      }

      else
      {
        *(v27 + 256) = a6;
        *(v27 + 276) = 4;
      }

      v28 = *(*v17 + 24);
      if (v28)
      {
        xmmword_1ED452F28(v28);
      }
    }

    if ((a9 & 0x80000000) != 0)
    {
      sub_1819012D0(101409);
    }

    else if (!sub_1818DF6EC(v17, 5u))
    {
      if (a8)
      {
        v29 = sub_1818900D0(v17[16] + 320, a8, a9, 0, 0);
        if (v29)
        {
          v30 = v29;
          v31 = *v17;
          *(v31 + 80) = v30;
          sub_181932D5C(v31, v30);
          sub_18193C988(*v17, v30);
        }
      }

      v32 = *(*v17 + 24);
      if (v32)
      {
        xmmword_1ED452F28(v32);
      }
    }

    sqlite3_step(v17);
    v33 = sqlite3_reset(v17);
    if (!sub_1818DF6EC(v17, 5u))
    {
      v34 = *(*v17 + 24);
      if (v34)
      {
        xmmword_1ED452F28(v34);
      }
    }

    return v33;
  }

  return result;
}

uint64_t sub_1819C44EC(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    sub_1819C44EC(*v1);
    while (1)
    {
      v2 = v1[1];
      v3 = v1[8];
      if (v3 != v1 + 9 && v3 != 0)
      {
        v5 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_14;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v3);
        --qword_1ED456A90;
        off_1ED452EB0(v3);
        v3 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          break;
        }
      }

LABEL_15:
      v6 = v1[6];
      if (!v6)
      {
        goto LABEL_22;
      }

      v7 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_21;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v6);
      --qword_1ED456A90;
      off_1ED452EB0(v6);
      v6 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v7 = &xmmword_1ED452F28;
LABEL_21:
        (*v7)(v6);
      }

LABEL_22:
      v8 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v1);
        --qword_1ED456A90;
        result = off_1ED452EB0(v1);
        v1 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_4;
        }

        v8 = &xmmword_1ED452F28;
      }

      result = (*v8)(v1);
LABEL_4:
      v1 = v2;
      if (!v2)
      {
        return result;
      }
    }

    v5 = &xmmword_1ED452F28;
LABEL_14:
    (*v5)(v3);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1819C46B0(uint64_t a1, int a2)
{
  sub_1819C49E8(a1);
  if (!a2 || (v10 = 0, result = sub_1819AE4E4(a1, 2u, &v10, 0), !result) && (v5 = v10, sqlite3_step(v10), result = sqlite3_reset(v5), !result))
  {
    v10 = 0;
    result = sub_1819AE4E4(a1, 3u, &v10, 0);
    if (!result)
    {
      v6 = v10;
      sqlite3_step(v10);
      result = sqlite3_reset(v6);
      if (!result)
      {
        v10 = 0;
        result = sub_1819AE4E4(a1, 4u, &v10, 0);
        if (!result)
        {
          v7 = v10;
          sqlite3_step(v10);
          result = sqlite3_reset(v7);
        }
      }
    }
  }

  if (*(a1 + 462))
  {
    if (!result)
    {
      v10 = 0;
      result = sub_1819AE4E4(a1, 5u, &v10, 0);
      if (!result)
      {
        v8 = v10;
        sqlite3_step(v10);
        result = sqlite3_reset(v8);
      }
    }
  }

  if (*(a1 + 461) && !result)
  {
    v10 = 0;
    result = sub_1819AE4E4(a1, 6u, &v10, 0);
    if (!result)
    {
      v9 = v10;
      sqlite3_step(v10);
      return sqlite3_reset(v9);
    }
  }

  return result;
}

uint64_t sub_1819C47F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  if (a3)
  {
    v9 = *(a1 + 72);
    v10 = *v9;
    v28 = 0;
    result = (*(v10 + 24))(v9, a3, 0xFFFFFFFFLL, &v28);
    if (!result)
    {
      *v28 = v9;
      v12 = v28;
      if (*v10 >= 1 && (v13 = (*(v10 + 48))(v28, a2), v12 = v28, v13))
      {
        v14 = v13;
        (*(v10 + 32))(v28);
        return v14;
      }

      else
      {
        v15 = *(v10 + 40);
        v16 = v15(v12, &v25, &v24, &v27 + 4, &v27, &v26);
        for (i = 0; !v16; v16 = v15(v12, &v25, &v24, &v27 + 4, &v27, &v26))
        {
          if (v26 >= i)
          {
            i = v26 + 1;
          }

          v16 = 1;
          if (v26 < 0)
          {
            break;
          }

          if (!v25 || v24 < 1)
          {
            break;
          }

          v16 = sub_1819C4B08(a1, a4, v26, *(a1 + 496) + 8, v25, v24);
          if (v16)
          {
            break;
          }

          v19 = 0;
          v20 = 40;
          while (++v19 < *(a1 + 492))
          {
            v21 = *(a1 + 496);
            v22 = *(v21 + v20);
            if (v24 >= v22)
            {
              v16 = sub_1819C4B08(a1, a4, v26, v21 + v20 + 8, v25, v22);
              v20 += 40;
              if (v16)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v20 += 40;
            }
          }
        }

LABEL_23:
        v23 = v16;
        (*(v10 + 32))(v12);
        *a5 += i;
        if (v23 == 101)
        {
          return 0;
        }

        else
        {
          return v23;
        }
      }
    }
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

void sub_1819C49E8(uint64_t a1)
{
  if (*(a1 + 492) >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(a1 + 496) + 40 * v2;
      v4 = *(v3 + 16);
      if (v4)
      {
        break;
      }

LABEL_3:
      sub_1819AAB64(v3 + 8);
      if (++v2 >= *(a1 + 492))
      {
        goto LABEL_14;
      }
    }

    while (1)
    {
      v5 = v4[2];
      if (v5)
      {
        v6 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
          --qword_1ED456A90;
          off_1ED452EB0(v5);
          v5 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_7;
          }

          v6 = &xmmword_1ED452F28;
        }

        (*v6)(v5);
      }

LABEL_7:
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_14:
  *(a1 + 508) = 0;
}

uint64_t sub_1819C4B08(uint64_t a1, int a2, int a3, uint64_t a4, char *a5, uint64_t a6)
{
  v24 = 0;
  if (a4 && *(a4 + 24))
  {
    v12 = sub_1819AE48C;
    if (*a4 == 1)
    {
      v12 = sub_181894AF0;
    }

    v13 = v12(a5, a6);
    v14 = *(a4 + 24);
    if (v14)
    {
      v15 = (v14 + 16 * ((*(a4 + 16) - 1) & v13));
      v18 = *v15;
      v16 = v15 + 2;
      v17 = v18;
      if (*a4 == 1)
      {
        v19 = sub_181894B58;
      }

      else
      {
        v19 = sub_1819AE4C4;
      }

      while (v17)
      {
        v16 = *v16;
        if (!v16)
        {
          break;
        }

        --v17;
        if (!(v19)(*(v16 + 3), v16[8], a5, a6))
        {
          v20 = *(v16 + 2);
          v25 = v20;
          if (v20)
          {
            *(a1 + 508) = *(a1 + 508) - a6 - *v20 - 40;
          }

          goto LABEL_15;
        }
      }
    }
  }

  v25 = 0;
LABEL_15:
  if (sub_1819C10C8(&v25, *(a1 + 512), a2, a3, &v24))
  {
    v21 = v25;
    if (v21 == sub_1818942AC(a4, a5, a6, v25))
    {
      if (v21)
      {
        v23 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
          --qword_1ED456A90;
          off_1ED452EB0(v21);
          v21 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            return 7;
          }

          v23 = &xmmword_1ED452F28;
        }

        (*v23)(v21);
      }

      return 7;
    }
  }

  result = v24;
  if (!v24)
  {
    *(a1 + 508) += a6 + *v25 + 40;
  }

  return result;
}

uint64_t sub_1819C4D2C(void *a1, int *a2)
{
  v3 = a1;
  pStmt = 0;
  v4 = sub_1819AE4E4(a1, 0x1Bu, &pStmt, 0);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    goto LABEL_100;
  }

  v97 = a2;
  v8 = pStmt;
  v9 = *(v3 + 520);
  if (!sub_1818DF6EC(pStmt, 0))
  {
    v10 = *(v8 + 16);
    if ((*(v10 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v10, v9);
    }

    else
    {
      *v10 = v9;
      *(v10 + 20) = 4;
    }

    v11 = *(*v8 + 24);
    if (v11)
    {
      xmmword_1ED452F28(v11);
    }
  }

  v12 = *(v3 + 492);
  if (!sub_1818DF6EC(v8, 1u))
  {
    v13 = *(v8 + 16);
    if ((*(v13 + 84) & 0x9000) != 0)
    {
      sub_18193D288(v13 + 64, v12);
    }

    else
    {
      *(v13 + 64) = v12;
      *(v13 + 84) = 4;
    }

    v14 = *(*v8 + 24);
    if (v14)
    {
      xmmword_1ED452F28(v14);
    }
  }

  v6 = 0;
  v15 = &dword_1ED452E80;
  v16 = &unk_1ED456000;
  v17 = &off_1ED452EB0;
  v104 = v3;
  do
  {
    v18 = pStmt;
    if (sqlite3_step(pStmt) != 100)
    {
      v63 = sqlite3_reset(v18);
      if (v63)
      {
        v5 = v63;
        goto LABEL_99;
      }

      v67 = **(v3 + 72);
      v118 = 0;
      v68 = sqlite3_mprintf("SELECT %s", *(v3 + 440));
      v103 = v6;
      if (!v68)
      {
        v7 = 0;
        v5 = 7;
        goto LABEL_153;
      }

      v70 = v68;
      v5 = sub_1818954B4(*(v3 + 24), v68, 0xFFFFFFFFLL, 128, 0, &v118, 0, v69);
      v72 = *v15;
      v71 = (v15 + 12);
      if (v72)
      {
        v73 = v16[350];
        if (v73)
        {
          xmmword_1ED452F18(v73);
        }

        qword_1ED456A48[0] -= v17[2](v70);
        --qword_1ED456A90;
        (*v17)(v70);
        v70 = v16[350];
        if (!v70)
        {
          goto LABEL_117;
        }

        v71 = (v17 + 15);
      }

      (*v71)(v70);
LABEL_117:
      if (!v5)
      {
        if (sqlite3_step(v118) == 100)
        {
          v7 = 0;
          while (1)
          {
            v74 = sqlite3_column_int64(v118, 0);
            v75 = *(v3 + 88) ? sqlite3_column_int(v118, *(v3 + 48) + 1) : 0;
            if (*(v3 + 48) >= 1)
            {
              break;
            }

LABEL_120:
            v5 = 0;
            if (sqlite3_step(v118) != 100)
            {
              goto LABEL_153;
            }
          }

          v76 = 0;
          v77 = 9 * v74 + v75;
          v106 = 81 * v77;
          v78 = 9 * v77;
          while (1)
          {
            if (*(*(v3 + 64) + v76))
            {
              v79 = v76 + 1;
              goto LABEL_127;
            }

            v79 = v76 + 1;
            v80 = sqlite3_column_text(v118, v76 + 1);
            v81 = *(v3 + 72);
            v82 = *v81;
            *&v112 = 0;
            v83 = (*(v82 + 24))(v81, v80, 0xFFFFFFFFLL, &v112);
            v84 = v112;
            if (!v83)
            {
              *v112 = v81;
              v84 = v112;
              if (*v82 >= 1)
              {
                v85 = (*(v82 + 48))(v112, v75);
                v84 = v112;
                if (v85)
                {
                  v5 = v85;
                  (*(v82 + 32))(v112);
                  goto LABEL_132;
                }
              }

              while (1)
              {
                *&v112 = 0;
                LODWORD(v111) = 0;
                LODWORD(v110) = 0;
                LODWORD(v109) = 0;
                v107 = 0;
                v83 = (*(v67 + 40))(v84, &v112, &v111, &v110, &v109, &v107);
                if (v83)
                {
                  break;
                }

                v86 = 9 * (v106 + v76) + v107;
                if (v111 >= 1)
                {
                  v87 = v112;
                  v88 = v111;
                  do
                  {
                    v89 = *v87++;
                    v86 = 9 * v86 + v89;
                    --v88;
                  }

                  while (v88);
                }

                v7 ^= v86;
                v90 = *(v104 + 492);
                if (v90 > 1)
                {
                  for (i = 1; i != v90; ++i)
                  {
                    v92 = *(*(v104 + 496) + 40 * i);
                    if (v92 <= v111)
                    {
                      v93 = v78 + i + v76 + 8 * (v78 + i);
                      v94 = v93 + v107 + 8 * v93;
                      if (v92 >= 1)
                      {
                        v95 = v112;
                        do
                        {
                          v96 = *v95++;
                          v94 = 9 * v94 + v96;
                          --v92;
                        }

                        while (v92);
                      }

                      v7 ^= v94;
                    }
                  }
                }
              }
            }

            v5 = v83;
            if (v84)
            {
              (*(v67 + 32))(v84);
            }

LABEL_132:
            v3 = v104;
            if (v5 != 101)
            {
              goto LABEL_153;
            }

LABEL_127:
            v76 = v79;
            if (v79 >= *(v3 + 48))
            {
              goto LABEL_120;
            }
          }
        }

        v5 = 0;
      }

      v7 = 0;
LABEL_153:
      sqlite3_finalize(v118);
      a2 = v97;
      v6 = v103;
      goto LABEL_100;
    }

    v19 = sqlite3_column_int(v18, 0);
    if (*(v3 + 492) >= 1)
    {
      v20 = v19;
      v21 = 0;
      v5 = 0;
      v105 = v19;
      v98 = v19;
      while (v5)
      {
        v22 = 0;
LABEL_22:
        v6 ^= v22;
        if (++v21 >= *(v3 + 492))
        {
          goto LABEL_17;
        }
      }

      v119 = 0;
      v121 = 0;
      v118 = 0;
      v120 = 19;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0;
      v23 = sub_1819AD3D8(v3, v20, v21, 0xFFFFFFFE, 0, 0, 0, 1, &v112);
      if (v23 || (*&v113 = &v118, (v23 = sub_1819AEA58(v3, &v112, v118, v119)) != 0) || (v23 = sub_1819AF3DC(v3, &v112), v23 != 100))
      {
        v25 = 0;
      }

      else
      {
        v24 = v6;
        v25 = 0;
        do
        {
          v26 = *(&v116 + 1);
          v27 = v117;
          v110 = 0;
          v111 = 0;
          v28 = sub_1819AE95C(*(&v116 + 1), &v111);
          if (v28 < v27)
          {
            v29 = 0;
            v30 = v26 + v27;
            v31 = (v26 + v28);
            do
            {
              v109 = 0;
              v31 += sub_1819AE95C(v31, &v109);
              if (v31 < v30)
              {
                if (v109 > 1)
                {
                  v29 = v29 + v109 - 2;
                  v32 = v116;
                  v33 = v111 + v105 + 8 * v111 + v21 + 8 * (v111 + v105 + 8 * v111) + v110 + 8 * (v111 + v105 + 8 * v111 + v21 + 8 * (v111 + v105 + 8 * v111));
                  v34 = v33 + v29 + 8 * v33;
                  if (v116 >= 1)
                  {
                    v35 = *(&v115 + 1);
                    do
                    {
                      v36 = *v35++;
                      v34 = 9 * v34 + v36;
                      --v32;
                    }

                    while (v32);
                  }

                  v25 ^= v34;
                }

                else
                {
                  v110 = 0;
                  if (v109)
                  {
                    v29 = 0;
                    v31 += sub_1819AE95C(v31, &v110);
                  }

                  else
                  {
                    v31 += sub_1819AE95C(v31, &v109);
                    v29 = 0;
                    if (*(v104 + 463))
                    {
                      v37 = v111 - v109;
                    }

                    else
                    {
                      v37 = v109 + v111;
                    }

                    v111 = v37;
                  }
                }
              }
            }

            while (v31 < v30);
          }

          v23 = sub_1819AF3DC(v104, &v112);
        }

        while (v23 == 100);
        v6 = v24;
      }

      v101 = v23;
      v102 = v6;
      v38 = DWORD2(v112);
      v39 = v112;
      v99 = v112;
      v100 = v25;
      if (SDWORD2(v112) < 1)
      {
        if (!v112)
        {
          goto LABEL_85;
        }

LABEL_48:
        v40 = (v15 + 12);
        if (*v15)
        {
          v41 = v16[350];
          if (v41)
          {
            xmmword_1ED452F18(v41);
          }

          qword_1ED456A48[0] -= v17[2](v99);
          --qword_1ED456A90;
          (*v17)(v99);
          if (!v16[350])
          {
LABEL_85:
            v60 = *(&v113 + 1);
            if (!*(&v113 + 1))
            {
              v6 = v102;
              v3 = v104;
              v20 = v98;
              v5 = v101;
              goto LABEL_94;
            }

            v61 = (v15 + 12);
            v6 = v102;
            v20 = v98;
            v5 = v101;
            if (*v15)
            {
              v62 = v16[350];
              if (v62)
              {
                xmmword_1ED452F18(v62);
              }

              qword_1ED456A48[0] -= v17[2](v60);
              --qword_1ED456A90;
              (*v17)(v60);
              v60 = v16[350];
              if (!v60)
              {
                goto LABEL_92;
              }

              v61 = (v17 + 15);
            }

            (*v61)(v60);
LABEL_92:
            v3 = v104;
LABEL_94:
            v22 = v100;
            goto LABEL_22;
          }

          v42 = v16[350];
          v40 = (v17 + 15);
        }

        else
        {
          v42 = v99;
        }

        (*v40)(v42);
        goto LABEL_85;
      }

      while (1)
      {
        v44 = *v39;
        if (!*v39)
        {
          goto LABEL_55;
        }

        v45 = *(v44 + 80);
        if (v45)
        {
          v46 = (v15 + 12);
          if (!*v15)
          {
            goto LABEL_63;
          }

          v47 = v16[350];
          if (v47)
          {
            xmmword_1ED452F18(v47);
          }

          qword_1ED456A48[0] -= v17[2](v45);
          --qword_1ED456A90;
          (*v17)(v45);
          v45 = v16[350];
          if (v45)
          {
            break;
          }
        }

LABEL_64:
        if (!*(v44 + 5))
        {
          v48 = *(v44 + 40);
          if (v48)
          {
            v49 = (v15 + 12);
            if (*v15)
            {
              v50 = v16[350];
              if (v50)
              {
                xmmword_1ED452F18(v50);
              }

              qword_1ED456A48[0] -= v17[2](v48);
              --qword_1ED456A90;
              (*v17)(v48);
              v48 = v16[350];
              if (!v48)
              {
                goto LABEL_72;
              }

              v49 = (v17 + 15);
            }

            (*v49)(v48);
          }
        }

LABEL_72:
        v51 = *(v44 + 56);
        if (v51)
        {
          v52 = v15;
          v53 = v16;
          v54 = v17;
          v55 = v51[3];
          v56 = v51[4];
          v57 = v56[3];
          if (v57)
          {
            xmmword_1ED452F18(v57);
          }

          sub_181929C84(v56, v51);
          v58 = v56[3];
          if (v58)
          {
            xmmword_1ED452F28(v58);
          }

          sqlite3_finalize(v55);
          v17 = v54;
          v16 = v53;
          v15 = v52;
        }

        v43 = (v15 + 12);
        if (*v15)
        {
          v59 = v16[350];
          if (v59)
          {
            xmmword_1ED452F18(v59);
          }

          qword_1ED456A48[0] -= v17[2](v44);
          --qword_1ED456A90;
          (*v17)(v44);
          v44 = v16[350];
          if (!v44)
          {
            goto LABEL_55;
          }

          v43 = (v17 + 15);
        }

        (*v43)(v44);
LABEL_55:
        ++v39;
        if (!--v38)
        {
          goto LABEL_48;
        }
      }

      v46 = (v17 + 15);
LABEL_63:
      (*v46)(v45);
      goto LABEL_64;
    }

    v5 = 0;
LABEL_17:
    ;
  }

  while (!v5);
  sqlite3_reset(pStmt);
LABEL_99:
  v7 = 0;
  a2 = v97;
LABEL_100:
  if (v5 == 267)
  {
    result = 0;
  }

  else
  {
    result = v5;
  }

  if (v5)
  {
    v65 = 0;
  }

  else
  {
    v65 = v6 == v7;
  }

  v66 = v65;
  *a2 = v66;
  return result;
}

uint64_t sub_1819C5748(uint64_t a1, int a2, int a3)
{
  v350 = 0;
  v351 = 0;
  if (sqlite3_initialize())
  {
    return 7;
  }

  v8 = sub_181902484(808, 0x1010040A2F16D4ELL);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  *&v354[0] = 0;
  LODWORD(v351) = 0;
  v6 = sub_1819AE4E4(a1, 0x16u, v354, 0);
  v10 = &unk_1ED456000;
  if (v6)
  {
    goto LABEL_597;
  }

  v345 = a3;
  v11 = *&v354[0];
  if (!sub_1818DF6EC(*&v354[0], 0))
  {
    v12 = *(v11 + 16);
    if ((*(v12 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v12, 1);
    }

    else
    {
      *v12 = 1;
      *(v12 + 20) = 4;
    }

    v13 = *(*v11 + 24);
    if (v13)
    {
      xmmword_1ED452F28(v13);
    }
  }

  if (sqlite3_step(v11) == 100)
  {
    v14 = sqlite3_column_blob(v11, 0);
    v15 = sqlite3_column_bytes(v11, 0);
    if (v14)
    {
      v16 = v15;
      if (v15 >= 1)
      {
        if (sqlite3_initialize() || (v17 = sub_18190287C(0, v16, 0x100004077774924)) == 0)
        {
          sqlite3_reset(v11);
          v6 = 7;
          goto LABEL_596;
        }

        HIDWORD(v351) = v16;
        v350 = v17;
        memcpy(v17, v14, v16);
      }

      LODWORD(v351) = v16;
    }
  }

  v6 = sqlite3_reset(v11);
  v353 = v6;
  if (v6)
  {
LABEL_596:
    v10 = &unk_1ED456000;
    goto LABEL_597;
  }

  v10 = &unk_1ED456000;
  if (a2 < 1)
  {
    goto LABEL_597;
  }

  v344 = 0;
  v348 = 0;
  v18 = v9 + 180;
  if (v345 <= 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = v345;
  }

  v343 = v19;
  v342 = (v9 + 14);
  v346 = a1;
  do
  {
    v347 = a2;
    v20 = *(a1 + 492);
    v349 = 0;
    sub_1819AE4E4(a1, 0x1Cu, &v349, 0);
    v21 = v349;
    if (!sub_1818DF6EC(v349, 0))
    {
      v22 = *(v21 + 16);
      if ((*(v22 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v22, v343);
      }

      else
      {
        *v22 = v343;
        *(v22 + 20) = 4;
      }

      v23 = *(*v21 + 24);
      if (v23)
      {
        xmmword_1ED452F28(v23);
      }
    }

    if (sqlite3_step(v21) == 100)
    {
      v348 = sqlite3_column_int64(v21, 0);
      v24 = sqlite3_column_int(v21, 1);
    }

    else
    {
      v24 = -1;
    }

    v25 = v20 << 10;
    v352 = v24;
    v6 = sqlite3_reset(v21);
    v26 = 0;
    v353 = v6;
    if (v6)
    {
      goto LABEL_70;
    }

    v27 = v351;
    if (!v351)
    {
      goto LABEL_69;
    }

    *&v354[0] = 0;
    v28 = v351 - 1;
    v29 = v350;
    if (v350[v28] < 0)
    {
LABEL_42:
      v30 = 0;
      LODWORD(v28) = 0;
      v6 = 267;
    }

    else
    {
      if (v351 < 2)
      {
        if (v351 == 1)
        {
          v30 = 0;
          v6 = 267;
          goto LABEL_66;
        }
      }

      else
      {
        LODWORD(v28) = v351;
        while (1)
        {
          LODWORD(v28) = v28 - 1;
          if ((v350[v28 - 1] & 0x80000000) == 0)
          {
            break;
          }

          if (v28 <= 1)
          {
            goto LABEL_42;
          }
        }
      }

      if (v28 >= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v28;
      }

      v32 = v31 - 1;
      while (v28 >= 2)
      {
        v33 = v28 - 1;
        v34 = v350[v28 - 2];
        LODWORD(v28) = v28 - 1;
        if ((v34 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }
      }

      v33 = v32;
LABEL_52:
      LODWORD(v351) = v33;
      v35 = v33 + sub_1819AE95C(&v350[v33], v354);
      v36 = &v29[v35];
      LODWORD(v28) = v29[v35];
      if ((v28 & 0x80) != 0)
      {
        LODWORD(v28) = v28 & 0x7F | (v36[1] << 7);
        if (v36[1] < 0)
        {
          LODWORD(v28) = v28 & 0x3FFF | (v36[2] << 14);
          if (v36[2] < 0)
          {
            LODWORD(v28) = v28 & 0x1FFFFF | (v36[3] << 21);
            if (v36[3] < 0)
            {
              LODWORD(v28) = v28 & 0xFFFFFFF | ((v36[4] & 7) << 28);
              v37 = 5;
            }

            else
            {
              v37 = 4;
            }
          }

          else
          {
            v37 = 3;
          }
        }

        else
        {
          v37 = 2;
        }
      }

      else
      {
        v37 = 1;
      }

      if (v37 + v35 == v27)
      {
        v6 = 0;
      }

      else
      {
        v6 = 267;
      }

      v30 = *&v354[0];
    }

LABEL_66:
    v353 = v6;
    if ((v24 & 0x80000000) == 0 && v348 % v25 < v30 % v25)
    {
      v26 = 0;
      LODWORD(v351) = v27;
LABEL_69:
      v10 = &unk_1ED456000;
LABEL_70:
      v30 = v348;
      if (v24 < 1)
      {
        goto LABEL_574;
      }

      goto LABEL_78;
    }

    v38 = v345;
    if (v24 > v345)
    {
      v38 = v24;
    }

    if (v38 >= v28)
    {
      v24 = v28;
    }

    else
    {
      v24 = v38;
    }

    v352 = v24;
    v344 = 1;
    v26 = 1;
    v10 = &unk_1ED456000;
    if (v24 < 1)
    {
LABEL_574:
      v39 = v6;
LABEL_575:
      v6 = v39;
      a1 = v346;
      break;
    }

LABEL_78:
    v39 = 267;
    if (v30 < 0)
    {
      goto LABEL_575;
    }

    v348 = v30;
    if (v30 > v25 << 32)
    {
      goto LABEL_575;
    }

    bzero(v9, 0x328uLL);
    v9[178] = 1;
    if (v6)
    {
      goto LABEL_85;
    }

    *&v354[0] = 0;
    v40 = sub_1819AE4E4(v346, 8u, v354, 0);
    if (v40)
    {
      v41 = 0;
      v353 = v40;
      v42 = v348 + 1;
    }

    else
    {
      v58 = *&v354[0];
      v42 = v348 + 1;
      if (!sub_1818DF6EC(*&v354[0], 0))
      {
        v59 = *(v58 + 16);
        if ((*(v59 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v59, v42);
        }

        else
        {
          *v59 = v42;
          *(v59 + 20) = 4;
        }

        v63 = *(*v58 + 24);
        if (v63)
        {
          xmmword_1ED452F28(v63);
        }
      }

      sqlite3_step(v58);
      v64 = sqlite3_column_int(v58, 0);
      v65 = v58;
      v41 = v64;
      v66 = sqlite3_reset(v65);
      v353 = v66;
      if (v41 == 1)
      {
        v67 = v26;
      }

      else
      {
        v67 = 0;
      }

      if (v41)
      {
        v6 = v66;
        if (!v67)
        {
          goto LABEL_146;
        }
      }
    }

    *&v354[0] = 0;
    v43 = sub_1819AE4E4(v346, 0xFu, v354, 0);
    if (v43)
    {
      v6 = v43;
      v353 = v43;
      goto LABEL_85;
    }

    v60 = *&v354[0];
    if (!sub_1818DF6EC(*&v354[0], 0))
    {
      v61 = v348 + 2;
      v62 = *(v60 + 16);
      if ((*(v62 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v62, v61);
      }

      else
      {
        *v62 = v61;
        *(v62 + 20) = 4;
      }

      v68 = *(*v60 + 24);
      if (v68)
      {
        xmmword_1ED452F28(v68);
      }
    }

    if (!sub_1818DF6EC(v60, 1u))
    {
      v69 = (v42 & 0x7FFFFFFFFFFFFC00) + 1024;
      v70 = *(v60 + 16);
      if ((*(v70 + 84) & 0x9000) != 0)
      {
        sub_18193D288(v70 + 64, v69);
      }

      else
      {
        *(v70 + 64) = v69;
        *(v70 + 84) = 4;
      }

      v71 = *(*v60 + 24);
      if (v71)
      {
        xmmword_1ED452F28(v71);
      }
    }

    if (sqlite3_step(v60) == 100)
    {
      v72 = v41;
      v73 = sqlite3_column_type(v60, 0);
      v6 = sqlite3_reset(v60);
      v353 = v6;
      if (v73 == 5)
      {
        v9[178] |= 2u;
      }

      v41 = v72;
    }

    else
    {
      v6 = sqlite3_reset(v60);
      v353 = v6;
    }

LABEL_146:
    if (v6)
    {
      goto LABEL_85;
    }

    *&v354[0] = 0;
    *v18 = 0u;
    *(v9 + 46) = 0u;
    *(v9 + 47) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 49) = 0u;
    *(v9 + 100) = 0;
    if (sqlite3_initialize())
    {
      *v18 = 0;
LABEL_149:
      v6 = 7;
      goto LABEL_150;
    }

    v315 = v41;
    v74 = sub_181902484(8 * v24, 0x2004093837F09);
    *v18 = v74;
    if (!v74)
    {
      goto LABEL_149;
    }

    bzero(v74, 8 * v24);
    v6 = sub_1819AE4E4(v346, 0xCu, v354, 0);
    if (v6)
    {
LABEL_150:
      v353 = v6;
      goto LABEL_85;
    }

    v75 = *&v354[0];
    if (!sub_1818DF6EC(*&v354[0], 0))
    {
      v76 = *(v75 + 16);
      if ((*(v76 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v76, v348);
      }

      else
      {
        *v76 = v348;
        *(v76 + 20) = 4;
      }

      v77 = *(*v75 + 24);
      if (v77)
      {
        xmmword_1ED452F28(v77);
      }
    }

    if (sqlite3_step(v75) == 100)
    {
      v78 = 0;
      pStmt = v75;
      while (1)
      {
        v79 = sqlite3_column_int64(v75, 1);
        __dst = sqlite3_column_int64(v75, 2);
        v326 = sqlite3_column_int64(v75, 3);
        __src = sqlite3_column_blob(v75, 4);
        v80 = sqlite3_column_bytes(v75, 4);
        LODWORD(v75) = v80;
        v330 = v79;
        __s1 = *v18;
        if (v79)
        {
          v81 = 0;
        }

        else
        {
          if (__dst)
          {
            v6 = 267;
            goto LABEL_178;
          }

          v81 = v80 + 20;
        }

        if (sqlite3_initialize() || (v82 = sub_181902484(v81 + 136, 0x10B0040ED1AEB9FLL)) == 0)
        {
          v6 = 7;
          v10 = &unk_1ED456000;
LABEL_178:
          ++v9[182];
          sqlite3_reset(pStmt);
          v353 = v6;
          goto LABEL_85;
        }

        v83 = v82;
        *v82 = 0u;
        *(v82 + 16) = 0u;
        *(v82 + 128) = 0;
        *(v82 + 96) = 0u;
        *(v82 + 112) = 0u;
        *(v82 + 64) = 0u;
        *(v82 + 80) = 0u;
        *(v82 + 32) = 0u;
        *(v82 + 48) = 0u;
        *v82 = v78;
        *(v82 + 4) = 0;
        *(v82 + 8) = v330;
        *(v82 + 16) = __dst;
        *(v82 + 24) = v326;
        if (v81)
        {
          v84 = v82 + 136;
          *(v82 + 40) = v82 + 136;
          *(v82 + 5) = 1;
          *(v82 + 48) = v75;
          if (v75)
          {
            v75 = v75;
            memcpy((v82 + 136), __src, v75);
          }

          else
          {
            v75 = 0;
          }

          v85 = v75 + v84;
          *v85 = 0;
          *(v85 + 1) = 0;
          *(v85 + 4) = 0;
        }

        else
        {
          *(v82 + 32) = v330 - 1;
        }

        __s1[v78] = v83;
        ++v9[182];
        v75 = pStmt;
        v10 = &unk_1ED456000;
        if (sqlite3_step(pStmt) == 100 && ++v78 < v24)
        {
          continue;
        }

        break;
      }
    }

    v86 = sqlite3_reset(v75);
    v353 = v86;
    if (v86)
    {
      v6 = v86;
      goto LABEL_85;
    }

    v87 = v9[182];
    if (v87 != v24)
    {
      v6 = 0;
      if (v87 >= 1)
      {
        goto LABEL_86;
      }

      goto LABEL_183;
    }

    *(v9 + 92) = v9 + 174;
    v88 = sub_1819AEA58(v346, v9 + 90, *(v9 + 87), v9[176]);
    v353 = v88;
    if (v88)
    {
      v6 = v88;
      goto LABEL_85;
    }

    v95 = sub_1819AF3DC(v346, (v9 + 180));
    v39 = v95;
    v353 = v95;
    if (v95 && v95 != 100)
    {
      if (v9[182] >= 1)
      {
        v296 = 0;
        while (1)
        {
          v298 = *(*v18 + 8 * v296);
          if (!v298)
          {
            goto LABEL_614;
          }

          v299 = *(v298 + 80);
          if (v299)
          {
            v300 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_622;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v299);
            --qword_1ED456A90;
            off_1ED452EB0(v299);
            v299 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              break;
            }
          }

LABEL_623:
          if (!*(v298 + 5))
          {
            v301 = *(v298 + 40);
            if (v301)
            {
              v302 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v301);
                --qword_1ED456A90;
                off_1ED452EB0(v301);
                v301 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_631;
                }

                v302 = &xmmword_1ED452F28;
              }

              (*v302)(v301);
            }
          }

LABEL_631:
          v303 = *(v298 + 56);
          if (v303)
          {
            v304 = v303[3];
            v305 = v303[4];
            v306 = v305[3];
            if (v306)
            {
              xmmword_1ED452F18(v306);
            }

            sub_181929C84(v305, v303);
            v307 = v305[3];
            if (v307)
            {
              xmmword_1ED452F28(v307);
            }

            sqlite3_finalize(v304);
          }

          v297 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v298);
            --qword_1ED456A90;
            off_1ED452EB0(v298);
            v298 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_614;
            }

            v297 = &xmmword_1ED452F28;
          }

          (*v297)(v298);
LABEL_614:
          if (++v296 >= v9[182])
          {
            goto LABEL_642;
          }
        }

        v300 = &xmmword_1ED452F28;
LABEL_622:
        (*v300)(v299);
        goto LABEL_623;
      }

LABEL_642:
      v308 = *v18;
      if (v308)
      {
        v309 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
LABEL_648:
          (*v309)(v308);
          goto LABEL_649;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v308);
        --qword_1ED456A90;
        off_1ED452EB0(v308);
        v308 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v309 = &xmmword_1ED452F28;
          goto LABEL_648;
        }
      }

LABEL_649:
      v310 = *(v9 + 93);
      if (v310)
      {
        v311 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v310);
          --qword_1ED456A90;
          off_1ED452EB0(v310);
          v310 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_656;
          }

          v311 = &xmmword_1ED452F28;
        }

        (*v311)(v310);
      }

LABEL_656:
      v9[182] = 0;
      *(v9 + 90) = 0;
      *(v9 + 93) = 0;
      v10 = &unk_1ED456000;
      goto LABEL_575;
    }

    if (v315 > 0)
    {
      v96 = v26;
    }

    else
    {
      v96 = 0;
    }

    if (v96 != 1)
    {
      *&v354[0] = 0;
      v357[0] = 0;
      v100 = sub_1819AE4E4(v346, 0x1Du, v354, 0);
      if (!v100)
      {
        v101 = *&v354[0];
        if (!sub_1818DF6EC(*&v354[0], 0))
        {
          v102 = *(v101 + 16);
          if ((*(v102 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v102, v348);
          }

          else
          {
            *v102 = v348;
            *(v102 + 20) = 4;
          }

          v105 = *(*v101 + 24);
          if (v105)
          {
            xmmword_1ED452F28(v105);
          }
        }

        v106 = v9[182];
        if (!sub_1818DF6EC(v101, 1u))
        {
          v107 = *(v101 + 16);
          if ((*(v107 + 84) & 0x9000) != 0)
          {
            sub_18193D288(v107 + 64, v106);
          }

          else
          {
            *(v107 + 64) = v106;
            *(v107 + 84) = 4;
          }

          v126 = *(*v101 + 24);
          if (v126)
          {
            xmmword_1ED452F28(v126);
          }
        }

        v127 = sqlite3_step(v101) == 100 ? sqlite3_column_int(v101, 0) : 0;
        v100 = sqlite3_reset(v101);
        if (!v100)
        {
          v100 = sub_1819AE4E4(v346, 0xAu, v357, 0);
          if (!v100)
          {
            v128 = v357[0];
            if (sqlite3_step(v357[0]) == 100)
            {
              v129 = sqlite3_column_int64(v128, 0);
              *(v9 + 3) = v129;
              *(v9 + 4) = v129 + 16 * v127 - 1;
            }

            v100 = sqlite3_reset(v128);
            if (!v100)
            {
              v6 = sub_1819C3C04(v346, *(v9 + 4), 0, 0);
              if (!v6)
              {
                v9[4] = v315;
                v130 = *(v9 + 3);
                *(v9 + 12) = v130 + v127;
                *(v9 + 17) = v130 + 2 * v127;
                *(v9 + 22) = v130 + 3 * v127;
                *(v9 + 27) = v130 + 4 * v127;
                *(v9 + 32) = v130 + 5 * v127;
                *(v9 + 37) = v130 + 6 * v127;
                *(v9 + 42) = v130 + 7 * v127;
                *(v9 + 47) = v130 + 8 * v127;
                *(v9 + 1) = v348;
                *v9 = v127;
                *(v9 + 7) = v130;
                *(v9 + 52) = v130 + 9 * v127;
                *(v9 + 57) = v130 + 10 * v127;
                *(v9 + 62) = v130 + 11 * v127;
                *(v9 + 67) = v130 + 12 * v127;
                *(v9 + 72) = v130 + 13 * v127;
                *(v9 + 77) = v130 + 14 * v127;
                *(v9 + 82) = v130 - v127 + 16 * v127;
                v353 = 0;
                goto LABEL_394;
              }

              goto LABEL_390;
            }
          }
        }
      }

      goto LABEL_389;
    }

    __s1a = *(v9 + 97);
    __dsta = v9[196];
    v357[0] = 0;
    v6 = sub_1819AE4E4(v346, 0x20u, v357, 0);
    if (v6)
    {
      goto LABEL_390;
    }

    v97 = v357[0];
    if (!sub_1818DF6EC(v357[0], 0))
    {
      v98 = v348 + 1;
      v99 = *(v97 + 16);
      if ((*(v99 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v99, v98);
      }

      else
      {
        *v99 = v98;
        *(v99 + 20) = 4;
      }

      v103 = *(*v97 + 24);
      if (v103)
      {
        xmmword_1ED452F28(v103);
      }
    }

    v331 = (v315 - 1);
    if (!sub_1818DF6EC(v97, 1u))
    {
      v104 = *(v97 + 16);
      if ((*(v104 + 84) & 0x9000) != 0)
      {
        sub_18193D288(v104 + 64, v331);
      }

      else
      {
        *(v104 + 64) = v331;
        *(v104 + 84) = 4;
      }

      v108 = *(*v97 + 24);
      if (v108)
      {
        xmmword_1ED452F28(v108);
      }
    }

    if (sqlite3_step(v97) == 100)
    {
      pStmta = sqlite3_column_int64(v97, 1);
      iRow = sqlite3_column_int64(v97, 2);
      v109 = sqlite3_column_text(v97, 3);
      if (v109)
      {
        v110 = *v109;
        if ((v110 - 48) > 9)
        {
          v113 = 0;
          v112 = 0;
        }

        else
        {
          v111 = 0;
          v112 = 0;
          do
          {
            v112 = (v110 & 0xF) + 10 * v112;
            v110 = v109[++v111];
          }

          while ((v110 - 48) < 0xA);
          v113 = v111;
        }

        while (1)
        {
          v116 = v109[v113];
          if (v116 != 32)
          {
            break;
          }

          ++v113;
        }

        v117 = v116 == 45;
        if (v116 == 45)
        {
          v118 = v113 + 1;
        }

        else
        {
          v118 = v113;
        }

        v119 = 1;
        if (v117)
        {
          v119 = -1;
        }

        v120 = v118;
        v121 = v109[v118];
        if ((v121 - 48) > 9)
        {
          v122 = 0;
        }

        else
        {
          v122 = 0;
          v123 = &v109[v120 + 1];
          do
          {
            v122 = (v121 & 0xF) + 10 * v122;
            v124 = *v123++;
            LOBYTE(v121) = v124;
          }

          while ((v124 - 48) < 0xA);
        }

        v115 = v122 * v119;
        *(v9 + 5) = v115;
      }

      else
      {
        v112 = 0;
        v115 = *(v9 + 5);
      }

      if (v115 < 0)
      {
        *(v9 + 5) = -v115;
        v115 = 1;
      }

      *(v9 + 48) = v115 == 0;
      v327 = sqlite3_column_bytes(v97, 4);
      __srca = sqlite3_column_blob(v97, 4);
      if (!__srca)
      {
        sqlite3_reset(v97);
        if (v327)
        {
          v6 = 7;
        }

        else
        {
          v6 = 267;
        }

        v353 = v6;
LABEL_391:
        if (v352)
        {
          goto LABEL_392;
        }

        goto LABEL_496;
      }

      *&v354[0] = 0;
      v125 = sub_1819AE4E4(v346, 0x22u, v354, 0);
      if (v125)
      {
        v6 = v125;
        sqlite3_reset(v97);
        v353 = v6;
        if (v6)
        {
          goto LABEL_391;
        }

        goto LABEL_394;
      }

      v131 = *&v354[0];
      if (!sub_1818DF6EC(*&v354[0], 0))
      {
        v132 = *(v131 + 16);
        if ((*(v132 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v132, v112);
        }

        else
        {
          *v132 = v112;
          *(v132 + 20) = 4;
        }

        v133 = *(*v131 + 24);
        if (v133)
        {
          xmmword_1ED452F28(v133);
        }
      }

      v134 = sqlite3_step(v131);
      v316 = v134 == 100;
      v6 = sqlite3_reset(v131);
      if (v6 || v134 != 100)
      {
        goto LABEL_324;
      }

      v356 = 0;
      v355 = 0;
      v135 = sub_1819AE770(v346, iRow, &v356, &v355);
      v136 = v356;
      if (v135)
      {
        v6 = v135;
        v316 = 1;
        goto LABEL_317;
      }

      memset(v354 + 8, 0, 48);
      *&v354[0] = v356;
      DWORD2(v354[0]) = v355;
      if (v356)
      {
        if (*v356)
        {
          v137 = sub_1819AE95C(v356 + 1, &v354[1]) + 1;
        }

        else
        {
          v137 = 1;
        }

        HIDWORD(v354[0]) = v137;
        do
        {
          v6 = sub_1819C8F50(v354);
        }

        while (!v6 && *&v354[0]);
      }

      else
      {
        v6 = 0;
      }

      v138 = *(&v354[1] + 1);
      v139 = v354[2];
      v140 = __dsta;
      if (__dsta >= SLODWORD(v354[2]))
      {
        v140 = v354[2];
      }

      if (*(&v354[1] + 1))
      {
        v141 = __s1a == 0;
      }

      else
      {
        v141 = 1;
      }

      if (v141 || v140 == 0)
      {
        v316 = SLODWORD(v354[2]) < __dsta;
        if (!*(&v354[1] + 1))
        {
          goto LABEL_316;
        }
      }

      else
      {
        v143 = memcmp(__s1a, *(&v354[1] + 1), v140);
        if (v143)
        {
          v144 = v143 > 0;
        }

        else
        {
          v144 = v139 < __dsta;
        }

        v316 = v144;
      }

      v145 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v138);
        --qword_1ED456A90;
        off_1ED452EB0(v138);
        v138 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_316;
        }

        v145 = &xmmword_1ED452F28;
      }

      (*v145)(v138);
LABEL_316:
      v136 = v356;
LABEL_317:
      if (v136)
      {
        v146 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v136);
          --qword_1ED456A90;
          off_1ED452EB0(v136);
          v136 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_324;
          }

          v146 = &xmmword_1ED452F28;
        }

        (*v146)(v136);
      }

LABEL_324:
      if (v6 || !v316)
      {
LABEL_388:
        v100 = sqlite3_reset(v357[0]);
        if (v6)
        {
          goto LABEL_390;
        }

        goto LABEL_389;
      }

      v147 = *__srca;
      if ((v147 - 1) >= 0xF)
      {
        sqlite3_reset(v357[0]);
        v6 = 267;
        v353 = 267;
        goto LABEL_391;
      }

      if (v112 - pStmta + 1 >= 0)
      {
        v148 = v112 - pStmta + 1;
      }

      else
      {
        v148 = v112 - pStmta + 16;
      }

      v149 = v148 >> 4;
      *v9 = v149;
      *(v9 + 3) = pStmta;
      *(v9 + 4) = v112;
      *(v9 + 1) = v348;
      v9[4] = v331;
      if (v147 <= 0xE)
      {
        v150 = 0;
        v151 = vdupq_n_s64(14 - v147);
        v152 = &v9[10 * v147 + 34];
        v153 = pStmta + (v147 + 2) * v149;
        v154 = 2 * v149;
        v155 = pStmta + v149 + v149 * v147;
        do
        {
          v156 = vmovn_s64(vcgeq_u64(v151, vorrq_s8(vdupq_n_s64(v150), xmmword_181A1FE70)));
          if (v156.i8[0])
          {
            *(v152 - 5) = v155;
          }

          if (v156.i8[4])
          {
            *v152 = v153;
          }

          v150 += 2;
          v152 += 20;
          v153 += v154;
          v155 += v154;
        }

        while (((16 - v147) & 0x1E) != v150);
      }

      v157 = &v342[5 * v147];
      *v157 = pStmta + v149 * v147;
      v158 = *(v346 + 456);
      if (v327 > v158)
      {
        v158 = v327;
      }

      v159 = v158 + 20;
      v160 = v157[3];
      if (*(v157 + 9) < v158 + 20)
      {
        v161 = sqlite3_initialize();
        if (!v159 || v161 || (v162 = sub_18190287C(v160, v159, 0x100004077774924)) == 0)
        {
          sqlite3_reset(v357[0]);
          v6 = 7;
          v353 = 7;
          goto LABEL_391;
        }

        v160 = v162;
        *(v157 + 9) = v159;
        v157[3] = v162;
      }

      memcpy(v160, __srca, v327);
      *(v157 + 8) = v327;
      v163 = v157[3] + v327;
      *v163 = 0;
      *(v163 + 8) = 0;
      *(v163 + 16) = 0;
      if ((v147 & 0x80000000) == 0)
      {
        while (1)
        {
          v164 = &v342[5 * v147];
          memset(v354, 0, 56);
          v165 = v164[3];
          if (!v165)
          {
LABEL_378:
            v6 = 0;
            goto LABEL_379;
          }

          v166 = *(v164 + 8);
          memset(&v354[1], 0, 40);
          *&v354[0] = v165;
          DWORD2(v354[0]) = v166;
          v167 = *v165 ? sub_1819AE95C(v165 + 1, &v354[1]) + 1 : 1;
          HIDWORD(v354[0]) = v167;
          do
          {
            v6 = sub_1819C8F50(v354);
          }

          while (!v6 && *&v354[0]);
          if (!v6)
          {
            break;
          }

LABEL_379:
          v183 = *(&v354[1] + 1);
          if (*(&v354[1] + 1))
          {
            v184 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v183);
              --qword_1ED456A90;
              off_1ED452EB0(v183);
              v183 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_386;
              }

              v184 = &xmmword_1ED452F28;
            }

            (*v184)(v183);
          }

LABEL_386:
          v185 = v147-- < 1;
          if (v185 || v6)
          {
            goto LABEL_388;
          }
        }

        v168 = LODWORD(v354[2]);
        if (*(v164 + 5) < SLODWORD(v354[2]))
        {
          v169 = v164[1];
          v170 = sqlite3_initialize();
          v6 = 7;
          if (!v168)
          {
            goto LABEL_379;
          }

          if (v170)
          {
            goto LABEL_379;
          }

          v171 = sub_18190287C(v169, v168, 0x100004077774924);
          if (!v171)
          {
            goto LABEL_379;
          }

          *(v164 + 5) = v168;
          v164[1] = v171;
        }

        if (v168 >= 1)
        {
          memcpy(v164[1], *(&v354[1] + 1), v168);
        }

        *(v164 + 4) = v168;
        if (v147 < 1)
        {
          goto LABEL_378;
        }

        v356 = 0;
        v355 = 0;
        v172 = &v342[5 * v147];
        v173 = *&v354[1];
        *(v172 - 5) = *&v354[1];
        v174 = v172 - 5;
        v175 = sub_1819AE770(v346, v173, &v356, &v355);
        v6 = v175;
        v176 = v355;
        v177 = *(v346 + 456);
        if (v355 > v177)
        {
          v177 = v355;
        }

        if (!v175)
        {
          v178 = v177 + 20;
          __dstb = v174[3];
          if (*(v174 + 9) >= v177 + 20)
          {
LABEL_370:
            memcpy(__dstb, v356, v176);
            v6 = 0;
            *(v174 + 8) = v176;
            v180 = v174[3] + v176;
            *v180 = 0;
            *(v180 + 8) = 0;
            *(v180 + 16) = 0;
            goto LABEL_371;
          }

          v179 = sqlite3_initialize();
          v6 = 7;
          if (v178)
          {
            if (!v179)
            {
              __dstb = sub_18190287C(__dstb, v178, 0x100004077774924);
              if (__dstb)
              {
                *(v174 + 9) = v178;
                v174[3] = __dstb;
                goto LABEL_370;
              }
            }
          }
        }

LABEL_371:
        v181 = v356;
        if (!v356)
        {
          goto LABEL_379;
        }

        v182 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_377;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v181);
        --qword_1ED456A90;
        off_1ED452EB0(v181);
        v181 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v182 = &xmmword_1ED452F28;
LABEL_377:
          (*v182)(v181);
          goto LABEL_379;
        }

        goto LABEL_379;
      }

      v114 = v357[0];
      goto LABEL_237;
    }

    v114 = v97;
LABEL_237:
    v100 = sqlite3_reset(v114);
LABEL_389:
    v6 = v100;
LABEL_390:
    v353 = v6;
    if (v6)
    {
      goto LABEL_391;
    }

LABEL_394:
    if (!*v9)
    {
      v6 = 0;
      goto LABEL_391;
    }

    if (!v39)
    {
      goto LABEL_492;
    }

    do
    {
      v186 = *(v9 + 97);
      v187 = v9[196];
      v188 = v9[18];
      if (v188 >= v187)
      {
        v189 = v187;
      }

      else
      {
        v189 = v188;
      }

      if (v189 < 1)
      {
        LODWORD(v189) = 0;
      }

      else
      {
        v190 = 0;
        while (*(*(v9 + 8) + v190) == v186[v190])
        {
          if (v189 == ++v190)
          {
            goto LABEL_408;
          }
        }

        LODWORD(v189) = v190;
      }

LABEL_408:
      v191 = (v187 - v189);
      if (v191 < 1)
      {
        v6 = 267;
LABEL_435:
        v353 = v6;
        goto LABEL_436;
      }

      v192 = *(v9 + 99);
      v193 = v9[200];
      v194 = v189;
      v195 = v187 + v193 - v189 + 1;
      v196 = v187 + v193 + 2;
      v197 = v196 - v189;
      do
      {
        v198 = v197;
        ++v195;
        ++v197;
        v185 = v194 > 0x7F;
        v194 >>= 7;
      }

      while (v185);
      do
      {
        v199 = v198++;
        v185 = v191 > 0x7F;
        v191 >>= 7;
      }

      while (v185);
      v200 = v9[200];
      do
      {
        ++v199;
        v185 = v200 > 0x7F;
        v200 >>= 7;
      }

      while (v185);
      v201 = v9[22];
      v202 = v201 + v199;
      if (v201 < 1 || v202 <= *(v346 + 456) || (v203 = *(v9 + 7), v203 >= *(v9 + 3) + *v9))
      {
        *(v9 + 5) += v199;
        goto LABEL_425;
      }

      v328 = v9[200];
      v313 = *(v9 + 99);
      v314 = v9[196];
      v6 = sub_1819C3C04(v346, v203, *(v9 + 10), v201);
      ++v9[1];
      if (!v6)
      {
        __srcb = v189 + 1;
        __s1b = *v342;
        v213 = 1;
        while (1)
        {
          v332 = v213;
          __dstd = &v342[5 * v213];
          v214 = *(__dstd + 4);
          if (v214 >= __srcb)
          {
            v215 = __srcb;
          }

          else
          {
            v215 = v214;
          }

          if (v215 < 1)
          {
            LODWORD(v215) = 0;
          }

          else
          {
            v216 = 0;
            while (*(__dstd[1] + v216) == v186[v216])
            {
              if (v215 == ++v216)
              {
                goto LABEL_450;
              }
            }

            LODWORD(v215) = v216;
          }

LABEL_450:
          v217 = (__srcb - v215);
          if (v217 < 1)
          {
            v6 = 267;
            goto LABEL_418;
          }

          v218 = v215;
          v219 = v189 + 2 - v215;
          pStmtb = v217;
          v220 = v217;
          v317 = v218;
          v221 = v218;
          do
          {
            v222 = v219;
            v223 = v220;
            ++v219;
            ++v220;
            v185 = v221 > 0x7F;
            v221 >>= 7;
          }

          while (v185);
          v224 = pStmtb;
          do
          {
            ++v222;
            ++v223;
            v185 = v224 > 0x7F;
            v224 >>= 7;
          }

          while (v185);
          v225 = *(__dstd + 8);
          if (!v214 || (v225 + v222) <= *(v346 + 456))
          {
            break;
          }

          v226 = sub_1819C3C04(v346, *__dstd, __dstd[3], v225);
          v6 = v226;
          *__dstd[3] = v332;
          v227 = (__dstd[3] + 1);
          v228 = __s1b + 1;
          v229 = 1;
          do
          {
            v230 = v228;
            *v227++ = v228 | 0x80;
            ++v229;
            v185 = v228 > 0x7F;
            v228 >>= 7;
          }

          while (v185);
          *(v227 - 1) = v230;
          *(__dstd + 8) = v229;
          __s1b = (*__dstd)++;
          *(__dstd + 4) = 0;
          if (v226 || !__s1b)
          {
            goto LABEL_418;
          }

          v213 = v332 + 1;
          if (v332 == 15)
          {
            v6 = 0;
            goto LABEL_418;
          }
        }

        if (!v225)
        {
          iRowa = __dstd[3];
          v312 = *(v346 + 456);
          if (*(__dstd + 9) < v312)
          {
            v231 = sqlite3_initialize();
            v6 = 7;
            if (!v312)
            {
              goto LABEL_418;
            }

            if (v231)
            {
              goto LABEL_418;
            }

            iRowa = sub_18190287C(iRowa, v312, 0x100004077774924);
            if (!iRowa)
            {
              goto LABEL_418;
            }

            *(__dstd + 9) = v312;
            __dstd[3] = iRowa;
          }

          *iRowa = v332;
          v232 = (__dstd[3] + 1);
          v225 = 1;
          do
          {
            v233 = __s1b;
            *v232++ = __s1b | 0x80;
            ++v225;
            __s1b >>= 7;
          }

          while (v233 > 0x7F);
          *(v232 - 1) = v233;
          *(__dstd + 8) = v225;
        }

        v234 = v225 + v222;
        if (*(__dstd + 9) < v234)
        {
          v235 = v225 + v223;
          __s1c = __dstd[3];
          v236 = sqlite3_initialize();
          v6 = 7;
          if (v235 == -1)
          {
            goto LABEL_418;
          }

          if (v236)
          {
            goto LABEL_418;
          }

          v237 = sub_18190287C(__s1c, v234, 0x100004077774924);
          if (!v237)
          {
            goto LABEL_418;
          }

          *(__dstd + 9) = v234;
          __dstd[3] = v237;
        }

        if (*(__dstd + 5) > v189)
        {
          goto LABEL_482;
        }

        v238 = __dstd[1];
        v239 = sqlite3_initialize();
        v6 = 7;
        if (__srcb)
        {
          if (!v239)
          {
            v240 = sub_18190287C(v238, __srcb, 0x100004077774924);
            if (v240)
            {
              *(__dstd + 5) = __srcb;
              __dstd[1] = v240;
LABEL_482:
              v241 = __dstd[3];
              v242 = *(__dstd + 8);
              if (*(__dstd + 4))
              {
                v243 = 0;
                v244 = (v241 + v242);
                v245 = v317;
                do
                {
                  v246 = v245;
                  *v244++ = v245 | 0x80;
                  ++v243;
                  v185 = v245 > 0x7F;
                  v245 >>= 7;
                }

                while (v185);
                *(v244 - 1) = v246;
                v242 = *(__dstd + 8) + v243;
                *(__dstd + 8) = v242;
                v241 = __dstd[3];
              }

              v247 = 0;
              v248 = (v241 + v242);
              v249 = pStmtb;
              do
              {
                v250 = v249;
                *v248++ = v249 | 0x80;
                ++v247;
                v185 = v249 > 0x7F;
                v249 >>= 7;
              }

              while (v185);
              *(v248 - 1) = v250;
              v251 = *(__dstd + 8);
              *(__dstd + 8) = v251 + v247;
              memcpy((__dstd[3] + v251 + v247), &v186[v317], pStmtb);
              *(__dstd + 8) += pStmtb;
              memcpy(__dstd[1], v186, __srcb);
              v6 = 0;
              *(__dstd + 4) = __srcb;
            }
          }
        }
      }

LABEL_418:
      ++*(v9 + 7);
      v9[18] = 0;
      v9[22] = 0;
      v204 = v314;
      do
      {
        v202 = v196++;
        v185 = v204 > 0x7F;
        v204 >>= 7;
      }

      while (v185);
      v205 = v328;
      do
      {
        ++v202;
        v206 = v205 >= 0x80;
        v205 >>= 7;
      }

      while (v206);
      *(v9 + 5) += v202;
      if (v6)
      {
        goto LABEL_435;
      }

      v201 = 0;
      v192 = v313;
      v187 = v314;
      v193 = v328;
LABEL_425:
      if (v9[23] < v202)
      {
        v329 = v193;
        v207 = v192;
        v208 = v187;
        v209 = *(v9 + 10);
        v210 = sqlite3_initialize();
        v6 = 7;
        if (!v202)
        {
          goto LABEL_435;
        }

        if (v210)
        {
          goto LABEL_435;
        }

        v211 = sub_18190287C(v209, v202, 0x100004077774924);
        if (!v211)
        {
          goto LABEL_435;
        }

        v9[23] = v202;
        *(v9 + 10) = v211;
        v201 = v9[22];
        v187 = v208;
        v192 = v207;
        v193 = v329;
      }

      if (!v201)
      {
        v9[22] = 1;
        **(v9 + 10) = 0;
      }

      v6 = sub_1819C91D4((v9 + 20), v9 + 8, v186, v187, v192, v193);
      v353 = v6;
      if (!v6)
      {
        v6 = sub_1819AF3DC(v346, (v9 + 180));
        v353 = v6;
      }

LABEL_436:
      v212 = v9[1];
      if (v212 >= v347 && v6 == 100)
      {
        goto LABEL_493;
      }
    }

    while (v6 == 100);
    if (v6)
    {
      goto LABEL_391;
    }

LABEL_492:
    v212 = v9[1];
LABEL_493:
    v347 += ~v212;
    v252 = sub_1819C81F4(v346, v348, (v9 + 180), &v352);
    v353 = v252;
    if (!v352)
    {
      v6 = v252;
LABEL_496:
      __dstc = 1;
      goto LABEL_497;
    }

    sub_1819C8E14(&v350, v348, v352, &v353);
    v344 = 1;
    v6 = v353;
LABEL_392:
    __dstc = 0;
    *(v9 + 5) = -*(v9 + 5);
LABEL_497:
    v253 = 15;
    v254 = v9 + 14;
    while (2)
    {
      v256 = v253;
      v257 = &v254[10 * v253];
      if (v257[8] <= 0)
      {
        v258 = *(v257 + 3);
        if (v258)
        {
          v259 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_508;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v258);
          --qword_1ED456A90;
          off_1ED452EB0(v258);
          v258 = xmmword_1ED456AF0;
          v254 = v9 + 14;
          if (xmmword_1ED456AF0)
          {
            v259 = &xmmword_1ED452F28;
LABEL_508:
            (*v259)(v258);
          }
        }

        v260 = *(v257 + 1);
        if (v260)
        {
          v255 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v260);
            --qword_1ED456A90;
            off_1ED452EB0(v260);
            v260 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_500;
            }

            v255 = &xmmword_1ED452F28;
          }

          (*v255)(v260);
        }

LABEL_500:
        v253 = v256 - 1;
        if (!v256)
        {
          goto LABEL_541;
        }

        continue;
      }

      break;
    }

    if (!v253)
    {
      if (!v6)
      {
        v262 = *(v9 + 15);
        if (v9[33] > 10)
        {
          goto LABEL_547;
        }

        if (!sqlite3_initialize())
        {
          v267 = sub_18190287C(v262, 0xBuLL, 0x100004077774924);
          if (v267)
          {
            v262 = v267;
            v9[33] = 11;
            *(v9 + 15) = v267;
LABEL_547:
            v268 = 1;
            *v262 = 1;
            v269 = (*(v9 + 15) + 1);
            v270 = *(v9 + 7);
            do
            {
              v271 = v270;
              *v269++ = v270 | 0x80;
              ++v268;
              v185 = v270 > 0x7F;
              v270 >>= 7;
            }

            while (v185);
            v6 = 0;
            *(v269 - 1) = v271;
            v9[32] = v268;
            goto LABEL_550;
          }
        }

        v6 = 7;
      }

LABEL_550:
      v257 = v9 + 24;
      v256 = 1;
      goto LABEL_551;
    }

    if (v253 >= 1)
    {
LABEL_551:
      v272 = (v9 + 22);
      v273 = &unk_1ED456000;
      while (1)
      {
        if (*v272 >= 1 && v6 == 0)
        {
          v6 = sub_1819C3C04(v346, *(v272 - 4), *(v272 - 1), *v272);
        }

        v275 = *(v272 - 1);
        if (v275)
        {
          v276 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_566;
          }

          v277 = v273[350];
          if (v277)
          {
            xmmword_1ED452F18(v277);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v275);
          --qword_1ED456A90;
          off_1ED452EB0(v275);
          v273 = &unk_1ED456000;
          v275 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            break;
          }
        }

LABEL_567:
        v278 = *(v272 - 3);
        if (v278)
        {
          v279 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            v280 = v273[350];
            if (v280)
            {
              xmmword_1ED452F18(v280);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v278);
            --qword_1ED456A90;
            off_1ED452EB0(v278);
            v273 = &unk_1ED456000;
            v278 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_553;
            }

            v279 = &xmmword_1ED452F28;
          }

          (*v279)(v278);
        }

LABEL_553:
        v272 += 10;
        if (!--v256)
        {
          goto LABEL_517;
        }
      }

      v276 = &xmmword_1ED452F28;
LABEL_566:
      (*v276)(v275);
      goto LABEL_567;
    }

LABEL_517:
    if (!v6)
    {
      if (*(v9 + 48))
      {
        v261 = 0;
      }

      else
      {
        v261 = *(v9 + 5);
      }

      v6 = sub_1819C41B4(v346, *(v9 + 1) + 1, v9[4], *(v9 + 3), *(v9 + 7), *(v9 + 4), v261, *(v257 + 3), v257[8]);
    }

    v263 = *(v257 + 3);
    if (v263)
    {
      v264 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_532;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v263);
      --qword_1ED456A90;
      off_1ED452EB0(v263);
      v263 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v264 = &xmmword_1ED452F28;
LABEL_532:
        (*v264)(v263);
      }
    }

    v265 = *(v257 + 1);
    if (v265)
    {
      v266 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_539;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v265);
      --qword_1ED456A90;
      off_1ED452EB0(v265);
      v265 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v266 = &xmmword_1ED452F28;
LABEL_539:
        (*v266)(v265);
      }
    }

    v353 = v6;
LABEL_541:
    if (__dstc && !*(v9 + 48))
    {
      sub_1819C376C(v346, v348 + 1, *(v9 + 5));
    }

    v10 = &unk_1ED456000;
LABEL_85:
    if (v9[182] >= 1)
    {
LABEL_86:
      v44 = 0;
      while (2)
      {
        v45 = *(*v18 + 8 * v44);
        if (!v45)
        {
          goto LABEL_89;
        }

        v46 = *(v45 + 80);
        if (v46)
        {
          v47 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_97;
          }

          v48 = v10[350];
          if (v48)
          {
            xmmword_1ED452F18(v48);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v46);
          --qword_1ED456A90;
          off_1ED452EB0(v46);
          v46 = v10[350];
          if (v46)
          {
            v47 = &xmmword_1ED452F28;
LABEL_97:
            (*v47)(v46);
          }
        }

        if (!*(v45 + 5))
        {
          v49 = *(v45 + 40);
          if (v49)
          {
            v50 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_105;
            }

            v51 = v10[350];
            if (v51)
            {
              xmmword_1ED452F18(v51);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v49);
            --qword_1ED456A90;
            off_1ED452EB0(v49);
            v49 = v10[350];
            if (v49)
            {
              v50 = &xmmword_1ED452F28;
LABEL_105:
              (*v50)(v49);
            }
          }
        }

        v52 = *(v45 + 56);
        if (v52)
        {
          v53 = v52[3];
          v54 = v52[4];
          v55 = v54[3];
          if (v55)
          {
            xmmword_1ED452F18(v55);
          }

          sub_181929C84(v54, v52);
          v56 = v54[3];
          if (v56)
          {
            xmmword_1ED452F28(v56);
          }

          sqlite3_finalize(v53);
        }

        v57 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v10 = &unk_1ED456000;
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v45);
          --qword_1ED456A90;
          off_1ED452EB0(v45);
          v45 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_89;
          }

          v57 = &xmmword_1ED452F28;
        }

        else
        {
          v10 = &unk_1ED456000;
        }

        (*v57)(v45);
LABEL_89:
        if (++v44 >= v9[182])
        {
          break;
        }

        continue;
      }
    }

LABEL_183:
    v89 = *v18;
    a2 = v347;
    if (*v18)
    {
      v90 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_189;
      }

      v91 = v10[350];
      if (v91)
      {
        xmmword_1ED452F18(v91);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v89);
      --qword_1ED456A90;
      off_1ED452EB0(v89);
      v89 = v10[350];
      if (v89)
      {
        v90 = &xmmword_1ED452F28;
LABEL_189:
        (*v90)(v89);
      }
    }

    v92 = *(v9 + 93);
    a1 = v346;
    if (v92)
    {
      v93 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_196;
      }

      v94 = v10[350];
      if (v94)
      {
        xmmword_1ED452F18(v94);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v92);
      --qword_1ED456A90;
      off_1ED452EB0(v92);
      v92 = v10[350];
      if (v92)
      {
        v93 = &xmmword_1ED452F28;
LABEL_196:
        (*v93)(v92);
      }
    }

    v9[182] = 0;
    *(v9 + 90) = 0;
    *(v9 + 93) = 0;
  }

  while (!v6 && v347 > 0);
  if (v344)
  {
    if (!v6)
    {
      *&v354[0] = 0;
      v6 = sub_1819AE4E4(a1, 0x17u, v354, 0);
      if (!v6)
      {
        v281 = *&v354[0];
        if (!sub_1818DF6EC(*&v354[0], 0))
        {
          v282 = v281[16];
          if ((*(v282 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v282, 1);
          }

          else
          {
            *v282 = 1;
            *(v282 + 20) = 4;
          }

          v283 = *(*v281 + 24);
          if (v283)
          {
            xmmword_1ED452F28(v283);
          }
        }

        v284 = v351;
        if ((v351 & 0x80000000) != 0)
        {
          sub_1819012D0(101409);
        }

        else
        {
          v285 = v350;
          if (!sub_1818DF6EC(v281, 1u))
          {
            if (v285)
            {
              v286 = sub_1818900D0(v281[16] + 64, v285, v284, 0, 0);
              if (v286)
              {
                v287 = v286;
                v288 = *v281;
                *(v288 + 80) = v287;
                sub_181932D5C(v288, v287);
                sub_18193C988(*v281, v287);
              }
            }

            v289 = *(*v281 + 24);
            if (v289)
            {
              xmmword_1ED452F28(v289);
            }
          }
        }

        sqlite3_step(v281);
        v6 = sqlite3_reset(v281);
        if (!sub_1818DF6EC(v281, 1u))
        {
          v290 = *(*v281 + 24);
          if (v290)
          {
            xmmword_1ED452F28(v290);
          }
        }

        goto LABEL_596;
      }
    }
  }

LABEL_597:
  v291 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v292 = v10[350];
    if (v292)
    {
      xmmword_1ED452F18(v292);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
    --qword_1ED456A90;
    off_1ED452EB0(v9);
    v9 = v10[350];
    if (v9)
    {
      v291 = &xmmword_1ED452F28;
      goto LABEL_602;
    }
  }

  else
  {
LABEL_602:
    (*v291)(v9);
  }

  v293 = v350;
  if (v350)
  {
    v294 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_609;
    }

    v295 = v10[350];
    if (v295)
    {
      xmmword_1ED452F18(v295);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v293);
    --qword_1ED456A90;
    off_1ED452EB0(v293);
    v293 = v10[350];
    if (v293)
    {
      v294 = &xmmword_1ED452F28;
LABEL_609:
      (*v294)(v293);
    }
  }

  return v6;
}

uint64_t sub_1819C81F4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3;
  v5 = a1;
  v6 = *(a3 + 8);
  if (v6 < 1)
  {
    v7 = 0;
    goto LABEL_127;
  }

  v7 = 0;
  v8 = *(a3 + 8);
  while (v6 < 1)
  {
    v11 = 0;
    if (MEMORY[0x28])
    {
      goto LABEL_11;
    }

LABEL_30:
    v19 = sub_1819C4090(v5, v11);
    if (!v19)
    {
      v25 = *v11;
      v103 = 0;
      v19 = sub_1819AE4E4(v5, 0x1Eu, &v103, 0);
      if (!v19)
      {
        v26 = v103;
        if (!sub_1818DF6EC(v103, 0))
        {
          v27 = *(v26 + 16);
          if ((*(v27 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v27, a2);
          }

          else
          {
            *v27 = a2;
            *(v27 + 20) = 4;
          }

          v48 = *(*v26 + 24);
          if (v48)
          {
            xmmword_1ED452F28(v48);
          }
        }

        if (!sub_1818DF6EC(v26, 1u))
        {
          v49 = *(v26 + 16);
          if ((*(v49 + 84) & 0x9000) != 0)
          {
            sub_18193D288(v49 + 64, v25);
          }

          else
          {
            *(v49 + 64) = v25;
            *(v49 + 84) = 4;
          }

          v50 = *(*v26 + 24);
          if (v50)
          {
            xmmword_1ED452F28(v50);
          }
        }

        sqlite3_step(v26);
        v19 = sqlite3_reset(v26);
      }
    }

    *a4 = 0;
    if (v8 < 2)
    {
      goto LABEL_124;
    }

LABEL_86:
    if (v19)
    {
      goto LABEL_124;
    }

    v6 = *(v4 + 8);
    --v8;
  }

  v9 = *v4;
  v10 = 1;
  do
  {
    v12 = *v9++;
    v11 = v12;
  }

  while (*v12 != v8 - 1 && v10++ < v6);
  if (!*(v11 + 5))
  {
    goto LABEL_30;
  }

LABEL_11:
  v14 = v7;
  v15 = *(v11 + 10);
  v16 = v11[18];
  v17 = *v11;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  iRow = 0;
  v18 = sub_1819AE4E4(v5, 0x20u, &v99, 0);
  if (v18)
  {
    v19 = v18;
    v20 = v14;
    goto LABEL_13;
  }

  v28 = v99;
  if (!sub_1818DF6EC(v99, 0))
  {
    v29 = *(v28 + 16);
    if ((*(v29 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v29, a2);
    }

    else
    {
      *v29 = a2;
      *(v29 + 20) = 4;
    }

    v30 = *(*v28 + 24);
    if (v30)
    {
      xmmword_1ED452F28(v30);
    }
  }

  if (!sub_1818DF6EC(v28, 1u))
  {
    v31 = *(v28 + 16);
    if ((*(v31 + 84) & 0x9000) != 0)
    {
      sub_18193D288(v31 + 64, v17);
    }

    else
    {
      *(v31 + 64) = v17;
      *(v31 + 84) = 4;
    }

    v32 = *(*v28 + 24);
    if (v32)
    {
      xmmword_1ED452F28(v32);
    }
  }

  v93 = v17;
  if (sqlite3_step(v28) != 100)
  {
    v19 = sqlite3_reset(v28);
    v38 = 0;
    goto LABEL_51;
  }

  v33 = sqlite3_column_blob(v28, 4);
  v34 = sqlite3_column_bytes(v28, 4);
  v35 = sqlite3_column_int64(v28, 1);
  v36 = sub_1819C9424(v33, v34, &v103, v15, v16, &iRow);
  v37 = sqlite3_reset(v28);
  if (v36)
  {
    v19 = v36;
    v20 = v14;
    v4 = a3;
    goto LABEL_13;
  }

  v19 = v37;
  v38 = 0;
  if (v37)
  {
    goto LABEL_51;
  }

  v41 = iRow;
  if (!iRow)
  {
    goto LABEL_51;
  }

  while (2)
  {
    v38 = v41;
    v98 = 0;
    v97 = 0;
    v42 = sub_1819AE770(v5, v41, &v98, &v97);
    if (!v42)
    {
      v42 = sub_1819C9424(v98, v97, &v101, v15, v16, &iRow);
      if (!v42)
      {
        v42 = sub_1819C3C04(v5, v38, v101, v102);
      }
    }

    v19 = v42;
    v43 = v98;
    if (v98)
    {
      v44 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_67;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v43);
      --qword_1ED456A90;
      off_1ED452EB0(v43);
      v43 = xmmword_1ED456AF0;
      v5 = a1;
      if (xmmword_1ED456AF0)
      {
        v44 = &xmmword_1ED452F28;
LABEL_67:
        (*v44)(v43);
      }
    }

    if (!v19)
    {
      v41 = iRow;
      if (iRow)
      {
        continue;
      }
    }

    break;
  }

  v20 = v14;
  v45 = v35;
  v4 = a3;
  if (!v19)
  {
    v98 = 0;
    v19 = sub_1819AE4E4(v5, 0x11u, &v98, 0);
    if (!v19)
    {
      v46 = v98;
      if (!sub_1818DF6EC(v98, 0))
      {
        v47 = *(v46 + 16);
        if ((*(v47 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v47, v45);
        }

        else
        {
          *v47 = v45;
          *(v47 + 20) = 4;
        }

        v64 = *(*v46 + 24);
        if (v64)
        {
          xmmword_1ED452F28(v64);
        }
      }

      if (!sub_1818DF6EC(v46, 1u))
      {
        v65 = v38 - 1;
        v66 = *(v46 + 16);
        if ((*(v66 + 84) & 0x9000) != 0)
        {
          sub_18193D288(v66 + 64, v65);
        }

        else
        {
          *(v66 + 64) = v65;
          *(v66 + 84) = 4;
        }

        v67 = *(*v46 + 24);
        if (v67)
        {
          xmmword_1ED452F28(v67);
        }
      }

      sqlite3_step(v46);
      v19 = sqlite3_reset(v46);
    }

LABEL_51:
    v20 = v14;
    v4 = a3;
    if (!v19)
    {
      v98 = 0;
      v19 = sub_1819AE4E4(v5, 0x21u, &v98, 0);
      if (!v19)
      {
        v39 = v98;
        if (!sub_1818DF6EC(v98, 0))
        {
          v40 = v39[16];
          if ((*(v40 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v40, v38);
          }

          else
          {
            *v40 = v38;
            *(v40 + 20) = 4;
          }

          v51 = *(*v39 + 24);
          if (v51)
          {
            xmmword_1ED452F28(v51);
          }
        }

        v52 = v104;
        if ((v104 & 0x80000000) != 0)
        {
          sub_1819012D0(101409);
          v54 = v93;
        }

        else
        {
          v53 = v103;
          v54 = v93;
          if (!sub_1818DF6EC(v39, 1u))
          {
            if (v53)
            {
              v55 = sub_1818900D0(v39[16] + 64, v53, v52, 0, 0);
              if (v55)
              {
                v56 = v55;
                v57 = *v39;
                *(v57 + 80) = v56;
                sub_181932D5C(v57, v56);
                sub_18193C988(*v39, v56);
              }
            }

            v58 = *(*v39 + 24);
            if (v58)
            {
              xmmword_1ED452F28(v58);
            }
          }
        }

        if (!sub_1818DF6EC(v39, 2u))
        {
          v59 = v39[16];
          if ((*(v59 + 148) & 0x9000) != 0)
          {
            sub_18193D288(v59 + 128, a2);
          }

          else
          {
            *(v59 + 128) = a2;
            *(v59 + 148) = 4;
          }

          v60 = *(*v39 + 24);
          if (v60)
          {
            xmmword_1ED452F28(v60);
          }
        }

        if (!sub_1818DF6EC(v39, 3u))
        {
          v61 = v39[16];
          if ((*(v61 + 212) & 0x9000) != 0)
          {
            sub_18193D288(v61 + 192, v54);
          }

          else
          {
            *(v61 + 192) = v54;
            *(v61 + 212) = 4;
          }

          v62 = *(*v39 + 24);
          if (v62)
          {
            xmmword_1ED452F28(v62);
          }
        }

        sqlite3_step(v39);
        v19 = sqlite3_reset(v39);
        if (!sub_1818DF6EC(v39, 1u))
        {
          v63 = *(*v39 + 24);
          if (v63)
          {
            xmmword_1ED452F28(v63);
          }
        }
      }
    }
  }

LABEL_13:
  v21 = v103;
  if (v103)
  {
    v22 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_19;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
    --qword_1ED456A90;
    off_1ED452EB0(v21);
    v21 = xmmword_1ED456AF0;
    v5 = a1;
    if (xmmword_1ED456AF0)
    {
      v22 = &xmmword_1ED452F28;
LABEL_19:
      (*v22)(v21);
    }
  }

  v23 = v101;
  if (v101)
  {
    v24 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_26;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v23);
    --qword_1ED456A90;
    off_1ED452EB0(v23);
    v23 = xmmword_1ED456AF0;
    v5 = a1;
    if (xmmword_1ED456AF0)
    {
      v24 = &xmmword_1ED452F28;
LABEL_26:
      (*v24)(v23);
    }
  }

  v7 = v20 + 1;
  if (v8 >= 2)
  {
    goto LABEL_86;
  }

LABEL_124:
  if (!v19)
  {
LABEL_127:
    if (v7 == *(v4 + 8))
    {
      v19 = 0;
      goto LABEL_159;
    }

    v103 = 0;
    v101 = 0;
    v68 = sub_1819AE4E4(v5, 0x23u, &v103, 0);
    if (v68)
    {
      v19 = v68;
      v69 = 0;
      goto LABEL_151;
    }

    v70 = v103;
    if (!sub_1818DF6EC(v103, 0))
    {
      v71 = *(v70 + 16);
      if ((*(v71 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v71, a2);
      }

      else
      {
        *v71 = a2;
        *(v71 + 20) = 4;
      }

      v72 = *(*v70 + 24);
      if (v72)
      {
        xmmword_1ED452F28(v72);
      }
    }

    v73 = v7;
    if (sqlite3_step(v70) == 100)
    {
      v74 = 0;
      v75 = 0;
      v69 = 0;
      while (1)
      {
        if (v74 >= v75)
        {
          v75 += 16;
          v77 = sqlite3_initialize();
          if (!v75 || v77 || (v78 = sub_18190287C(v69, 4 * v75, 0x100004052888210)) == 0)
          {
            sqlite3_reset(v70);
            v19 = 7;
            goto LABEL_150;
          }

          v69 = v78;
        }

        v76 = v74 + 1;
        *(v69 + 4 * v74++) = sqlite3_column_int(v70, 0);
        if (sqlite3_step(v70) != 100)
        {
          goto LABEL_147;
        }
      }
    }

    v69 = 0;
    v76 = 0;
LABEL_147:
    v79 = sqlite3_reset(v70);
    if (v79 || (v79 = sub_1819AE4E4(v5, 0x1Fu, &v101, 0), v79))
    {
      v19 = v79;
LABEL_150:
      v7 = v73;
LABEL_151:
      v80 = (v5 + 464);
LABEL_152:
      *v80 = 0;
      if (!v69)
      {
        goto LABEL_159;
      }
    }

    else
    {
      v83 = v101;
      if (!sub_1818DF6EC(v101, 1u))
      {
        v84 = *(v83 + 16);
        if ((*(v84 + 84) & 0x9000) != 0)
        {
          sub_18193D288(v84 + 64, a2);
        }

        else
        {
          *(v84 + 64) = a2;
          *(v84 + 84) = 4;
        }

        v85 = *(*v83 + 24);
        if (v85)
        {
          xmmword_1ED452F28(v85);
        }
      }

      v80 = (v5 + 464);
      *(v5 + 464) = 1;
      if (!v76)
      {
        v19 = 0;
        v7 = v73;
        goto LABEL_152;
      }

      for (i = 0; i < v76; ++i)
      {
        v87 = *(v69 + 4 * i);
        if (i == v87)
        {
          v19 = 0;
        }

        else
        {
          if (!sub_1818DF6EC(v83, 2u))
          {
            v88 = *(v83 + 16);
            if ((*(v88 + 148) & 0x9000) != 0)
            {
              sub_18193D288(v88 + 128, v87);
            }

            else
            {
              *(v88 + 128) = v87;
              *(v88 + 148) = 4;
            }

            v89 = *(*v83 + 24);
            if (v89)
            {
              xmmword_1ED452F28(v89);
            }
          }

          if (!sub_1818DF6EC(v83, 0))
          {
            v90 = *(v83 + 16);
            if ((*(v90 + 20) & 0x9000) != 0)
            {
              sub_18193D288(v90, i);
            }

            else
            {
              *v90 = i;
              *(v90 + 20) = 4;
            }

            v91 = *(*v83 + 24);
            if (v91)
            {
              xmmword_1ED452F28(v91);
            }
          }

          sqlite3_step(v83);
          v19 = sqlite3_reset(v83);
        }

        if (v19)
        {
          break;
        }
      }

      *v80 = 0;
      v7 = v73;
    }

    v81 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_158:
      (*v81)(v69);
      goto LABEL_159;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v69);
    --qword_1ED456A90;
    off_1ED452EB0(v69);
    v69 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v81 = &xmmword_1ED452F28;
      goto LABEL_158;
    }
  }

LABEL_159:
  *a4 = v7;
  return v19;
}

uint64_t sub_1819C8E14(uint64_t result, unint64_t a2, int a3, _DWORD *a4)
{
  if (!*a4)
  {
    v5 = *(result + 8);
    v6 = v5 + 20;
    if (*(result + 12) < v5 + 20)
    {
      v8 = a2;
      v9 = result;
      v10 = *result;
      result = sqlite3_initialize();
      if (v6)
      {
        v11 = result == 0;
      }

      else
      {
        v11 = 0;
      }

      if (!v11 || (result = sub_18190287C(v10, v6, 0x100004077774924)) == 0)
      {
        *a4 = 7;
        return result;
      }

      v12 = result;
      result = v9;
      *(v9 + 12) = v6;
      *v9 = v12;
      a2 = v8;
      if (*a4)
      {
        return result;
      }
    }

    v13 = 0;
    v14 = (*result + *(result + 8));
    do
    {
      v15 = a2;
      *v14++ = a2 | 0x80;
      ++v13;
      v16 = a2 > 0x7F;
      a2 >>= 7;
    }

    while (v16);
    v17 = 0;
    *(v14 - 1) = v15;
    v18 = *(result + 8) + v13;
    *(result + 8) = v18;
    v19 = (*result + v18);
    v20 = a3;
    do
    {
      v21 = v20;
      *v19++ = v20 | 0x80;
      ++v17;
      v16 = v20 > 0x7F;
      v20 >>= 7;
    }

    while (v16);
    *(v19 - 1) = v21;
    *(result + 8) += v17;
  }

  return result;
}

uint64_t sub_1819C8F50(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = a1[2];
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    a1[2] = v2 + 1;
  }

  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  if (v5 >= v4)
  {
    *a1 = 0;
    return 0;
  }

  v6 = *a1;
  if (v1)
  {
    v7 = (v6 + v5);
    v8 = *v7;
    if (*v7 < 0)
    {
      v8 = v8 & 0x7F | (v7[1] << 7);
      if (v7[1] < 0)
      {
        v8 = v8 & 0x3FFF | (v7[2] << 14);
        if (v7[2] < 0)
        {
          v8 = v8 & 0x1FFFFF | (v7[3] << 21);
          if (v7[3] < 0)
          {
            v8 = v8 & 0xFFFFFFF | ((v7[4] & 7) << 28);
            v9 = 5;
          }

          else
          {
            v9 = 4;
          }
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    v5 += v9;
    *(a1 + 3) = v5;
  }

  else
  {
    v8 = 0;
  }

  v11 = (v6 + v5);
  v12 = *v11;
  if (*v11 < 0)
  {
    v12 = v12 & 0x7F | (v11[1] << 7);
    if (v11[1] < 0)
    {
      v12 = v12 & 0x3FFF | (v11[2] << 14);
      if (v11[2] < 0)
      {
        v12 = v12 & 0x1FFFFF | (v11[3] << 21);
        if (v11[3] < 0)
        {
          v12 = v12 & 0xFFFFFFF | ((v11[4] & 7) << 28);
          v13 = 5;
        }

        else
        {
          v13 = 4;
        }
      }

      else
      {
        v13 = 3;
      }
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 + v5;
  *(a1 + 3) = v14;
  if (v8 <= v1 && v12 && v12 <= v4 - v14)
  {
    v17 = v12 + v8;
    v18 = a1[3];
    if (*(a1 + 9) >= (v12 + v8))
    {
      if (!v18)
      {
        return 0;
      }

      v19 = a1;
    }

    else
    {
      v19 = a1;
      if (sqlite3_initialize())
      {
        return 7;
      }

      v20 = sub_18190287C(v18, v12 + v8, 0x100004077774924);
      if (!v20)
      {
        return 7;
      }

      v18 = v20;
      *(v19 + 9) = v17;
      v19[3] = v20;
      v6 = *v19;
      v14 = *(v19 + 3);
    }

    memcpy((v18 + v8), (v6 + v14), v12);
    *(v19 + 8) = v17;
    v21 = *(v19 + 3) + v12;
    *(v19 + 3) = v21;
    if (!v19[2])
    {
      v22 = *(*v19 + v21);
      if (v22 < 0)
      {
        v23 = sub_1819AE700((*v19 + v21), v19 + 12);
        LODWORD(v21) = *(v19 + 3);
        v22 = *(v19 + 12);
      }

      else
      {
        *(v19 + 12) = v22;
        v23 = 1;
      }

      v24 = v21 + v23;
      *(v19 + 3) = v21 + v23;
      if (*(v19 + 2) - (v21 + v23) >= v22)
      {
        v16 = 0;
        v19[5] = *v19 + v24;
        *(v19 + 3) = v22 + v24;
        return v16;
      }

      return 267;
    }

    return 0;
  }

  return 267;
}

uint64_t sub_1819C91D4(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, signed int a4, const void *a5, int a6)
{
  v12 = *(a2 + 2);
  v13 = *a2;
  if (*(a2 + 3) >= a4)
  {
    v17 = *(a2 + 2);
  }

  else
  {
    v14 = sqlite3_initialize();
    result = 7;
    if (!a4 || v14)
    {
      return result;
    }

    v16 = sub_18190287C(v13, a4, 0x100004077774924);
    if (!v16)
    {
      return 7;
    }

    v13 = v16;
    *(a2 + 3) = a4;
    *a2 = v16;
    v17 = *(a2 + 2);
  }

  if (v17 >= a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = v17;
  }

  if (v18 < 1)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v19 = 0;
    while (v13[v19] == a3[v19])
    {
      if (v18 == ++v19)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v18) = v19;
  }

LABEL_17:
  if (a4 - v18 < 1)
  {
    return 267;
  }

  memcpy(v13, a3, a4);
  *(a2 + 2) = a4;
  if (v12)
  {
    v20 = 0;
    v21 = (*a1 + *(a1 + 8));
    v22 = v18;
    do
    {
      v23 = v22;
      *v21++ = v22 | 0x80;
      ++v20;
      v24 = v22 > 0x7F;
      v22 >>= 7;
    }

    while (v24);
    *(v21 - 1) = v23;
    v25 = *(a1 + 8) + v20;
    *(a1 + 8) = v25;
  }

  else
  {
    v25 = *(a1 + 8);
  }

  v26 = 0;
  v27 = (*a1 + v25);
  v28 = (a4 - v18);
  do
  {
    v29 = v28;
    *v27++ = v28 | 0x80;
    ++v26;
    v24 = v28 > 0x7F;
    v28 >>= 7;
  }

  while (v24);
  *(v27 - 1) = v29;
  v30 = *(a1 + 8);
  *(a1 + 8) = v30 + v26;
  memcpy((*a1 + v30 + v26), &a3[v18], (a4 - v18));
  v31 = *(a1 + 8) + (a4 - v18);
  *(a1 + 8) = v31;
  if (!a5)
  {
    return 0;
  }

  v32 = 0;
  v33 = (*a1 + v31);
  v34 = a6;
  do
  {
    v35 = v34;
    *v33++ = v34 | 0x80;
    ++v32;
    v24 = v34 > 0x7F;
    v34 >>= 7;
  }

  while (v24);
  *(v33 - 1) = v35;
  v36 = *(a1 + 8);
  *(a1 + 8) = v36 + v32;
  memcpy((*a1 + v36 + v32), a5, a6);
  result = 0;
  *(a1 + 8) += a6;
  return result;
}

uint64_t sub_1819C9424(char *a1, int a2, uint64_t a3, const void *a4, int a5, void *a6)
{
  v43[0] = 0;
  v43[1] = 0;
  if (a2 < 1)
  {
    return 267;
  }

  v11 = *a1;
  if (*(a3 + 12) < a2)
  {
    v12 = a2;
    v13 = *a3;
    if (sqlite3_initialize())
    {
      return 7;
    }

    v15 = sub_18190287C(v13, v12, 0x100004077774924);
    if (!v15)
    {
      return 7;
    }

    a2 = v12;
    *(a3 + 12) = v12;
    *a3 = v15;
  }

  *(a3 + 8) = 0;
  *__s1 = 0u;
  v48 = 0u;
  v49 = 0;
  v44 = a1;
  v45 = a2;
  if (*a1)
  {
    v16 = sub_1819AE95C(a1 + 1, __s1) + 1;
  }

  else
  {
    v16 = 1;
  }

  v46 = v16;
  while (1)
  {
    result = sub_1819C8F50(&v44);
    if (result || !v44)
    {
      break;
    }

    v18 = __s1[1];
    v19 = v48;
    if (*(a3 + 8))
    {
LABEL_14:
      result = sub_1819C91D4(a3, v43, v18, v19, *(&v48 + 1), v49);
      if (result)
      {
        break;
      }
    }

    else
    {
      v20 = v48 - a5;
      if (v48 >= a5)
      {
        v21 = a5;
      }

      else
      {
        v21 = v48;
      }

      if (!a4 || (__s1[1] ? (v22 = v21 == 0) : (v22 = 1), v22 || (v23 = __s1[1], v24 = v48, v25 = memcmp(__s1[1], a4, v21), v19 = v24, v18 = v23, !v25)))
      {
        v25 = v20;
      }

      if (v11)
      {
        v26 = v25 == 0;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      if ((v25 & 0x80000000) == 0 && (v27 & 1) == 0)
      {
        v28 = __s1[0];
        **a3 = *a1;
        if (v28)
        {
          v29 = (*a3 + 1);
          v17 = 1;
          v30 = v28;
          do
          {
            v31 = v30;
            *v29++ = v30 | 0x80;
            ++v17;
            v32 = v30 > 0x7F;
            v30 >>= 7;
          }

          while (v32);
          *(v29 - 1) = v31;
        }

        else
        {
          v17 = 1;
        }

        *(a3 + 8) = v17;
        *a6 = v28;
        goto LABEL_14;
      }
    }
  }

  if (!*(a3 + 8))
  {
    v33 = __s1[0];
    **a3 = *a1;
    if (v33)
    {
      v34 = (*a3 + 1);
      v35 = 1;
      v36 = v33;
      do
      {
        v37 = v36;
        *v34++ = v36 | 0x80;
        ++v35;
        v32 = v36 > 0x7F;
        v36 >>= 7;
      }

      while (v32);
      *(v34 - 1) = v37;
    }

    else
    {
      v35 = 1;
    }

    *(a3 + 8) = v35;
    *a6 = v33;
  }

  v38 = __s1[1];
  v39 = result;
  if (__s1[1])
  {
    v40 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_53;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v38);
    --qword_1ED456A90;
    off_1ED452EB0(v38);
    v38 = xmmword_1ED456AF0;
    result = v39;
    if (xmmword_1ED456AF0)
    {
      v40 = &xmmword_1ED452F28;
LABEL_53:
      (*v40)(v38);
      result = v39;
    }
  }

  v41 = v43[0];
  if (v43[0])
  {
    v42 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_60;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v41);
    --qword_1ED456A90;
    off_1ED452EB0(v41);
    v41 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v42 = &xmmword_1ED452F28;
LABEL_60:
      (*v42)(v41);
    }

    return v39;
  }

  return result;
}

void sub_1819C9794(sqlite3_context *a1, int a2, void *a3)
{
  v256 = *MEMORY[0x1E69E9840];
  if (a2 >= 7)
  {
    if (a1)
    {
      *(a1 + 9) = 1;
      v4 = *a1;

      sub_1818900D0(v4, "wrong number of arguments to function snippet()", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    }

    return;
  }

  v5 = *a3;
  if (*a3)
  {
    if ((*(v5 + 20) & 0xFBF) == 0xA01 && *(v5 + 23) == 112 && !strcmp(*v5, "fts3cursor"))
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        v9 = a2;
        v10 = a3;
        LODWORD(v11) = 15;
        v12 = "<b>...</b>";
        LODWORD(v13) = -1;
        v14 = "</b>";
        v15 = "<b>";
        if (v9 <= 3)
        {
          if (v9 == 2)
          {
            goto LABEL_53;
          }

          if (v9 != 3)
          {
            goto LABEL_63;
          }

          goto LABEL_46;
        }

        if (v9 == 4)
        {
          goto LABEL_39;
        }

        if (v9 != 5)
        {
          v16 = a3[5];
          if (v16)
          {
            v17 = *(v16 + 20);
            if ((v17 & 0x24) != 0)
            {
              v11 = *v16;
              goto LABEL_34;
            }

            if ((v17 & 8) != 0)
            {
              v123 = *v16;
              if (*v16 >= -9.22337204e18)
              {
                if (v123 <= 9.22337204e18)
                {
                  *&v11 = v123;
                }

                else
                {
                  LODWORD(v11) = -1;
                }
              }

              else
              {
                LODWORD(v11) = 0;
              }

              goto LABEL_34;
            }

            if ((v17 & 0x12) != 0 && *(v16 + 8))
            {
              v118 = sub_18193CFCC(v16);
              v10 = a3;
              LODWORD(v11) = v118;
              goto LABEL_34;
            }
          }

          else
          {
            sub_1819012D0(92237);
            v10 = a3;
          }

          LODWORD(v11) = 0;
        }

LABEL_34:
        v21 = v10[4];
        if (!v21)
        {
          sub_1819012D0(92237);
          v10 = a3;
          goto LABEL_38;
        }

        v22 = *(v21 + 20);
        if ((v22 & 0x24) != 0)
        {
          v13 = *v21;
          goto LABEL_39;
        }

        if ((v22 & 8) == 0)
        {
          if ((v22 & 0x12) != 0 && *(v21 + 8))
          {
            v116 = sub_18193CFCC(v21);
            v10 = a3;
            LODWORD(v13) = v116;
            goto LABEL_39;
          }

LABEL_38:
          LODWORD(v13) = 0;
          goto LABEL_39;
        }

        v117 = *v21;
        if (*v21 >= -9.22337204e18)
        {
          if (v117 <= 9.22337204e18)
          {
            *&v13 = v117;
          }

          else
          {
            LODWORD(v13) = -1;
          }
        }

        else
        {
          LODWORD(v13) = 0;
        }

LABEL_39:
        v23 = v10[3];
        if (v23)
        {
          v24 = *(v23 + 20);
          if ((~v24 & 0x202) == 0 && *(v23 + 22) == 1)
          {
            v12 = *(v23 + 8);
LABEL_46:
            v26 = v10[2];
            if (!v26)
            {
              goto LABEL_52;
            }

            v27 = *(v26 + 20);
            if ((~v27 & 0x202) == 0 && *(v26 + 22) == 1)
            {
              v14 = *(v26 + 8);
              goto LABEL_53;
            }

            if (v27)
            {
LABEL_52:
              v14 = 0;
            }

            else
            {
              v28 = sub_18193CB70(v26, 1);
              v10 = a3;
              v14 = v28;
            }

LABEL_53:
            v29 = v10[1];
            if (v29)
            {
              v30 = *(v29 + 20);
              if ((~v30 & 0x202) != 0 || *(v29 + 22) != 1)
              {
                if (v30)
                {
                  goto LABEL_65;
                }

                v15 = sub_18193CB70(v29, 1);
              }

              else
              {
                v15 = *(v29 + 8);
              }

              if (v12 && v14 && v15)
              {
                if (!LODWORD(v11))
                {
                  if (a1)
                  {

                    sub_18190B23C(a1, &byte_181A2878D, -1, 1u, 0);
                  }

                  return;
                }

LABEL_63:
                if (sub_1819C01F8(a1, v8))
                {
                  return;
                }

                if (!v8[3])
                {
                  if (!a1)
                  {
                    return;
                  }

                  v119 = &byte_181A2878D;
                  v120 = a1;
                  v121 = 0;
                  v122 = 0;
                  goto LABEL_264;
                }

                v212 = v12;
                v213 = v15;
                v211 = v14;
                v241 = v8;
                v31 = *v8;
                if (SLODWORD(v11) <= -64)
                {
                  v32 = -64;
                }

                else
                {
                  v32 = LODWORD(v11);
                }

                if (v32 >= 64)
                {
                  v32 = 64;
                }

                v33 = v32 - 1;
                v223 = vdupq_n_s64(2uLL);
                v220 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
                v221 = vdupq_n_s64(0x3FuLL);
                v218 = 1;
                v227 = LODWORD(v13);
                v229 = *v8;
                v216 = LODWORD(v11);
                v214 = v32 - 1;
                v215 = -v32;
                v230 = -v32;
                if ((LODWORD(v11) & 0x80000000) == 0)
                {
                  goto LABEL_75;
                }

LABEL_76:
                v34 = 0;
                v35 = 0;
                v36 = 0;
                while (1)
                {
                  v219 = v34;
                  v37 = &v255[6 * v34 + 1];
                  *v37 = 0;
                  v37[1] = 0;
                  v225 = v37;
                  v37[2] = 0;
                  if (*(v31 + 48) >= 1)
                  {
                    break;
                  }

LABEL_77:
                  v35 |= v225[1];
                  v34 = v219 + 1;
                  if (v219 + 1 == v218)
                  {
                    if (*&v36 != v35 && v218 != 4)
                    {
                      ++v218;
                      LODWORD(v13) = v227;
                      v31 = v229;
                      v33 = v214;
                      v230 = v215;
                      if (v216 < 0)
                      {
                        goto LABEL_76;
                      }

LABEL_75:
                      v230 = (v33 + v218) / v218;
                      goto LABEL_76;
                    }

                    v228 = 0;
                    v238 = 0;
                    LODWORD(v240) = 0;
                    v124 = 0;
                    while (2)
                    {
                      v133 = &v255[6 * v228 + 1];
                      v226 = *v241;
                      v252 = 0;
                      v134 = *(v133 + 2);
                      v136 = *v133;
                      v135 = v133[1];
                      v137 = sqlite3_column_text(v241[2], *v133 + 1);
                      v138 = v241[2];
                      __sa = v137;
                      v139 = v136 + 1;
                      if (!v137)
                      {
                        if (sqlite3_column_type(v138, v139) == 5)
                        {
                          v149 = 0;
                        }

                        else
                        {
                          v149 = 7;
                        }

                        goto LABEL_387;
                      }

                      v140 = sqlite3_column_bytes(v138, v139);
                      v141 = *(v226 + 72);
                      v142 = *v141;
                      v143 = *(v241 + 8);
                      v242 = 0;
                      v236 = v142;
                      v224 = v140;
                      v144 = (*(v142 + 24))(v141, __sa);
                      if (v144)
                      {
                        v149 = v144;
LABEL_401:
                        v31 = v229;
                        v41 = v149;
                        goto LABEL_249;
                      }

                      *v242 = v141;
                      v234 = v242;
                      if (*v236 >= 1)
                      {
                        v145 = (*(v236 + 48))(v242, v143);
                        v234 = v242;
                        if (v145)
                        {
                          v149 = v145;
                          (*(v236 + 32))(v242);
                          goto LABEL_401;
                        }
                      }

                      v146 = 0;
                      v147 = 0;
LABEL_298:
                      v248 = 0;
                      v251 = -1;
                      v250 = 0;
                      v150 = (*(v236 + 40))(v234, &v248, &v251, &v250 + 4, &v250, &v252);
                      if (v150)
                      {
                        if (v150 != 101)
                        {
LABEL_385:
                          v149 = v150;
                          goto LABEL_386;
                        }

                        v200 = strlen(&__sa[v147]);
                        v201 = v200;
                        v202 = v200;
                        if (v240 + v200 + 1 >= v238)
                        {
                          v203 = v200 + v238 + 100;
                          v204 = sqlite3_initialize();
                          v149 = 7;
                          if (!v203)
                          {
                            goto LABEL_386;
                          }

                          if (v204)
                          {
                            goto LABEL_386;
                          }

                          v205 = sub_18190287C(v124, v203, 2812224923);
                          if (!v205)
                          {
                            goto LABEL_386;
                          }

                          v124 = v205;
                          v238 = v203;
                        }

                        memcpy((v124 + v240), &__sa[v147], v202);
LABEL_384:
                        v149 = 0;
                        LODWORD(v240) = v201 + v240;
                        *(v124 + v240) = 0;
                        goto LABEL_386;
                      }

                      v151 = v252;
                      if (v252 < v135)
                      {
                        v148 = 0;
                        goto LABEL_297;
                      }

                      if (!v146)
                      {
                        if (v134)
                        {
                          v152 = 0;
                          v222 = *(v241 + 8);
                          v153 = 1;
                          do
                          {
                            v154 = v153;
                            v155 = v134 >> v152++;
                            ++v153;
                          }

                          while ((v155 & 1) == 0);
                          v156 = v230 - 1;
                          do
                          {
                            --v154;
                            v157 = v134 >> v156--;
                          }

                          while ((v157 & 1) == 0);
                          if (v154 >= 2)
                          {
                            v255[0] = 0;
                            v158 = *(v226 + 72);
                            v159 = *v158;
                            v242 = 0;
                            v150 = (*(v159 + 24))(v158, &__sa[SHIDWORD(v250)], (v224 - HIDWORD(v250)), &v242);
                            if (v150)
                            {
                              goto LABEL_385;
                            }

                            *v242 = v158;
                            v160 = v242;
                            if (*v159 >= 1)
                            {
                              v161 = (*(v159 + 48))(v242, v222);
                              v160 = v242;
                              if (v161)
                              {
                                v149 = v161;
                                (*(v159 + 32))(v242);
                                goto LABEL_386;
                              }
                            }

                            v162 = v154 / 2 + v230;
                            do
                            {
                              v163 = v255[0];
                              if (v255[0] >= v162)
                              {
                                (*(v159 + 32))(v160);
                                goto LABEL_316;
                              }

                              v242 = 0;
                              v254 = 0;
                              v253 = 0;
                              v164 = (*(v159 + 40))(v160, &v242, &v254 + 4, &v254, &v253, v255);
                            }

                            while (!v164);
                            v149 = v164;
                            (*(v159 + 32))(v160);
                            if (v149 != 101)
                            {
                              goto LABEL_386;
                            }

LABEL_316:
                            v165 = ((v163 < v162) - v230 + v255[0]) & ~(((v163 < v162) - v230 + v255[0]) >> 31);
                            v135 += v165;
                            v134 >>= v165;
                          }
                        }

                        if (v228 || v135 >= 1)
                        {
                          v168 = strlen(v212);
                          v166 = v168;
                          v167 = v168;
                          if (v240 + v168 + 1 >= v238)
                          {
                            v169 = v168 + v238 + 100;
                            v170 = sqlite3_initialize();
                            v149 = 7;
                            if (!v169)
                            {
                              goto LABEL_386;
                            }

                            if (v170)
                            {
                              goto LABEL_386;
                            }

                            v171 = sub_18190287C(v124, v169, 2812224923);
                            if (!v171)
                            {
                              goto LABEL_386;
                            }

                            v124 = v171;
                            v238 = v169;
                          }

                          v172 = (v124 + v240);
                          v173 = v212;
LABEL_335:
                          memcpy(v172, v173, v167);
                          *(v124 + v166 + v240) = 0;
                          LODWORD(v240) = v166 + v240;
                        }

                        else
                        {
                          v166 = HIDWORD(v250);
                          if (HIDWORD(v250))
                          {
                            if (v250 < 0)
                            {
                              v166 = strlen(__sa);
                            }

                            if (v240 + v166 + 1 >= v238)
                            {
                              v167 = v166;
                              v174 = sqlite3_initialize();
                              v149 = 7;
                              if (v166 + v238 == -100)
                              {
                                goto LABEL_386;
                              }

                              if (v174)
                              {
                                goto LABEL_386;
                              }

                              v175 = sub_18190287C(v124, v166 + v238 + 100, 2812224923);
                              if (!v175)
                              {
                                goto LABEL_386;
                              }

                              v124 = v175;
                              v238 += v166 + 100;
                            }

                            else
                            {
                              v167 = v166;
                            }

                            v172 = (v124 + v240);
                            v173 = __sa;
                            goto LABEL_335;
                          }
                        }

                        v151 = v252;
                        if (v252 < v135)
                        {
                          v148 = 0;
                          v146 = 1;
                          goto LABEL_297;
                        }
                      }

                      if (v151 >= v135 + v230)
                      {
                        if (v228 != v218 - 1)
                        {
                          v149 = 0;
                          goto LABEL_386;
                        }

                        v206 = strlen(v212);
                        v201 = v206;
                        v207 = v206;
                        if (v240 + v206 + 1 < v238)
                        {
LABEL_396:
                          memcpy((v124 + v240), v212, v207);
                          goto LABEL_384;
                        }

                        v208 = v206 + v238 + 100;
                        v209 = sqlite3_initialize();
                        v149 = 7;
                        if (v208)
                        {
                          if (!v209)
                          {
                            v210 = sub_18190287C(v124, v208, 2812224923);
                            if (v210)
                            {
                              v124 = v210;
                              v238 = v208;
                              goto LABEL_396;
                            }
                          }
                        }

LABEL_386:
                        (*(v236 + 32))(v234);
LABEL_387:
                        if (++v228 >= v218)
                        {
                          goto LABEL_401;
                        }

                        v31 = v229;
                        v41 = v149;
                        if (v149)
                        {
LABEL_249:
                          v125 = *(v31 + 480);
                          if (v125)
                          {
                            v126 = v41;
                            v127 = v125[3];
                            v128 = v125[4];
                            v129 = v128[3];
                            if (v129)
                            {
                              xmmword_1ED452F18(v129);
                            }

                            sub_181929C84(v128, v125);
                            v130 = v128[3];
                            if (v130)
                            {
                              xmmword_1ED452F28(v130);
                            }

                            sqlite3_finalize(v127);
                            v41 = v126;
                          }

                          *(v31 + 480) = 0;
                          if (v41)
                          {
                            if (a1)
                            {
                              *(a1 + 9) = v41;
                              if (*(*a1 + 20))
                              {
                                switch(v41)
                                {
                                  case 516:
                                    v131 = "abort due to ROLLBACK";
                                    break;
                                  case 101:
                                    v131 = "no more rows available";
                                    break;
                                  case 100:
                                    v131 = "another row available";
                                    break;
                                  default:
                                    if (v41 > 0x1Cu || ((0x1410004uLL >> v41) & 1) != 0)
                                    {
                                      v131 = "unknown error";
                                    }

                                    else
                                    {
                                      v131 = off_1E6A27DD8[v41];
                                    }

                                    break;
                                }

                                sub_18190B23C(a1, v131, -1, 1u, 0);
                              }
                            }

                            if (v124)
                            {
                              v132 = &off_1ED452EB0;
                              if (!dword_1ED452E80)
                              {
                                goto LABEL_289;
                              }

                              if (xmmword_1ED456AF0)
                              {
                                xmmword_1ED452F18(xmmword_1ED456AF0);
                              }

                              qword_1ED456A48[0] -= xmmword_1ED452EC0(v124);
                              --qword_1ED456A90;
                              off_1ED452EB0(v124);
                              v124 = xmmword_1ED456AF0;
                              if (xmmword_1ED456AF0)
                              {
                                v132 = &xmmword_1ED452F28;
LABEL_289:
                                (*v132)(v124);
                              }
                            }

                            return;
                          }

                          if (!a1)
                          {
                            if (!v124)
                            {
                              return;
                            }

                            v217 = &off_1ED452EB0;
                            if (dword_1ED452E80)
                            {
                              if (xmmword_1ED456AF0)
                              {
                                xmmword_1ED452F18(xmmword_1ED456AF0);
                              }

                              qword_1ED456A48[0] -= xmmword_1ED452EC0(v124);
                              --qword_1ED456A90;
                              off_1ED452EB0(v124);
                              v124 = xmmword_1ED456AF0;
                              if (!xmmword_1ED456AF0)
                              {
                                return;
                              }

                              v217 = &xmmword_1ED452F28;
                            }

                            (*v217)(v124);
                            return;
                          }

                          v122 = sqlite3_free;
                          v120 = a1;
                          v119 = v124;
                          v121 = -1;
LABEL_264:
                          sub_18190B23C(v120, v119, v121, 1u, v122);
                          return;
                        }

                        continue;
                      }

                      break;
                    }

                    v176 = v151 - v135;
                    if (v151 <= v135)
                    {
                      goto LABEL_349;
                    }

                    v177 = &__sa[v147];
                    v178 = HIDWORD(v250) - v147;
                    if (v178 < 0)
                    {
                      v178 = strlen(v177);
                    }

                    if (v240 + v178 + 1 < v238)
                    {
                      v179 = v178;
                      goto LABEL_348;
                    }

                    v179 = v178;
                    v180 = sqlite3_initialize();
                    v148 = 7;
                    if (v178 + v238 == -100 || v180)
                    {
                      goto LABEL_373;
                    }

                    v181 = sub_18190287C(v124, v178 + v238 + 100, 2812224923);
                    if (v181)
                    {
                      v124 = v181;
                      v238 += v178 + 100;
LABEL_348:
                      memcpy((v124 + v240), v177, v179);
                      *(v124 + v240 + v178) = 0;
                      LODWORD(v240) = v240 + v178;
LABEL_349:
                      v182 = (1 << v176) & v134;
                      if (!v182)
                      {
                        goto LABEL_356;
                      }

                      v183 = strlen(v213);
                      v184 = v183;
                      v185 = v183;
                      if (v240 + v183 + 1 < v238)
                      {
                        goto LABEL_355;
                      }

                      v186 = v183 + v238 + 100;
                      v187 = sqlite3_initialize();
                      v148 = 7;
                      if (!v186 || v187)
                      {
                        goto LABEL_373;
                      }

                      v188 = sub_18190287C(v124, v186, 2812224923);
                      if (v188)
                      {
                        v124 = v188;
                        v238 = v186;
LABEL_355:
                        memcpy((v124 + v240), v213, v185);
                        *(v124 + v240 + v184) = 0;
                        LODWORD(v240) = v240 + v184;
LABEL_356:
                        v189 = SHIDWORD(v250);
                        v190 = v250 - HIDWORD(v250);
                        if (v250 - HIDWORD(v250) < 0)
                        {
                          v190 = strlen(&__sa[SHIDWORD(v250)]);
                        }

                        if (v240 + v190 + 1 < v238)
                        {
                          v191 = v190;
                          goto LABEL_364;
                        }

                        v191 = v190;
                        v192 = sqlite3_initialize();
                        v148 = 7;
                        if (v190 + v238 == -100 || v192)
                        {
                          goto LABEL_373;
                        }

                        v193 = sub_18190287C(v124, v190 + v238 + 100, 2812224923);
                        if (v193)
                        {
                          v124 = v193;
                          v238 += v190 + 100;
LABEL_364:
                          memcpy((v124 + v240), &__sa[v189], v191);
                          v240 = v240 + v190;
                          *(v124 + v240) = 0;
                          if (!v182)
                          {
                            v148 = 0;
                            goto LABEL_373;
                          }

                          v194 = strlen(v211);
                          v195 = v194;
                          v196 = v194;
                          if (v240 + v194 + 1 < v238)
                          {
                            goto LABEL_370;
                          }

                          v197 = v194 + v238 + 100;
                          v198 = sqlite3_initialize();
                          v148 = 7;
                          if (!v197 || v198)
                          {
LABEL_373:
                            v146 = 1;
                            v147 = v250;
LABEL_297:
                            v149 = v148;
                            if (v148)
                            {
                              goto LABEL_386;
                            }

                            goto LABEL_298;
                          }

                          v199 = sub_18190287C(v124, v197, 2812224923);
                          if (v199)
                          {
                            v124 = v199;
                            v238 = v197;
LABEL_370:
                            memcpy((v124 + v240), v211, v196);
                            v148 = 0;
                            LODWORD(v240) = v240 + v195;
                            *(v124 + v240) = 0;
                            goto LABEL_373;
                          }
                        }
                      }
                    }

                    v148 = 7;
                    goto LABEL_373;
                  }
                }

                v38 = 0;
                v39 = -1;
                while ((LODWORD(v13) & 0x80000000) == 0 && v38 != LODWORD(v13))
                {
LABEL_82:
                  if (++v38 >= *(v31 + 48))
                  {
                    goto LABEL_77;
                  }
                }

                v239 = v39;
                v245 = 0;
                v246 = 0;
                v247 = 0;
                v248 = v8;
                v249 = 0;
                v40 = v8[3];
                v255[0] = 0;
                v41 = sub_1819CCECC(v40, v255, sub_1819CCEA8, &v248);
                if (v41)
                {
                  goto LABEL_246;
                }

                v42 = v249;
                if (sqlite3_initialize())
                {
                  v41 = 7;
LABEL_246:
                  v124 = 0;
                  goto LABEL_249;
                }

                v43 = sub_181902484(48 * v42, 2585922466);
                if (!v43)
                {
                  v41 = 7;
                  v31 = v229;
                  v124 = 0;
                  goto LABEL_249;
                }

                v44 = v43;
                bzero(v43, 48 * v42);
                v246 = v44;
                v242 = v8;
                v243 = v38;
                v244 = v230;
                LODWORD(v245) = v42;
                LODWORD(v247) = -1;
                v45 = v8[3];
                LODWORD(v248) = 0;
                v41 = sub_1819CCECC(v45, &v248, sub_1819CCDA0, &v242);
                if (v41)
                {
                  __s = 0;
                  v233 = 0;
                  v235 = 0;
                  v237 = 0;
                  v39 = 0;
                }

                else
                {
                  if (v42 < 1)
                  {
                    v47 = v220;
                  }

                  else
                  {
                    if (v42 >= 5)
                    {
                      v48 = v42 & 3;
                      if ((v42 & 3) == 0)
                      {
                        v48 = 4;
                      }

                      v46 = v42 - v48;
                      v49 = 0uLL;
                      v50 = v36;
                      v51 = (v246 + 120);
                      v52 = v46;
                      v53 = xmmword_181A1FE70;
                      do
                      {
                        v54 = v51 + 6;
                        v55.i64[0] = *(v51 - 12);
                        v55.i64[1] = *(v51 - 6);
                        v56 = *v51;
                        v51 += 24;
                        v57.i64[0] = v56;
                        v57.i64[1] = *v54;
                        v58 = vdupq_n_s64(1uLL);
                        v50 = vorrq_s8(vbicq_s8(vshlq_u64(v58, vandq_s8(v53, v221)), vceqzq_s64(v55)), v50);
                        v49 = vorrq_s8(vbicq_s8(vshlq_u64(v58, vandq_s8(vaddq_s64(v53, v223), v221)), vceqzq_s64(v57)), v49);
                        v53 = vaddq_s64(v53, vdupq_n_s64(4uLL));
                        v52 -= 4;
                      }

                      while (v52);
                      v59 = vorrq_s8(v49, v50);
                      v36 = vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
                    }

                    else
                    {
                      v46 = 0;
                    }

                    v60 = &v246[48 * v46 + 24];
                    v47 = v220;
                    do
                    {
                      v61 = *v60;
                      v60 += 6;
                      if (v61)
                      {
                        v62 = 1 << v46;
                      }

                      else
                      {
                        v62 = 0;
                      }

                      *&v36 |= v62;
                      ++v46;
                    }

                    while (v42 != v46);
                  }

                  LODWORD(v63) = 0;
                  v64 = 0;
                  v65 = 0;
                  v66 = v247;
                  v67 = -1;
                  v68 = v245;
                  v69 = v244;
LABEL_105:
                  v39 = v67;
                  v235 = v64;
                  v237 = v65;
                  v233 = v63;
                  LODWORD(v63) = v66;
                  while ((v63 & 0x80000000) != 0)
                  {
                    LODWORD(v247) = 0;
                    if (v68 >= 1)
                    {
                      v84 = 0;
                      v85 = v244;
                      do
                      {
                        v88 = &v246[48 * v84];
                        v86 = *(v88 + 3);
                        if (v86)
                        {
                          for (i = *(v88 + 2); ; i += (v90 - 2))
                          {
                            if (i >= v85)
                            {
                              goto LABEL_154;
                            }

                            v90 = *v86;
                            if (v90 < 2)
                            {
                              break;
                            }

                            if ((v90 & 0x80) != 0)
                            {
                              v90 = v90 & 0x7F | (v86[1] << 7);
                              if (v86[1] < 0)
                              {
                                v90 = v90 & 0x3FFF | (v86[2] << 14);
                                if (v86[2] < 0)
                                {
                                  v90 = v90 & 0x1FFFFF | (v86[3] << 21);
                                  if (v86[3] < 0)
                                  {
                                    v90 = v90 & 0xFFFFFFF | ((v86[4] & 7) << 28);
                                    v89 = 5;
                                  }

                                  else
                                  {
                                    v89 = 4;
                                  }
                                }

                                else
                                {
                                  v89 = 3;
                                }
                              }

                              else
                              {
                                v89 = 2;
                              }
                            }

                            else
                            {
                              v89 = 1;
                            }

                            v86 += v89;
                          }

                          v86 = 0;
                          i = -1;
LABEL_154:
                          *(v88 + 2) = i;
                          *(v88 + 3) = v86;
                        }

                        ++v84;
                      }

                      while (v84 != v68);
                      LODWORD(v63) = 0;
LABEL_171:
                      v91 = 0;
                      v67 = 0;
                      v64 = 0;
                      v65 = 0;
                      v92 = v244 + v63;
                      while (1)
                      {
                        v93 = &v246[48 * v91];
                        v94 = *(v93 + 5);
                        if (v94)
                        {
                          v95 = *(v93 + 4);
                          if (v95 < v92 && v95 >= v63)
                          {
                            break;
                          }
                        }

LABEL_173:
                        if (++v91 == v68)
                        {
                          goto LABEL_107;
                        }
                      }

                      v97 = 1 << v91;
                      v98 = *v93;
                      if (v244 >= v98)
                      {
                        v99 = v98;
                      }

                      else
                      {
                        v99 = v244;
                      }

                      v100 = v64 | v97;
                      while (2)
                      {
                        if (((v64 | v35) & v97) != 0)
                        {
                          ++v67;
                        }

                        else
                        {
                          v67 += 1000;
                        }

                        if (v99 >= 1)
                        {
                          v103 = 1 << (v95 - v63);
                          if (v99 < 4)
                          {
                            j = 0;
                            goto LABEL_197;
                          }

                          v105 = 0uLL;
                          v106 = v65;
                          v107 = vdupq_n_s64(v103);
                          v108 = v99 & 0x7FFFFFFC;
                          v109 = xmmword_181A1FE70;
                          do
                          {
                            v106 = vorrq_s8(vshlq_u64(v107, vnegq_s64(v109)), v106);
                            v105 = vorrq_s8(vshlq_u64(v107, vsubq_s64(v47, v109)), v105);
                            v109 = vaddq_s64(v109, vdupq_n_s64(4uLL));
                            v108 -= 4;
                          }

                          while (v108);
                          v110 = vorrq_s8(v105, v106);
                          v65 = vorr_s8(*v110.i8, *&vextq_s8(v110, v110, 8uLL));
                          for (j = v99 & 0x7FFFFFFC; v99 != j; ++j)
                          {
LABEL_197:
                            *&v65 |= v103 >> j;
                          }
                        }

                        v111 = *v94;
                        if (v111 < 2 || ((v111 & 0x80) == 0 ? (v101 = 1) : (v111 = v111 & 0x7F | (v94[1] << 7), v94[1] < 0) ? ((v111 = v111 & 0x3FFF | (v94[2] << 14), v94[2] < 0) ? ((v111 = v111 & 0x1FFFFF | (v94[3] << 21), v94[3] < 0) ? (v111 = v111 & 0xFFFFFFF | ((v94[4] & 7) << 28), v101 = 5) : (v101 = 4)) : (v101 = 3)) : (v101 = 2), (v94 += v101, v95 += (v111 - 2), v95 < v92) ? (v102 = v95 < v63) : (v102 = 1), v64 = v100, v102))
                        {
                          v64 = v100;
                          goto LABEL_173;
                        }

                        continue;
                      }
                    }

                    LODWORD(v63) = 0;
                    v65 = 0;
                    v64 = 0;
                    v67 = 0;
LABEL_107:
                    v66 = v63;
                    if (v67 > v39)
                    {
                      goto LABEL_105;
                    }
                  }

                  if (v68 >= 1)
                  {
                    v70 = v246 + 24;
                    v71 = 0x7FFFFFFF;
                    v72 = v68;
                    do
                    {
                      if (*v70 && *(v70 - 1) < v71)
                      {
                        v71 = *(v70 - 1);
                      }

                      v70 += 6;
                      --v72;
                    }

                    while (v72);
                    if (v71 != 0x7FFFFFFF)
                    {
                      v73 = 0;
                      v63 = v71 - v69 + 1;
                      LODWORD(v247) = v71 - v69 + 1;
                      v74 = v71 + 1;
                      do
                      {
                        v77 = &v246[48 * v73];
                        v78 = *(v77 + 3);
                        if (v78)
                        {
                          for (k = *(v77 + 2); ; k += (v81 - 2))
                          {
                            if (k >= v74)
                            {
                              goto LABEL_136;
                            }

                            v81 = *v78;
                            if (v81 < 2)
                            {
                              break;
                            }

                            if ((v81 & 0x80) != 0)
                            {
                              v81 = v81 & 0x7F | (v78[1] << 7);
                              if (v78[1] < 0)
                              {
                                v81 = v81 & 0x3FFF | (v78[2] << 14);
                                if (v78[2] < 0)
                                {
                                  v81 = v81 & 0x1FFFFF | (v78[3] << 21);
                                  if (v78[3] < 0)
                                  {
                                    v81 = v81 & 0xFFFFFFF | ((v78[4] & 7) << 28);
                                    v80 = 5;
                                  }

                                  else
                                  {
                                    v80 = 4;
                                  }
                                }

                                else
                                {
                                  v80 = 3;
                                }
                              }

                              else
                              {
                                v80 = 2;
                              }
                            }

                            else
                            {
                              v80 = 1;
                            }

                            v78 += v80;
                          }

                          v78 = 0;
                          k = -1;
LABEL_136:
                          *(v77 + 2) = k;
                          *(v77 + 3) = v78;
                        }

                        v75 = *(v77 + 5);
                        if (v75)
                        {
                          for (m = *(v77 + 4); ; m += (v83 - 2))
                          {
                            if (m >= v63)
                            {
                              goto LABEL_119;
                            }

                            v83 = *v75;
                            if (v83 < 2)
                            {
                              break;
                            }

                            if ((v83 & 0x80) != 0)
                            {
                              v83 = v83 & 0x7F | (v75[1] << 7);
                              if (v75[1] < 0)
                              {
                                v83 = v83 & 0x3FFF | (v75[2] << 14);
                                if (v75[2] < 0)
                                {
                                  v83 = v83 & 0x1FFFFF | (v75[3] << 21);
                                  if (v75[3] < 0)
                                  {
                                    v83 = v83 & 0xFFFFFFF | ((v75[4] & 7) << 28);
                                    v82 = 5;
                                  }

                                  else
                                  {
                                    v82 = 4;
                                  }
                                }

                                else
                                {
                                  v82 = 3;
                                }
                              }

                              else
                              {
                                v82 = 2;
                              }
                            }

                            else
                            {
                              v82 = 1;
                            }

                            v75 += v82;
                          }

                          v75 = 0;
                          m = -1;
LABEL_119:
                          *(v77 + 4) = m;
                          *(v77 + 5) = v75;
                        }

                        ++v73;
                      }

                      while (v73 != v68);
                      goto LABEL_171;
                    }
                  }

                  __s = v38;
                }

                v112 = v246;
                if (v246)
                {
                  v113 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    v114 = v41;
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v112);
                    --qword_1ED456A90;
                    off_1ED452EB0(v112);
                    v112 = xmmword_1ED456AF0;
                    v41 = v114;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_216;
                    }

                    v113 = &xmmword_1ED452F28;
                  }

                  else
                  {
                    v114 = v41;
                  }

                  (*v113)(v112);
                  v41 = v114;
                }

LABEL_216:
                if (v41)
                {
                  v124 = 0;
                  v31 = v229;
                  goto LABEL_249;
                }

                v31 = v229;
                if (v39 > v239)
                {
                  *v225 = __s;
                  *(v225 + 1) = v233;
                  v225[1] = v235;
                  v225[2] = v237;
                }

                else
                {
                  v39 = v239;
                }

                LODWORD(v13) = v227;
                goto LABEL_82;
              }
            }

LABEL_65:

            sqlite3_result_error_nomem(a1);
            return;
          }

          if ((v24 & 1) == 0)
          {
            v25 = sub_18193CB70(v23, 1);
            v10 = a3;
            v12 = v25;
            goto LABEL_46;
          }
        }

        v12 = 0;
        goto LABEL_46;
      }
    }
  }

  else
  {
    sub_1819012D0(99775);
  }

  v18 = sqlite3_mprintf("illegal first argument to %s", "snippet");
  if (a1)
  {
    *(a1 + 9) = 1;
    sub_1818900D0(*a1, v18, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v18)
  {
    v19 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
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
        return;
      }

      v19 = &xmmword_1ED452F28;
    }

    v20 = *v19;

    v20(v18);
  }
}

void sub_1819CB054(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (*a3)
  {
    if ((*(v4 + 20) & 0xFBF) == 0xA01 && *(v4 + 23) == 112 && !strcmp(*v4, "fts3cursor"))
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        if (sub_1819C01F8(a1, *(v4 + 8)))
        {
          return;
        }

        v6 = v5[3];
        if (!v6)
        {
          if (!a1)
          {
            return;
          }

          v15 = &byte_181A2878D;
          v16 = a1;
          v17 = 0;
          v18 = 0;
          goto LABEL_50;
        }

        v7 = *v5;
        v8 = *(*v5)[9];
        v79 = 0u;
        v80 = 0u;
        __src = v5;
        v82 = 0;
        LODWORD(v78) = 0;
        v9 = sub_1819CCECC(v6, &v78, sub_1819CCEA8, &__src);
        if (v9)
        {
          goto LABEL_9;
        }

        v19 = SHIDWORD(v82);
        if (!sqlite3_initialize())
        {
          v30 = sub_181902484(24 * v19, 2585922466);
          if (v30)
          {
            v31 = v30;
            bzero(v30, 24 * v19);
            *&v80 = v5[6];
            *(&v80 + 1) = v31;
            *&v79 = v5;
            v32 = v5[3];
            LODWORD(__src) = 0;
            v9 = sub_1819CCECC(v32, &__src, sub_1819CD608, &v79);
            if (!v9)
            {
              v71 = v19;
              if (*(v7 + 12) < 1)
              {
                v10 = 0;
                LODWORD(v11) = 0;
                v9 = 0;
                goto LABEL_27;
              }

              v33 = 0;
              v34 = 0;
              v11 = 0;
              v10 = 0;
              v72 = v7;
              while (1)
              {
                v35 = v33;
                v77 = 0;
                v78 = 0;
                v76 = 0;
                *(&v79 + 1) = v33;
                v36 = v5[3];
                LODWORD(__src) = 0;
                v9 = sub_1819CCECC(v36, &__src, sub_1819CD6B8, &v79);
                if (v9)
                {
                  goto LABEL_27;
                }

                ++v33;
                v37 = sqlite3_column_text(v5[2], v35 + 1);
                v38 = sqlite3_column_bytes(v5[2], v35 + 1);
                if (v37)
                {
                  v74 = v35;
                  v73 = v33;
                  v39 = v11;
                  v40 = v34;
                  v41 = v7[9];
                  v42 = *(v5 + 8);
                  v43 = *v41;
                  __src = 0;
                  v44 = (*(v43 + 24))(v41, v37, v38, &__src);
                  if (v44)
                  {
                    v70 = v44;
                    goto LABEL_129;
                  }

                  *__src = v41;
                  v45 = __src;
                  if (*v43 < 1)
                  {
                    v7 = v72;
                  }

                  else
                  {
                    v46 = (*(v43 + 48))(__src, v42);
                    v45 = __src;
                    v7 = v72;
                    if (v46)
                    {
                      v70 = v46;
                      (*(v43 + 32))(__src);
LABEL_129:
                      v9 = v70;
                      v7 = v72;
LABEL_131:
                      LODWORD(v11) = v39;
                      goto LABEL_27;
                    }
                  }

                  v47 = (*(v8 + 40))(v45, &v78, &v77 + 4, &v77, &v76 + 4, &v76);
                  if (v47)
                  {
                    v48 = v47;
                    (*(v8 + 32))(v45);
                    if (v48 != 101)
                    {
                      v9 = v48;
                      goto LABEL_131;
                    }

                    v34 = v40;
                    v11 = v39;
                  }

                  else
                  {
                    if (v71 >= 1)
                    {
                      v75 = v10;
                      v34 = v40;
                      v11 = v39;
                      while (1)
                      {
                        v52 = 0;
                        v53 = 0x7FFFFFFF;
                        v54 = *(&v80 + 1);
                        v55 = v71;
                        v56 = v74;
                        do
                        {
                          if (*v54 && v54[1] - v54[2] < v53)
                          {
                            v53 = *(v54 + 2) - *(v54 + 4);
                            v52 = v54;
                          }

                          v54 += 3;
                          --v55;
                        }

                        while (v55);
                        if (!v52)
                        {
                          goto LABEL_111;
                        }

                        v57 = *v52;
                        v58 = **v52;
                        if (v58 > 1)
                        {
                          if ((v58 & 0x80) != 0)
                          {
                            v58 = v58 & 0x7F | (v57[1] << 7);
                            if (v57[1] < 0)
                            {
                              v58 = v58 & 0x3FFF | (v57[2] << 14);
                              if (v57[2] < 0)
                              {
                                v58 = v58 & 0x1FFFFF | (v57[3] << 21);
                                if (v57[3] < 0)
                                {
                                  v58 = v58 & 0xFFFFFFF | ((v57[4] & 7) << 28);
                                  v59 = 5;
                                }

                                else
                                {
                                  v59 = 4;
                                }

                                v56 = v74;
                              }

                              else
                              {
                                v59 = 3;
                              }
                            }

                            else
                            {
                              v59 = 2;
                            }
                          }

                          else
                          {
                            v59 = 1;
                          }

                          v60 = &v52[1][v58 - 2];
                          *v52 = &v57[v59];
                          v52[1] = v60;
                        }

                        else
                        {
                          *v52 = 0;
                        }

                        if (v76 < v53)
                        {
                          do
                          {
                            v61 = (*(v8 + 40))(v45, &v78, &v77 + 4, &v77, &v76 + 4, &v76);
                            if (v61)
                            {
                              v62 = 0;
                            }

                            else
                            {
                              v62 = v76 < v53;
                            }
                          }

                          while (v62);
                          if (v61)
                          {
                            break;
                          }
                        }

                        sqlite3_snprintf(64, &__src, "%d %d %d %d ", v56, -1431655765 * ((v52 - *(&v80 + 1)) >> 3), v77, HIDWORD(v76) - v77);
                        v63 = strlen(&__src);
                        v64 = v63;
                        if (v11 + v63 + 1 < v34)
                        {
                          v49 = v34;
                          v50 = v63;
                          v51 = v75;
                        }

                        else
                        {
                          v50 = v63;
                          v49 = v63 + v34 + 100;
                          v65 = sqlite3_initialize();
                          if (!v49 || v65 || (v66 = sub_18190287C(v75, v49, 2812224923)) == 0)
                          {
                            v68 = 7;
                            goto LABEL_126;
                          }

                          v51 = v66;
                        }

                        memcpy((v51 + v11), &__src, v50);
                        v11 = v11 + v64;
                        v75 = v51;
                        *(v51 + v11) = 0;
                        v34 = v49;
                      }

                      v67 = v34;
                      v68 = v61;
                      if (v61 != 101)
                      {
LABEL_126:
                        (*(v8 + 32))(v45);
                        v9 = v68;
                        goto LABEL_127;
                      }

                      if (v72[10])
                      {
                        v34 = v67;
LABEL_111:
                        v10 = v75;
                        v7 = v72;
                        goto LABEL_112;
                      }

                      (*(v8 + 32))(v45);
                      v9 = 267;
LABEL_127:
                      v10 = v75;
                      v7 = v72;
                      goto LABEL_27;
                    }

                    v34 = v40;
                    v11 = v39;
LABEL_112:
                    (*(v8 + 32))(v45);
                  }

                  v33 = v73;
                }

                else if (sqlite3_column_type(v5[2], v35 + 1) != 5)
                {
                  goto LABEL_26;
                }

                v9 = 0;
                if (v33 >= *(v7 + 12))
                {
                  goto LABEL_27;
                }
              }
            }

LABEL_9:
            v10 = 0;
            LODWORD(v11) = 0;
            goto LABEL_27;
          }
        }

        v10 = 0;
        LODWORD(v11) = 0;
        *(&v80 + 1) = 0;
LABEL_26:
        v9 = 7;
LABEL_27:
        v20 = *(&v80 + 1);
        if (*(&v80 + 1))
        {
          v21 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            v22 = v9;
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v20);
            --qword_1ED456A90;
            off_1ED452EB0(v20);
            v20 = xmmword_1ED456AF0;
            v9 = v22;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_35;
            }

            v21 = &xmmword_1ED452F28;
          }

          else
          {
            v22 = v9;
          }

          (*v21)(v20);
          v9 = v22;
        }

LABEL_35:
        v23 = v7[60];
        if (v23)
        {
          v24 = v9;
          v25 = v23[3];
          v26 = v23[4];
          v27 = v26[3];
          if (v27)
          {
            xmmword_1ED452F18(v27);
          }

          sub_181929C84(v26, v23);
          v28 = v26[3];
          if (v28)
          {
            xmmword_1ED452F28(v28);
          }

          sqlite3_finalize(v25);
          v9 = v24;
        }

        v7[60] = 0;
        if (v9)
        {
          if (a1)
          {
            a1[9] = v9;
            if (*(*a1 + 20))
            {
              switch(v9)
              {
                case 516:
                  v29 = "abort due to ROLLBACK";
                  break;
                case 101:
                  v29 = "no more rows available";
                  break;
                case 100:
                  v29 = "another row available";
                  break;
                default:
                  if (v9 > 0x1Cu || ((0x1410004uLL >> v9) & 1) != 0)
                  {
                    v29 = "unknown error";
                  }

                  else
                  {
                    v29 = off_1E6A27DD8[v9];
                  }

                  break;
              }

              sub_18190B23C(a1, v29, -1, 1u, 0);
            }
          }

          goto LABEL_116;
        }

        if (!a1)
        {
LABEL_116:
          if (!v10)
          {
            return;
          }

          v69 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_122;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
          --qword_1ED456A90;
          off_1ED452EB0(v10);
          v10 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v69 = &xmmword_1ED452F28;
LABEL_122:
            (*v69)(v10);
            return;
          }

          return;
        }

        v17 = v11 - 1;
        v18 = sqlite3_free;
        v16 = a1;
        v15 = v10;
LABEL_50:
        sub_18190B23C(v16, v15, v17, 1u, v18);
        return;
      }
    }
  }

  else
  {
    sub_1819012D0(99775);
  }

  v12 = sqlite3_mprintf("illegal first argument to %s", "offsets");
  if (a1)
  {
    a1[9] = 1;
    sub_1818900D0(*a1, v12, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v12)
  {
    v13 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
      --qword_1ED456A90;
      off_1ED452EB0(v12);
      v12 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return;
      }

      v13 = &xmmword_1ED452F28;
    }

    v14 = *v13;

    v14(v12);
  }
}

void sub_1819CB978(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    if ((*(v4 + 20) & 0xFBF) == 0xA01 && *(v4 + 23) == 112 && !strcmp(*v4, "fts3cursor"))
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = *v5;
        v7 = sqlite3_exec(*(*v5 + 24), "SAVEPOINT fts3", 0, 0, 0);
        if (!v7)
        {
          v8 = sub_1819C23C0(v6, 1);
          v7 = v8;
          if (v8 == 101 || v8 == 0)
          {
            v10 = sqlite3_exec(*(v6 + 24), "RELEASE fts3", 0, 0, 0);
            if (v10)
            {
              v7 = v10;
            }
          }

          else
          {
            sqlite3_exec(*(v6 + 24), "ROLLBACK TO fts3", 0, 0, 0);
            sqlite3_exec(*(v6 + 24), "RELEASE fts3", 0, 0, 0);
          }
        }

        v14 = *(v6 + 480);
        if (v14)
        {
          v15 = v14[3];
          v16 = v14[4];
          v17 = v16[3];
          if (v17)
          {
            xmmword_1ED452F18(v17);
          }

          sub_181929C84(v16, v14);
          v18 = v16[3];
          if (v18)
          {
            xmmword_1ED452F28(v18);
          }

          sqlite3_finalize(v15);
        }

        *(v6 + 480) = 0;
        if (v7 == 101)
        {
          if (!a1)
          {
            return;
          }

          v19 = "Index already optimal";
        }

        else if (v7)
        {
          if (!a1)
          {
            return;
          }

          *(a1 + 9) = v7;
          if ((*(*a1 + 20) & 1) == 0)
          {
            return;
          }

          if (v7 == 516)
          {
            v19 = "abort due to ROLLBACK";
          }

          else if (v7 == 100)
          {
            v19 = "another row available";
          }

          else if (v7 > 0x1Cu || ((0x1410004uLL >> v7) & 1) != 0)
          {
            v19 = "unknown error";
          }

          else
          {
            v19 = off_1E6A27DD8[v7];
          }
        }

        else
        {
          if (!a1)
          {
            return;
          }

          v19 = "Index optimized";
        }

        sub_18190B23C(a1, v19, -1, 1u, 0);
        return;
      }
    }
  }

  else
  {
    sub_1819012D0(99775);
  }

  v11 = sqlite3_mprintf("illegal first argument to %s", "optimize");
  if (a1)
  {
    *(a1 + 9) = 1;
    sub_1818900D0(*a1, v11, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v11)
  {
    v12 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
      --qword_1ED456A90;
      off_1ED452EB0(v11);
      v11 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return;
      }

      v12 = &xmmword_1ED452F28;
    }

    v13 = *v12;

    v13(v11);
  }
}

void sub_1819CBCB4(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    if ((*(v4 + 20) & 0xFBF) == 0xA01 && *(v4 + 23) == 112 && !strcmp(*v4, "fts3cursor"))
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        if (a2 < 2)
        {
          goto LABEL_25;
        }

        v8 = a3[1];
        if (!v8)
        {
          goto LABEL_26;
        }

        v9 = *(v8 + 20);
        if ((~v9 & 0x202) == 0 && *(v8 + 22) == 1)
        {
          v8 = *(v8 + 8);
          goto LABEL_26;
        }

        if (v9)
        {
LABEL_25:
          v8 = 0;
        }

        else
        {
          v8 = sub_18193CB70(v8, 1);
        }

LABEL_26:
        if (v8)
        {
          v13 = v8;
        }

        else
        {
          v13 = "pcx";
        }

        v14 = *(v7 + 24);
        if (!v14)
        {
          if (a1)
          {

            sub_18190B23C(a1, &byte_181A2878D, 0, 0, 0);
          }

          return;
        }

        v15 = *v7;
        v121 = 0u;
        v122 = 0u;
        v120 = v7;
        LODWORD(v121) = *(v15 + 48);
        v16 = *(v7 + 120);
        if (!v16)
        {
          goto LABEL_41;
        }

        if (!strcmp(v16[2], v13))
        {
          v119 = 1;
          goto LABEL_78;
        }

        *v16 = 0;
        if (!*(v16 + 1) && !*(v16 + 2))
        {
          v17 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
            --qword_1ED456A90;
            off_1ED452EB0(v16);
            v16 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_40;
            }

            v17 = &xmmword_1ED452F28;
          }

          (*v17)(v16);
        }

LABEL_40:
        *(v7 + 120) = 0;
        v14 = *(v7 + 24);
LABEL_41:
        LODWORD(pStmt) = 0;
        LODWORD(v125) = 0;
        sub_1819CCECC(v14, &v125, sub_1819CD864, &pStmt);
        v18 = pStmt;
        *(v7 + 36) = pStmt;
        DWORD1(v121) = v18;
        v19 = *v13;
        if (*v13)
        {
          v20 = 0;
          v21 = v121 + 31;
          if (v121 < -31)
          {
            v21 = v121 + 62;
          }

          v22 = v18 * (v21 >> 5);
          v23 = v121 * v18;
          v24 = (v13 + 1);
          while (1)
          {
            v125 = 0;
            if (v19 <= 0x6Du)
            {
              if (v19 > 0x62u)
              {
                v25 = 1;
                if (v19 != 99)
                {
                  if (v19 != 108 || (v25 = v121, !*(v15 + 462)))
                  {
LABEL_83:
                    sub_1819AD2A4(&v125, "unrecognized matchinfo request: %c", v19);
                    v35 = v125;
                    if (a1)
                    {
                      *(a1 + 36) = 1;
                      sub_1818900D0(*a1, v35, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
                    }

                    if (v35)
                    {
                      v36 = &off_1ED452EB0;
                      if (dword_1ED452E80)
                      {
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
                          goto LABEL_279;
                        }

                        v36 = &xmmword_1ED452F28;
                      }

                      (*v36)(v35);
                    }

LABEL_279:
                    v109 = *(v15 + 480);
                    if (v109)
                    {
                      v110 = v109[3];
                      v111 = v109[4];
                      v112 = v111[3];
                      if (v112)
                      {
                        xmmword_1ED452F18(v112);
                      }

                      sub_181929C84(v111, v109);
                      v113 = v111[3];
                      if (v113)
                      {
                        xmmword_1ED452F28(v113);
                      }

                      sqlite3_finalize(v110);
                    }

                    *(v15 + 480) = 0;
                    return;
                  }
                }
              }

              else if (v19 == 97)
              {
                v25 = v121;
                if (!*(v15 + 460))
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v25 = v22;
                if (v19 != 98)
                {
                  goto LABEL_83;
                }
              }
            }

            else if (v19 <= 0x72u)
            {
              if (v19 == 110)
              {
                if (!*(v15 + 460))
                {
                  goto LABEL_83;
                }

                v25 = 1;
              }

              else
              {
                v25 = 1;
                if (v19 != 112)
                {
                  goto LABEL_83;
                }
              }
            }

            else
            {
              v25 = v121;
              if (v19 != 115)
              {
                if (v19 == 120)
                {
                  v25 = 3 * v23;
                }

                else
                {
                  v25 = v23;
                  if (v19 != 121)
                  {
                    goto LABEL_83;
                  }
                }
              }
            }

            v20 += v25;
            v26 = *v24++;
            v19 = v26;
            if (!v26)
            {
              goto LABEL_73;
            }
          }
        }

        v20 = 0;
LABEL_73:
        v27 = strlen(v13);
        if (sqlite3_initialize() || (v31 = 8 * v20 + 36, v32 = v27 + 1, (v33 = sub_181902484(v32 + v31, 2585922466)) == 0))
        {
          v28 = 0;
          v29 = 0;
          *(v7 + 120) = 0;
          *(v7 + 112) = 1;
          v30 = 7;
          goto LABEL_256;
        }

        v16 = v33;
        bzero(v33, v32 + v31);
        *(v16 + 6) = 28;
        *(v16 + v20 + 7) = (((v20 << 32) + 0x100000000) >> 30) + 28;
        *(v16 + 1) = v20;
        v16[2] = v16 + v31;
        memcpy(v16 + v31, v13, v32);
        v119 = 0;
        *v16 = 1;
        *(v7 + 120) = v16;
        *(v7 + 112) = 1;
LABEL_78:
        if (*(v16 + 1))
        {
          if (*(v16 + 2))
          {
            v34 = *(v16 + 1);
            if (sqlite3_initialize())
            {
              v28 = 0;
LABEL_82:
              v29 = 0;
              v30 = 7;
LABEL_256:
              if (a1)
              {
                *(a1 + 36) = v30;
                if (*(*a1 + 20))
                {
                  switch(v30)
                  {
                    case 516:
                      v105 = v28;
                      v106 = "abort due to ROLLBACK";
                      break;
                    case 101:
                      v105 = v28;
                      v106 = "no more rows available";
                      break;
                    case 100:
                      v105 = v28;
                      v106 = "another row available";
                      break;
                    default:
                      if (v30 > 0x1Cu || ((0x1410004uLL >> v30) & 1) != 0)
                      {
                        v105 = v28;
                        v106 = "unknown error";
                      }

                      else
                      {
                        v105 = v28;
                        v106 = off_1E6A27DD8[v30];
                      }

                      break;
                  }

                  sub_18190B23C(a1, v106, -1, 1u, 0);
                  v28 = v105;
                }
              }

              if (v29)
              {
                v29(v28);
              }

              goto LABEL_279;
            }

            v28 = sub_181902484(4 * v34, 0x100004052888210);
            if (!v28)
            {
              goto LABEL_82;
            }

            v37 = sqlite3_free;
            if (*(v16 + 2))
            {
              v108 = v28;
              memcpy(v28, v16 + 28, 4 * *(v16 + 1));
              v28 = v108;
              v37 = sqlite3_free;
            }

            goto LABEL_95;
          }

          *(v16 + 2) = 1;
          v28 = v16 + *(v16 + 1) + 8;
        }

        else
        {
          *(v16 + 1) = 1;
          v28 = v16 + 7;
        }

        v37 = sub_1819CD87C;
LABEL_95:
        v116 = v37;
        v38 = 0;
        *(&v122 + 1) = v28;
        DWORD1(v121) = *(v7 + 36);
        v124 = 0;
        v118 = *v7;
        pStmt = 0;
        v117 = v28;
        while (1)
        {
          v40 = v13[v38];
          if (!v13[v38])
          {
            v30 = 0;
LABEL_252:
            sqlite3_reset(pStmt);
            v29 = v116;
            if ((v119 & 1) == 0)
            {
              v104 = *(v7 + 120);
              v104[2] = 1;
              memcpy(&v104[v104[1] + 8], v104 + 7, 4 * v104[1]);
            }

            if (v30)
            {
              v28 = v117;
              goto LABEL_256;
            }

            if (!a1 || (v107 = 4 * *(*(v7 + 120) + 4), v107 < 0))
            {
              v116(v117);
              if (a1)
              {
                *(a1 + 36) = 18;
                sub_1818900D0(*a1, "string or blob too big", -1, 1u, 0);
              }
            }

            else
            {
              sub_18190B23C(a1, v117, v107, 0, v116);
            }

            goto LABEL_279;
          }

          LOBYTE(v122) = v13[v38];
          if (v40 <= 109)
          {
            if (v40 <= 98)
            {
              if (v40 != 97)
              {
                if (v40 == 98)
                {
                  v41 = v121 + 62;
                  if (v121 >= -31)
                  {
                    v41 = v121 + 31;
                  }

                  v42 = v41 >> 5;
                  v43 = (&v121 + 4);
                  goto LABEL_120;
                }

                goto LABEL_151;
              }

              if (v119)
              {
                goto LABEL_233;
              }

              v48 = pStmt;
              if (!pStmt)
              {
                v55 = sub_1819BD8A8(v118, &pStmt);
                if (v55)
                {
                  goto LABEL_155;
                }

                v48 = pStmt;
              }

              v49 = sqlite3_column_bytes(v48, 0);
              v50 = sqlite3_column_blob(v48, 0);
              if (v50)
              {
                v51 = v50;
                v125 = 0;
                v52 = &v50[v49];
                v53 = sub_1819BD988(v50, v52, &v125);
                v54 = v125;
                v55 = 267;
                if (v125 >= 1 && v53 <= v49)
                {
                  v124 = 0;
                  if (v121 >= 1)
                  {
                    v56 = 0;
                    v57 = &v51[v53];
                    while (1)
                    {
                      v125 = 0;
                      v57 += sub_1819AE95C(v57, &v125);
                      if (v57 > v52)
                      {
                        break;
                      }

                      *(*(&v122 + 1) + 4 * v56++) = (v125 + (v54 >> 1)) / v54;
                      if (v56 >= v121)
                      {
                        goto LABEL_226;
                      }
                    }

                    v124 = 267;
                  }

                  goto LABEL_226;
                }

                goto LABEL_155;
              }

              goto LABEL_166;
            }

            if (v40 == 99)
            {
              if ((v119 & 1) == 0)
              {
                *v28 = v121;
                goto LABEL_226;
              }

              goto LABEL_96;
            }

            if (v40 != 108)
            {
              goto LABEL_151;
            }

            v44 = *(v7 + 48);
            v125 = 0;
            v45 = sub_1819AE4E4(v118, 0x15u, &v125, 0);
            v46 = v125;
            if (!v45)
            {
              if (!sub_1818DF6EC(v125, 0))
              {
                v47 = *(v46 + 16);
                if ((*(v47 + 20) & 0x9000) != 0)
                {
                  sub_18193D288(v47, v44);
                }

                else
                {
                  *v47 = v44;
                  *(v47 + 20) = 4;
                }

                v94 = *(*v46 + 24);
                if (v94)
                {
                  xmmword_1ED452F28(v94);
                }
              }

              if (sqlite3_step(v46) == 100 && sqlite3_column_type(v46, 0) == 4)
              {
                v124 = 0;
                v95 = sqlite3_column_blob(v46, 0);
                v96 = sqlite3_column_bytes(v46, 0);
                if (v121 >= 1)
                {
                  v97 = 0;
                  v98 = &v95[v96];
                  while (1)
                  {
                    v125 = 0;
                    v95 += sub_1819BD988(v95, v98, &v125);
                    if (v95 > v98)
                    {
                      break;
                    }

                    *(*(&v122 + 1) + 4 * v97++) = v125;
                    if (v97 >= v121)
                    {
                      goto LABEL_225;
                    }
                  }

                  v124 = 267;
                }

                goto LABEL_225;
              }

              v45 = sqlite3_reset(v46);
              v46 = 0;
              if (!v45)
              {
                v45 = 267;
              }
            }

            v124 = v45;
LABEL_225:
            sqlite3_reset(v46);
            goto LABEL_226;
          }

          if (v40 <= 114)
          {
            if (v40 != 110)
            {
              if (v40 != 112)
              {
                goto LABEL_151;
              }

              if ((v119 & 1) == 0)
              {
                *v28 = DWORD1(v121);
                goto LABEL_226;
              }

LABEL_96:
              v39 = 1;
              goto LABEL_97;
            }

            if (v119)
            {
              goto LABEL_96;
            }

            v58 = pStmt;
            if (pStmt)
            {
LABEL_133:
              v59 = sqlite3_column_bytes(v58, 0);
              v60 = sqlite3_column_blob(v58, 0);
              if (v60)
              {
                v125 = 0;
                v61 = sub_1819BD988(v60, &v60[v59], &v125);
                v63 = v125 < 1 || v61 > v59;
                if (v63)
                {
                  v64 = 267;
                }

                else
                {
                  v64 = 0;
                }

                if (v63)
                {
                  v65 = 0;
                }

                else
                {
                  v65 = v125;
                }
              }

              else
              {
                v65 = 0;
                v64 = 267;
              }
            }

            else
            {
              v64 = sub_1819BD8A8(v118, &pStmt);
              if (!v64)
              {
                v58 = pStmt;
                goto LABEL_133;
              }

              v65 = 0;
            }

            v124 = v64;
            **(&v122 + 1) = v65;
            goto LABEL_226;
          }

          if (v40 != 115)
          {
            if (v40 == 121)
            {
              v42 = DWORD1(v121);
              v43 = &v121;
LABEL_120:
              bzero(v28, 4 * *v43 * v42);
              v124 = sub_1819CD97C(*(v7 + 24), &v120);
              goto LABEL_226;
            }

LABEL_151:
            v68 = *(v7 + 24);
            v125 = v7;
            v126 = 0;
            v127[0] = 0;
            v124 = sub_1819CCECC(v68, v127, sub_1819CCEA8, &v125);
            if (v124)
            {
              goto LABEL_226;
            }

            if (v119)
            {
LABEL_153:
              LODWORD(v125) = 0;
              sub_1819CCECC(v68, &v125, sub_1819CDDF0, &v120);
              goto LABEL_226;
            }

            if (!*(v7 + 40))
            {
LABEL_164:
              LODWORD(v125) = 0;
              v124 = sub_1819CCECC(v68, &v125, sub_1819CDB48, &v120);
              sub_1819BF964(v7, &v124);
              if (v124)
              {
                goto LABEL_226;
              }

              goto LABEL_153;
            }

            v69 = pStmt;
            if (pStmt)
            {
              goto LABEL_160;
            }

            v55 = sub_1819BD8A8(v118, &pStmt);
            if (v55)
            {
LABEL_155:
              v124 = v55;
              goto LABEL_226;
            }

            v69 = pStmt;
LABEL_160:
            v70 = sqlite3_column_bytes(v69, 0);
            v71 = sqlite3_column_blob(v69, 0);
            if (v71)
            {
              v125 = 0;
              v72 = sub_1819BD988(v71, &v71[v70], &v125);
              v55 = 267;
              if (v125 >= 1 && v72 <= v70)
              {
                *(&v121 + 1) = v125;
                goto LABEL_164;
              }

              goto LABEL_155;
            }

LABEL_166:
            v124 = 267;
            goto LABEL_226;
          }

          v125 = v7;
          v126 = 0;
          v66 = *(v7 + 24);
          v127[0] = 0;
          v124 = sub_1819CCECC(v66, v127, sub_1819CCEA8, &v125);
          if (v124)
          {
            goto LABEL_226;
          }

          v67 = *(v7 + 36);
          if (sqlite3_initialize() || (v73 = sub_181902484(32 * v67, 2585922466)) == 0)
          {
            v124 = 7;
            goto LABEL_226;
          }

          v74 = v73;
          bzero(v73, 32 * v67);
          v75 = *(v7 + 24);
          LODWORD(v125) = 0;
          sub_1819CCECC(v75, &v125, sub_1819CDEC8, v74);
          v76 = DWORD1(v121);
          if (SDWORD1(v121) >= 1)
          {
            v77 = 0;
            v78 = (v74 + 8);
            do
            {
              v77 -= *(*(*(v78 - 1) + 32) + 80);
              *v78 = v77;
              v78 += 8;
              --v76;
            }

            while (v76);
          }

          if (v121 < 1)
          {
LABEL_241:
            v84 = 0;
            goto LABEL_244;
          }

          v79 = 0;
          v114 = v74 + 16;
          v115 = v74;
          while (SDWORD1(v121) < 1)
          {
            v87 = 0;
LABEL_184:
            *(*(&v122 + 1) + 4 * v79++) = v87;
            if (v79 >= v121)
            {
              goto LABEL_241;
            }
          }

          v80 = 0;
          v81 = 0;
          v82 = v114;
          while (1)
          {
            v84 = sub_1819CCF60(v7, *(v82 - 16), v79, v82);
            if (v84)
            {
              goto LABEL_243;
            }

            v85 = *v82;
            if (!*v82)
            {
              goto LABEL_178;
            }

            *(v82 + 8) = *(v82 - 8);
            v125 = 0;
            v86 = sub_1819AE95C(v85, &v125);
            if (v125 <= 1)
            {
              break;
            }

            *(v82 + 8) = v125 + *(v82 + 8) - 2;
            *v82 = &v85[v86];
            ++v81;
LABEL_178:
            ++v80;
            LODWORD(v83) = DWORD1(v121);
            v82 += 32;
            if (v80 >= SDWORD1(v121))
            {
              if (v81 >= 1)
              {
                v87 = 0;
                v74 = v115;
                while (2)
                {
                  if (v83 > 0)
                  {
                    v89 = 0;
                    v90 = 0;
                    v91 = v74;
                    v83 = v83;
                    do
                    {
                      if (*(v91 + 16))
                      {
                        if (!v90 || *(v91 + 24) < *(v90 + 24))
                        {
                          v90 = v91;
                        }

                        if (v89 && *(v91 + 24) != *(v91 - 8))
                        {
                          v89 = 1;
                        }

                        else
                        {
                          ++v89;
                        }

                        if (v89 > v87)
                        {
                          v87 = v89;
                        }
                      }

                      else
                      {
                        v89 = 0;
                      }

                      v91 += 32;
                      --v83;
                    }

                    while (v83);
                    if (v90)
                    {
                      v125 = 0;
                      v92 = *(v90 + 16);
                      v93 = sub_1819AE95C(v92, &v125);
                      if (v125 > 1)
                      {
                        *(v90 + 24) = v125 + *(v90 + 24) - 2;
                        *(v90 + 16) = &v92[v93];
                        v74 = v115;
LABEL_190:
                        LODWORD(v83) = DWORD1(v121);
                        continue;
                      }

                      *(v90 + 16) = 0;
                      v74 = v115;
                    }
                  }

                  break;
                }

                v88 = __OFSUB__(v81--, 1);
                if ((v81 < 0) ^ v88 | (v81 == 0))
                {
                  goto LABEL_184;
                }

                goto LABEL_190;
              }

              v87 = 0;
              v74 = v115;
              goto LABEL_184;
            }
          }

          *v82 = 0;
          v84 = 267;
LABEL_243:
          v74 = v115;
LABEL_244:
          v102 = &off_1ED452EB0;
          v103 = v84;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v74);
            --qword_1ED456A90;
            off_1ED452EB0(v74);
            v74 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v102 = &xmmword_1ED452F28;
              goto LABEL_249;
            }
          }

          else
          {
LABEL_249:
            (*v102)(v74);
          }

          v124 = v103;
LABEL_226:
          v99 = v13[v38];
          v100 = v99 - 99;
          if ((v99 - 99) > 0x16)
          {
            goto LABEL_231;
          }

          if (((1 << v100) & 0x2801) != 0)
          {
            goto LABEL_96;
          }

          if (((1 << v100) & 0x10200) != 0)
          {
            goto LABEL_233;
          }

          if (v99 == 121)
          {
            v39 = SDWORD1(v121) * v121;
            goto LABEL_97;
          }

LABEL_231:
          if (v99 == 98)
          {
            v101 = v121 + 62;
            if (v121 >= -31)
            {
              v101 = v121 + 31;
            }

            v39 = SDWORD1(v121) * (v101 >> 5);
          }

          else if (v99 == 97)
          {
LABEL_233:
            v39 = v121;
          }

          else
          {
            v39 = 3 * v121 * SDWORD1(v121);
          }

LABEL_97:
          v28 = (*(&v122 + 1) + 4 * v39);
          *(&v122 + 1) = v28;
          ++v38;
          v30 = v124;
          if (v124)
          {
            goto LABEL_252;
          }
        }
      }
    }
  }

  else
  {
    sub_1819012D0(99775);
  }

  v10 = sqlite3_mprintf("illegal first argument to %s", "matchinfo");
  if (a1)
  {
    *(a1 + 36) = 1;
    sub_1818900D0(*a1, v10, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v10)
  {
    v11 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
      --qword_1ED456A90;
      off_1ED452EB0(v10);
      v10 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return;
      }

      v11 = &xmmword_1ED452F28;
    }

    v12 = *v11;

    v12(v10);
  }
}