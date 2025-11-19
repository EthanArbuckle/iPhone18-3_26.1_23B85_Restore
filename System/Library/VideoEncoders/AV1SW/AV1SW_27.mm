uint64_t sub_277AA3D70(int32x4_t *a1, int32x4_t *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  do
  {
    v7 = *a1++;
    v8 = v7;
    v9 = *a2++;
    v10 = vabdq_s32(v8, v9);
    v6 = vmlal_high_u32(vmlal_u32(v6, *v10.i8, *v10.i8), v10, v10);
    v5 = vmlal_high_s32(vmlal_s32(v5, *v8.i8, *v8.i8), v8, v8);
    a3 -= 4;
  }

  while (a3);
  v11 = 2 * a5 - 16;
  v12 = 1 << (2 * a5 - 17);
  if (2 * a5 - 16 <= 0)
  {
    v12 = 0;
  }

  *a4 = (vaddvq_s64(v5) + v12) >> v11;
  return (vaddvq_s64(v6) + v12) >> v11;
}

uint64_t sub_277AA3DE0(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  if (a4 > 16)
  {
    if (a4 == 17)
    {
      v5 = 9;
      goto LABEL_10;
    }

    if (a4 == 18)
    {
      v5 = 10;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = 3;
  if ((a4 - 11) >= 2 && a4 != 4)
  {
LABEL_9:
    v5 = a4;
  }

LABEL_10:
  v6 = a2 + 2608 * a3 + 152 * (*(**(a2 + 7864) + 167) & 7) + 8 * v5 + 192;
  v7 = a1 + 8 * v5 + 6960;
  if (a5 >= 9)
  {
    v6 = v7;
  }

  return *v6;
}

uint64_t sub_277AA3E6C(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  if (a4 > 16)
  {
    if (a4 == 17)
    {
      v5 = 9;
      goto LABEL_10;
    }

    if (a4 == 18)
    {
      v5 = 10;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = 3;
  if ((a4 - 11) >= 2 && a4 != 4)
  {
LABEL_9:
    v5 = a4;
  }

LABEL_10:
  v6 = a2 + 2608 * a3 + 152 * (*(**(a2 + 7864) + 167) & 7) + 8 * v5 + 1408;
  v7 = a1 + 8 * v5 + 14256;
  if (a5 >= 9)
  {
    v6 = v7;
  }

  return *v6;
}

uint64_t sub_277AA3EF8(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 12) - a2;
  if ((a5 & 0xFFFFFFFD) == 0xD)
  {
    v6 = 32;
  }

  else
  {
    v6 = 16;
  }

  if (v6 >= v5)
  {
    v6 = *(a1 + 12) - a2;
  }

  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  if ((a5 & 0xFE) == 0xE)
  {
    v9 = 32;
  }

  else
  {
    v9 = 16;
  }

  v10 = *(a1 + 16) - a3;
  if (v9 >= v10)
  {
    v9 = *(a1 + 16) - a3;
  }

  v11 = *(a1 + 48) + 8 * a3;
  do
  {
    if (v10 >= 1)
    {
      v12 = 0;
      v13 = *(a1 + 60);
      do
      {
        v14 = v11 + 8 * v13 * (v7 + a2) + 8 * v12;
        v15 = 1;
        while (2)
        {
          v16 = 0;
          v17 = v15;
          v18 = 1;
          do
          {
            if (!*(*(v14 + 8 * v16) + 144))
            {
              v20 = (a4 + 2 * v8);
              *v20 = v7 >> 1;
              v20[1] = v12 >> 1;
              v8 = (v8 + 1);
              goto LABEL_22;
            }

            v19 = v18;
            v18 = 0;
            v16 = 1;
          }

          while ((v19 & 1) != 0);
          v15 = 0;
          v14 += 8 * v13;
          if (v17)
          {
            continue;
          }

          break;
        }

LABEL_22:
        v12 += 2;
      }

      while (v12 < v9);
    }

    v7 += 2;
  }

  while (v7 < v6);
  return v8;
}

uint64_t sub_277AA4008(uint64_t result, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = 2 * a3 + 2 * a6 * a4 + 2 * a5;
  do
  {
    if (a8 < 8)
    {
      v11 = 0;
      LODWORD(i) = a8;
    }

    else
    {
      v9 = 0;
      for (i = a8; i > 7; i -= 8)
      {
        *(result + v9) = *(v8 + v9);
        v9 += 16;
      }

      v11 = (((a8 - 8) & 0xFFFFFFF8) + 8) & 0xFFFFFFF8;
    }

    if (i == 4)
    {
      *(result + 2 * v11) = *(v8 + 2 * v11);
    }

    v8 += 2 * a6;
    result += 2 * a2;
    --a7;
  }

  while (a7);
  return result;
}

char *sub_277AA4090(char *result, char *a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  if (!result)
  {
    return sub_277B11F78(a2, a3, a4 + a7 * a5 + a6, a7, a9, a8);
  }

  v9 = 2 * a4 + 2 * a7 * a5 + 2 * a6;
  do
  {
    if (a9 < 8)
    {
      v12 = 0;
      LODWORD(i) = a9;
    }

    else
    {
      v10 = 0;
      for (i = a9; i > 7; i -= 8)
      {
        *&a2[v10] = *(v9 + v10);
        v10 += 16;
      }

      v12 = (((a9 - 8) & 0xFFFFFFF8) + 8) & 0xFFFFFFF8;
    }

    if (i == 4)
    {
      *&a2[2 * v12] = *(v9 + 2 * v12);
    }

    v9 += 2 * a7;
    a2 += 2 * a3;
    --a8;
  }

  while (a8);
  return result;
}

void sub_277AA4148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = *(a1 + 24696);
  v11 = *(v10 + 77);
  v12 = *(a1 + 532);
  v14 = v12 + 15;
  v13 = v12 < -15;
  v15 = v12 + 30;
  if (!v13)
  {
    v15 = v14;
  }

  v16 = v15 >> 4;
  v17 = 4 * *(a1 + 536) + 15;
  *(a3 + 592) = a7 == 0;
  v18 = v16 - 1;
  v19 = 16 * a7 + 16;
  v20 = v16 - 1 == a7 || v19 == *(a1 + 532);
  *(a3 + 600) = v20;
  *a3 = a5;
  *(a3 + 608) = *(a1 + 23584);
  *(a3 + 612) = *(v10 + 72) - 8;
  v21 = (a3 + 32);
  v32 = 2 * (a7 & 1);
  v36 = v32 ^ 2;
  v37 = v17 & 0xFFFFFFF0;
  bzero((a3 + 628), 0x800uLL);
  v22 = 0;
  v23 = a2 + 32;
  v33 = v11;
  v34 = v18;
  do
  {
    v24 = *(v23 - 8);
    v25 = *(a4 + 8 * v22);
    v26 = v37 >> *(v23 - 12);
    *v21 = (v25 + 8 * v26);
    v27 = v26 * v36;
    if (v18 == v7)
    {
      *(v21 - 3) = (*(a4 + 8 * v22) + 2 * v27);
      if (v11)
      {
        return;
      }
    }

    else
    {
      v28 = v7;
      v29 = v19 << (2 - v24);
      sub_277AA4090(*(*(a1 + 24696) + 76), (v25 + 2 * v26 * v32), v26, *v23, v29 - 2, 0, *(v23 + 24), 2, v26);
      *(v21 - 3) = (*(a4 + 8 * v22) + 2 * v27);
      v30 = v29;
      v7 = v28;
      v11 = v33;
      v18 = v34;
      sub_277AA4090(*(*(a1 + 24696) + 76), *v21, v26, *v23, v30, 0, *(v23 + 24), 2, v26);
      if (v33)
      {
        return;
      }
    }

    v23 += 2608;
    ++v21;
  }

  while (v22++ < 2);
}

uint64_t sub_277AA4334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(void), uint64_t a8)
{
  v10 = a1;
  v188[1] = *MEMORY[0x277D85DE8];
  memset(v168, 0, 448);
  v166 = 0u;
  v167 = 0u;
  memset(v165, 0, sizeof(v165));
  v11 = *(a1 + 536);
  v186 = 1;
  if (v11 >= -15)
  {
    v12 = v11 + 15;
  }

  else
  {
    v12 = v11 + 30;
  }

  v185 = 0x100000001;
  result = a7();
  if (!a8 || *(v10 + 23728) <= 1 || (pthread_mutex_lock(*a8), v14 = *(a8 + 28), result = pthread_mutex_unlock(*a8), (v14 & 1) == 0))
  {
    if (v11 >= 1)
    {
      v15 = 0;
      v16 = v12 >> 4;
      v153 = 16 * a6;
      v144 = v10 + 23592;
      v143 = v10 + 23656;
      v147 = v10;
      if (v12 >> 4 <= 1)
      {
        v16 = 1;
      }

      v145 = v16;
      v146 = (v12 >> 4) - 1;
      while (1)
      {
        v173 = v15 == 0;
        if (v15 == v146)
        {
          v17 = 1;
          v18 = 16 * v146;
        }

        else
        {
          v18 = 16 * v15;
          v17 = 16 * v15 + 16 == *(v10 + 536);
        }

        v19 = *(*(v10 + 568) + 8 * (v18 + *(v10 + 580) * v153));
        v174 = v17;
        v20 = (*(v19 + 167) << 17 >> 4) & 0xFF000000;
        v21 = *(*(v10 + 24696) + 77);
        v22 = *(*(v10 + 24696) + 77) ? 1 : 3;
        v187 = 0;
        v188[0] = 0;
        if (v20 != -16777216)
        {
          v23 = *(v144 + 4 * (v20 >> 24));
          v24 = v23 + 3;
          if (v23 >= 0)
          {
            v25 = *(v144 + 4 * (v20 >> 24));
          }

          else
          {
            v25 = v23 + 3;
          }

          LODWORD(v188[0]) = v25 >> 2;
          v26 = v23 - (v25 & 0xFFFFFFFC);
          if (v26 == 3)
          {
            v26 = 4;
          }

          LODWORD(v187) = v26;
          v27 = v24 < 7 && v26 == 0;
          v28 = v27;
          if (v21)
          {
            v29 = 1;
          }

          else
          {
            v30 = *(v143 + 4 * (v20 >> 24));
            v31 = v30 + 3;
            if (v30 >= 0)
            {
              v32 = v30;
            }

            else
            {
              v32 = v30 + 3;
            }

            HIDWORD(v188[0]) = v32 >> 2;
            v33 = v30 - (v32 & 0xFFFFFFFC);
            if (v33 == 3)
            {
              v33 = 4;
            }

            HIDWORD(v187) = v33;
            v34 = v31 < 7 && v33 == 0;
            v29 = v34;
          }

          if (!v29 || !v28)
          {
            result = sub_277AA3EF8(v10 + 520, v153, v18, v168, 12);
            v179 = result;
            if (result)
            {
              break;
            }
          }
        }

        result = __memset_chk();
LABEL_163:
        if (++v15 == v145)
        {
          return result;
        }
      }

      v36 = 0;
      v38 = a6 > 0 && v15 != 0;
      v149 = v38;
      v150 = v29;
      v152 = v18;
      v151 = v22;
      v158 = v15;
      while (v36 && v29)
      {
        *(&v185 + v36) = 0;
LABEL_160:
        if (++v36 == v22)
        {
          goto LABEL_163;
        }
      }

      v177 = *(v188 | (4 * (v36 != 0)));
      v178 = *(&v187 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v36 != 0)));
      v39 = a2 + 16 + 2608 * v36;
      v40 = *(v39 + 16);
      *(&v167 + 1) = v40;
      v41 = *(v39 + 40);
      __n = v41;
      v42 = *(v39 + 4);
      LODWORD(v39) = *(v39 + 8);
      v169 = v42;
      v170 = v39;
      v43 = 2 - v42;
      v171 = 2 - v42;
      v44 = 2 - v39;
      v172 = 2 - v39;
      v45 = v153 << (2 - v39);
      v184 = v45;
      v46 = v18 << (2 - v42);
      v47 = *(&v185 + v36);
      __n_4 = v46;
      v48 = *(v10 + 536);
      v49 = *(v10 + 532);
      v50 = v49 + 30;
      if (v49 >= -15)
      {
        v50 = v49 + 15;
      }

      v51 = v48 + 30;
      if (v48 >= -15)
      {
        v51 = v48 + 15;
      }

      v157 = v47;
      if (v47)
      {
        v52 = 0;
      }

      else
      {
        v52 = -8;
      }

      if (v48 - v18 >= 16)
      {
        v53 = 16;
      }

      else
      {
        v53 = v48 - v18;
      }

      v54 = v49 - v153;
      if (v54 >= 16)
      {
        v55 = 16;
      }

      else
      {
        v55 = v54;
      }

      v56 = *(v10 + 24696);
      if (v36)
      {
        v57 = *(v56 + 96);
      }

      else
      {
        LOBYTE(v57) = 0;
      }

      v58 = v50 >> 4;
      v59 = (v53 << v43);
      v60 = v55 << v44;
      v160 = *(v165 + v36 + 1);
      *v154 = v36;
      v61 = *(&v166 + v36);
      v62 = (v55 << v44) + 2;
      v63 = v59 + 8;
      v161 = (v51 >> 4) - 1;
      v64 = ((4 * v48 + 15) & 0xFFFFFFF0) >> v57;
      if (v161 == v15)
      {
        v63 = v59;
      }

      v65 = v58 - 1;
      sub_277AA4090(*(v56 + 76), (*&v165[0] + 2 * v52 + 592), 144, v40, v45, v52 + v46, v41, v60, v63 - v52);
      v162 = 144 * v62;
      v66 = *&v165[0] + 288 * v62 + 16;
      v163 = v60;
      if (v65 == a6)
      {
        v67 = v60;
      }

      else
      {
        v67 = v62;
      }

      v156 = v67;
      v159 = v64;
      v155 = v61;
      if (v65 <= a6)
      {
        v77 = 0;
        v78 = 0;
        v71 = v65;
        v36 = *v154;
        do
        {
          v79 = v77;
          if (v59 >= 1)
          {
            memset_pattern16((v66 + v78), &unk_277BB7D40, 2 * v59);
          }

          v77 = 1;
          v78 = 288;
        }

        while ((v79 & 1) == 0);
      }

      else
      {
        v68 = 0;
        v69 = 0;
        v70 = v61 + 2 * __n_4;
        v71 = v65;
        v36 = *v154;
        do
        {
          v72 = v68;
          if (v59 >= 1)
          {
            v73 = (v70 + 2 * v69 * v64);
            v74 = (v66 + 288 * v69);
            v75 = v59;
            do
            {
              v76 = *v73++;
              *v74++ = v76;
              --v75;
            }

            while (v75);
          }

          v68 = 1;
          v69 = 1;
        }

        while ((v72 & 1) == 0);
      }

      v80 = (*&v165[0] + 2 * v162);
      if (v158 && v71 > a6)
      {
        v81 = 0;
        v82 = 0;
        v83 = v155;
        v84 = v155 + 2 * __n_4 - 16;
        v85 = v159;
        do
        {
          v86 = 0;
          v87 = v81;
          v88 = v84 + 2 * v82 * v159;
          v89 = &v80[288 * v82];
          do
          {
            *&v89[v86] = *(v88 + v86);
            v86 += 2;
          }

          while (v86 != 16);
          v81 = 1;
          v82 = 1;
        }

        while ((v87 & 1) == 0);
      }

      else
      {
        v90 = 2;
        v85 = v64;
        v83 = v155;
        do
        {
          memset_pattern16(v80, &unk_277BB7D40, 0x10uLL);
          v80 += 288;
          --v90;
        }

        while (v90);
      }

      v91 = (*&v165[0] + 2 * (v162 + v59) + 16);
      v15 = v158;
      if (v161 <= v158 || v71 <= a6)
      {
        v99 = 2;
        do
        {
          memset_pattern16(v91, &unk_277BB7D40, 0x10uLL);
          v91 += 288;
          --v99;
        }

        while (v99);
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = v83 + 2 * (__n_4 + v59);
        do
        {
          v95 = 0;
          v96 = v92;
          v97 = v94 + 2 * v93 * v85;
          v98 = &v91[288 * v93];
          do
          {
            *&v98[v95] = *(v97 + v95);
            v95 += 2;
          }

          while (v95 != 16);
          v92 = 1;
          v93 = 1;
        }

        while ((v96 & 1) == 0);
      }

      v100 = *&v165[0] + 16;
      if (a6 < 1)
      {
        v109 = 0;
        v110 = 0;
        do
        {
          v111 = v109;
          if (v59 >= 1)
          {
            memset_pattern16((v100 + v110), &unk_277BB7D40, 2 * v59);
          }

          v109 = 1;
          v110 = 288;
        }

        while ((v111 & 1) == 0);
      }

      else
      {
        v101 = 0;
        v102 = 0;
        v103 = v160 + 2 * __n_4;
        do
        {
          v104 = v101;
          if (v59 >= 1)
          {
            v105 = (v103 + 2 * v102 * v85);
            v106 = (v100 + 288 * v102);
            v107 = v59;
            do
            {
              v108 = *v105++;
              *v106++ = v108;
              --v107;
            }

            while (v107);
          }

          v101 = 1;
          v102 = 1;
        }

        while ((v104 & 1) == 0);
      }

      if (v149)
      {
        v112 = 0;
        v113 = 0;
        v114 = v160 + 2 * __n_4 - 16;
        v10 = v147;
        do
        {
          v115 = 0;
          v116 = v112;
          v117 = v114 + 2 * v113 * v85;
          v118 = *&v165[0] + 288 * v113;
          do
          {
            *(v118 + v115) = *(v117 + v115);
            v115 += 2;
          }

          while (v115 != 16);
          v112 = 1;
          v113 = 1;
        }

        while ((v116 & 1) == 0);
      }

      else
      {
        v119 = *&v165[0];
        v120 = 2;
        v10 = v147;
        do
        {
          memset_pattern16(v119, &unk_277BB7D40, 0x10uLL);
          v119 += 288;
          --v120;
        }

        while (v120);
      }

      v121 = *&v165[0] + 2 * v59;
      v122 = v121 + 16;
      if (a6 < 1 || v161 <= v158)
      {
        v130 = (v121 + 16);
        v131 = 2;
        do
        {
          memset_pattern16(v130, &unk_277BB7D40, 0x10uLL);
          v130 += 288;
          --v131;
        }

        while (v131);
      }

      else
      {
        v123 = 0;
        v124 = 0;
        v125 = v160 + 2 * (__n_4 + v59);
        do
        {
          v126 = 0;
          v127 = v123;
          v128 = v125 + 2 * v124 * v159;
          v129 = v122 + 288 * v124;
          do
          {
            *(v129 + v126) = *(v128 + v126);
            v126 += 2;
          }

          while (v126 != 16);
          v123 = 1;
          v124 = 1;
        }

        while ((v127 & 1) == 0);
      }

      v132 = *(a4 + 8 * v36);
      v29 = v150;
      if (v157)
      {
        if (v156 < -1)
        {
LABEL_146:
          if (v173 && v163 >= -3)
          {
            v139 = 0;
            do
            {
              memset_pattern16((*&v165[0] + (v139 & 0x1FFFFFFE0)), &unk_277BB7D40, 0x10uLL);
              v139 += 288;
            }

            while (288 * (v163 + 4) != v139);
          }

          if (v174 && v163 >= -3)
          {
            v141 = 0;
            do
            {
              memset_pattern16((v122 + (v141 & 0x1FFFFFFE0)), &unk_277BB7D40, 0x10uLL);
              v141 += 288;
            }

            while (288 * (v163 + 4) != v141);
          }

          v142 = *(&v167 + 1) + v184 * __n + __n_4;
          v22 = v151;
          if (*(*(v10 + 24696) + 76))
          {
            result = sub_277AE46B0(0, 2 * v142, __n, *&v165[0] + 592, v169, v170, v180, 0, v181, v36, v168, v179, v177, v178, v175, v176);
          }

          else
          {
            result = sub_277AE46B0(v142, 0, __n, *&v165[0] + 592, v169, v170, v180, 0, v181, v36, v168, v179, v177, v178, v175, v176);
          }

          v18 = v152;
          *(&v185 + v36) = 1;
          goto LABEL_160;
        }

        v133 = 0;
        v134 = *(a4 + 8 * v36);
        v135 = *&v165[0];
        do
        {
          for (i = 0; i != 16; i += 2)
          {
            *(v135 + i) = *(v134 + i);
          }

          ++v133;
          v135 += 288;
          v134 += 16;
        }

        while (v133 != v156 + 2);
      }

      if (v156 >= -1)
      {
        v137 = 0;
        do
        {
          for (j = 0; j != 16; j += 2)
          {
            *(v132 + j) = *(v121 + j);
          }

          ++v137;
          v132 += 16;
          v121 += 288;
        }

        while (v137 != v156 + 2);
      }

      goto LABEL_146;
    }
  }

  return result;
}

void *sub_277AA4DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned int a10)
{
  v10 = MEMORY[0x28223BE20]();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v10;
  STACK[0x2378] = *MEMORY[0x277D85DE8];
  *&STACK[0x2240] = 0u;
  *&STACK[0x2250] = 0u;
  *&STACK[0x2260] = 0u;
  *&STACK[0x2270] = 0u;
  *&STACK[0x2280] = 0u;
  *&STACK[0x2290] = 0u;
  *&STACK[0x22A0] = 0u;
  *&STACK[0x22B0] = 0u;
  *&STACK[0x2140] = 0u;
  *&STACK[0x2150] = 0u;
  *&STACK[0x2160] = 0u;
  *&STACK[0x2170] = 0u;
  *&STACK[0x2180] = 0u;
  *&STACK[0x2190] = 0u;
  *&STACK[0x21A0] = 0u;
  *&STACK[0x21B0] = 0u;
  *&STACK[0x21C0] = 0u;
  *&STACK[0x21D0] = 0u;
  *&STACK[0x21E0] = 0u;
  *&STACK[0x21F0] = 0u;
  *&STACK[0x2200] = 0u;
  *&STACK[0x2210] = 0u;
  *&STACK[0x2220] = 0u;
  *&STACK[0x2230] = 0u;
  bzero(&STACK[0x1640], 0xAF0uLL);
  bzero(&v109, 0x15E0uLL);
  v27 = (a10 * v16) - v22;
  v28 = vdup_n_s8(v14);
  v29 = 2 * v18;
  v30 = 4 * v18;
  v31 = 0x4000;
  do
  {
    if (v22 >= 2)
    {
      v32 = v22;
      do
      {
        v33 = 0;
        v110.val[0].i64[0] = *v25;
        v110.val[0].i64[1] = *(v25 + v18);
        v110.val[1].i64[0] = *(v25 + 2 * v18);
        v110.val[1].i64[1] = *(v25 + v29 + v18);
        v26.i64[0] = *(v25 + v29 + v29 - 3);
        v34 = vqtbl2q_s8(v110, xmmword_277BB77B0);
        v35 = vqtbl2q_s8(v110, xmmword_277BB77C0);
        v110.val[0] = vqtbl2q_s8(*(&v26 - 1), xmmword_277BB77D0);
        v110.val[1] = vsubl_u8(*v34.i8, v28);
        v36 = vsubl_u8(*&vextq_s8(v34, v34, 8uLL), v28);
        v37 = vsubl_u8(*v110.val[0].i8, v28);
        v38 = vsubl_u8(*v35.i8, v28);
        v39 = vsubl_u8(*&vextq_s8(v35, v35, 8uLL), v28);
        v110.val[0] = vsubl_u8(*&vextq_s8(v110.val[0], v110.val[0], 8uLL), v28);
        *&STACK[0x2300] = v110.val[1];
        *&STACK[0x2310] = v36;
        *&STACK[0x2320] = v37;
        *&STACK[0x22C0] = v38;
        *&STACK[0x22D0] = v39;
        *&STACK[0x22E0] = v110.val[0];
        v40 = *(v25 + v30 + 4) - v14;
        LOWORD(STACK[0x2330]) = *(v25 + v30 + 4) - v14;
        v41 = *(v25 + v30 + 5) - v14;
        LOWORD(STACK[0x22F0]) = *(v25 + v30 + 5) - v14;
        v42 = *v24 - v14;
        v43 = vdupq_n_s16(v42);
        v44 = v24[1] - v14;
        v45 = vdupq_n_s16(v44);
        v46 = vmlal_high_s16(vmlal_high_s16(*&STACK[0x2250], v110.val[1], v43), v38, v45);
        *&STACK[0x2240] = vmlal_s16(vmlal_s16(*&STACK[0x2240], *v110.val[1].i8, *v43.i8), *v38.i8, *v45.i8);
        *&STACK[0x2250] = v46;
        v47 = vmlal_high_s16(vmlal_high_s16(*&STACK[0x2270], v36, v43), v39, v45);
        *&STACK[0x2260] = vmlal_s16(vmlal_s16(*&STACK[0x2260], *v36.i8, *v43.i8), *v39.i8, *v45.i8);
        *&STACK[0x2270] = v47;
        v26 = vmlal_high_s16(vmlal_high_s16(*&STACK[0x2290], v37, v43), v110.val[0], v45);
        v48 = v42 * v40 + v44 * v41 + LODWORD(STACK[0x22A0]);
        *&STACK[0x2280] = vmlal_s16(vmlal_s16(*&STACK[0x2280], *v37.i8, *v43.i8), *v110.val[0].i8, *v45.i8);
        *&STACK[0x2290] = v26;
        LODWORD(STACK[0x22A0]) = v48;
        v49 = -4;
        v50 = &STACK[0x2300];
        v51 = &STACK[0x22C0];
        v52 = &STACK[0x1720];
        do
        {
          v53 = *(&STACK[0x2300] + 2 * v33);
          v54 = *(&STACK[0x22C0] + 2 * v33);
          v55 = v52;
          v56 = v51;
          v57 = v50;
          v58 = v49;
          do
          {
            v59 = *v57++;
            v60 = v59;
            v61 = *v56++;
            v62 = vmlal_lane_s16(vmlal_lane_s16(v55[-7], v60, v53, 1), v61, v54, 1);
            v63 = vmlal_lane_s16(vmlal_lane_s16(*v55, v60, v53, 2), v61, v54, 2);
            v64 = vmlal_lane_s16(vmlal_lane_s16(v55[7], v60, v53, 3), v61, v54, 3);
            v55[-14] = vmlal_lane_s16(vmlal_lane_s16(v55[-14], v60, v53, 0), v61, v54, 0);
            v55[-7] = v62;
            *v55 = v63;
            v55[7] = v64;
            v58 += 4;
            ++v55;
          }

          while (v58 < 0x18);
          v49 += 4;
          ++v50;
          ++v51;
          v52 += 58;
          v65 = v33 >= 0x14;
          v33 += 4;
        }

        while (!v65);
        LODWORD(STACK[0x2120]) += v40 * v40 + v41 * v41;
        if (!--v31)
        {
          v66 = &STACK[0x2140];
          v67 = &STACK[0x2240];
          for (i = 32; i > 4; i -= 4)
          {
            v69 = *v67;
            *v67 = 0;
            v67[1] = 0;
            v67 += 2;
            v70 = vaddw_s32(*v66, *v69.i8);
            v71 = vaddw_high_s32(v66[1], v69);
            *v66 = v70;
            v66[1] = v71;
            v66 += 2;
          }

          v72 = 0;
          v73 = &STACK[0x1640];
          v74 = &v109;
          do
          {
            v75 = 28 - (v72 & 0xFFFFFFFC);
            v76 = 2 * (v72 >> 2);
            v77 = 4 * (v72 >> 2);
            do
            {
              v78 = &v73[v76];
              v79 = &v74[v77];
              v80 = *&v73[v76];
              *v78 = 0;
              v78[1] = 0;
              v26 = *&v74[v77 + 2];
              *v79 = vaddw_s32(*&v74[v77], *v80.i8);
              v79[1] = vaddw_high_s32(v26, v80);
              v75 -= 4;
              v76 += 2;
              v77 += 4;
            }

            while (v75 > 4);
            v74[24] += *(v73 + 24);
            *(v73 + 24) = 0;
            v74 += 28;
            v73 += 14;
            ++v72;
          }

          while (v72 != 25);
          v31 = 0x4000;
        }

        v25 = (v25 + 2);
        v24 += 2;
        v81 = v32 <= 3;
        v32 -= 2;
      }

      while (!v81);
    }

    if (v22)
    {
      v82 = 0;
      v111.val[0].i64[0] = *v25;
      v111.val[0].i64[1] = *(v25 + v18);
      v111.val[1].i64[0] = *(v25 + 2 * v18);
      v111.val[1].i64[1] = *(v25 + v29 + v18);
      v26.i64[0] = *(v25 + v29 + v29 - 3);
      v83 = vqtbl2q_s8(v111, xmmword_277BB77B0);
      *v111.val[0].i8 = vqtbl2_s8(*(&v26 - 1), 0x161514130C0B0A09);
      v111.val[1] = vsubl_u8(*v83.i8, v28);
      v84 = vsubl_u8(*&vextq_s8(v83, v83, 8uLL), v28);
      v111.val[0] = vsubl_u8(*v111.val[0].i8, v28);
      *&STACK[0x2300] = v111.val[1];
      *&STACK[0x2310] = v84;
      *&STACK[0x2320] = v111.val[0];
      v85 = *(v25 + v30 + 4) - v14;
      LOWORD(STACK[0x2330]) = *(v25 + v30 + 4) - v14;
      v86 = *v24 - v14;
      v87 = vdupq_n_s16(v86);
      v88 = vmlal_high_s16(*&STACK[0x2250], v111.val[1], v87);
      *&STACK[0x2240] = vmlal_s16(*&STACK[0x2240], *v111.val[1].i8, *v87.i8);
      *&STACK[0x2250] = v88;
      v89 = vmlal_high_s16(*&STACK[0x2270], v84, v87);
      *&STACK[0x2260] = vmlal_s16(*&STACK[0x2260], *v84.i8, *v87.i8);
      *&STACK[0x2270] = v89;
      v90 = vmlal_high_s16(*&STACK[0x2290], v111.val[0], v87);
      *&STACK[0x2280] = vmlal_s16(*&STACK[0x2280], *v111.val[0].i8, *v87.i8);
      *&STACK[0x2290] = v90;
      LODWORD(STACK[0x22A0]) += v86 * v85;
      v91 = -4;
      v92 = &STACK[0x2300];
      v93 = &STACK[0x1720];
      do
      {
        v94 = *(&STACK[0x2300] + 2 * v82);
        v95 = v92;
        v96 = v93;
        v97 = v91;
        do
        {
          v98 = *v95++;
          v26 = vmlal_lane_s16(v96[-14], v98, v94, 0);
          v99 = vmlal_lane_s16(v96[-7], v98, v94, 1);
          v100 = vmlal_lane_s16(*v96, v98, v94, 2);
          v101 = vmlal_lane_s16(v96[7], v98, v94, 3);
          v96[-14] = v26;
          v96[-7] = v99;
          *v96 = v100;
          v96[7] = v101;
          v97 += 4;
          ++v96;
        }

        while (v97 < 0x18);
        v91 += 4;
        v93 += 58;
        ++v92;
        v65 = v82 >= 0x14;
        v82 += 4;
      }

      while (!v65);
      v25 = (v25 + 1);
      ++v24;
      LODWORD(STACK[0x2120]) += v85 * v85;
    }

    v24 += v27;
    v25 = (v25 + (a10 * v18) - v22);
    --v20;
  }

  while (v20);
  v102 = 0;
  v103 = &STACK[0x2240];
  v104 = &STACK[0x2140];
  do
  {
    v105 = 0;
    v106 = v104;
    do
    {
      v107 = *v106;
      v106 += 5;
      *v12++ += (v107 + *(v103 + v105)) * a10;
      v105 += 20;
    }

    while (v105 != 100);
    ++v102;
    v103 = (v103 + 4);
    ++v104;
  }

  while (v102 != 5);
  return sub_277AA5BFC(a9, &v109, &STACK[0x1640], 5, 28, a10);
}

void *sub_277AA53E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned int a10)
{
  v11 = MEMORY[0x28223BE20]();
  v13 = v12;
  v15 = v14;
  v140 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v11;
  STACK[0x7BB8] = *MEMORY[0x277D85DE8];
  *&STACK[0x79C0] = 0u;
  *&STACK[0x79D0] = 0u;
  *&STACK[0x79E0] = 0u;
  *&STACK[0x79F0] = 0u;
  *&STACK[0x7A00] = 0u;
  *&STACK[0x7A10] = 0u;
  *&STACK[0x7A20] = 0u;
  *&STACK[0x7A30] = 0u;
  *&STACK[0x7A40] = 0u;
  *&STACK[0x7A50] = 0u;
  *&STACK[0x7A60] = 0u;
  *&STACK[0x7A70] = 0u;
  *&STACK[0x7A80] = 0u;
  *&STACK[0x7A90] = 0u;
  *&STACK[0x7800] = 0u;
  *&STACK[0x7810] = 0u;
  *&STACK[0x7820] = 0u;
  *&STACK[0x7830] = 0u;
  *&STACK[0x7840] = 0u;
  *&STACK[0x7850] = 0u;
  *&STACK[0x7860] = 0u;
  *&STACK[0x7870] = 0u;
  *&STACK[0x7880] = 0u;
  *&STACK[0x7890] = 0u;
  *&STACK[0x78A0] = 0u;
  *&STACK[0x78B0] = 0u;
  *&STACK[0x78C0] = 0u;
  *&STACK[0x78D0] = 0u;
  *&STACK[0x78E0] = 0u;
  *&STACK[0x78F0] = 0u;
  *&STACK[0x7900] = 0u;
  *&STACK[0x7910] = 0u;
  *&STACK[0x7920] = 0u;
  *&STACK[0x7930] = 0u;
  *&STACK[0x7940] = 0u;
  *&STACK[0x7950] = 0u;
  *&STACK[0x7960] = 0u;
  *&STACK[0x7970] = 0u;
  *&STACK[0x7980] = 0u;
  *&STACK[0x7990] = 0u;
  *&STACK[0x79A0] = 0u;
  *&STACK[0x79B0] = 0u;
  bzero(&STACK[0x5000], 0x27D0uLL);
  bzero(&v142, 0x4FA0uLL);
  v141 = (a10 * v140) - v22;
  v27 = vdup_n_s8(v15);
  v28 = 2 * v18;
  v29 = 6 * v18;
  v30 = 0x4000;
  do
  {
    if (v22 >= 2)
    {
      v31 = v22;
      do
      {
        v32 = 0;
        v143.val[0].i64[0] = *v25;
        v143.val[0].i64[1] = *(v25 + v18);
        v143.val[1].i64[0] = *(v25 + 2 * v18);
        v143.val[1].i64[1] = *(v25 + v28 + v18);
        v33 = (v25 + v28 + v28);
        v34 = *v33;
        v35 = *(v33 + v18);
        *&v10 = *(v33 + v28 - 1);
        v36 = vqtbl2q_s8(v143, xmmword_277BB77E0);
        v37 = vqtbl2q_s8(v143, xmmword_277BB77F0);
        v38 = vsubl_u8(*v36.i8, v27);
        v39 = vsubl_u8(*&vextq_s8(v36, v36, 8uLL), v27);
        v40 = vsubl_u8(*v37.i8, v27);
        v41 = vsubl_u8(*&vextq_s8(v37, v37, 8uLL), v27);
        *&STACK[0x7B40] = v38;
        *&STACK[0x7B50] = v39;
        *&STACK[0x7AC0] = v40;
        *&STACK[0x7AD0] = v41;
        v42 = vqtbl2q_s8(*(&v143 + 16), xmmword_277BB7800);
        v43 = vqtbl2q_s8(*(&v143 + 16), xmmword_277BB7810);
        v44 = vsubl_u8(*v42.i8, v27);
        v45 = vsubl_u8(*&vextq_s8(v42, v42, 8uLL), v27);
        v46 = vsubl_u8(*v43.i8, v27);
        v47 = vsubl_u8(*&vextq_s8(v43, v43, 8uLL), v27);
        *&STACK[0x7B60] = v44;
        *&STACK[0x7B70] = v45;
        *&STACK[0x7AE0] = v46;
        *&STACK[0x7AF0] = v47;
        v48 = vqtbl2q_s8(*(&v10 - 1), xmmword_277BB7820);
        v49 = vqtbl2q_s8(*(&v10 - 1), xmmword_277BB7830);
        v50 = vsubl_u8(*v48.i8, v27);
        v143.val[0] = vsubl_u8(*&vextq_s8(v48, v48, 8uLL), v27);
        v51 = vsubl_u8(*v49.i8, v27);
        v52 = vsubl_u8(*&vextq_s8(v49, v49, 8uLL), v27);
        *&STACK[0x7B80] = v50;
        *&STACK[0x7B90] = v143.val[0];
        *&STACK[0x7B00] = v51;
        *&STACK[0x7B10] = v52;
        v53 = *(v25 + v29 + 6) - v15;
        LOWORD(STACK[0x7BA0]) = *(v25 + v29 + 6) - v15;
        v54 = *(v25 + v29 + 7) - v15;
        LOWORD(STACK[0x7B20]) = *(v25 + v29 + 7) - v15;
        v55 = *v24 - v15;
        v56 = vdupq_n_s16(v55);
        v57 = v24[1] - v15;
        v58 = vdupq_n_s16(v57);
        v59 = vmlal_high_s16(vmlal_high_s16(*&STACK[0x79D0], v38, v56), v40, v58);
        *&STACK[0x79C0] = vmlal_s16(vmlal_s16(*&STACK[0x79C0], *v38.i8, *v56.i8), *v40.i8, *v58.i8);
        *&STACK[0x79D0] = v59;
        v60 = vmlal_high_s16(vmlal_high_s16(*&STACK[0x79F0], v39, v56), v41, v58);
        *&STACK[0x79E0] = vmlal_s16(vmlal_s16(*&STACK[0x79E0], *v39.i8, *v56.i8), *v41.i8, *v58.i8);
        *&STACK[0x79F0] = v60;
        v61 = vmlal_high_s16(vmlal_high_s16(*&STACK[0x7A10], v44, v56), v46, v58);
        *&STACK[0x7A00] = vmlal_s16(vmlal_s16(*&STACK[0x7A00], *v44.i8, *v56.i8), *v46.i8, *v58.i8);
        *&STACK[0x7A10] = v61;
        v62 = vmlal_high_s16(vmlal_high_s16(*&STACK[0x7A30], v45, v56), v47, v58);
        *&STACK[0x7A20] = vmlal_s16(vmlal_s16(*&STACK[0x7A20], *v45.i8, *v56.i8), *v47.i8, *v58.i8);
        *&STACK[0x7A30] = v62;
        v63 = vmlal_high_s16(vmlal_high_s16(*&STACK[0x7A50], v50, v56), v51, v58);
        *&STACK[0x7A40] = vmlal_s16(vmlal_s16(*&STACK[0x7A40], *v50.i8, *v56.i8), *v51.i8, *v58.i8);
        *&STACK[0x7A50] = v63;
        v64 = vmlal_high_s16(vmlal_high_s16(*&STACK[0x7A70], v143.val[0], v56), v52, v58);
        v65 = STACK[0x7A80];
        *&STACK[0x7A60] = vmlal_s16(vmlal_s16(*&STACK[0x7A60], *v143.val[0].i8, *v56.i8), *v52.i8, *v58.i8);
        *&STACK[0x7A70] = v64;
        LODWORD(STACK[0x7A80]) = v55 * v53 + v57 * v54 + v65;
        v66 = &STACK[0x5000];
        v67 = &STACK[0x7AC8];
        v68 = &STACK[0x7B48];
        v69 = &STACK[0x5000];
        do
        {
          v70 = *(&STACK[0x7B40] + 2 * v32);
          v71 = *(&STACK[0x7AC0] + 2 * v32);
          v72 = &v69[v32 / 2];
          v73 = vmlal_lane_s16(vmlal_lane_s16(v72[13], v70, v70, 1), v71, v71, 1);
          v74 = vmlal_lane_s16(vmlal_lane_s16(v72[26], v70, v70, 2), v71, v71, 2);
          v75 = vmlal_lane_s16(vmlal_lane_s16(v72[39], v70, v70, 3), v71, v71, 3);
          *v72 = vmlal_lane_s16(vmlal_lane_s16(*v72, v70, v70, 0), v71, v71, 0);
          v72[13] = v73;
          v72[26] = v74;
          v72[39] = v75;
          v76 = v67;
          v77 = v66;
          v78 = v68;
          v79 = v32;
          do
          {
            v80 = *v78++;
            v81 = v80;
            v82 = *v76++;
            v83 = v82;
            v84 = v77[1];
            ++v77;
            v26 = vmlal_lane_s16(vmlal_lane_s16(v77[13], v81, v70, 1), v83, v71, 1);
            v85 = vmlal_lane_s16(vmlal_lane_s16(v77[26], v81, v70, 2), v83, v71, 2);
            v86 = vmlal_lane_s16(vmlal_lane_s16(v77[39], v81, v70, 3), v83, v71, 3);
            *v77 = vmlal_lane_s16(vmlal_lane_s16(v84, v81, v70, 0), v83, v71, 0);
            v77[13] = v26;
            v77[26] = v85;
            v77[39] = v86;
            v79 += 4;
          }

          while (v79 < 0x30);
          v69 += 104;
          ++v68;
          v66 += 106;
          ++v67;
          v87 = v32 >= 0x2C;
          v32 += 4;
        }

        while (!v87);
        LODWORD(STACK[0x77C0]) += v53 * v53 + v54 * v54;
        if (!--v30)
        {
          v88 = &STACK[0x7800];
          v89 = &STACK[0x79C0];
          for (i = 56; i > 4; i -= 4)
          {
            v91 = *v89;
            *v89 = 0;
            v89[1] = 0;
            v89 += 2;
            v92 = vaddw_s32(*v88, *v91.i8);
            v93 = vaddw_high_s32(v88[1], v91);
            *v88 = v92;
            v88[1] = v93;
            v88 += 2;
          }

          v94 = 0;
          v95 = &STACK[0x5000];
          v96 = &v142;
          do
          {
            v97 = 52 - (v94 & 0xFFFFFFFC);
            v98 = 2 * (v94 >> 2);
            v99 = 4 * (v94 >> 2);
            do
            {
              v100 = &v95[v98];
              v101 = &v96[v99];
              v102 = *&v95[v98];
              *v100 = 0;
              v100[1] = 0;
              v103 = vaddw_s32(*&v96[v99], *v102.i8);
              v104 = vaddw_high_s32(*&v96[v99 + 2], v102);
              *v101 = v103;
              v101[1] = v104;
              v97 -= 4;
              v98 += 2;
              v99 += 4;
            }

            while (v97 > 4);
            v96[48] += *(v95 + 48);
            *(v95 + 48) = 0;
            v96 += 52;
            v95 += 26;
            ++v94;
          }

          while (v94 != 49);
          v30 = 0x4000;
        }

        v25 = (v25 + 2);
        v24 += 2;
        v105 = v31 <= 3;
        v31 -= 2;
      }

      while (!v105);
    }

    if (v22)
    {
      v106 = 0;
      v144.val[0].i64[0] = *v25;
      v144.val[0].i64[1] = *(v25 + v18);
      v144.val[1].i64[0] = *(v25 + 2 * v18);
      v144.val[1].i64[1] = *(v25 + v28 + v18);
      v107 = (v25 + v28 + v28);
      v108 = *v107;
      v109 = *(v107 + v18);
      v26.i64[0] = *(v107 + v28 - 1);
      v110 = vqtbl2q_s8(v144, xmmword_277BB77E0);
      v111 = vsubl_u8(*v110.i8, v27);
      v112 = vsubl_u8(*&vextq_s8(v110, v110, 8uLL), v27);
      *&STACK[0x7B40] = v111;
      *&STACK[0x7B50] = v112;
      v113 = vqtbl2q_s8(*(&v144 + 16), xmmword_277BB7800);
      v114 = vsubl_u8(*v113.i8, v27);
      v115 = vsubl_u8(*&vextq_s8(v113, v113, 8uLL), v27);
      *&STACK[0x7B60] = v114;
      *&STACK[0x7B70] = v115;
      v144.val[0] = vqtbl2q_s8(*(&v26 - 1), xmmword_277BB7820);
      v144.val[1] = vsubl_u8(*v144.val[0].i8, v27);
      v144.val[0] = vsubl_u8(*&vextq_s8(v144.val[0], v144.val[0], 8uLL), v27);
      *&STACK[0x7B80] = v144.val[1];
      *&STACK[0x7B90] = v144.val[0];
      v116 = *(v25 + v29 + 6) - v15;
      LOWORD(STACK[0x7BA0]) = *(v25 + v29 + 6) - v15;
      LODWORD(v107) = *v24 - v15;
      v117 = vdupq_n_s16(v107);
      v118 = vmlal_high_s16(*&STACK[0x79D0], v111, v117);
      *&STACK[0x79C0] = vmlal_s16(*&STACK[0x79C0], *v111.i8, *v117.i8);
      *&STACK[0x79D0] = v118;
      v119 = vmlal_high_s16(*&STACK[0x79F0], v112, v117);
      *&STACK[0x79E0] = vmlal_s16(*&STACK[0x79E0], *v112.i8, *v117.i8);
      *&STACK[0x79F0] = v119;
      v120 = vmlal_high_s16(*&STACK[0x7A10], v114, v117);
      *&STACK[0x7A00] = vmlal_s16(*&STACK[0x7A00], *v114.i8, *v117.i8);
      *&STACK[0x7A10] = v120;
      v121 = vmlal_high_s16(*&STACK[0x7A30], v115, v117);
      *&STACK[0x7A20] = vmlal_s16(*&STACK[0x7A20], *v115.i8, *v117.i8);
      *&STACK[0x7A30] = v121;
      v122 = vmlal_high_s16(*&STACK[0x7A50], v144.val[1], v117);
      *&STACK[0x7A40] = vmlal_s16(*&STACK[0x7A40], *v144.val[1].i8, *v117.i8);
      *&STACK[0x7A50] = v122;
      v144.val[1] = vmlal_high_s16(*&STACK[0x7A70], v144.val[0], v117);
      *&STACK[0x7A60] = vmlal_s16(*&STACK[0x7A60], *v144.val[0].i8, *v117.i8);
      *&STACK[0x7A70] = v144.val[1];
      LODWORD(STACK[0x7A80]) += v107 * v116;
      v123 = -4;
      v124 = &STACK[0x5000];
      v125 = &STACK[0x7B40];
      do
      {
        v126 = *(&STACK[0x7B40] + 2 * v106);
        v127 = v125;
        v128 = v124;
        v129 = v123;
        do
        {
          v130 = *v127++;
          v131 = vmlal_lane_s16(v128[13], v130, v126, 1);
          v26 = vmlal_lane_s16(v128[26], v130, v126, 2);
          v132 = vmlal_lane_s16(v128[39], v130, v126, 3);
          *v128 = vmlal_lane_s16(*v128, v130, v126, 0);
          v128[13] = v131;
          v128[26] = v26;
          v128[39] = v132;
          v129 += 4;
          ++v128;
        }

        while (v129 < 0x30);
        v123 += 4;
        v124 += 106;
        ++v125;
        v87 = v106 >= 0x2C;
        v106 += 4;
      }

      while (!v87);
      v25 = (v25 + 1);
      ++v24;
      LODWORD(STACK[0x77C0]) += v116 * v116;
    }

    v24 += v141;
    v25 = (v25 + (a10 * v18) - v22);
    --v20;
  }

  while (v20);
  v133 = 0;
  v134 = &STACK[0x79C0];
  v135 = &STACK[0x7800];
  do
  {
    v136 = 0;
    v137 = v135;
    do
    {
      v138 = *v137;
      v137 += 7;
      *v13++ += (v138 + *(v134 + v136)) * a10;
      v136 += 28;
    }

    while (v136 != 196);
    ++v133;
    v134 = (v134 + 4);
    ++v135;
  }

  while (v133 != 7);
  return sub_277AA5BFC(a9, &v142, &STACK[0x5000], 7, 52, a10);
}

void *sub_277AA5BFC(void *result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6)
{
  v6 = 0;
  v7 = a4 * a4;
  do
  {
    v8 = v6;
    if (v6 < v7)
    {
      do
      {
        v9 = 0;
        do
        {
          v10 = v9;
          if (v9 < v7)
          {
            do
            {
              if (v8 >= v10)
              {
                v11 = v10;
              }

              else
              {
                v11 = v8;
              }

              if (v8 <= v10)
              {
                v12 = v10;
              }

              else
              {
                v12 = v8;
              }

              *result++ += (*(a2 + 8 * (v12 + v11 * a5)) + *(a3 + 4 * (v12 + v11 * a5))) * a6;
              v10 += a4;
            }

            while (v10 < v7);
          }

          ++v9;
        }

        while (v9 != a4);
        v8 += a4;
      }

      while (v8 < v7);
    }

    ++v6;
  }

  while (v6 != a4);
  return result;
}

uint64_t sub_277AA5C80(uint64_t result, _DWORD *a2, int a3, int a4)
{
  if (a3)
  {
    v4 = vtst_s32(*(*(result + 24696) + 96), *(*(result + 24696) + 96));
  }

  else
  {
    v4 = 0;
  }

  v5 = (((*(result + 72) + ((1 << (v4.i8[0] & 1)) >> 1)) >> (v4.i8[0] & 1)) + (a4 >> 1)) / a4;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = (((*(result + 60) + ((1 << (v4.i8[4] & 1)) >> 1)) >> (v4.i8[4] & 1)) + (a4 >> 1)) / a4;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  a2[1] = a4;
  a2[2] = v6 * v5;
  a2[3] = v6;
  a2[4] = v5;
  return result;
}

void sub_277AA5CFC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 48) + (a2 << 6);
  v8 = *(a3 + 24);
  if (*(a3 + 32))
  {
    v9 = 5;
  }

  else
  {
    v9 = 7;
  }

  v20 = v9;
  v10 = (a3 + 96);
  v21 = a3 + 272;
  v11 = 0.0;
  do
  {
    if (v4)
    {
      v12 = v10[v4];
      if (v12 > *v10)
      {
        goto LABEL_19;
      }

      if (v4 == 2)
      {
        v13 = sub_277AA6038((v7 + 32), v21);
        v14 = 2;
      }

      else
      {
        v13 = sub_277AA5EFC(v20, v7, (a3 + 240));
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
      v13 = 0;
      v12 = *v10;
    }

    v15 = *(v8 + 47408 + 4 * v14) + (v13 << 9);
    v16 = *(v8 + 16920) * (v15 >> 4) * 0.001953125 + (v12 >> (2 * *(*(*(a3 + 16) + 24696) + 72) - 16)) * 128.0;
    if (v4 == 2 && *(v7 + 32) <= 9)
    {
      v16 = v16 * (*(*(a3 + 56) + 12) * 0.01 + 1.0);
    }

    if (v16 < v11 || v4 == 0)
    {
      v6 = v4;
      v5 = v15;
      v11 = v16;
    }

LABEL_19:
    ++v4;
  }

  while (v4 != 3);
  *(v7 + 52) = v6;
  *(a3 + 152) += v10[v6];
  *(a3 + 184) += v5;
  if (v6 == 1)
  {
    v19 = *(v7 + 16);
    *(a3 + 240) = *v7;
    *(a3 + 256) = v19;
  }

  else if (v6 == 2)
  {
    v18 = *(v7 + 32);
    *(v21 + 8) = *(v7 + 40);
    *v21 = v18;
  }
}

uint64_t sub_277AA5EFC(int a1, _WORD *a2, _WORD *a3)
{
  if (a1 == 7)
  {
    v6 = sub_2779918C0(0x10u, 1, (*a3 + 5), (*a2 + 5));
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_2779918C0(0x20u, 2, (a3[1] + 23), (a2[1] + 23)) + v6;
  v8 = v7 + sub_2779918C0(0x40u, 3, (a3[2] + 17), (a2[2] + 17));
  if (a1 == 7)
  {
    v8 += sub_2779918C0(0x10u, 1, (a3[8] + 5), (a2[8] + 5));
  }

  v9 = sub_2779918C0(0x20u, 2, (a3[9] + 23), (a2[9] + 23));
  return v9 + sub_2779918C0(0x40u, 3, (a3[10] + 17), (a2[10] + 17)) + v8;
}

uint64_t sub_277AA6038(int *a1, uint64_t a2)
{
  v4 = (&unk_277C3C250 + 16 * *a1);
  if (*v4 < 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = sub_2779918C0(0x80u, 4, (*(a2 + 4) + 96), (*(a1 + 2) + 96)) + 4;
  }

  if (v4[1] >= 1)
  {
    return sub_2779918C0(0x80u, 4, (*(a2 + 8) + 32), (*(a1 + 4) + 32)) + v5;
  }

  return v5;
}

int *sub_277AA60E8(int *result, int a2, uint64_t a3, uint32x4_t *a4, uint64_t a5, uint64_t a6)
{
  v88 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 48) + (a2 << 6);
  v7 = *(a3 + 24);
  if (*(a3 + 120))
  {
    *(a3 + 176) += *(v7 + 47428);
    *(a3 + 144) += *(a3 + 96);
    *(v6 + 48) = 0;
    *(a3 + 112) = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v66 = v7 + 47428;
    v67 = *(a3 + 24);
    v68 = *(v7 + 47428);
    v8 = *(*(a3 + 16) + 24696);
    v9 = v8[9].u8[4];
    v10 = v8[9].u32[0];
    v11 = result[2];
    v12 = *(a3 + 72);
    v13 = *result;
    v14 = *(a3 + 88);
    if (*(a3 + 32) < 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = vtst_s32(v8[12], v8[12]);
    }

    v69 = (*(a3 + 48) + (a2 << 6));
    v16 = *(a3 + 64) + v12 * v11;
    v17 = *(a3 + 80) + v14 * v11;
    v18 = 0x40u >> (v15.i8[0] & 1);
    v19 = 0x40u >> (v15.i8[4] & 1);
    v20 = (result[1] - v13);
    v21 = (result[3] - v11);
    v22 = a4 + 40397;
    v23 = ((v20 + 7) & 0xFFFFFFF8) + 8;
    v79 = a4;
    v80 = a6;
    v77 = *(a3 + 72);
    v78 = v9;
    v76 = *(a3 + 88);
    v74 = v17;
    v75 = v16;
    v72 = v19;
    v73 = v18;
    v24 = v21;
    v25 = a4 + 40397;
    v71 = v10;
    if (*(*(a3 + 56) + 16))
    {
      v26 = 0;
      v27 = 0;
      v28 = 0uLL;
      v29 = -1;
      do
      {
        v81 = v28;
        v30 = dword_277C2F858[v26];
        v85 = 0;
        v31 = v10;
        sub_277AA66EC(v16 + v13, v20, v21, v12, v17 + v13, v14, v78, v10, v18, v19, v30, a4, v22, v23, v86, &v85, a6);
        v23 = ((v20 + 7) & 0xFFFFFFF8) + 8;
        v22 = v25;
        v21 = v24;
        v19 = v72;
        v18 = v73;
        v17 = v74;
        v16 = v75;
        v14 = v76;
        v12 = v77;
        a4 = v79;
        a6 = v80;
        v10 = v31;
        v32 = v29 != -1 && v29 <= v85;
        if (!v32)
        {
          v27 = v30;
          v29 = v85;
          v34 = -1;
        }

        else
        {
          v34 = 0;
        }

        *(&v35 + 1) = *(&v81 + 1);
        *&v35 = vbsl_s8(vdup_n_s32(v34), *&v86[0], *&v81);
        v28 = v35;
        ++v26;
      }

      while (v26 != 4);
      v36 = v27 - 1;
      v37 = v27;
      do
      {
        if (v36 <= 9)
        {
          v85 = 0;
          v82 = v28;
          sub_277AA66EC(v16 + v13, v20, v21, v12, v17 + v13, v14, v78, v31, v18, v19, v36, a4, v22, v23, v86, &v85, a6);
          v23 = ((v20 + 7) & 0xFFFFFFF8) + 8;
          v22 = v25;
          v21 = v24;
          v19 = v72;
          v18 = v73;
          v17 = v74;
          v16 = v75;
          v14 = v76;
          v12 = v77;
          a4 = v79;
          a6 = v80;
          if (v29 == -1 || v29 > v85)
          {
            v37 = v36;
            v29 = v85;
            v40 = -1;
          }

          else
          {
            v40 = 0;
          }

          *(&v41 + 1) = *(&v82 + 1);
          *&v41 = vbsl_s8(vdup_n_s32(v40), *&v86[0], *&v82);
          v28 = v41;
        }

        v32 = v36 < v27;
        v36 += 2;
      }

      while (v32);
      v42 = 0;
      v43 = 1;
      do
      {
        v83 = v28;
        v44 = v43;
        v45 = dword_277C2F868[14 * v42 + v37];
        v85 = 0;
        sub_277AA66EC(v16 + v13, v20, v21, v12, v17 + v13, v14, v78, v71, v18, v19, v45, a4, v22, v23, v86, &v85, a6);
        v23 = ((v20 + 7) & 0xFFFFFFF8) + 8;
        v22 = v25;
        v21 = v24;
        v17 = v74;
        v16 = v75;
        v14 = v76;
        v12 = v77;
        a4 = v79;
        a6 = v80;
        v43 = 0;
        v47 = v29 == -1 || v29 > v85;
        v48 = !v47;
        v19 = v72;
        v18 = v73;
        if (v48)
        {
          v49 = 0;
        }

        else
        {
          v37 = v45;
          v29 = v85;
          v49 = -1;
        }

        *(&v50 + 1) = *(&v83 + 1);
        *&v50 = vbsl_s8(vdup_n_s32(v49), *&v86[0], *&v83);
        v28 = v50;
        v42 = 1;
      }

      while ((v44 & 1) != 0);
    }

    else
    {
      v51 = 0;
      v37 = 0;
      v28 = 0uLL;
      v52 = -1;
      do
      {
        v84 = v28;
        v85 = 0;
        sub_277AA66EC(v16 + v13, v20, v21, v12, v17 + v13, v14, v78, v71, v18, v19, v51, a4, v22, v23, v86, &v85, a6);
        v23 = ((v20 + 7) & 0xFFFFFFF8) + 8;
        v22 = v25;
        v21 = v24;
        v19 = v72;
        v18 = v73;
        v17 = v74;
        v16 = v75;
        v14 = v76;
        v12 = v77;
        a4 = v79;
        a6 = v80;
        if (v52 == -1 || v52 > v85)
        {
          v37 = v51;
          v52 = v85;
          v55 = -1;
        }

        else
        {
          v55 = 0;
        }

        *(&v56 + 1) = *(&v84 + 1);
        *&v56 = vbsl_s8(vdup_n_s32(v55), *&v86[0], *&v84);
        v28 = v56;
        ++v51;
      }

      while (v51 != 16);
    }

    v69[10] = DWORD1(v28);
    *(v69 + 4) = v37 | (v28 << 32);
    v87 = 0u;
    memset(v86, 0, sizeof(v86));
    LODWORD(v86[0]) = 2;
    v57 = *(v69 + 4);
    DWORD2(v87) = v69[10];
    *&v87 = v57;
    v58 = sub_277AA7B80();
    *(a3 + 112) = v58;
    v59 = *(v66 + 4);
    result = sub_277AA6038(v69 + 8, a3 + 224);
    v60 = *(v67 + 16920);
    v61 = (v68 >> 4) * v60 * 0.001953125 + (*(a3 + 96) >> (2 * v71 - 16)) * 128.0;
    v62 = v60 * ((v59 + (result << 9)) >> 4) * 0.001953125 + (v58 >> (2 * v71 - 16)) * 128.0;
    if (v69[8] <= 9)
    {
      v62 = v62 * (*(*(a3 + 56) + 12) * 0.01 + 1.0);
    }

    v63 = 2 * (v62 < v61);
    v69[12] = v63;
    *(a3 + 144) += *(a3 + 96 + 8 * v63);
    if (v62 >= v61)
    {
      v64 = v68;
    }

    else
    {
      v64 = v59 + (result << 9);
    }

    *(a3 + 176) += v64;
    if (v62 < v61)
    {
      v65 = *(v69 + 4);
      *(a3 + 232) = v69[10];
      *(a3 + 224) = v65;
    }
  }

  return result;
}

uint64_t sub_277AA66EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, int a11, uint32x4_t *a12, uint32x4_t *a13, int a14, unsigned int *a15, uint64_t *a16, uint64_t a17)
{
  v17 = MEMORY[0x28223BE20]();
  v378 = v22;
  v394 = v23;
  v388 = v25;
  v389 = v24;
  v390 = v17;
  v26 = a14;
  v413 = *MEMORY[0x277D85DE8];
  v392 = v20;
  v391 = v19;
  v393 = v18;
  if (v19 <= 0)
  {
    v91 = a11;
  }

  else
  {
    v377 = v18;
    v28 = a9;
    v27 = a10;
    v358 = v19;
    v357 = v20;
    v29 = (&unk_277C3C250 + 16 * a11);
    v395 = 8 * v20;
    v369 = 6 * v20 - 6 * v20 - 6;
    v368 = 4 * v20 - 6 * v20 - 6;
    v30 = 2 * v20 - 6 * v20;
    v366 = v30 - 6;
    v365 = 4 * v20 - 6 * v20 + 10;
    v363 = 10 - 6 * v20;
    v364 = v30 + 10;
    v398 = 4 * v20;
    v361 = -6 - 6 * v20;
    v31 = 0;
    v376 = -3 * v20;
    v367 = 2 * v20;
    do
    {
      v32 = v31;
      v359 = v19;
      if (v27 >= v19)
      {
        v33 = v19;
      }

      else
      {
        v33 = v27;
      }

      v360 = v32;
      v34 = v391 - v32;
      if (v391 - v32 >= v27)
      {
        v34 = v27;
      }

      v381 = v34;
      if (v18 >= 1)
      {
        v35 = 0;
        v36 = v33 + 6;
        v373 = v36 - 1;
        v372 = &a12->i8[4 * v32 * a14];
        v362 = &a13->i8[4 * v32 * a14];
        v380 = v390 + v32 * v357;
        v379 = v34 + 6;
        v370 = 2 * v36;
        v371 = v34 + 10;
        v37 = v18;
        do
        {
          v386 = v37;
          if (v28 >= v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v28;
          }

          if (v18 - v35 >= v28)
          {
            v39 = v28;
          }

          else
          {
            v39 = v18 - v35;
          }

          v40 = v380 + v35;
          v387 = v39;
          v41 = v39 + 6;
          v385 = v39 + 6;
          if (v394)
          {
            v383 = 2 * (v38 + 6);
            v384 = v35;
            v382 = v411 + v370 * (v38 + 6);
            v42 = 4 * v38 + 24;
            v43 = v412;
            v44 = &v412[6 * v38 + 36];
            v45 = &v412[4 * v38 + 24];
            v46 = &v412[v383];
            v47 = &v411[4] + 6 * v38 + 4;
            v48 = &v411[3] + 4 * v38;
            v49 = v411 + v383;
            v396 = v38 + 14;
            v50 = 2 * v40 + 2 * v376;
            v51 = v369 + 2 * v40;
            v52 = v368 + 2 * v40;
            v53 = v366 + 2 * v40;
            v54 = 2 * v40 + 10;
            v55 = (v365 + 2 * v40);
            v56 = 8 * (v38 + 6);
            v374 = v41;
            v375 = 2 * v40;
            v57 = v411;
            v397 = v42;
            v58 = (v364 + 2 * v40);
            v59 = v398;
            LODWORD(v60) = v379;
            v61 = v363 + 2 * v40;
            do
            {
              v62 = 0;
              v401 = v60;
              v399 = v59;
              v400 = v42;
              v63 = v61;
              v402 = v43;
              v403 = v58;
              v64 = v43;
              v65 = v58;
              v406 = v46;
              v407 = v45;
              v66 = v46;
              v404 = v55;
              v405 = v54;
              v408 = v44;
              v67 = v396;
              do
              {
                v68 = v67;
                v69 = v44;
                v70 = v54;
                v71 = v45;
                v72 = v55;
                v73 = v66;
                v74 = v65;
                v75 = v64;
                v76 = *(v53 + v62);
                v77 = *(v52 + v62);
                v78 = *(v51 + v62);
                *&v57[v62 / 8] = *(v50 + v62 - 6);
                *&v49[v62] = v76;
                *&v48[v62] = v77;
                *&v47[v62] = v78;
                v79 = v63;
                v62 += 16;
                v67 -= 8;
                v44 += 16;
                v54 += 16;
                v45 += 16;
                v55 += 8;
                v66 += 8;
                v65 += 8;
                v64 += 8;
                v63 += 8;
              }

              while (v67 > 15);
              if (v67 > 8)
              {
                v80 = 0;
                do
                {
                  v81 = *v79++;
                  *v75++ = v81;
                  v82 = *v74++;
                  *v73++ = v82;
                  v83 = *v72++;
                  *v71++ = v83;
                  v84 = *v70++;
                  *v69++ = v84;
                  ++v80;
                }

                while (v80 < (v68 - 16));
              }

              v60 = (v401 - 4);
              v51 += v395;
              v52 += v395;
              v53 += v395;
              v50 += v395;
              v57 = (v57 + v56);
              v47 += v56;
              v48 += v56;
              v49 += v56;
              v44 = &v408[v56];
              v54 = v405 + v395;
              v45 = &v407[v56];
              v55 = &v404[v395 / 2];
              v46 = &v406[v56];
              v58 = &v403[v395 / 2];
              v43 = &v402[v56];
              v61 += v395;
              v59 = v399 + v398;
              v42 = v400 + v397;
            }

            while (v401 >= 8);
            if (v401 >= 5)
            {
              v85 = 0;
              v86 = (v375 + v361 + 2 * v399);
              v87 = v411 + 2 * v400;
              do
              {
                memcpy(v87, v86, 2 * v374);
                ++v85;
                v86 += v367;
                v87 += v383;
              }

              while (v85 < v60);
            }

            v88 = v373;
            v89 = a14;
            v29 = (&unk_277C3C250 + 16 * a11);
            v28 = a9;
            v35 = v384;
            v90 = v382;
            do
            {
              bzero(v90, 2 * v387 + 16);
              ++v88;
              v90 += v383;
            }

            while (v88 < v371);
          }

          else
          {
            v89 = v26;
            sub_277B8B7D0(v40 + v376 - 3, v392, v411, v41, v41, v379);
          }

          v26 = v89;
          if (*v29 >= 1 && sub_277B8BA38(v411 + 6 * v385 + 6, v387, v381, v385, &v372[4 * v35], v89, v378, a11) || v29[1] >= 1 && sub_277B8C81C(v411 + 6 * v385 + 6, v387, v381, v385, &v362[4 * v35], v89, v378, a11))
          {
            sub_2779F5C10(a17, 2, "Error allocating buffer in av1_selfguided_restoration");
          }

          v18 = v393;
          v35 += v28;
          v37 = v386 - v28;
        }

        while (v35 < v377);
      }

      v27 = a10;
      v31 = v360 + a10;
      v19 = v359 - a10;
    }

    while (v31 < v358);
    v91 = a11;
  }

  v92 = (&unk_277C3C250 + 16 * v91);
  v411[0] = 0;
  v410 = 0;
  v93 = *v92;
  v94 = v92[1];
  if (!v394)
  {
    v95 = v392;
    if ((v18 & 7) != 0)
    {
      if (v93 < 1)
      {
        if (v94 < 1)
        {
          goto LABEL_119;
        }

        if (v391 < 1)
        {
          v228 = 0;
        }

        else
        {
          v227 = 0;
          v228 = 0;
          v229 = 0;
          v230 = v389;
          v232 = a13;
          v231 = v390;
          do
          {
            v233 = v231;
            v234 = v230;
            v235 = v232;
            v236 = v18;
            if (v18 >= 1)
            {
              do
              {
                v238 = *v233++;
                v237 = v238;
                v239 = *v234++;
                v240 = v239 - v237;
                v241 = v235->i32[0];
                v235 = (v235 + 4);
                v242 = v241 - 16 * v237;
                v228 += v242 * v242;
                v227 += 16 * v240 * v242;
                --v236;
              }

              while (v236);
            }

            ++v229;
            v232 = (v232 + 4 * v26);
            v230 += v388;
            v231 += v392;
          }

          while (v229 != v391);
          v410 = v227;
        }

        v210 = 0;
        v211 = 0;
        v311 = v391 * v18;
        v262 = &v410;
        v263 = v228 / v311;
      }

      else if (v94 < 1)
      {
        if (v391 < 1)
        {
          v265 = 0;
        }

        else
        {
          v264 = 0;
          v265 = 0;
          v266 = 0;
          v267 = v389;
          v268 = v390;
          v269 = a12;
          do
          {
            v270 = v268;
            v271 = v267;
            v272 = v269;
            v273 = v18;
            if (v18 >= 1)
            {
              do
              {
                v275 = *v270++;
                v274 = v275;
                v276 = *v271++;
                v277 = v276 - v274;
                v278 = v272->i32[0];
                v272 = (v272 + 4);
                v279 = v278 - 16 * v274;
                v265 += v279 * v279;
                v264 += 16 * v277 * v279;
                --v273;
              }

              while (v273);
            }

            ++v266;
            v269 = (v269 + 4 * v26);
            v267 += v388;
            v268 += v392;
          }

          while (v266 != v391);
          v411[0] = v264;
        }

        v211 = 0;
        v263 = 0;
        v311 = v391 * v18;
        v262 = v411;
        v210 = v265 / v311;
      }

      else
      {
        if (v391 < 1)
        {
          v122 = 0;
          v123 = 0;
          v124 = 0;
          v125 = 0;
        }

        else
        {
          v121 = 0;
          v122 = 0;
          v123 = 0;
          v124 = 0;
          v125 = 0;
          v126 = 0;
          v127 = v389;
          v128 = 4 * v26;
          v129 = a13;
          v130 = v390;
          v131 = a12;
          do
          {
            v132 = v130;
            v133 = v127;
            v134 = v131;
            v135 = v129;
            v136 = v18;
            if (v18 >= 1)
            {
              do
              {
                v138 = *v132++;
                v137 = v138;
                v139 = *v133++;
                v140 = v139 - v137;
                v141 = v134->i32[0];
                v134 = (v134 + 4);
                v142 = v141 - 16 * v137;
                v143 = v135->i32[0];
                v135 = (v135 + 4);
                v144 = v143 - 16 * v137;
                v123 += v142 * v142;
                v125 += v144 * v144;
                v124 += v144 * v142;
                v145 = 16 * v140;
                v122 += v145 * v142;
                v121 += v144 * v145;
                --v136;
              }

              while (v136);
            }

            ++v126;
            v129 = (v129 + v128);
            v131 = (v131 + v128);
            v127 += v388;
            v130 += v392;
          }

          while (v126 != v391);
          v410 = v121;
        }

        v311 = v391 * v18;
        v210 = v123 / v311;
        v211 = v124 / v311;
        v411[0] = v122 / v311;
        v262 = &v410;
        v263 = v125 / v311;
      }

      v312 = *v262 / v311;
      goto LABEL_137;
    }

    if (v93 >= 1)
    {
      if (v94 > 0)
      {
        v150 = 0uLL;
        v193 = 4 * v26;
        v194 = a12;
        v195 = a13;
        v152 = 0uLL;
        v155 = 0uLL;
        v156 = 0uLL;
        v157 = 0uLL;
        v158 = 0uLL;
        v159 = 0uLL;
        v160 = 0uLL;
        v196 = v390;
        v161 = 0uLL;
        v197 = v391;
        v198 = v389;
        v163 = 0uLL;
        do
        {
          v199 = 0;
          v200 = 0;
          do
          {
            v201 = vshll_n_u8(*(v196 + v200), 4uLL);
            v202 = vsubw_u16(v194[v199], *v201.i8);
            v163 = vmlal_high_s32(vmlal_s32(v163, *v202.i8, *v202.i8), v202, v202);
            v203 = vshll_n_u8(*(v198 + v200), 4uLL);
            v204 = vsubl_u16(*v203.i8, *v201.i8);
            v205 = vsubl_high_u16(v203, v201);
            v206 = vsubw_high_u16(v194[v199 + 1], v201);
            v207 = vsubw_u16(v195[v199], *v201.i8);
            v161 = vmlal_high_s32(vmlal_s32(v161, *v206.i8, *v206.i8), v206, v206);
            v160 = vmlal_high_s32(vmlal_s32(v160, *v207.i8, *v207.i8), v207, v207);
            v208 = vsubw_high_u16(v195[v199 + 1], v201);
            v159 = vmlal_high_s32(vmlal_s32(v159, *v208.i8, *v208.i8), v208, v208);
            v158 = vmlal_high_s32(vmlal_s32(v158, *v202.i8, *v207.i8), v202, v207);
            v157 = vmlal_high_s32(vmlal_s32(v157, *v206.i8, *v208.i8), v206, v208);
            v156 = vmlal_high_s32(vmlal_s32(v156, *v202.i8, *v204.i8), v202, v204);
            v155 = vmlal_high_s32(vmlal_s32(v155, *v206.i8, *v205.i8), v206, v205);
            v152 = vmlal_high_s32(vmlal_s32(v152, *v207.i8, *v204.i8), v207, v204);
            v150 = vmlal_high_s32(vmlal_s32(v150, *v208.i8, *v205.i8), v208, v205);
            v200 += 8;
            v199 += 2;
          }

          while (v18 != v200);
          v198 += v388;
          v196 += v392;
          v195 = (v195 + v193);
          v194 = (v194 + v193);
          --v197;
        }

        while (v197);
        goto LABEL_79;
      }

      v150 = 0uLL;
      v280 = 0uLL;
      v281 = 0uLL;
      v314 = v389;
      v313 = a12;
      v315 = v390;
      v284 = 0uLL;
      v316 = v391;
      do
      {
        v317 = 0;
        v318 = v313;
        do
        {
          v319 = *v318;
          v320 = v318[1];
          v318 += 2;
          v321 = vshll_n_u8(*(v315 + v317), 4uLL);
          v322 = vshll_n_u8(*(v314 + v317), 4uLL);
          v323 = vsubl_u16(*v322.i8, *v321.i8);
          v324 = vsubl_high_u16(v322, v321);
          v325 = vsubw_u16(v319, *v321.i8);
          v326 = vsubw_high_u16(v320, v321);
          v284 = vmlal_high_s32(vmlal_s32(v284, *v325.i8, *v325.i8), v325, v325);
          v281 = vmlal_high_s32(vmlal_s32(v281, *v326.i8, *v326.i8), v326, v326);
          v280 = vmlal_high_s32(vmlal_s32(v280, *v325.i8, *v323.i8), v325, v323);
          v150 = vmlal_high_s32(vmlal_s32(v150, *v326.i8, *v324.i8), v326, v324);
          v317 += 8;
        }

        while (v18 != v317);
        v314 += v388;
        v315 += v392;
        v313 = (v313 + 4 * v26);
        --v316;
      }

      while (v316);
LABEL_131:
      v211 = 0;
      v263 = 0;
      v327 = v391 * v18;
      v21 = vaddvq_s64(vaddq_s64(v150, v280));
      v411[0] = *&v21 / v327;
      v210 = vaddvq_s64(vaddq_s64(v281, v284)) / v327;
      goto LABEL_138;
    }

    if (v94 < 1)
    {
      goto LABEL_119;
    }

    v297 = v389;
    v150 = 0uLL;
    v152 = 0uLL;
    v246 = 0uLL;
    v247 = 0uLL;
    v298 = a13;
    v299 = v390;
    v300 = v391;
    do
    {
      v301 = 0;
      v302 = v298;
      do
      {
        v303 = *v302;
        v304 = v302[1];
        v302 += 2;
        v305 = vshll_n_u8(*(v299 + v301), 4uLL);
        v306 = vshll_n_u8(*(v297 + v301), 4uLL);
        v307 = vsubl_u16(*v306.i8, *v305.i8);
        v308 = vsubl_high_u16(v306, v305);
        v309 = vsubw_u16(v303, *v305.i8);
        v310 = vsubw_high_u16(v304, v305);
        v247 = vmlal_high_s32(vmlal_s32(v247, *v309.i8, *v309.i8), v309, v309);
        v246 = vmlal_high_s32(vmlal_s32(v246, *v310.i8, *v310.i8), v310, v310);
        v152 = vmlal_high_s32(vmlal_s32(v152, *v309.i8, *v307.i8), v309, v307);
        v150 = vmlal_high_s32(vmlal_s32(v150, *v310.i8, *v308.i8), v310, v308);
        v301 += 8;
      }

      while (v18 != v301);
      v297 += v388;
      v299 += v392;
      v298 = (v298 + 4 * v26);
      --v300;
    }

    while (v300);
LABEL_117:
    v210 = 0;
    v211 = 0;
    v212 = vaddvq_s64(vaddq_s64(v246, v247));
    v209 = v391 * v18;
    goto LABEL_118;
  }

  v95 = v392;
  if ((v18 & 7) != 0)
  {
    if (v93 >= 1)
    {
      v96 = 2 * v389;
      v97 = 2 * v390;
      if (v94 < 1)
      {
        if (v391 < 1)
        {
          v214 = 0;
        }

        else
        {
          v213 = 0;
          v214 = 0;
          v215 = 0;
          v216 = a12;
          do
          {
            v217 = v97;
            v218 = v96;
            v219 = v216;
            v220 = v18;
            if (v18 >= 1)
            {
              do
              {
                v222 = *v217++;
                v221 = v222;
                v223 = *v218++;
                v224 = v223 - v221;
                v225 = v219->i32[0];
                v219 = (v219 + 4);
                v226 = v225 - 16 * v221;
                v214 += v226 * v226;
                v213 += 16 * v224 * v226;
                --v220;
              }

              while (v220);
            }

            ++v215;
            v216 = (v216 + 4 * v26);
            v96 += 2 * v388;
            v97 += 2 * v392;
          }

          while (v215 != v391);
          v411[0] = v213;
        }

        v211 = 0;
        v263 = 0;
        v261 = v391 * v18;
        v262 = v411;
        v210 = v214 / v261;
      }

      else
      {
        if (v391 < 1)
        {
          v99 = 0;
          v100 = 0;
          v101 = 0;
          v102 = 0;
        }

        else
        {
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v101 = 0;
          v102 = 0;
          v103 = 0;
          v104 = 4 * v26;
          v106 = a12;
          v105 = a13;
          do
          {
            v107 = v97;
            v108 = v96;
            v109 = v106;
            v110 = v105;
            v111 = v18;
            if (v18 >= 1)
            {
              do
              {
                v113 = *v107++;
                v112 = v113;
                v114 = *v108++;
                v115 = v114 - v112;
                v116 = v109->i32[0];
                v109 = (v109 + 4);
                v117 = v116 - 16 * v112;
                v118 = v110->i32[0];
                v110 = (v110 + 4);
                v119 = v118 - 16 * v112;
                v100 += v117 * v117;
                v102 += v119 * v119;
                v101 += v119 * v117;
                v120 = 16 * v115;
                v99 += v120 * v117;
                v98 += v119 * v120;
                --v111;
              }

              while (v111);
            }

            ++v103;
            v105 = (v105 + v104);
            v106 = (v106 + v104);
            v96 += 2 * v388;
            v97 += 2 * v392;
          }

          while (v103 != v391);
          v410 = v98;
        }

        v261 = v391 * v18;
        v210 = v100 / v261;
        v211 = v101 / v261;
        v411[0] = v99 / v261;
        v262 = &v410;
        v263 = v102 / v261;
      }

LABEL_126:
      v312 = *v262 / v261;
LABEL_137:
      *v262 = v312;
      goto LABEL_138;
    }

    if (v94 >= 1)
    {
      if (v391 < 1)
      {
        v178 = 0;
      }

      else
      {
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 2 * v389;
        v181 = a13;
        v182 = 2 * v390;
        do
        {
          v183 = v182;
          v184 = v180;
          v185 = v181;
          v186 = v18;
          if (v18 >= 1)
          {
            do
            {
              v188 = *v183++;
              v187 = v188;
              v189 = *v184++;
              v190 = v189 - v187;
              v191 = v185->i32[0];
              v185 = (v185 + 4);
              v192 = v191 - 16 * v187;
              v178 += v192 * v192;
              v177 += 16 * v190 * v192;
              --v186;
            }

            while (v186);
          }

          ++v179;
          v181 = (v181 + 4 * v26);
          v180 += 2 * v388;
          v182 += 2 * v392;
        }

        while (v179 != v391);
        v410 = v177;
      }

      v210 = 0;
      v211 = 0;
      v261 = v391 * v18;
      v262 = &v410;
      v263 = v178 / v261;
      goto LABEL_126;
    }

LABEL_119:
    v210 = 0;
    v211 = 0;
    v263 = 0;
    goto LABEL_139;
  }

  if (v93 < 1)
  {
    if (v94 < 1)
    {
      goto LABEL_119;
    }

    v243 = 2 * v389;
    v244 = a13;
    v245 = 2 * v390;
    v150 = 0uLL;
    v152 = 0uLL;
    v246 = 0uLL;
    v247 = 0uLL;
    v248 = v391;
    do
    {
      v249 = 0;
      v250 = v18;
      v251 = v244;
      do
      {
        v252 = *(v243 + v249);
        v253 = *(v245 + v249);
        v254 = *v251;
        v255 = v251[1];
        v251 += 2;
        v256 = vshll_high_n_u16(v253, 4uLL);
        v257 = vshlq_n_s32(vsubl_u16(*v252.i8, *v253.i8), 4uLL);
        v258 = vshlq_n_s32(vsubl_high_u16(v252, v253), 4uLL);
        v259 = vsubq_s32(v254, vshll_n_u16(*v253.i8, 4uLL));
        v260 = vsubq_s32(v255, v256);
        v247 = vmlal_high_s32(vmlal_s32(v247, *v259.i8, *v259.i8), v259, v259);
        v246 = vmlal_high_s32(vmlal_s32(v246, *v260.i8, *v260.i8), v260, v260);
        v152 = vmlal_high_s32(vmlal_s32(v152, *v259.i8, *v257.i8), v259, v257);
        v150 = vmlal_high_s32(vmlal_s32(v150, *v260.i8, *v258.i8), v260, v258);
        v249 += 16;
        v250 -= 8;
      }

      while (v250);
      v244 = (v244 + 4 * v26);
      v245 += 2 * v392;
      v243 += 2 * v388;
      --v248;
    }

    while (v248);
    goto LABEL_117;
  }

  v146 = 2 * v389;
  v147 = 2 * v390;
  v148 = 2 * v392;
  v149 = 2 * v388;
  v150 = 0uLL;
  if (v94 <= 0)
  {
    v280 = 0uLL;
    v281 = 0uLL;
    v282 = a12;
    v283 = v391;
    v284 = 0uLL;
    do
    {
      v285 = 0;
      v286 = v18;
      v287 = v282;
      do
      {
        v288 = *(v146 + v285);
        v289 = *(v147 + v285);
        v290 = *v287;
        v291 = v287[1];
        v287 += 2;
        v292 = vshll_high_n_u16(v289, 4uLL);
        v293 = vshlq_n_s32(vsubl_u16(*v288.i8, *v289.i8), 4uLL);
        v294 = vshlq_n_s32(vsubl_high_u16(v288, v289), 4uLL);
        v295 = vsubq_s32(v290, vshll_n_u16(*v289.i8, 4uLL));
        v296 = vsubq_s32(v291, v292);
        v284 = vmlal_high_s32(vmlal_s32(v284, *v295.i8, *v295.i8), v295, v295);
        v281 = vmlal_high_s32(vmlal_s32(v281, *v296.i8, *v296.i8), v296, v296);
        v280 = vmlal_high_s32(vmlal_s32(v280, *v295.i8, *v293.i8), v295, v293);
        v150 = vmlal_high_s32(vmlal_s32(v150, *v296.i8, *v294.i8), v296, v294);
        v285 += 16;
        v286 -= 8;
      }

      while (v286);
      v282 = (v282 + 4 * v26);
      v147 += v148;
      v146 += v149;
      --v283;
    }

    while (v283);
    goto LABEL_131;
  }

  v151 = 4 * v26;
  v152 = 0uLL;
  v153 = a12;
  v154 = a13;
  v155 = 0uLL;
  v156 = 0uLL;
  v157 = 0uLL;
  v158 = 0uLL;
  v159 = 0uLL;
  v160 = 0uLL;
  v161 = 0uLL;
  v162 = v391;
  v163 = 0uLL;
  do
  {
    v164 = 0;
    v165 = 0;
    v166 = v18;
    do
    {
      v167 = *(v146 + v164);
      v168 = *(v147 + v164);
      v169 = vshll_n_u16(*v168.i8, 4uLL);
      v170 = vshll_high_n_u16(v168, 4uLL);
      v171 = vshlq_n_s32(vsubl_u16(*v167.i8, *v168.i8), 4uLL);
      v172 = vsubq_s32(v153[v165], v169);
      v163 = vmlal_high_s32(vmlal_s32(v163, *v172.i8, *v172.i8), v172, v172);
      v173 = vshlq_n_s32(vsubl_high_u16(v167, v168), 4uLL);
      v174 = vsubq_s32(v153[v165 + 1], v170);
      v175 = vsubq_s32(v154[v165], v169);
      v161 = vmlal_high_s32(vmlal_s32(v161, *v174.i8, *v174.i8), v174, v174);
      v160 = vmlal_high_s32(vmlal_s32(v160, *v175.i8, *v175.i8), v175, v175);
      v176 = vsubq_s32(v154[v165 + 1], v170);
      v159 = vmlal_high_s32(vmlal_s32(v159, *v176.i8, *v176.i8), v176, v176);
      v158 = vmlal_high_s32(vmlal_s32(v158, *v172.i8, *v175.i8), v172, v175);
      v157 = vmlal_high_s32(vmlal_s32(v157, *v174.i8, *v176.i8), v174, v176);
      v156 = vmlal_high_s32(vmlal_s32(v156, *v172.i8, *v171.i8), v172, v171);
      v155 = vmlal_high_s32(vmlal_s32(v155, *v174.i8, *v173.i8), v174, v173);
      v152 = vmlal_high_s32(vmlal_s32(v152, *v175.i8, *v171.i8), v175, v171);
      v150 = vmlal_high_s32(vmlal_s32(v150, *v176.i8, *v173.i8), v176, v173);
      v165 += 2;
      v164 += 16;
      v166 -= 8;
    }

    while (v166);
    v154 = (v154 + v151);
    v153 = (v153 + v151);
    v147 += v148;
    v146 += v149;
    --v162;
  }

  while (v162);
LABEL_79:
  v209 = v391 * v18;
  v210 = vaddvq_s64(vaddq_s64(v161, v163)) / v209;
  v211 = vaddvq_s64(vaddq_s64(v157, v158)) / v209;
  v212 = vaddvq_s64(vaddq_s64(v159, v160));
  v411[0] = vaddvq_s64(vaddq_s64(v155, v156)) / v209;
LABEL_118:
  v21 = vaddvq_s64(vaddq_s64(v150, v152));
  v410 = *&v21 / v209;
  v263 = v212 / v209;
LABEL_138:
  v95 = v392;
LABEL_139:
  v409 = *v92;
  if (*v92)
  {
    if (!v92[1])
    {
      if (v210)
      {
        v333 = -2;
        if (v411[0] >= 0)
        {
          v333 = 2;
        }

        v334 = (v210 / v333 + (v411[0] << 7)) / v210;
      }

      else
      {
        LODWORD(v334) = 0;
      }

      if (v334 >= 31)
      {
        LODWORD(v334) = 31;
      }

      if (v334 <= -96)
      {
        LODWORD(v334) = -96;
      }

      *a15 = v334;
      v331 = 95;
      goto LABEL_178;
    }

    v328 = v263 * v210 - v211 * v211;
    if (v263 * v210 == v211 * v211)
    {
      LODWORD(v329) = 0;
      v330 = 128;
      v95 = v392;
    }

    else
    {
      v335 = v411[0] * v263 - v410 * v211;
      v336 = -2;
      if (v335 >= 0)
      {
        v336 = 2;
      }

      if ((v335 - 0x100000000000000) >> 57 == 127)
      {
        v335 <<= 7;
        v337 = v263 * v210 - v211 * v211;
      }

      else
      {
        v337 = v328 / 128;
      }

      v338 = v410 * v210 - v411[0] * v211;
      v329 = (v337 / v336 + v335) / v337;
      if ((v338 - 0x100000000000000) >> 57 == 127)
      {
        v339 = v338 << 7;
      }

      else
      {
        v328 /= 128;
        v339 = v338;
      }

      v95 = v392;
      v340 = v338 < 0;
      v341 = -2;
      if (!v340)
      {
        v341 = 2;
      }

      v330 = 128 - (v328 / v341 + v339) / v328;
    }

    if (v329 >= 31)
    {
      LODWORD(v329) = 31;
    }

    if (v329 <= -96)
    {
      LODWORD(v329) = -96;
    }

    *a15 = v329;
    v331 = v330 - v329;
  }

  else
  {
    v331 = 128;
    if (v263)
    {
      v332 = -2;
      if (v410 >= 0)
      {
        v332 = 2;
      }

      v331 = 128 - (v263 / v332 + (v410 << 7)) / v263;
    }

    *a15 = 0;
  }

  if (v331 >= 95)
  {
    v331 = 95;
  }

  if (v331 <= -32)
  {
    v331 = -32;
  }

LABEL_178:
  a15[1] = v331;
  result = sub_277AA7D10(v389, v18, v391, v388, v390, v95, v394, a12, v21, v26, a13, v26, a15, v92);
  v344 = v392;
  v345 = 2;
  do
  {
    v346 = 0;
    v347 = 0;
    v348 = 1;
    v349 = result;
    while (1)
    {
      v350 = v348;
      if (v409 | v347)
      {
        break;
      }

LABEL_194:
      result = v349;
LABEL_196:
      v348 = 0;
      v346 = 1;
      v347 = 1;
      v349 = result;
      if ((v350 & 1) == 0)
      {
        goto LABEL_199;
      }
    }

    if ((v346 & (v92[1] == 0)) == 0)
    {
      v351 = dword_277BB6FC8[v347];
      v352 = a15[v347];
      v353 = 1;
      while ((v352 - v345) >= v351)
      {
        a15[v347] = v352 - v345;
        result = sub_277AA7D10(v389, v393, v391, v388, v390, v344, v394, a12, v343, a14, a13, a14, a15, v92);
        if (result > v349)
        {
          a15[v347] = v352;
          v344 = v392;
          break;
        }

        v353 = 0;
        v352 -= v345;
        v349 = result;
        v344 = v392;
        if (v345 != 2)
        {
          goto LABEL_199;
        }
      }

      if (v353)
      {
        v354 = dword_277BB6FD0[v347];
        v355 = v391;
        while ((v352 + v345) <= v354)
        {
          a15[v347] = v352 + v345;
          result = sub_277AA7D10(v389, v393, v355, v388, v390, v344, v394, a12, v343, a14, a13, a14, a15, v92);
          if (result > v349)
          {
            a15[v347] = v352;
            result = v349;
            v344 = v392;
            goto LABEL_196;
          }

          v352 += v345;
          v349 = result;
          v344 = v392;
          v355 = v391;
          if (v345 != 2)
          {
            goto LABEL_196;
          }
        }

        goto LABEL_194;
      }
    }

    result = v349;
LABEL_199:
    v356 = v345 > 1;
    v345 >>= 1;
  }

  while (v356);
  *a16 = result;
  return result;
}

uint64_t sub_277AA7B80()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = v4[3087];
  v7 = v6[9].i32[0];
  v8 = v6[9].u8[4];
  v9 = v4[29];
  v10 = *(v0 + 40);
  if (v5 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = vtst_s32(v6[12], v6[12]);
  }

  memset(__dst, 0, 512);
  sub_2779F6D80(v1, v2, &v4[8 * v5 + 2886], __dst, v10, v11.i8[0] & 1, v11.i8[4] & 1, v8, v7, *(v9 + 8 * v5 + 1288), *(v9 + 4 * (v5 > 0) + 1280), *(*(v0 + 8) + 8 * v5 + 40), *(*(v0 + 8) + 4 * (v5 > 0) + 32), v4[2906], 0, v4[6]);
  v12 = *v3;
  v13 = v3[1];
  v14 = *(&off_28866EA50[3 * v8] + v5);

  return v14(v12, v13);
}

uint64_t sub_277AA7D10(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, uint32x4_t *a8, int32x2_t a9, int a10, uint32x4_t *a11, int a12, unsigned int *a13, int *a14)
{
  v15 = a12;
  v16 = a11;
  v17 = *a14;
  if (*a14)
  {
    a9.i32[0] = *a13;
    if (a14[1])
    {
      v18 = 128 - (*a13 + a13[1]);
    }

    else
    {
      v18 = 0;
    }

    if (a7)
    {
      v19 = 2 * a1;
      v20 = 2 * a5;
      v21 = a14[1];
      if (v17 >= 1)
      {
        if (v21 > 0)
        {
          v22 = 0;
          v23 = vshl_n_s32(vpadd_s32(__PAIR64__(v18, a9.u32[0]), __PAIR64__(v18, a9.u32[0])), 4uLL);
          v24 = a2 - 8;
          v25 = a2;
          v26 = v18 + a9.i32[0];
          v27 = vdupq_lane_s32(a9, 0);
          v179 = 4 * a12;
          v28 = 4 * a10;
          v29 = 2 * a4;
          v30 = vdupq_lane_s32(__PAIR64__(v18, a9.u32[0]), 1);
          v31 = 2 * a6;
          v32 = v19 + 16;
          v33 = 0uLL;
          v34 = v20 + 16;
          v35 = a11 + 2;
          v36 = a8 + 2;
          v37 = -16 * v26;
          do
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = v36;
            v42 = v35;
            v43 = v34;
            v44 = 0uLL;
            v45 = v32;
            do
            {
              v46 = v45;
              v47 = v43;
              v48 = v42;
              v49 = v41;
              v50 = vaddq_s16(vsubq_s16(*(v20 + v38), *(v19 + v38)), vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_lane_u16(vmlaq_s32(vmulq_s32(v16[v39], v30), a8[v39], v27), *(v20 + v38), v23, 0), 0xBuLL), vmlsl_high_lane_u16(vmlaq_s32(vmulq_s32(v16[v39 + 1], v30), a8[v39 + 1], v27), *(v20 + v38), v23, 0), 0xBuLL));
              v40 += 8;
              v39 += 2;
              v38 += 16;
              v45 += 8;
              v44 = vmlal_high_s16(vmlal_s16(v44, *v50.i8, *v50.i8), v50, v50);
              v43 += 8;
              v42 += 2;
              v41 += 2;
            }

            while (v40 <= v24);
            if (v40 < a2)
            {
              do
              {
                v52 = *v49++;
                v51 = v52;
                v53 = *v48++;
                v54 = v53 * v18;
                v56 = *v47++;
                v55 = v56;
                v57 = v54 + v51 * *a13 + v37 * v56;
                v58 = *v46++;
                v22 += (v55 - v58 + ((v57 + 1024) >> 11)) * (v55 - v58 + ((v57 + 1024) >> 11));
                ++v40;
              }

              while (v40 < v25);
            }

            v16 = (v16 + v179);
            v33 = vpadalq_s32(v33, v44);
            a8 = (a8 + v28);
            v19 += v29;
            v20 += v31;
            v32 += v29;
            v34 += v31;
            v35 = (v35 + v179);
            v36 = (v36 + v28);
            --a3;
          }

          while (a3);
          return vaddvq_s64(v33) + v22;
        }

        v18 = *a13;
        v15 = a10;
        v16 = a8;
        goto LABEL_44;
      }

      goto LABEL_17;
    }

    v74 = a14[1];
    if (v17 >= 1)
    {
      if (v74 > 0)
      {
        v22 = 0;
        v75 = vshl_n_s32(vpadd_s32(__PAIR64__(v18, a9.u32[0]), __PAIR64__(v18, a9.u32[0])), 4uLL);
        v76 = a6;
        v77 = a4;
        v78 = a2 - 8;
        v79 = a2;
        v80 = v18 + a9.i32[0];
        v81 = vdupq_lane_s32(a9, 0);
        v82 = vdupq_lane_s32(__PAIR64__(v18, a9.u32[0]), 1);
        v83 = 4 * a12;
        v84 = 4 * a10;
        v85 = (a1 + 8);
        v33 = 0uLL;
        v86 = a11 + 2;
        v87 = a8 + 2;
        v88 = (a5 + 8);
        v89 = -16 * v80;
        do
        {
          v90 = 0;
          v91 = 0;
          v92 = v88;
          v93 = v87;
          v94 = v86;
          v95 = 0uLL;
          v96 = v85;
          do
          {
            v97 = v96;
            v98 = v94;
            v99 = v93;
            v100 = v92;
            v101 = *(a5 + v91);
            v102 = vmovl_u8(v101);
            v103 = vaddq_s16(vsubl_u8(v101, *(a1 + v91)), vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_lane_s16(vmlaq_s32(vmulq_s32(v16[v90], v82), a8[v90], v81), *v102.i8, v75, 0), 0xBuLL), vmlsl_high_lane_s16(vmlaq_s32(vmulq_s32(v16[v90 + 1], v82), a8[v90 + 1], v81), v102, v75, 0), 0xBuLL));
            v91 += 8;
            v90 += 2;
            v96 += 8;
            v95 = vmlal_high_s16(vmlal_s16(v95, *v103.i8, *v103.i8), v103, v103);
            v94 += 2;
            v93 += 2;
            v92 += 8;
          }

          while (v91 <= v78);
          if (v91 < a2)
          {
            do
            {
              v105 = *v100++;
              v104 = v105;
              v107 = *v99++;
              v106 = v107;
              v108 = *v98++;
              v109 = v108 * v18 + v106 * *a13 + v89 * v104 + 1024;
              v110 = *v97++;
              v22 += ((v104 - v110 + (v109 >> 11)) * (v104 - v110 + (v109 >> 11)));
              ++v91;
            }

            while (v91 < v79);
          }

          a5 += v76;
          v33 = vpadalq_s32(v33, v95);
          a1 += v77;
          v16 = (v16 + v83);
          a8 = (a8 + v84);
          v85 += v77;
          v86 = (v86 + v83);
          v87 = (v87 + v84);
          v88 += v76;
          --a3;
        }

        while (a3);
        return vaddvq_s64(v33) + v22;
      }

      v18 = *a13;
      v15 = a10;
      v16 = a8;
      goto LABEL_53;
    }

LABEL_35:
    if (v74 <= 0)
    {
      v22 = 0;
      v111 = a4;
      v112 = a2 - 16;
      v113 = (a1 + 16);
      v114 = 0uLL;
      v115 = (a5 + 16);
      do
      {
        v116 = 0;
        v117 = v115;
        v118 = v113;
        do
        {
          v119 = v118;
          v120 = v117;
          v121 = vabdq_u8(*(a5 + v116), *(a1 + v116));
          v114 = vpadalq_u16(vpadalq_u16(v114, vmull_u8(*v121.i8, *v121.i8)), vmull_high_u8(v121, v121));
          v116 += 16;
          v118 += 16;
          v117 += 16;
        }

        while (v116 <= v112);
        if (v116 < a2)
        {
          do
          {
            v123 = *v120++;
            v122 = v123;
            v124 = *v119++;
            v22 += ((v122 - v124) * (v122 - v124));
            ++v116;
          }

          while (v116 < a2);
        }

        a5 += a6;
        a1 += v111;
        v113 += v111;
        v115 += a6;
        --a3;
      }

      while (a3);
      v33 = vpaddlq_u32(v114);
      return vaddvq_s64(v33) + v22;
    }

LABEL_53:
    v22 = 0;
    v152 = a6;
    v153 = a4;
    v154 = a2 - 8;
    v155 = vdupq_n_s32(v18);
    v156 = v16 + 1;
    v157 = 4 * v15;
    v158 = (a1 + 8);
    v159 = v16 + 2;
    v33 = 0uLL;
    v160 = (a5 + 8);
    do
    {
      v161 = 0;
      v162 = v160;
      v163 = v159;
      v164 = v158;
      v165 = 0uLL;
      v166 = v156;
      do
      {
        v167 = v164;
        v168 = v163;
        v169 = v162;
        v170 = *(a5 + v161);
        v171 = vshll_n_u8(v170, 4uLL);
        v172 = vaddq_s16(vsubl_u8(v170, *(a1 + v161)), vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubw_u16(v166[-1], *v171.i8), v155), 0xBuLL), vmulq_s32(vsubw_high_u16(*v166, v171), v155), 0xBuLL));
        v161 += 8;
        v166 += 2;
        v165 = vmlal_high_s16(vmlal_s16(v165, *v172.i8, *v172.i8), v172, v172);
        v164 += 8;
        v163 += 2;
        v162 += 8;
      }

      while (v161 <= v154);
      if (v161 < a2)
      {
        do
        {
          v174 = *v169++;
          v173 = v174;
          v175 = *v168++;
          v176 = (v175 - 16 * v173) * v18 + 1024;
          v177 = *v167++;
          v22 += ((v173 - v177 + (v176 >> 11)) * (v173 - v177 + (v176 >> 11)));
          ++v161;
        }

        while (v161 < a2);
      }

      a5 += v152;
      a1 += v153;
      v33 = vpadalq_s32(v33, v165);
      v156 = (v156 + v157);
      v158 += v153;
      v159 = (v159 + v157);
      v160 += v152;
      --a3;
    }

    while (a3);
    return vaddvq_s64(v33) + v22;
  }

  v18 = 128 - a13[1];
  if (!a7)
  {
    v74 = a14[1];
    goto LABEL_35;
  }

  v19 = 2 * a1;
  v20 = 2 * a5;
  v21 = a14[1];
LABEL_17:
  if (v21 > 0)
  {
LABEL_44:
    v22 = 0;
    v125 = v15;
    v126 = v15;
    v127 = a2 - 8;
    v128 = vdupq_n_s32(v18);
    v129 = v16 + 1;
    v130 = 4 * v125;
    v131 = 2 * a4;
    v132 = v19 + 16;
    v33 = 0uLL;
    v133 = 2 * a6;
    v134 = v20 + 16;
    do
    {
      v135 = 0;
      v136 = 0;
      v137 = v134;
      v138 = v132;
      v139 = 0uLL;
      v140 = v129;
      do
      {
        v141 = v138;
        v142 = v137;
        v143 = *(v20 + v135);
        v144 = vshlq_n_s16(v143, 4uLL);
        v145 = vaddq_s16(vsubq_s16(v143, *(v19 + v135)), vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubw_u16(v140[-1], *v144.i8), v128), 0xBuLL), vmulq_s32(vsubw_high_u16(*v140, v144), v128), 0xBuLL));
        v136 += 8;
        v140 += 2;
        v139 = vmlal_high_s16(vmlal_s16(v139, *v145.i8, *v145.i8), v145, v145);
        v135 += 16;
        v138 += 8;
        v137 += 8;
      }

      while (v136 <= v127);
      if (v136 < a2)
      {
        v146 = v16->i32[v136 & 0xFFFFFFF8];
        do
        {
          v148 = *v142++;
          v147 = v148;
          v149 = v146 - 16 * (v148 & 0xFFF);
          v150 = *v141++;
          v151 = v147 - v150 + ((v149 * v18 + 1024) >> 11);
          v22 += v151 * v151;
          ++v136;
        }

        while (v136 < a2);
      }

      v16 = (v16 + 4 * v126);
      v129 = (v129 + v130);
      v33 = vpadalq_s32(v33, v139);
      v19 += v131;
      v20 += v133;
      v132 += v131;
      v134 += v133;
      --a3;
    }

    while (a3);
    return vaddvq_s64(v33) + v22;
  }

  v22 = 0;
  v59 = a2 - 8;
  v60 = 2 * a4;
  v61 = 2 * a6;
  v62 = v19 + 16;
  v33 = 0uLL;
  v63 = v20 + 16;
  do
  {
    v64 = 0;
    v65 = 0;
    v66 = v63;
    v67 = v62;
    do
    {
      v68 = v67;
      v69 = v66;
      v70 = vabdq_u16(*(v20 + v64), *(v19 + v64));
      v65 += 8;
      v33 = vpadalq_s32(vpadalq_s32(v33, vmull_u16(*v70.i8, *v70.i8)), vmull_high_u16(v70, v70));
      v64 += 16;
      v67 += 8;
      v66 += 8;
    }

    while (v65 <= v59);
    if (v65 < a2)
    {
      do
      {
        v72 = *v69++;
        v71 = v72;
        v73 = *v68++;
        v22 += ((v71 - v73) * (v71 - v73));
        ++v65;
      }

      while (v65 < a2);
    }

    v19 += v60;
    v20 += v61;
    v62 += v60;
    v63 += v61;
    --a3;
  }

  while (a3);
  return vaddvq_s64(v33) + v22;
}

unint64_t sub_277AA848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v32 = MEMORY[0x28223BE20]();
  v35 = v33;
  v540 = v32;
  STACK[0xC978] = *MEMORY[0x277D85DE8];
  v37 = *(v33 + 56);
  v38 = *(v33 + 48) + (v36 << 6);
  v39 = *(v33 + 24);
  v40 = *(v39 + 47420);
  v41 = v37[9];
  if (!v41)
  {
    v517 = v39 + 47420;
    v518 = *(v33 + 24);
    goto LABEL_20;
  }

  v42 = *(v33 + 16);
  v43 = *(v42 + 616);
  v44 = *(v42 + 24696);
  v45 = *(v44 + 72);
  if (v43 >= 0xFF)
  {
    v46 = 255;
  }

  else
  {
    v46 = v43;
  }

  if (v43 >= 0)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  switch(v45)
  {
    case 8:
      v48 = word_277BFDBFA;
      break;
    case 12:
      v48 = &unk_277BFDFFA;
      break;
    case 10:
      v48 = &unk_277BFDDFA;
      break;
    default:
      v49 = -1;
      goto LABEL_17;
  }

  v49 = v48[v47] >> 3;
LABEL_17:
  v50 = (v49 * v49 * dword_277C2F818[v41]) >> 4;
  result = (*(&off_28866EA80[3 * *(v44 + 76)] + *(v33 + 32)))(*v33, *v32, v32[1] - *v32, v32[2], v32[3] - v32[2]);
  v52 = *(v35 + 96);
  if (result >= v50 && v52)
  {
    v517 = v39 + 47420;
    v518 = v39;
    v37 = *(v35 + 56);
LABEL_20:
    v53 = *(v35 + 32);
    if (v53)
    {
      v54 = 5;
    }

    else
    {
      v54 = 7;
    }

    v55 = v37[11];
    v56 = *(*(v35 + 16) + 24696);
    v516 = v54;
    if (v55)
    {
      v57 = 5;
    }

    else
    {
      v57 = v54;
    }

    v58 = *(v35 + 64);
    v59 = *(v35 + 80);
    v60 = v540[1];
    v61 = *v540;
    v62 = v540[2];
    v63 = v540[3];
    v64 = *(v35 + 72);
    v539 = v35;
    v65 = *(v35 + 88);
    v532 = v57 >> 1;
    v520 = v40;
    v521 = v38;
    LODWORD(v522) = v37[11];
    HIDWORD(v522) = *(v35 + 32);
    if (*(v56 + 76))
    {
      v66 = 0;
      v67 = *(v56 + 72);
      v68 = 2 * v58;
      v69 = v60 - v61;
      v70 = 2 * v58 + 2 * v61 + 2 * v64 * v62;
      v71 = 0uLL;
      v72 = v63 - v62;
      do
      {
        v73 = v70;
        v74 = v60 - v61;
        v75 = 0uLL;
        v76 = 0uLL;
        if (v69 >= 32)
        {
          v77 = v60 - v61;
          v73 = v70;
          do
          {
            v34 = vaddq_s16(v73[1], *v73);
            v75 = vpadalq_u16(v75, v34);
            v76 = vpadalq_u16(v76, vaddq_s16(v73[3], v73[2]));
            v73 += 4;
            v74 = v77 - 32;
            v78 = v77 > 0x3F;
            v77 -= 32;
          }

          while (v78);
        }

        if (v74 >= 16)
        {
          v79 = *v73;
          v80 = v73[1];
          v73 += 2;
          v34 = vaddq_s16(v80, v79);
          v75 = vpadalq_u16(v75, v34);
          v74 -= 16;
        }

        if (v74 >= 8)
        {
          v81 = *v73++;
          v34.i64[1] = v81.i64[1];
          v76 = vpadalq_u16(v76, v81);
          v74 -= 8;
        }

        if (v74 >= 4)
        {
          v82 = v73->i64[0];
          v73 = (v73 + 8);
          v34.i64[0] = v82;
          v75 = vpadalq_u16(v75, v34);
          v74 -= 4;
        }

        if (v74 >= 1)
        {
          v83 = v74 + 1;
          do
          {
            v84 = v73->u16[0];
            v73 = (v73 + 2);
            v66 += v84;
            --v83;
          }

          while (v83 > 1);
        }

        v71 = vpadalq_u32(v71, vaddq_s32(v75, v76));
        v70 += 2 * v64;
        --v72;
      }

      while (v72);
      v85 = (2 * v59 + 2 * v61 + 2 * v65 * v62);
      v86 = (v68 + 2 * (v61 - (v57 >> 1)) + 2 * ((v62 - (v57 >> 1)) * v64));
      v87 = v63 - v62;
      v88 = (vaddvq_s64(v71) + v66) / ((v63 - v62) * v69);
      v525 = v67;
      v89 = (0x80000000 >> (2 * v67)) >> 1;
      v530 = v60 - v61;
      v536 = vdupq_n_s16(v88);
      v527 = v64 - v69;
      v528 = v65 - v69;
      v90 = v89;
      if (v55 | v53)
      {
        *&STACK[0xC780] = 0uLL;
        *&STACK[0xC790] = 0uLL;
        *&STACK[0xC7A0] = 0uLL;
        *&STACK[0xC7B0] = 0uLL;
        *&STACK[0xC7C0] = 0uLL;
        *&STACK[0xC7D0] = 0uLL;
        *&STACK[0xC7E0] = 0uLL;
        *&STACK[0xC7F0] = 0uLL;
        *&STACK[0xC5C0] = 0uLL;
        *&STACK[0xC5D0] = 0uLL;
        *&STACK[0xC5E0] = 0uLL;
        *&STACK[0xC5F0] = 0uLL;
        *&STACK[0xC600] = 0uLL;
        *&STACK[0xC610] = 0uLL;
        *&STACK[0xC620] = 0uLL;
        *&STACK[0xC630] = 0uLL;
        *&STACK[0xC640] = 0uLL;
        *&STACK[0xC650] = 0uLL;
        *&STACK[0xC660] = 0uLL;
        *&STACK[0xC670] = 0uLL;
        *&STACK[0xC680] = 0uLL;
        *&STACK[0xC690] = 0uLL;
        *&STACK[0xC6A0] = 0uLL;
        *&STACK[0xC6B0] = 0uLL;
        bzero(&STACK[0x9DC0], 0xAF0uLL);
        bzero(&STACK[0x4E00], 0x15E0uLL);
        do
        {
          v236 = v530;
          if (v530 >= 2)
          {
            do
            {
              v237 = 0;
              v238 = (v86 + 2 * v64);
              v239 = *v238;
              v240 = (v238 + 2 * v64);
              v241 = *v240;
              v242 = (v240 + 2 * v64);
              v243 = *v242;
              v244 = *(v242 + 2 * v64 - 6);
              v245 = &v86->i8[8 * v64];
              v548.val[0] = vsubq_s16(*v86, v536);
              v548.val[1] = vsubq_s16(v239, v536);
              v246 = vsubq_s16(v241, v536);
              v247 = vsubq_s16(v243, v536);
              v541.val[1] = vsubq_s16(v244, v536);
              v248 = vqtbl2q_s8(v548, xmmword_277BB7840);
              v249 = vqtbl2q_s8(v548, xmmword_277BB7850);
              v541.val[0] = v247;
              v250 = vqtbl3q_s8(*v548.val[1].i8, xmmword_277BB7860);
              v548.val[0] = vqtbl3q_s8(*v548.val[1].i8, xmmword_277BB7870);
              v548.val[1] = vqtbl2q_s8(v541, xmmword_277BB7880);
              v541.val[0] = vqtbl2q_s8(v541, xmmword_277BB7890);
              *&STACK[0xC900] = v248;
              *&STACK[0xC910] = v250;
              *&STACK[0xC880] = v249;
              *&STACK[0xC890] = v548.val[0];
              *&STACK[0xC920] = v548.val[1];
              *&STACK[0xC8A0] = v541.val[0];
              v251 = *(v245 + 4) - v88;
              LOWORD(STACK[0xC930]) = v251;
              v252 = *(v245 + 5) - v88;
              LOWORD(STACK[0xC8B0]) = v252;
              v253 = *v85 - v88;
              v254 = v85[1] - v88;
              v541.val[1] = vdupq_n_s16(v253);
              v255 = vdupq_n_s16(v254);
              v256 = vmlal_high_s16(vmlal_high_s16(*&STACK[0xC790], v248, v541.val[1]), v249, v255);
              *&STACK[0xC780] = vmlal_s16(vmlal_s16(*&STACK[0xC780], *v248.i8, *v541.val[1].i8), *v249.i8, *v255.i8);
              *&STACK[0xC790] = v256;
              v257 = vmlal_high_s16(vmlal_high_s16(*&STACK[0xC7B0], v250, v541.val[1]), v548.val[0], v255);
              *&STACK[0xC7A0] = vmlal_s16(vmlal_s16(*&STACK[0xC7A0], *v250.i8, *v541.val[1].i8), *v548.val[0].i8, *v255.i8);
              *&STACK[0xC7B0] = v257;
              v258 = vmlal_high_s16(vmlal_high_s16(*&STACK[0xC7D0], v548.val[1], v541.val[1]), v541.val[0], v255);
              v259 = v251;
              v260 = v252;
              v261 = v253 * v259 + v254 * v252 + LODWORD(STACK[0xC7E0]);
              *&STACK[0xC7C0] = vmlal_s16(vmlal_s16(*&STACK[0xC7C0], *v548.val[1].i8, *v541.val[1].i8), *v541.val[0].i8, *v255.i8);
              *&STACK[0xC7D0] = v258;
              LODWORD(STACK[0xC7E0]) = v261;
              v262 = -4;
              v263 = &STACK[0xC900];
              v264 = &STACK[0xC880];
              v265 = &STACK[0x9EA0];
              do
              {
                v266 = *(&STACK[0xC900] + 2 * v237);
                v267 = *(&STACK[0xC880] + 2 * v237);
                v268 = v265;
                v269 = v264;
                v270 = v263;
                v271 = v262;
                do
                {
                  v272 = *v270++;
                  v273 = v272;
                  v274 = *v269++;
                  v275 = vmlal_lane_s16(vmlal_lane_s16(v268[-7], v273, v266, 1), v274, v267, 1);
                  v276 = vmlal_lane_s16(vmlal_lane_s16(*v268, v273, v266, 2), v274, v267, 2);
                  v277 = vmlal_lane_s16(vmlal_lane_s16(v268[7], v273, v266, 3), v274, v267, 3);
                  v268[-14] = vmlal_lane_s16(vmlal_lane_s16(v268[-14], v273, v266, 0), v274, v267, 0);
                  v268[-7] = v275;
                  *v268 = v276;
                  v268[7] = v277;
                  v271 += 4;
                  ++v268;
                }

                while (v271 < 0x18);
                v262 += 4;
                ++v263;
                ++v264;
                v265 += 58;
                v152 = v237 >= 0x14;
                v237 += 4;
              }

              while (!v152);
              LODWORD(STACK[0xA8A0]) += v259 * v259 + v260 * v260;
              if (!--v89)
              {
                v278 = &STACK[0xC5C0];
                v279 = &STACK[0xC780];
                for (i = 32; i > 4; i -= 4)
                {
                  v281 = *v279;
                  *v279 = 0;
                  v279[1] = 0;
                  v279 += 2;
                  v282 = vaddw_s32(*v278, *v281.i8);
                  v283 = vaddw_high_s32(v278[1], v281);
                  *v278 = v282;
                  v278[1] = v283;
                  v278 += 2;
                }

                v284 = 0;
                v285 = &STACK[0x4E00];
                v286 = &STACK[0x9DC0];
                do
                {
                  v287 = 28 - (v284 & 0xFFFFFFFC);
                  v288 = 2 * (v284 >> 2);
                  v289 = 4 * (v284 >> 2);
                  do
                  {
                    v290 = &v286[v288];
                    v291 = &v285[v289];
                    v292 = *&v286[v288];
                    *v290 = 0;
                    v290[1] = 0;
                    v293 = vaddw_s32(*&v285[v289], *v292.i8);
                    v294 = vaddw_high_s32(*&v285[v289 + 2], v292);
                    *v291 = v293;
                    v291[1] = v294;
                    v287 -= 4;
                    v288 += 2;
                    v289 += 4;
                  }

                  while (v287 > 4);
                  v285[24] += *(v286 + 24);
                  *(v286 + 24) = 0;
                  v285 += 28;
                  v286 += 14;
                  ++v284;
                }

                while (v284 != 25);
                v89 = v90;
              }

              v86 = (v86 + 4);
              v85 += 2;
              v78 = v236 <= 3;
              v236 -= 2;
            }

            while (!v78);
          }

          if (v530)
          {
            v295 = 0;
            v547.val[0] = *v86;
            v296 = (v86 + 2 * v64);
            v547.val[1] = *v296;
            v297 = &v296->i8[2 * v64];
            v298 = *v297;
            v299 = &v297[2 * v64];
            v300 = *v299;
            v542.val[1] = *(v299 + 2 * v64 - 6);
            v542.val[0] = *v299;
            v301 = &v86->i8[8 * v64];
            v302 = vsubq_s16(vqtbl2q_s8(v547, xmmword_277BB7840), v536);
            v547.val[0] = vsubq_s16(vqtbl3q_s8(*v547.val[1].i8, xmmword_277BB7860), v536);
            v542.val[0] = vsubq_s16(vqtbl2q_s8(v542, xmmword_277BB7880), v536);
            *&STACK[0xC900] = v302;
            *&STACK[0xC910] = v547.val[0];
            *&STACK[0xC920] = v542.val[0];
            v303 = *(v301 + 4) - v88;
            LOWORD(STACK[0xC930]) = v303;
            LOWORD(STACK[0xC8B0]) = *(v301 + 5) - v88;
            v304 = *v85 - v88;
            v542.val[1] = vdupq_n_s16(v304);
            v305 = vmlal_high_s16(*&STACK[0xC790], v302, v542.val[1]);
            *&STACK[0xC780] = vmlal_s16(*&STACK[0xC780], *v302.i8, *v542.val[1].i8);
            *&STACK[0xC790] = v305;
            v306 = vmlal_high_s16(*&STACK[0xC7B0], v547.val[0], v542.val[1]);
            *&STACK[0xC7A0] = vmlal_s16(*&STACK[0xC7A0], *v547.val[0].i8, *v542.val[1].i8);
            *&STACK[0xC7B0] = v306;
            v547.val[1] = vmlal_high_s16(*&STACK[0xC7D0], v542.val[0], v542.val[1]);
            *&STACK[0xC7C0] = vmlal_s16(*&STACK[0xC7C0], *v542.val[0].i8, *v542.val[1].i8);
            *&STACK[0xC7D0] = v547.val[1];
            v307 = v303;
            LODWORD(STACK[0xC7E0]) += v304 * v303;
            v308 = -4;
            v309 = &STACK[0xC900];
            v310 = &STACK[0x9EA0];
            do
            {
              v311 = *(&STACK[0xC900] + 2 * v295);
              v312 = v309;
              v313 = v310;
              v314 = v308;
              do
              {
                v315 = *v312++;
                v316 = vmlal_lane_s16(v313[-7], v315, v311, 1);
                v317 = vmlal_lane_s16(*v313, v315, v311, 2);
                v318 = vmlal_lane_s16(v313[7], v315, v311, 3);
                v313[-14] = vmlal_lane_s16(v313[-14], v315, v311, 0);
                v313[-7] = v316;
                *v313 = v317;
                v313[7] = v318;
                v314 += 4;
                ++v313;
              }

              while (v314 < 0x18);
              v308 += 4;
              v310 += 58;
              ++v309;
              v152 = v295 >= 0x14;
              v295 += 4;
            }

            while (!v152);
            v86 = (v86 + 2);
            ++v85;
            LODWORD(STACK[0xA8A0]) += v307 * v307;
          }

          v85 += v528;
          v86 = (v86 + 2 * v527);
          --v87;
        }

        while (v87);
        v319 = 0;
        v320 = v525 - 8;
        v321 = ~(-1 << (v525 - 8));
        v322 = &STACK[0x4C58];
        v323 = &STACK[0xC780];
        v324 = &STACK[0xC5C0];
        do
        {
          v325 = 0;
          v326 = v324;
          do
          {
            v327 = *v326;
            v326 += 5;
            *v322++ = ((v321 & ((v327 + *(v323 + v325)) >> 63)) + v327 + *(v323 + v325)) >> v320;
            v325 += 20;
          }

          while (v325 != 100);
          ++v319;
          v323 = (v323 + 4);
          ++v324;
        }

        while (v319 != 5);
        v328 = 0;
        v329 = &a32;
        do
        {
          v330 = v328;
          do
          {
            v331 = 0;
            v332 = -5;
            do
            {
              v333 = v332;
              do
              {
                v333 += 5;
                if (v330 >= v333)
                {
                  v334 = v333;
                }

                else
                {
                  v334 = v330;
                }

                if (v330 <= v333)
                {
                  v335 = v333;
                }

                else
                {
                  v335 = v330;
                }

                v336 = *(&STACK[0x4E00] + (v335 + 28 * v334)) + *(&STACK[0x9DC0] + (v335 + 28 * v334));
                *v329++ = ((v321 & (v336 >> 63)) + v336) >> v320;
              }

              while (v333 < 0x14);
              ++v331;
              ++v332;
            }

            while (v331 != 5);
            v152 = v330 >= 0x14;
            v330 += 5;
          }

          while (!v152);
          ++v328;
        }

        while (v328 != 5);
      }

      else
      {
        *&STACK[0xC780] = 0uLL;
        *&STACK[0xC790] = 0uLL;
        *&STACK[0xC7A0] = 0uLL;
        *&STACK[0xC7B0] = 0uLL;
        *&STACK[0xC7C0] = 0uLL;
        *&STACK[0xC7D0] = 0uLL;
        *&STACK[0xC7E0] = 0uLL;
        *&STACK[0xC7F0] = 0uLL;
        *&STACK[0xC800] = 0uLL;
        *&STACK[0xC810] = 0uLL;
        *&STACK[0xC820] = 0uLL;
        *&STACK[0xC830] = 0uLL;
        *&STACK[0xC840] = 0uLL;
        *&STACK[0xC850] = 0uLL;
        *&STACK[0xC5C0] = 0uLL;
        *&STACK[0xC5D0] = 0uLL;
        *&STACK[0xC5E0] = 0uLL;
        *&STACK[0xC5F0] = 0uLL;
        *&STACK[0xC600] = 0uLL;
        *&STACK[0xC610] = 0uLL;
        *&STACK[0xC620] = 0uLL;
        *&STACK[0xC630] = 0uLL;
        *&STACK[0xC640] = 0uLL;
        *&STACK[0xC650] = 0uLL;
        *&STACK[0xC660] = 0uLL;
        *&STACK[0xC670] = 0uLL;
        *&STACK[0xC680] = 0uLL;
        *&STACK[0xC690] = 0uLL;
        *&STACK[0xC6A0] = 0uLL;
        *&STACK[0xC6B0] = 0uLL;
        *&STACK[0xC6C0] = 0uLL;
        *&STACK[0xC6D0] = 0uLL;
        *&STACK[0xC6E0] = 0uLL;
        *&STACK[0xC6F0] = 0uLL;
        *&STACK[0xC700] = 0uLL;
        *&STACK[0xC710] = 0uLL;
        *&STACK[0xC720] = 0uLL;
        *&STACK[0xC730] = 0uLL;
        *&STACK[0xC740] = 0uLL;
        *&STACK[0xC750] = 0uLL;
        *&STACK[0xC760] = 0uLL;
        *&STACK[0xC770] = 0uLL;
        bzero(&STACK[0x9DC0], 0x27D0uLL);
        bzero(&STACK[0x4E00], 0x4FA0uLL);
        v91 = 6 * v64;
        v92 = v89;
        v93 = v536;
        do
        {
          v94 = v530;
          if (v530 >= 2)
          {
            do
            {
              v95 = 0;
              v96 = (v86 + 2 * v64);
              v97 = *v96;
              v98 = (v96 + 2 * v64);
              v99 = *v98;
              v100 = (v98 + 2 * v64);
              v101 = *v100;
              v102 = (v100 + 2 * v64);
              v103 = *v102;
              v104 = (v102 + 2 * v64);
              v105 = &v86->i8[2 * v91];
              v543.val[0] = vsubq_s16(*v86, v93);
              v543.val[1] = vsubq_s16(v97, v93);
              v544.val[0] = vsubq_s16(v99, v93);
              v544.val[1] = vsubq_s16(v101, v93);
              v545.val[1] = vsubq_s16(v103, v93);
              v546.val[0] = vsubq_s16(*v104, v93);
              v546.val[1] = vsubq_s16(*(v104 + 2 * v64 - 2), v93);
              v106 = vqtbl2q_s8(v543, xmmword_277BB78A0);
              v107 = vqtbl2q_s8(v543, xmmword_277BB78B0);
              v108 = vqtbl2q_s8(*(&v543 + 16), xmmword_277BB78C0);
              v109 = vqtbl2q_s8(*(&v543 + 16), xmmword_277BB78D0);
              v545.val[0] = v544.val[1];
              v110 = vqtbl2q_s8(v544, xmmword_277BB78E0);
              v111 = vqtbl2q_s8(v544, xmmword_277BB78F0);
              v112 = vqtbl2q_s8(v545, xmmword_277BB7900);
              v113 = vqtbl2q_s8(v545, xmmword_277BB7910);
              v114 = vqtbl2q_s8(*(&v545 + 16), xmmword_277BB7920);
              v115 = vqtbl2q_s8(*(&v545 + 16), xmmword_277BB7930);
              v116 = vqtbl2q_s8(v546, xmmword_277BB7940);
              v117 = vqtbl2q_s8(v546, xmmword_277BB7950);
              *&STACK[0xC900] = v106;
              *&STACK[0xC910] = v108;
              *&STACK[0xC880] = v107;
              *&STACK[0xC890] = v109;
              *&STACK[0xC920] = v110;
              *&STACK[0xC930] = v112;
              *&STACK[0xC8A0] = v111;
              *&STACK[0xC8B0] = v113;
              *&STACK[0xC940] = v114;
              *&STACK[0xC950] = v116;
              *&STACK[0xC8C0] = v115;
              *&STACK[0xC8D0] = v117;
              v118 = *(v105 + 6) - v88;
              LOWORD(STACK[0xC960]) = v118;
              v119 = *(v105 + 7) - v88;
              LOWORD(STACK[0xC8E0]) = v119;
              v120 = *v85 - v88;
              v121 = v85[1] - v88;
              v122 = vdupq_n_s16(v120);
              v123 = vdupq_n_s16(v121);
              v543.val[1] = vmlal_high_s16(vmlal_high_s16(*&STACK[0xC790], v106, v122), v107, v123);
              *&STACK[0xC780] = vmlal_s16(vmlal_s16(*&STACK[0xC780], *v106.i8, *v122.i8), *v107.i8, *v123.i8);
              *&STACK[0xC790] = v543.val[1];
              v124 = vmlal_high_s16(vmlal_high_s16(*&STACK[0xC7B0], v108, v122), v109, v123);
              *&STACK[0xC7A0] = vmlal_s16(vmlal_s16(*&STACK[0xC7A0], *v108.i8, *v122.i8), *v109.i8, *v123.i8);
              *&STACK[0xC7B0] = v124;
              v125 = vmlal_high_s16(vmlal_high_s16(*&STACK[0xC7D0], v110, v122), v111, v123);
              *&STACK[0xC7C0] = vmlal_s16(vmlal_s16(*&STACK[0xC7C0], *v110.i8, *v122.i8), *v111.i8, *v123.i8);
              *&STACK[0xC7D0] = v125;
              v126 = vmlal_high_s16(vmlal_high_s16(*&STACK[0xC7F0], v112, v122), v113, v123);
              *&STACK[0xC7E0] = vmlal_s16(vmlal_s16(*&STACK[0xC7E0], *v112.i8, *v122.i8), *v113.i8, *v123.i8);
              *&STACK[0xC7F0] = v126;
              v127 = vmlal_high_s16(vmlal_high_s16(*&STACK[0xC810], v114, v122), v115, v123);
              *&STACK[0xC800] = vmlal_s16(vmlal_s16(*&STACK[0xC800], *v114.i8, *v122.i8), *v115.i8, *v123.i8);
              *&STACK[0xC810] = v127;
              v128 = vmlal_high_s16(vmlal_high_s16(*&STACK[0xC830], v116, v122), v117, v123);
              v129 = v120 * v118 + v121 * v119 + LODWORD(STACK[0xC840]);
              *&STACK[0xC820] = vmlal_s16(vmlal_s16(*&STACK[0xC820], *v116.i8, *v122.i8), *v117.i8, *v123.i8);
              *&STACK[0xC830] = v128;
              LODWORD(STACK[0xC840]) = v129;
              v130 = &STACK[0x9DC0];
              v131 = &STACK[0xC888];
              v132 = &STACK[0xC908];
              v133 = &STACK[0x9DC0];
              do
              {
                v134 = *(&STACK[0xC900] + 2 * v95);
                v135 = *(&STACK[0xC880] + 2 * v95);
                v136 = &v133[v95 / 2];
                v137 = vmlal_lane_s16(vmlal_lane_s16(v136[13], v134, v134, 1), v135, v135, 1);
                v138 = vmlal_lane_s16(vmlal_lane_s16(v136[26], v134, v134, 2), v135, v135, 2);
                v139 = vmlal_lane_s16(vmlal_lane_s16(v136[39], v134, v134, 3), v135, v135, 3);
                *v136 = vmlal_lane_s16(vmlal_lane_s16(*v136, v134, v134, 0), v135, v135, 0);
                v136[13] = v137;
                v136[26] = v138;
                v136[39] = v139;
                v140 = v131;
                v141 = v130;
                v142 = v132;
                v143 = v95;
                do
                {
                  v144 = *v142++;
                  v145 = v144;
                  v146 = *v140++;
                  v147 = v146;
                  v148 = v141[1];
                  ++v141;
                  v149 = vmlal_lane_s16(vmlal_lane_s16(v141[13], v145, v134, 1), v147, v135, 1);
                  v150 = vmlal_lane_s16(vmlal_lane_s16(v141[26], v145, v134, 2), v147, v135, 2);
                  v151 = vmlal_lane_s16(vmlal_lane_s16(v141[39], v145, v134, 3), v147, v135, 3);
                  *v141 = vmlal_lane_s16(vmlal_lane_s16(v148, v145, v134, 0), v147, v135, 0);
                  v141[13] = v149;
                  v141[26] = v150;
                  v141[39] = v151;
                  v143 += 4;
                }

                while (v143 < 0x30);
                v133 += 104;
                ++v132;
                v130 += 106;
                ++v131;
                v152 = v95 >= 0x2C;
                v95 += 4;
              }

              while (!v152);
              LODWORD(STACK[0xC580]) += v118 * v118 + v119 * v119;
              if (--v92)
              {
                v93 = v536;
              }

              else
              {
                v153 = &STACK[0xC5C0];
                v154 = &STACK[0xC780];
                for (j = 56; j > 4; j -= 4)
                {
                  v156 = *v154;
                  *v154 = 0;
                  v154[1] = 0;
                  v154 += 2;
                  v157 = vaddw_s32(*v153, *v156.i8);
                  v158 = vaddw_high_s32(v153[1], v156);
                  *v153 = v157;
                  v153[1] = v158;
                  v153 += 2;
                }

                v159 = 0;
                v160 = &STACK[0x4E00];
                v161 = &STACK[0x9DC0];
                v93 = v536;
                do
                {
                  v162 = 52 - (v159 & 0xFFFFFFFC);
                  v163 = 2 * (v159 >> 2);
                  v164 = 4 * (v159 >> 2);
                  do
                  {
                    v165 = &v161[v163];
                    v166 = &v160[v164];
                    v167 = *&v161[v163];
                    *v165 = 0;
                    v165[1] = 0;
                    v168 = vaddw_s32(*&v160[v164], *v167.i8);
                    v169 = vaddw_high_s32(*&v160[v164 + 2], v167);
                    *v166 = v168;
                    v166[1] = v169;
                    v162 -= 4;
                    v163 += 2;
                    v164 += 4;
                  }

                  while (v162 > 4);
                  v160[48] += *(v161 + 48);
                  *(v161 + 48) = 0;
                  v160 += 52;
                  v161 += 26;
                  ++v159;
                }

                while (v159 != 49);
                v92 = v90;
              }

              v86 = (v86 + 4);
              v85 += 2;
              v78 = v94 <= 3;
              v94 -= 2;
            }

            while (!v78);
          }

          if (v530)
          {
            v170 = 0;
            v549.val[0] = *v86;
            v171 = (v86 + 2 * v64);
            v549.val[1] = *v171;
            v172 = (v171 + 2 * v64);
            v550.val[0] = *v172;
            v173 = (v172 + 2 * v64);
            v550.val[1] = *v173;
            v174 = (v173 + 2 * v64);
            v551.val[1] = *v174;
            v551.val[0] = v550.val[1];
            v175 = (v174 + 2 * v64);
            v552.val[0] = *v175;
            v552.val[1] = *(v175 + 2 * v64 - 2);
            v176 = vsubq_s16(vqtbl2q_s8(v549, xmmword_277BB78A0), v93);
            v177 = vsubq_s16(vqtbl2q_s8(*(&v549 + 16), xmmword_277BB78C0), v93);
            v549.val[1] = vsubq_s16(vqtbl2q_s8(v550, xmmword_277BB78E0), v93);
            v550.val[0] = vsubq_s16(vqtbl2q_s8(v551, xmmword_277BB7900), v93);
            v550.val[1] = vsubq_s16(vqtbl2q_s8(*(&v551 + 16), xmmword_277BB7920), v93);
            v549.val[0] = vsubq_s16(vqtbl2q_s8(v552, xmmword_277BB7940), v93);
            *&STACK[0xC900] = v176;
            *&STACK[0xC910] = v177;
            *&STACK[0xC920] = v549.val[1];
            *&STACK[0xC930] = v550.val[0];
            *&STACK[0xC940] = v550.val[1];
            *&STACK[0xC950] = v549.val[0];
            v178 = v86->i16[v91 + 6] - v88;
            LOWORD(STACK[0xC960]) = v178;
            v179 = *v85 - v88;
            v551.val[0] = vdupq_n_s16(v179);
            v552.val[0] = vmlal_high_s16(*&STACK[0xC790], v176, v551.val[0]);
            *&STACK[0xC780] = vmlal_s16(*&STACK[0xC780], *v176.i8, *v551.val[0].i8);
            *&STACK[0xC790] = v552.val[0];
            v551.val[1] = vmlal_high_s16(*&STACK[0xC7B0], v177, v551.val[0]);
            *&STACK[0xC7A0] = vmlal_s16(*&STACK[0xC7A0], *v177.i8, *v551.val[0].i8);
            *&STACK[0xC7B0] = v551.val[1];
            v180 = vmlal_high_s16(*&STACK[0xC7D0], v549.val[1], v551.val[0]);
            *&STACK[0xC7C0] = vmlal_s16(*&STACK[0xC7C0], *v549.val[1].i8, *v551.val[0].i8);
            *&STACK[0xC7D0] = v180;
            v181 = vmlal_high_s16(*&STACK[0xC7F0], v550.val[0], v551.val[0]);
            *&STACK[0xC7E0] = vmlal_s16(*&STACK[0xC7E0], *v550.val[0].i8, *v551.val[0].i8);
            *&STACK[0xC7F0] = v181;
            v182 = vmlal_high_s16(*&STACK[0xC810], v550.val[1], v551.val[0]);
            *&STACK[0xC800] = vmlal_s16(*&STACK[0xC800], *v550.val[1].i8, *v551.val[0].i8);
            *&STACK[0xC810] = v182;
            v183 = vmlal_high_s16(*&STACK[0xC830], v549.val[0], v551.val[0]);
            *&STACK[0xC820] = vmlal_s16(*&STACK[0xC820], *v549.val[0].i8, *v551.val[0].i8);
            *&STACK[0xC830] = v183;
            LODWORD(STACK[0xC840]) += v179 * v178;
            v184 = -4;
            v185 = &STACK[0x9DC0];
            v186 = &STACK[0xC900];
            do
            {
              v187 = *(&STACK[0xC900] + 2 * v170);
              v188 = v186;
              v189 = v185;
              v190 = v184;
              do
              {
                v191 = *v188++;
                v192 = vmlal_lane_s16(v189[13], v191, v187, 1);
                v193 = vmlal_lane_s16(v189[26], v191, v187, 2);
                v194 = vmlal_lane_s16(v189[39], v191, v187, 3);
                *v189 = vmlal_lane_s16(*v189, v191, v187, 0);
                v189[13] = v192;
                v189[26] = v193;
                v189[39] = v194;
                v190 += 4;
                ++v189;
              }

              while (v190 < 0x30);
              v184 += 4;
              v185 += 106;
              ++v186;
              v152 = v170 >= 0x2C;
              v170 += 4;
            }

            while (!v152);
            v86 = (v86 + 2);
            ++v85;
            LODWORD(STACK[0xC580]) += v178 * v178;
          }

          v85 += v528;
          v86 = (v86 + 2 * v527);
          --v87;
        }

        while (v87);
        v195 = 0;
        v196 = v525 - 8;
        v197 = ~(-1 << (v525 - 8));
        v198 = &STACK[0x4C58];
        v199 = &STACK[0xC780];
        v200 = &STACK[0xC5C0];
        do
        {
          v201 = 0;
          v202 = v200;
          do
          {
            v203 = *v202;
            v202 += 7;
            *v198++ = ((v197 & ((v203 + *(v199 + v201)) >> 63)) + v203 + *(v199 + v201)) >> v196;
            v201 += 28;
          }

          while (v201 != 196);
          ++v195;
          v199 = (v199 + 4);
          ++v200;
        }

        while (v195 != 7);
        v204 = 0;
        v205 = &a32;
        do
        {
          v206 = v204;
          do
          {
            v207 = 0;
            v208 = -7;
            do
            {
              v209 = v208;
              do
              {
                v209 += 7;
                if (v206 >= v209)
                {
                  v210 = v209;
                }

                else
                {
                  v210 = v206;
                }

                if (v206 <= v209)
                {
                  v211 = v209;
                }

                else
                {
                  v211 = v206;
                }

                v212 = *(&STACK[0x4E00] + (v211 + 52 * v210)) + *(&STACK[0x9DC0] + (v211 + 52 * v210));
                *v205++ = ((v197 & (v212 >> 63)) + v212) >> v196;
              }

              while (v209 < 0x2A);
              ++v207;
              ++v208;
            }

            while (v207 != 7);
            v152 = v206 >= 0x2A;
            v206 += 7;
          }

          while (!v152);
          ++v204;
        }

        while (v204 != 7);
      }

LABEL_183:
      v362 = 0;
      STACK[0x4F80] = 0;
      *&STACK[0x4F60] = 0u;
      *&STACK[0x4F70] = 0u;
      *&STACK[0x4F40] = 0u;
      *&STACK[0x4F50] = 0u;
      *&STACK[0x4F20] = 0u;
      *&STACK[0x4F30] = 0u;
      *&STACK[0x4F00] = 0u;
      *&STACK[0x4F10] = 0u;
      *&STACK[0x4EE0] = 0u;
      *&STACK[0x4EF0] = 0u;
      *&STACK[0x4EC0] = 0u;
      *&STACK[0x4ED0] = 0u;
      *&STACK[0x4EA0] = 0u;
      *&STACK[0x4EB0] = 0u;
      *&STACK[0x4E80] = 0u;
      *&STACK[0x4E90] = 0u;
      *&STACK[0x4E60] = 0u;
      *&STACK[0x4E70] = 0u;
      *&STACK[0x4E40] = 0u;
      *&STACK[0x4E50] = 0u;
      *&STACK[0x4E20] = 0u;
      *&STACK[0x4E30] = 0u;
      *&STACK[0x4E00] = 0u;
      *&STACK[0x4E10] = 0u;
      STACK[0xC7B0] = 0;
      *&STACK[0xC790] = 0u;
      *&STACK[0xC7A0] = 0u;
      *&STACK[0xC780] = 0u;
      do
      {
        v363 = dword_277C2F824[(v532 ^ 3) + v362] << 9;
        *(&a24 + v362 * 4) = v363;
        *(&a28 + v362 * 4) = v363;
        ++v362;
      }

      while (v57 != v362);
      v364 = 0;
      v365 = (v57 * v57);
      v366 = 8 * v57;
      v367 = &STACK[0x4E00];
      v368 = &a32;
      do
      {
        v369 = 0;
        *(&STACK[0xC780] + v364) = (&STACK[0x4C58] + v364 * v57);
        v370 = v368;
        do
        {
          v367[v369 / 8] = v370;
          v369 += 8;
          v370 = (v370 + v366);
        }

        while (v366 != v369);
        ++v364;
        v367 = (v367 + v366);
        v368 += v57 * v365;
      }

      while (v364 != v57);
      v523 = v532 ^ 3;
      v371 = v532 + 1;
      v535 = (v532 + 2) * v532;
      v372 = v371 * v532 + v532;
      v373 = 4 * v57;
      v519 = (v57 * v57);
      v374 = 8 * v365;
      v375 = 8 * v532;
      v529 = v375 + 8;
      vars8 = &STACK[0xC5C0] + v375 + 8;
      v376 = 1;
      v538 = 4 * v57;
      v531 = v375;
      do
      {
        v526 = v376;
        v377 = 0;
        *&STACK[0xC900] = 0u;
        *&STACK[0xC910] = 0u;
        *&STACK[0x9DC0] = 0u;
        *&STACK[0x9DD0] = 0u;
        *&STACK[0x9DE0] = 0u;
        *&STACK[0x9DF0] = 0u;
        *&STACK[0x9E00] = 0u;
        *&STACK[0x9E10] = 0u;
        *&STACK[0x9E20] = 0u;
        *&STACK[0x9E30] = 0u;
        do
        {
          v378 = 0;
          v379 = *(&STACK[0xC780] + v377);
          v380 = *(&a24 + v377);
          v381 = v57 - 1;
          v382 = 8 * v57;
          do
          {
            if (v378 <= v532)
            {
              v383 = v378;
            }

            else
            {
              v383 = v381;
            }

            *(&STACK[0xC900] + v383) += *(v379 + 8 * v378++) * v380 / 0x10000;
            --v381;
            v382 -= 8;
          }

          while (v382);
          ++v377;
        }

        while (v377 != v57);
        v384 = 0;
        do
        {
          v385 = *(&a24 + v384);
          *(&STACK[0xC880] + v384) = v385 / 0x10000;
          *(&STACK[0x4DE4] + v384) = v385 - (v379 & 0xFFFF0000);
          v384 += 4;
        }

        while (v373 != v384);
        for (k = 0; k != v57; ++k)
        {
          v387 = 0;
          v388 = *(&a24 + k);
          do
          {
            v389 = 0;
            v390 = *(&STACK[0x4E00] + k + v387 * v57);
            v391 = *(&STACK[0xC880] + v387);
            v392 = *(&STACK[0x4DE4] + v387);
            do
            {
              v393 = 0;
              v394 = v57 + ~v389;
              if (v389 <= v532)
              {
                v394 = v389;
              }

              v395 = v57 - 1;
              v396 = 8 * v57;
              do
              {
                if (v393 <= v532)
                {
                  v397 = v393;
                }

                else
                {
                  v397 = v395;
                }

                v398 = *(v390 + 8 * v393) * v388 / 0x10000;
                *(&STACK[0x9DC0] + v394 + v397 * v371) += v398 * v391 + v398 * v392 / 0x10000;
                ++v393;
                --v395;
                v396 -= 8;
              }

              while (v396);
              ++v389;
              v390 += v374;
            }

            while (v389 != v57);
            ++v387;
          }

          while (v387 != v57);
        }

        v399 = 0;
        v400 = &STACK[0x9DC0];
        v401 = *(&STACK[0x9DC0] + v535);
        do
        {
          *(&STACK[0xC900] + v399) = *(&STACK[0xC900] + v399) - v400[v532] + 2 * (v401 - *(&STACK[0xC900] + v532));
          v399 += 8;
          v400 = (v400 + v529);
        }

        while (v375 != v399);
        v402 = 0;
        v403 = &STACK[0x9DC0];
        do
        {
          v404 = 8 * v371 * v532;
          v405 = v403;
          v406 = v532;
          do
          {
            *v405 = *v405 - 2 * (*(&STACK[0x9DC0] + v404) + *(&STACK[0x9DC0] + v532 + v402 * v371)) + 4 * *(&STACK[0x9DC0] + v372);
            ++v405;
            v404 += 8;
            --v406;
          }

          while (v406);
          ++v402;
          v403 = (v403 + v529);
        }

        while (v402 != v532);
        if (sub_277AAA92C(v532, &STACK[0x9DC0], v371, &STACK[0xC900], &STACK[0xC5C0]))
        {
          *(&STACK[0xC5C0] + v532) = 0x10000;
          v407 = &STACK[0xC5C0] + v57 - v532 - 2;
          v408 = vars8;
          v409 = ~v532 + v57;
          do
          {
            v410 = *v407--;
            *v408++ = v410;
            *(&STACK[0xC5C0] + v532) -= 2 * v410;
            --v409;
          }

          while (v409);
          v411 = &a28;
          v412 = &STACK[0xC5C0];
          v413 = v57;
          do
          {
            v415 = *v412++;
            v414 = v415;
            if (v415 >= 0x1FFFFFFF)
            {
              v414 = 0x1FFFFFFFLL;
            }

            if (v414 <= -536870912)
            {
              LODWORD(v414) = -536870912;
            }

            *v411 = v414;
            v411 += 4;
            --v413;
          }

          while (v413);
        }

        v416 = 0;
        *&STACK[0xC900] = 0u;
        *&STACK[0xC910] = 0u;
        *&STACK[0x9DC0] = 0u;
        *&STACK[0x9DD0] = 0u;
        *&STACK[0x9DE0] = 0u;
        *&STACK[0x9DF0] = 0u;
        *&STACK[0x9E00] = 0u;
        *&STACK[0x9E10] = 0u;
        *&STACK[0x9E20] = 0u;
        *&STACK[0x9E30] = 0u;
        do
        {
          v417 = 0;
          v418 = v57 + ~v416;
          if (v416 <= v532)
          {
            v418 = v416;
          }

          v419 = *(&STACK[0xC900] + v418);
          do
          {
            v419 += *(*(&STACK[0xC780] + v416) + 8 * v417) * *(&a28 + v417) / 0x10000;
            ++v417;
          }

          while (v57 != v417);
          *(&STACK[0xC900] + v418) = v419;
          ++v416;
        }

        while (v416 != v57);
        v420 = 0;
        do
        {
          v421 = *(&a28 + v420);
          *(&STACK[0xC880] + v420) = v421 / 0x10000;
          *(&STACK[0x4DE4] + v420) = v421 - (v418 & 0xFFFF0000);
          v420 += 4;
        }

        while (v538 != v420);
        for (m = 0; m != v57; ++m)
        {
          v423 = 0;
          v424 = v57 + ~m;
          if (m <= v532)
          {
            v424 = m;
          }

          do
          {
            v425 = 0;
            v426 = v57 + ~v423;
            if (v423 <= v532)
            {
              v426 = v423;
            }

            v427 = v424 + v426 * v371;
            v428 = *(&STACK[0x4E00] + m * v57 + v423);
            v429 = *(&STACK[0x9DC0] + v427);
            do
            {
              for (n = 0; n != v57; ++n)
              {
                v431 = *(v428 + 8 * n) * *(&a28 + v425) / 0x10000;
                v429 += v431 * *(&STACK[0xC880] + n) + v431 * *(&STACK[0x4DE4] + n) / 0x10000;
              }

              ++v425;
              v428 += v374;
            }

            while (v425 != v57);
            *(&STACK[0x9DC0] + v427) = v429;
            ++v423;
          }

          while (v423 != v57);
        }

        v432 = 0;
        v433 = &STACK[0x9DC0];
        v434 = *(&STACK[0x9DC0] + v535);
        do
        {
          *(&STACK[0xC900] + v432) = *(&STACK[0xC900] + v432) - v433[v532] + 2 * (v434 - *(&STACK[0xC900] + v532));
          v432 += 8;
          v433 = (v433 + v529);
        }

        while (v531 != v432);
        v435 = 0;
        v436 = &STACK[0x9DC0];
        do
        {
          v437 = 8 * v371 * v532;
          v438 = v436;
          v439 = v532;
          do
          {
            *v438 = *v438 - 2 * (*(&STACK[0x9DC0] + v437) + *(&STACK[0x9DC0] + v532 + v435 * v371)) + 4 * *(&STACK[0x9DC0] + v371 * v532 + v532);
            ++v438;
            v437 += 8;
            --v439;
          }

          while (v439);
          ++v435;
          v436 = (v436 + v529);
        }

        while (v435 != v532);
        v440 = sub_277AAA92C(v532, &STACK[0x9DC0], v371, &STACK[0xC900], &STACK[0xC5C0]);
        v375 = v531;
        v372 = v371 * v532 + v532;
        v373 = 4 * v57;
        if (v440)
        {
          *(&STACK[0xC5C0] + v532) = 0x10000;
          v441 = &STACK[0xC5C0] + v57 - v532 - 2;
          v442 = vars8;
          v443 = ~v532 + v57;
          do
          {
            v444 = *v441--;
            *v442++ = v444;
            *(&STACK[0xC5C0] + v532) -= 2 * v444;
            --v443;
          }

          while (v443);
          v445 = &a24;
          v446 = &STACK[0xC5C0];
          v447 = v57;
          do
          {
            v449 = *v446++;
            v448 = v449;
            if (v449 >= 0x1FFFFFFF)
            {
              v448 = 0x1FFFFFFFLL;
            }

            if (v448 <= -536870912)
            {
              LODWORD(v448) = -536870912;
            }

            *v445 = v448;
            v445 += 4;
            --v447;
          }

          while (v447);
        }

        v376 = v526 + 1;
      }

      while (v526 != 4);
      v450 = 0;
      *&STACK[0x9DE0] = 0u;
      *&STACK[0x9DF0] = 0u;
      *&STACK[0x9DC0] = 0u;
      *&STACK[0x9DD0] = 0u;
      LODWORD(STACK[0x9DC0]) = 1;
      do
      {
        v451 = *(&a28 + v450);
        v452 = (v451 << 7) + 0x7FFF;
        if (v451 << 7 >= 0x8000)
        {
          v452 = (v451 << 7) - 0x8000;
        }

        v453 = v452 >> 16;
        if (v451 < 0)
        {
          LOWORD(v454) = v453;
        }

        else
        {
          v454 = ((v451 << 7) + 0x8000) >> 16;
        }

        *(&STACK[0x9DC0] + v450++ + 8) = v454;
      }

      while (v532 != v450);
      LOWORD(v455) = v522 == 0;
      if (v522)
      {
        LOWORD(v456) = 0;
        v459.i32[0] = SLOWORD(STACK[0x9DD0]);
        v459.i32[1] = SLOWORD(STACK[0x9DD2]);
        v458 = vmax_s32(vmin_s32(v459, 0x2E00000008), 0xFFFFFFEFFFFFFFE9);
        LOWORD(STACK[0x9DD2]) = v458.i16[0];
        LOWORD(STACK[0x9DD0]) = 0;
      }

      else
      {
        v456 = SLOWORD(STACK[0x9DD0]);
        if (v456 >= 10)
        {
          v456 = 10;
        }

        if (v456 <= -5)
        {
          LOWORD(v456) = -5;
        }

        LOWORD(STACK[0x9DD0]) = v456;
        v457.i32[0] = SLOWORD(STACK[0x9DD2]);
        v457.i32[1] = SLOWORD(STACK[0x9DD4]);
        v458 = vmax_s32(vmin_s32(v457, 0x2E00000008), 0xFFFFFFEFFFFFFFE9);
        LOWORD(STACK[0x9DD2]) = v458.i16[0];
      }

      v460 = 0;
      LOWORD(STACK[0x9DD4]) = v458.i16[2];
      LOWORD(STACK[0x9DDC]) = v456;
      LOWORD(STACK[0x9DDA]) = v458.i16[0];
      LOWORD(STACK[0x9DD8]) = v458.i16[2];
      LOWORD(STACK[0x9DD6]) = -2 * (v458.i16[0] + v456 + v458.i16[2]);
      do
      {
        v461 = *(&a24 + v460);
        v462 = (v461 << 7) + 0x7FFF;
        if (v461 << 7 >= 0x8000)
        {
          v462 = (v461 << 7) - 0x8000;
        }

        v463 = v462 >> 16;
        if (v461 < 0)
        {
          LOWORD(v464) = v463;
        }

        else
        {
          v464 = ((v461 << 7) + 0x8000) >> 16;
        }

        *(&STACK[0x9DC0] + v460++ + 16) = v464;
      }

      while (v532 != v460);
      if (v522)
      {
        v467.i32[0] = SLOWORD(STACK[0x9DE0]);
        v467.i32[1] = SLOWORD(STACK[0x9DE2]);
        v466 = vmax_s32(vmin_s32(v467, 0x2E00000008), 0xFFFFFFEFFFFFFFE9);
        LOWORD(STACK[0x9DE2]) = v466.i16[0];
        LOWORD(STACK[0x9DE0]) = 0;
      }

      else
      {
        v455 = SLOWORD(STACK[0x9DE0]);
        if (v455 >= 10)
        {
          v455 = 10;
        }

        if (v455 <= -5)
        {
          LOWORD(v455) = -5;
        }

        LOWORD(STACK[0x9DE0]) = v455;
        v465.i32[0] = SLOWORD(STACK[0x9DE2]);
        v465.i32[1] = SLOWORD(STACK[0x9DE4]);
        v466 = vmax_s32(vmin_s32(v465, 0x2E00000008), 0xFFFFFFEFFFFFFFE9);
        LOWORD(STACK[0x9DE2]) = v466.i16[0];
      }

      v468 = v532 ^ 3;
      v469 = 0;
      LOWORD(STACK[0x9DE4]) = v466.i16[2];
      LOWORD(STACK[0x9DEC]) = v455;
      LOWORD(STACK[0x9DEA]) = v466.i16[0];
      LOWORD(STACK[0x9DE8]) = v466.i16[2];
      LOWORD(STACK[0x9DE6]) = -2 * (v466.i16[0] + v455 + v466.i16[2]);
      LOWORD(STACK[0xC786]) = 128;
      LOWORD(STACK[0xC5C6]) = 128;
      v470 = 12;
      do
      {
        v471 = *(&STACK[0x9DD0] + v469);
        *(&STACK[0xC5C0] + v470) = v471;
        *(&STACK[0xC5C0] + v469) = v471;
        v472 = *(&STACK[0x9DD0] + v469 + 16);
        *(&STACK[0xC780] + v470) = v472;
        *(&STACK[0xC780] + v469) = v472;
        LOWORD(STACK[0xC5C6]) -= 2 * v471;
        LOWORD(STACK[0xC786]) -= 2 * v472;
        v469 += 2;
        v470 -= 2;
      }

      while (v469 != 6);
      v473 = 0;
      LODWORD(STACK[0x4EC0]) = 0;
      *&STACK[0x4EA0] = 0u;
      *&STACK[0x4EB0] = 0u;
      *&STACK[0x4E80] = 0u;
      *&STACK[0x4E90] = 0u;
      *&STACK[0x4E60] = 0u;
      *&STACK[0x4E70] = 0u;
      *&STACK[0x4E40] = 0u;
      *&STACK[0x4E50] = 0u;
      *&STACK[0x4E20] = 0u;
      *&STACK[0x4E30] = 0u;
      v474 = &STACK[0x4E00];
      *&STACK[0x4E00] = 0u;
      *&STACK[0x4E10] = 0u;
      do
      {
        v475 = *(&STACK[0xC780] + v473 + v523);
        v476 = 2 * v523;
        v477 = v474;
        v478 = v57;
        do
        {
          *v477 = *(&STACK[0xC5C0] + v476) * v475;
          v477 = (v477 + 4);
          v476 += 2;
          --v478;
        }

        while (v478);
        ++v473;
        v474 = (v474 + v538);
      }

      while (v473 != v57);
      v479 = 0;
      v480 = 0;
      v481 = 0;
      v482 = &a32;
      do
      {
        v483 = 0;
        v484 = *(&STACK[0x4E00] + v479);
        result = *(&STACK[0x4C58] + v479);
        do
        {
          v481 += v482[v483] * v484 * *(&STACK[0x4E00] + v483) / 0x10000000;
          ++v483;
        }

        while (v519 != v483);
        v485 = result * v484;
        v486 = result * v484 + 0x3FFF;
        if (v485 < 0)
        {
          v485 = v486;
        }

        v480 += v485 >> 14;
        ++v479;
        v482 = (v482 + v374);
      }

      while (v479 != v519);
      if ((v481 - *(&a32 + (v519 >> 1) * v519 + (v519 >> 1)) + 2 * (*(&STACK[0x4C58] + (v519 >> 1)) - v480)) >= 1)
      {
        *(v539 + 168) += v520;
        *(v539 + 136) += *(v539 + 96);
        *(v521 + 44) = 0;
        *(v539 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        if (*(*(v539 + 56) + 40) == 2)
        {
          *(v539 + 120) = 1;
        }

        return result;
      }

      v487 = sub_277AA7B80();
      if ((*(*(v539 + 56) + 50) & 1) == 0)
      {
        v488 = 6 - (v532 + v523);
        v489 = 4;
        do
        {
          v490 = 2 * v489;
          v491 = v468;
          do
          {
            v492 = dword_277C2F840[v491];
            v493 = 6 - v491;
            v494 = 1;
            v495 = v487;
            while (1)
            {
              v496 = *(&STACK[0x9DE0] + v491) - v489;
              if (v496 < v492)
              {
                break;
              }

              *(&STACK[0x9DE0] + v491) = v496;
              *(&STACK[0x9DE0] + v493) -= v489;
              LOWORD(STACK[0x9DE6]) += v490;
              v487 = sub_277AA7B80();
              if (v487 > v495)
              {
                *(&STACK[0x9DE0] + v491) += v489;
                *(&STACK[0x9DE0] + v493) += v489;
                LOWORD(STACK[0x9DE6]) -= v490;
                if (v494)
                {
                  goto LABEL_316;
                }

LABEL_325:
                v487 = v495;
                goto LABEL_326;
              }

              v494 = 0;
              v495 = v487;
              if (v489 != 4)
              {
                goto LABEL_326;
              }
            }

            if ((v494 & 1) == 0)
            {
              goto LABEL_325;
            }

LABEL_316:
            v497 = dword_277C2F84C[v491];
            while (1)
            {
              v498 = v489 + *(&STACK[0x9DE0] + v491);
              if (v498 > v497)
              {
                break;
              }

              *(&STACK[0x9DE0] + v491) = v498;
              *(&STACK[0x9DE0] + v493) += v489;
              LOWORD(STACK[0x9DE6]) -= v490;
              v487 = sub_277AA7B80();
              if (v487 > v495)
              {
                *(&STACK[0x9DE0] + v491) -= v489;
                *(&STACK[0x9DE0] + v493) -= v489;
                LOWORD(STACK[0x9DE6]) += v490;
                break;
              }

              v495 = v487;
              if (v489 != 4)
              {
                goto LABEL_323;
              }
            }

            v487 = v495;
LABEL_323:
            ++v491;
          }

          while (v491 != v488);
LABEL_326:
          v499 = v532 ^ 3;
          do
          {
            v500 = dword_277C2F840[v499];
            v501 = 6 - v499;
            v502 = 1;
            v503 = v487;
            while (1)
            {
              v504 = *(&STACK[0x9DD0] + v499) - v489;
              if (v504 < v500)
              {
                break;
              }

              *(&STACK[0x9DD0] + v499) = v504;
              *(&STACK[0x9DD0] + v501) -= v489;
              LOWORD(STACK[0x9DD6]) += v490;
              v487 = sub_277AA7B80();
              if (v487 > v503)
              {
                *(&STACK[0x9DD0] + v499) += v489;
                *(&STACK[0x9DD0] + v501) += v489;
                LOWORD(STACK[0x9DD6]) -= v490;
                if (v502)
                {
                  goto LABEL_335;
                }

LABEL_344:
                v487 = v503;
                goto LABEL_345;
              }

              v502 = 0;
              v503 = v487;
              if (v489 != 4)
              {
                goto LABEL_345;
              }
            }

            if ((v502 & 1) == 0)
            {
              goto LABEL_344;
            }

LABEL_335:
            v505 = dword_277C2F84C[v499];
            while (1)
            {
              v506 = v489 + *(&STACK[0x9DD0] + v499);
              if (v506 > v505)
              {
                break;
              }

              *(&STACK[0x9DD0] + v499) = v506;
              *(&STACK[0x9DD0] + v501) += v489;
              LOWORD(STACK[0x9DD6]) -= v490;
              v487 = sub_277AA7B80();
              if (v487 > v503)
              {
                *(&STACK[0x9DD0] + v499) -= v489;
                *(&STACK[0x9DD0] + v501) -= v489;
                LOWORD(STACK[0x9DD6]) += v490;
                break;
              }

              v503 = v487;
              if (v489 != 4)
              {
                goto LABEL_342;
              }
            }

            v487 = v503;
LABEL_342:
            ++v499;
          }

          while (v499 != v488);
LABEL_345:
          v78 = v489 > 1;
          v489 >>= 1;
          v468 = v532 ^ 3;
        }

        while (v78);
      }

      *(v539 + 104) = v487;
      v507 = *&STACK[0x9DE0];
      *v521 = *&STACK[0x9DD0];
      *(v521 + 16) = v507;
      v508 = *(v517 + 4);
      result = sub_277AA5EFC(v516, v521, (v539 + 192));
      v509.i64[0] = v520;
      v509.i64[1] = v508 + (result << 9);
      v510 = vmlaq_f64(vmulq_f64(vmulq_n_f64(vcvtq_f64_s64(vshrq_n_s64(v509, 4uLL)), *(v518 + 16920)), vdupq_n_s64(0x3F60000000000000uLL)), vdupq_n_s64(0x4060000000000000uLL), vcvtq_f64_s64(vshlq_s64(*(v539 + 96), vnegq_s64(vdupq_n_s64((2 * *(*(*(v539 + 16) + 24696) + 72) - 16))))));
      *(v521 + 44) = v510.f64[1] < v510.f64[0];
      v511 = *(*(v539 + 56) + 40);
      if (v511 == 2)
      {
        v512 = v510.f64[1] >= v510.f64[0];
      }

      else
      {
        if (v511 != 1)
        {
LABEL_351:
          *(v539 + 136) += *(v539 + 96 + 8 * (v510.f64[1] < v510.f64[0]));
          if (v510.f64[1] >= v510.f64[0])
          {
            v513 = v520;
          }

          else
          {
            v513 = v508 + (result << 9);
          }

          *(v539 + 168) += v513;
          if (v510.f64[1] < v510.f64[0])
          {
            v514 = *(v521 + 16);
            *(v539 + 192) = *v521;
            *(v539 + 208) = v514;
          }

          return result;
        }

        v512 = v510.f64[1] > v510.f64[0] * 1.01;
      }

      *(v539 + 120) = v512;
      goto LABEL_351;
    }

    v213 = v37[13];
    v214 = v57 * v57;
    v215 = (v60 - v61);
    v216 = v63 - v62;
    v217 = (v58 + v61 + v64 * v62);
    v218 = v59 + v61;
    v219 = v65 * v62;
    v220 = v58 + (v61 - (v57 >> 1));
    v221 = (v62 - (v57 >> 1)) * v64;
    v537 = *(v35 + 88);
    if (v215 < 16)
    {
      if (v215 <= 7)
      {
        v346 = 0;
        if (v215 <= 1)
        {
          v347 = 1;
        }

        else
        {
          v347 = v215;
        }

        v348 = v216;
        do
        {
          for (ii = 0; ii != v347; ++ii)
          {
            v346 += v217->u8[ii];
          }

          v217 = (v217 + v64);
          --v348;
        }

        while (v348);
LABEL_169:
        v534 = v218 + v219;
        v533 = v220 + v221;
        v350 = v213 == 0;
        v351 = v213 != 0;
        if (v350)
        {
          v352 = 1;
        }

        else
        {
          v352 = 4;
        }

        v353 = (v216 / v352);
        v354 = v353 << (2 * v351);
        v355 = v216 - v354;
        v356 = v346 / (v216 * v215);
        bzero(&STACK[0x4C58], (8 * v214));
        bzero(&a32, (8 * v214 * v214));
        if (v353 >= 1)
        {
          v357 = v356;
          if (!v522)
          {
            v515 = v352;
            v358 = v533;
            v359 = v534;
            v360 = v353;
            v361 = v537;
            sub_277AA53E4(v533, v534, v215, v360, v64, v537, v357, &STACK[0x4C58], &a32, v515);
            if (v355 <= 0)
            {
              goto LABEL_183;
            }

LABEL_180:
            sub_277AA53E4(v358 + v64 * v354, v359 + v361 * v354, v215, 1, v64, v361, v357, &STACK[0x4C58], &a32, v355);
            goto LABEL_183;
          }

          sub_277AA4DA8(v533, v534, v215, v353, v64, v537, v356, &STACK[0x4C58], &a32, v352);
        }

        if (v355 <= 0)
        {
          goto LABEL_183;
        }

        if (v522)
        {
          sub_277AA4DA8(v533 + v64 * v354, v534 + v537 * v354, v215, 1, v64, v537, v356, &STACK[0x4C58], &a32, v355);
          goto LABEL_183;
        }

        v357 = v356;
        v361 = v537;
        v359 = v534;
        v358 = v533;
        goto LABEL_180;
      }

      v337 = 0;
      v223 = 0;
      v338 = 0x404u / v215;
      if (v338 >= v216)
      {
        v338 = v216;
      }

      v339 = (v215 - 8);
      v340 = v339 + 1;
      v341 = v215 - v339;
      v342 = 0;
      do
      {
        v343 = 0;
        do
        {
          if (v215 != 8)
          {
            v344 = v341;
            v345 = v340;
            do
            {
              v223 += v217->u8[v344];
              --v345;
              ++v344;
            }

            while (v345 > 1);
          }

          v343 = vpadal_u8(v343, *v217);
          v217 = (v217 + v64);
          ++v337;
        }

        while (v337 < v338);
        v342 = vpadal_u16(v342, v343);
      }

      while (v337 < v216);
      v235 = vpaddl_u32(v342);
    }

    else
    {
      v222 = 0;
      v223 = 0;
      v224 = 0x808 / v215;
      if ((0x808 / v215) >= v216)
      {
        v224 = v216;
      }

      v225 = 0uLL;
      do
      {
        v226 = 0uLL;
        do
        {
          v227 = v217;
          v228 = v215;
          do
          {
            v229 = v228;
            v230 = *v227->i8;
            v227 += 2;
            v226 = vpadalq_u8(v226, v230);
            v228 -= 16;
          }

          while (v229 > 31);
          v231 = __OFSUB__(v229, 24);
          v232 = v229 - 24;
          if (v232 < 0 == v231)
          {
            v226 = vaddw_u8(v226, *v227);
            v228 = v232;
          }

          if (v228 >= 1)
          {
            v233 = v228 + 1;
            v234 = v215 - v228;
            do
            {
              v223 += v217->u8[v234];
              --v233;
              ++v234;
            }

            while (v233 > 1);
          }

          v217 = (v217 + v64);
          ++v222;
        }

        while (v222 < v224);
        v225 = vpadalq_u16(v225, v226);
      }

      while (v222 < v216);
      v235 = vaddlvq_u32(v225);
    }

    v346 = v235 + v223;
    goto LABEL_169;
  }

  *(v35 + 168) += v40;
  *(v35 + 136) += v52;
  *(v38 + 44) = 0;
  *(v35 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  if (*(*(v35 + 56) + 40) == 2)
  {
    *(v35 + 120) = 1;
  }

  return result;
}

uint64_t sub_277AAA92C(unsigned int a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a1 - 1;
  v7 = a1;
  v8 = a1 - 1;
  v9 = &a2[(a1 - 2) * a3];
  v10 = &a2[a3];
  v11 = 8 * a3;
  v12 = a2;
  while (2)
  {
    v13 = &a2[v8 * a3];
    v14 = v9;
    v15 = v8;
    v16 = &a2[v5];
    do
    {
      v17 = v15 - 1;
      v18 = v16[(v15 - 1) * a3];
      if (v18 >= 0)
      {
        v19 = v16[(v15 - 1) * a3];
      }

      else
      {
        v19 = -v18;
      }

      v20 = v16[v15 * a3];
      if (v20 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = -v20;
      }

      v22 = v13;
      v23 = v14;
      v24 = v7;
      if (v19 < v21)
      {
        do
        {
          v25 = *v22;
          *v22++ = *v23;
          *v23++ = v25;
          --v24;
        }

        while (v24);
        *(a4 + 8 * v17) = vextq_s8(*(a4 + 8 * v17), *(a4 + 8 * v17), 8uLL);
      }

      v14 -= a3;
      v13 -= a3;
      v15 = v17;
    }

    while (v17 > v5);
    v26 = 0;
    v27 = v12;
    v28 = v7;
    do
    {
      v30 = *v27++;
      v29 = v30;
      if (v30 < 0)
      {
        v29 = -v29;
      }

      if (v29 > v26)
      {
        v26 = v29;
      }

      --v28;
    }

    while (v28);
    v31 = v26 >= 0x400000;
    if (v26 < 0x400000)
    {
      v32 = 1;
    }

    else
    {
      v32 = 128;
    }

    if (v31)
    {
      v33 = 64;
    }

    else
    {
      v33 = 1;
    }

    if (v31)
    {
      v34 = 13;
    }

    else
    {
      v34 = 0;
    }

    if (v31)
    {
      v35 = 7;
    }

    else
    {
      v35 = 0;
    }

    v36 = v10;
    v37 = v5;
    do
    {
      v38 = a2[(a3 + 1) * v5];
      if (!v38)
      {
        return 0;
      }

      v39 = 0;
      v40 = v16[++v37 * a3] / v32;
      do
      {
        v36[v39] -= (v12[v39] / v33 * v40 / v38) << v34;
        ++v39;
      }

      while (v7 != v39);
      *(a4 + 8 * v37) -= (*(a4 + 8 * v5) * v40 / v38) << v35;
      v36 = (v36 + v11);
    }

    while (v37 != v6);
    ++v5;
    v12 = (v12 + v11);
    v10 = (v10 + v11);
    if (v5 != v6)
    {
      continue;
    }

    break;
  }

  v41 = a5 + 8 * v6 + 8;
  v42 = a2 + (8 * a3 + 8) * v6 + 8;
  v43 = v6;
  while (1)
  {
    v44 = a2[v43 + v43 * a3];
    if (!v44)
    {
      break;
    }

    if (v43 >= v6)
    {
      v46 = 0;
    }

    else
    {
      v45 = 0;
      v46 = 0;
      do
      {
        v46 += *(v41 + 8 * v45) * *(v42 + 8 * v45) / 0x10000;
        ++v45;
      }

      while (v6 > v43 + v45);
    }

    *(a5 + 8 * v43) = ((*(a4 + 8 * v43) - v46) << 16) / v44;
    v41 -= 8;
    v42 += (8 * a3) ^ 0xFFFFFFFFFFFFFFF8;
    if (v43-- < 1)
    {
      LODWORD(v43) = -1;
      return v43 >> 31;
    }
  }

  return v43 >> 31;
}

uint64_t sub_277AAABC8(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  result = (*(&off_28866EA50[3 * *(*(*(a3 + 16) + 24696) + 76)] + *(a3 + 32)))(*a3, *(*(a3 + 16) + 232) + 1248, *a1, a1[1] - *a1, a1[2], a1[3] - a1[2]);
  *(a3 + 96) = result;
  *(a3 + 128) += result;
  return result;
}

uint64_t sub_277AAAC40(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 4 * byte_277C3F990[a3] - ((*(a2 + 8344) >> 31) & (-*(a2 + 8344) >> 3));
  v4 = 4 * byte_277C36D60[a3] - ((*(a2 + 8352) >> 31) & (-*(a2 + 8352) >> 3));
  if (v4 < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      if (v3 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = (*(*a1 + 51464))(*(a2 + 48) + v7 * *(a2 + 72) + v9);
          v8 = v8 + log1p(vcvtd_n_f64_u32(v10, 4uLL));
          v9 += 4;
        }

        while (v9 < v3);
      }

      v7 += 4;
    }

    while (v7 < v4);
  }

  v11 = v8 / (v3 / 4 * v4 / 4);
  if (v11 > 7.0)
  {
    v11 = 7.0;
  }

  return v11;
}

uint64_t sub_277AAADB4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 *a6, int a7, int a8, double a9, uint16x8_t a10, uint8x8_t a11)
{
  v11 = (2 * a1);
  v12 = 0;
  if (a8)
  {
    v13 = (2 * a3);
    v14 = 0;
    a10.i32[0] = 4194368;
    a10.i16[2] = 64;
    a10.i16[3] = 64;
    do
    {
      a11.i32[0] = *a6;
      a11 = vrshrn_n_s32(vmlal_u16(vmull_u16(*&vsubw_u8(a10, a11), *v13), *&vmovl_u8(a11), *(2 * a5 + v12)), 6uLL);
      v14 = vaba_u16(v14, a11, *v11);
      a6 = (a6 + a7);
      v13 = (v13 + 2 * a4);
      v12 += 8;
      v11 = (v11 + 2 * a2);
    }

    while (v12 != 32);
  }

  else
  {
    v15 = (2 * a3);
    v14 = 0;
    a10.i32[0] = 4194368;
    a10.i16[2] = 64;
    a10.i16[3] = 64;
    do
    {
      a11.i32[0] = *a6;
      a11 = vrshrn_n_s32(vmlal_u16(vmull_u16(*&vsubw_u8(a10, a11), *(2 * a5 + v12)), *&vmovl_u8(a11), *v15), 6uLL);
      v14 = vaba_u16(v14, a11, *v11);
      a6 = (a6 + a7);
      v12 += 8;
      v15 = (v15 + 2 * a4);
      v11 = (v11 + 2 * a2);
    }

    while (v12 != 32);
  }

  return vaddlv_u16(v14);
}

uint64_t sub_277AAAE8C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 *a6, int a7, int a8, double a9, uint16x8_t a10, uint8x8_t a11)
{
  v11 = (2 * a1);
  v12 = 0;
  if (a8)
  {
    v13 = (2 * a3);
    v14 = 0;
    a10.i32[0] = 4194368;
    a10.i16[2] = 64;
    a10.i16[3] = 64;
    do
    {
      a11.i32[0] = *a6;
      a11 = vrshrn_n_s32(vmlal_u16(vmull_u16(*&vsubw_u8(a10, a11), *v13), *&vmovl_u8(a11), *(2 * a5 + v12)), 6uLL);
      v14 = vaba_u16(v14, a11, *v11);
      a6 = (a6 + a7);
      v13 = (v13 + 2 * a4);
      v12 += 8;
      v11 = (v11 + 2 * a2);
    }

    while (v12 != 64);
  }

  else
  {
    v15 = (2 * a3);
    v14 = 0;
    a10.i32[0] = 4194368;
    a10.i16[2] = 64;
    a10.i16[3] = 64;
    do
    {
      a11.i32[0] = *a6;
      a11 = vrshrn_n_s32(vmlal_u16(vmull_u16(*&vsubw_u8(a10, a11), *(2 * a5 + v12)), *&vmovl_u8(a11), *v15), 6uLL);
      v14 = vaba_u16(v14, a11, *v11);
      a6 = (a6 + a7);
      v12 += 8;
      v15 = (v15 + 2 * a4);
      v11 = (v11 + 2 * a2);
    }

    while (v12 != 64);
  }

  return vaddlv_u16(v14);
}

uint64_t sub_277AAAF64(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = (2 * a1);
  v9 = 0;
  if (a8)
  {
    v10 = (2 * a3);
    v11 = 0uLL;
    v12.i64[0] = 0x40004000400040;
    v12.i64[1] = 0x40004000400040;
    do
    {
      v13 = vmovl_u8(*a6);
      v14 = vsubw_u8(v12, *a6);
      v11 = vabaq_u16(v11, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v10, *v14.i8), *(2 * a5 + v9), *v13.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v10->i8, v14), *(2 * a5 + v9), v13), 6uLL), *v8);
      a6 = (a6 + a7);
      v9 += 16;
      v8 = (v8 + 2 * a2);
      v10 = (v10 + 2 * a4);
    }

    while (v9 != 64);
  }

  else
  {
    v15 = (2 * a3);
    v11 = 0uLL;
    v16.i64[0] = 0x40004000400040;
    v16.i64[1] = 0x40004000400040;
    do
    {
      v17 = vmovl_u8(*a6);
      v18 = vsubw_u8(v16, *a6);
      v11 = vabaq_u16(v11, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(2 * a5 + v9), *v18.i8), *v15, *v17.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(2 * a5 + v9), v18), *v15->i8, v17), 6uLL), *v8);
      a6 = (a6 + a7);
      v9 += 16;
      v8 = (v8 + 2 * a2);
      v15 = (v15 + 2 * a4);
    }

    while (v9 != 64);
  }

  return vaddlvq_u16(v11);
}

uint64_t sub_277AAB054(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = (2 * a1);
  v9 = 0;
  if (a8)
  {
    v10 = (2 * a3);
    v11 = 0uLL;
    v12.i64[0] = 0x40004000400040;
    v12.i64[1] = 0x40004000400040;
    do
    {
      v13 = vmovl_u8(*a6);
      v14 = vsubw_u8(v12, *a6);
      v11 = vabaq_u16(v11, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v10, *v14.i8), *(2 * a5 + v9), *v13.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v10->i8, v14), *(2 * a5 + v9), v13), 6uLL), *v8);
      a6 = (a6 + a7);
      v9 += 16;
      v8 = (v8 + 2 * a2);
      v10 = (v10 + 2 * a4);
    }

    while (v9 != 128);
  }

  else
  {
    v15 = (2 * a3);
    v11 = 0uLL;
    v16.i64[0] = 0x40004000400040;
    v16.i64[1] = 0x40004000400040;
    do
    {
      v17 = vmovl_u8(*a6);
      v18 = vsubw_u8(v16, *a6);
      v11 = vabaq_u16(v11, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(2 * a5 + v9), *v18.i8), *v15, *v17.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(2 * a5 + v9), v18), *v15->i8, v17), 6uLL), *v8);
      a6 = (a6 + a7);
      v9 += 16;
      v8 = (v8 + 2 * a2);
      v15 = (v15 + 2 * a4);
    }

    while (v9 != 128);
  }

  return vaddlvq_u16(v11);
}

uint64_t sub_277AAB144(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = (2 * a1);
  v9 = 0;
  if (a8)
  {
    v10 = (2 * a3);
    v11 = 0uLL;
    v12.i64[0] = 0x40004000400040;
    v12.i64[1] = 0x40004000400040;
    do
    {
      v13 = vmovl_u8(*a6);
      v14 = vsubw_u8(v12, *a6);
      v11 = vabaq_u16(v11, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v10, *v14.i8), *(2 * a5 + v9), *v13.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v10->i8, v14), *(2 * a5 + v9), v13), 6uLL), *v8);
      a6 = (a6 + a7);
      v9 += 16;
      v8 = (v8 + 2 * a2);
      v10 = (v10 + 2 * a4);
    }

    while (v9 != 256);
  }

  else
  {
    v15 = (2 * a3);
    v11 = 0uLL;
    v16.i64[0] = 0x40004000400040;
    v16.i64[1] = 0x40004000400040;
    do
    {
      v17 = vmovl_u8(*a6);
      v18 = vsubw_u8(v16, *a6);
      v11 = vabaq_u16(v11, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(2 * a5 + v9), *v18.i8), *v15, *v17.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(2 * a5 + v9), v18), *v15->i8, v17), 6uLL), *v8);
      a6 = (a6 + a7);
      v9 += 16;
      v8 = (v8 + 2 * a2);
      v15 = (v15 + 2 * a4);
    }

    while (v9 != 256);
  }

  return vaddlvq_u16(v11);
}

uint64_t sub_277AAB234(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 0;
  if (a8)
  {
    v10 = 2 * a5;
    v11 = a6 + 1;
    v12 = (v8 + 16);
    v13 = (2 * a3 + 16);
    v14 = 0uLL;
    v15.i64[0] = 0x40004000400040;
    v15.i64[1] = 0x40004000400040;
    do
    {
      v16 = v11[-1];
      v17 = vmovl_u8(v16);
      v18 = vsubw_u8(v15, v16);
      v19 = vabaq_u16(v14, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v13[-2], *v18.i8), *(v10 + v9), *v17.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v13[-2].i8, v18), *(v10 + v9), v17), 6uLL), v12[-1]);
      v20 = vmovl_u8(*v11);
      v21 = vsubw_u8(v15, *v11);
      v14 = vabaq_u16(v19, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v13, *v21.i8), *(v10 + v9 + 16), *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v13->i8, v21), *(v10 + v9 + 16), v20), 6uLL), *v12);
      v11 = (v11 + a7);
      v9 += 32;
      v12 = (v12 + 2 * a2);
      v13 = (v13 + 2 * a4);
    }

    while (v9 != 256);
  }

  else
  {
    v22 = 2 * a5;
    v23 = a6 + 1;
    v24 = (v8 + 16);
    v25 = (2 * a3 + 16);
    v14 = 0uLL;
    v26.i64[0] = 0x40004000400040;
    v26.i64[1] = 0x40004000400040;
    do
    {
      v27 = v23[-1];
      v28 = vmovl_u8(v27);
      v29 = vsubw_u8(v26, v27);
      v30 = vabaq_u16(v14, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v22 + v9), *v29.i8), v25[-2], *v28.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v22 + v9), v29), *v25[-2].i8, v28), 6uLL), v24[-1]);
      v31 = vmovl_u8(*v23);
      v32 = vsubw_u8(v26, *v23);
      v14 = vabaq_u16(v30, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v22 + v9 + 16), *v32.i8), *v25, *v31.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v22 + v9 + 16), v32), *v25->i8, v31), 6uLL), *v24);
      v23 = (v23 + a7);
      v9 += 32;
      v24 = (v24 + 2 * a2);
      v25 = (v25 + 2 * a4);
    }

    while (v9 != 256);
  }

  return vaddlvq_u16(v14);
}

uint64_t sub_277AAB38C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 16 * a2;
  v10 = 16 * a4;
  v11 = 8 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 1;
    v14 = 2 * a3 + 16;
    v15 = 2 * a4;
    v16 = (v8 + 16);
    v17 = 2 * a2;
    v18 = 0uLL;
    v19 = 16;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    do
    {
      v21 = 0;
      v22 = v16;
      v23 = v14;
      v24 = v13;
      v25 = 0uLL;
      do
      {
        v26 = v24[-1];
        v27 = vmovl_u8(v26);
        v28 = vsubw_u8(v20, v26);
        v29 = vabaq_u16(v25, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-2], *v28.i8), *(v12 + v21), *v27.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-2].i8, v28), *(v12 + v21), v27), 6uLL), v22[-1]);
        v30 = vmovl_u8(*v24);
        v31 = vsubw_u8(v20, *v24);
        v32 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v23, *v31.i8), *(v12 + v21 + 16), *v30.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23->i8, v31), *(v12 + v21 + 16), v30), 6uLL);
        v21 += 32;
        v25 = vabaq_u16(v29, v32, *v22);
        v24 = (v24 + a7);
        v23 = (v23 + v15);
        v22 = (v22 + v17);
      }

      while (v21 != 256);
      v12 += 256;
      v18 = vpadalq_u16(v18, v25);
      v13 = (v13 + v11);
      v14 += v10;
      v16 = (v16 + v9);
      v19 -= 8;
    }

    while (v19);
  }

  else
  {
    v33 = 2 * a5;
    v34 = a6 + 1;
    v35 = 2 * a3 + 16;
    v36 = 2 * a4;
    v37 = (v8 + 16);
    v38 = 2 * a2;
    v18 = 0uLL;
    v39 = 16;
    v40.i64[0] = 0x40004000400040;
    v40.i64[1] = 0x40004000400040;
    do
    {
      v41 = 0;
      v42 = v37;
      v43 = v35;
      v44 = v34;
      v45 = 0uLL;
      do
      {
        v46 = v44[-1];
        v47 = vmovl_u8(v46);
        v48 = vsubw_u8(v40, v46);
        v49 = vabaq_u16(v45, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v33 + v41), *v48.i8), v43[-2], *v47.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v33 + v41), v48), *v43[-2].i8, v47), 6uLL), v42[-1]);
        v50 = vmovl_u8(*v44);
        v51 = vsubw_u8(v40, *v44);
        v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v33 + v41 + 16), *v51.i8), *v43, *v50.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v33 + v41 + 16), v51), *v43->i8, v50), 6uLL);
        v41 += 32;
        v45 = vabaq_u16(v49, v52, *v42);
        v44 = (v44 + a7);
        v43 = (v43 + v36);
        v42 = (v42 + v38);
      }

      while (v41 != 256);
      v33 += 256;
      v18 = vpadalq_u16(v18, v45);
      v34 = (v34 + v11);
      v35 += v10;
      v37 = (v37 + v9);
      v39 -= 8;
    }

    while (v39);
  }

  return vaddvq_s32(v18);
}

uint64_t sub_277AAB554(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 16 * a2;
  v10 = 16 * a4;
  v11 = 8 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 1;
    v14 = 2 * a3 + 16;
    v15 = 2 * a4;
    v16 = (v8 + 16);
    v17 = 2 * a2;
    v18 = 0uLL;
    v19 = 32;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    do
    {
      v21 = 0;
      v22 = v16;
      v23 = v14;
      v24 = v13;
      v25 = 0uLL;
      do
      {
        v26 = v24[-1];
        v27 = vmovl_u8(v26);
        v28 = vsubw_u8(v20, v26);
        v29 = vabaq_u16(v25, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-2], *v28.i8), *(v12 + v21), *v27.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-2].i8, v28), *(v12 + v21), v27), 6uLL), v22[-1]);
        v30 = vmovl_u8(*v24);
        v31 = vsubw_u8(v20, *v24);
        v32 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v23, *v31.i8), *(v12 + v21 + 16), *v30.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23->i8, v31), *(v12 + v21 + 16), v30), 6uLL);
        v21 += 32;
        v25 = vabaq_u16(v29, v32, *v22);
        v24 = (v24 + a7);
        v23 = (v23 + v15);
        v22 = (v22 + v17);
      }

      while (v21 != 256);
      v12 += 256;
      v18 = vpadalq_u16(v18, v25);
      v13 = (v13 + v11);
      v14 += v10;
      v16 = (v16 + v9);
      v19 -= 8;
    }

    while (v19);
  }

  else
  {
    v33 = 2 * a5;
    v34 = a6 + 1;
    v35 = 2 * a3 + 16;
    v36 = 2 * a4;
    v37 = (v8 + 16);
    v38 = 2 * a2;
    v18 = 0uLL;
    v39 = 32;
    v40.i64[0] = 0x40004000400040;
    v40.i64[1] = 0x40004000400040;
    do
    {
      v41 = 0;
      v42 = v37;
      v43 = v35;
      v44 = v34;
      v45 = 0uLL;
      do
      {
        v46 = v44[-1];
        v47 = vmovl_u8(v46);
        v48 = vsubw_u8(v40, v46);
        v49 = vabaq_u16(v45, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v33 + v41), *v48.i8), v43[-2], *v47.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v33 + v41), v48), *v43[-2].i8, v47), 6uLL), v42[-1]);
        v50 = vmovl_u8(*v44);
        v51 = vsubw_u8(v40, *v44);
        v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v33 + v41 + 16), *v51.i8), *v43, *v50.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v33 + v41 + 16), v51), *v43->i8, v50), 6uLL);
        v41 += 32;
        v45 = vabaq_u16(v49, v52, *v42);
        v44 = (v44 + a7);
        v43 = (v43 + v36);
        v42 = (v42 + v38);
      }

      while (v41 != 256);
      v33 += 256;
      v18 = vpadalq_u16(v18, v45);
      v34 = (v34 + v11);
      v35 += v10;
      v37 = (v37 + v9);
      v39 -= 8;
    }

    while (v39);
  }

  return vaddvq_s32(v18);
}

uint64_t sub_277AAB71C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 2;
    v14 = (v8 + 32);
    v15 = 2 * a2;
    v16 = 2 * a3 + 32;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 16;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    do
    {
      v21 = 0;
      v22 = v16;
      v23 = v14;
      v24 = v13;
      v25 = 0uLL;
      do
      {
        v26 = v24[-2];
        v27 = v24[-1];
        v28 = vmovl_u8(v26);
        v29 = vsubw_u8(v20, v26);
        v30 = vabaq_u16(v25, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[-4], *v29.i8), *(v12 + v21), *v28.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[-4].i8, v29), *(v12 + v21), v28), 6uLL), v23[-2]);
        v31 = vmovl_u8(v27);
        v32 = vsubw_u8(v20, v27);
        v33 = vabaq_u16(v30, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[-2], *v32.i8), *(v12 + v21 + 16), *v31.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[-2].i8, v32), *(v12 + v21 + 16), v31), 6uLL), v23[-1]);
        *v32.i8 = v24[1];
        v34 = vmovl_u8(*v24);
        v35 = vsubw_u8(v20, *v24);
        v36 = vabaq_u16(v33, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v22, *v35.i8), *(v12 + v21 + 32), *v34.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22->i8, v35), *(v12 + v21 + 32), v34), 6uLL), *v23);
        v37 = vmovl_u8(*v32.i8);
        v38 = vsubw_u8(v20, *v32.i8);
        v39 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[2], *v38.i8), *(v12 + v21 + 48), *v37.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[2].i8, v38), *(v12 + v21 + 48), v37), 6uLL);
        v21 += 64;
        v25 = vabaq_u16(v36, v39, v23[1]);
        v24 = (v24 + a7);
        v23 = (v23 + v15);
        v22 = (v22 + v17);
      }

      while (v21 != 256);
      v12 += 256;
      v18 = vpadalq_u16(v18, v25);
      v13 = (v13 + v11);
      v14 = (v14 + v9);
      v16 += v10;
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v40 = 2 * a5;
    v41 = a6 + 2;
    v42 = (v8 + 32);
    v43 = 2 * a2;
    v44 = 2 * a3 + 32;
    v45 = 2 * a4;
    v18 = 0uLL;
    v46 = 16;
    v47.i64[0] = 0x40004000400040;
    v47.i64[1] = 0x40004000400040;
    do
    {
      v48 = 0;
      v49 = v44;
      v50 = v42;
      v51 = v41;
      v52 = 0uLL;
      do
      {
        v53 = v51[-2];
        v54 = v51[-1];
        v55 = vmovl_u8(v53);
        v56 = vsubw_u8(v47, v53);
        v57 = vabaq_u16(v52, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48), *v56.i8), v49[-4], *v55.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48), v56), *v49[-4].i8, v55), 6uLL), v50[-2]);
        v58 = vmovl_u8(v54);
        v59 = vsubw_u8(v47, v54);
        v60 = vabaq_u16(v57, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 16), *v59.i8), v49[-2], *v58.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 16), v59), *v49[-2].i8, v58), 6uLL), v50[-1]);
        *v59.i8 = v51[1];
        v61 = vmovl_u8(*v51);
        v62 = vsubw_u8(v47, *v51);
        v63 = vabaq_u16(v60, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 32), *v62.i8), *v49, *v61.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 32), v62), *v49->i8, v61), 6uLL), *v50);
        v64 = vmovl_u8(*v59.i8);
        v65 = vsubw_u8(v47, *v59.i8);
        v66 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 48), *v65.i8), v49[2], *v64.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 48), v65), *v49[2].i8, v64), 6uLL);
        v48 += 64;
        v52 = vabaq_u16(v63, v66, v50[1]);
        v51 = (v51 + a7);
        v50 = (v50 + v43);
        v49 = (v49 + v45);
      }

      while (v48 != 256);
      v40 += 256;
      v18 = vpadalq_u16(v18, v52);
      v41 = (v41 + v11);
      v42 = (v42 + v9);
      v44 += v10;
      v46 -= 4;
    }

    while (v46);
  }

  return vaddvq_s32(v18);
}

uint64_t sub_277AAB994(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 2;
    v14 = (v8 + 32);
    v15 = 2 * a2;
    v16 = 2 * a3 + 32;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 32;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    do
    {
      v21 = 0;
      v22 = v16;
      v23 = v14;
      v24 = v13;
      v25 = 0uLL;
      do
      {
        v26 = v24[-2];
        v27 = v24[-1];
        v28 = vmovl_u8(v26);
        v29 = vsubw_u8(v20, v26);
        v30 = vabaq_u16(v25, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[-4], *v29.i8), *(v12 + v21), *v28.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[-4].i8, v29), *(v12 + v21), v28), 6uLL), v23[-2]);
        v31 = vmovl_u8(v27);
        v32 = vsubw_u8(v20, v27);
        v33 = vabaq_u16(v30, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[-2], *v32.i8), *(v12 + v21 + 16), *v31.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[-2].i8, v32), *(v12 + v21 + 16), v31), 6uLL), v23[-1]);
        *v32.i8 = v24[1];
        v34 = vmovl_u8(*v24);
        v35 = vsubw_u8(v20, *v24);
        v36 = vabaq_u16(v33, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v22, *v35.i8), *(v12 + v21 + 32), *v34.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22->i8, v35), *(v12 + v21 + 32), v34), 6uLL), *v23);
        v37 = vmovl_u8(*v32.i8);
        v38 = vsubw_u8(v20, *v32.i8);
        v39 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[2], *v38.i8), *(v12 + v21 + 48), *v37.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[2].i8, v38), *(v12 + v21 + 48), v37), 6uLL);
        v21 += 64;
        v25 = vabaq_u16(v36, v39, v23[1]);
        v24 = (v24 + a7);
        v23 = (v23 + v15);
        v22 = (v22 + v17);
      }

      while (v21 != 256);
      v12 += 256;
      v18 = vpadalq_u16(v18, v25);
      v13 = (v13 + v11);
      v14 = (v14 + v9);
      v16 += v10;
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v40 = 2 * a5;
    v41 = a6 + 2;
    v42 = (v8 + 32);
    v43 = 2 * a2;
    v44 = 2 * a3 + 32;
    v45 = 2 * a4;
    v18 = 0uLL;
    v46 = 32;
    v47.i64[0] = 0x40004000400040;
    v47.i64[1] = 0x40004000400040;
    do
    {
      v48 = 0;
      v49 = v44;
      v50 = v42;
      v51 = v41;
      v52 = 0uLL;
      do
      {
        v53 = v51[-2];
        v54 = v51[-1];
        v55 = vmovl_u8(v53);
        v56 = vsubw_u8(v47, v53);
        v57 = vabaq_u16(v52, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48), *v56.i8), v49[-4], *v55.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48), v56), *v49[-4].i8, v55), 6uLL), v50[-2]);
        v58 = vmovl_u8(v54);
        v59 = vsubw_u8(v47, v54);
        v60 = vabaq_u16(v57, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 16), *v59.i8), v49[-2], *v58.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 16), v59), *v49[-2].i8, v58), 6uLL), v50[-1]);
        *v59.i8 = v51[1];
        v61 = vmovl_u8(*v51);
        v62 = vsubw_u8(v47, *v51);
        v63 = vabaq_u16(v60, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 32), *v62.i8), *v49, *v61.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 32), v62), *v49->i8, v61), 6uLL), *v50);
        v64 = vmovl_u8(*v59.i8);
        v65 = vsubw_u8(v47, *v59.i8);
        v66 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 48), *v65.i8), v49[2], *v64.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 48), v65), *v49[2].i8, v64), 6uLL);
        v48 += 64;
        v52 = vabaq_u16(v63, v66, v50[1]);
        v51 = (v51 + a7);
        v50 = (v50 + v43);
        v49 = (v49 + v45);
      }

      while (v48 != 256);
      v40 += 256;
      v18 = vpadalq_u16(v18, v52);
      v41 = (v41 + v11);
      v42 = (v42 + v9);
      v44 += v10;
      v46 -= 4;
    }

    while (v46);
  }

  return vaddvq_s32(v18);
}

uint64_t sub_277AABC0C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 2;
    v14 = (v8 + 32);
    v15 = 2 * a2;
    v16 = 2 * a3 + 32;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 64;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    do
    {
      v21 = 0;
      v22 = v16;
      v23 = v14;
      v24 = v13;
      v25 = 0uLL;
      do
      {
        v26 = v24[-2];
        v27 = v24[-1];
        v28 = vmovl_u8(v26);
        v29 = vsubw_u8(v20, v26);
        v30 = vabaq_u16(v25, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[-4], *v29.i8), *(v12 + v21), *v28.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[-4].i8, v29), *(v12 + v21), v28), 6uLL), v23[-2]);
        v31 = vmovl_u8(v27);
        v32 = vsubw_u8(v20, v27);
        v33 = vabaq_u16(v30, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[-2], *v32.i8), *(v12 + v21 + 16), *v31.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[-2].i8, v32), *(v12 + v21 + 16), v31), 6uLL), v23[-1]);
        *v32.i8 = v24[1];
        v34 = vmovl_u8(*v24);
        v35 = vsubw_u8(v20, *v24);
        v36 = vabaq_u16(v33, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v22, *v35.i8), *(v12 + v21 + 32), *v34.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22->i8, v35), *(v12 + v21 + 32), v34), 6uLL), *v23);
        v37 = vmovl_u8(*v32.i8);
        v38 = vsubw_u8(v20, *v32.i8);
        v39 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[2], *v38.i8), *(v12 + v21 + 48), *v37.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[2].i8, v38), *(v12 + v21 + 48), v37), 6uLL);
        v21 += 64;
        v25 = vabaq_u16(v36, v39, v23[1]);
        v24 = (v24 + a7);
        v23 = (v23 + v15);
        v22 = (v22 + v17);
      }

      while (v21 != 256);
      v12 += 256;
      v18 = vpadalq_u16(v18, v25);
      v13 = (v13 + v11);
      v14 = (v14 + v9);
      v16 += v10;
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v40 = 2 * a5;
    v41 = a6 + 2;
    v42 = (v8 + 32);
    v43 = 2 * a2;
    v44 = 2 * a3 + 32;
    v45 = 2 * a4;
    v18 = 0uLL;
    v46 = 64;
    v47.i64[0] = 0x40004000400040;
    v47.i64[1] = 0x40004000400040;
    do
    {
      v48 = 0;
      v49 = v44;
      v50 = v42;
      v51 = v41;
      v52 = 0uLL;
      do
      {
        v53 = v51[-2];
        v54 = v51[-1];
        v55 = vmovl_u8(v53);
        v56 = vsubw_u8(v47, v53);
        v57 = vabaq_u16(v52, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48), *v56.i8), v49[-4], *v55.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48), v56), *v49[-4].i8, v55), 6uLL), v50[-2]);
        v58 = vmovl_u8(v54);
        v59 = vsubw_u8(v47, v54);
        v60 = vabaq_u16(v57, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 16), *v59.i8), v49[-2], *v58.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 16), v59), *v49[-2].i8, v58), 6uLL), v50[-1]);
        *v59.i8 = v51[1];
        v61 = vmovl_u8(*v51);
        v62 = vsubw_u8(v47, *v51);
        v63 = vabaq_u16(v60, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 32), *v62.i8), *v49, *v61.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 32), v62), *v49->i8, v61), 6uLL), *v50);
        v64 = vmovl_u8(*v59.i8);
        v65 = vsubw_u8(v47, *v59.i8);
        v66 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 48), *v65.i8), v49[2], *v64.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 48), v65), *v49[2].i8, v64), 6uLL);
        v48 += 64;
        v52 = vabaq_u16(v63, v66, v50[1]);
        v51 = (v51 + a7);
        v50 = (v50 + v43);
        v49 = (v49 + v45);
      }

      while (v48 != 256);
      v40 += 256;
      v18 = vpadalq_u16(v18, v52);
      v41 = (v41 + v11);
      v42 = (v42 + v9);
      v44 += v10;
      v46 -= 4;
    }

    while (v46);
  }

  return vaddvq_s32(v18);
}

uint64_t sub_277AABE84(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 4;
    v14 = (v8 + 64);
    v15 = 2 * a2;
    v16 = 2 * a3 + 64;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 32;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    do
    {
      v22 = 0;
      v23 = v16;
      v24 = v14;
      v25 = v13;
      v26 = 0uLL;
      v27 = 0uLL;
      do
      {
        v28 = v25[-4];
        v29 = v25[-3];
        v30 = vmovl_u8(v28);
        v31 = vsubw_u8(v20, v28);
        v32 = vabaq_u16(v26, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-8], *v31.i8), *(v12 + v22), *v30.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-8].i8, v31), *(v12 + v22), v30), 6uLL), v24[-4]);
        v33 = vmovl_u8(v29);
        v34 = vsubw_u8(v20, v29);
        v35 = vabaq_u16(v32, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-6], *v34.i8), *(v12 + v22 + 16), *v33.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-6].i8, v34), *(v12 + v22 + 16), v33), 6uLL), v24[-3]);
        *v33.i8 = v25[-2];
        *v34.i8 = v25[-1];
        v36 = vmovl_u8(*v33.i8);
        v37 = vsubw_u8(v20, *v33.i8);
        v38 = vabaq_u16(v35, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-4], *v37.i8), *(v12 + v22 + 32), *v36.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-4].i8, v37), *(v12 + v22 + 32), v36), 6uLL), v24[-2]);
        v39 = vmovl_u8(*v34.i8);
        v40 = vsubw_u8(v20, *v34.i8);
        v26 = vabaq_u16(v38, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-2], *v40.i8), *(v12 + v22 + 48), *v39.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-2].i8, v40), *(v12 + v22 + 48), v39), 6uLL), v24[-1]);
        *v40.i8 = v25[1];
        v41 = vmovl_u8(*v25);
        v42 = vsubw_u8(v20, *v25);
        v43 = vabaq_u16(v27, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v23, *v42.i8), *(v12 + v22 + 64), *v41.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23->i8, v42), *(v12 + v22 + 64), v41), 6uLL), *v24);
        v44 = vmovl_u8(*v40.i8);
        v45 = vsubw_u8(v20, *v40.i8);
        v46 = vabaq_u16(v43, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[2], *v45.i8), *(v12 + v22 + 80), *v44.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[2].i8, v45), *(v12 + v22 + 80), v44), 6uLL), v24[1]);
        *v44.i8 = v25[2];
        *v45.i8 = v25[3];
        v47 = vmovl_u8(*v44.i8);
        v48 = vsubw_u8(v20, *v44.i8);
        v49 = vabaq_u16(v46, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[4], *v48.i8), *(v12 + v22 + 96), *v47.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[4].i8, v48), *(v12 + v22 + 96), v47), 6uLL), v24[2]);
        v50 = vmovl_u8(*v45.i8);
        v51 = vsubw_u8(v20, *v45.i8);
        v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[6], *v51.i8), *(v12 + v22 + 112), *v50.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[6].i8, v51), *(v12 + v22 + 112), v50), 6uLL);
        v22 += 128;
        v27 = vabaq_u16(v49, v52, v24[3]);
        v25 = (v25 + a7);
        v24 = (v24 + v15);
        v23 = (v23 + v17);
      }

      while (v22 != 512);
      v12 += 512;
      v21 = vpadalq_u16(v21, v26);
      v18 = vpadalq_u16(v18, v27);
      v13 = (v13 + v11);
      v14 = (v14 + v9);
      v16 += v10;
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v53 = 2 * a5;
    v54 = a6 + 4;
    v55 = (v8 + 64);
    v56 = 2 * a2;
    v57 = 2 * a3 + 64;
    v58 = 2 * a4;
    v18 = 0uLL;
    v59 = 32;
    v60.i64[0] = 0x40004000400040;
    v60.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    do
    {
      v61 = 0;
      v62 = v57;
      v63 = v55;
      v64 = v54;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v67 = v64[-4];
        v68 = v64[-3];
        v69 = vmovl_u8(v67);
        v70 = vsubw_u8(v60, v67);
        v71 = vabaq_u16(v65, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61), *v70.i8), v62[-8], *v69.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61), v70), *v62[-8].i8, v69), 6uLL), v63[-4]);
        v72 = vmovl_u8(v68);
        v73 = vsubw_u8(v60, v68);
        v74 = vabaq_u16(v71, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 16), *v73.i8), v62[-6], *v72.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 16), v73), *v62[-6].i8, v72), 6uLL), v63[-3]);
        *v72.i8 = v64[-2];
        *v73.i8 = v64[-1];
        v75 = vmovl_u8(*v72.i8);
        v76 = vsubw_u8(v60, *v72.i8);
        v77 = vabaq_u16(v74, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 32), *v76.i8), v62[-4], *v75.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 32), v76), *v62[-4].i8, v75), 6uLL), v63[-2]);
        v78 = vmovl_u8(*v73.i8);
        v79 = vsubw_u8(v60, *v73.i8);
        v65 = vabaq_u16(v77, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 48), *v79.i8), v62[-2], *v78.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 48), v79), *v62[-2].i8, v78), 6uLL), v63[-1]);
        *v79.i8 = v64[1];
        v80 = vmovl_u8(*v64);
        v81 = vsubw_u8(v60, *v64);
        v82 = vabaq_u16(v66, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 64), *v81.i8), *v62, *v80.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 64), v81), *v62->i8, v80), 6uLL), *v63);
        v83 = vmovl_u8(*v79.i8);
        v84 = vsubw_u8(v60, *v79.i8);
        v85 = vabaq_u16(v82, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 80), *v84.i8), v62[2], *v83.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 80), v84), *v62[2].i8, v83), 6uLL), v63[1]);
        *v83.i8 = v64[2];
        *v84.i8 = v64[3];
        v86 = vmovl_u8(*v83.i8);
        v87 = vsubw_u8(v60, *v83.i8);
        v88 = vabaq_u16(v85, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 96), *v87.i8), v62[4], *v86.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 96), v87), *v62[4].i8, v86), 6uLL), v63[2]);
        v89 = vmovl_u8(*v84.i8);
        v90 = vsubw_u8(v60, *v84.i8);
        v91 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 112), *v90.i8), v62[6], *v89.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 112), v90), *v62[6].i8, v89), 6uLL);
        v61 += 128;
        v66 = vabaq_u16(v88, v91, v63[3]);
        v64 = (v64 + a7);
        v63 = (v63 + v56);
        v62 = (v62 + v58);
      }

      while (v61 != 512);
      v53 += 512;
      v21 = vpadalq_u16(v21, v65);
      v18 = vpadalq_u16(v18, v66);
      v54 = (v54 + v11);
      v55 = (v55 + v9);
      v57 += v10;
      v59 -= 4;
    }

    while (v59);
  }

  return vaddvq_s32(vaddq_s32(v18, v21));
}

uint64_t sub_277AAC278(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 4;
    v14 = (v8 + 64);
    v15 = 2 * a2;
    v16 = 2 * a3 + 64;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 64;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    do
    {
      v22 = 0;
      v23 = v16;
      v24 = v14;
      v25 = v13;
      v26 = 0uLL;
      v27 = 0uLL;
      do
      {
        v28 = v25[-4];
        v29 = v25[-3];
        v30 = vmovl_u8(v28);
        v31 = vsubw_u8(v20, v28);
        v32 = vabaq_u16(v26, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-8], *v31.i8), *(v12 + v22), *v30.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-8].i8, v31), *(v12 + v22), v30), 6uLL), v24[-4]);
        v33 = vmovl_u8(v29);
        v34 = vsubw_u8(v20, v29);
        v35 = vabaq_u16(v32, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-6], *v34.i8), *(v12 + v22 + 16), *v33.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-6].i8, v34), *(v12 + v22 + 16), v33), 6uLL), v24[-3]);
        *v33.i8 = v25[-2];
        *v34.i8 = v25[-1];
        v36 = vmovl_u8(*v33.i8);
        v37 = vsubw_u8(v20, *v33.i8);
        v38 = vabaq_u16(v35, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-4], *v37.i8), *(v12 + v22 + 32), *v36.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-4].i8, v37), *(v12 + v22 + 32), v36), 6uLL), v24[-2]);
        v39 = vmovl_u8(*v34.i8);
        v40 = vsubw_u8(v20, *v34.i8);
        v26 = vabaq_u16(v38, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-2], *v40.i8), *(v12 + v22 + 48), *v39.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-2].i8, v40), *(v12 + v22 + 48), v39), 6uLL), v24[-1]);
        *v40.i8 = v25[1];
        v41 = vmovl_u8(*v25);
        v42 = vsubw_u8(v20, *v25);
        v43 = vabaq_u16(v27, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v23, *v42.i8), *(v12 + v22 + 64), *v41.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23->i8, v42), *(v12 + v22 + 64), v41), 6uLL), *v24);
        v44 = vmovl_u8(*v40.i8);
        v45 = vsubw_u8(v20, *v40.i8);
        v46 = vabaq_u16(v43, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[2], *v45.i8), *(v12 + v22 + 80), *v44.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[2].i8, v45), *(v12 + v22 + 80), v44), 6uLL), v24[1]);
        *v44.i8 = v25[2];
        *v45.i8 = v25[3];
        v47 = vmovl_u8(*v44.i8);
        v48 = vsubw_u8(v20, *v44.i8);
        v49 = vabaq_u16(v46, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[4], *v48.i8), *(v12 + v22 + 96), *v47.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[4].i8, v48), *(v12 + v22 + 96), v47), 6uLL), v24[2]);
        v50 = vmovl_u8(*v45.i8);
        v51 = vsubw_u8(v20, *v45.i8);
        v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[6], *v51.i8), *(v12 + v22 + 112), *v50.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[6].i8, v51), *(v12 + v22 + 112), v50), 6uLL);
        v22 += 128;
        v27 = vabaq_u16(v49, v52, v24[3]);
        v25 = (v25 + a7);
        v24 = (v24 + v15);
        v23 = (v23 + v17);
      }

      while (v22 != 512);
      v12 += 512;
      v21 = vpadalq_u16(v21, v26);
      v18 = vpadalq_u16(v18, v27);
      v13 = (v13 + v11);
      v14 = (v14 + v9);
      v16 += v10;
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v53 = 2 * a5;
    v54 = a6 + 4;
    v55 = (v8 + 64);
    v56 = 2 * a2;
    v57 = 2 * a3 + 64;
    v58 = 2 * a4;
    v18 = 0uLL;
    v59 = 64;
    v60.i64[0] = 0x40004000400040;
    v60.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    do
    {
      v61 = 0;
      v62 = v57;
      v63 = v55;
      v64 = v54;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v67 = v64[-4];
        v68 = v64[-3];
        v69 = vmovl_u8(v67);
        v70 = vsubw_u8(v60, v67);
        v71 = vabaq_u16(v65, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61), *v70.i8), v62[-8], *v69.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61), v70), *v62[-8].i8, v69), 6uLL), v63[-4]);
        v72 = vmovl_u8(v68);
        v73 = vsubw_u8(v60, v68);
        v74 = vabaq_u16(v71, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 16), *v73.i8), v62[-6], *v72.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 16), v73), *v62[-6].i8, v72), 6uLL), v63[-3]);
        *v72.i8 = v64[-2];
        *v73.i8 = v64[-1];
        v75 = vmovl_u8(*v72.i8);
        v76 = vsubw_u8(v60, *v72.i8);
        v77 = vabaq_u16(v74, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 32), *v76.i8), v62[-4], *v75.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 32), v76), *v62[-4].i8, v75), 6uLL), v63[-2]);
        v78 = vmovl_u8(*v73.i8);
        v79 = vsubw_u8(v60, *v73.i8);
        v65 = vabaq_u16(v77, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 48), *v79.i8), v62[-2], *v78.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 48), v79), *v62[-2].i8, v78), 6uLL), v63[-1]);
        *v79.i8 = v64[1];
        v80 = vmovl_u8(*v64);
        v81 = vsubw_u8(v60, *v64);
        v82 = vabaq_u16(v66, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 64), *v81.i8), *v62, *v80.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 64), v81), *v62->i8, v80), 6uLL), *v63);
        v83 = vmovl_u8(*v79.i8);
        v84 = vsubw_u8(v60, *v79.i8);
        v85 = vabaq_u16(v82, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 80), *v84.i8), v62[2], *v83.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 80), v84), *v62[2].i8, v83), 6uLL), v63[1]);
        *v83.i8 = v64[2];
        *v84.i8 = v64[3];
        v86 = vmovl_u8(*v83.i8);
        v87 = vsubw_u8(v60, *v83.i8);
        v88 = vabaq_u16(v85, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 96), *v87.i8), v62[4], *v86.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 96), v87), *v62[4].i8, v86), 6uLL), v63[2]);
        v89 = vmovl_u8(*v84.i8);
        v90 = vsubw_u8(v60, *v84.i8);
        v91 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 112), *v90.i8), v62[6], *v89.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 112), v90), *v62[6].i8, v89), 6uLL);
        v61 += 128;
        v66 = vabaq_u16(v88, v91, v63[3]);
        v64 = (v64 + a7);
        v63 = (v63 + v56);
        v62 = (v62 + v58);
      }

      while (v61 != 512);
      v53 += 512;
      v21 = vpadalq_u16(v21, v65);
      v18 = vpadalq_u16(v18, v66);
      v54 = (v54 + v11);
      v55 = (v55 + v9);
      v57 += v10;
      v59 -= 4;
    }

    while (v59);
  }

  return vaddvq_s32(vaddq_s32(v18, v21));
}

uint64_t sub_277AAC66C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 4;
    v14 = (v8 + 64);
    v15 = 2 * a2;
    v16 = 2 * a3 + 64;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 128;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    do
    {
      v22 = 0;
      v23 = v16;
      v24 = v14;
      v25 = v13;
      v26 = 0uLL;
      v27 = 0uLL;
      do
      {
        v28 = v25[-4];
        v29 = v25[-3];
        v30 = vmovl_u8(v28);
        v31 = vsubw_u8(v20, v28);
        v32 = vabaq_u16(v26, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-8], *v31.i8), *(v12 + v22), *v30.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-8].i8, v31), *(v12 + v22), v30), 6uLL), v24[-4]);
        v33 = vmovl_u8(v29);
        v34 = vsubw_u8(v20, v29);
        v35 = vabaq_u16(v32, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-6], *v34.i8), *(v12 + v22 + 16), *v33.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-6].i8, v34), *(v12 + v22 + 16), v33), 6uLL), v24[-3]);
        *v33.i8 = v25[-2];
        *v34.i8 = v25[-1];
        v36 = vmovl_u8(*v33.i8);
        v37 = vsubw_u8(v20, *v33.i8);
        v38 = vabaq_u16(v35, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-4], *v37.i8), *(v12 + v22 + 32), *v36.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-4].i8, v37), *(v12 + v22 + 32), v36), 6uLL), v24[-2]);
        v39 = vmovl_u8(*v34.i8);
        v40 = vsubw_u8(v20, *v34.i8);
        v26 = vabaq_u16(v38, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-2], *v40.i8), *(v12 + v22 + 48), *v39.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-2].i8, v40), *(v12 + v22 + 48), v39), 6uLL), v24[-1]);
        *v40.i8 = v25[1];
        v41 = vmovl_u8(*v25);
        v42 = vsubw_u8(v20, *v25);
        v43 = vabaq_u16(v27, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v23, *v42.i8), *(v12 + v22 + 64), *v41.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23->i8, v42), *(v12 + v22 + 64), v41), 6uLL), *v24);
        v44 = vmovl_u8(*v40.i8);
        v45 = vsubw_u8(v20, *v40.i8);
        v46 = vabaq_u16(v43, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[2], *v45.i8), *(v12 + v22 + 80), *v44.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[2].i8, v45), *(v12 + v22 + 80), v44), 6uLL), v24[1]);
        *v44.i8 = v25[2];
        *v45.i8 = v25[3];
        v47 = vmovl_u8(*v44.i8);
        v48 = vsubw_u8(v20, *v44.i8);
        v49 = vabaq_u16(v46, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[4], *v48.i8), *(v12 + v22 + 96), *v47.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[4].i8, v48), *(v12 + v22 + 96), v47), 6uLL), v24[2]);
        v50 = vmovl_u8(*v45.i8);
        v51 = vsubw_u8(v20, *v45.i8);
        v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[6], *v51.i8), *(v12 + v22 + 112), *v50.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[6].i8, v51), *(v12 + v22 + 112), v50), 6uLL);
        v22 += 128;
        v27 = vabaq_u16(v49, v52, v24[3]);
        v25 = (v25 + a7);
        v24 = (v24 + v15);
        v23 = (v23 + v17);
      }

      while (v22 != 512);
      v12 += 512;
      v21 = vpadalq_u16(v21, v26);
      v18 = vpadalq_u16(v18, v27);
      v13 = (v13 + v11);
      v14 = (v14 + v9);
      v16 += v10;
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v53 = 2 * a5;
    v54 = a6 + 4;
    v55 = (v8 + 64);
    v56 = 2 * a2;
    v57 = 2 * a3 + 64;
    v58 = 2 * a4;
    v18 = 0uLL;
    v59 = 128;
    v60.i64[0] = 0x40004000400040;
    v60.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    do
    {
      v61 = 0;
      v62 = v57;
      v63 = v55;
      v64 = v54;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v67 = v64[-4];
        v68 = v64[-3];
        v69 = vmovl_u8(v67);
        v70 = vsubw_u8(v60, v67);
        v71 = vabaq_u16(v65, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61), *v70.i8), v62[-8], *v69.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61), v70), *v62[-8].i8, v69), 6uLL), v63[-4]);
        v72 = vmovl_u8(v68);
        v73 = vsubw_u8(v60, v68);
        v74 = vabaq_u16(v71, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 16), *v73.i8), v62[-6], *v72.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 16), v73), *v62[-6].i8, v72), 6uLL), v63[-3]);
        *v72.i8 = v64[-2];
        *v73.i8 = v64[-1];
        v75 = vmovl_u8(*v72.i8);
        v76 = vsubw_u8(v60, *v72.i8);
        v77 = vabaq_u16(v74, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 32), *v76.i8), v62[-4], *v75.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 32), v76), *v62[-4].i8, v75), 6uLL), v63[-2]);
        v78 = vmovl_u8(*v73.i8);
        v79 = vsubw_u8(v60, *v73.i8);
        v65 = vabaq_u16(v77, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 48), *v79.i8), v62[-2], *v78.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 48), v79), *v62[-2].i8, v78), 6uLL), v63[-1]);
        *v79.i8 = v64[1];
        v80 = vmovl_u8(*v64);
        v81 = vsubw_u8(v60, *v64);
        v82 = vabaq_u16(v66, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 64), *v81.i8), *v62, *v80.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 64), v81), *v62->i8, v80), 6uLL), *v63);
        v83 = vmovl_u8(*v79.i8);
        v84 = vsubw_u8(v60, *v79.i8);
        v85 = vabaq_u16(v82, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 80), *v84.i8), v62[2], *v83.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 80), v84), *v62[2].i8, v83), 6uLL), v63[1]);
        *v83.i8 = v64[2];
        *v84.i8 = v64[3];
        v86 = vmovl_u8(*v83.i8);
        v87 = vsubw_u8(v60, *v83.i8);
        v88 = vabaq_u16(v85, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 96), *v87.i8), v62[4], *v86.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 96), v87), *v62[4].i8, v86), 6uLL), v63[2]);
        v89 = vmovl_u8(*v84.i8);
        v90 = vsubw_u8(v60, *v84.i8);
        v91 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 112), *v90.i8), v62[6], *v89.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 112), v90), *v62[6].i8, v89), 6uLL);
        v61 += 128;
        v66 = vabaq_u16(v88, v91, v63[3]);
        v64 = (v64 + a7);
        v63 = (v63 + v56);
        v62 = (v62 + v58);
      }

      while (v61 != 512);
      v53 += 512;
      v21 = vpadalq_u16(v21, v65);
      v18 = vpadalq_u16(v18, v66);
      v54 = (v54 + v11);
      v55 = (v55 + v9);
      v57 += v10;
      v59 -= 4;
    }

    while (v59);
  }

  return vaddvq_s32(vaddq_s32(v18, v21));
}

uint64_t sub_277AACA60(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 8;
    v14 = v8 + 128;
    v15 = 2 * a2;
    v16 = 2 * a3 + 128;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 64;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = 0;
      v25 = v16;
      v26 = v14;
      v27 = v13;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v32 = v27[-8];
        v33 = v27[-7];
        v34 = vmovl_u8(v32);
        v35 = vsubw_u8(v20, v32);
        v36 = vabaq_u16(v28, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 128), *v35.i8), *(v12 + v24), *v34.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 128), v35), *(v12 + v24), v34), 6uLL), v26[-8]);
        v37 = vmovl_u8(v33);
        v38 = vsubw_u8(v20, v33);
        v39 = vabaq_u16(v36, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 112), *v38.i8), *(v12 + v24 + 16), *v37.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 112), v38), *(v12 + v24 + 16), v37), 6uLL), v26[-7]);
        *v37.i8 = v27[-6];
        *v38.i8 = v27[-5];
        v40 = vmovl_u8(*v37.i8);
        v41 = vsubw_u8(v20, *v37.i8);
        v42 = vabaq_u16(v39, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 96), *v41.i8), *(v12 + v24 + 32), *v40.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 96), v41), *(v12 + v24 + 32), v40), 6uLL), v26[-6]);
        v43 = vmovl_u8(*v38.i8);
        v44 = vsubw_u8(v20, *v38.i8);
        v28 = vabaq_u16(v42, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 80), *v44.i8), *(v12 + v24 + 48), *v43.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 80), v44), *(v12 + v24 + 48), v43), 6uLL), v26[-5]);
        *v43.i8 = v27[-4];
        *v44.i8 = v27[-3];
        v45 = vmovl_u8(*v43.i8);
        v46 = vsubw_u8(v20, *v43.i8);
        v47 = vabaq_u16(v29, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 64), *v46.i8), *(v12 + v24 + 64), *v45.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 64), v46), *(v12 + v24 + 64), v45), 6uLL), v26[-4]);
        v48 = vmovl_u8(*v44.i8);
        v49 = vsubw_u8(v20, *v44.i8);
        v50 = vabaq_u16(v47, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 48), *v49.i8), *(v12 + v24 + 80), *v48.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 48), v49), *(v12 + v24 + 80), v48), 6uLL), v26[-3]);
        *v48.i8 = v27[-2];
        *v49.i8 = v27[-1];
        v51 = vmovl_u8(*v48.i8);
        v52 = vsubw_u8(v20, *v48.i8);
        v53 = vabaq_u16(v50, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 32), *v52.i8), *(v12 + v24 + 96), *v51.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 32), v52), *(v12 + v24 + 96), v51), 6uLL), v26[-2]);
        v54 = vmovl_u8(*v49.i8);
        v55 = vsubw_u8(v20, *v49.i8);
        v29 = vabaq_u16(v53, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 16), *v55.i8), *(v12 + v24 + 112), *v54.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 16), v55), *(v12 + v24 + 112), v54), 6uLL), v26[-1]);
        *v55.i8 = v27[1];
        v56 = vmovl_u8(*v27);
        v57 = vsubw_u8(v20, *v27);
        v58 = vabaq_u16(v30, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v25, *v57.i8), *(v12 + v24 + 128), *v56.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v25, v57), *(v12 + v24 + 128), v56), 6uLL), *v26);
        v59 = vmovl_u8(*v55.i8);
        v60 = vsubw_u8(v20, *v55.i8);
        v61 = vabaq_u16(v58, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 16), *v60.i8), *(v12 + v24 + 144), *v59.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 16), v60), *(v12 + v24 + 144), v59), 6uLL), v26[1]);
        *v59.i8 = v27[2];
        *v60.i8 = v27[3];
        v62 = vmovl_u8(*v59.i8);
        v63 = vsubw_u8(v20, *v59.i8);
        v64 = vabaq_u16(v61, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 32), *v63.i8), *(v12 + v24 + 160), *v62.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 32), v63), *(v12 + v24 + 160), v62), 6uLL), v26[2]);
        v65 = vmovl_u8(*v60.i8);
        v66 = vsubw_u8(v20, *v60.i8);
        v30 = vabaq_u16(v64, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 48), *v66.i8), *(v12 + v24 + 176), *v65.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 48), v66), *(v12 + v24 + 176), v65), 6uLL), v26[3]);
        *v65.i8 = v27[4];
        *v66.i8 = v27[5];
        v67 = vmovl_u8(*v65.i8);
        v68 = vsubw_u8(v20, *v65.i8);
        v69 = vabaq_u16(v31, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 64), *v68.i8), *(v12 + v24 + 192), *v67.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 64), v68), *(v12 + v24 + 192), v67), 6uLL), v26[4]);
        v70 = vmovl_u8(*v66.i8);
        v71 = vsubw_u8(v20, *v66.i8);
        v72 = vabaq_u16(v69, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 80), *v71.i8), *(v12 + v24 + 208), *v70.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 80), v71), *(v12 + v24 + 208), v70), 6uLL), v26[5]);
        *v70.i8 = v27[6];
        *v71.i8 = v27[7];
        v73 = vmovl_u8(*v70.i8);
        v74 = vsubw_u8(v20, *v70.i8);
        v75 = *(v25 + 112);
        v76 = *(v12 + v24 + 240);
        v77 = v26[7];
        v78 = vabaq_u16(v72, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 96), *v74.i8), *(v12 + v24 + 224), *v73.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 96), v74), *(v12 + v24 + 224), v73), 6uLL), v26[6]);
        v79 = vmovl_u8(*v71.i8);
        v80 = vsubw_u8(v20, *v71.i8);
        v24 += 256;
        v27 = (v27 + a7);
        v26 = (v26 + v15);
        v25 += v17;
        v31 = vabaq_u16(v78, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v75.i8, *v80.i8), *v76.i8, *v79.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v75, v80), v76, v79), 6uLL), v77);
      }

      while (v24 != 1024);
      v12 += 1024;
      v23 = vpadalq_u16(v23, v28);
      v22 = vpadalq_u16(v22, v29);
      v13 = (v13 + v11);
      v21 = vpadalq_u16(v21, v30);
      v14 += v9;
      v16 += v10;
      v18 = vpadalq_u16(v18, v31);
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v81 = 2 * a5;
    v82 = a6 + 8;
    v83 = v8 + 128;
    v84 = 2 * a2;
    v85 = 2 * a3 + 128;
    v86 = 2 * a4;
    v18 = 0uLL;
    v87 = 64;
    v88.i64[0] = 0x40004000400040;
    v88.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v89 = 0;
      v90 = v85;
      v91 = v83;
      v92 = v82;
      v93 = 0uLL;
      v94 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      do
      {
        v97 = v92[-8];
        v98 = v92[-7];
        v99 = vmovl_u8(v97);
        v100 = vsubw_u8(v88, v97);
        v101 = vabaq_u16(v93, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89), *v100.i8), *(v90 - 128), *v99.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89), v100), *(v90 - 128), v99), 6uLL), v91[-8]);
        v102 = vmovl_u8(v98);
        v103 = vsubw_u8(v88, v98);
        v104 = vabaq_u16(v101, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 16), *v103.i8), *(v90 - 112), *v102.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 16), v103), *(v90 - 112), v102), 6uLL), v91[-7]);
        *v102.i8 = v92[-6];
        *v103.i8 = v92[-5];
        v105 = vmovl_u8(*v102.i8);
        v106 = vsubw_u8(v88, *v102.i8);
        v107 = vabaq_u16(v104, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 32), *v106.i8), *(v90 - 96), *v105.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 32), v106), *(v90 - 96), v105), 6uLL), v91[-6]);
        v108 = vmovl_u8(*v103.i8);
        v109 = vsubw_u8(v88, *v103.i8);
        v93 = vabaq_u16(v107, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 48), *v109.i8), *(v90 - 80), *v108.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 48), v109), *(v90 - 80), v108), 6uLL), v91[-5]);
        *v108.i8 = v92[-4];
        *v109.i8 = v92[-3];
        v110 = vmovl_u8(*v108.i8);
        v111 = vsubw_u8(v88, *v108.i8);
        v112 = vabaq_u16(v94, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 64), *v111.i8), *(v90 - 64), *v110.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 64), v111), *(v90 - 64), v110), 6uLL), v91[-4]);
        v113 = vmovl_u8(*v109.i8);
        v114 = vsubw_u8(v88, *v109.i8);
        v115 = vabaq_u16(v112, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 80), *v114.i8), *(v90 - 48), *v113.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 80), v114), *(v90 - 48), v113), 6uLL), v91[-3]);
        *v113.i8 = v92[-2];
        *v114.i8 = v92[-1];
        v116 = vmovl_u8(*v113.i8);
        v117 = vsubw_u8(v88, *v113.i8);
        v118 = vabaq_u16(v115, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 96), *v117.i8), *(v90 - 32), *v116.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 96), v117), *(v90 - 32), v116), 6uLL), v91[-2]);
        v119 = vmovl_u8(*v114.i8);
        v120 = vsubw_u8(v88, *v114.i8);
        v94 = vabaq_u16(v118, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 112), *v120.i8), *(v90 - 16), *v119.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 112), v120), *(v90 - 16), v119), 6uLL), v91[-1]);
        *v120.i8 = v92[1];
        v121 = vmovl_u8(*v92);
        v122 = vsubw_u8(v88, *v92);
        v123 = vabaq_u16(v95, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 128), *v122.i8), *v90, *v121.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 128), v122), *v90, v121), 6uLL), *v91);
        v124 = vmovl_u8(*v120.i8);
        v125 = vsubw_u8(v88, *v120.i8);
        v126 = vabaq_u16(v123, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 144), *v125.i8), *(v90 + 16), *v124.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 144), v125), *(v90 + 16), v124), 6uLL), v91[1]);
        *v124.i8 = v92[2];
        *v125.i8 = v92[3];
        v127 = vmovl_u8(*v124.i8);
        v128 = vsubw_u8(v88, *v124.i8);
        v129 = vabaq_u16(v126, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 160), *v128.i8), *(v90 + 32), *v127.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 160), v128), *(v90 + 32), v127), 6uLL), v91[2]);
        v130 = vmovl_u8(*v125.i8);
        v131 = vsubw_u8(v88, *v125.i8);
        v95 = vabaq_u16(v129, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 176), *v131.i8), *(v90 + 48), *v130.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 176), v131), *(v90 + 48), v130), 6uLL), v91[3]);
        *v130.i8 = v92[4];
        *v131.i8 = v92[5];
        v132 = vmovl_u8(*v130.i8);
        v133 = vsubw_u8(v88, *v130.i8);
        v134 = vabaq_u16(v96, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 192), *v133.i8), *(v90 + 64), *v132.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 192), v133), *(v90 + 64), v132), 6uLL), v91[4]);
        v135 = vmovl_u8(*v131.i8);
        v136 = vsubw_u8(v88, *v131.i8);
        v137 = vabaq_u16(v134, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 208), *v136.i8), *(v90 + 80), *v135.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 208), v136), *(v90 + 80), v135), 6uLL), v91[5]);
        *v135.i8 = v92[6];
        *v136.i8 = v92[7];
        v138 = vmovl_u8(*v135.i8);
        v139 = vsubw_u8(v88, *v135.i8);
        v140 = *(v81 + v89 + 240);
        v141 = *(v90 + 112);
        v142 = v91[7];
        v143 = vabaq_u16(v137, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 224), *v139.i8), *(v90 + 96), *v138.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 224), v139), *(v90 + 96), v138), 6uLL), v91[6]);
        v144 = vmovl_u8(*v136.i8);
        v145 = vsubw_u8(v88, *v136.i8);
        v89 += 256;
        v92 = (v92 + a7);
        v91 = (v91 + v84);
        v90 += v86;
        v96 = vabaq_u16(v143, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v140.i8, *v145.i8), *v141.i8, *v144.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v140, v145), v141, v144), 6uLL), v142);
      }

      while (v89 != 1024);
      v81 += 1024;
      v23 = vpadalq_u16(v23, v93);
      v22 = vpadalq_u16(v22, v94);
      v82 = (v82 + v11);
      v21 = vpadalq_u16(v21, v95);
      v83 += v9;
      v85 += v10;
      v18 = vpadalq_u16(v18, v96);
      v87 -= 4;
    }

    while (v87);
  }

  return vaddvq_s32(vaddq_s32(vaddq_s32(v22, v23), vaddq_s32(v21, v18)));
}

uint64_t sub_277AAD14C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 8;
    v14 = v8 + 128;
    v15 = 2 * a2;
    v16 = 2 * a3 + 128;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 128;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = 0;
      v25 = v16;
      v26 = v14;
      v27 = v13;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v32 = v27[-8];
        v33 = v27[-7];
        v34 = vmovl_u8(v32);
        v35 = vsubw_u8(v20, v32);
        v36 = vabaq_u16(v28, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 128), *v35.i8), *(v12 + v24), *v34.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 128), v35), *(v12 + v24), v34), 6uLL), v26[-8]);
        v37 = vmovl_u8(v33);
        v38 = vsubw_u8(v20, v33);
        v39 = vabaq_u16(v36, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 112), *v38.i8), *(v12 + v24 + 16), *v37.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 112), v38), *(v12 + v24 + 16), v37), 6uLL), v26[-7]);
        *v37.i8 = v27[-6];
        *v38.i8 = v27[-5];
        v40 = vmovl_u8(*v37.i8);
        v41 = vsubw_u8(v20, *v37.i8);
        v42 = vabaq_u16(v39, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 96), *v41.i8), *(v12 + v24 + 32), *v40.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 96), v41), *(v12 + v24 + 32), v40), 6uLL), v26[-6]);
        v43 = vmovl_u8(*v38.i8);
        v44 = vsubw_u8(v20, *v38.i8);
        v28 = vabaq_u16(v42, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 80), *v44.i8), *(v12 + v24 + 48), *v43.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 80), v44), *(v12 + v24 + 48), v43), 6uLL), v26[-5]);
        *v43.i8 = v27[-4];
        *v44.i8 = v27[-3];
        v45 = vmovl_u8(*v43.i8);
        v46 = vsubw_u8(v20, *v43.i8);
        v47 = vabaq_u16(v29, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 64), *v46.i8), *(v12 + v24 + 64), *v45.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 64), v46), *(v12 + v24 + 64), v45), 6uLL), v26[-4]);
        v48 = vmovl_u8(*v44.i8);
        v49 = vsubw_u8(v20, *v44.i8);
        v50 = vabaq_u16(v47, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 48), *v49.i8), *(v12 + v24 + 80), *v48.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 48), v49), *(v12 + v24 + 80), v48), 6uLL), v26[-3]);
        *v48.i8 = v27[-2];
        *v49.i8 = v27[-1];
        v51 = vmovl_u8(*v48.i8);
        v52 = vsubw_u8(v20, *v48.i8);
        v53 = vabaq_u16(v50, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 32), *v52.i8), *(v12 + v24 + 96), *v51.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 32), v52), *(v12 + v24 + 96), v51), 6uLL), v26[-2]);
        v54 = vmovl_u8(*v49.i8);
        v55 = vsubw_u8(v20, *v49.i8);
        v29 = vabaq_u16(v53, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 - 16), *v55.i8), *(v12 + v24 + 112), *v54.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 - 16), v55), *(v12 + v24 + 112), v54), 6uLL), v26[-1]);
        *v55.i8 = v27[1];
        v56 = vmovl_u8(*v27);
        v57 = vsubw_u8(v20, *v27);
        v58 = vabaq_u16(v30, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v25, *v57.i8), *(v12 + v24 + 128), *v56.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v25, v57), *(v12 + v24 + 128), v56), 6uLL), *v26);
        v59 = vmovl_u8(*v55.i8);
        v60 = vsubw_u8(v20, *v55.i8);
        v61 = vabaq_u16(v58, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 16), *v60.i8), *(v12 + v24 + 144), *v59.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 16), v60), *(v12 + v24 + 144), v59), 6uLL), v26[1]);
        *v59.i8 = v27[2];
        *v60.i8 = v27[3];
        v62 = vmovl_u8(*v59.i8);
        v63 = vsubw_u8(v20, *v59.i8);
        v64 = vabaq_u16(v61, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 32), *v63.i8), *(v12 + v24 + 160), *v62.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 32), v63), *(v12 + v24 + 160), v62), 6uLL), v26[2]);
        v65 = vmovl_u8(*v60.i8);
        v66 = vsubw_u8(v20, *v60.i8);
        v30 = vabaq_u16(v64, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 48), *v66.i8), *(v12 + v24 + 176), *v65.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 48), v66), *(v12 + v24 + 176), v65), 6uLL), v26[3]);
        *v65.i8 = v27[4];
        *v66.i8 = v27[5];
        v67 = vmovl_u8(*v65.i8);
        v68 = vsubw_u8(v20, *v65.i8);
        v69 = vabaq_u16(v31, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 64), *v68.i8), *(v12 + v24 + 192), *v67.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 64), v68), *(v12 + v24 + 192), v67), 6uLL), v26[4]);
        v70 = vmovl_u8(*v66.i8);
        v71 = vsubw_u8(v20, *v66.i8);
        v72 = vabaq_u16(v69, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 80), *v71.i8), *(v12 + v24 + 208), *v70.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 80), v71), *(v12 + v24 + 208), v70), 6uLL), v26[5]);
        *v70.i8 = v27[6];
        *v71.i8 = v27[7];
        v73 = vmovl_u8(*v70.i8);
        v74 = vsubw_u8(v20, *v70.i8);
        v75 = *(v25 + 112);
        v76 = *(v12 + v24 + 240);
        v77 = v26[7];
        v78 = vabaq_u16(v72, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v25 + 96), *v74.i8), *(v12 + v24 + 224), *v73.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v25 + 96), v74), *(v12 + v24 + 224), v73), 6uLL), v26[6]);
        v79 = vmovl_u8(*v71.i8);
        v80 = vsubw_u8(v20, *v71.i8);
        v24 += 256;
        v27 = (v27 + a7);
        v26 = (v26 + v15);
        v25 += v17;
        v31 = vabaq_u16(v78, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v75.i8, *v80.i8), *v76.i8, *v79.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v75, v80), v76, v79), 6uLL), v77);
      }

      while (v24 != 1024);
      v12 += 1024;
      v23 = vpadalq_u16(v23, v28);
      v22 = vpadalq_u16(v22, v29);
      v13 = (v13 + v11);
      v21 = vpadalq_u16(v21, v30);
      v14 += v9;
      v16 += v10;
      v18 = vpadalq_u16(v18, v31);
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v81 = 2 * a5;
    v82 = a6 + 8;
    v83 = v8 + 128;
    v84 = 2 * a2;
    v85 = 2 * a3 + 128;
    v86 = 2 * a4;
    v18 = 0uLL;
    v87 = 128;
    v88.i64[0] = 0x40004000400040;
    v88.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v89 = 0;
      v90 = v85;
      v91 = v83;
      v92 = v82;
      v93 = 0uLL;
      v94 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      do
      {
        v97 = v92[-8];
        v98 = v92[-7];
        v99 = vmovl_u8(v97);
        v100 = vsubw_u8(v88, v97);
        v101 = vabaq_u16(v93, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89), *v100.i8), *(v90 - 128), *v99.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89), v100), *(v90 - 128), v99), 6uLL), v91[-8]);
        v102 = vmovl_u8(v98);
        v103 = vsubw_u8(v88, v98);
        v104 = vabaq_u16(v101, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 16), *v103.i8), *(v90 - 112), *v102.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 16), v103), *(v90 - 112), v102), 6uLL), v91[-7]);
        *v102.i8 = v92[-6];
        *v103.i8 = v92[-5];
        v105 = vmovl_u8(*v102.i8);
        v106 = vsubw_u8(v88, *v102.i8);
        v107 = vabaq_u16(v104, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 32), *v106.i8), *(v90 - 96), *v105.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 32), v106), *(v90 - 96), v105), 6uLL), v91[-6]);
        v108 = vmovl_u8(*v103.i8);
        v109 = vsubw_u8(v88, *v103.i8);
        v93 = vabaq_u16(v107, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 48), *v109.i8), *(v90 - 80), *v108.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 48), v109), *(v90 - 80), v108), 6uLL), v91[-5]);
        *v108.i8 = v92[-4];
        *v109.i8 = v92[-3];
        v110 = vmovl_u8(*v108.i8);
        v111 = vsubw_u8(v88, *v108.i8);
        v112 = vabaq_u16(v94, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 64), *v111.i8), *(v90 - 64), *v110.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 64), v111), *(v90 - 64), v110), 6uLL), v91[-4]);
        v113 = vmovl_u8(*v109.i8);
        v114 = vsubw_u8(v88, *v109.i8);
        v115 = vabaq_u16(v112, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 80), *v114.i8), *(v90 - 48), *v113.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 80), v114), *(v90 - 48), v113), 6uLL), v91[-3]);
        *v113.i8 = v92[-2];
        *v114.i8 = v92[-1];
        v116 = vmovl_u8(*v113.i8);
        v117 = vsubw_u8(v88, *v113.i8);
        v118 = vabaq_u16(v115, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 96), *v117.i8), *(v90 - 32), *v116.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 96), v117), *(v90 - 32), v116), 6uLL), v91[-2]);
        v119 = vmovl_u8(*v114.i8);
        v120 = vsubw_u8(v88, *v114.i8);
        v94 = vabaq_u16(v118, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 112), *v120.i8), *(v90 - 16), *v119.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 112), v120), *(v90 - 16), v119), 6uLL), v91[-1]);
        *v120.i8 = v92[1];
        v121 = vmovl_u8(*v92);
        v122 = vsubw_u8(v88, *v92);
        v123 = vabaq_u16(v95, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 128), *v122.i8), *v90, *v121.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 128), v122), *v90, v121), 6uLL), *v91);
        v124 = vmovl_u8(*v120.i8);
        v125 = vsubw_u8(v88, *v120.i8);
        v126 = vabaq_u16(v123, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 144), *v125.i8), *(v90 + 16), *v124.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 144), v125), *(v90 + 16), v124), 6uLL), v91[1]);
        *v124.i8 = v92[2];
        *v125.i8 = v92[3];
        v127 = vmovl_u8(*v124.i8);
        v128 = vsubw_u8(v88, *v124.i8);
        v129 = vabaq_u16(v126, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 160), *v128.i8), *(v90 + 32), *v127.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 160), v128), *(v90 + 32), v127), 6uLL), v91[2]);
        v130 = vmovl_u8(*v125.i8);
        v131 = vsubw_u8(v88, *v125.i8);
        v95 = vabaq_u16(v129, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 176), *v131.i8), *(v90 + 48), *v130.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 176), v131), *(v90 + 48), v130), 6uLL), v91[3]);
        *v130.i8 = v92[4];
        *v131.i8 = v92[5];
        v132 = vmovl_u8(*v130.i8);
        v133 = vsubw_u8(v88, *v130.i8);
        v134 = vabaq_u16(v96, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 192), *v133.i8), *(v90 + 64), *v132.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 192), v133), *(v90 + 64), v132), 6uLL), v91[4]);
        v135 = vmovl_u8(*v131.i8);
        v136 = vsubw_u8(v88, *v131.i8);
        v137 = vabaq_u16(v134, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 208), *v136.i8), *(v90 + 80), *v135.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 208), v136), *(v90 + 80), v135), 6uLL), v91[5]);
        *v135.i8 = v92[6];
        *v136.i8 = v92[7];
        v138 = vmovl_u8(*v135.i8);
        v139 = vsubw_u8(v88, *v135.i8);
        v140 = *(v81 + v89 + 240);
        v141 = *(v90 + 112);
        v142 = v91[7];
        v143 = vabaq_u16(v137, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v81 + v89 + 224), *v139.i8), *(v90 + 96), *v138.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v81 + v89 + 224), v139), *(v90 + 96), v138), 6uLL), v91[6]);
        v144 = vmovl_u8(*v136.i8);
        v145 = vsubw_u8(v88, *v136.i8);
        v89 += 256;
        v92 = (v92 + a7);
        v91 = (v91 + v84);
        v90 += v86;
        v96 = vabaq_u16(v143, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v140.i8, *v145.i8), *v141.i8, *v144.i8), 6uLL), vmlal_high_u16(vmull_high_u16(v140, v145), v141, v144), 6uLL), v142);
      }

      while (v89 != 1024);
      v81 += 1024;
      v23 = vpadalq_u16(v23, v93);
      v22 = vpadalq_u16(v22, v94);
      v82 = (v82 + v11);
      v21 = vpadalq_u16(v21, v95);
      v83 += v9;
      v85 += v10;
      v18 = vpadalq_u16(v18, v96);
      v87 -= 4;
    }

    while (v87);
  }

  return vaddvq_s32(vaddq_s32(vaddq_s32(v22, v23), vaddq_s32(v21, v18)));
}

uint64_t sub_277AAD838(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 *a6, int a7, int a8, double a9, uint16x8_t a10, uint8x8_t a11)
{
  v11 = (2 * a1);
  v12 = 0;
  if (a8)
  {
    v13 = (2 * a3);
    v14 = 0;
    a10.i32[0] = 4194368;
    a10.i16[2] = 64;
    a10.i16[3] = 64;
    do
    {
      a11.i32[0] = *a6;
      a11 = vrshrn_n_s32(vmlal_u16(vmull_u16(*&vsubw_u8(a10, a11), *v13), *&vmovl_u8(a11), *(2 * a5 + v12)), 6uLL);
      v14 = vaba_u16(v14, a11, *v11);
      a6 = (a6 + a7);
      v13 = (v13 + 2 * a4);
      v12 += 8;
      v11 = (v11 + 2 * a2);
    }

    while (v12 != 128);
  }

  else
  {
    v15 = (2 * a3);
    v14 = 0;
    a10.i32[0] = 4194368;
    a10.i16[2] = 64;
    a10.i16[3] = 64;
    do
    {
      a11.i32[0] = *a6;
      a11 = vrshrn_n_s32(vmlal_u16(vmull_u16(*&vsubw_u8(a10, a11), *(2 * a5 + v12)), *&vmovl_u8(a11), *v15), 6uLL);
      v14 = vaba_u16(v14, a11, *v11);
      a6 = (a6 + a7);
      v12 += 8;
      v15 = (v15 + 2 * a4);
      v11 = (v11 + 2 * a2);
    }

    while (v12 != 128);
  }

  return vaddlv_u16(v14);
}

uint64_t sub_277AAD910(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 32 * a2;
  v10 = 32 * a4;
  v11 = 16 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = 2 * a3;
    v14 = 2 * a4;
    v15 = 0uLL;
    v16 = 32;
    v17.i64[0] = 0x40004000400040;
    v17.i64[1] = 0x40004000400040;
    v18 = 2 * a2;
    do
    {
      v19 = 0;
      v20 = v8;
      v21 = v13;
      v22 = 0uLL;
      v23 = a6;
      do
      {
        v24 = vmovl_u8(*v23);
        v25 = vsubw_u8(v17, *v23);
        v22 = vabaq_u16(v22, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v21, *v25.i8), *(v12 + v19), *v24.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v21->i8, v25), *(v12 + v19), v24), 6uLL), *v20);
        v23 = (v23 + a7);
        v19 += 16;
        v21 = (v21 + v14);
        v20 = (v20 + v18);
      }

      while (v19 != 256);
      v8 += v9;
      v13 += v10;
      v12 += 256;
      a6 = (a6 + v11);
      v15 = vpadalq_u16(v15, v22);
      v16 -= 16;
    }

    while (v16);
  }

  else
  {
    v26 = 2 * a3;
    v27 = 2 * a5;
    v28 = 2 * a4;
    v15 = 0uLL;
    v29 = 32;
    v30.i64[0] = 0x40004000400040;
    v30.i64[1] = 0x40004000400040;
    v31 = 2 * a2;
    do
    {
      v32 = 0;
      v33 = v8;
      v34 = v26;
      v35 = 0uLL;
      v36 = a6;
      do
      {
        v37 = vmovl_u8(*v36);
        v38 = vsubw_u8(v30, *v36);
        v35 = vabaq_u16(v35, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v27 + v32), *v38.i8), *v34, *v37.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v27 + v32), v38), *v34->i8, v37), 6uLL), *v33);
        v36 = (v36 + a7);
        v32 += 16;
        v34 = (v34 + v28);
        v33 = (v33 + v31);
      }

      while (v32 != 256);
      v8 += v9;
      v27 += 256;
      v26 += v10;
      a6 = (a6 + v11);
      v15 = vpadalq_u16(v15, v35);
      v29 -= 16;
    }

    while (v29);
  }

  return vaddvq_s32(v15);
}

uint64_t sub_277AADA70(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 0;
  if (a8)
  {
    v10 = 2 * a5;
    v11 = a6 + 1;
    v12 = (v8 + 16);
    v13 = (2 * a3 + 16);
    v14 = 0uLL;
    v15.i64[0] = 0x40004000400040;
    v15.i64[1] = 0x40004000400040;
    do
    {
      v16 = v11[-1];
      v17 = vmovl_u8(v16);
      v18 = vsubw_u8(v15, v16);
      v19 = vabaq_u16(v14, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v13[-2], *v18.i8), *(v10 + v9), *v17.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v13[-2].i8, v18), *(v10 + v9), v17), 6uLL), v12[-1]);
      v20 = vmovl_u8(*v11);
      v21 = vsubw_u8(v15, *v11);
      v14 = vabaq_u16(v19, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v13, *v21.i8), *(v10 + v9 + 16), *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v13->i8, v21), *(v10 + v9 + 16), v20), 6uLL), *v12);
      v11 = (v11 + a7);
      v9 += 32;
      v12 = (v12 + 2 * a2);
      v13 = (v13 + 2 * a4);
    }

    while (v9 != 128);
  }

  else
  {
    v22 = 2 * a5;
    v23 = a6 + 1;
    v24 = (v8 + 16);
    v25 = (2 * a3 + 16);
    v14 = 0uLL;
    v26.i64[0] = 0x40004000400040;
    v26.i64[1] = 0x40004000400040;
    do
    {
      v27 = v23[-1];
      v28 = vmovl_u8(v27);
      v29 = vsubw_u8(v26, v27);
      v30 = vabaq_u16(v14, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v22 + v9), *v29.i8), v25[-2], *v28.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v22 + v9), v29), *v25[-2].i8, v28), 6uLL), v24[-1]);
      v31 = vmovl_u8(*v23);
      v32 = vsubw_u8(v26, *v23);
      v14 = vabaq_u16(v30, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v22 + v9 + 16), *v32.i8), *v25, *v31.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v22 + v9 + 16), v32), *v25->i8, v31), 6uLL), *v24);
      v23 = (v23 + a7);
      v9 += 32;
      v24 = (v24 + 2 * a2);
      v25 = (v25 + 2 * a4);
    }

    while (v9 != 128);
  }

  return vaddlvq_u16(v14);
}

uint64_t sub_277AADBC8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 16 * a2;
  v10 = 16 * a4;
  v11 = 8 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 1;
    v14 = 2 * a3 + 16;
    v15 = 2 * a4;
    v16 = (v8 + 16);
    v17 = 2 * a2;
    v18 = 0uLL;
    v19 = 64;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    do
    {
      v21 = 0;
      v22 = v16;
      v23 = v14;
      v24 = v13;
      v25 = 0uLL;
      do
      {
        v26 = v24[-1];
        v27 = vmovl_u8(v26);
        v28 = vsubw_u8(v20, v26);
        v29 = vabaq_u16(v25, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-2], *v28.i8), *(v12 + v21), *v27.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-2].i8, v28), *(v12 + v21), v27), 6uLL), v22[-1]);
        v30 = vmovl_u8(*v24);
        v31 = vsubw_u8(v20, *v24);
        v32 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v23, *v31.i8), *(v12 + v21 + 16), *v30.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23->i8, v31), *(v12 + v21 + 16), v30), 6uLL);
        v21 += 32;
        v25 = vabaq_u16(v29, v32, *v22);
        v24 = (v24 + a7);
        v23 = (v23 + v15);
        v22 = (v22 + v17);
      }

      while (v21 != 256);
      v12 += 256;
      v18 = vpadalq_u16(v18, v25);
      v13 = (v13 + v11);
      v14 += v10;
      v16 = (v16 + v9);
      v19 -= 8;
    }

    while (v19);
  }

  else
  {
    v33 = 2 * a5;
    v34 = a6 + 1;
    v35 = 2 * a3 + 16;
    v36 = 2 * a4;
    v37 = (v8 + 16);
    v38 = 2 * a2;
    v18 = 0uLL;
    v39 = 64;
    v40.i64[0] = 0x40004000400040;
    v40.i64[1] = 0x40004000400040;
    do
    {
      v41 = 0;
      v42 = v37;
      v43 = v35;
      v44 = v34;
      v45 = 0uLL;
      do
      {
        v46 = v44[-1];
        v47 = vmovl_u8(v46);
        v48 = vsubw_u8(v40, v46);
        v49 = vabaq_u16(v45, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v33 + v41), *v48.i8), v43[-2], *v47.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v33 + v41), v48), *v43[-2].i8, v47), 6uLL), v42[-1]);
        v50 = vmovl_u8(*v44);
        v51 = vsubw_u8(v40, *v44);
        v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v33 + v41 + 16), *v51.i8), *v43, *v50.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v33 + v41 + 16), v51), *v43->i8, v50), 6uLL);
        v41 += 32;
        v45 = vabaq_u16(v49, v52, *v42);
        v44 = (v44 + a7);
        v43 = (v43 + v36);
        v42 = (v42 + v38);
      }

      while (v41 != 256);
      v33 += 256;
      v18 = vpadalq_u16(v18, v45);
      v34 = (v34 + v11);
      v35 += v10;
      v37 = (v37 + v9);
      v39 -= 8;
    }

    while (v39);
  }

  return vaddvq_s32(v18);
}

uint64_t sub_277AADD90(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 2;
    v14 = (v8 + 32);
    v15 = 2 * a2;
    v16 = 2 * a3 + 32;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 8;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    do
    {
      v21 = 0;
      v22 = v16;
      v23 = v14;
      v24 = v13;
      v25 = 0uLL;
      do
      {
        v26 = v24[-2];
        v27 = v24[-1];
        v28 = vmovl_u8(v26);
        v29 = vsubw_u8(v20, v26);
        v30 = vabaq_u16(v25, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[-4], *v29.i8), *(v12 + v21), *v28.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[-4].i8, v29), *(v12 + v21), v28), 6uLL), v23[-2]);
        v31 = vmovl_u8(v27);
        v32 = vsubw_u8(v20, v27);
        v33 = vabaq_u16(v30, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[-2], *v32.i8), *(v12 + v21 + 16), *v31.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[-2].i8, v32), *(v12 + v21 + 16), v31), 6uLL), v23[-1]);
        *v32.i8 = v24[1];
        v34 = vmovl_u8(*v24);
        v35 = vsubw_u8(v20, *v24);
        v36 = vabaq_u16(v33, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v22, *v35.i8), *(v12 + v21 + 32), *v34.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22->i8, v35), *(v12 + v21 + 32), v34), 6uLL), *v23);
        v37 = vmovl_u8(*v32.i8);
        v38 = vsubw_u8(v20, *v32.i8);
        v39 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v22[2], *v38.i8), *(v12 + v21 + 48), *v37.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v22[2].i8, v38), *(v12 + v21 + 48), v37), 6uLL);
        v21 += 64;
        v25 = vabaq_u16(v36, v39, v23[1]);
        v24 = (v24 + a7);
        v23 = (v23 + v15);
        v22 = (v22 + v17);
      }

      while (v21 != 256);
      v12 += 256;
      v18 = vpadalq_u16(v18, v25);
      v13 = (v13 + v11);
      v14 = (v14 + v9);
      v16 += v10;
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v40 = 2 * a5;
    v41 = a6 + 2;
    v42 = (v8 + 32);
    v43 = 2 * a2;
    v44 = 2 * a3 + 32;
    v45 = 2 * a4;
    v18 = 0uLL;
    v46 = 8;
    v47.i64[0] = 0x40004000400040;
    v47.i64[1] = 0x40004000400040;
    do
    {
      v48 = 0;
      v49 = v44;
      v50 = v42;
      v51 = v41;
      v52 = 0uLL;
      do
      {
        v53 = v51[-2];
        v54 = v51[-1];
        v55 = vmovl_u8(v53);
        v56 = vsubw_u8(v47, v53);
        v57 = vabaq_u16(v52, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48), *v56.i8), v49[-4], *v55.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48), v56), *v49[-4].i8, v55), 6uLL), v50[-2]);
        v58 = vmovl_u8(v54);
        v59 = vsubw_u8(v47, v54);
        v60 = vabaq_u16(v57, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 16), *v59.i8), v49[-2], *v58.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 16), v59), *v49[-2].i8, v58), 6uLL), v50[-1]);
        *v59.i8 = v51[1];
        v61 = vmovl_u8(*v51);
        v62 = vsubw_u8(v47, *v51);
        v63 = vabaq_u16(v60, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 32), *v62.i8), *v49, *v61.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 32), v62), *v49->i8, v61), 6uLL), *v50);
        v64 = vmovl_u8(*v59.i8);
        v65 = vsubw_u8(v47, *v59.i8);
        v66 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v40 + v48 + 48), *v65.i8), v49[2], *v64.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v40 + v48 + 48), v65), *v49[2].i8, v64), 6uLL);
        v48 += 64;
        v52 = vabaq_u16(v63, v66, v50[1]);
        v51 = (v51 + a7);
        v50 = (v50 + v43);
        v49 = (v49 + v45);
      }

      while (v48 != 256);
      v40 += 256;
      v18 = vpadalq_u16(v18, v52);
      v41 = (v41 + v11);
      v42 = (v42 + v9);
      v44 += v10;
      v46 -= 4;
    }

    while (v46);
  }

  return vaddvq_s32(v18);
}

uint64_t sub_277AAE008(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint8x8_t *a6, int a7, int a8)
{
  v8 = 2 * a1;
  v9 = 8 * a2;
  v10 = 8 * a4;
  v11 = 4 * a7;
  if (a8)
  {
    v12 = 2 * a5;
    v13 = a6 + 4;
    v14 = (v8 + 64);
    v15 = 2 * a2;
    v16 = 2 * a3 + 64;
    v17 = 2 * a4;
    v18 = 0uLL;
    v19 = 16;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    do
    {
      v22 = 0;
      v23 = v16;
      v24 = v14;
      v25 = v13;
      v26 = 0uLL;
      v27 = 0uLL;
      do
      {
        v28 = v25[-4];
        v29 = v25[-3];
        v30 = vmovl_u8(v28);
        v31 = vsubw_u8(v20, v28);
        v32 = vabaq_u16(v26, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-8], *v31.i8), *(v12 + v22), *v30.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-8].i8, v31), *(v12 + v22), v30), 6uLL), v24[-4]);
        v33 = vmovl_u8(v29);
        v34 = vsubw_u8(v20, v29);
        v35 = vabaq_u16(v32, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-6], *v34.i8), *(v12 + v22 + 16), *v33.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-6].i8, v34), *(v12 + v22 + 16), v33), 6uLL), v24[-3]);
        *v33.i8 = v25[-2];
        *v34.i8 = v25[-1];
        v36 = vmovl_u8(*v33.i8);
        v37 = vsubw_u8(v20, *v33.i8);
        v38 = vabaq_u16(v35, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-4], *v37.i8), *(v12 + v22 + 32), *v36.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-4].i8, v37), *(v12 + v22 + 32), v36), 6uLL), v24[-2]);
        v39 = vmovl_u8(*v34.i8);
        v40 = vsubw_u8(v20, *v34.i8);
        v26 = vabaq_u16(v38, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[-2], *v40.i8), *(v12 + v22 + 48), *v39.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[-2].i8, v40), *(v12 + v22 + 48), v39), 6uLL), v24[-1]);
        *v40.i8 = v25[1];
        v41 = vmovl_u8(*v25);
        v42 = vsubw_u8(v20, *v25);
        v43 = vabaq_u16(v27, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v23, *v42.i8), *(v12 + v22 + 64), *v41.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23->i8, v42), *(v12 + v22 + 64), v41), 6uLL), *v24);
        v44 = vmovl_u8(*v40.i8);
        v45 = vsubw_u8(v20, *v40.i8);
        v46 = vabaq_u16(v43, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[2], *v45.i8), *(v12 + v22 + 80), *v44.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[2].i8, v45), *(v12 + v22 + 80), v44), 6uLL), v24[1]);
        *v44.i8 = v25[2];
        *v45.i8 = v25[3];
        v47 = vmovl_u8(*v44.i8);
        v48 = vsubw_u8(v20, *v44.i8);
        v49 = vabaq_u16(v46, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[4], *v48.i8), *(v12 + v22 + 96), *v47.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[4].i8, v48), *(v12 + v22 + 96), v47), 6uLL), v24[2]);
        v50 = vmovl_u8(*v45.i8);
        v51 = vsubw_u8(v20, *v45.i8);
        v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v23[6], *v51.i8), *(v12 + v22 + 112), *v50.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v23[6].i8, v51), *(v12 + v22 + 112), v50), 6uLL);
        v22 += 128;
        v27 = vabaq_u16(v49, v52, v24[3]);
        v25 = (v25 + a7);
        v24 = (v24 + v15);
        v23 = (v23 + v17);
      }

      while (v22 != 512);
      v12 += 512;
      v21 = vpadalq_u16(v21, v26);
      v18 = vpadalq_u16(v18, v27);
      v13 = (v13 + v11);
      v14 = (v14 + v9);
      v16 += v10;
      v19 -= 4;
    }

    while (v19);
  }

  else
  {
    v53 = 2 * a5;
    v54 = a6 + 4;
    v55 = (v8 + 64);
    v56 = 2 * a2;
    v57 = 2 * a3 + 64;
    v58 = 2 * a4;
    v18 = 0uLL;
    v59 = 16;
    v60.i64[0] = 0x40004000400040;
    v60.i64[1] = 0x40004000400040;
    v21 = 0uLL;
    do
    {
      v61 = 0;
      v62 = v57;
      v63 = v55;
      v64 = v54;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v67 = v64[-4];
        v68 = v64[-3];
        v69 = vmovl_u8(v67);
        v70 = vsubw_u8(v60, v67);
        v71 = vabaq_u16(v65, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61), *v70.i8), v62[-8], *v69.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61), v70), *v62[-8].i8, v69), 6uLL), v63[-4]);
        v72 = vmovl_u8(v68);
        v73 = vsubw_u8(v60, v68);
        v74 = vabaq_u16(v71, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 16), *v73.i8), v62[-6], *v72.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 16), v73), *v62[-6].i8, v72), 6uLL), v63[-3]);
        *v72.i8 = v64[-2];
        *v73.i8 = v64[-1];
        v75 = vmovl_u8(*v72.i8);
        v76 = vsubw_u8(v60, *v72.i8);
        v77 = vabaq_u16(v74, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 32), *v76.i8), v62[-4], *v75.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 32), v76), *v62[-4].i8, v75), 6uLL), v63[-2]);
        v78 = vmovl_u8(*v73.i8);
        v79 = vsubw_u8(v60, *v73.i8);
        v65 = vabaq_u16(v77, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 48), *v79.i8), v62[-2], *v78.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 48), v79), *v62[-2].i8, v78), 6uLL), v63[-1]);
        *v79.i8 = v64[1];
        v80 = vmovl_u8(*v64);
        v81 = vsubw_u8(v60, *v64);
        v82 = vabaq_u16(v66, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 64), *v81.i8), *v62, *v80.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 64), v81), *v62->i8, v80), 6uLL), *v63);
        v83 = vmovl_u8(*v79.i8);
        v84 = vsubw_u8(v60, *v79.i8);
        v85 = vabaq_u16(v82, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 80), *v84.i8), v62[2], *v83.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 80), v84), *v62[2].i8, v83), 6uLL), v63[1]);
        *v83.i8 = v64[2];
        *v84.i8 = v64[3];
        v86 = vmovl_u8(*v83.i8);
        v87 = vsubw_u8(v60, *v83.i8);
        v88 = vabaq_u16(v85, vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 96), *v87.i8), v62[4], *v86.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 96), v87), *v62[4].i8, v86), 6uLL), v63[2]);
        v89 = vmovl_u8(*v84.i8);
        v90 = vsubw_u8(v60, *v84.i8);
        v91 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v53 + v61 + 112), *v90.i8), v62[6], *v89.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*(v53 + v61 + 112), v90), *v62[6].i8, v89), 6uLL);
        v61 += 128;
        v66 = vabaq_u16(v88, v91, v63[3]);
        v64 = (v64 + a7);
        v63 = (v63 + v56);
        v62 = (v62 + v58);
      }

      while (v61 != 512);
      v53 += 512;
      v21 = vpadalq_u16(v21, v65);
      v18 = vpadalq_u16(v18, v66);
      v54 = (v54 + v11);
      v55 = (v55 + v9);
      v57 += v10;
      v59 -= 4;
    }

    while (v59);
  }

  return vaddvq_s32(vaddq_s32(v18, v21));
}

int16x8_t sub_277AAE3FC(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 593];
  v4 = vld1q_dup_s16(v3);
  v5 = *(a1 + 272);
  v6 = &dword_277C42240[64 * a3 - 623];
  v7 = vld1q_dup_s16(v6);
  v717 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v5.i8, *v4.i8), 0xCuLL), vmull_high_s16(v5, v4), 0xCuLL);
  v710 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v5.i8, *v7.i8), 0xCuLL), vmull_high_s16(v5, v7), 0xCuLL);
  v8 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 591]));
  v9 = *(a1 + 240);
  v10 = &dword_277C42240[64 * a3 - 625];
  v11 = vld1q_dup_s16(v10);
  v721 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v9.i8, *v8.i8), 0xCuLL), vmull_high_s16(v9, v8), 0xCuLL);
  v713 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v9.i8, *v11.i8), 0xCuLL), vmull_high_s16(v9, v11), 0xCuLL);
  v12 = &dword_277C42240[64 * a3 - 585];
  v13 = vld1q_dup_s16(v12);
  v14 = *(a1 + 144);
  v15 = &dword_277C42240[64 * a3 - 631];
  v16 = vld1q_dup_s16(v15);
  LODWORD(v15) = LOWORD(dword_277C42240[64 * a3 - 636]);
  v17 = LOWORD(dword_277C42240[64 * a3 - 580]);
  v18 = LOWORD(dword_277C42240[64 * a3 - 604]);
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v14.i8, *v13.i8), 0xCuLL), vmull_high_s16(v14, v13), 0xCuLL);
  v20 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v14.i8, *v16.i8), 0xCuLL), vmull_high_s16(v14, v16), 0xCuLL);
  v21 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 599]));
  v22 = *(a1 + 368);
  v23 = &dword_277C42240[64 * a3 - 617];
  v24 = vld1q_dup_s16(v23);
  v25 = LOWORD(dword_277C42240[64 * a3 - 612]);
  LODWORD(v23) = LOWORD(dword_277C42240[64 * a3 - 620]);
  v26 = LOWORD(dword_277C42240[64 * a3 - 596]);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v22.i8, *v21.i8), 0xCuLL), vmull_high_s16(v22, v21), 0xCuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v22.i8, *v24.i8), 0xCuLL), vmull_high_s16(v22, v24), 0xCuLL);
  v29 = *(a1 + 400);
  v30 = &dword_277C42240[64 * a3 - 601];
  v31 = vld1q_dup_s16(v30);
  v32 = &dword_277C42240[64 * a3 - 615];
  v33 = vld1q_dup_s16(v32);
  v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v29.i8, *v31.i8), 0xCuLL), vmull_high_s16(v29, v31), 0xCuLL);
  v35 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v29.i8, *v33.i8), 0xCuLL), vmull_high_s16(v29, v33), 0xCuLL);
  v36 = *(a1 + 112);
  v37 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 583]));
  v38 = &dword_277C42240[64 * a3 - 633];
  v39 = vmull_s16(*v36.i8, *v37.i8);
  v40 = vmull_high_s16(v36, v37);
  v41 = vld1q_dup_s16(v38);
  v42 = &dword_277C42240[64 * a3 - 597];
  v43 = vld1q_dup_s16(v42);
  v44 = &dword_277C42240[64 * a3 - 619];
  v45 = vld1q_dup_s16(v44);
  v46 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 587]));
  v47 = &dword_277C42240[64 * a3 - 629];
  v48 = vld1q_dup_s16(v47);
  v49 = vmull_s16(*v36.i8, *v41.i8);
  v50 = vmull_high_s16(v36, v41);
  v51 = vrshrn_n_s32(v39, 0xCuLL);
  v52 = vdupq_n_s16(-v17);
  v53 = vdupq_n_s16(-v15);
  v54 = vrshrn_high_n_s32(v51, v40, 0xCuLL);
  v55 = vrshrn_high_n_s32(vrshrn_n_s32(v49, 0xCuLL), v50, 0xCuLL);
  v56 = *(a1 + 336);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v56.i8, *v43.i8), 0xCuLL), vmull_high_s16(v56, v43), 0xCuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v56.i8, *v45.i8), 0xCuLL), vmull_high_s16(v56, v45), 0xCuLL);
  v59 = *(a1 + 176);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v59.i8, *v46.i8), 0xCuLL), vmull_high_s16(v59, v46), 0xCuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v59.i8, *v48.i8), 0xCuLL), vmull_high_s16(v59, v48), 0xCuLL);
  v62 = vqsubq_s16(v721, v717);
  v63 = vqsubq_s16(v19, v27);
  v64 = vqsubq_s16(v54, v34);
  v65 = vqsubq_s16(v55, v35);
  v66 = vqsubq_s16(v20, v28);
  v67 = vqsubq_s16(v713, v710);
  v735 = vmlal_s16(vmull_s16(*v67.i8, *v53.i8), *v62.i8, *v52.i8);
  v732 = vmlal_high_s16(vmull_high_s16(v67, v53), v62, v52);
  v728 = vmlsl_s16(vmull_s16(*v62.i8, *v53.i8), *v67.i8, *v52.i8);
  v725 = vmlsl_high_s16(vmull_high_s16(v62, v53), v67, v52);
  v68 = vdupq_n_s16(v18);
  v707 = vdupq_n_s16(v25);
  v69 = vmlal_s16(vmull_s16(*v63.i8, *v707.i8), *v66.i8, *v68.i8);
  v70 = vmlal_high_s16(vmull_high_s16(v63, v707), v66, v68);
  v71 = vmlsl_s16(vmull_s16(*v66.i8, *v707.i8), *v63.i8, *v68.i8);
  v72 = vmlsl_high_s16(vmull_high_s16(v66, v707), v63, v68);
  v73 = vdupq_n_s16(-v25);
  v705 = vdupq_n_s16(-v18);
  v74 = vmlal_s16(vmull_s16(*v65.i8, *v705.i8), *v64.i8, *v73.i8);
  v75 = vmlal_high_s16(vmull_high_s16(v65, v705), v64, v73);
  v76 = vmlsl_s16(vmull_s16(*v64.i8, *v705.i8), *v65.i8, *v73.i8);
  v77 = vmlsl_high_s16(vmull_high_s16(v64, v705), v65, v73);
  v78 = vqsubq_s16(v60, v57);
  v79 = vqsubq_s16(v61, v58);
  v80 = vdupq_n_s16(-v26);
  v81 = vdupq_n_s16(-v23);
  v630 = vmlal_s16(vmull_s16(*v79.i8, *v81.i8), *v78.i8, *v80.i8);
  v82 = vmull_s16(*v78.i8, *v81.i8);
  v83 = vmull_high_s16(v78, v81);
  v84 = vmlal_high_s16(vmull_high_s16(v79, v81), v78, v80);
  v602 = vmlsl_s16(v82, *v79.i8, *v80.i8);
  v85 = vmlsl_high_s16(v83, v79, v80);
  v86 = &dword_277C42240[64 * a3 - 589];
  v87 = &dword_277C42240[64 * a3 - 627];
  v88 = *(a1 + 208);
  v89 = vld1q_dup_s16(v86);
  v90 = vld1q_dup_s16(v87);
  v626 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v88.i8, *v89.i8), 0xCuLL), vmull_high_s16(v88, v89), 0xCuLL);
  v742 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v88.i8, *v90.i8), 0xCuLL), vmull_high_s16(v88, v90), 0xCuLL);
  v91 = &dword_277C42240[64 * a3 - 621];
  v92 = *(a1 + 304);
  v93 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 595]));
  v94 = vld1q_dup_s16(v91);
  v738 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v92.i8, *v93.i8), 0xCuLL), vmull_high_s16(v92, v93), 0xCuLL);
  v746 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v92.i8, *v94.i8), 0xCuLL), vmull_high_s16(v92, v94), 0xCuLL);
  LODWORD(v86) = LOWORD(dword_277C42240[64 * a3 - 588]);
  LODWORD(v91) = LOWORD(dword_277C42240[64 * a3 - 628]);
  v95 = vqsubq_s16(v626, v738);
  v96 = vqsubq_s16(v742, v746);
  v753 = vdupq_n_s16(v91);
  v97 = vdupq_n_s16(v86);
  v622 = vmlal_s16(vmull_s16(*v95.i8, *v753.i8), *v96.i8, *v97.i8);
  v618 = vmlal_high_s16(vmull_high_s16(v95, v753), v96, v97);
  v614 = vmlsl_s16(vmull_s16(*v96.i8, *v753.i8), *v95.i8, *v97.i8);
  v611 = vmlsl_high_s16(vmull_high_s16(v96, v753), v95, v97);
  v98 = &dword_277C42240[64 * a3 - 605];
  v99 = &dword_277C42240[64 * a3 - 611];
  v100 = *(a1 + 464);
  v101 = vld1q_dup_s16(v98);
  v102 = vld1q_dup_s16(v99);
  v103 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v100.i8, *v101.i8), 0xCuLL), vmull_high_s16(v100, v101), 0xCuLL);
  v605 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v100.i8, *v102.i8), 0xCuLL), vmull_high_s16(v100, v102), 0xCuLL);
  v104 = &dword_277C42240[64 * a3 - 637];
  v105 = *(a1 + 48);
  v106 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 579]));
  v107 = vld1q_dup_s16(v104);
  v608 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v105.i8, *v106.i8), 0xCuLL), vmull_high_s16(v105, v106), 0xCuLL);
  v108 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v105.i8, *v107.i8), 0xCuLL), vmull_high_s16(v105, v107), 0xCuLL);
  v109 = vqsubq_s16(v608, v103);
  v749 = vdupq_n_s16(-v86);
  v110 = vqsubq_s16(v108, v605);
  v111 = vdupq_n_s16(-v91);
  v599 = vmlal_s16(vmull_s16(*v110.i8, *v749.i8), *v109.i8, *v111.i8);
  v595 = vmlal_high_s16(vmull_high_s16(v110, v749), v109, v111);
  v587 = vmlsl_high_s16(vmull_high_s16(v109, v749), v110, v111);
  v591 = vmlsl_s16(vmull_s16(*v109.i8, *v749.i8), *v110.i8, *v111.i8);
  v112 = &dword_277C42240[64 * a3 - 594];
  v113 = &dword_277C42240[64 * a3 - 622];
  v114 = *(a1 + 288);
  v115 = vld1q_dup_s16(v112);
  v116 = vld1q_dup_s16(v113);
  v700 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v114.i8, *v115.i8), 0xCuLL), vmull_high_s16(v114, v115), 0xCuLL);
  v694 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v114.i8, *v116.i8), 0xCuLL), vmull_high_s16(v114, v116), 0xCuLL);
  v117 = &dword_277C42240[64 * a3 - 626];
  v118 = *(a1 + 224);
  v119 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 590]));
  v120 = vld1q_dup_s16(v117);
  v702 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v118.i8, *v119.i8), 0xCuLL), vmull_high_s16(v118, v119), 0xCuLL);
  v697 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v118.i8, *v120.i8), 0xCuLL), vmull_high_s16(v118, v120), 0xCuLL);
  v676 = vqaddq_s16(v19, v27);
  v679 = vqaddq_s16(v54, v34);
  v670 = vqaddq_s16(v55, v35);
  v673 = vqaddq_s16(v20, v28);
  v639 = vrshrn_high_n_s32(vrshrn_n_s32(v69, 0xCuLL), v70, 0xCuLL);
  v634 = vrshrn_high_n_s32(vrshrn_n_s32(v71, 0xCuLL), v72, 0xCuLL);
  v637 = vrshrn_high_n_s32(vrshrn_n_s32(v74, 0xCuLL), v75, 0xCuLL);
  v642 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xCuLL), v77, 0xCuLL);
  LODWORD(v112) = LOWORD(dword_277C42240[64 * a3 - 632]);
  LODWORD(v117) = LOWORD(dword_277C42240[64 * a3 - 584]);
  v121 = vqsubq_s16(v702, v700);
  v122 = vqsubq_s16(v697, v694);
  v123 = vdupq_n_s16(-v117);
  v124 = vdupq_n_s16(-v112);
  v691 = vmlal_s16(vmull_s16(*v122.i8, *v124.i8), *v121.i8, *v123.i8);
  v688 = vmlal_high_s16(vmull_high_s16(v122, v124), v121, v123);
  v684 = vmlsl_s16(vmull_s16(*v121.i8, *v124.i8), *v122.i8, *v123.i8);
  v681 = vmlsl_high_s16(vmull_high_s16(v121, v124), v122, v123);
  v125 = vqsubq_s16(v679, v676);
  v126 = vqsubq_s16(v670, v673);
  v667 = vmlal_s16(vmull_s16(*v126.i8, *v124.i8), *v125.i8, *v123.i8);
  v663 = vmlal_high_s16(vmull_high_s16(v126, v124), v125, v123);
  v660 = vmlsl_s16(vmull_s16(*v125.i8, *v124.i8), *v126.i8, *v123.i8);
  v657 = vmlsl_high_s16(vmull_high_s16(v125, v124), v126, v123);
  v127 = vqsubq_s16(v637, v634);
  v128 = vqsubq_s16(v642, v639);
  v654 = vmlal_s16(vmull_s16(*v128.i8, *v124.i8), *v127.i8, *v123.i8);
  v651 = vmlal_high_s16(vmull_high_s16(v128, v124), v127, v123);
  v648 = vmlsl_s16(vmull_s16(*v127.i8, *v124.i8), *v128.i8, *v123.i8);
  v645 = vmlsl_high_s16(vmull_high_s16(v127, v124), v128, v123);
  v129 = &dword_277C42240[64 * a3 - 581];
  v130 = &dword_277C42240[64 * a3 - 635];
  v131 = vld1q_dup_s16(v129);
  v132 = *(a1 + 80);
  v133 = vld1q_dup_s16(v130);
  v134 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v132.i8, *v131.i8), 0xCuLL), vmull_high_s16(v132, v131), 0xCuLL);
  v135 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v132.i8, *v133.i8), 0xCuLL), vmull_high_s16(v132, v133), 0xCuLL);
  v136 = &dword_277C42240[64 * a3 - 613];
  v137 = *(a1 + 432);
  v138 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 603]));
  v139 = vld1q_dup_s16(v136);
  v140 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v137.i8, *v138.i8), 0xCuLL), vmull_high_s16(v137, v138), 0xCuLL);
  v141 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v137.i8, *v139.i8), 0xCuLL), vmull_high_s16(v137, v139), 0xCuLL);
  v142 = &dword_277C42240[64 * a3 - 586];
  v143 = &dword_277C42240[64 * a3 - 630];
  v144 = *(a1 + 160);
  v145 = vld1q_dup_s16(v142);
  v146 = vld1q_dup_s16(v143);
  v543 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v144.i8, *v145.i8), 0xCuLL), vmull_high_s16(v144, v145), 0xCuLL);
  v560 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v144.i8, *v146.i8), 0xCuLL), vmull_high_s16(v144, v146), 0xCuLL);
  v147 = &dword_277C42240[64 * a3 - 618];
  v148 = *(a1 + 352);
  v149 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 598]));
  v150 = vld1q_dup_s16(v147);
  v547 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v148.i8, *v149.i8), 0xCuLL), vmull_high_s16(v148, v149), 0xCuLL);
  v563 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v148.i8, *v150.i8), 0xCuLL), vmull_high_s16(v148, v150), 0xCuLL);
  v151 = vqsubq_s16(v134, v140);
  v497 = vqaddq_s16(v134, v140);
  v501 = vqaddq_s16(v60, v57);
  v152 = vqsubq_s16(v135, v141);
  v505 = vqaddq_s16(v61, v58);
  v509 = vqaddq_s16(v135, v141);
  v153 = vdupq_n_s16(v26);
  v154 = vdupq_n_s16(v23);
  v570 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v151.i8, *v153.i8), *v152.i8, *v154.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v151, v153), v152, v154), 0xCuLL);
  v550 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v152.i8, *v153.i8), *v151.i8, *v154.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v152, v153), v151, v154), 0xCuLL);
  v553 = vrshrn_high_n_s32(vrshrn_n_s32(v630, 0xCuLL), v84, 0xCuLL);
  v574 = vrshrn_high_n_s32(vrshrn_n_s32(v602, 0xCuLL), v85, 0xCuLL);
  LODWORD(v23) = LOWORD(dword_277C42240[64 * a3 - 600]);
  v155 = LOWORD(dword_277C42240[64 * a3 - 616]);
  v156 = vqsubq_s16(v543, v547);
  v157 = vqsubq_s16(v560, v563);
  v158 = vdupq_n_s16(v155);
  v159 = vdupq_n_s16(v23);
  v539 = vmlal_s16(vmull_s16(*v156.i8, *v158.i8), *v157.i8, *v159.i8);
  v535 = vmlal_high_s16(vmull_high_s16(v156, v158), v157, v159);
  v631 = v158;
  v528 = vmlsl_high_s16(vmull_high_s16(v157, v158), v156, v159);
  v531 = vmlsl_s16(vmull_s16(*v157.i8, *v158.i8), *v156.i8, *v159.i8);
  v160 = vqsubq_s16(v550, v553);
  v161 = vqsubq_s16(v570, v574);
  v581 = vmlal_s16(vmull_s16(*v160.i8, *v158.i8), *v161.i8, *v159.i8);
  v577 = vmlal_high_s16(vmull_high_s16(v160, v158), v161, v159);
  v567 = vmlsl_s16(vmull_s16(*v161.i8, *v158.i8), *v160.i8, *v159.i8);
  v557 = vmlsl_high_s16(vmull_high_s16(v161, v158), v160, v159);
  v162 = vqsubq_s16(v497, v501);
  v163 = vqsubq_s16(v509, v505);
  v524 = vmlal_s16(vmull_s16(*v162.i8, *v158.i8), *v163.i8, *v159.i8);
  v520 = vmlal_high_s16(vmull_high_s16(v162, v158), v163, v159);
  v513 = vmlsl_high_s16(vmull_high_s16(v163, v158), v162, v159);
  v516 = vmlsl_s16(vmull_s16(*v163.i8, *v158.i8), *v162.i8, *v159.i8);
  v164 = &dword_277C42240[64 * a3 - 602];
  v165 = &dword_277C42240[64 * a3 - 614];
  v166 = *(a1 + 416);
  v167 = vld1q_dup_s16(v164);
  v168 = vld1q_dup_s16(v165);
  v169 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v166.i8, *v167.i8), 0xCuLL), vmull_high_s16(v166, v167), 0xCuLL);
  v170 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v166.i8, *v168.i8), 0xCuLL), vmull_high_s16(v166, v168), 0xCuLL);
  v171 = &dword_277C42240[64 * a3 - 634];
  v172 = *(a1 + 96);
  v173 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 582]));
  v174 = vld1q_dup_s16(v171);
  v175 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v172.i8, *v173.i8), 0xCuLL), vmull_high_s16(v172, v173), 0xCuLL);
  v176 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v172.i8, *v174.i8), 0xCuLL), vmull_high_s16(v172, v174), 0xCuLL);
  v177 = vqaddq_s16(v626, v738);
  v178 = vqaddq_s16(v608, v103);
  v179 = vqaddq_s16(v108, v605);
  v180 = vqaddq_s16(v742, v746);
  v181 = vrshrn_high_n_s32(vrshrn_n_s32(v622, 0xCuLL), v618, 0xCuLL);
  v182 = vrshrn_high_n_s32(vrshrn_n_s32(v614, 0xCuLL), v611, 0xCuLL);
  v183 = vrshrn_high_n_s32(vrshrn_n_s32(v599, 0xCuLL), v595, 0xCuLL);
  v184 = vrshrn_high_n_s32(vrshrn_n_s32(v591, 0xCuLL), v587, 0xCuLL);
  v185 = vqsubq_s16(v175, v169);
  v186 = vdupq_n_s16(-v23);
  v187 = vqsubq_s16(v176, v170);
  v188 = vdupq_n_s16(-v155);
  v189 = vmlal_s16(vmull_s16(*v187.i8, *v186.i8), *v185.i8, *v188.i8);
  v190 = vmlal_high_s16(vmull_high_s16(v187, v186), v185, v188);
  v191 = v186;
  v627 = v186;
  v192 = vmlsl_s16(vmull_s16(*v185.i8, *v186.i8), *v187.i8, *v188.i8);
  v193 = vmlsl_high_s16(vmull_high_s16(v185, v186), v187, v188);
  v194 = vqsubq_s16(v178, v177);
  v195 = vqsubq_s16(v179, v180);
  v196 = vmlal_s16(vmull_s16(*v195.i8, *v186.i8), *v194.i8, *v188.i8);
  v197 = vmlal_high_s16(vmull_high_s16(v195, v186), v194, v188);
  v198 = vmlsl_s16(vmull_s16(*v194.i8, *v186.i8), *v195.i8, *v188.i8);
  v199 = vmlsl_high_s16(vmull_high_s16(v194, v186), v195, v188);
  v200 = vqsubq_s16(v183, v182);
  v201 = vqsubq_s16(v184, v181);
  v202 = vmlal_s16(vmull_s16(*v201.i8, *v191.i8), *v200.i8, *v188.i8);
  v203 = vmlal_high_s16(vmull_high_s16(v201, v191), v200, v188);
  v204 = vmlsl_s16(vmull_s16(*v200.i8, *v191.i8), *v201.i8, *v188.i8);
  v205 = vmlsl_high_s16(vmull_high_s16(v200, v191), v201, v188);
  v206 = *(a1 + 320);
  v207 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v206.i8, *v153.i8), 0xCuLL), vmull_high_s16(v206, v153), 0xCuLL);
  v584 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v206.i8, *v154.i8), 0xCuLL), vmull_high_s16(v206, v154), 0xCuLL);
  v208 = *(a1 + 192);
  v596 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v208.i8, *v749.i8), 0xCuLL), vmull_high_s16(v208, v749), 0xCuLL);
  v588 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v208.i8, *v753.i8), 0xCuLL), vmull_high_s16(v208, v753), 0xCuLL);
  v592 = v207;
  v606 = vqaddq_s16(v543, v547);
  v609 = vqaddq_s16(v175, v169);
  v600 = vqaddq_s16(v176, v170);
  v603 = vqaddq_s16(v560, v563);
  v747 = vrshrn_high_n_s32(vrshrn_n_s32(v539, 0xCuLL), v535, 0xCuLL);
  v739 = vrshrn_high_n_s32(vrshrn_n_s32(v531, 0xCuLL), v528, 0xCuLL);
  v540 = vrshrn_high_n_s32(vrshrn_n_s32(v189, 0xCuLL), v190, 0xCuLL);
  v544 = vrshrn_high_n_s32(vrshrn_n_s32(v192, 0xCuLL), v193, 0xCuLL);
  v743 = vqaddq_s16(v497, v501);
  v754 = vqaddq_s16(v550, v553);
  v548 = vqaddq_s16(v178, v177);
  v468 = vqaddq_s16(v183, v182);
  v470 = vqaddq_s16(v184, v181);
  v472 = vqaddq_s16(v570, v574);
  v532 = vqaddq_s16(v179, v180);
  v536 = vqaddq_s16(v509, v505);
  LODWORD(v23) = LOWORD(dword_277C42240[64 * a3 - 624]);
  v209 = LOWORD(dword_277C42240[64 * a3 - 592]);
  v210 = vqsubq_s16(v596, v207);
  v211 = vdupq_n_s16(-v209);
  v212 = vdupq_n_s16(-v23);
  v213 = vqsubq_s16(v588, v584);
  v623 = vmlal_s16(vmull_s16(*v213.i8, *v212.i8), *v210.i8, *v211.i8);
  v619 = vmlal_high_s16(vmull_high_s16(v213, v212), v210, v211);
  v615 = vmlsl_s16(vmull_s16(*v210.i8, *v212.i8), *v213.i8, *v211.i8);
  v612 = vmlsl_high_s16(vmull_high_s16(v210, v212), v213, v211);
  v464 = vrshrn_high_n_s32(vrshrn_n_s32(v581, 0xCuLL), v577, 0xCuLL);
  v460 = vrshrn_high_n_s32(vrshrn_n_s32(v567, 0xCuLL), v557, 0xCuLL);
  v750 = vrshrn_high_n_s32(vrshrn_n_s32(v524, 0xCuLL), v520, 0xCuLL);
  v454 = vrshrn_high_n_s32(vrshrn_n_s32(v516, 0xCuLL), v513, 0xCuLL);
  v456 = vrshrn_high_n_s32(vrshrn_n_s32(v196, 0xCuLL), v197, 0xCuLL);
  v458 = vrshrn_high_n_s32(vrshrn_n_s32(v198, 0xCuLL), v199, 0xCuLL);
  v462 = vrshrn_high_n_s32(vrshrn_n_s32(v202, 0xCuLL), v203, 0xCuLL);
  v466 = vrshrn_high_n_s32(vrshrn_n_s32(v204, 0xCuLL), v205, 0xCuLL);
  v214 = vqsubq_s16(v609, v606);
  v215 = vqsubq_s16(v600, v603);
  v582 = vmlal_s16(vmull_s16(*v215.i8, *v212.i8), *v214.i8, *v211.i8);
  v578 = vmlal_high_s16(vmull_high_s16(v215, v212), v214, v211);
  v571 = vmlsl_high_s16(vmull_high_s16(v214, v212), v215, v211);
  v575 = vmlsl_s16(vmull_s16(*v214.i8, *v212.i8), *v215.i8, *v211.i8);
  v216 = vqsubq_s16(v540, v739);
  v217 = vqsubq_s16(v544, v747);
  v568 = vmlal_s16(vmull_s16(*v217.i8, *v212.i8), *v216.i8, *v211.i8);
  v564 = vmlal_high_s16(vmull_high_s16(v217, v212), v216, v211);
  v551 = vmlsl_high_s16(vmull_high_s16(v216, v212), v217, v211);
  v554 = vmlsl_s16(vmull_s16(*v216.i8, *v212.i8), *v217.i8, *v211.i8);
  v218 = vqsubq_s16(v548, v743);
  v219 = vqsubq_s16(v532, v536);
  v529 = vmlal_s16(vmull_s16(*v219.i8, *v212.i8), *v218.i8, *v211.i8);
  v525 = vmlal_high_s16(vmull_high_s16(v219, v212), v218, v211);
  v517 = vmlsl_high_s16(vmull_high_s16(v218, v212), v219, v211);
  v521 = vmlsl_s16(vmull_s16(*v218.i8, *v212.i8), *v219.i8, *v211.i8);
  v220 = vqsubq_s16(v468, v754);
  v221 = vqsubq_s16(v470, v472);
  v514 = vmlal_s16(vmull_s16(*v221.i8, *v212.i8), *v220.i8, *v211.i8);
  v510 = vmlal_high_s16(vmull_high_s16(v221, v212), v220, v211);
  v502 = vmlsl_high_s16(vmull_high_s16(v220, v212), v221, v211);
  v506 = vmlsl_s16(vmull_s16(*v220.i8, *v212.i8), *v221.i8, *v211.i8);
  v222 = vqsubq_s16(v462, v460);
  v223 = vqsubq_s16(v466, v464);
  v498 = vmlal_s16(vmull_s16(*v223.i8, *v212.i8), *v222.i8, *v211.i8);
  v494 = vmlal_high_s16(vmull_high_s16(v223, v212), v222, v211);
  v489 = vmlsl_high_s16(vmull_high_s16(v222, v212), v223, v211);
  v492 = vmlsl_s16(vmull_s16(*v222.i8, *v212.i8), *v223.i8, *v211.i8);
  v224 = vqsubq_s16(v456, v454);
  v225 = vqsubq_s16(v458, v750);
  v480 = vmlal_s16(vmull_s16(*v225.i8, *v212.i8), *v224.i8, *v211.i8);
  v474 = vmlsl_s16(vmull_s16(*v224.i8, *v212.i8), *v225.i8, *v211.i8);
  v476 = vmlal_high_s16(vmull_high_s16(v225, v212), v224, v211);
  v478 = vmlsl_high_s16(vmull_high_s16(v224, v212), v225, v211);
  v226 = &dword_277C42240[64 * a3 - 577];
  v227 = &dword_277C42240[64 * a3 - 639];
  v228 = *(a1 + 16);
  v229 = vld1q_dup_s16(v226);
  v230 = vld1q_dup_s16(v227);
  v231 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v228.i8, *v229.i8), 0xCuLL), vmull_high_s16(v228, v229), 0xCuLL);
  v232 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v228.i8, *v230.i8), 0xCuLL), vmull_high_s16(v228, v230), 0xCuLL);
  v233 = &dword_277C42240[64 * a3 - 609];
  v234 = *(a1 + 496);
  v235 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 607]));
  v236 = vld1q_dup_s16(v233);
  v237 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v234.i8, *v235.i8), 0xCuLL), vmull_high_s16(v234, v235), 0xCuLL);
  v238 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v234.i8, *v236.i8), 0xCuLL), vmull_high_s16(v234, v236), 0xCuLL);
  v239 = &dword_277C42240[64 * a3 - 578];
  v240 = &dword_277C42240[64 * a3 - 638];
  v241 = vld1q_dup_s16(v239);
  v242 = *(a1 + 32);
  v243 = vld1q_dup_s16(v240);
  v244 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v242.i8, *v241.i8), 0xCuLL), vmull_high_s16(v242, v241), 0xCuLL);
  v245 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v242.i8, *v243.i8), 0xCuLL), vmull_high_s16(v242, v243), 0xCuLL);
  v246 = &dword_277C42240[64 * a3 - 610];
  v247 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 606]));
  v248 = *(a1 + 480);
  v249 = vld1q_dup_s16(v246);
  v250 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v248.i8, *v247.i8), 0xCuLL), vmull_high_s16(v248, v247), 0xCuLL);
  v251 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v248.i8, *v249.i8), 0xCuLL), vmull_high_s16(v248, v249), 0xCuLL);
  v252 = vqaddq_s16(v231, v237);
  v253 = vqsubq_s16(v231, v237);
  v254 = vqaddq_s16(v721, v717);
  v255 = vqaddq_s16(v713, v710);
  v256 = vdupq_n_s16(v17);
  v257 = vdupq_n_s16(v15);
  v258 = vqsubq_s16(v232, v238);
  v486 = vqaddq_s16(v232, v238);
  v259 = vmlal_s16(vmull_s16(*v253.i8, *v256.i8), *v258.i8, *v257.i8);
  v260 = vmlal_high_s16(vmull_high_s16(v253, v256), v258, v257);
  v261 = vmlsl_s16(vmull_s16(*v258.i8, *v256.i8), *v253.i8, *v257.i8);
  v262 = vmlsl_high_s16(vmull_high_s16(v258, v256), v253, v257);
  v263 = *(a1 + 64);
  v264 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v263.i8, *v256.i8), 0xCuLL), vmull_high_s16(v263, v256), 0xCuLL);
  v265 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v263.i8, *v257.i8), 0xCuLL), vmull_high_s16(v263, v257), 0xCuLL);
  v266 = *(a1 + 448);
  v267 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v266.i8, *v705.i8), 0xCuLL), vmull_high_s16(v266, v705), 0xCuLL);
  v268 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v266.i8, *v707.i8), 0xCuLL), vmull_high_s16(v266, v707), 0xCuLL);
  v269 = vrshrn_high_n_s32(vrshrn_n_s32(v259, 0xCuLL), v260, 0xCuLL);
  v270 = vrshrn_high_n_s32(vrshrn_n_s32(v261, 0xCuLL), v262, 0xCuLL);
  v271 = vrshrn_high_n_s32(vrshrn_n_s32(v735, 0xCuLL), v732, 0xCuLL);
  v272 = vrshrn_high_n_s32(vrshrn_n_s32(v728, 0xCuLL), v725, 0xCuLL);
  v718 = vqaddq_s16(v244, v250);
  v273 = vqsubq_s16(v244, v250);
  v711 = vqaddq_s16(v702, v700);
  v722 = vqaddq_s16(v697, v694);
  v274 = vdupq_n_s16(v117);
  v275 = vqsubq_s16(v245, v251);
  v714 = vqaddq_s16(v245, v251);
  v276 = vdupq_n_s16(v112);
  v277 = vmlal_s16(vmull_s16(*v273.i8, *v274.i8), *v275.i8, *v276.i8);
  v278 = vmlal_high_s16(vmull_high_s16(v273, v274), v275, v276);
  v279 = vmlsl_s16(vmull_s16(*v275.i8, *v274.i8), *v273.i8, *v276.i8);
  v280 = vmlsl_high_s16(vmull_high_s16(v275, v274), v273, v276);
  v281 = vqsubq_s16(v270, v271);
  v282 = vqsubq_s16(v269, v272);
  v283 = vmlal_s16(vmull_s16(*v281.i8, *v274.i8), *v282.i8, *v276.i8);
  v284 = vmlal_high_s16(vmull_high_s16(v281, v274), v282, v276);
  v285 = vmlsl_s16(vmull_s16(*v282.i8, *v274.i8), *v281.i8, *v276.i8);
  v286 = vmlsl_high_s16(vmull_high_s16(v282, v274), v281, v276);
  v287 = vqsubq_s16(v252, v254);
  v288 = vqsubq_s16(v486, v255);
  v289 = vmlal_s16(vmull_s16(*v287.i8, *v274.i8), *v288.i8, *v276.i8);
  v290 = vmlal_high_s16(vmull_high_s16(v287, v274), v288, v276);
  v291 = vmlsl_s16(vmull_s16(*v288.i8, *v274.i8), *v287.i8, *v276.i8);
  v292 = vmlsl_high_s16(vmull_high_s16(v288, v274), v287, v276);
  v293 = *(a1 + 128);
  v558 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v293.i8, *v276.i8), 0xCuLL), vmull_high_s16(v293, v276), 0xCuLL);
  v561 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v293.i8, *v274.i8), 0xCuLL), vmull_high_s16(v293, v274), 0xCuLL);
  v294 = *(a1 + 384);
  v295 = vmull_s16(*v294.i8, *v627.i8);
  v296 = vmull_high_s16(v294, v627);
  v297 = vmull_s16(*v294.i8, *v631.i8);
  v298 = vmull_high_s16(v294, v631);
  v632 = vrshrn_high_n_s32(vrshrn_n_s32(v295, 0xCuLL), v296, 0xCuLL);
  v628 = vrshrn_high_n_s32(vrshrn_n_s32(v297, 0xCuLL), v298, 0xCuLL);
  v299 = vrshrn_high_n_s32(vrshrn_n_s32(v277, 0xCuLL), v278, 0xCuLL);
  v300 = vrshrn_high_n_s32(vrshrn_n_s32(v279, 0xCuLL), v280, 0xCuLL);
  v301 = vrshrn_high_n_s32(vrshrn_n_s32(v691, 0xCuLL), v688, 0xCuLL);
  v302 = vrshrn_high_n_s32(vrshrn_n_s32(v684, 0xCuLL), v681, 0xCuLL);
  v682 = vqaddq_s16(v264, v267);
  v303 = vqsubq_s16(v264, v267);
  v733 = vqaddq_s16(v596, v592);
  v736 = vqaddq_s16(v588, v584);
  v304 = vqsubq_s16(v265, v268);
  v729 = vqaddq_s16(v265, v268);
  v708 = vqaddq_s16(v252, v254);
  v305 = vqaddq_s16(v270, v271);
  v306 = vqaddq_s16(v637, v634);
  v703 = vqaddq_s16(v679, v676);
  v597 = vqaddq_s16(v670, v673);
  v685 = vqaddq_s16(v642, v639);
  v307 = vdupq_n_s16(v209);
  v589 = vqaddq_s16(v486, v255);
  v593 = vqaddq_s16(v269, v272);
  v308 = vdupq_n_s16(v23);
  v638 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v303.i8, *v307.i8), *v304.i8, *v308.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v303, v307), v304, v308), 0xCuLL);
  v635 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v304.i8, *v307.i8), *v303.i8, *v308.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v304, v307), v303, v308), 0xCuLL);
  v643 = vrshrn_high_n_s32(vrshrn_n_s32(v623, 0xCuLL), v619, 0xCuLL);
  v640 = vrshrn_high_n_s32(vrshrn_n_s32(v615, 0xCuLL), v612, 0xCuLL);
  v309 = vrshrn_high_n_s32(vrshrn_n_s32(v283, 0xCuLL), v284, 0xCuLL);
  v310 = vrshrn_high_n_s32(vrshrn_n_s32(v285, 0xCuLL), v286, 0xCuLL);
  v311 = vrshrn_high_n_s32(vrshrn_n_s32(v289, 0xCuLL), v290, 0xCuLL);
  v312 = vrshrn_high_n_s32(vrshrn_n_s32(v291, 0xCuLL), v292, 0xCuLL);
  v313 = vrshrn_high_n_s32(vrshrn_n_s32(v667, 0xCuLL), v663, 0xCuLL);
  v314 = vrshrn_high_n_s32(vrshrn_n_s32(v660, 0xCuLL), v657, 0xCuLL);
  v315 = vrshrn_high_n_s32(vrshrn_n_s32(v654, 0xCuLL), v651, 0xCuLL);
  v316 = vrshrn_high_n_s32(vrshrn_n_s32(v648, 0xCuLL), v645, 0xCuLL);
  v726 = vqaddq_s16(v300, v301);
  v317 = vqsubq_s16(v300, v301);
  v453 = vqaddq_s16(v718, v711);
  v318 = vqsubq_s16(v718, v711);
  v698 = vqaddq_s16(v540, v739);
  v719 = vqaddq_s16(v609, v606);
  v740 = vqaddq_s16(v600, v603);
  v692 = vqaddq_s16(v544, v747);
  v319 = vqsubq_s16(v299, v302);
  v689 = vqaddq_s16(v299, v302);
  v320 = vqsubq_s16(v714, v722);
  v723 = vqaddq_s16(v714, v722);
  v321 = &dword_277C42240[64 * a3 - 608];
  v322 = vld1q_dup_s16(v321);
  v323 = vqsubq_s16(v561, v632);
  v324 = vqsubq_s16(v558, v628);
  v671 = vmlal_s16(vmull_s16(*v323.i8, *v322.i8), *v324.i8, *v322.i8);
  v668 = vmlal_high_s16(vmull_high_s16(v323, v322), v324, v322);
  v664 = vmlsl_s16(vmull_s16(*v324.i8, *v322.i8), *v323.i8, *v322.i8);
  v661 = vmlsl_high_s16(vmull_high_s16(v324, v322), v323, v322);
  v484 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v317.i8, *v307.i8), *v319.i8, *v308.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v317, v307), v319, v308), 0xCuLL);
  v325 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v319.i8, *v307.i8), *v317.i8, *v308.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v319, v307), v317, v308), 0xCuLL);
  v541 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v318.i8, *v307.i8), *v320.i8, *v308.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v318, v307), v320, v308), 0xCuLL);
  v545 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v320.i8, *v307.i8), *v318.i8, *v308.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v320, v307), v318, v308), 0xCuLL);
  v326 = vrshrn_high_n_s32(vrshrn_n_s32(v582, 0xCuLL), v578, 0xCuLL);
  v583 = vrshrn_high_n_s32(vrshrn_n_s32(v575, 0xCuLL), v571, 0xCuLL);
  v585 = v326;
  v327 = vrshrn_high_n_s32(vrshrn_n_s32(v568, 0xCuLL), v564, 0xCuLL);
  v487 = vrshrn_high_n_s32(vrshrn_n_s32(v554, 0xCuLL), v551, 0xCuLL);
  v701 = vqaddq_s16(v312, v313);
  v328 = vqsubq_s16(v312, v313);
  v706 = vqaddq_s16(v310, v315);
  v329 = vqsubq_s16(v310, v315);
  v712 = vqaddq_s16(v305, v306);
  v330 = vqsubq_s16(v305, v306);
  v748 = vqaddq_s16(v708, v703);
  v331 = vqsubq_s16(v708, v703);
  v680 = vqaddq_s16(v454, v456);
  v704 = vqaddq_s16(v460, v462);
  v709 = vqaddq_s16(v754, v468);
  v755 = vqaddq_s16(v743, v548);
  v744 = vqaddq_s16(v532, v536);
  v715 = vqaddq_s16(v470, v472);
  v695 = vqaddq_s16(v466, v464);
  v674 = vqaddq_s16(v458, v750);
  v332 = vqsubq_s16(v311, v314);
  v448 = vqaddq_s16(v314, v311);
  v333 = vqsubq_s16(v309, v316);
  v677 = vqaddq_s16(v316, v309);
  v334 = vqsubq_s16(v593, v685);
  v686 = vqaddq_s16(v685, v593);
  v335 = vqsubq_s16(v589, v597);
  v751 = vqaddq_s16(v597, v589);
  v336 = vqsubq_s16(v635, v643);
  v337 = vqsubq_s16(v638, v640);
  v658 = vmlal_s16(vmull_s16(*v336.i8, *v322.i8), *v337.i8, *v322.i8);
  v655 = vmlal_high_s16(vmull_high_s16(v336, v322), v337, v322);
  v649 = vmlsl_s16(vmull_s16(*v337.i8, *v322.i8), *v336.i8, *v322.i8);
  v652 = vmlsl_high_s16(vmull_high_s16(v337, v322), v336, v322);
  v338 = vqsubq_s16(v682, v733);
  v339 = vqsubq_s16(v729, v736);
  v646 = vmlal_s16(vmull_s16(*v338.i8, *v322.i8), *v339.i8, *v322.i8);
  v624 = vmlal_high_s16(vmull_high_s16(v338, v322), v339, v322);
  v620 = vmlsl_s16(vmull_s16(*v339.i8, *v322.i8), *v338.i8, *v322.i8);
  v616 = vmlsl_high_s16(vmull_high_s16(v339, v322), v338, v322);
  v457 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v328.i8, *v307.i8), *v332.i8, *v308.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v328, v307), v332, v308), 0xCuLL);
  v549 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v332.i8, *v307.i8), *v328.i8, *v308.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v332, v307), v328, v308), 0xCuLL);
  v463 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v329.i8, *v307.i8), *v333.i8, *v308.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v329, v307), v333, v308), 0xCuLL);
  v590 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v333.i8, *v307.i8), *v329.i8, *v308.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v333, v307), v329, v308), 0xCuLL);
  v467 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v330.i8, *v307.i8), *v334.i8, *v308.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v330, v307), v334, v308), 0xCuLL);
  v604 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v334.i8, *v307.i8), *v330.i8, *v308.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v334, v307), v330, v308), 0xCuLL);
  v610 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v335.i8, *v307.i8), *v331.i8, *v308.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v335, v307), v331, v308), 0xCuLL);
  v613 = vrshrn_high_n_s32(vrshrn_n_s32(v529, 0xCuLL), v525, 0xCuLL);
  v471 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v331.i8, *v307.i8), *v335.i8, *v308.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v331, v307), v335, v308), 0xCuLL);
  v473 = vrshrn_high_n_s32(vrshrn_n_s32(v521, 0xCuLL), v517, 0xCuLL);
  v607 = vrshrn_high_n_s32(vrshrn_n_s32(v514, 0xCuLL), v510, 0xCuLL);
  v469 = vrshrn_high_n_s32(vrshrn_n_s32(v506, 0xCuLL), v502, 0xCuLL);
  v594 = vrshrn_high_n_s32(vrshrn_n_s32(v498, 0xCuLL), v494, 0xCuLL);
  v465 = vrshrn_high_n_s32(vrshrn_n_s32(v492, 0xCuLL), v489, 0xCuLL);
  v459 = vrshrn_high_n_s32(vrshrn_n_s32(v474, 0xCuLL), v478, 0xCuLL);
  v340 = vqsubq_s16(v545, v326);
  v341 = vqsubq_s16(v541, v583);
  v579 = vmlal_s16(vmull_s16(*v340.i8, *v322.i8), *v341.i8, *v322.i8);
  v572 = vmlal_high_s16(vmull_high_s16(v340, v322), v341, v322);
  v565 = vmlsl_s16(vmull_s16(*v341.i8, *v322.i8), *v340.i8, *v322.i8);
  v552 = vrshrn_high_n_s32(vrshrn_n_s32(v480, 0xCuLL), v476, 0xCuLL);
  v555 = vmlsl_high_s16(vmull_high_s16(v341, v322), v340, v322);
  v342 = vqsubq_s16(v325, v327);
  v343 = vqsubq_s16(v484, v487);
  v344 = vmlal_s16(vmull_s16(*v342.i8, *v322.i8), *v343.i8, *v322.i8);
  v537 = vmlal_high_s16(vmull_high_s16(v342, v322), v343, v322);
  v530 = vmlsl_high_s16(vmull_high_s16(v343, v322), v342, v322);
  v533 = vmlsl_s16(vmull_s16(*v343.i8, *v322.i8), *v342.i8, *v322.i8);
  v345 = vqsubq_s16(v726, v698);
  v346 = vqsubq_s16(v689, v692);
  v526 = vmlal_s16(vmull_s16(*v345.i8, *v322.i8), *v346.i8, *v322.i8);
  v522 = vmlal_high_s16(vmull_high_s16(v345, v322), v346, v322);
  v515 = vmlsl_high_s16(vmull_high_s16(v346, v322), v345, v322);
  v518 = vmlsl_s16(vmull_s16(*v346.i8, *v322.i8), *v345.i8, *v322.i8);
  v347 = vqsubq_s16(v453, v719);
  v348 = vqsubq_s16(v723, v740);
  v511 = vmlal_s16(vmull_s16(*v347.i8, *v322.i8), *v348.i8, *v322.i8);
  v507 = vmlal_high_s16(vmull_high_s16(v347, v322), v348, v322);
  v499 = vmlsl_high_s16(vmull_high_s16(v348, v322), v347, v322);
  v503 = vmlsl_s16(vmull_s16(*v348.i8, *v322.i8), *v347.i8, *v322.i8);
  v349 = vqsubq_s16(v610, v613);
  v350 = vqsubq_s16(v471, v473);
  v495 = vmlal_s16(vmull_s16(*v349.i8, *v322.i8), *v350.i8, *v322.i8);
  v493 = vmlal_high_s16(vmull_high_s16(v349, v322), v350, v322);
  v601 = vmlsl_s16(vmull_s16(*v350.i8, *v322.i8), *v349.i8, *v322.i8);
  v598 = vmlsl_high_s16(vmull_high_s16(v350, v322), v349, v322);
  v351 = vqsubq_s16(v604, v607);
  v352 = vqsubq_s16(v467, v469);
  v490 = vmlal_s16(vmull_s16(*v351.i8, *v322.i8), *v352.i8, *v322.i8);
  v481 = vmlal_high_s16(vmull_high_s16(v351, v322), v352, v322);
  v576 = vmlsl_s16(vmull_s16(*v352.i8, *v322.i8), *v351.i8, *v322.i8);
  v569 = vmlsl_high_s16(vmull_high_s16(v352, v322), v351, v322);
  v353 = vqsubq_s16(v590, v594);
  v354 = vqsubq_s16(v463, v465);
  v479 = vmlal_s16(vmull_s16(*v353.i8, *v322.i8), *v354.i8, *v322.i8);
  v477 = vmlal_high_s16(vmull_high_s16(v353, v322), v354, v322);
  v475 = vmlsl_s16(vmull_s16(*v354.i8, *v322.i8), *v353.i8, *v322.i8);
  v461 = vmlsl_high_s16(vmull_high_s16(v354, v322), v353, v322);
  v355 = vqsubq_s16(v549, v552);
  v356 = vqsubq_s16(v457, v459);
  v455 = vmlal_s16(vmull_s16(*v355.i8, *v322.i8), *v356.i8, *v322.i8);
  v452 = vmlal_high_s16(vmull_high_s16(v355, v322), v356, v322);
  v450 = vmlsl_high_s16(vmull_high_s16(v356, v322), v355, v322);
  v451 = vmlsl_s16(vmull_s16(*v356.i8, *v322.i8), *v355.i8, *v322.i8);
  v357 = vqsubq_s16(v701, v680);
  v358 = vqsubq_s16(v448, v674);
  v449 = vmlal_s16(vmull_s16(*v357.i8, *v322.i8), *v358.i8, *v322.i8);
  v447 = vmlal_high_s16(vmull_high_s16(v357, v322), v358, v322);
  v445 = vmlsl_high_s16(vmull_high_s16(v358, v322), v357, v322);
  v446 = vmlsl_s16(vmull_s16(*v358.i8, *v322.i8), *v357.i8, *v322.i8);
  v359 = vqsubq_s16(v706, v704);
  v360 = vqsubq_s16(v677, v695);
  v444 = vmlal_s16(vmull_s16(*v359.i8, *v322.i8), *v360.i8, *v322.i8);
  v443 = vmlal_high_s16(vmull_high_s16(v359, v322), v360, v322);
  v441 = vmlsl_high_s16(vmull_high_s16(v360, v322), v359, v322);
  v442 = vmlsl_s16(vmull_s16(*v360.i8, *v322.i8), *v359.i8, *v322.i8);
  v361 = vqsubq_s16(v712, v709);
  v362 = vqsubq_s16(v686, v715);
  v440 = vmlal_s16(vmull_s16(*v361.i8, *v322.i8), *v362.i8, *v322.i8);
  v437 = vmlal_high_s16(vmull_high_s16(v361, v322), v362, v322);
  v438 = vmlsl_high_s16(vmull_high_s16(v362, v322), v361, v322);
  v439 = vmlsl_s16(vmull_s16(*v362.i8, *v322.i8), *v361.i8, *v322.i8);
  v363 = vqsubq_s16(v748, v755);
  v364 = vqsubq_s16(v751, v744);
  v365 = vmlal_s16(vmull_s16(*v363.i8, *v322.i8), *v364.i8, *v322.i8);
  v366 = vmlal_high_s16(vmull_high_s16(v363, v322), v364, v322);
  v367 = vmlsl_s16(vmull_s16(*v364.i8, *v322.i8), *v363.i8, *v322.i8);
  v368 = vmlsl_high_s16(vmull_high_s16(v364, v322), v363, v322);
  v369 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1, *v322.i8), 0xCuLL), vmull_high_s16(*a1, v322), 0xCuLL);
  v370 = *(a1 + 256);
  v371 = vmull_s16(*v370.i8, *v307.i8);
  v372 = vmull_high_s16(v370, v307);
  v373 = vmull_s16(*v370.i8, *v308.i8);
  v374 = vmull_high_s16(v370, v308);
  v375 = vrshrn_high_n_s32(vrshrn_n_s32(v371, 0xCuLL), v372, 0xCuLL);
  v376 = vrshrn_high_n_s32(vrshrn_n_s32(v373, 0xCuLL), v374, 0xCuLL);
  v377 = vqaddq_s16(v561, v632);
  v378 = vqaddq_s16(v558, v628);
  v379 = vrshrn_high_n_s32(vrshrn_n_s32(v671, 0xCuLL), v668, 0xCuLL);
  v380 = vrshrn_high_n_s32(vrshrn_n_s32(v664, 0xCuLL), v661, 0xCuLL);
  v381 = vqaddq_s16(v369, v375);
  v382 = vqsubq_s16(v369, v375);
  v383 = vqaddq_s16(v369, v376);
  v384 = vqsubq_s16(v369, v376);
  v385 = vqaddq_s16(v682, v733);
  v386 = vqaddq_s16(v635, v643);
  v387 = vqaddq_s16(v638, v640);
  v388 = vqaddq_s16(v729, v736);
  v389 = vrshrn_high_n_s32(vrshrn_n_s32(v658, 0xCuLL), v655, 0xCuLL);
  v390 = vrshrn_high_n_s32(vrshrn_n_s32(v649, 0xCuLL), v652, 0xCuLL);
  v391 = vrshrn_high_n_s32(vrshrn_n_s32(v646, 0xCuLL), v624, 0xCuLL);
  v392 = vrshrn_high_n_s32(vrshrn_n_s32(v620, 0xCuLL), v616, 0xCuLL);
  v393 = vqaddq_s16(v384, v377);
  v394 = vqsubq_s16(v384, v377);
  v395 = vqaddq_s16(v382, v380);
  v396 = vqsubq_s16(v382, v380);
  v397 = vqaddq_s16(v381, v379);
  v398 = vqsubq_s16(v381, v379);
  v399 = vqaddq_s16(v383, v378);
  v400 = vqsubq_s16(v383, v378);
  v401 = vqaddq_s16(v453, v719);
  v730 = vqaddq_s16(v726, v698);
  v665 = vqaddq_s16(v325, v327);
  v662 = vqaddq_s16(v545, v585);
  v734 = vqaddq_s16(v541, v583);
  v737 = vqaddq_s16(v484, v487);
  v625 = vqaddq_s16(v689, v692);
  v636 = vqaddq_s16(v723, v740);
  v546 = vrshrn_high_n_s32(vrshrn_n_s32(v579, 0xCuLL), v572, 0xCuLL);
  v402 = vrshrn_high_n_s32(vrshrn_n_s32(v565, 0xCuLL), v555, 0xCuLL);
  v488 = vrshrn_high_n_s32(vrshrn_n_s32(v344, 0xCuLL), v537, 0xCuLL);
  v403 = vrshrn_high_n_s32(vrshrn_n_s32(v533, 0xCuLL), v530, 0xCuLL);
  v556 = vrshrn_high_n_s32(vrshrn_n_s32(v526, 0xCuLL), v522, 0xCuLL);
  v404 = vrshrn_high_n_s32(vrshrn_n_s32(v518, 0xCuLL), v515, 0xCuLL);
  v534 = vrshrn_high_n_s32(vrshrn_n_s32(v511, 0xCuLL), v507, 0xCuLL);
  v405 = vrshrn_high_n_s32(vrshrn_n_s32(v503, 0xCuLL), v499, 0xCuLL);
  v527 = vqaddq_s16(v400, v385);
  v542 = vqsubq_s16(v400, v385);
  v519 = vqaddq_s16(v398, v386);
  v538 = vqsubq_s16(v398, v386);
  v504 = vqaddq_s16(v396, v390);
  v573 = vqsubq_s16(v396, v390);
  v559 = vqsubq_s16(v394, v392);
  v482 = vqaddq_s16(v393, v391);
  v621 = vqsubq_s16(v393, v391);
  v483 = vqaddq_s16(v395, v389);
  v485 = vqaddq_s16(v394, v392);
  v580 = vqsubq_s16(v395, v389);
  v629 = vqaddq_s16(v397, v387);
  v406 = vqsubq_s16(v397, v387);
  v633 = vqaddq_s16(v399, v388);
  v407 = vqsubq_s16(v399, v388);
  v741 = vqaddq_s16(v471, v473);
  v669 = vqaddq_s16(v467, v469);
  v672 = vqaddq_s16(v463, v465);
  v683 = vqaddq_s16(v457, v459);
  v693 = vqaddq_s16(v448, v674);
  v699 = vqaddq_s16(v677, v695);
  v720 = vqaddq_s16(v686, v715);
  v727 = vqaddq_s16(v751, v744);
  v656 = vrshrn_high_n_s32(vrshrn_n_s32(v495, 0xCuLL), v493, 0xCuLL);
  v650 = vrshrn_high_n_s32(vrshrn_n_s32(v490, 0xCuLL), v481, 0xCuLL);
  v745 = vrshrn_high_n_s32(vrshrn_n_s32(v479, 0xCuLL), v477, 0xCuLL);
  v641 = vrshrn_high_n_s32(vrshrn_n_s32(v455, 0xCuLL), v452, 0xCuLL);
  v586 = vrshrn_high_n_s32(vrshrn_n_s32(v449, 0xCuLL), v447, 0xCuLL);
  v562 = vrshrn_high_n_s32(vrshrn_n_s32(v444, 0xCuLL), v443, 0xCuLL);
  v752 = vrshrn_high_n_s32(vrshrn_n_s32(v440, 0xCuLL), v437, 0xCuLL);
  v496 = vrshrn_high_n_s32(vrshrn_n_s32(v367, 0xCuLL), v368, 0xCuLL);
  v508 = vrshrn_high_n_s32(vrshrn_n_s32(v365, 0xCuLL), v366, 0xCuLL);
  v512 = vqaddq_s16(v407, v401);
  v500 = vqsubq_s16(v407, v401);
  v523 = vqaddq_s16(v406, v730);
  v491 = vqsubq_s16(v406, v730);
  v731 = vqaddq_s16(v633, v636);
  v724 = vqaddq_s16(v629, v625);
  *a2 = vqaddq_s16(v731, v727);
  a2[1] = vqaddq_s16(v724, v720);
  v716 = vqaddq_s16(v483, v737);
  v696 = vqaddq_s16(v482, v734);
  a2[2] = vqaddq_s16(v716, v699);
  a2[3] = vqaddq_s16(v696, v693);
  v690 = vqaddq_s16(v485, v546);
  v687 = vqaddq_s16(v504, v488);
  a2[4] = vqaddq_s16(v690, v683);
  a2[5] = vqaddq_s16(v687, v672);
  v678 = vqaddq_s16(v519, v556);
  v675 = vqaddq_s16(v527, v534);
  a2[6] = vqaddq_s16(v678, v669);
  a2[7] = vqaddq_s16(v675, v741);
  v659 = vqaddq_s16(v542, v405);
  v653 = vqaddq_s16(v538, v404);
  a2[8] = vqaddq_s16(v659, v656);
  a2[9] = vqaddq_s16(v653, v650);
  v647 = vqaddq_s16(v573, v403);
  v644 = vqaddq_s16(v559, v402);
  a2[10] = vqaddq_s16(v647, v745);
  a2[11] = vqaddq_s16(v644, v641);
  v617 = vqaddq_s16(v621, v662);
  v566 = vqaddq_s16(v580, v665);
  a2[12] = vqaddq_s16(v617, v586);
  a2[13] = vqaddq_s16(v566, v562);
  v666 = vqsubq_s16(v580, v665);
  a2[14] = vqaddq_s16(v523, v752);
  a2[15] = vqaddq_s16(v512, v508);
  v408 = vqsubq_s16(v621, v662);
  v409 = vrshrn_high_n_s32(vrshrn_n_s32(v439, 0xCuLL), v438, 0xCuLL);
  a2[16] = vqaddq_s16(v500, v496);
  a2[17] = vqaddq_s16(v491, v409);
  v410 = vqsubq_s16(v559, v402);
  v411 = vrshrn_high_n_s32(vrshrn_n_s32(v442, 0xCuLL), v441, 0xCuLL);
  v412 = vrshrn_high_n_s32(vrshrn_n_s32(v446, 0xCuLL), v445, 0xCuLL);
  a2[18] = vqaddq_s16(v666, v411);
  a2[19] = vqaddq_s16(v408, v412);
  v413 = vqsubq_s16(v573, v403);
  v414 = vrshrn_high_n_s32(vrshrn_n_s32(v451, 0xCuLL), v450, 0xCuLL);
  v415 = vrshrn_high_n_s32(vrshrn_n_s32(v475, 0xCuLL), v461, 0xCuLL);
  a2[20] = vqaddq_s16(v410, v414);
  a2[21] = vqaddq_s16(v413, v415);
  v416 = vrshrn_high_n_s32(vrshrn_n_s32(v601, 0xCuLL), v598, 0xCuLL);
  v417 = vrshrn_high_n_s32(vrshrn_n_s32(v576, 0xCuLL), v569, 0xCuLL);
  v418 = vqsubq_s16(v538, v404);
  v419 = vqsubq_s16(v542, v405);
  a2[22] = vqaddq_s16(v418, v417);
  a2[23] = vqaddq_s16(v419, v416);
  v420 = vqaddq_s16(v604, v607);
  v421 = vqaddq_s16(v610, v613);
  v422 = vqsubq_s16(v527, v534);
  v423 = vqsubq_s16(v519, v556);
  a2[24] = vqaddq_s16(v422, v421);
  a2[25] = vqaddq_s16(v423, v420);
  v424 = vqaddq_s16(v549, v552);
  v425 = vqaddq_s16(v590, v594);
  v426 = vqsubq_s16(v504, v488);
  v427 = vqsubq_s16(v485, v546);
  a2[26] = vqaddq_s16(v426, v425);
  a2[27] = vqaddq_s16(v427, v424);
  v428 = vqaddq_s16(v706, v704);
  v429 = vqaddq_s16(v701, v680);
  v430 = vqsubq_s16(v482, v734);
  v431 = vqsubq_s16(v483, v737);
  a2[28] = vqaddq_s16(v430, v429);
  a2[29] = vqaddq_s16(v431, v428);
  v432 = vqaddq_s16(v748, v755);
  v433 = vqaddq_s16(v712, v709);
  v434 = vqsubq_s16(v629, v625);
  v435 = vqsubq_s16(v633, v636);
  a2[30] = vqaddq_s16(v434, v433);
  a2[31] = vqaddq_s16(v435, v432);
  a2[32] = vqsubq_s16(v435, v432);
  a2[33] = vqsubq_s16(v434, v433);
  a2[34] = vqsubq_s16(v431, v428);
  a2[35] = vqsubq_s16(v430, v429);
  a2[36] = vqsubq_s16(v427, v424);
  a2[37] = vqsubq_s16(v426, v425);
  a2[38] = vqsubq_s16(v423, v420);
  a2[39] = vqsubq_s16(v422, v421);
  a2[40] = vqsubq_s16(v419, v416);
  a2[41] = vqsubq_s16(v418, v417);
  a2[42] = vqsubq_s16(v413, v415);
  a2[43] = vqsubq_s16(v410, v414);
  a2[44] = vqsubq_s16(v408, v412);
  a2[45] = vqsubq_s16(v666, v411);
  a2[46] = vqsubq_s16(v491, v409);
  a2[47] = vqsubq_s16(v500, v496);
  a2[48] = vqsubq_s16(v512, v508);
  a2[49] = vqsubq_s16(v523, v752);
  a2[50] = vqsubq_s16(v566, v562);
  a2[51] = vqsubq_s16(v617, v586);
  a2[52] = vqsubq_s16(v644, v641);
  a2[53] = vqsubq_s16(v647, v745);
  a2[54] = vqsubq_s16(v653, v650);
  a2[55] = vqsubq_s16(v659, v656);
  a2[56] = vqsubq_s16(v675, v741);
  a2[57] = vqsubq_s16(v678, v669);
  a2[58] = vqsubq_s16(v687, v672);
  a2[59] = vqsubq_s16(v690, v683);
  a2[60] = vqsubq_s16(v696, v693);
  a2[61] = vqsubq_s16(v716, v699);
  result = vqsubq_s16(v724, v720);
  a2[62] = result;
  a2[63] = vqsubq_s16(v731, v727);
  return result;
}

int16x8_t sub_277AB03FC(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 577];
  v4 = vld1q_dup_s16(v3);
  v5 = *(a1 + 16);
  v632 = vmull_s16(*v5.i8, *v4.i8);
  v639 = vmull_high_s16(v5, v4);
  v6 = &dword_277C42240[64 * a3 - 639];
  v7 = vld1q_dup_s16(v6);
  v629 = vmull_s16(*v5.i8, *v7.i8);
  v636 = vmull_high_s16(v5, v7);
  v8 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 591]));
  v9 = *(a1 + 240);
  v10 = vmull_s16(*v9.i8, *v8.i8);
  v11 = vmull_high_s16(v9, v8);
  v12 = &dword_277C42240[64 * a3 - 625];
  v13 = vld1q_dup_s16(v12);
  v14 = vmull_s16(*v9.i8, *v13.i8);
  v15 = vmull_high_s16(v9, v13);
  v16 = vrshrn_n_s32(v10, 0xCuLL);
  *v9.i8 = vrshrn_n_s32(v11, 0xCuLL);
  *v10.i8 = vrshrn_n_s32(v14, 0xCuLL);
  *v13.i8 = vrshrn_n_s32(v15, 0xCuLL);
  LODWORD(v12) = LOWORD(dword_277C42240[64 * a3 - 580]);
  *v14.i8 = vdup_n_s16(-v12);
  v17 = LOWORD(dword_277C42240[64 * a3 - 636]);
  v18 = vdup_n_s16(-v17);
  v625 = vmlal_s16(vmull_s16(*v10.i8, v18), v16, *v14.i8);
  v612 = vrshrn_high_n_s32(v16, v11, 0xCuLL);
  v599 = vmlsl_s16(vmull_s16(v16, v18), *v10.i8, *v14.i8);
  v615 = vrshrn_high_n_s32(*v10.i8, v15, 0xCuLL);
  v19 = &dword_277C42240[64 * a3 - 585];
  v20 = vld1q_dup_s16(v19);
  v21 = *(a1 + 144);
  v22 = vmull_s16(*v21.i8, *v20.i8);
  v23 = vmull_high_s16(v21, v20);
  v24 = &dword_277C42240[64 * a3 - 631];
  v25 = vld1q_dup_s16(v24);
  v26 = vmull_s16(*v21.i8, *v25.i8);
  v27 = vmull_high_s16(v21, v25);
  v28 = vrshrn_n_s32(v22, 0xCuLL);
  *v25.i8 = vrshrn_n_s32(v23, 0xCuLL);
  v29 = vrshrn_n_s32(v26, 0xCuLL);
  v30 = LOWORD(dword_277C42240[64 * a3 - 604]);
  *v22.i8 = vrshrn_n_s32(v27, 0xCuLL);
  *v26.i8 = vdup_n_s16(v30);
  v31 = LOWORD(dword_277C42240[64 * a3 - 612]);
  *v21.i8 = vdup_n_s16(v31);
  LODWORD(v24) = LOWORD(dword_277C42240[64 * a3 - 620]);
  v645 = vmlsl_s16(vmull_s16(v29, *v21.i8), v28, *v26.i8);
  v577 = vrshrn_high_n_s32(v28, v23, 0xCuLL);
  v642 = vmlal_s16(vmull_s16(v28, *v21.i8), v29, *v26.i8);
  v573 = vrshrn_high_n_s32(v29, v27, 0xCuLL);
  v32 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 583]));
  v33 = *(a1 + 112);
  v34 = vmull_s16(*v33.i8, *v32.i8);
  v35 = &dword_277C42240[64 * a3 - 633];
  v36 = vmull_high_s16(v33, v32);
  v37 = vld1q_dup_s16(v35);
  v38 = vmull_s16(*v33.i8, *v37.i8);
  v39 = vmull_high_s16(v33, v37);
  v40 = &dword_277C42240[64 * a3 - 581];
  v41 = vld1q_dup_s16(v40);
  v42 = &dword_277C42240[64 * a3 - 635];
  v43 = vld1q_dup_s16(v42);
  LODWORD(v42) = LOWORD(dword_277C42240[64 * a3 - 596]);
  *v34.i8 = vrshrn_n_s32(v34, 0xCuLL);
  v44 = vrshrn_n_s32(v38, 0xCuLL);
  v45 = *(a1 + 80);
  v46 = vmull_s16(*v45.i8, *v41.i8);
  v47 = vmull_high_s16(v45, v41);
  v48 = vmull_s16(*v45.i8, *v43.i8);
  v49 = vmull_high_s16(v45, v43);
  v50 = vmull_s16(*v9.i8, v18);
  v581 = vmlal_s16(vmull_s16(*v13.i8, v18), *v9.i8, *v14.i8);
  *v9.i8 = vdup_n_s16(-v31);
  *v43.i8 = vdup_n_s16(-v30);
  v561 = vmlal_s16(vmull_s16(v44, *v43.i8), *v34.i8, *v9.i8);
  v565 = vrshrn_high_n_s32(*v34.i8, v36, 0xCuLL);
  *v36.i8 = vrshrn_n_s32(v36, 0xCuLL);
  v558 = vmlsl_s16(vmull_s16(*v34.i8, *v43.i8), v44, *v9.i8);
  v429 = vrshrn_high_n_s32(v44, v39, 0xCuLL);
  *v39.i8 = vrshrn_n_s32(v39, 0xCuLL);
  *v46.i8 = vrshrn_n_s32(v46, 0xCuLL);
  *v48.i8 = vrshrn_n_s32(v48, 0xCuLL);
  v568 = vmlsl_s16(v50, *v13.i8, *v14.i8);
  v51 = vmlal_s16(vmull_s16(*v25.i8, *v21.i8), *v22.i8, *v26.i8);
  v548 = vmlsl_s16(vmull_s16(*v22.i8, *v21.i8), *v25.i8, *v26.i8);
  v52 = vmlal_s16(vmull_s16(*v39.i8, *v43.i8), *v36.i8, *v9.i8);
  *v13.i8 = vdup_n_s16(v24);
  *v22.i8 = vdup_n_s16(v42);
  v53 = vmlsl_s16(vmull_s16(*v48.i8, *v22.i8), *v46.i8, *v13.i8);
  v660 = vrshrn_high_n_s32(*v46.i8, v47, 0xCuLL);
  *v26.i8 = vrshrn_n_s32(v47, 0xCuLL);
  v54 = vmlal_s16(vmull_s16(*v46.i8, *v22.i8), *v48.i8, *v13.i8);
  v657 = vrshrn_high_n_s32(*v48.i8, v49, 0xCuLL);
  *v49.i8 = vrshrn_n_s32(v49, 0xCuLL);
  v55 = vmlsl_s16(vmull_s16(*v36.i8, *v43.i8), *v39.i8, *v9.i8);
  v56 = *(a1 + 176);
  v57 = vmull_s16(*v49.i8, *v22.i8);
  v58 = vmlal_s16(vmull_s16(*v26.i8, *v22.i8), *v49.i8, *v13.i8);
  v59 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 587]));
  v60 = &dword_277C42240[64 * a3 - 629];
  v61 = vmlsl_s16(v57, *v26.i8, *v13.i8);
  v62 = vmull_s16(*v56.i8, *v59.i8);
  v63 = vmull_high_s16(v56, v59);
  v64 = vld1q_dup_s16(v60);
  v65 = vmull_high_s16(v56, v64);
  *v62.i8 = vrshrn_n_s32(v62, 0xCuLL);
  *v50.i8 = vrshrn_n_s32(vmull_s16(*v56.i8, *v64.i8), 0xCuLL);
  *v36.i8 = vdup_n_s16(-v42);
  *v39.i8 = vdup_n_s16(-v24);
  v66 = vmlal_s16(vmull_s16(*v50.i8, *v39.i8), *v62.i8, *v36.i8);
  v521 = vrshrn_high_n_s32(*v62.i8, v63, 0xCuLL);
  *v63.i8 = vrshrn_n_s32(v63, 0xCuLL);
  *v43.i8 = vrshrn_n_s32(v65, 0xCuLL);
  v67 = vmlal_s16(vmull_s16(*v43.i8, *v39.i8), *v63.i8, *v36.i8);
  v68 = vmlsl_s16(vmull_s16(*v63.i8, *v39.i8), *v43.i8, *v36.i8);
  v69 = vmlsl_s16(vmull_s16(*v62.i8, *v39.i8), *v50.i8, *v36.i8);
  v536 = vrshrn_high_n_s32(*v50.i8, v65, 0xCuLL);
  v70 = &dword_277C42240[64 * a3 - 589];
  v71 = &dword_277C42240[64 * a3 - 627];
  v72 = *(a1 + 208);
  v73 = vld1q_dup_s16(v70);
  v74 = vmull_s16(*v72.i8, *v73.i8);
  v75 = vmull_high_s16(v72, v73);
  v76 = vld1q_dup_s16(v71);
  v77 = vmull_s16(*v72.i8, *v76.i8);
  v78 = vmull_high_s16(v72, v76);
  LODWORD(v70) = LOWORD(dword_277C42240[64 * a3 - 588]);
  LODWORD(v71) = LOWORD(dword_277C42240[64 * a3 - 628]);
  *v74.i8 = vrshrn_n_s32(v74, 0xCuLL);
  v663 = vrshrn_high_n_s32(*v74.i8, v75, 0xCuLL);
  *v75.i8 = vrshrn_n_s32(v75, 0xCuLL);
  *v76.i8 = vrshrn_n_s32(v78, 0xCuLL);
  v622 = vdupq_n_s16(v71);
  *v46.i8 = vdup_n_s16(v70);
  v79 = vmlal_s16(vmull_s16(*v75.i8, *v622.i8), *v76.i8, *v46.i8);
  v80 = vmlsl_s16(vmull_s16(*v76.i8, *v622.i8), *v75.i8, *v46.i8);
  v81 = vrshrn_n_s32(v77, 0xCuLL);
  v82 = vmlsl_s16(vmull_s16(v81, *v622.i8), *v74.i8, *v46.i8);
  v83 = vmlal_s16(vmull_s16(*v74.i8, *v622.i8), v81, *v46.i8);
  v84 = vrshrn_high_n_s32(v81, v78, 0xCuLL);
  v85 = &dword_277C42240[64 * a3 - 637];
  v86 = *(a1 + 48);
  v87 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 579]));
  v88 = vmull_s16(*v86.i8, *v87.i8);
  v89 = vld1q_dup_s16(v85);
  v90 = vmull_high_s16(v86, v87);
  v91 = vmull_s16(*v86.i8, *v89.i8);
  v92 = vmull_high_s16(v86, v89);
  *v88.i8 = vrshrn_n_s32(v88, 0xCuLL);
  v494 = vrshrn_high_n_s32(*v88.i8, v90, 0xCuLL);
  v497 = v84;
  *v89.i8 = vrshrn_n_s32(v90, 0xCuLL);
  v93 = vrshrn_n_s32(v92, 0xCuLL);
  v618 = vdupq_n_s16(-v70);
  v94 = vdup_n_s16(-v71);
  v95 = vmlal_s16(vmull_s16(v93, *v618.i8), *v89.i8, v94);
  v96 = vmlsl_s16(vmull_s16(*v89.i8, *v618.i8), v93, v94);
  v97 = vrshrn_n_s32(v91, 0xCuLL);
  v98 = vmlal_s16(vmull_s16(v97, *v618.i8), *v88.i8, v94);
  v99 = vmlsl_s16(vmull_s16(*v88.i8, *v618.i8), v97, v94);
  v500 = vrshrn_high_n_s32(v97, v92, 0xCuLL);
  v100 = &dword_277C42240[64 * a3 - 578];
  v101 = &dword_277C42240[64 * a3 - 638];
  v102 = *(a1 + 32);
  v103 = vld1q_dup_s16(v100);
  v476 = vmull_s16(*v102.i8, *v103.i8);
  v480 = vmull_high_s16(v102, v103);
  v104 = vld1q_dup_s16(v101);
  v469 = vmull_s16(*v102.i8, *v104.i8);
  v484 = vmull_high_s16(v102, v104);
  v105 = &dword_277C42240[64 * a3 - 586];
  v106 = &dword_277C42240[64 * a3 - 630];
  v107 = *(a1 + 160);
  v108 = vld1q_dup_s16(v105);
  v109 = vmull_s16(*v107.i8, *v108.i8);
  v110 = vmull_high_s16(v107, v108);
  v111 = vld1q_dup_s16(v106);
  v112 = vmull_s16(*v107.i8, *v111.i8);
  v113 = vmull_high_s16(v107, v111);
  v585 = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xCuLL), v58, 0xCuLL);
  v592 = vrshrn_high_n_s32(vrshrn_n_s32(v53, 0xCuLL), v61, 0xCuLL);
  v596 = vrshrn_high_n_s32(vrshrn_n_s32(v66, 0xCuLL), v67, 0xCuLL);
  v589 = vrshrn_high_n_s32(vrshrn_n_s32(v69, 0xCuLL), v68, 0xCuLL);
  LODWORD(v105) = LOWORD(dword_277C42240[64 * a3 - 600]);
  LODWORD(v106) = LOWORD(dword_277C42240[64 * a3 - 616]);
  *v53.i8 = vrshrn_n_s32(v109, 0xCuLL);
  v666 = vrshrn_high_n_s32(*v53.i8, v110, 0xCuLL);
  *v111.i8 = vrshrn_n_s32(v110, 0xCuLL);
  *v110.i8 = vrshrn_n_s32(v113, 0xCuLL);
  v114 = vdupq_n_s16(v105);
  v115 = vdupq_n_s16(v106);
  v608 = vmlal_s16(vmull_s16(*v111.i8, *v115.i8), *v110.i8, *v114.i8);
  v604 = vmlsl_s16(vmull_s16(*v110.i8, *v115.i8), *v111.i8, *v114.i8);
  v116 = vqsubq_s16(v592, v596);
  v117 = vqsubq_s16(v585, v589);
  v554 = vmlal_s16(vmull_s16(*v116.i8, *v115.i8), *v117.i8, *v114.i8);
  v551 = vmlal_high_s16(vmull_high_s16(v116, v115), v117, v114);
  v545 = vmlsl_s16(vmull_s16(*v117.i8, *v115.i8), *v116.i8, *v114.i8);
  v542 = vmlsl_high_s16(vmull_high_s16(v117, v115), v116, v114);
  *v111.i8 = vrshrn_n_s32(v112, 0xCuLL);
  v518 = vmlsl_s16(vmull_s16(*v111.i8, *v115.i8), *v53.i8, *v114.i8);
  v118 = vqsubq_s16(v660, v521);
  v119 = vqsubq_s16(v657, v536);
  v539 = vmlal_s16(vmull_s16(*v118.i8, *v115.i8), *v119.i8, *v114.i8);
  v532 = vmlal_high_s16(vmull_high_s16(v118, v115), v119, v114);
  v528 = vmlsl_s16(vmull_s16(*v119.i8, *v115.i8), *v118.i8, *v114.i8);
  v525 = vmlsl_high_s16(vmull_high_s16(v119, v115), v118, v114);
  v514 = vmlal_s16(vmull_s16(*v53.i8, *v115.i8), *v111.i8, *v114.i8);
  v654 = vrshrn_high_n_s32(*v111.i8, v113, 0xCuLL);
  v120 = &dword_277C42240[64 * a3 - 634];
  v121 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 582]));
  v122 = *(a1 + 96);
  v123 = vmull_s16(*v122.i8, *v121.i8);
  v124 = vmull_high_s16(v122, v121);
  v125 = vld1q_dup_s16(v120);
  v126 = vmull_s16(*v122.i8, *v125.i8);
  v127 = vmull_high_s16(v122, v125);
  v451 = vrshrn_high_n_s32(vrshrn_n_s32(v83, 0xCuLL), v79, 0xCuLL);
  v446 = vrshrn_high_n_s32(vrshrn_n_s32(v82, 0xCuLL), v80, 0xCuLL);
  v448 = vrshrn_high_n_s32(vrshrn_n_s32(v98, 0xCuLL), v95, 0xCuLL);
  v455 = vrshrn_high_n_s32(vrshrn_n_s32(v99, 0xCuLL), v96, 0xCuLL);
  *v122.i8 = vrshrn_n_s32(v123, 0xCuLL);
  v651 = vrshrn_high_n_s32(*v122.i8, v124, 0xCuLL);
  *v123.i8 = vrshrn_n_s32(v124, 0xCuLL);
  *v124.i8 = vrshrn_n_s32(v127, 0xCuLL);
  v128 = vdupq_n_s16(-v106);
  v129 = vdupq_n_s16(-v105);
  v488 = vmlal_s16(vmull_s16(*v124.i8, *v129.i8), *v123.i8, *v128.i8);
  v491 = vmlsl_s16(vmull_s16(*v123.i8, *v129.i8), *v124.i8, *v128.i8);
  v130 = vqsubq_s16(v494, v663);
  v131 = vqsubq_s16(v500, v84);
  v511 = vmlal_s16(vmull_s16(*v131.i8, *v129.i8), *v130.i8, *v128.i8);
  v508 = vmlal_high_s16(vmull_high_s16(v131, v129), v130, v128);
  v503 = vmlsl_high_s16(vmull_high_s16(v130, v129), v131, v128);
  v506 = vmlsl_s16(vmull_s16(*v130.i8, *v129.i8), *v131.i8, *v128.i8);
  *v130.i8 = vrshrn_n_s32(v126, 0xCuLL);
  v443 = vmlal_s16(vmull_s16(*v130.i8, *v129.i8), *v122.i8, *v128.i8);
  v132 = vmull_s16(*v122.i8, *v129.i8);
  v133 = vqsubq_s16(v448, v446);
  v134 = vqsubq_s16(v455, v451);
  v473 = vmlal_s16(vmull_s16(*v134.i8, *v129.i8), *v133.i8, *v128.i8);
  v462 = vmlsl_s16(vmull_s16(*v133.i8, *v129.i8), *v134.i8, *v128.i8);
  v466 = vmlal_high_s16(vmull_high_s16(v134, v129), v133, v128);
  v459 = vmlsl_high_s16(vmull_high_s16(v133, v129), v134, v128);
  v440 = vmlsl_s16(v132, *v130.i8, *v128.i8);
  v648 = vrshrn_high_n_s32(*v130.i8, v127, 0xCuLL);
  v135 = &dword_277C42240[64 * a3 - 626];
  v136 = *(a1 + 224);
  v137 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 590]));
  v138 = vld1q_dup_s16(v135);
  v139 = vmull_high_s16(v136, v137);
  v140 = vmull_s16(*v136.i8, *v138.i8);
  v141 = vmull_high_s16(v136, v138);
  v142 = vrshrn_high_n_s32(vrshrn_n_s32(v642, 0xCuLL), v51, 0xCuLL);
  v143 = vrshrn_high_n_s32(vrshrn_n_s32(v645, 0xCuLL), v548, 0xCuLL);
  v144 = vrshrn_high_n_s32(vrshrn_n_s32(v561, 0xCuLL), v52, 0xCuLL);
  v145 = vrshrn_high_n_s32(vrshrn_n_s32(v558, 0xCuLL), v55, 0xCuLL);
  LODWORD(v105) = LOWORD(dword_277C42240[64 * a3 - 632]);
  LODWORD(v135) = LOWORD(dword_277C42240[64 * a3 - 584]);
  v146 = vrshrn_n_s32(vmull_s16(*v136.i8, *v137.i8), 0xCuLL);
  v646 = vrshrn_high_n_s32(v146, v139, 0xCuLL);
  *v130.i8 = vrshrn_n_s32(v139, 0xCuLL);
  v147 = vdupq_n_s16(-v135);
  v148 = vdupq_n_s16(-v105);
  *v138.i8 = vrshrn_n_s32(v141, 0xCuLL);
  v149 = vmlal_s16(vmull_s16(*v138.i8, *v148.i8), *v130.i8, *v147.i8);
  v150 = vmlsl_s16(vmull_s16(*v130.i8, *v148.i8), *v138.i8, *v147.i8);
  v151 = vqsubq_s16(v565, v577);
  v152 = vqsubq_s16(v429, v573);
  v436 = vmlal_s16(vmull_s16(*v152.i8, *v148.i8), *v151.i8, *v147.i8);
  v433 = vmlal_high_s16(vmull_high_s16(v152, v148), v151, v147);
  v422 = vmlsl_s16(vmull_s16(*v151.i8, *v148.i8), *v152.i8, *v147.i8);
  v153 = vmlsl_high_s16(vmull_high_s16(v151, v148), v152, v147);
  *v140.i8 = vrshrn_n_s32(v140, 0xCuLL);
  v154 = vmlal_s16(vmull_s16(*v140.i8, *v148.i8), v146, *v147.i8);
  v155 = vmull_s16(v146, *v148.i8);
  v156 = vqsubq_s16(v144, v143);
  v157 = vqsubq_s16(v145, v142);
  v158 = vmlal_s16(vmull_s16(*v157.i8, *v148.i8), *v156.i8, *v147.i8);
  v159 = vmull_s16(*v156.i8, *v148.i8);
  v160 = vmull_high_s16(v156, v148);
  v161 = vmlal_high_s16(vmull_high_s16(v157, v148), v156, v147);
  v162 = vmlsl_s16(v159, *v157.i8, *v147.i8);
  v163 = vmlsl_high_s16(v160, v157, v147);
  v164 = vmlsl_s16(v155, *v140.i8, *v147.i8);
  v643 = vrshrn_high_n_s32(*v140.i8, v141, 0xCuLL);
  *v156.i8 = vrshrn_n_s32(v632, 0xCuLL);
  v165 = vdupq_n_s16(v12);
  v166 = vdupq_n_s16(v17);
  *v147.i8 = vrshrn_n_s32(v629, 0xCuLL);
  v167 = vmlsl_s16(vmull_s16(*v147.i8, *v165.i8), *v156.i8, *v166.i8);
  v168 = vmull_s16(*v156.i8, *v165.i8);
  v169 = vrshrn_high_n_s32(*v156.i8, v639, 0xCuLL);
  *v156.i8 = vrshrn_n_s32(v639, 0xCuLL);
  v170 = vmlal_s16(v168, *v147.i8, *v166.i8);
  v171 = vrshrn_high_n_s32(*v147.i8, v636, 0xCuLL);
  *v116.i8 = vrshrn_n_s32(v636, 0xCuLL);
  v172 = vmlal_s16(vmull_s16(*v156.i8, *v165.i8), *v116.i8, *v166.i8);
  v173 = vmlsl_s16(vmull_s16(*v116.i8, *v165.i8), *v156.i8, *v166.i8);
  v174 = *(a1 + 64);
  v175 = vmull_s16(*v174.i8, *v165.i8);
  v176 = vmull_high_s16(v174, v165);
  v633 = vmull_s16(*v174.i8, *v166.i8);
  v177 = vmull_high_s16(v174, v166);
  v178 = vrshrn_high_n_s32(vrshrn_n_s32(v170, 0xCuLL), v172, 0xCuLL);
  v179 = vrshrn_high_n_s32(vrshrn_n_s32(v167, 0xCuLL), v173, 0xCuLL);
  v180 = vrshrn_high_n_s32(vrshrn_n_s32(v625, 0xCuLL), v581, 0xCuLL);
  v181 = vrshrn_high_n_s32(vrshrn_n_s32(v599, 0xCuLL), v568, 0xCuLL);
  *v172.i8 = vrshrn_n_s32(v476, 0xCuLL);
  *v136.i8 = vrshrn_n_s32(v469, 0xCuLL);
  v182 = vdupq_n_s16(v135);
  v183 = vdupq_n_s16(v105);
  v184 = vmlsl_s16(vmull_s16(*v136.i8, *v182.i8), *v172.i8, *v183.i8);
  v185 = vmull_s16(*v172.i8, *v182.i8);
  v637 = vrshrn_high_n_s32(*v172.i8, v480, 0xCuLL);
  *v172.i8 = vrshrn_n_s32(v480, 0xCuLL);
  v626 = vrshrn_high_n_s32(*v136.i8, v484, 0xCuLL);
  *v130.i8 = vrshrn_n_s32(v484, 0xCuLL);
  v549 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(v185, *v136.i8, *v183.i8), 0xCuLL), vmlal_s16(vmull_s16(*v172.i8, *v182.i8), *v130.i8, *v183.i8), 0xCuLL);
  v562 = vrshrn_high_n_s32(vrshrn_n_s32(v184, 0xCuLL), vmlsl_s16(vmull_s16(*v130.i8, *v182.i8), *v172.i8, *v183.i8), 0xCuLL);
  v569 = vrshrn_high_n_s32(vrshrn_n_s32(v154, 0xCuLL), v149, 0xCuLL);
  v559 = vrshrn_high_n_s32(vrshrn_n_s32(v164, 0xCuLL), v150, 0xCuLL);
  v186 = vqsubq_s16(v179, v180);
  v187 = vqsubq_s16(v169, v612);
  v362 = vqaddq_s16(v179, v180);
  v364 = vqaddq_s16(v144, v143);
  v352 = vqaddq_s16(v169, v612);
  v354 = vqaddq_s16(v565, v577);
  v188 = vqsubq_s16(v178, v181);
  v372 = vqaddq_s16(v145, v142);
  v374 = vqaddq_s16(v178, v181);
  v189 = vqsubq_s16(v171, v615);
  v356 = vqaddq_s16(v429, v573);
  v358 = vqaddq_s16(v171, v615);
  LODWORD(v12) = LOWORD(dword_277C42240[64 * a3 - 624]);
  v190 = LOWORD(dword_277C42240[64 * a3 - 592]);
  *v51.i8 = vrshrn_n_s32(v175, 0xCuLL);
  v640 = vrshrn_high_n_s32(*v51.i8, v176, 0xCuLL);
  *v176.i8 = vrshrn_n_s32(v176, 0xCuLL);
  v191 = vdupq_n_s16(v12);
  v192 = vdupq_n_s16(v190);
  *v80.i8 = vrshrn_n_s32(v177, 0xCuLL);
  v613 = vmlal_s16(vmull_s16(*v176.i8, *v192.i8), *v80.i8, *v191.i8);
  v616 = vmlsl_s16(vmull_s16(*v80.i8, *v192.i8), *v176.i8, *v191.i8);
  v582 = v182;
  v600 = v183;
  v389 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v186.i8, *v182.i8), *v188.i8, *v183.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v186, v182), v188, v183), 0xCuLL);
  v381 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v188.i8, *v182.i8), *v186.i8, *v183.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v188, v182), v186, v183), 0xCuLL);
  v419 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v187.i8, *v182.i8), *v189.i8, *v183.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v187, v182), v189, v183), 0xCuLL);
  v426 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v189.i8, *v182.i8), *v187.i8, *v183.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v189, v182), v187, v183), 0xCuLL);
  v430 = vrshrn_high_n_s32(vrshrn_n_s32(v436, 0xCuLL), v433, 0xCuLL);
  v423 = vrshrn_high_n_s32(vrshrn_n_s32(v422, 0xCuLL), v153, 0xCuLL);
  v383 = vrshrn_high_n_s32(vrshrn_n_s32(v158, 0xCuLL), v161, 0xCuLL);
  v391 = vrshrn_high_n_s32(vrshrn_n_s32(v162, 0xCuLL), v163, 0xCuLL);
  v193 = vqsubq_s16(v562, v569);
  v194 = vqsubq_s16(v549, v559);
  v578 = vmlal_s16(vmull_s16(*v193.i8, *v192.i8), *v194.i8, *v191.i8);
  v566 = vmlal_high_s16(vmull_high_s16(v193, v192), v194, v191);
  v481 = vmlsl_high_s16(vmull_high_s16(v194, v192), v193, v191);
  v485 = vmlsl_s16(vmull_s16(*v194.i8, *v192.i8), *v193.i8, *v191.i8);
  v195 = vqsubq_s16(v637, v646);
  v196 = vqsubq_s16(v626, v643);
  v477 = vmlal_s16(vmull_s16(*v195.i8, *v192.i8), *v196.i8, *v191.i8);
  v470 = vmlal_high_s16(vmull_high_s16(v195, v192), v196, v191);
  v434 = vmlsl_high_s16(vmull_high_s16(v196, v192), v195, v191);
  v437 = vmlsl_s16(vmull_s16(*v196.i8, *v192.i8), *v195.i8, *v191.i8);
  v197 = vqsubq_s16(v426, v430);
  v198 = vqsubq_s16(v419, v423);
  v417 = vmlal_s16(vmull_s16(*v197.i8, *v192.i8), *v198.i8, *v191.i8);
  v414 = vmlal_high_s16(vmull_high_s16(v197, v192), v198, v191);
  v408 = vmlsl_high_s16(vmull_high_s16(v198, v192), v197, v191);
  v411 = vmlsl_s16(vmull_s16(*v198.i8, *v192.i8), *v197.i8, *v191.i8);
  v199 = vqsubq_s16(v381, v383);
  v200 = vqsubq_s16(v389, v391);
  v402 = vmlal_s16(vmull_s16(*v199.i8, *v192.i8), *v200.i8, *v191.i8);
  v399 = vmlal_high_s16(vmull_high_s16(v199, v192), v200, v191);
  v395 = vmlsl_high_s16(vmull_high_s16(v200, v192), v199, v191);
  v397 = vmlsl_s16(vmull_s16(*v200.i8, *v192.i8), *v199.i8, *v191.i8);
  v201 = vqsubq_s16(v362, v364);
  v202 = vqsubq_s16(v374, v372);
  v387 = vmlal_s16(vmull_s16(*v201.i8, *v192.i8), *v202.i8, *v191.i8);
  v385 = vmlal_high_s16(vmull_high_s16(v201, v192), v202, v191);
  v376 = vmlsl_high_s16(vmull_high_s16(v202, v192), v201, v191);
  v378 = vmlsl_s16(vmull_s16(*v202.i8, *v192.i8), *v201.i8, *v191.i8);
  *v201.i8 = vrshrn_n_s32(v633, 0xCuLL);
  v574 = vmlsl_s16(vmull_s16(*v201.i8, *v192.i8), *v51.i8, *v191.i8);
  v203 = vqsubq_s16(v352, v354);
  v204 = vqsubq_s16(v358, v356);
  v370 = vmlal_s16(vmull_s16(*v203.i8, *v192.i8), *v204.i8, *v191.i8);
  v360 = vmlal_high_s16(vmull_high_s16(v203, v192), v204, v191);
  v366 = vmlsl_high_s16(vmull_high_s16(v204, v192), v203, v191);
  v368 = vmlsl_s16(vmull_s16(*v204.i8, *v192.i8), *v203.i8, *v191.i8);
  v405 = vmlal_s16(vmull_s16(*v51.i8, *v192.i8), *v201.i8, *v191.i8);
  v634 = vrshrn_high_n_s32(*v201.i8, v177, 0xCuLL);
  v205 = *(a1 + 192);
  v206 = vmull_s16(*v205.i8, *v618.i8);
  v207 = vmull_high_s16(v205, v618);
  v348 = vmull_s16(*v205.i8, *v622.i8);
  v393 = vmull_high_s16(v205, v622);
  v208 = vrshrn_high_n_s32(vrshrn_n_s32(v514, 0xCuLL), v608, 0xCuLL);
  v209 = vrshrn_high_n_s32(vrshrn_n_s32(v518, 0xCuLL), v604, 0xCuLL);
  v210 = vrshrn_high_n_s32(vrshrn_n_s32(v443, 0xCuLL), v488, 0xCuLL);
  v211 = vrshrn_high_n_s32(vrshrn_n_s32(v440, 0xCuLL), v491, 0xCuLL);
  v609 = vqaddq_s16(v660, v521);
  v350 = vqaddq_s16(v592, v596);
  v449 = vqaddq_s16(v448, v446);
  v661 = vqaddq_s16(v494, v663);
  v605 = vqaddq_s16(v500, v497);
  v489 = vqaddq_s16(v455, v451);
  v501 = vqaddq_s16(v585, v589);
  v619 = vqaddq_s16(v657, v536);
  *v201.i8 = vrshrn_n_s32(v206, 0xCuLL);
  v630 = vrshrn_high_n_s32(*v201.i8, v207, 0xCuLL);
  v212 = vdupq_n_s16(-v190);
  *v207.i8 = vrshrn_n_s32(v207, 0xCuLL);
  v213 = vdupq_n_s16(-v12);
  *v176.i8 = vrshrn_n_s32(v393, 0xCuLL);
  v214 = vmlal_s16(vmull_s16(*v176.i8, *v213.i8), *v207.i8, *v212.i8);
  v215 = vmlsl_s16(vmull_s16(*v207.i8, *v213.i8), *v176.i8, *v212.i8);
  v452 = vrshrn_high_n_s32(vrshrn_n_s32(v554, 0xCuLL), v551, 0xCuLL);
  v216 = vrshrn_high_n_s32(vrshrn_n_s32(v545, 0xCuLL), v542, 0xCuLL);
  v217 = vrshrn_high_n_s32(vrshrn_n_s32(v539, 0xCuLL), v532, 0xCuLL);
  v218 = vrshrn_high_n_s32(vrshrn_n_s32(v528, 0xCuLL), v525, 0xCuLL);
  v219 = vrshrn_high_n_s32(vrshrn_n_s32(v511, 0xCuLL), v508, 0xCuLL);
  v220 = vrshrn_high_n_s32(vrshrn_n_s32(v506, 0xCuLL), v503, 0xCuLL);
  v221 = vrshrn_high_n_s32(vrshrn_n_s32(v473, 0xCuLL), v466, 0xCuLL);
  v222 = vrshrn_high_n_s32(vrshrn_n_s32(v462, 0xCuLL), v459, 0xCuLL);
  v223 = vqsubq_s16(v651, v666);
  v224 = vqsubq_s16(v648, v654);
  v623 = vmlal_s16(vmull_s16(*v224.i8, *v213.i8), *v223.i8, *v212.i8);
  v593 = vmlal_high_s16(vmull_high_s16(v224, v213), v223, v212);
  v586 = vmlsl_s16(vmull_s16(*v223.i8, *v213.i8), *v224.i8, *v212.i8);
  v533 = vmlsl_high_s16(vmull_high_s16(v223, v213), v224, v212);
  v225 = vqsubq_s16(v210, v209);
  v226 = vqsubq_s16(v211, v208);
  v529 = vmlal_s16(vmull_s16(*v226.i8, *v213.i8), *v225.i8, *v212.i8);
  v526 = vmlal_high_s16(vmull_high_s16(v226, v213), v225, v212);
  v522 = vmlsl_s16(vmull_s16(*v225.i8, *v213.i8), *v226.i8, *v212.i8);
  v515 = vmlsl_high_s16(vmull_high_s16(v225, v213), v226, v212);
  v227 = vqsubq_s16(v661, v609);
  v228 = vqsubq_s16(v605, v619);
  v504 = vmlal_s16(vmull_s16(*v228.i8, *v213.i8), *v227.i8, *v212.i8);
  v498 = vmlal_high_s16(vmull_high_s16(v228, v213), v227, v212);
  v492 = vmlsl_high_s16(vmull_high_s16(v227, v213), v228, v212);
  v495 = vmlsl_s16(vmull_s16(*v227.i8, *v213.i8), *v228.i8, *v212.i8);
  v229 = vqsubq_s16(v449, v350);
  v230 = vqsubq_s16(v489, v501);
  v467 = vmlal_s16(vmull_s16(*v230.i8, *v213.i8), *v229.i8, *v212.i8);
  v463 = vmlal_high_s16(vmull_high_s16(v230, v213), v229, v212);
  v456 = vmlsl_high_s16(vmull_high_s16(v229, v213), v230, v212);
  v460 = vmlsl_s16(vmull_s16(*v229.i8, *v213.i8), *v230.i8, *v212.i8);
  v231 = vqsubq_s16(v221, v216);
  v232 = vqsubq_s16(v222, v452);
  v233 = vmlal_s16(vmull_s16(*v232.i8, *v213.i8), *v231.i8, *v212.i8);
  v234 = vmlal_high_s16(vmull_high_s16(v232, v213), v231, v212);
  v235 = vmlsl_s16(vmull_s16(*v231.i8, *v213.i8), *v232.i8, *v212.i8);
  v236 = vmlsl_high_s16(vmull_high_s16(v231, v213), v232, v212);
  *v189.i8 = vrshrn_n_s32(v348, 0xCuLL);
  v237 = vmlal_s16(vmull_s16(*v189.i8, *v213.i8), *v201.i8, *v212.i8);
  v238 = vmull_s16(*v201.i8, *v213.i8);
  v239 = vqsubq_s16(v219, v218);
  v240 = vqsubq_s16(v220, v217);
  v241 = vmlal_s16(vmull_s16(*v240.i8, *v213.i8), *v239.i8, *v212.i8);
  v242 = vmlal_high_s16(vmull_high_s16(v240, v213), v239, v212);
  v243 = vmlsl_s16(vmull_s16(*v239.i8, *v213.i8), *v240.i8, *v212.i8);
  v244 = vmlsl_high_s16(vmull_high_s16(v239, v213), v240, v212);
  v519 = vrshrn_high_n_s32(*v189.i8, v393, 0xCuLL);
  v245 = *(a1 + 128);
  v246 = vmull_s16(*v245.i8, *v582.i8);
  v247 = vmull_high_s16(v245, v582);
  v248 = vmull_s16(*v245.i8, *v600.i8);
  v249 = vmull_high_s16(v245, v600);
  v540 = vrshrn_high_n_s32(vrshrn_n_s32(v405, 0xCuLL), v613, 0xCuLL);
  v537 = vrshrn_high_n_s32(vrshrn_n_s32(v574, 0xCuLL), v616, 0xCuLL);
  v546 = vrshrn_high_n_s32(vrshrn_n_s32(v237, 0xCuLL), v214, 0xCuLL);
  v543 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(v238, *v189.i8, *v212.i8), 0xCuLL), v215, 0xCuLL);
  v664 = vqaddq_s16(v637, v646);
  v658 = vqaddq_s16(v562, v569);
  v601 = vqaddq_s16(v210, v209);
  v652 = vqaddq_s16(v651, v666);
  v583 = vqaddq_s16(v648, v654);
  v590 = vqaddq_s16(v211, v208);
  v394 = vqaddq_s16(v549, v559);
  v597 = vqaddq_s16(v626, v643);
  v250 = &dword_277C42240[64 * a3 - 608];
  *v212.i8 = vrshrn_n_s32(v246, 0xCuLL);
  *v248.i8 = vrshrn_n_s32(v248, 0xCuLL);
  v251 = vld1q_dup_s16(v250);
  v563 = vmlsl_s16(vmull_s16(*v248.i8, *v251.i8), *v212.i8, *v251.i8);
  v252 = vmull_s16(*v212.i8, *v251.i8);
  v570 = vrshrn_high_n_s32(*v212.i8, v247, 0xCuLL);
  *v212.i8 = vrshrn_n_s32(v247, 0xCuLL);
  v575 = vrshrn_high_n_s32(*v248.i8, v249, 0xCuLL);
  *v247.i8 = vrshrn_n_s32(v249, 0xCuLL);
  v552 = vmlal_s16(vmull_s16(*v212.i8, *v251.i8), *v247.i8, *v251.i8);
  v555 = vmlsl_s16(vmull_s16(*v247.i8, *v251.i8), *v212.i8, *v251.i8);
  v441 = vrshrn_high_n_s32(vrshrn_n_s32(v578, 0xCuLL), v566, 0xCuLL);
  v406 = vrshrn_high_n_s32(vrshrn_n_s32(v485, 0xCuLL), v481, 0xCuLL);
  v482 = vrshrn_high_n_s32(vrshrn_n_s32(v437, 0xCuLL), v434, 0xCuLL);
  v486 = vrshrn_high_n_s32(vrshrn_n_s32(v623, 0xCuLL), v593, 0xCuLL);
  v474 = vrshrn_high_n_s32(vrshrn_n_s32(v477, 0xCuLL), v470, 0xCuLL);
  v478 = vrshrn_high_n_s32(vrshrn_n_s32(v586, 0xCuLL), v533, 0xCuLL);
  v438 = vrshrn_high_n_s32(vrshrn_n_s32(v529, 0xCuLL), v526, 0xCuLL);
  v444 = vrshrn_high_n_s32(vrshrn_n_s32(v522, 0xCuLL), v515, 0xCuLL);
  v667 = vqaddq_s16(v352, v354);
  v647 = vqaddq_s16(v362, v364);
  v638 = vqaddq_s16(v381, v383);
  v617 = vqaddq_s16(v426, v430);
  v614 = vqaddq_s16(v218, v219);
  v624 = vqaddq_s16(v216, v221);
  v644 = vqaddq_s16(v350, v449);
  v662 = vqaddq_s16(v609, v661);
  v655 = vqaddq_s16(v605, v619);
  v649 = vqaddq_s16(v489, v501);
  v620 = vqaddq_s16(v222, v452);
  v594 = vqaddq_s16(v220, v217);
  v587 = vqaddq_s16(v423, v419);
  v606 = vqaddq_s16(v391, v389);
  v610 = vqaddq_s16(v372, v374);
  v627 = vqaddq_s16(v356, v358);
  v253 = vqsubq_s16(v537, v546);
  v254 = vqsubq_s16(v540, v543);
  v534 = vmlal_s16(vmull_s16(*v253.i8, *v251.i8), *v254.i8, *v251.i8);
  v530 = vmlal_high_s16(vmull_high_s16(v253, v251), v254, v251);
  v523 = vmlsl_s16(vmull_s16(*v254.i8, *v251.i8), *v253.i8, *v251.i8);
  v527 = vmlsl_high_s16(vmull_high_s16(v254, v251), v253, v251);
  v255 = vqsubq_s16(v640, v630);
  v256 = vqsubq_s16(v634, v519);
  v516 = vmlal_s16(vmull_s16(*v255.i8, *v251.i8), *v256.i8, *v251.i8);
  v512 = vmlal_high_s16(vmull_high_s16(v255, v251), v256, v251);
  v507 = vmlsl_s16(vmull_s16(*v256.i8, *v251.i8), *v255.i8, *v251.i8);
  v509 = vmlsl_high_s16(vmull_high_s16(v256, v251), v255, v251);
  v579 = vrshrn_high_n_s32(vrshrn_n_s32(v417, 0xCuLL), v414, 0xCuLL);
  v447 = vrshrn_high_n_s32(vrshrn_n_s32(v411, 0xCuLL), v408, 0xCuLL);
  v375 = vrshrn_high_n_s32(vrshrn_n_s32(v402, 0xCuLL), v399, 0xCuLL);
  v490 = vrshrn_high_n_s32(vrshrn_n_s32(v397, 0xCuLL), v395, 0xCuLL);
  v388 = vrshrn_high_n_s32(vrshrn_n_s32(v387, 0xCuLL), v385, 0xCuLL);
  v502 = vrshrn_high_n_s32(vrshrn_n_s32(v378, 0xCuLL), v376, 0xCuLL);
  v550 = vrshrn_high_n_s32(vrshrn_n_s32(v368, 0xCuLL), v366, 0xCuLL);
  v567 = vrshrn_high_n_s32(vrshrn_n_s32(v504, 0xCuLL), v498, 0xCuLL);
  v398 = vrshrn_high_n_s32(vrshrn_n_s32(v370, 0xCuLL), v360, 0xCuLL);
  v400 = vrshrn_high_n_s32(vrshrn_n_s32(v495, 0xCuLL), v492, 0xCuLL);
  v505 = vrshrn_high_n_s32(vrshrn_n_s32(v467, 0xCuLL), v463, 0xCuLL);
  v390 = vrshrn_high_n_s32(vrshrn_n_s32(v460, 0xCuLL), v456, 0xCuLL);
  v493 = vrshrn_high_n_s32(vrshrn_n_s32(v233, 0xCuLL), v234, 0xCuLL);
  v382 = vrshrn_high_n_s32(vrshrn_n_s32(v235, 0xCuLL), v236, 0xCuLL);
  v450 = vrshrn_high_n_s32(vrshrn_n_s32(v241, 0xCuLL), v242, 0xCuLL);
  v367 = vrshrn_high_n_s32(vrshrn_n_s32(v243, 0xCuLL), v244, 0xCuLL);
  v257 = vqsubq_s16(v482, v486);
  v258 = vqsubq_s16(v474, v478);
  v471 = vmlal_s16(vmull_s16(*v257.i8, *v251.i8), *v258.i8, *v251.i8);
  v464 = vmlal_high_s16(vmull_high_s16(v257, v251), v258, v251);
  v453 = vmlsl_high_s16(vmull_high_s16(v258, v251), v257, v251);
  v457 = vmlsl_s16(vmull_s16(*v258.i8, *v251.i8), *v257.i8, *v251.i8);
  v259 = vqsubq_s16(v406, v438);
  v260 = vqsubq_s16(v441, v444);
  v379 = vmlal_s16(vmull_s16(*v259.i8, *v251.i8), *v260.i8, *v251.i8);
  v261 = vmlsl_s16(vmull_s16(*v260.i8, *v251.i8), *v259.i8, *v251.i8);
  v431 = vmlsl_high_s16(vmull_high_s16(v260, v251), v259, v251);
  v435 = vmlal_high_s16(vmull_high_s16(v259, v251), v260, v251);
  v262 = vqsubq_s16(v658, v601);
  v263 = vqsubq_s16(v394, v590);
  v427 = vmlal_s16(vmull_s16(*v262.i8, *v251.i8), *v263.i8, *v251.i8);
  v424 = vmlal_high_s16(vmull_high_s16(v262, v251), v263, v251);
  v418 = vmlsl_high_s16(vmull_high_s16(v263, v251), v262, v251);
  v420 = vmlsl_s16(vmull_s16(*v263.i8, *v251.i8), *v262.i8, *v251.i8);
  v264 = vqsubq_s16(v664, v652);
  v265 = vqsubq_s16(v597, v583);
  v415 = vmlal_s16(vmull_s16(*v264.i8, *v251.i8), *v265.i8, *v251.i8);
  v412 = vmlal_high_s16(vmull_high_s16(v264, v251), v265, v251);
  v409 = vmlsl_s16(vmull_s16(*v265.i8, *v251.i8), *v264.i8, *v251.i8);
  v403 = vmlsl_high_s16(vmull_high_s16(v265, v251), v264, v251);
  v266 = vqsubq_s16(v550, v567);
  v267 = vqsubq_s16(v398, v400);
  v396 = vmlal_s16(vmull_s16(*v266.i8, *v251.i8), *v267.i8, *v251.i8);
  v392 = vmlal_high_s16(vmull_high_s16(v266, v251), v267, v251);
  v496 = vmlsl_high_s16(vmull_high_s16(v267, v251), v266, v251);
  v499 = vmlsl_s16(vmull_s16(*v267.i8, *v251.i8), *v266.i8, *v251.i8);
  v268 = vqsubq_s16(v502, v505);
  v269 = vqsubq_s16(v388, v390);
  v386 = vmlal_s16(vmull_s16(*v268.i8, *v251.i8), *v269.i8, *v251.i8);
  v384 = vmlal_high_s16(vmull_high_s16(v268, v251), v269, v251);
  v468 = vmlsl_s16(vmull_s16(*v269.i8, *v251.i8), *v268.i8, *v251.i8);
  v461 = vmlsl_high_s16(vmull_high_s16(v269, v251), v268, v251);
  v270 = vqsubq_s16(v490, v493);
  v271 = vqsubq_s16(v375, v382);
  v377 = vmlal_s16(vmull_s16(*v270.i8, *v251.i8), *v271.i8, *v251.i8);
  v373 = vmlal_high_s16(vmull_high_s16(v270, v251), v271, v251);
  v369 = vmlsl_high_s16(vmull_high_s16(v271, v251), v270, v251);
  v371 = vmlsl_s16(vmull_s16(*v271.i8, *v251.i8), *v270.i8, *v251.i8);
  v272 = vqsubq_s16(v447, v450);
  v273 = vqsubq_s16(v579, v367);
  v365 = vmlal_s16(vmull_s16(*v272.i8, *v251.i8), *v273.i8, *v251.i8);
  v363 = vmlal_high_s16(vmull_high_s16(v272, v251), v273, v251);
  v359 = vmlsl_high_s16(vmull_high_s16(v273, v251), v272, v251);
  v361 = vmlsl_s16(vmull_s16(*v273.i8, *v251.i8), *v272.i8, *v251.i8);
  v274 = vqsubq_s16(v617, v614);
  v275 = vqsubq_s16(v587, v594);
  v357 = vmlal_s16(vmull_s16(*v274.i8, *v251.i8), *v275.i8, *v251.i8);
  v355 = vmlal_high_s16(vmull_high_s16(v274, v251), v275, v251);
  v351 = vmlsl_high_s16(vmull_high_s16(v275, v251), v274, v251);
  v353 = vmlsl_s16(vmull_s16(*v275.i8, *v251.i8), *v274.i8, *v251.i8);
  v276 = vqsubq_s16(v638, v624);
  v277 = vqsubq_s16(v606, v620);
  v349 = vmlal_s16(vmull_s16(*v276.i8, *v251.i8), *v277.i8, *v251.i8);
  v347 = vmlal_high_s16(vmull_high_s16(v276, v251), v277, v251);
  v345 = vmlsl_high_s16(vmull_high_s16(v277, v251), v276, v251);
  v346 = vmlsl_s16(vmull_s16(*v277.i8, *v251.i8), *v276.i8, *v251.i8);
  v278 = vqsubq_s16(v647, v644);
  v279 = vqsubq_s16(v610, v649);
  v344 = vmlal_s16(vmull_s16(*v278.i8, *v251.i8), *v279.i8, *v251.i8);
  v280 = vmlal_high_s16(vmull_high_s16(v278, v251), v279, v251);
  v281 = vmlsl_s16(vmull_s16(*v279.i8, *v251.i8), *v278.i8, *v251.i8);
  v282 = vmlsl_high_s16(vmull_high_s16(v279, v251), v278, v251);
  v283 = vqsubq_s16(v667, v662);
  v284 = vqsubq_s16(v627, v655);
  v285 = vmlal_s16(vmull_s16(*v283.i8, *v251.i8), *v284.i8, *v251.i8);
  v286 = vmlal_high_s16(vmull_high_s16(v283, v251), v284, v251);
  v287 = vmlsl_s16(vmull_s16(*v284.i8, *v251.i8), *v283.i8, *v251.i8);
  v288 = vmlsl_high_s16(vmull_high_s16(v284, v251), v283, v251);
  v289 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1, *v251.i8), 0xCuLL), vmull_high_s16(*a1, v251), 0xCuLL);
  v290 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(v252, *v248.i8, *v251.i8), 0xCuLL), v552, 0xCuLL);
  v291 = vrshrn_high_n_s32(vrshrn_n_s32(v563, 0xCuLL), v555, 0xCuLL);
  v292 = vqaddq_s16(v640, v630);
  v293 = vqaddq_s16(v537, v546);
  v294 = vqaddq_s16(v540, v543);
  v295 = vqaddq_s16(v634, v519);
  v296 = vrshrn_high_n_s32(vrshrn_n_s32(v534, 0xCuLL), v530, 0xCuLL);
  v297 = vrshrn_high_n_s32(vrshrn_n_s32(v523, 0xCuLL), v527, 0xCuLL);
  v298 = vrshrn_high_n_s32(vrshrn_n_s32(v516, 0xCuLL), v512, 0xCuLL);
  v299 = vrshrn_high_n_s32(vrshrn_n_s32(v507, 0xCuLL), v509, 0xCuLL);
  v300 = vqaddq_s16(v289, v570);
  v301 = vqsubq_s16(v289, v570);
  v302 = vqaddq_s16(v289, v291);
  v303 = vqsubq_s16(v289, v291);
  v304 = vqaddq_s16(v289, v290);
  v305 = vqsubq_s16(v289, v290);
  v306 = vqaddq_s16(v289, v575);
  v307 = vqsubq_s16(v289, v575);
  v571 = vqaddq_s16(v664, v652);
  v602 = vqaddq_s16(v658, v601);
  v556 = vqaddq_s16(v406, v438);
  v553 = vqaddq_s16(v482, v486);
  v635 = vqaddq_s16(v474, v478);
  v641 = vqaddq_s16(v441, v444);
  v665 = vqaddq_s16(v394, v590);
  v524 = vqaddq_s16(v597, v583);
  v465 = vrshrn_high_n_s32(vrshrn_n_s32(v471, 0xCuLL), v464, 0xCuLL);
  v308 = vrshrn_high_n_s32(vrshrn_n_s32(v457, 0xCuLL), v453, 0xCuLL);
  v442 = vrshrn_high_n_s32(vrshrn_n_s32(v379, 0xCuLL), v435, 0xCuLL);
  v309 = vrshrn_high_n_s32(vrshrn_n_s32(v261, 0xCuLL), v431, 0xCuLL);
  v458 = vrshrn_high_n_s32(vrshrn_n_s32(v427, 0xCuLL), v424, 0xCuLL);
  v310 = vrshrn_high_n_s32(vrshrn_n_s32(v420, 0xCuLL), v418, 0xCuLL);
  v439 = vrshrn_high_n_s32(vrshrn_n_s32(v415, 0xCuLL), v412, 0xCuLL);
  v311 = vrshrn_high_n_s32(vrshrn_n_s32(v409, 0xCuLL), v403, 0xCuLL);
  v428 = vqaddq_s16(v307, v292);
  v454 = vqsubq_s16(v307, v292);
  v421 = vqaddq_s16(v305, v293);
  v445 = vqsubq_s16(v305, v293);
  v410 = vqaddq_s16(v303, v297);
  v472 = vqsubq_s16(v301, v299);
  v343 = vqaddq_s16(v300, v298);
  v513 = vqsubq_s16(v300, v298);
  v380 = vqaddq_s16(v302, v296);
  v483 = vqsubq_s16(v303, v297);
  v487 = vqsubq_s16(v302, v296);
  v517 = vqaddq_s16(v304, v294);
  v312 = vqsubq_s16(v304, v294);
  v520 = vqaddq_s16(v306, v295);
  v313 = vqsubq_s16(v306, v295);
  v659 = vqaddq_s16(v398, v400);
  v564 = vqaddq_s16(v388, v390);
  v576 = vqaddq_s16(v375, v382);
  v584 = vqaddq_s16(v579, v367);
  v595 = vqaddq_s16(v587, v594);
  v598 = vqaddq_s16(v606, v620);
  v607 = vqaddq_s16(v610, v649);
  v621 = vqaddq_s16(v627, v655);
  v544 = vrshrn_high_n_s32(vrshrn_n_s32(v396, 0xCuLL), v392, 0xCuLL);
  v538 = vrshrn_high_n_s32(vrshrn_n_s32(v386, 0xCuLL), v384, 0xCuLL);
  v653 = vrshrn_high_n_s32(vrshrn_n_s32(v377, 0xCuLL), v373, 0xCuLL);
  v631 = vrshrn_high_n_s32(vrshrn_n_s32(v365, 0xCuLL), v363, 0xCuLL);
  v656 = vrshrn_high_n_s32(vrshrn_n_s32(v357, 0xCuLL), v355, 0xCuLL);
  v475 = vrshrn_high_n_s32(vrshrn_n_s32(v349, 0xCuLL), v347, 0xCuLL);
  v425 = vrshrn_high_n_s32(vrshrn_n_s32(v344, 0xCuLL), v280, 0xCuLL);
  v650 = vrshrn_high_n_s32(vrshrn_n_s32(v281, 0xCuLL), v282, 0xCuLL);
  v413 = vrshrn_high_n_s32(vrshrn_n_s32(v285, 0xCuLL), v286, 0xCuLL);
  v416 = vqaddq_s16(v313, v571);
  v404 = vrshrn_high_n_s32(vrshrn_n_s32(v287, 0xCuLL), v288, 0xCuLL);
  v407 = vqsubq_s16(v313, v571);
  v432 = vqaddq_s16(v312, v602);
  v401 = vqsubq_s16(v312, v602);
  v628 = vqaddq_s16(v520, v524);
  v611 = vqaddq_s16(v517, v665);
  *a2 = vqaddq_s16(v628, v621);
  a2[1] = vqaddq_s16(v611, v607);
  v603 = vqaddq_s16(v380, v641);
  v591 = vqaddq_s16(v343, v635);
  a2[2] = vqaddq_s16(v603, v598);
  a2[3] = vqaddq_s16(v591, v595);
  v314 = vqaddq_s16(v301, v299);
  v588 = vqaddq_s16(v314, v465);
  v580 = vqaddq_s16(v410, v442);
  a2[4] = vqaddq_s16(v588, v584);
  a2[5] = vqaddq_s16(v580, v576);
  v572 = vqaddq_s16(v421, v458);
  v560 = vqaddq_s16(v428, v439);
  a2[6] = vqaddq_s16(v572, v564);
  a2[7] = vqaddq_s16(v560, v659);
  v547 = vqaddq_s16(v454, v311);
  v541 = vqaddq_s16(v445, v310);
  a2[8] = vqaddq_s16(v547, v544);
  a2[9] = vqaddq_s16(v541, v538);
  v535 = vqaddq_s16(v483, v309);
  v531 = vqaddq_s16(v472, v308);
  a2[10] = vqaddq_s16(v535, v653);
  a2[11] = vqaddq_s16(v531, v631);
  v510 = vqaddq_s16(v513, v553);
  v479 = vqaddq_s16(v487, v556);
  a2[12] = vqaddq_s16(v510, v656);
  a2[13] = vqaddq_s16(v479, v475);
  v557 = vqsubq_s16(v487, v556);
  a2[14] = vqaddq_s16(v432, v425);
  a2[15] = vqaddq_s16(v416, v413);
  v315 = vqsubq_s16(v513, v553);
  a2[16] = vqaddq_s16(v407, v404);
  a2[17] = vqaddq_s16(v401, v650);
  v316 = vqsubq_s16(v472, v308);
  v317 = vrshrn_high_n_s32(vrshrn_n_s32(v346, 0xCuLL), v345, 0xCuLL);
  v318 = vrshrn_high_n_s32(vrshrn_n_s32(v353, 0xCuLL), v351, 0xCuLL);
  a2[18] = vqaddq_s16(v557, v317);
  a2[19] = vqaddq_s16(v315, v318);
  v319 = vqsubq_s16(v483, v309);
  v320 = vrshrn_high_n_s32(vrshrn_n_s32(v361, 0xCuLL), v359, 0xCuLL);
  v321 = vrshrn_high_n_s32(vrshrn_n_s32(v371, 0xCuLL), v369, 0xCuLL);
  a2[20] = vqaddq_s16(v316, v320);
  a2[21] = vqaddq_s16(v319, v321);
  v322 = vrshrn_high_n_s32(vrshrn_n_s32(v499, 0xCuLL), v496, 0xCuLL);
  v323 = vrshrn_high_n_s32(vrshrn_n_s32(v468, 0xCuLL), v461, 0xCuLL);
  v324 = vqsubq_s16(v445, v310);
  v325 = vqsubq_s16(v454, v311);
  a2[22] = vqaddq_s16(v324, v323);
  a2[23] = vqaddq_s16(v325, v322);
  v326 = vqaddq_s16(v502, v505);
  v327 = vqaddq_s16(v550, v567);
  v328 = vqsubq_s16(v428, v439);
  v329 = vqsubq_s16(v421, v458);
  a2[24] = vqaddq_s16(v328, v327);
  a2[25] = vqaddq_s16(v329, v326);
  v330 = vqaddq_s16(v447, v450);
  v331 = vqaddq_s16(v490, v493);
  v332 = vqsubq_s16(v410, v442);
  v333 = vqsubq_s16(v314, v465);
  a2[26] = vqaddq_s16(v332, v331);
  a2[27] = vqaddq_s16(v333, v330);
  v334 = vqaddq_s16(v638, v624);
  v335 = vqaddq_s16(v617, v614);
  v336 = vqsubq_s16(v343, v635);
  v337 = vqsubq_s16(v380, v641);
  a2[28] = vqaddq_s16(v336, v335);
  a2[29] = vqaddq_s16(v337, v334);
  v338 = vqaddq_s16(v667, v662);
  v339 = vqaddq_s16(v647, v644);
  v340 = vqsubq_s16(v517, v665);
  v341 = vqsubq_s16(v520, v524);
  a2[30] = vqaddq_s16(v340, v339);
  a2[31] = vqaddq_s16(v341, v338);
  a2[32] = vqsubq_s16(v341, v338);
  a2[33] = vqsubq_s16(v340, v339);
  a2[34] = vqsubq_s16(v337, v334);
  a2[35] = vqsubq_s16(v336, v335);
  a2[36] = vqsubq_s16(v333, v330);
  a2[37] = vqsubq_s16(v332, v331);
  a2[38] = vqsubq_s16(v329, v326);
  a2[39] = vqsubq_s16(v328, v327);
  a2[40] = vqsubq_s16(v325, v322);
  a2[41] = vqsubq_s16(v324, v323);
  a2[42] = vqsubq_s16(v319, v321);
  a2[43] = vqsubq_s16(v316, v320);
  a2[44] = vqsubq_s16(v315, v318);
  a2[45] = vqsubq_s16(v557, v317);
  a2[46] = vqsubq_s16(v401, v650);
  a2[47] = vqsubq_s16(v407, v404);
  a2[48] = vqsubq_s16(v416, v413);
  a2[49] = vqsubq_s16(v432, v425);
  a2[50] = vqsubq_s16(v479, v475);
  a2[51] = vqsubq_s16(v510, v656);
  a2[52] = vqsubq_s16(v531, v631);
  a2[53] = vqsubq_s16(v535, v653);
  a2[54] = vqsubq_s16(v541, v538);
  a2[55] = vqsubq_s16(v547, v544);
  a2[56] = vqsubq_s16(v560, v659);
  a2[57] = vqsubq_s16(v572, v564);
  a2[58] = vqsubq_s16(v580, v576);
  a2[59] = vqsubq_s16(v588, v584);
  a2[60] = vqsubq_s16(v591, v595);
  a2[61] = vqsubq_s16(v603, v598);
  result = vqsubq_s16(v611, v607);
  a2[62] = result;
  a2[63] = vqsubq_s16(v628, v621);
  return result;
}