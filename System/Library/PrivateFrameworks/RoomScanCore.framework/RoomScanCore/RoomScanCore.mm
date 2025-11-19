id sub_2621C441C(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v174 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (!a1)
  {
    v130 = v9;
    v135 = 0;
    goto LABEL_144;
  }

  v133 = a5;
  v134 = a4;
  v135 = v9;
  v12 = objc_msgSend_copy(v9, v10, v11);
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v157 = &unk_2874EED80;
  v168 = 0;
  v169 = &unk_2874EEE20;
  v170 = 0;
  v172 = 0;
  v171 = 0;
  sub_2621C5224(v173);
  memset(&v173[176], 0, 24);
  v136 = v12;
  sub_262245CF8(&v157, v136);
  sub_262349810(a1 + 8, *(&v159 + 1), v160, &v157);
  sub_262349810(a1 + 8, v161, *(&v161 + 1), &v157);
  sub_262349810(a1 + 8, *(&v162 + 1), v163, &v157);
  v14 = *(&v164 + 1);
  v15 = v164;
  if (v164 != *(&v164 + 1))
  {
    while (1)
    {
      sub_26229EFDC(&v149, v15, &v159 + 1, (a1 + 16));
      if (v149 != 1)
      {
        break;
      }

      v16 = sub_26225A954(&v157, &v149 + 1);
      *&v19 = sub_2621DCC54(*(v15 + 16), *(v15 + 24), v16[2], v16[3]);
      v20 = v19;
      DWORD2(v20) = *(v15 + 64);
      v22 = v21;
      DWORD2(v22) = *(v15 + 68);
      *(v15 + 16) = v19;
      *(v15 + 24) = v21;
      DWORD2(v19) = DWORD2(v22);
      DWORD2(v21) = DWORD2(v20);
      *(v15 + 32) = v20;
      *(v15 + 48) = v22;
      v23 = *(v15 + 8);
      src = v19;
      v142 = v22;
      v143 = v21;
      *v144 = v20;
      if (v23)
      {
        objc_copyStruct((v23 + 272), &src, 64, 1, 0);
      }

      v24 = objc_msgSend_parentIdentifier(*&v16[1], *&v17, *&v18);
      sub_26225A86C(v15, v24);

      v25 = v16[1];
      if (v25)
      {
        v25.i32[0] = *(*&v25 + 120);
      }

      v26 = *(v15 + 8);
      if (v26)
      {
        *(v26 + 120) = v25.i32[0];
      }

LABEL_22:

      if (SHIBYTE(v150) < 0)
      {
        operator delete(*(&v149 + 1));
      }

      v15 += 176;
      if (v15 == v14)
      {
        goto LABEL_25;
      }
    }

    sub_26229EFDC(&v137, v15, &v158, (a1 + 16));
    if (v137 == 1)
    {
      v27 = sub_262259864(&v157, __p);
      *&v28 = sub_2621DCC54(*(v15 + 16), *(v15 + 24), v27[2], v27[3]);
      v29 = v28;
      DWORD2(v29) = *(v15 + 64);
      v31 = v30;
      DWORD2(v31) = *(v15 + 68);
      *(v15 + 16) = v28;
      *(v15 + 24) = v30;
      DWORD2(v28) = DWORD2(v31);
      DWORD2(v30) = DWORD2(v29);
      *(v15 + 32) = v29;
      *(v15 + 48) = v31;
      v32 = *(v15 + 8);
      src = v28;
      v142 = v31;
      v143 = v30;
      *v144 = v29;
      if (v32)
      {
        objc_copyStruct((v32 + 272), &src, 64, 1, 0);
      }

      sub_26225A86C(v15, v140);
      v33 = v27[1];
      if (v33)
      {
        v33.i32[0] = *(*&v33 + 116);
      }

      v34 = *(v15 + 8);
      if (!v34)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_26225A86C(v15, 0);
      v34 = *(v15 + 8);
      if (!v34)
      {
        goto LABEL_20;
      }

      v33.i32[0] = -1;
    }

    *(v34 + 120) = v33.i32[0];
LABEL_20:

    if (v139 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_22;
  }

LABEL_25:
  if (a3)
  {
    *&v150 = 0;
    v35 = 0uLL;
    v149 = 0u;
    v36 = *(&v164 + 1);
    v37 = v164;
    if (v164 != *(&v164 + 1))
    {
      while (1)
      {
        v38 = *(v37 + 175);
        if ((v38 & 0x8000000000000000) != 0)
        {
          if (!*(v37 + 160))
          {
            goto LABEL_52;
          }
        }

        else if (!*(v37 + 175))
        {
          goto LABEL_52;
        }

        v39 = v160;
        if (*(&v159 + 1) != v160)
        {
          v40 = *(&v159 + 1) + 152;
          do
          {
            v41 = *(v40 + 23);
            if (v41 < 0)
            {
              v42 = *(v40 + 8);
              if (!v42)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (!*(v40 + 23))
              {
                goto LABEL_50;
              }

              v42 = *(v40 + 8);
            }

            if ((v38 & 0x80000000) == 0)
            {
              v13 = v38;
            }

            else
            {
              v13 = *(v37 + 160);
            }

            if (v41 >= 0)
            {
              v42 = *(v40 + 23);
            }

            if (v13 == v42)
            {
              v43 = (v38 & 0x80000000) == 0 ? (v37 + 152) : *(v37 + 152);
              v44 = v41 >= 0 ? v40 : *v40;
              if (!memcmp(v43, v44, v13))
              {
                goto LABEL_52;
              }
            }

LABEL_50:
            v45 = v40 + 24;
            v40 += 176;
          }

          while (v45 != v39);
        }

        sub_262246794(&src, v37, v13);
        sub_26224663C(&v149, &src, v46);
        sub_2621C50C4(&src);
LABEL_52:
        v37 += 176;
        if (v37 == v36)
        {
          v36 = *(&v164 + 1);
          v37 = v164;
          v35 = v149;
          v47 = v150;
          goto LABEL_55;
        }
      }
    }

    v47 = 0;
LABEL_55:
    v164 = v35;
    *&v149 = v37;
    *(&v149 + 1) = v36;
    v48 = v165;
    *&v165 = v47;
    *&v150 = v48;
    *&src = &v149;
    sub_2621C5004(&src);
  }

  if (!v134)
  {
    goto LABEL_93;
  }

  v149 = 0uLL;
  *&v150 = 0;
  v50 = *(&v159 + 1);
  v49 = v160;
  if (*(&v159 + 1) == v160)
  {
    goto LABEL_85;
  }

  do
  {
    v51 = *(&v164 + 1);
    if (v164 != *(&v164 + 1))
    {
      v52 = (v50 + 152);
      v53 = v164 + 152;
      do
      {
        v54 = *(v53 + 23);
        if (v54 < 0)
        {
          if (!*(v53 + 8))
          {
            goto LABEL_81;
          }
        }

        else if (!*(v53 + 23))
        {
          goto LABEL_81;
        }

        v55 = *(v50 + 175);
        if (v55 < 0)
        {
          v56 = *(v50 + 160);
          if (!v56)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (!*(v50 + 175))
          {
            goto LABEL_81;
          }

          v56 = *(v50 + 160);
        }

        if (v54 >= 0)
        {
          v13 = *(v53 + 23);
        }

        else
        {
          v13 = *(v53 + 8);
        }

        if (v55 >= 0)
        {
          v56 = *(v50 + 175);
        }

        if (v13 == v56)
        {
          v57 = v54 >= 0 ? v53 : *v53;
          v58 = *v52;
          v59 = (v55 >= 0 ? v50 + 152 : *v52);
          if (!memcmp(v57, v59, v13))
          {
            goto LABEL_83;
          }
        }

LABEL_81:
        v60 = v53 + 24;
        v53 += 176;
      }

      while (v60 != v51);
    }

    sub_262246794(&src, v50, v13);
    sub_26224663C(&v149, &src, v61);
    sub_2621C50C4(&src);
LABEL_83:
    v50 += 176;
  }

  while (v50 != v49);
  v50 = *(&v159 + 1);
  v49 = v160;
LABEL_85:
  if (v49 != v50)
  {
    v62 = (v49 - 176);
    v63 = v62;
    v64 = v62;
    do
    {
      v65 = *v64;
      v64 -= 22;
      (*v65)(v63);
      v62 -= 22;
      v66 = v63 == v50;
      v63 = v64;
    }

    while (!v66);
  }

  *&v160 = v50;
  v67 = *(&v149 + 1);
  for (i = v149; i != v67; i += 176)
  {
    sub_26224663C(&v159 + 1, i, v13);
  }

  *&src = &v149;
  sub_2621C5004(&src);
LABEL_93:
  if (v133)
  {
    v69 = *(a1 + 96);
    v153 = *(a1 + 80);
    v154 = v69;
    v155 = *(a1 + 112);
    v156 = *(a1 + 128);
    v70 = *(a1 + 32);
    v149 = *(a1 + 16);
    v150 = v70;
    v71 = *(a1 + 64);
    v151 = *(a1 + 48);
    v152 = v71;
    HIDWORD(v149) = 1056964608;
    v137 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v73 = *(&v159 + 1);
    v72 = v160;
    if (*(&v159 + 1) != v160)
    {
      do
      {
        v74 = v163;
        if (*(&v162 + 1) == v163)
        {
          goto LABEL_111;
        }

        v75 = 0;
        v76 = *(&v162 + 1) + 176;
        do
        {
          sub_26229DAC8(&src, v73 + 2, (v76 - 160), &v149);
          if (LOBYTE(v144[0]) == 1 && ((v77.n128_u64[0] = v73[2], sub_26229E5CC(v148, v77, v73[3], *(v76 - 160), *(v76 - 152)), (v148[0].i8[0] & 1) == 0) || (v78 = vsub_f32(v148[1], v148[2]), sqrtf(vaddv_f32(vmul_f32(v78, v78))) < 0.5)))
          {
            v75 = 1;
            v79 = 1;
          }

          else
          {
            v79 = 0;
          }

          if (v146)
          {
            v147 = v146;
            operator delete(v146);
          }

          if (v144[1])
          {
            v145 = v144[1];
            operator delete(v144[1]);
          }

          if (v76 == v74)
          {
            v80 = 1;
          }

          else
          {
            v80 = v79;
          }

          v76 += 176;
        }

        while (v80 != 1);
        if ((v75 & 1) == 0)
        {
LABEL_111:
          sub_262246794(&src, v73, v13);
          sub_26224663C(&v137, &src, v81);
          sub_2621C50C4(&src);
        }

        v73 += 22;
      }

      while (v73 != v72);
      v73 = *(&v159 + 1);
      v72 = v160;
    }

    if (v72 != v73)
    {
      v82 = v72 - 22;
      v83 = v82;
      v84 = v82;
      do
      {
        v85 = *v84;
        v84 -= 22;
        (*v85)(v83);
        v82 -= 22;
        v66 = v83 == v73;
        v83 = v84;
      }

      while (!v66);
    }

    *&v160 = v73;
    v87 = v137;
    v86 = __p[0];
    while (v87 != v86)
    {
      sub_26224663C(&v159 + 1, v87, v13);
      v87 += 176;
    }

    *&src = &v137;
    sub_2621C5004(&src);
  }

  v90 = objc_msgSend_array(MEMORY[0x277CBEB18], v88, v89);
  v93 = objc_msgSend_array(MEMORY[0x277CBEB18], v91, v92);
  v96 = objc_msgSend_array(MEMORY[0x277CBEB18], v94, v95);
  v99 = objc_msgSend_array(MEMORY[0x277CBEB18], v97, v98);
  v104 = objc_msgSend_array(MEMORY[0x277CBEB18], v100, v101);
  v106 = *(&v158 + 1);
  for (j = v158; j != v106; j += 176)
  {
    v107 = objc_msgSend_copy(*(j + 8), v102, v103);
    v109 = v107;
    if (v107)
    {
      *(v107 + 104) = 0;
    }

    objc_msgSend_addObject_(v90, v108, v107);
  }

  v110 = *(&v159 + 1);
  for (k = v160; v110 != k; v110 += 176)
  {
    v112 = objc_msgSend_copy(*(v110 + 8), v102, v103);
    v114 = v112;
    if (v112)
    {
      *(v112 + 104) = 3;
    }

    objc_msgSend_addObject_(v93, v113, v112);
  }

  v116 = *(&v161 + 1);
  for (m = v161; m != v116; m += 176)
  {
    v117 = objc_msgSend_copy(*(m + 8), v102, v103);
    v119 = v117;
    if (v117)
    {
      *(v117 + 104) = 1;
    }

    objc_msgSend_addObject_(v96, v118, v117);
  }

  v120 = *(&v162 + 1);
  for (n = v163; v120 != n; v120 += 176)
  {
    v122 = objc_msgSend_copy(*(v120 + 8), v102, v103);
    v124 = v122;
    if (v122)
    {
      *(v122 + 104) = 2;
    }

    objc_msgSend_addObject_(v99, v123, v122);
  }

  v126 = *(&v164 + 1);
  for (ii = v164; ii != v126; ii += 176)
  {
    v127 = objc_msgSend_copy(*(ii + 8), v102, v103);
    v129 = v127;
    if (v127)
    {
      *(v127 + 104) = 4;
    }

    objc_msgSend_addObject_(v104, v128, v127);
  }

  sub_2622AE900(v135, v90);
  sub_2622AE920(v135, v93);
  sub_2622AE910(v135, v96);
  sub_26223FCDC(v135, v99);
  sub_26223FCBC(v135, v104);

  sub_2621C4F2C(&v157);
  v130 = 0;
LABEL_144:

  v131 = *MEMORY[0x277D85DE8];

  return v135;
}

void sub_2621C4DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_2621C4F2C(&a59);

  _Unwind_Resume(a1);
}

uint64_t sub_2621C4F2C(uint64_t a1)
{
  *a1 = &unk_2874EED80;
  v2 = (a1 + 8);
  v4 = (a1 + 384);
  sub_2621C5004(&v4);
  sub_2621C50C4(a1 + 208);
  sub_262353430((a1 + 176));
  v4 = (a1 + 152);
  sub_2621C512C(&v4);
  v4 = (a1 + 128);
  sub_2621C5004(&v4);
  v4 = (a1 + 104);
  sub_2621C5004(&v4);
  v4 = (a1 + 80);
  sub_2621C5004(&v4);
  v4 = (a1 + 56);
  sub_2621C5004(&v4);
  v4 = (a1 + 32);
  sub_2621C5004(&v4);
  v4 = v2;
  sub_2621C5004(&v4);
  return a1;
}

void sub_2621C5004(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 176;
      v7 = v4 - 176;
      v8 = v4 - 176;
      do
      {
        v9 = *v8;
        v8 -= 176;
        (*v9)(v7);
        v6 -= 176;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2621C50C4(uint64_t a1)
{
  *a1 = &unk_2874EEE40;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  return a1;
}

void sub_2621C512C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2621C51AC(uint64_t a1)
{
  sub_2621C50C4(a1);

  JUMPOUT(0x266727420);
}

void sub_2621C51E8(uint64_t a1)
{
  sub_2621C4F2C(a1);

  JUMPOUT(0x266727420);
}

double sub_2621C5224(uint64_t a1)
{
  *a1 = &unk_2874EEE40;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 70) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 80) = _D0;
  *(a1 + 88) = xmmword_2623A7600;
  result = NAN;
  *(a1 + 104) = 0xFFFFFFFF00000000;
  *(a1 + 128) = 0;
  *(a1 + 175) = 0;
  *(a1 + 152) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return result;
}

void sub_2621C52A8(void *a1, int a2)
{
  v49 = a2;
  v2 = a1[40];
  if (!v2)
  {
    return;
  }

  while (1)
  {
    v4 = *(v2 + 8);
    if (v4 <= a2)
    {
      break;
    }

LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      return;
    }
  }

  if (v4 < a2)
  {
    ++v2;
    goto LABEL_6;
  }

  v52 = &v49;
  v5 = *(sub_2621C580C((a1 + 39), a2) + 16);
  v52 = &v49;
  v6 = *(sub_2621C580C((a1 + 39), v49) + 17);
  sub_2621C58E4(a1 + 36, v49);
  v50 = v6;
  v51 = v5;
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v6 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = a1[24];
  if (v9)
  {
    v10 = (((v7 + 2654435769) << 6) + v8 + ((v7 + 2654435769) >> 2) + 2654435769u) ^ (v7 + 2654435769);
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = (((v7 + 2654435769) << 6) + v8 + ((v7 + 2654435769) >> 2) + 2654435769u) ^ (v7 + 2654435769);
      if (v10 >= *&v9)
      {
        v12 = v10 % *&v9;
      }
    }

    else
    {
      v12 = v10 & (*&v9 - 1);
    }

    v13 = a1[23];
    v14 = *(v13 + 8 * v12);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        v16 = *&v9 - 1;
        do
        {
          v17 = *(v15 + 1);
          if (v17 == v10)
          {
            v18 = v15[4];
            if (v18 == v5 && v15[5] == v6 || v18 == v6 && v15[5] == v5)
            {
              v19 = *(v15 + 1);
              if (v11.u32[0] > 1uLL)
              {
                if (v19 >= *&v9)
                {
                  v19 %= *&v9;
                }
              }

              else
              {
                v19 &= v16;
              }

              v20 = *(v13 + 8 * v19);
              do
              {
                v21 = v20;
                v20 = *v20;
              }

              while (v20 != v15);
              if (v21 == a1 + 25)
              {
                goto LABEL_52;
              }

              v22 = v21[1];
              if (v11.u32[0] > 1uLL)
              {
                if (v22 >= *&v9)
                {
                  v22 %= *&v9;
                }
              }

              else
              {
                v22 &= v16;
              }

              if (v22 != v19)
              {
LABEL_52:
                if (!*v15)
                {
                  goto LABEL_53;
                }

                v23 = *(*v15 + 8);
                if (v11.u32[0] > 1uLL)
                {
                  if (v23 >= *&v9)
                  {
                    v23 %= *&v9;
                  }
                }

                else
                {
                  v23 &= v16;
                }

                if (v23 != v19)
                {
LABEL_53:
                  *(v13 + 8 * v19) = 0;
                }
              }

              v24 = *v15;
              if (*v15)
              {
                v25 = *(v24 + 8);
                if (v11.u32[0] > 1uLL)
                {
                  if (v25 >= *&v9)
                  {
                    v25 %= *&v9;
                  }
                }

                else
                {
                  v25 &= v16;
                }

                if (v25 != v19)
                {
                  *(a1[23] + 8 * v25) = v21;
                  v24 = *v15;
                }
              }

              *v21 = v24;
              *v15 = 0;
              --a1[26];
              operator delete(v15);
              v5 = v51;
              break;
            }
          }

          else
          {
            if (v11.u32[0] > 1uLL)
            {
              if (v17 >= *&v9)
              {
                v17 %= *&v9;
              }
            }

            else
            {
              v17 &= v16;
            }

            if (v17 != v12)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  v52 = &v51;
  v26 = sub_2621C6404((a1 + 17), v5);
  sub_2621C64D0(v26 + 5, v50);
  v52 = &v50;
  v27 = sub_2621C6404((a1 + 17), v50);
  sub_2621C64D0(v27 + 5, v51);
  v52 = &v51;
  v28 = sub_2621C65A4(a1 + 31, v51)[3];
  v52 = &v51;
  v29 = sub_2621C65A4(a1 + 31, v51);
  v30 = v29[4];
  if (v28 != v30)
  {
    while (*v28 != v50)
    {
      v28 += 4;
      if (v28 == v30)
      {
        v28 = v29[4];
        break;
      }
    }
  }

  v52 = &v51;
  if (v28 != sub_2621C65A4(a1 + 31, v51)[4])
  {
    v52 = &v51;
    v31 = sub_2621C65A4(a1 + 31, v51);
    v32 = v31[4];
    v33 = v32 - (v28 + 4);
    if (v32 != v28 + 4)
    {
      memmove(v28, v28 + 4, v32 - (v28 + 4));
    }

    v31[4] = &v28[v33];
  }

  v52 = &v50;
  v34 = sub_2621C65A4(a1 + 31, v50)[3];
  v52 = &v50;
  v35 = sub_2621C65A4(a1 + 31, v50);
  v36 = v35[4];
  if (v34 != v36)
  {
    while (*v34 != v51)
    {
      v34 += 4;
      if (v34 == v36)
      {
        v34 = v35[4];
        break;
      }
    }
  }

  v52 = &v50;
  if (v34 != sub_2621C65A4(a1 + 31, v50)[4])
  {
    v52 = &v50;
    v37 = sub_2621C65A4(a1 + 31, v50);
    v38 = v37[4];
    v39 = v38 - (v34 + 4);
    if (v38 != v34 + 4)
    {
      memmove(v34, v34 + 4, v38 - (v34 + 4));
    }

    v37[4] = &v34[v39];
  }

  v40 = a1[20];
  if (v40 != a1 + 21)
  {
    do
    {
      sub_2621C64D0(v40 + 6, v49);
      sub_2621C64D0(v40 + 9, v49);
      v41 = v40[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v40[2];
          v43 = *v42 == v40;
          v40 = v42;
        }

        while (!v43);
      }

      v40 = v42;
    }

    while (v42 != a1 + 21);
  }

  v45 = a1[55];
  v44 = a1[56];
  while (v45 != v44)
  {
    v46 = v45[1];
    if (*v45 == v49 || (v43 = v46 == v49, v46 = v49, v43))
    {
      sub_2621C5DC4(a1 + 58, *v45, v46);
      v47 = a1[56];
      if (v45 + 2 == v47)
      {
        v44 = v45;
      }

      else
      {
        v48 = ((v47 - v45) & 0xFFFFFFFFFFFFFFF8) - 8;
        memmove(v45, v45 + 2, v48);
        v44 = (v45 + v48);
      }

      a1[56] = v44;
    }

    else
    {
      v45 += 2;
    }
  }
}

uint64_t sub_2621C57C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_2621C580C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_2621C58E4(void *a1, int a2)
{
  v51 = a2;
  v52 = &v51;
  v3 = sub_2621C6404(a1, a2);
  v4 = v3[5];
  v5 = v3 + 6;
  if (v4 != v3 + 6)
  {
    do
    {
      v6 = *(v4 + 7);
      v52 = v4 + 7;
      v7 = sub_2621C6404(a1, v6);
      sub_2621C64D0(v7 + 5, v51);
      sub_2621C5DC4(a1 + 6, v51, *(v4 + 7));
      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v5);
  }

  v11 = a1[1];
  if (v11)
  {
    v12 = a1 + 1;
    v13 = a1[1];
    do
    {
      if (*(v13 + 32) >= v51)
      {
        v12 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 32) < v51));
    }

    while (v13);
    if (v12 != a1 + 1 && v51 >= *(v12 + 8))
    {
      v14 = v12[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        v16 = v12;
        do
        {
          v15 = v16[2];
          v10 = *v15 == v16;
          v16 = v15;
        }

        while (!v10);
      }

      if (*a1 == v12)
      {
        *a1 = v15;
      }

      --a1[2];
      sub_2621C608C(v11, v12);
      sub_2621C6C04(v12[6]);
      operator delete(v12);
    }
  }

  v17 = a1[4];
  if (v17)
  {
    v18 = a1 + 4;
    v19 = a1[4];
    do
    {
      if (*(v19 + 32) >= v51)
      {
        v18 = v19;
      }

      v19 = *(v19 + 8 * (*(v19 + 32) < v51));
    }

    while (v19);
    if (v18 != a1 + 4 && v51 >= *(v18 + 8))
    {
      v20 = v18[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        v22 = v18;
        do
        {
          v21 = v22[2];
          v10 = *v21 == v22;
          v22 = v21;
        }

        while (!v10);
      }

      if (a1[3] == v18)
      {
        a1[3] = v21;
      }

      --a1[5];
      sub_2621C608C(v17, v18);
      operator delete(v18);
    }
  }

  v24 = a1[11];
  v23 = a1[12];
  if (v24 != v23)
  {
    while (*v24 != v51)
    {
      v24 += 4;
      if (v24 == v23)
      {
        v24 = a1[12];
        break;
      }
    }
  }

  v25 = v23 - (v24 + 4);
  if (v23 != v24 + 4)
  {
    memmove(v24, v24 + 4, v23 - (v24 + 4));
  }

  a1[12] = &v24[v25];
  v52 = &v51;
  v26 = sub_2621C65A4(a1 + 14, v51);
  v27 = v26[3];
  for (i = v26[4]; v27 != i; ++v27)
  {
    v50 = *v27;
    v52 = &v50;
    v29 = sub_2621C65A4(a1 + 14, v50);
    v52 = &v50;
    v30 = sub_2621C65A4(a1 + 14, v50)[3];
    v52 = &v50;
    v31 = sub_2621C65A4(a1 + 14, v50);
    v32 = v31[4];
    if (v30 != v32)
    {
      while (*v30 != v51)
      {
        v30 += 4;
        if (v30 == v32)
        {
          v30 = v31[4];
          break;
        }
      }
    }

    v33 = v29[4];
    v34 = v33 - (v30 + 4);
    if (v33 != v30 + 4)
    {
      memmove(v30, v30 + 4, v33 - (v30 + 4));
    }

    v29[4] = &v30[v34];
  }

  v35 = a1[15];
  if (v35)
  {
    v36 = vcnt_s8(v35);
    v36.i16[0] = vaddlv_u8(v36);
    if (v36.u32[0] > 1uLL)
    {
      v37 = v51;
      if (v35 <= v51)
      {
        v37 = v51 % v35;
      }
    }

    else
    {
      v37 = (v35 - 1) & v51;
    }

    v38 = a1[14];
    v39 = *(v38 + 8 * v37);
    if (v39)
    {
      v40 = *v39;
      if (*v39)
      {
        v41 = v35 - 1;
        do
        {
          v42 = v40[1];
          if (v42 == v51)
          {
            if (*(v40 + 4) == v51)
            {
              v43 = v40[1];
              if (v36.u32[0] > 1uLL)
              {
                if (v43 >= v35)
                {
                  v43 %= v35;
                }
              }

              else
              {
                v43 &= v41;
              }

              v44 = *(v38 + 8 * v43);
              do
              {
                v45 = v44;
                v44 = *v44;
              }

              while (v44 != v40);
              if (v45 == a1 + 16)
              {
                goto LABEL_89;
              }

              v46 = v45[1];
              if (v36.u32[0] > 1uLL)
              {
                if (v46 >= v35)
                {
                  v46 %= v35;
                }
              }

              else
              {
                v46 &= v41;
              }

              if (v46 != v43)
              {
LABEL_89:
                if (!*v40)
                {
                  goto LABEL_90;
                }

                v47 = *(*v40 + 8);
                if (v36.u32[0] > 1uLL)
                {
                  if (v47 >= v35)
                  {
                    v47 %= v35;
                  }
                }

                else
                {
                  v47 &= v41;
                }

                if (v47 != v43)
                {
LABEL_90:
                  *(v38 + 8 * v43) = 0;
                }
              }

              v48 = *v40;
              if (*v40)
              {
                v49 = *(v48 + 8);
                if (v36.u32[0] > 1uLL)
                {
                  if (v49 >= v35)
                  {
                    v49 %= v35;
                  }
                }

                else
                {
                  v49 &= v41;
                }

                if (v49 != v43)
                {
                  *(a1[14] + 8 * v49) = v45;
                  v48 = *v40;
                }
              }

              *v45 = v48;
              *v40 = 0;
              --a1[17];
              sub_2621C69D8(1, v40);
              return;
            }
          }

          else
          {
            if (v36.u32[0] > 1uLL)
            {
              if (v42 >= v35)
              {
                v42 %= v35;
              }
            }

            else
            {
              v42 &= v41;
            }

            if (v42 != v37)
            {
              return;
            }
          }

          v40 = *v40;
        }

        while (v40);
      }
    }
  }
}

void sub_2621C5DC4(void *a1, int a2, int a3)
{
  v4 = sub_2621C5F34(a1, a2, a3);
  if (v4)
  {
    v5 = a1[1];
    v6 = v4[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(*a1 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != v4);
    if (v9 == a1 + 2)
    {
      goto LABEL_20;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v6)
    {
LABEL_20:
      if (!*v4)
      {
        goto LABEL_21;
      }

      v11 = *(*v4 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_21:
        *(*a1 + 8 * v6) = 0;
      }
    }

    v12 = *v4;
    if (*v4)
    {
      v13 = *(v12 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }
      }

      else
      {
        v13 &= *&v5 - 1;
      }

      if (v13 != v6)
      {
        *(*a1 + 8 * v13) = v9;
        v12 = *v4;
      }
    }

    *v9 = v12;
    *v4 = 0;
    --a1[3];

    sub_2621C6030(1, v4);
  }
}

uint64_t *sub_2621C5F34(void *a1, int a2, int a3)
{
  if (a3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = (((v3 + 2654435769) << 6) + v4 + ((v3 + 2654435769) >> 2) + 2654435769u) ^ (v3 + 2654435769);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v5)
    {
      v8 = v6 % *&v5;
    }
  }

  else
  {
    v8 = v6 & (*&v5 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      v12 = *(result + 4);
      if (v12 == a2 && *(result + 5) == a3 || v12 == a3 && *(result + 5) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2621C6030(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[12];
    if (v3)
    {
      __p[13] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_2621C608C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *sub_2621C6404(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_2621C64D0(uint64_t **a1, int a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      if (*(v6 + 7) >= a2)
      {
        v5 = v6;
      }

      v6 = v6[*(v6 + 7) < a2];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 7) <= a2)
    {
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = v5;
        do
        {
          v8 = v9[2];
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*a1 == v5)
      {
        *a1 = v8;
      }

      a1[2] = (a1[2] - 1);
      sub_2621C608C(v3, v5);

      operator delete(v5);
    }
  }
}

uint64_t *sub_2621C65A4(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_2621C67D4(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_2621C6A34();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_2621C69D8(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_2621C6A34()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_2874EF680, MEMORY[0x277D82620]);
}

uint64_t *sub_2621C6A68(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_2621C6C04(void *a1)
{
  if (a1)
  {
    sub_2621C6C04(*a1);
    sub_2621C6C04(a1[1]);

    operator delete(a1);
  }
}

uint64_t *sub_2621C6C50(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2621C6A68(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *sub_2621C6CA8(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 32);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

uint64_t *sub_2621C6E44(uint64_t *a1, int a2)
{
  if (!a1)
  {
LABEL_8:
    sub_2621C84A8("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 8);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_2621C6E90(uint64_t a1, unint64_t a2, int a3, int a4)
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (a4 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = (((v4 + 2654435769) << 6) + v5 + ((v4 + 2654435769) >> 2) + 2654435769u) ^ (v4 + 2654435769);
  v7 = vcnt_s8(a2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= a2)
    {
      v8 = v6 % a2;
    }
  }

  else
  {
    v8 = v6 & (a2 - 1);
  }

  v9 = *(a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v6 == v11)
    {
      v12 = *(result + 4);
      if (v12 == a3 && *(result + 5) == a4 || v12 == a4 && *(result + 5) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= a2)
        {
          v11 %= a2;
        }
      }

      else
      {
        v11 &= a2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2621C6F84(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2621C7004(uint64_t a1)
{
  sub_2621C7150(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2621C7040(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[12];
      if (v4)
      {
        v2[13] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_2621C70A8(void *a1)
{
  if (a1)
  {
    sub_2621C70A8(*a1);
    sub_2621C70A8(a1[1]);
    sub_2621C6C04(a1[6]);

    operator delete(a1);
  }
}

uint64_t sub_2621C70FC(uint64_t a1)
{
  sub_2621C7004(a1 + 112);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_2621C7040(a1 + 48);
  sub_2621C6C04(*(a1 + 32));
  sub_2621C70A8(*(a1 + 8));
  return a1;
}

void sub_2621C7150(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        v1[4] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t *sub_2621C719C(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2621C7250()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, &unk_2874EEF70, MEMORY[0x277D82660]);
}

uint64_t sub_2621C729C(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_2621C74C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2621C7510(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_2621C729C(a1, *a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_2621C7588(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2621C67D4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_2621C729C(a1, *(i + 4));
  }

  return a1;
}

void sub_2621C7600(uint64_t *a1, int *a2, int *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = *v4;
        *(v8 + 4) = *v4;
        v10 = *v8;
        v8[1] = v11;
        if (!sub_2621C7728(a1, v11, v11))
        {
          sub_2621C783C(a1, v8);
        }

        ++v4;
        if (v10)
        {
          v12 = v4 == a3;
        }

        else
        {
          v12 = 1;
        }

        v8 = v10;
      }

      while (!v12);
    }

    if (v10)
    {
      do
      {
        v13 = *v10;
        operator delete(v10);
        v10 = v13;
      }

      while (v13);
    }
  }

  if (v4 != a3)
  {
    v14 = v4;
    do
    {
      v15 = *v14++;
      sub_2621C729C(a1, v15);
    }

    while (v14 != a3);
  }
}

void sub_2621C76F4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *sub_2621C7728(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 4) == a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    sub_2621C67D4(a1, v15);
  }

  return 0;
}

uint64_t *sub_2621C783C(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t sub_2621C78F0(void *a1, void *a2)
{
  v4 = a1[2];
  memset(__p, 0, sizeof(__p));
  v5 = a2[2];
  if (v5)
  {
    v6 = (v4 + 296);
    v7 = (v4 + 320);
    do
    {
      v8 = *v6;
      if (*v6)
      {
        v9 = *(v5 + 4);
        v10 = v6;
        do
        {
          if (*(v8 + 32) >= v9)
          {
            v10 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 32) < v9));
        }

        while (v8);
        if (v10 != v6 && v9 >= *(v10 + 8))
        {
          v11 = v10[5];
          v12 = v10 + 6;
          if (v11 != v10 + 6)
          {
            do
            {
              if (!sub_2621C719C(a2, *(v11 + 7)))
              {
                v43[0] = 0;
                v43[1] = 0;
                v42 = v43;
                v13 = *v7;
                if (*v7)
                {
                  v14 = *(v5 + 4);
                  v15 = v7;
                  v16 = *v7;
                  do
                  {
                    if (v16[8] >= v14)
                    {
                      v15 = v16;
                    }

                    v16 = *&v16[2 * (v16[8] < v14)];
                  }

                  while (v16);
                  if (v15 != v7 && v14 >= v15[8])
                  {
                    sub_2621C8094(&v42, v15[16]);
                    sub_2621C8094(&v42, v15[17]);
                    v13 = *v7;
                  }

                  v40 = 0;
                  v41 = 0;
                  v17 = &v40;
                  v39 = &v40;
                  if (v13)
                  {
                    v18 = *(v11 + 7);
                    v19 = v7;
                    do
                    {
                      if (v13[8] >= v18)
                      {
                        v19 = v13;
                      }

                      v13 = *&v13[2 * (v13[8] < v18)];
                    }

                    while (v13);
                    v17 = &v40;
                    if (v19 != v7)
                    {
                      v17 = &v40;
                      if (v18 >= v19[8])
                      {
                        sub_2621C8094(&v39, v19[16]);
                        sub_2621C8094(&v39, v19[17]);
                        v17 = v39;
                      }
                    }
                  }
                }

                else
                {
                  v40 = 0;
                  v41 = 0;
                  v17 = &v40;
                  v39 = &v40;
                }

                v36 = 0;
                v37 = 0;
                v38 = 0;
                v46 = v17;
                v47 = v42;
                v45 = 0;
                if (v17 == &v40)
                {
                  v23 = 0;
                  v22 = 0;
                }

                else
                {
                  do
                  {
                    v20 = v47;
                    v47 = sub_2621C8154(v47, v43, *(v17 + 7));
                    sub_2621C8324(v47 == v20, &v47, &v46, &v36, &v45);
                    if (v47 == v43)
                    {
                      break;
                    }

                    v21 = v46;
                    v46 = sub_2621C8154(v46, &v40, *(v47 + 7));
                    sub_2621C8324(v46 == v21, &v47, &v46, &v36, &v45);
                    v17 = v46;
                  }

                  while (v46 != &v40);
                  v23 = v36;
                  v22 = v37;
                }

                if (v22 - v23 == 4)
                {
                  sub_2621C7CD0(__p, (v22 - 4));
                }

                if (v23)
                {
                  operator delete(v23);
                }

                sub_2621C6C04(v40);
                sub_2621C6C04(v43[0]);
              }

              v24 = v11[1];
              if (v24)
              {
                do
                {
                  v25 = v24;
                  v24 = *v24;
                }

                while (v24);
              }

              else
              {
                do
                {
                  v25 = v11[2];
                  v26 = *v25 == v11;
                  v11 = v25;
                }

                while (!v26);
              }

              v11 = v25;
            }

            while (v25 != v12);
          }
        }
      }

      v5 = *v5;
    }

    while (v5);
  }

  sub_2621C7F9C(&v42, __p);
  v27 = v42;
  v28 = v43[0];
  if (v42)
  {
    operator delete(v42);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if ((v28 - v27) <= 4)
  {
    for (i = a2[2]; i; i = *i)
    {
      sub_2621C7CD0(a1[3], i + 4);
      v30 = a1[2];
      v31 = *(v30 + 320);
      if (v31)
      {
        v32 = v30 + 320;
        v33 = *(i + 4);
        v34 = v30 + 320;
        do
        {
          if (*(v31 + 32) >= v33)
          {
            v34 = v31;
          }

          v31 = *(v31 + 8 * (*(v31 + 32) < v33));
        }

        while (v31);
        if (v34 != v32 && v33 >= *(v34 + 32))
        {
          sub_2621C7DA8(a1[4], (v34 + 40));
        }
      }
    }
  }

  return 1;
}

void sub_2621C7C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621C7CD0(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_2621CBEB0();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2621C7F54(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_2621C7DA8(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_2621CBEB0();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2621C7E7C(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void sub_2621C7E7C(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2621C7EC4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2621C7F20(exception, a1);
  __cxa_throw(exception, &unk_2874EF650, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2621C7F20(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2621C7F54(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_2621C7F9C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  v5 = v4;
  if (v3 != v4)
  {
    v6 = v3;
    v7 = v3;
    do
    {
      if (sub_2621C729C(v9, *v7))
      {
        *v6++ = *v7;
      }

      ++v7;
    }

    while (v7 != v5);
    v3 = v6;
  }

  if (v3 != v5)
  {
    *(a1 + 8) = v3;
  }

  return sub_2621C74C4(v9);
}

void sub_2621C8070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2621C74C4(&a9);
  if (v10)
  {
    *(v9 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2621C8094(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *sub_2621C8154(void *a1, void *a2, int a3)
{
  if (a1 != a2)
  {
    if (*(a1 + 7) >= a3)
    {
      return a1;
    }

    v3 = 1;
LABEL_4:
    if (v3)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        if (v5 == a2)
        {
          v9 = v3;
          goto LABEL_26;
        }

        v6 = v5[1];
        v7 = v5;
        if (v6)
        {
          do
          {
            v5 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v5 = v7[2];
            v8 = *v5 == v7;
            v7 = v5;
          }

          while (!v8);
        }

        ++v4;
      }

      while (v4 != v3);
      v9 = v3;
      v4 = v3;
    }

    else
    {
      v9 = 0;
      v4 = 0;
      v5 = a1;
    }

LABEL_26:
    while (v5 != a2 && *(v5 + 7) < a3)
    {
      v3 *= 2;
      a1 = v5;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      v4 = 0;
      v9 = -v3;
      if (-v3 > 1)
      {
        v10 = -v3;
      }

      else
      {
        v10 = 1;
      }

      while (v5 != a2)
      {
        v11 = *v5;
        v12 = v5;
        if (*v5)
        {
          do
          {
            v5 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v5 = v12[2];
            v8 = *v5 == v12;
            v12 = v5;
          }

          while (v8);
        }

        if (++v4 == v10)
        {
          v4 = v10;
          goto LABEL_26;
        }
      }
    }

    a2 = v5;
    v13 = v4 - v9 + v3;
    if (!v13)
    {
      return a1;
    }

    if (v13 != 1)
    {
      do
      {
        v14 = v13 >> 1;
        v15 = a1;
        if (v13 >= 2)
        {
          v16 = v13 >> 1;
          v17 = a1;
          do
          {
            v18 = v17[1];
            if (v18)
            {
              do
              {
                v15 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v15 = v17[2];
                v8 = *v15 == v17;
                v17 = v15;
              }

              while (!v8);
            }

            v17 = v15;
          }

          while (v16-- > 1);
        }

        if (*(v15 + 7) < a3)
        {
          v20 = v15[1];
          if (v20)
          {
            do
            {
              a1 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a1 = v15[2];
              v8 = *a1 == v15;
              v15 = a1;
            }

            while (!v8);
          }

          v14 = v13 + ~v14;
        }

        v13 = v14;
      }

      while (v14);
      return a1;
    }
  }

  return a2;
}

void sub_2621C8324(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (a1)
  {
    if (*a5 == 1)
    {
      sub_2621C7CD0(a4, (*a2 + 28));
      v8 = *a2;
      v9 = *(*a2 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
}

__n128 sub_2621C83FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2874EE088;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2621C84A8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2621C8504(exception, a1);
  __cxa_throw(exception, &unk_2874EF090, MEMORY[0x277D825F8]);
}

std::logic_error *sub_2621C8504(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *sub_2621C8538(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v4 = *a2;
  v2 = a2 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    do
    {
      v5 = result[1];
      v6 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v7 = result[1];
      v8 = result + 1;
      if (v5)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *(v3 + 8);
      if (*(v6 + 8) < v10)
      {
LABEL_8:
        if (v5)
        {
          v11 = v6 + 1;
        }

        else
        {
          v11 = result + 1;
        }
      }

      else
      {
        v11 = result + 1;
        if (v5)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v14 = v5;
              v15 = *(v5 + 32);
              if (v10 >= v15)
              {
                break;
              }

              v5 = *v14;
              v11 = v14;
              if (!*v14)
              {
                goto LABEL_12;
              }
            }

            if (v15 >= v10)
            {
              break;
            }

            v11 = v14 + 1;
            v5 = v14[1];
            if (!v5)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_12:
        operator new();
      }

      v12 = v3[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v3[2];
          v9 = *v13 == v3;
          v3 = v13;
        }

        while (!v9);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  return result;
}

uint64_t sub_2621C8844(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2621C67D4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v6 = *(i + 4);
    v5 = *(i + 5);
    if (v5 >= v6)
    {
      v7 = *(i + 4);
    }

    else
    {
      v7 = *(i + 5);
    }

    v8 = v7 + 2654435769;
    if (v5 <= v6)
    {
      v9 = *(i + 4);
    }

    else
    {
      v9 = *(i + 5);
    }

    v10 = (v9 + 2654435769 + (v8 << 6) + (v8 >> 2)) ^ v8;
    v11 = *(a1 + 8);
    if (!*&v11)
    {
      goto LABEL_27;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = (v9 + 2654435769 + (v8 << 6) + (v8 >> 2)) ^ v8;
      if (v10 >= *&v11)
      {
        v13 = v10 % *&v11;
      }
    }

    else
    {
      v13 = v10 & (*&v11 - 1);
    }

    v14 = *(*a1 + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        break;
      }

      if (v12.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_27;
      }

LABEL_26:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_27;
      }
    }

    v17 = *(v15 + 4);
    if ((v17 != v6 || *(v15 + 5) != v5) && (v17 != v5 || *(v15 + 5) != v6))
    {
      goto LABEL_26;
    }
  }

  return a1;
}

uint64_t sub_2621C8B60(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621C8EEC(result, a4);
  }

  return result;
}

void sub_2621C8BC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2621C8BDC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2621C67D4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 4);
      if (*&v6 <= v5)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t sub_2621C8E70(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621C8EEC(result, a4);
  }

  return result;
}

void sub_2621C8ED0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621C8EEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_2621C7F54(a2);
  }

  sub_2621CBEB0();
}

void sub_2621C8F2C(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_2621CBEB0();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2621C7F54(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_2621C9004(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2621CBEB0();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2621CBEC8(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_2621C90DC(float32x2_t *a1, uint64_t a2, int a3, unsigned __int8 a4, int a5, unsigned __int8 a6, int a7, float32x4_t a8, float32x4_t a9, float32x4_t a10)
{
  if (!a2)
  {
    return 0;
  }

  v13 = a2;
  v14 = *a9.f32;
  v15 = *a8.f32;
  v16 = a3;
  v17 = a5;
  v18 = vsub_f32(*a9.f32, *a8.f32);
  a9.f32[0] = -*&v18.i32[1];
  v19 = vzip1_s32(*a9.f32, v18);
  v20 = vsub_f32(v15, v14);
  v21 = vmul_f32(v20, v20);
  for (i = a1 + 1; ; i += 4)
  {
    if ((a4 & (v16 == 0)) != 0 || (a6 & (v17 == 0)) != 0)
    {
      goto LABEL_14;
    }

    v24 = i[-1];
    v23 = *i;
    *a8.f32 = v15;
    *a9.f32 = v14;
    *a10.f32 = v24;
    a8.i64[0] = sub_2621DD2E4(a8, a9, a10, *i);
    *a9.f32 = vsub_f32(v23, v24);
    *a10.f32 = vmul_f32(*a9.f32, v19);
    if (vaddv_f32(*a10.f32) != 0.0)
    {
      break;
    }

    if (v25)
    {
      goto LABEL_11;
    }

LABEL_14:
    --v17;
    --v16;
    if (!--v13)
    {
      return 0;
    }
  }

  if ((v25 & 1) == 0)
  {
    v26 = vadd_f32(*a10.f32, vdup_lane_s32(*a10.f32, 1));
    v27 = vmul_f32(vsub_f32(v15, v24), v19);
    *a8.f32 = vmla_n_f32(v24, *a9.f32, vdiv_f32(vadd_f32(v27, vdup_lane_s32(v27, 1)), v26).f32[0]);
    v28 = vsub_f32(*a8.f32, v24);
    if (sqrtf(vaddv_f32(vmul_f32(v28, v28))) >= 0.03)
    {
      v29 = vsub_f32(*a8.f32, v23);
      if (sqrtf(vaddv_f32(vmul_f32(v29, v29))) >= 0.03)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_11:
  if (a7)
  {
    v30 = vsub_f32(*a8.f32, v14);
    if (vaddv_f32(vmul_f32(v20, v30)) < 0.0)
    {
      goto LABEL_14;
    }

    v31 = vmul_f32(v30, v30);
    v32 = vsqrt_f32(vadd_f32(vzip1_s32(v21, v31), vzip2_s32(v21, v31)));
    if (vsub_f32(v32, vdup_lane_s32(v32, 1)).f32[0] <= 0.15)
    {
      goto LABEL_14;
    }
  }

  return 1;
}

float sub_2621C92AC(float32x2_t *a1, float32x2_t *a2, int a3)
{
  sub_2621C95C8(&v33, a1, a2);
  v6 = v33;
  v7 = v33 + 1;
  v8 = v33 == v34 || v7 == v34;
  v9 = v33;
  if (!v8)
  {
    v10 = *v33;
    v9 = v33;
    v11 = v33 + 1;
    do
    {
      v12 = *v11++;
      v13 = v12;
      if (v12 < v10)
      {
        v10 = v13;
        v9 = v7;
      }

      v7 = v11;
    }

    while (v11 != v34);
  }

  v14 = vsub_f32(a1[(v9 - v33) >> 1], a1[1 - ((v9 - v33) >> 1)]);
  v15 = vsub_f32(a2[(v9 - v33) & 1], a2[!((v9 - v33) & 1)]);
  if (a3)
  {
    v16 = vcvtq_f64_f32(v14);
    v17 = vcvtq_f64_f32(v15);
    v18 = vaddvq_f64(vmulq_f64(v16, v17));
    v19 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v16, v16), vmulq_f64(v17, v17)));
    v20 = v18 / fmax(vmulq_laneq_f64(v19, v19, 1).f64[0], 2.22507386e-308);
    v21 = 1.0;
    if (v20 <= 1.0)
    {
      v21 = v20;
    }

    if (v20 >= -1.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = -1.0;
    }

    v23 = acos(v22);
    v24 = 3.14159265;
    if (!v6)
    {
      return v23 * 180.0 / v24;
    }

LABEL_23:
    operator delete(v6);
    return v23 * 180.0 / v24;
  }

  v25 = vaddv_f32(vmul_f32(v14, v15));
  v26 = vmul_f32(v14, v14);
  v27 = vmul_f32(v15, v15);
  v28 = vsqrt_f32(vadd_f32(vzip1_s32(v26, v27), vzip2_s32(v26, v27)));
  v29 = v25 / fmaxf(vmul_lane_f32(v28, v28, 1).f32[0], 1.1755e-38);
  v30 = 1.0;
  if (v29 <= 1.0)
  {
    v30 = v29;
  }

  if (v29 >= -1.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -1.0;
  }

  v23 = acosf(v31);
  v24 = 3.14159274;
  if (v6)
  {
    goto LABEL_23;
  }

  return v23 * 180.0 / v24;
}

uint64_t sub_2621C9454(float32x2_t *a1, float32x2_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a2;
  v5 = &a2[4 * a3];
  while (1)
  {
    v6 = sub_2621C92AC(a1, v3, 0);
    sub_2621C95C8(&v23, a1, v3);
    v7 = v23 + 1;
    v8 = v23 == v24 || v7 == v24;
    v9 = v23;
    if (!v8)
    {
      v10 = *v23;
      v9 = v23;
      v11 = v23 + 1;
      do
      {
        v12 = *v11++;
        v13 = v12;
        if (v12 < v10)
        {
          v10 = v13;
          v9 = v7;
        }

        v7 = v11;
      }

      while (v11 != v24);
    }

    v14 = v9 - v23;
    v15 = v9 - v23;
    v16 = v15 + (v14 >> 63);
    v17 = v15 - (v16 & 0xFFFFFFFFFFFFFFFELL);
    v18 = vsub_f32(a1[v16 >> 1], v3[v17]);
    if (sqrtf(vaddv_f32(vmul_f32(v18, v18))) < 0.5)
    {
      v19 = vsub_f32(a1[1 - (v16 >> 1)], v3[1 - v17]);
      v20 = sqrtf(vaddv_f32(vmul_f32(v19, v19)));
      v21 = fabsf(v6);
      if ((v21 > 15.0 || v21 > 165.0) && v20 < 0.5)
      {
        break;
      }
    }

    if (v23)
    {
      operator delete(v23);
    }

    v3 += 4;
    if (v3 == v5)
    {
      return 0;
    }
  }

  if (v23)
  {
    operator delete(v23);
  }

  return 1;
}

double sub_2621C95C8(void *a1, float32x2_t *a2, float32x2_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = vsub_f32(*a2, *a3);
  v11 = sqrtf(vaddv_f32(vmul_f32(v6, v6)));
  sub_2621C8F2C(a1, &v11);
  v7 = vsub_f32(*a2, a3[1]);
  v11 = sqrtf(vaddv_f32(vmul_f32(v7, v7)));
  sub_2621C8F2C(a1, &v11);
  v8 = vsub_f32(a2[1], *a3);
  v11 = sqrtf(vaddv_f32(vmul_f32(v8, v8)));
  sub_2621C8F2C(a1, &v11);
  v9 = vsub_f32(a2[1], a3[1]);
  v11 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
  sub_2621C8F2C(a1, &v11);
  return result;
}

void sub_2621C96A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2621C96CC(uint64_t a1, char a2, float32x2_t *a3, float32x2_t *a4, uint64_t a5)
{
  v6 = 0.0;
  if (a5)
  {
    if ((a2 & 1) == 0)
    {
      v8 = 32 * a5;
      do
      {
        v9.f32[0] = fabsf(sub_2621C92AC(a3, a4, 0));
        if (v9.f32[0] < 10.0 || v9.f32[0] > 170.0)
        {
          v13 = *a3;
          v14 = a3[1];
          v15 = *a4;
          v16 = a4[1];
          *v9.f32 = *a3;
          *v10.f32 = v14;
          *v11.f32 = *a4;
          sub_2621DD2E4(v9, v10, v11, v16);
          if (v17)
          {
            v18 = sub_2621DCFE8(v13, v14, v15, v16);
            v19 = sub_2621DCFE8(v15, v16, v13, v14);
            if (v18 >= v19)
            {
              v19 = v18;
            }

            if (v6 < v19)
            {
              v6 = v19;
            }
          }
        }

        a4 += 4;
        v8 -= 32;
      }

      while (v8);
    }
  }

  else if (a2)
  {
    v20 = *(a1 + 312);
    v21 = (a1 + 320);
    if (v20 != (a1 + 320))
    {
      do
      {
        v22.f32[0] = fabsf(sub_2621C92AC(a3, v20 + 5, 0));
        if (v22.f32[0] < 10.0 || v22.f32[0] > 170.0)
        {
          v26 = *a3;
          v27 = a3[1];
          v28 = v20[5];
          v29 = v20[6];
          *v22.f32 = *a3;
          *v23.f32 = v27;
          *v24.f32 = v28;
          sub_2621DD2E4(v22, v23, v24, v29);
          if (v30)
          {
            v31 = sub_2621DCFE8(v26, v27, v28, v29);
            v32 = sub_2621DCFE8(v28, v29, v26, v27);
            if (v31 >= v32)
            {
              v32 = v31;
            }

            if (v6 < v32)
            {
              v6 = v32;
            }
          }
        }

        v33 = v20[1];
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = v20[2];
            v35 = *v34 == v20;
            v20 = v34;
          }

          while (!v35);
        }

        v20 = v34;
      }

      while (v34 != v21);
    }
  }

  return v6 > 0.99;
}

void sub_2621C98A4(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      sub_2621CBEB0();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_2621C99A4(void *a1, float32x2_t *a2, float a3)
{
  v5 = a1[1] - *a1;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = 0;
  v7 = v5 >> 3;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  while (1)
  {
    v8 = vsub_f32(*a2, *(*a1 + 8 * v6));
    if (sqrtf(vaddv_f32(vmul_f32(v8, v8))) < a3)
    {
      break;
    }

    if (v7 == ++v6)
    {
      goto LABEL_8;
    }
  }

  if (v6 == -1)
  {
LABEL_8:
    sub_2621CBA84(a1, a2);
    v6 = ((a1[1] - *a1) >> 3) - 1;
    v22 = *a2;
    v23 = v24;
    v24[0] = 0;
    v26[0] = 0;
    v26[1] = 0;
    v24[1] = 0;
    v25 = v26;
    v27 = 0;
    v9 = a1[39];
    if (v9 != (a1 + 40))
    {
      do
      {
        v10 = v6 == v9[8].i32[0] || v6 == v9[8].i32[1];
        if (v10)
        {
          sub_2621C8094(&v23, v9[4].i32[0]);
        }

        if (sub_2621DC76C(*a2, v9[5], v9[6], 0.00001) <= 0.1)
        {
          sub_2621C8094(&v25, v9[4].i32[0]);
        }

        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v10 = *v12 == v9;
            v9 = v12;
          }

          while (!v10);
        }

        v9 = v12;
      }

      while (v12 != a1 + 40);
    }

    v31 = v6;
    v29 = 0;
    v30 = 0;
    __p = &v29;
    v32 = &v31;
    v13 = sub_2621C6404((a1 + 17), v6);
    v14 = v13 + 6;
    sub_2621C6C04(v13[6]);
    v15 = v29;
    v13[5] = __p;
    v13[6] = v15;
    v16 = v30;
    v13[7] = v30;
    if (v16)
    {
      v15[2] = v14;
      __p = &v29;
      v29 = 0;
      v30 = 0;
      v15 = 0;
    }

    else
    {
      v13[5] = v14;
    }

    sub_2621C6C04(v15);
    __p = &v31;
    v17 = sub_2621CBB54((a1 + 20), v31);
    v18 = v17;
    v17[5] = v22;
    if (v17 + 5 != &v22)
    {
      sub_2621CBC3C((v17 + 6), v23, v24);
      sub_2621CBC3C((v18 + 9), v25, v26);
    }

    *(v18 + 96) = v27;
    v19 = a1[28];
    v20 = a1[29];
    if (v19 != v20)
    {
      while (*v19 != v31)
      {
        if (++v19 == v20)
        {
          goto LABEL_33;
        }
      }
    }

    if (v19 == v20)
    {
LABEL_33:
      sub_2621C7CD0((a1 + 28), &v31);
      __p = 0;
      v29 = 0;
      v30 = 0;
      sub_2621CB5C4(a1 + 31, v31);
      if (__p)
      {
        operator delete(__p);
      }
    }

    sub_2621C6C04(v26[0]);
    sub_2621C6C04(v24[0]);
  }

  return v6;
}

void sub_2621C9C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2621C6C04(a15);
  sub_2621C6C04(a12);
  _Unwind_Resume(a1);
}

void sub_2621C9CAC(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, float32x2_t a6, float32x2_t a7)
{
  if (sub_2621C9FD4((a2 + 184), a3, a4) || a5 >= 2)
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    v45 = *(a2 + 64) + *(a2 + 40);
    *&v43 = a6;
    *(&v43 + 1) = a7;
    *&v44 = __PAIR64__(a5, v45);
    *(&v44 + 1) = __PAIR64__(a4, a3);
    *&v37[0] = &v45;
    if (a5)
    {
      v14 = a2 + 48;
    }

    else
    {
      v14 = a2 + 24;
    }

    v15 = sub_2621C580C(v14, v45);
    v16 = v44;
    *(v15 + 5) = v43;
    *(v15 + 7) = v16;
    v17 = *(a2 + 160);
    if (v17 != (a2 + 168))
    {
      do
      {
        v18 = v17[4].i32[0];
        v19 = v18 == DWORD2(v44) || v18 == HIDWORD(v44);
        if (v19)
        {
          sub_2621C8094(&v17[6], v44);
        }

        if (sub_2621DC76C(v17[5], *&v43, *(&v43 + 8), 0.00001) <= 0.1)
        {
          sub_2621C8094(&v17[9], v44);
        }

        v20 = v17[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v17[2];
            v19 = *v21 == v17;
            v17 = v21;
          }

          while (!v19);
        }

        v17 = v21;
      }

      while (v21 != (a2 + 168));
      a7 = *(&v43 + 8);
      a6 = *&v43;
    }

    v22 = vsub_f32(a6, a7);
    sub_2621CA0D0(a2 + 136, a3, a4, &v43, sqrtf(vaddv_f32(vmul_f32(v22, v22))));
    sub_2621CA2DC((a2 + 288), v45, &v43);
    v23 = *(a2 + 312);
    if (v23 != (a2 + 320))
    {
      do
      {
        if (*(v23 + 8) < v45)
        {
          sub_2621CA430(v37, v23 + 5, &v43);
          LODWORD(v36) = *(v23 + 8);
          HIDWORD(v36) = v45;
          v46 = &v36;
          v24 = sub_2621CA728((a2 + 464), v36, v45);
          v25 = v24;
          v26 = v38;
          v27 = v37[3];
          *(v24 + 7) = v37[2];
          v28 = v37[0];
          *(v24 + 5) = v37[1];
          *(v24 + 9) = v27;
          v24[11] = v26;
          *(v24 + 3) = v28;
          if (v24 + 3 != v37)
          {
            sub_2621CA9DC(v24 + 12, __p, v40, (v40 - __p) >> 2);
          }

          v29 = *(v42 + 12);
          v30 = v42[0];
          *(v25 + 15) = v41;
          *(v25 + 17) = v30;
          *(v25 + 148) = v29;
          v31 = *(a2 + 448);
          if (v31 >= *(a2 + 456))
          {
            v32 = sub_2621CAB10(a2 + 440, &v36);
          }

          else
          {
            *v31 = v36;
            v32 = (v31 + 1);
          }

          *(a2 + 448) = v32;
          if (v38 == 1)
          {
            sub_2621CABE8(a2 + 288, *(v23 + 8), v45, v37);
          }

          if (__p)
          {
            v40 = __p;
            operator delete(__p);
          }
        }

        v33 = v23[1];
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = v23[2];
            v19 = *v34 == v23;
            v23 = v34;
          }

          while (!v19);
        }

        v23 = v34;
      }

      while (v34 != (a2 + 320));
    }

    v35 = v44;
    *a1 = v43;
    *(a1 + 16) = v35;
    *(a1 + 32) = 1;
  }
}

void sub_2621C9FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2621C9FD4(void *a1, int a2, int a3)
{
  if (a3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = (((v3 + 2654435769) << 6) + v4 + ((v3 + 2654435769) >> 2) + 2654435769u) ^ (v3 + 2654435769);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v5)
    {
      v8 = v6 % *&v5;
    }
  }

  else
  {
    v8 = v6 & (*&v5 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v6 == v11)
    {
      v12 = *(result + 4);
      if (v12 == a2 && *(result + 5) == a3 || v12 == a3 && *(result + 5) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2621CA0D0(uint64_t a1, int a2, int a3, __int128 *a4, float a5)
{
  v23 = a3;
  v24 = a2;
  v22[0] = a2;
  v22[1] = a3;
  v25 = v22;
  v10 = sub_2621CB808((a1 + 48), a2, a3);
  v11 = *a4;
  *(v10 + 5) = a4[1];
  *(v10 + 3) = v11;
  v25 = &v24;
  v12 = sub_2621C6404(a1, a2);
  v25 = &v23;
  *(sub_2621CAE44((v12 + 5), a3) + 8) = a5;
  v25 = &v23;
  v13 = sub_2621C6404(a1, v23);
  v25 = &v24;
  *(sub_2621CAE44((v13 + 5), v24) + 8) = a5;
  v25 = &v24;
  v14 = sub_2621C65A4((a1 + 112), v24)[3];
  v25 = &v24;
  v15 = sub_2621C65A4((a1 + 112), v24);
  v16 = v15[4];
  if (v14 != v16)
  {
    while (*v14 != v23)
    {
      if (++v14 == v16)
      {
        v14 = v15[4];
        break;
      }
    }
  }

  v25 = &v24;
  if (v14 == sub_2621C65A4((a1 + 112), v24)[4])
  {
    v25 = &v24;
    v17 = sub_2621C65A4((a1 + 112), v24);
    sub_2621C7CD0((v17 + 3), &v23);
  }

  v25 = &v23;
  v18 = sub_2621C65A4((a1 + 112), v23)[3];
  v25 = &v23;
  v19 = sub_2621C65A4((a1 + 112), v23);
  v20 = v19[4];
  if (v18 != v20)
  {
    while (*v18 != v24)
    {
      if (++v18 == v20)
      {
        v18 = v19[4];
        break;
      }
    }
  }

  v25 = &v23;
  if (v18 == sub_2621C65A4((a1 + 112), v23)[4])
  {
    v25 = &v23;
    v21 = sub_2621C65A4((a1 + 112), v23);
    sub_2621C7CD0((v21 + 3), &v24);
  }
}

void sub_2621CA2DC(void *a1, int a2, __int128 *a3)
{
  v15 = a2;
  v13 = 0;
  v14 = 0;
  v16 = &v15;
  v5 = sub_2621C6404(a1, a2);
  v6 = v5 + 6;
  sub_2621C6C04(v5[6]);
  v7 = v13;
  v5[5] = &v13;
  v5[6] = v7;
  v8 = v14;
  v5[7] = v14;
  if (v8)
  {
    v7[2] = v6;
    v13 = 0;
    v14 = 0;
    v7 = 0;
  }

  else
  {
    v5[5] = v6;
  }

  sub_2621C6C04(v7);
  v9 = sub_2621C580C((a1 + 3), v15);
  v10 = *a3;
  *(v9 + 7) = a3[1];
  *(v9 + 5) = v10;
  v11 = a1[11];
  v12 = a1[12];
  if (v11 != v12)
  {
    while (*v11 != v15)
    {
      if (++v11 == v12)
      {
        goto LABEL_9;
      }
    }
  }

  if (v11 == v12)
  {
LABEL_9:
    sub_2621C7CD0((a1 + 11), &v15);
    v13 = 0;
    v14 = 0;
    sub_2621CB5C4(a1 + 14, v15);
  }
}

void sub_2621CA408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2621CA430(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 48) = v5;
  sub_2621CAF00(&v56, a1 + 32, *(a1 + 24));
  v6 = v56;
  v7 = v57;
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  *(a1 + 64) = v6 != v7;
  *(a1 + 68) = sub_2621C92AC(a1, (a1 + 32), 0);
  sub_2621C95C8((a1 + 72), a1, (a1 + 32));
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12.i64[0] = *a1;
  *v13.f32 = v9;
  *v14.f32 = v10;
  *(a1 + 96) = sub_2621DD0C0(v12, v13, v14, v11);
  v15 = vsub_f32(v9, v8);
  v16 = vsub_f32(v11, v10);
  *v17.i32 = -v15.f32[1];
  v18 = vzip1_s32(v17, v15);
  v19 = vmul_f32(v16, v18);
  v20 = vmul_f32(vsub_f32(v8, v10), v18);
  v21 = vmla_n_f32(v10, v16, vdiv_f32(vadd_f32(v20, vdup_lane_s32(v20, 1)), vadd_f32(v19, vdup_lane_s32(v19, 1))).f32[0]);
  if (vaddv_f32(v19) == 0.0)
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  *(a1 + 104) = v21;
  *(a1 + 112) = v22;
  v23 = vaddv_f32(vmul_f32(vsub_f32(v10, v8), v15));
  v24 = vaddv_f32(vmul_f32(v15, v15));
  if (v24 < 0.000001)
  {
    v24 = 0.000001;
  }

  v25 = vsub_f32(vmla_n_f32(v8, v15, v23 / v24), v10);
  v26 = vmul_f32(v25, v25);
  v27 = vsub_f32(vmla_n_f32(v8, v15, vaddv_f32(vmul_f32(v15, vsub_f32(v11, v8))) / v24), v11);
  v28 = vmul_f32(v27, v27);
  v29 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v26, v28), vzip2_s32(v26, v28)))) * 0.5;
  v30 = vsqrt_f32(vadd_f32(vzip1_s32(v28, v26), vzip2_s32(v28, v26)));
  if (v30.f32[0] >= v30.f32[1])
  {
    v30.f32[0] = v30.f32[1];
  }

  *(a1 + 120) = v29;
  *(a1 + 124) = v30.i32[0];
  v31 = sub_2621DCAD4(v10, v8, v9);
  v32 = vsub_f32(v31, sub_2621DCAD4(v11, v8, v9));
  v55 = vmul_f32(v32, v32);
  v33 = vsub_f32(v10, v11);
  v54 = vmul_f32(v33, v33);
  v34 = sub_2621DCAD4(v8, v10, v11);
  v35 = vsub_f32(v34, sub_2621DCAD4(v9, v10, v11));
  v36 = vmul_f32(v35, v35);
  v37 = vsub_f32(v8, v9);
  v38 = vmul_f32(v37, v37);
  v39 = vdiv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v55, v36), vzip2_s32(v55, v36))), vmaxnm_f32(vsqrt_f32(vadd_f32(vzip1_s32(v54, v38), vzip2_s32(v54, v38))), vdup_n_s32(0x358637BDu)));
  __asm { FMOV            V1.2S, #1.0 }

  v45 = vminnm_f32(v39, _D1);
  v46 = vdup_lane_s32(v45, 0);
  v46.f32[0] = sqrtf(vaddv_f32(v55)) / fmaxf(sqrtf(vaddv_f32(v54)), 0.000001);
  _D1.i32[1] = v45.i32[0];
  v45.i32[0] = v46.i32[0];
  *(a1 + 128) = vbsl_s8(vcgt_f32(__PAIR64__(v45.u32[1], 1.0), v46), v45, _D1);
  v47 = *a1;
  v48 = *(a1 + 8);
  v49 = *(a1 + 32);
  v50 = *(a1 + 40);
  v51 = sub_2621DCFE8(*a1, v48, v49, v50);
  v52 = sub_2621DCFE8(v49, v50, v47, v48);
  if (v51 >= v52)
  {
    v52 = v51;
  }

  *(a1 + 136) = v52;
  return a1;
}

uint64_t *sub_2621CA728(void *a1, int a2, int a3)
{
  if (a3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  v4 = v3 + 2654435769;
  if (a3 <= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  v6 = ((v4 << 6) + v5 + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_27;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = ((v4 << 6) + v5 + (v4 >> 2) + 2654435769u) ^ v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_27:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_27;
    }

LABEL_26:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  v13 = *(v11 + 4);
  if ((v13 != a2 || *(v11 + 5) != a3) && (v13 != a3 || *(v11 + 5) != a2))
  {
    goto LABEL_26;
  }

  return v11;
}

void *sub_2621CA9DC(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2621C8EEC(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

uint64_t sub_2621CAB10(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 3;
  v7 = v6 + 1;
  if ((v6 + 1) >> 61)
  {
    sub_2621CBEB0();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 2 > v7)
  {
    v7 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_2621CBEC8(v7);
  }

  *(8 * v6) = *a2;
  if (v3 != v4)
  {
    v9 = v3;
    v10 = (8 * v6 + v3 - v4);
    do
    {
      v11 = *v9;
      v9 += 8;
      *v10++ = v11;
    }

    while (v9 != v4);
  }

  *a1 = 8 * v6 + v3 - v4;
  *(a1 + 8) = 8 * v6 + 8;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 8 * v6 + 8;
}

void sub_2621CABE8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v26 = a3;
  v27 = a2;
  v25[0] = a2;
  v25[1] = a3;
  v28 = v25;
  v8 = sub_2621CA728((a1 + 48), a2, a3);
  v9 = v8;
  *(v8 + 3) = *a4;
  v10 = *(a4 + 16);
  v11 = *(a4 + 32);
  v12 = *(a4 + 48);
  v8[11] = *(a4 + 64);
  *(v8 + 9) = v12;
  *(v8 + 7) = v11;
  *(v8 + 5) = v10;
  if (v8 + 3 != a4)
  {
    sub_2621CA9DC(v8 + 12, *(a4 + 72), *(a4 + 80), (*(a4 + 80) - *(a4 + 72)) >> 2);
  }

  v13 = *(a4 + 96);
  v14 = *(a4 + 112);
  *(v9 + 148) = *(a4 + 124);
  *(v9 + 17) = v14;
  *(v9 + 15) = v13;
  v28 = &v27;
  v15 = sub_2621C6404(a1, a2);
  v28 = &v26;
  *(sub_2621CAE44((v15 + 5), a3) + 8) = 1065353216;
  v28 = &v26;
  v16 = sub_2621C6404(a1, v26);
  v28 = &v27;
  *(sub_2621CAE44((v16 + 5), v27) + 8) = 1065353216;
  v28 = &v27;
  v17 = sub_2621C65A4((a1 + 112), v27)[3];
  v28 = &v27;
  v18 = sub_2621C65A4((a1 + 112), v27);
  v19 = v18[4];
  if (v17 != v19)
  {
    while (*v17 != v26)
    {
      if (++v17 == v19)
      {
        v17 = v18[4];
        break;
      }
    }
  }

  v28 = &v27;
  if (v17 == sub_2621C65A4((a1 + 112), v27)[4])
  {
    v28 = &v27;
    v20 = sub_2621C65A4((a1 + 112), v27);
    sub_2621C7CD0((v20 + 3), &v26);
  }

  v28 = &v26;
  v21 = sub_2621C65A4((a1 + 112), v26)[3];
  v28 = &v26;
  v22 = sub_2621C65A4((a1 + 112), v26);
  v23 = v22[4];
  if (v21 != v23)
  {
    while (*v21 != v27)
    {
      if (++v21 == v23)
      {
        v21 = v22[4];
        break;
      }
    }
  }

  v28 = &v26;
  if (v21 == sub_2621C65A4((a1 + 112), v26)[4])
  {
    v28 = &v26;
    v24 = sub_2621C65A4((a1 + 112), v26);
    sub_2621C7CD0((v24 + 3), &v27);
  }
}

uint64_t *sub_2621CAE44(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_2621CAF00(void *a1, uint64_t a2, double a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  sub_2621CB08C(&v9, &v14, 2);
  v16[0] = *(a2 + 24);
  sub_2621CB08C(&v14, v16, 2);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = v14;
  v12 = v14;
  v13 = v9;
  v16[0] = a1;
  v16[1] = 0;
  for (i = 0; *&v12 != v15; v5 = v12)
  {
    v6 = v13;
    v13 = sub_2621C8154(v13, v10, *(*&v5 + 28));
    sub_2621CB108(v13 == v6, &v13, &v12, v16, &i);
    if (v13 == v10)
    {
      break;
    }

    v7 = v12;
    v12 = COERCE_DOUBLE(sub_2621C8154(*&v12, v15, *(v13 + 7)));
    sub_2621CB108(*&v12 == *&v7, &v13, &v12, v16, &i);
  }

  sub_2621C6C04(v15[0]);
  sub_2621C6C04(v10[0]);
  v8 = *MEMORY[0x277D85DE8];
}

void *sub_2621CB08C(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      sub_2621CB3E4(a1, v4, *a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

void sub_2621CB108(int a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  if (a1)
  {
    if (*a5 == 1)
    {
      v7 = a3;
      v9 = (*a2 + 28);
      v11 = *a4;
      v10 = a4[1];
      v12 = *(*a4 + 8);
      v13 = *(*a4 + 16);
      if (v12 >= v13)
      {
        v17 = *v11;
        v18 = (&v12[-*v11] >> 2) + 1;
        if (v18 >> 62)
        {
          sub_2621CBEB0();
        }

        v19 = v10 - v17;
        v20 = v13 - v17;
        if (v20 >> 1 > v18)
        {
          v18 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v18;
        }

        v22 = v19 >> 2;
        if (v21)
        {
          sub_2621C7F54(v21);
        }

        v23 = (4 * v22);
        if (!v22)
        {
          if (v19 < 1)
          {
            if (v10 == v17)
            {
              v37 = 1;
            }

            else
            {
              v37 = v19 >> 1;
            }

            sub_2621C7F54(v37);
          }

          v23 -= ((v19 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL;
        }

        *v23 = *(*a2 + 28);
        memcpy(v23 + 4, v10, v11[1] - v10);
        v24 = *v11;
        v39 = &v23[v11[1] - v10 + 4];
        v11[1] = v10;
        v25 = v10 - v24;
        v26 = &v23[-(v10 - v24)];
        memcpy(v26, v24, v25);
        v27 = *v11;
        *v11 = v26;
        *(v11 + 1) = v39;
        if (v27)
        {
          operator delete(v27);
        }

        v10 = v23;
        v7 = a3;
      }

      else if (v10 == v12)
      {
        *v12 = *v9;
        v11[1] = v12 + 4;
      }

      else
      {
        v14 = v10 + 4;
        if (v12 < 4)
        {
          v15 = *(*a4 + 8);
        }

        else
        {
          *v12 = *(v12 - 1);
          v15 = v12 + 4;
        }

        v11[1] = v15;
        if (v12 != v14)
        {
          memmove(v10 + 4, v10, v12 - v14);
          v15 = v11[1];
        }

        v28 = v15 <= v9 || v10 > v9;
        v29 = 4;
        if (v28)
        {
          v29 = 0;
        }

        *v10 = *&v9[v29];
      }

      a4[1] = v10 + 4;
      v30 = *a2;
      v31 = *(*a2 + 8);
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v30[2];
          v33 = *v32 == v30;
          v30 = v32;
        }

        while (!v33);
      }

      *a2 = v32;
      v34 = *v7;
      v35 = *(*v7 + 8);
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v34[2];
          v33 = *v36 == v34;
          v34 = v36;
        }

        while (!v33);
      }

      v16 = 0;
      *v7 = v36;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  *a5 = v16;
}

void sub_2621CB3CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2621CB3E4(void *result, uint64_t *a2, int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 7) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 28);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 7) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 28);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

void *sub_2621CB5C4(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t *sub_2621CB808(void *a1, int a2, int a3)
{
  if (a3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  v4 = v3 + 2654435769;
  if (a3 <= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  v6 = ((v4 << 6) + v5 + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_27;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = ((v4 << 6) + v5 + (v4 >> 2) + 2654435769u) ^ v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_27:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_27;
    }

LABEL_26:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  v13 = *(v11 + 4);
  if ((v13 != a2 || *(v11 + 5) != a3) && (v13 != a3 || *(v11 + 5) != a2))
  {
    goto LABEL_26;
  }

  return v11;
}

void sub_2621CBA84(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_2621CBEB0();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_2621CBEC8(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t *sub_2621CBB54(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_2621CBC3C(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    sub_2621C6C04(v12);
    goto LABEL_31;
  }

  v10 = sub_2621CBE5C(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = *(v13 + 7);
      *(v9 + 28) = v14;
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 >= *(v15 + 7))
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_16:
      sub_2621C6C50(a1, v16, v17, v9);
      if (v10)
      {
        v10 = sub_2621CBE5C(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  sub_2621C6C04(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

void *sub_2621CBE5C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void sub_2621CBEC8(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2621CBF10(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_2621C6A34();
}

void *sub_2621CBF58(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2621CC174(uint64_t a1, const std::string *a2, char a3, double a4, double a5)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  std::string::operator=(a1, a2);
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 73) = a3;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2621CC1E0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2621CC20C(uint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    if (v7 + 1 > 0x333333333333333)
    {
      sub_2621CBEB0();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x199999999999999)
    {
      v10 = 0x333333333333333;
    }

    else
    {
      v10 = v9;
    }

    v30 = a1;
    if (v10)
    {
      if (v10 <= 0x333333333333333)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v15 = 80 * v7;
    v27 = 0;
    v28 = v15;
    v29 = v15;
    if (*(a2 + 23) < 0)
    {
      sub_2621CC810(v15, *a2, *(a2 + 1));
    }

    else
    {
      *v15 = *a2;
      *(v15 + 16) = *(a2 + 2);
    }

    v16 = *(a2 + 24);
    *(v15 + 48) = 0;
    *(v15 + 24) = v16;
    *(v15 + 40) = *(a2 + 20);
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    sub_2621CC8B4(v15 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
    *(v15 + 72) = *(a2 + 36);
    *&v29 = v29 + 80;
    v17 = *a1;
    v18 = a1[1];
    v19 = v28 + *a1 - v18;
    if (*a1 != v18)
    {
      v20 = *a1;
      v21 = v28 + *a1 - v18;
      do
      {
        v22 = *v20;
        *(v21 + 16) = *(v20 + 16);
        *v21 = v22;
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        *v20 = 0;
        v23 = *(v20 + 24);
        *(v21 + 40) = *(v20 + 40);
        *(v21 + 24) = v23;
        *(v21 + 56) = 0;
        *(v21 + 64) = 0;
        *(v21 + 48) = 0;
        *(v21 + 48) = *(v20 + 48);
        *(v21 + 64) = *(v20 + 64);
        *(v20 + 48) = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v21 + 72) = *(v20 + 72);
        v20 += 80;
        v21 += 80;
      }

      while (v20 != v18);
      do
      {
        sub_2621CC75C(v17);
        v17 += 80;
      }

      while (v17 != v18);
    }

    v24 = *a1;
    *a1 = v19;
    v25 = a1[2];
    v26 = v29;
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    result = sub_2621CC930(&v27);
    v14 = v26;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_2621CC810(a1[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 20);
    *(v5 + 48) = 0;
    *(v5 + 40) = v12;
    *(v5 + 24) = v11;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    result = sub_2621CC8B4(v5 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
    *(v5 + 72) = *(a2 + 36);
    v14 = v5 + 80;
    a1[1] = v5 + 80;
  }

  a1[1] = v14;
  return result;
}

void sub_2621CC480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2621CC930(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2621CC4D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2621CC514(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 4);
        if (v6)
        {
          *(v4 - 3) = v6;
          operator delete(v6);
        }

        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2621CC5A0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 5;
        sub_2621CC7B4(*(v4 - 3));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2621CC628(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        sub_2621CC75C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2621CC700(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621CC71C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2621CBEC8(a2);
  }

  sub_2621CBEB0();
}

void sub_2621CC75C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_2621CC7B4(char *a1)
{
  if (a1)
  {
    sub_2621CC7B4(*a1);
    sub_2621CC7B4(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *sub_2621CC810(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2621CC980();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_2621CC8B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_2621CC914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2621CC930(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_2621CC75C(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2621CC9BC(void *a1, int a2, char a3, int a4, float a5)
{
  if (!a1)
  {
    return 0;
  }

  v14.receiver = a1;
  v14.super_class = RSOfflineGeometryCalculation;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  if (v9)
  {
    v10 = objc_alloc_init(RSGeometryMeta);
    v11 = v9[1];
    v9[1] = v10;

    *(v9 + 4) = 3;
    *(v9 + 5) = a2;
    *(v9 + 24) = 1;
    *(v9 + 7) = 10;
    *(v9 + 32) = 0;
    *(v9 + 33) = a3;
    *(v9 + 9) = a5;
    *(v9 + 40) = 1;
    *(v9 + 11) = a4;
    *(v9 + 12) = 1050253722;
    v12 = v9[1];
    if (v12)
    {
      *(v12 + 32) = a4;
    }
  }

  return v9;
}

void sub_2621CCAAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (a1 && objc_msgSend_count(v5, v6, v7))
  {
    v11 = *(a1 + 20);
    v12 = objc_msgSend_count(v5, v9, v10);
    sub_2621CD160(v109, v12);
    v15 = v109[0];
    if (v109[0] != v109[1])
    {
      v16 = 0;
      v17 = (v109[1] - v109[0] - 8) >> 3;
      v18 = vdupq_n_s64(v17);
      v19 = (v17 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v20 = xmmword_2623A7620;
      v21 = vdupq_n_s64(2uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v18, v20));
        if (v22.i8[0])
        {
          v15[v16] = v16;
        }

        if (v22.i8[4])
        {
          v15[v16 + 1] = v16 + 1;
        }

        v16 += 2;
        v20 = vaddq_s64(v20, v21);
      }

      while (v19 != v16);
    }

    v23 = objc_msgSend_points(v5, v13, v14);
    sub_2622C6EA0(v23, v109);
    if (v8)
    {
      v24 = v8[14];
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v28 = objc_msgSend_count(v25, v26, v27);

    v29 = 0;
    v30 = 0.0;
    if (v28)
    {
      v30 = *(v8[10] + 56);
    }

    v31 = v5;
    if (v109[0] == v109[1])
    {
      v108 = 0u;
      v44 = 0.0;
      v45 = 0.0;
    }

    else
    {
      v32 = 1431655766 * (((v109[1] - v109[0]) >> 3) - 1);
      LODWORD(v110) = 0;
      sub_2621CD1D8(__p, (HIDWORD(v32) + (v32 >> 63) + 1));
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v35 = v109[0];
      if (v109[1] != v109[0])
      {
        v107 = v8;
        v36 = 0;
        v37 = 0;
        do
        {
          v38 = v35[v37];
          v39 = objc_msgSend_points(v31, v33, v34);
          *(__p[0] + v36) = *(v39 + 16 * v38 + 8);
          v42.i32[0] = *(objc_msgSend_semanticLabels(v31, v40, v41) + 4 * v38);
          if (vmovl_u8(v42).u8[0] == 1 && *(objc_msgSend_semanticVotes(v31, v33, v34) + 8 * v38) && *(objc_msgSend_points(v31, v33, v34) + 16 * v38 + 8) < v30)
          {
            v43 = *(objc_msgSend_points(v31, v33, v34) + 16 * v38 + 8);
            sub_2621C7F54(1uLL);
          }

          v37 += 3;
          v35 = v109[0];
          v36 += 4;
        }

        while (v37 < (v109[1] - v109[0]) >> 3);
        v111 = 0;
        v112 = 0;
        v110 = 0;
        v8 = v107;
      }

      sub_2621CD2EC(__p, 1.0);
      v47 = v46;
      sub_2621CD2EC(__p, 99.0);
      v29 = v48;
      v45 = v47;
      v51 = objc_msgSend_points(v31, v49, v50);
      v52 = 0uLL;
      if (v109[0] != v109[1])
      {
        v53 = v109[0];
        do
        {
          v54 = *v53++;
          v55 = *(v51 + 16 * v54);
          v52 = vaddq_f32(v52, v55);
        }

        while (v53 != v109[1]);
        v55.f32[0] = ((v109[1] - v109[0]) >> 3);
        v52 = vdivq_f32(v52, vdupq_lane_s32(*v55.f32, 0));
      }

      v108 = v52;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v44 = v47 + -0.1;
    }

    v61 = *(a1 + 44);
    v62 = *(a1 + 48);
    v63 = *(a1 + 8);
    if (v63)
    {
      *(v63 + 8) = 1;
    }

    if (*(a1 + 33) == 1)
    {
      v64 = objc_msgSend_points(v31, v56, v57);
      v67 = objc_msgSend_count(v31, v65, v66);
      if (v67 > 1)
      {
        v68 = v64 + 1;
        v69 = *v64;
        v70 = 16 * v67 - 16;
        v71 = v64 + 1;
        do
        {
          v72 = vsubq_f32(v69, v108);
          v73 = vmulq_f32(v72, v72);
          v73.f32[0] = vaddv_f32(*v73.f32);
          v74 = *v71++;
          *&v59.f64[1] = v74.i64[1];
          v75 = vsubq_f32(v74, v108);
          v60 = vmulq_f32(v75, v75);
          v60.f32[0] = vaddv_f32(*v60.f32);
          v69 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v60, v73), 0), v74, v69);
          if (v73.f32[0] < v60.f32[0])
          {
            v64 = v68;
          }

          v68 = v71;
          v70 -= 16;
        }

        while (v70);
      }

      v58 = v108;
      v76 = vsubq_f32(*v64, v108);
      v76.f32[0] = sqrtf(vaddv_f32(*&vmulq_f32(v76, v76)));
      v77 = (v76.f32[0] + v76.f32[0]) / v11;
      v58.i32[0] = *(a1 + 36);
      v78 = *v58.i32 + *v58.i32;
      if ((*v58.i32 + *v58.i32) >= v77)
      {
        v78 = v77;
      }

      if (v77 >= *v58.i32)
      {
        v79 = v78;
      }

      else
      {
        v79 = *(a1 + 36);
      }

      *v59.f64 = ceilf(v79 * 100.0) / 100.0;
      v80 = *(a1 + 44);
    }

    else
    {
      LODWORD(v59.f64[0]) = *(a1 + 36);
      v80 = v61;
    }

    v81 = *(a1 + 8);
    if (v81)
    {
      v58.i32[0] = 0;
      v82 = v62 * v61;
      v60.i32[0] = v80;
      v83 = v108;
      *&v83.i32[2] = (v82 * 0.5) + v44;
      v84 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v60, v58), 0), v83, v108);
      v81[4] = v84;
      v85 = *(a1 + 8);
      if (v85)
      {
        *(v85 + 12) = LODWORD(v59.f64[0]);
        v86 = *(a1 + 8);
        if (v86)
        {
          v87 = *v59.f64;
          v59.f64[0] = v62;
          v88.f64[0] = v87;
          v88.f64[1] = v87;
          __asm { FMOV            V5.2D, #1.0 }

          v94 = vdivq_f64(_Q5, v88);
          v95 = vdivq_f64(_Q5, v59);
          v86[5] = v94;
          v86[6] = v95;
          v96 = *(a1 + 8);
          if (v96)
          {
            v95.f64[0] = v80;
            __asm { FMOV            V4.2D, #0.5 }

            v98 = vmulq_f64(vmulq_f64(v95, v59), _Q4);
            v99 = vmulq_f64(vmulq_n_f64(vdupq_lane_s64(COERCE__INT64(v11), 0), v87), _Q4);
            v100 = vcvtq_f64_f32(*&v84.f64[0]);
            *&v99.f64[1] = vextq_s8(v99, v99, 8uLL).u64[0];
            v84.f64[0] = *&v84.f64[1];
            v96[7] = vsubq_f64(v99, v100);
            v96[8] = vsubq_f64(v98, v84);
            v101 = *(a1 + 8);
            if (v101)
            {
              *(v101 + 16) = v44;
              v102 = *(a1 + 8);
              if (v102)
              {
                *(v102 + 20) = v44 + v82;
                v103 = *(a1 + 8);
                if (v103)
                {
                  *(v103 + 24) = v82;
                  v104 = *(a1 + 8);
                  if (v104)
                  {
                    *(v104 + 28) = *(a1 + 20);
                    v105 = *(a1 + 8);
                    if (v105)
                    {
                      *(v105 + 36) = v45;
                      v106 = *(a1 + 8);
                      if (v106)
                      {
                        *(v106 + 40) = v29;
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

    if (v109[0])
    {
      v109[1] = v109[0];
      operator delete(v109[0]);
    }
  }
}

void sub_2621CD0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (v23)
  {
    operator delete(v23);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void *sub_2621CD160(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2621CC71C(result, a2);
  }

  return result;
}

void sub_2621CD1BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2621CD1D8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2621C8EEC(result, a2);
  }

  return result;
}

void sub_2621CD2D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2621CD2EC(uint64_t *a1, float a2)
{
  v3 = *a1;
  v4 = a1[1];
  result = *a1;
  if (result != v4)
  {
    if (a2 <= 100.0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 100.0;
    }

    if (a2 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    result = std::__sort<std::__less<float,float> &,float *>();
    v8 = a1[1];
    v9 = ((v8 - *a1) >> 2) - 1;
    v10 = (v7 * v9) / 100.0;
    if (v9 <= v10)
    {
      v12 = *(v8 - 4);
    }

    else
    {
      v11 = *(*a1 + 4 * v10) + ((v10 - v10) * (*(*a1 + 4 * v10 + 4) - *(*a1 + 4 * v10)));
    }
  }

  return result;
}

id *sub_2621CD3A4(id *a1)
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_2621CD3D4(uint64_t result, double a2, float64x2_t a3)
{
  if (result)
  {
    v3 = *(result + 8);
    if (v3)
    {
      *(v3 + 8) = 0;
      v4 = *(result + 8);
      if (v4)
      {
        *(v4 + 12) = *(result + 36);
        v5 = *(result + 8);
        if (v5)
        {
          a3.f64[0] = *(result + 48);
          __asm { FMOV            V2.2D, #1.0 }

          *(v5 + 80) = vdivq_f64(_Q2, vdupq_lane_s64(COERCE__INT64(*(v5 + 12)), 0));
          *(v5 + 96) = vdivq_f64(_Q2, a3);
          v11 = *(result + 8);
          if (v11)
          {
            *(v11 + 64) = 0u;
            v12 = *(result + 8);
            if (v12)
            {
              *(v12 + 112) = 0;
              *(v12 + 120) = 0;
              *(v12 + 128) = 0uLL;
              v13 = *(result + 8);
              if (v13)
              {
                *(v13 + 16) = 0;
                v14 = *(result + 8);
                if (v14)
                {
                  *(v14 + 20) = 0;
                  v15 = *(result + 8);
                  if (v15)
                  {
                    *(v15 + 24) = 0;
                    v16 = *(result + 8);
                    if (v16)
                    {
                      *(v16 + 28) = *(result + 20);
                      v17 = *(result + 8);
                      if (v17)
                      {
                        *(v17 + 32) = *(result + 44);
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

unsigned int *sub_2621CD534(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  kdebug_trace();
  return a1;
}

void sub_2621CD57C(uint64_t a1)
{
  *a1 = &unk_2874EE0D0;
  v1 = a1 + 8;
  v2 = (a1 + 88);
  sub_2621CD600(&v2);
  sub_2621CD684(v1);

  JUMPOUT(0x266727420);
}

void sub_2621CD600(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 64;
        sub_2621CD70C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2621CD684(uint64_t a1)
{
  sub_2621CD6C0(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2621CD6C0(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_2621CD70C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_2621CD764(uint64_t a1)
{
  *a1 = &unk_2874EE0D0;
  v2 = a1 + 8;
  v4 = (a1 + 88);
  sub_2621CD600(&v4);
  sub_2621CD684(v2);
  return a1;
}

void sub_2621CD7C8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2621CD6C0(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

id sub_2621CD824(uint64_t a1, void *a2, void *a3, void *a4)
{
  v336 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v256 = a3;
  v268 = a4;
  v254 = v7;
  v10 = objc_msgSend_copy(v7, v8, v9);
  *(a1 + 52) = 1065353216;
  *__p = 0u;
  v307 = 0u;
  v308 = 0u;
  *v309 = 0u;
  v253 = v10;
  v13 = objc_msgSend_walls(v10, v11, v12);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, __p, &src, 16);
  if (v17)
  {
    v18 = *v307;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v307 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(__p[1] + i);
        v21 = *(a1 + 52);
        objc_msgSend_quad(v20, v15, v16);
        if (v21 > v22)
        {
          objc_msgSend_quad(v20, v15, v16);
          *(a1 + 52) = v23;
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, __p, &src, 16);
    }

    while (v17);
  }

  v264 = a1;

  v26 = objc_msgSend_openings(v254, v24, v25);
  if (!objc_msgSend_count(v26, v27, v28))
  {

LABEL_45:
    v127 = v253;
    goto LABEL_140;
  }

  if (v268)
  {
    v29 = *(v268 + 14);
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  v33 = objc_msgSend_count(v30, v31, v32);

  if (!v33)
  {
    goto LABEL_45;
  }

  v36 = objc_msgSend_openings(v253, v34, v35);
  v262 = objc_msgSend_mutableCopy(v36, v37, v38);

  v263 = v253;
  v41 = 0;
  v286 = 0;
  v287 = 0;
  v285 = 0;
  while (1)
  {
    *&v332 = v41;
    v42 = objc_msgSend_openings(v263, v39, v40);
    v45 = v41 < objc_msgSend_count(v42, v43, v44);

    if (!v45)
    {
      break;
    }

    v48 = objc_msgSend_openings(v263, v46, v47);
    v50 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, v41);

    v53 = objc_msgSend_identifier(v50, v51, v52);
    v56 = objc_msgSend_UUIDString(v53, v54, v55);
    v57 = v56;
    v60 = objc_msgSend_UTF8String(v56, v58, v59);
    sub_2621D0F64(__p, v60);

    v61 = sub_2621D101C((a1 + 8), __p);
    if (!v61)
    {
      goto LABEL_27;
    }

    v64 = v61;
    if (COERCE_FLOAT(v61[15]) > 0.5)
    {
      objc_msgSend_quad(v50, v62, v63);
      HIDWORD(v65) = 0;
      HIDWORD(v66) = 0;
      *&v68 = v67;
      *(&v68 + 1) = *(v64 + 14);
      *&v70 = v69;
      *(&v70 + 1) = *(v64 + 18);
      src = v68;
      v317 = v70;
      v318 = v65;
      v319 = v66;
      if (!v50)
      {
        goto LABEL_28;
      }

LABEL_19:
      objc_copyStruct((v50 + 272), &src, 64, 1, 0);
      goto LABEL_28;
    }

    if (COERCE_FLOAT(*(v61 + 7)) > 0.0)
    {
      goto LABEL_27;
    }

    v71 = (a1 + 24);
    while (1)
    {
      v71 = *v71;
      if (!v71)
      {
        break;
      }

      if (v71[30] > 0.5)
      {
        v72 = v71 + 14;
        goto LABEL_26;
      }
    }

    v72 = (a1 + 60);
LABEL_26:
    __src = *v72;
    if (*v72 > *(a1 + 52))
    {
      objc_msgSend_quad(v50, v62, v63);
      HIDWORD(v73) = 0;
      HIDWORD(v74) = 0;
      *&v76 = v75;
      *(&v76 + 1) = LODWORD(__src);
      *&v78 = v77;
      *(&v78 + 1) = LODWORD(__src);
      src = v76;
      v317 = v78;
      v318 = v73;
      v319 = v74;
      if (v50)
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_27:
      sub_2621C9004(&v285, &v332);
    }

LABEL_28:
    if (SBYTE7(v307) < 0)
    {
      operator delete(__p[0]);
    }

    ++v41;
  }

  v81 = v285;
  v251 = v286;
  v252 = v285;
  if (v286 == v285)
  {
    v127 = 0;
    if (v285)
    {
      goto LABEL_138;
    }
  }

  else
  {
    for (j = 0; ; ++j)
    {
      v84 = v264;
      if (j >= objc_msgSend_count(v262, v79, v80))
      {
        break;
      }

      v85 = objc_msgSend_objectAtIndexedSubscript_(v262, v83, j);
      v86 = v263;
      v91 = objc_msgSend_copy(v85, v87, v88);
      for (k = 0; ; ++k)
      {
        v93 = objc_msgSend_walls(v86, v89, v90);
        v96 = objc_msgSend_count(v93, v94, v95) > k;

        if (!v96)
        {
          break;
        }

        v99 = objc_msgSend_parentIdentifier(v85, v97, v98);
        v102 = objc_msgSend_walls(v86, v100, v101);
        v104 = objc_msgSend_objectAtIndexedSubscript_(v102, v103, k);
        v107 = objc_msgSend_identifier(v104, v105, v106);
        isEqual = objc_msgSend_isEqual_(v99, v108, v107);

        if (isEqual)
        {
          objc_msgSend_quad(v85, v89, v90);
          v269 = v110;
          v113 = objc_msgSend_walls(v86, v111, v112);
          v115 = objc_msgSend_objectAtIndexedSubscript_(v113, v114, k);
          objc_msgSend_quad(v115, v116, v117);
          *__srca = v118;

          if (vmovn_s32(vcgtq_f32(v269, *__srca)).i32[1])
          {
            objc_msgSend_quad(v85, v89, v90);
            HIDWORD(v119) = 0;
            HIDWORD(v120) = 0;
            *&v121 = *&__srca[1] - *(v264 + 80);
            *&v123 = v122;
            *(&v123 + 1) = v121;
            *&v125 = v124;
            *(&v125 + 1) = v121;
            src = v123;
            v317 = v125;
            v318 = v119;
            v319 = v120;
            if (v91)
            {
              objc_copyStruct((v91 + 272), &src, 64, 1, 0);
            }
          }
        }
      }

      objc_msgSend_replaceObjectAtIndex_withObject_(v262, v126, j, v91);
    }

    v128 = 0;
    v255 = vdup_n_s32(0xBE99999A);
    v81 = v252;
    do
    {
      v258 = v128;
      v261 = objc_msgSend_objectAtIndexedSubscript_(v262, v83, *&v81[8 * v128]);
      objc_msgSend_quad(v261, v129, v130);
      v279.i32[2] = v131;
      v280.i32[2] = v132;
      v270 = v134;
      __srcb = v133;
      v279.i64[0] = v133;
      v280.i64[0] = v134;
      v282 = v135;
      v284 = v136;
      v281 = v137;
      v283 = v138;
      v276 = 0;
      v277 = 0;
      v278 = 0;
      if (*(v84 + 48) != 1)
      {
        goto LABEL_56;
      }

      v139 = v268;
      if (v268)
      {
        v139 = *(v268 + 15);
      }

      v140 = v139;
      v143 = objc_msgSend_count(v140, v141, v142) == 0;

      if (v143)
      {
        goto LABEL_56;
      }

      if (v268)
      {
        v144 = *(v268 + 15);
        v145 = *(v268 + 14);
      }

      else
      {
        v144 = 0;
        v145 = 0;
      }

      v146 = v145;
      v148 = objc_msgSend_objectAtIndexedSubscript_(v146, v147, 0);
      v150 = objc_msgSend_objectForKey_(v144, v149, v148);

      if (v150)
      {
        v153 = *(v150 + 112);
        v154 = *(v150 + 128);
        v156 = *(v150 + 144);
        v155 = *(v150 + 80);
        v151 = *(v150 + 96);
        src = v151;
        v317 = v153;
        v318 = v154;
        v319 = v156;
        LODWORD(v156) = *(v150 + 12);
        v157 = *(v150 + 8);
        v158 = *(v150 + 48);
        v159 = *(v150 + 64);
        v160 = *&v156;
      }

      else
      {
        v157 = 0;
        v160 = 0;
        *&v156 = 0;
        v318 = 0u;
        v319 = 0u;
        *&v158 = 0;
        DWORD2(v158) = 0;
        *&v159 = 0;
        DWORD2(v159) = 0;
        *&v155 = 0;
        DWORD2(v155) = 0;
        src = 0u;
        v317 = 0u;
      }

      LODWORD(__p[1]) = DWORD2(v158);
      DWORD2(v307) = DWORD2(v159);
      __p[0] = v158;
      *&v307 = v159;
      DWORD2(v308) = DWORD2(v155);
      *&v308 = v155;
      LODWORD(v155) = 20.0;
      v161 = sub_2621D0DD4(&v279, &src, __p, v157, v160, *&v155, *&v158, *&v159, *&v156, *&v151, v152);

      if (v161)
      {
LABEL_56:
        v162 = v256;
        v257 = v268;
        if (v268)
        {
          v163 = *(v268 + 15);
        }

        else
        {
          v163 = 0;
        }

        obja = v163;
        v166 = objc_msgSend_allKeys(obja, v164, v165);
        v259 = objc_msgSend_sortedArrayUsingComparator_(v166, v167, &unk_2874EE0E0);

        if (!v268 || (v170 = *(v268 + 15), v173 = objc_msgSend_count(v170, v171, v172) == 0, v170, v173))
        {
          v244 = 0;
          for (m = 0; objc_msgSend_count(v162, v168, v169) > m; ++m)
          {
            v248 = objc_msgSend_points(v162, v246, v247) + v244;
            if (*(v248 + 8) >= (*(v264 + 52) + (*(v264 + 56) * 0.5)) && sub_2621DC76C(*v248, __srcb, v270, 0.00001) < 0.2)
            {
              sub_2621D9F60(&v276, v248);
            }

            v244 += 16;
          }
        }

        else
        {
          v308 = 0u;
          *v309 = 0u;
          *__p = 0u;
          v307 = 0u;
          obj = v259;
          v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v174, __p, &src, 16);
          if (v175)
          {
            v267 = *v307;
            do
            {
              v176 = 0;
              do
              {
                if (*v307 != v267)
                {
                  objc_enumerationMutation(obj);
                }

                v177 = *(__p[1] + v176);
                v178 = *(v268 + 15);
                v180 = objc_msgSend_objectForKey_(v178, v179, v177);

                if (v180)
                {
                  v183 = *(v180 + 112);
                  v184 = *(v180 + 128);
                  v186 = *(v180 + 144);
                  v185 = *(v180 + 80);
                  v181 = *(v180 + 96);
                  v332 = v181;
                  v333 = v183;
                  v334 = v184;
                  v335 = v186;
                  LODWORD(v186) = *(v180 + 12);
                  v187 = *(v180 + 8);
                  v188 = *(v180 + 48);
                  v189 = *(v180 + 64);
                  v190 = *&v186;
                }

                else
                {
                  v187 = 0;
                  v190 = 0;
                  *&v186 = 0;
                  v334 = 0u;
                  v335 = 0u;
                  *&v188 = 0;
                  DWORD2(v188) = 0;
                  *&v189 = 0;
                  DWORD2(v189) = 0;
                  *&v185 = 0;
                  DWORD2(v185) = 0;
                  v332 = 0u;
                  v333 = 0u;
                }

                LODWORD(v301) = DWORD2(v188);
                v303 = DWORD2(v189);
                v300 = v188;
                v302 = v189;
                v305 = DWORD2(v185);
                v304 = v185;
                LODWORD(v185) = 1110704128;
                if (sub_2621D0DD4(&v279, &v332, &v300, v187, v190, *&v185, *&v188, *&v189, *&v186, *&v181, v182))
                {
                  if (v180)
                  {
                    v193 = *(v180 + 16);
                  }

                  else
                  {
                    v193 = 0;
                  }

                  v194 = 16 * v193;
                  if (v180)
                  {
LABEL_71:
                    v195 = *(v180 + 24);
                    goto LABEL_72;
                  }

                  while (1)
                  {
                    v195 = 0;
LABEL_72:
                    if (v193 >= v195)
                    {
                      break;
                    }

                    v196 = objc_msgSend_points(v162, v191, v192);
                    objc_msgSend_semanticLabels(v162, v197, v198);
                    objc_msgSend_semanticVotes(v162, v199, v200);
                    if (sub_2621DC76C(*(v196 + v194), __srcb, v270, 0.00001) < 0.2)
                    {
                      sub_2621D9F60(&v276, (v196 + v194));
                    }

                    ++v193;
                    v194 += 16;
                    if (v180)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                ++v176;
              }

              while (v176 != v175);
              v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v201, __p, &src, 16);
              v175 = v202;
            }

            while (v202);
          }
        }

        v203 = *(v264 + 72) / 0.02;
        v204 = v203;
        v271 = vsubq_f32(v280, v279);
        __srcc = *v279.f32;
        v260 = sqrtf(vaddv_f32(*&vmulq_f32(v271, v271)));
        v205 = ((v260 + 0.6) / 0.02) + 1;
        *&v206 = v205;
        *(&v206 + 1) = (v204 + 1.0);
        LODWORD(__p[0]) = 0;
        v317 = 0u;
        v318 = 0u;
        src = v206;
        sub_2621D7078(&v300, &src);
        sub_2621D9C38(&v300, __p);
        v207 = v276;
        v208 = v277;
        if (v276 != v277)
        {
          v209 = v203;
          v210.i32[1] = 872415232;
          *v210.i32 = v260 + 0.00000011921;
          v211 = vdiv_f32(*v271.f32, vdup_lane_s32(v210, 0));
          v212 = vmla_f32(__srcc, v255, v211);
          v213 = vsub_f32(vmla_n_f32(__srcc, v211, v260 + 0.3), v212);
          v214 = vaddv_f32(vmul_f32(v213, v213));
          if (v214 >= 0.000001)
          {
            v215 = v214;
          }

          else
          {
            v215 = 0.000001;
          }

          do
          {
            v216 = ((v207[1].f32[0] - *(v264 + 52)) / 0.02);
            v217 = v216 & ~(v216 >> 31);
            if (v217 < v204)
            {
              v218 = *v207->f32;
              *&v218 = vsub_f32(vmla_n_f32(v212, v213, vaddv_f32(vmul_f32(vsub_f32(*v207, v212), v213)) / v215), v212);
              v219 = (sqrtf(vaddv_f32(vmul_f32(*&v218, *&v218))) / 0.02);
              if (v219 <= 1)
              {
                v220 = 1;
              }

              else
              {
                v220 = v219;
              }

              v221 = v220 - 1;
              v222 = v219 + 2;
              if (v205 < v222)
              {
                v222 = ((v260 + 0.6) / 0.02) + 1;
              }

              __p[0] = 0;
              __p[1] = v301;
              if (v222 >= v221)
              {
                v223 = v221;
              }

              else
              {
                v223 = v222;
              }

              if (v221 <= v222)
              {
                v224 = v222;
              }

              else
              {
                v224 = v221;
              }

              v307 = xmmword_2623A7680;
              *&v308 = v302;
              *(&v308 + 1) = 1;
              sub_2621D7514(&v301, __p, 0, v223, v224, 1);
              if (v216 <= 1)
              {
                v225 = 1;
              }

              else
              {
                v225 = v216;
              }

              v226 = v225 - 1;
              v227 = v217 + 2;
              if ((v217 + 2) >= v209)
              {
                v227 = v209;
              }

              if (v226 <= v227)
              {
                v228 = v227;
              }

              else
              {
                v228 = v226;
              }

              if (v227 >= v226)
              {
                v229 = v226;
              }

              else
              {
                v229 = v227;
              }

              sub_2621D7514(&v301, __p, 1u, v229, v228, 1);
              sub_2621D7EF4(&src, &v300, __p);
              if (v326)
              {
                v230 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
                v231 = sub_2621D552C(v230, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
                v232 = sub_2621D552C(v231, " ", 1);
                v233 = MEMORY[0x266727260](v232, 679);
                sub_2621D552C(v233, " ", 1);
                sub_2621D552C(v233, "operator+=", 10);
                std::ios_base::getloc((v233 + *(*v233 - 24)));
                v234 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
                (v234->__vftable[2].~facet_0)(v234, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                v235 = MEMORY[0x277D82670];
                std::ostream::flush();
                sub_2621D5EE8("err", "scalar assign should create a storage first");
                std::ios_base::getloc((v235 + *(*v235 - 24)));
                v236 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
                (v236->__vftable[2].~facet_0)(v236, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              v307 = 0u;
              v308 = 0u;
              *__p = 0u;
              v237 = v323;
              v238 = v327;
              if (v325)
              {
                if (v323)
                {
                  do
                  {
                    ++*v238++;
                    --v237;
                  }

                  while (v237);
                }
              }

              else if (v323)
              {
                v239 = 0;
                v240 = *(&v319 + 1);
                v241 = v320;
                do
                {
                  v242 = 0;
                  ++v238[v241 * __p[1] + v240 * __p[0]];
                  do
                  {
                    v243 = __p[v242 + 1] + 1;
                    __p[v242 + 1] = v243;
                    if (v243 != *(&v317 + v242 * 8))
                    {
                      break;
                    }

                    __p[v242-- + 1] = 0;
                  }

                  while (v242 != -2);
                  ++v239;
                }

                while (v239 != v237);
              }

              *&src = &unk_2874EEB10;
              if (v324)
              {
                sub_2621D1B78(v324);
              }
            }

            v207 += 2;
          }

          while (v207 != v208);
        }

        v307 = 0u;
        v308 = 0u;
        *__p = 0u;
        sub_2621D1AA0(v309, &v300);
        LODWORD(v315) = 0;
        v314 = 0u;
        v313 = 0u;
        v312 = 0u;
        *__p = *&v309[8];
        v307 = v310;
        v308 = v311;
        src = 0u;
        v317 = 0u;
        v318 = 0u;
        v320 = v310;
        v321 = v311;
        v319 = *&v309[8];
        sub_2621D1AA0(&v322, v309);
        v328 = v312;
        v329 = v313;
        v330 = v314;
        v331 = v315;
        src = v319;
        v317 = v320;
        v318 = v321;
        v291 = v321;
        v290 = v320;
        v298 = 0;
        v299 = 0;
        v294 = 0u;
        v295 = 0u;
        v289 = v319;
        v288 = &unk_2874EEB10;
        v292 = *(&v319 + 1);
        v293 = 1;
        v296 = v319 * *(&v319 + 1);
        v297 = 0;
        sub_2621D7174();
      }

      v128 = v258 + 1;
      v81 = v285;
      v84 = v264;
    }

    while (v258 + 1 < ((v286 - v285) >> 3));
    v127 = v263;
    sub_2622AE920(v263, v262);
    if (v81)
    {
LABEL_138:
      v286 = v81;
      operator delete(v81);
    }
  }

  if (v251 != v252)
  {
LABEL_140:
    v263 = v127;
    v127 = 0;
  }

  v249 = *MEMORY[0x277D85DE8];

  return v263;
}

uint64_t sub_2621D0DD4(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10, __n128 a11)
{
  v11 = *&a6;
  v31 = sub_262240264(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  v32 = *a1[2].f32;
  v33 = *(a2 + 48);
  v34 = *a1->f32;
  v35 = vadd_f32(*&v31, *&v33);
  *&v14 = *(a2 + 48);
  *(&v14 + 1) = v35;
  *&v15 = v14;
  *(&v15 + 1) = *a1;
  v37 = v15;
  v38 = v14;
  *&v14 = v33;
  *(&v14 + 1) = v32;
  v36 = v14;
  v16 = sub_2621C92AC(&v38, &v37, 0);
  v17 = sub_2621C92AC(&v38, &v36, 0);
  result = 0;
  v19 = vsub_f32(v35, *&v33);
  v20 = vsub_f32(*&v32, *&v34);
  *v21.i32 = -*&v19.i32[1];
  v22 = vzip1_s32(v21, v19);
  v23 = vmul_f32(v20, v22);
  if (vaddv_f32(v23) != 0.0)
  {
    v24 = vmul_f32(vsub_f32(*&v33, *&v34), v22);
    v25 = vmla_n_f32(*&v34, v20, vdiv_f32(vadd_f32(v24, vdup_lane_s32(v24, 1)), vadd_f32(v23, vdup_lane_s32(v23, 1))).f32[0]);
    v26 = vadd_f32(*&v33, vmul_f32(vadd_f32(*a1, a1[2]), 0xBF000000BF000000));
    v27 = sqrtf(vaddv_f32(vmul_f32(v26, v26)));
    if (vaddv_f32(vmul_f32(*&v31, vsub_f32(v25, *&v33))) <= 0.0)
    {
      if (fminf(v16, v17) >= v11 || v27 >= 4.0)
      {
        return 0;
      }
    }

    else
    {
      v28 = fminf(v16, v17);
      if (vaddv_f32(vmul_f32(vsub_f32(v25, *&v34), vsub_f32(v25, *&v32))) > 0.00001 && v28 >= v11 || v27 >= 4.0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

_BYTE *sub_2621D0F64(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2621CC980();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *sub_2621D101C(void *a1, void *a2)
{
  v4 = sub_2621D1580(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_2621D19D0(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_2621D1118(void *a1, void *a2)
{
  v4 = sub_2621D1580(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t sub_2621D1580(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL sub_2621D19D0(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_2621D1A44(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_2621D1AA0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EEB10;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_2621D1B78(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_2621D1BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 8);
  v7[0] = 0;
  v7[1] = v5;
  v7[2] = 1;
  sub_2621D4A3C((a2 + 8), v7, *a3, *(a3 + 4), *(a3 + 8));
  sub_2621D540C(a1, a2, v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2621D1C78(uint64_t a1, int *a2)
{
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v14 = *(a1 + 104);
  v15 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v14)
    {
      v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = vdupq_n_s64(v14 - 1);
      v18 = xmmword_2623A7630;
      v19 = xmmword_2623A7620;
      v20 = (v15 + 8);
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v19));
        if (vuzp1_s16(v22, *v17.i8).u8[0])
        {
          *(v20 - 2) = v13;
        }

        if (vuzp1_s16(v22, *&v17).i8[2])
        {
          *(v20 - 1) = v13;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
        {
          *v20 = v13;
          v20[1] = v13;
        }

        v18 = vaddq_s64(v18, v21);
        v19 = vaddq_s64(v19, v21);
        v20 += 4;
        v16 -= 4;
      }

      while (v16);
    }
  }

  else if (v14)
  {
    v23 = 0;
    v24 = *(a1 + 56);
    v25 = *(a1 + 8);
    do
    {
      *(v15 + 4 * v24 * v23) = v13;
      if (v23 + 1 == v25)
      {
        v23 = 0;
      }

      else
      {
        ++v23;
      }

      --v14;
    }

    while (v14);
  }

  return a1;
}

uint64_t sub_2621D1F28(uint64_t result, unint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  v8 = result;
  while (2)
  {
    v9 = (a2 - 12);
    v195 = (a2 - 36);
    v196 = (a2 - 24);
    v10 = v8;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v10;
          v11 = a2 - v10;
          v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 2);
          if (v12 <= 2)
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              result = (*a3)((a2 - 12), v10);
              if (!result)
              {
                return result;
              }

LABEL_106:
              v120 = *v10;
              v203 = *(v10 + 8);
              v202 = v120;
              v121 = *v9;
              *(v10 + 8) = *(a2 - 4);
              *v10 = v121;
              v122 = v202;
              v123 = v203;
              goto LABEL_107;
            }

            goto LABEL_10;
          }

          switch(v12)
          {
            case 3:
              v119 = (*a3)((v10 + 12), v10);
              result = (*a3)((a2 - 12), (v10 + 12));
              if (v119)
              {
                if (result)
                {
                  goto LABEL_106;
                }

                v185 = *v10;
                v203 = *(v10 + 8);
                v202 = v185;
                *v10 = *(v10 + 12);
                *(v10 + 8) = *(v10 + 20);
                *(v10 + 12) = v202;
                *(v10 + 20) = v203;
                result = (*a3)((a2 - 12), (v10 + 12));
                if (!result)
                {
                  return result;
                }

                v122 = *(v10 + 12);
                v202 = v122;
                v123 = *(v10 + 20);
                v203 = v123;
                v186 = *(a2 - 4);
                *(v10 + 12) = *v9;
                *(v10 + 20) = v186;
LABEL_107:
                *(a2 - 4) = v123;
                *v9 = v122;
                return result;
              }

              if (!result)
              {
                return result;
              }

              v202 = *(v10 + 12);
              v173 = v202;
              v203 = *(v10 + 20);
              v174 = v203;
              v175 = *(a2 - 4);
              *(v10 + 12) = *v9;
              *(v10 + 20) = v175;
              *(a2 - 4) = v174;
              *v9 = v173;
LABEL_181:
              result = (*a3)((v10 + 12), v10);
              if (result)
              {
                v194 = *v10;
                v203 = *(v10 + 8);
                v202 = v194;
                *v10 = *(v10 + 12);
                *(v10 + 8) = *(v10 + 20);
                *(v10 + 12) = v202;
                *(v10 + 20) = v203;
              }

              return result;
            case 4:
              v124 = (*a3)((v10 + 12), v10);
              v125 = (*a3)((v10 + 24), (v10 + 12));
              if ((v124 & 1) == 0)
              {
                if (v125)
                {
                  v176 = *(v10 + 20);
                  v177 = *(v10 + 12);
                  *(v10 + 12) = *(v10 + 24);
                  *(v10 + 20) = *(v10 + 32);
                  *(v10 + 24) = v177;
                  *(v10 + 32) = v176;
                  if ((*a3)((v10 + 12), v10))
                  {
                    v178 = *v10;
                    v203 = *(v10 + 8);
                    v202 = v178;
                    *v10 = *(v10 + 12);
                    *(v10 + 8) = *(v10 + 20);
                    *(v10 + 12) = v202;
                    *(v10 + 20) = v203;
                  }
                }

                goto LABEL_178;
              }

              if (v125)
              {
                v126 = *v10;
                v203 = *(v10 + 8);
                v202 = v126;
                *v10 = *(v10 + 24);
                *(v10 + 8) = *(v10 + 32);
                *(v10 + 24) = v202;
                v127 = v203;
              }

              else
              {
                v187 = *v10;
                v203 = *(v10 + 8);
                v202 = v187;
                *v10 = *(v10 + 12);
                *(v10 + 8) = *(v10 + 20);
                *(v10 + 12) = v202;
                *(v10 + 20) = v203;
                if (!(*a3)((v10 + 24), (v10 + 12)))
                {
                  goto LABEL_178;
                }

                v127 = *(v10 + 20);
                v188 = *(v10 + 12);
                *(v10 + 12) = *(v10 + 24);
                *(v10 + 20) = *(v10 + 32);
                *(v10 + 24) = v188;
              }

              *(v10 + 32) = v127;
LABEL_178:
              result = (*a3)((a2 - 12), (v10 + 24));
              if (!result)
              {
                return result;
              }

              v202 = *(v10 + 24);
              v189 = v202;
              v203 = *(v10 + 32);
              v190 = v203;
              v191 = *(a2 - 4);
              *(v10 + 24) = *v9;
              *(v10 + 32) = v191;
              *(a2 - 4) = v190;
              *v9 = v189;
              result = (*a3)((v10 + 24), (v10 + 12));
              if (!result)
              {
                return result;
              }

              v192 = *(v10 + 20);
              v193 = *(v10 + 12);
              *(v10 + 12) = *(v10 + 24);
              *(v10 + 20) = *(v10 + 32);
              *(v10 + 24) = v193;
              *(v10 + 32) = v192;
              goto LABEL_181;
            case 5:

              return sub_2621D4260(v10, (v10 + 12), (v10 + 24), (v10 + 36), (a2 - 12), a3);
          }

LABEL_10:
          if (v11 <= 287)
          {
            v128 = (v10 + 12);
            v130 = v10 == a2 || v128 == a2;
            if (a5)
            {
              if (!v130)
              {
                v131 = 0;
                v132 = v10;
                do
                {
                  v133 = v132;
                  v132 = v128;
                  result = (*a3)(v128, v133);
                  if (result)
                  {
                    v134 = *v132;
                    v203 = *(v132 + 8);
                    v202 = v134;
                    v135 = v131;
                    while (1)
                    {
                      v136 = v10 + v135;
                      *(v136 + 12) = *(v10 + v135);
                      *(v136 + 20) = *(v10 + v135 + 8);
                      if (!v135)
                      {
                        break;
                      }

                      v135 -= 12;
                      result = (*a3)(&v202, (v135 + v10));
                      if ((result & 1) == 0)
                      {
                        v137 = v10 + v135 + 12;
                        goto LABEL_126;
                      }
                    }

                    v137 = v10;
LABEL_126:
                    v138 = v202;
                    *(v137 + 8) = v203;
                    *v137 = v138;
                  }

                  v128 = (v132 + 12);
                  v131 += 12;
                }

                while (v132 + 12 != a2);
              }
            }

            else if (!v130)
            {
              do
              {
                v179 = v8;
                v8 = v128;
                result = (*a3)(v128, v179);
                if (result)
                {
                  v180 = *v8;
                  v203 = *(v8 + 8);
                  v202 = v180;
                  v181 = v8;
                  do
                  {
                    v182 = v181;
                    v183 = *(v181 - 12);
                    v181 -= 12;
                    *v182 = v183;
                    *(v182 + 8) = *(v182 - 4);
                    result = (*a3)(&v202, (v182 - 24));
                  }

                  while ((result & 1) != 0);
                  v184 = v202;
                  *(v181 + 8) = v203;
                  *v181 = v184;
                }

                v128 = (v8 + 12);
              }

              while (v8 + 12 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v139 = (v12 - 2) >> 1;
              v197 = a2;
              v199 = v139;
              do
              {
                v140 = v139;
                if (v199 >= v139)
                {
                  v141 = (2 * v139) | 1;
                  v142 = v8 + 12 * v141;
                  if (2 * v139 + 2 < v12 && (*a3)((v8 + 12 * v141), (v142 + 12)))
                  {
                    v142 += 12;
                    v141 = 2 * v140 + 2;
                  }

                  v143 = v8 + 12 * v140;
                  result = (*a3)(v142, v143);
                  if ((result & 1) == 0)
                  {
                    v144 = *v143;
                    v203 = *(v143 + 8);
                    v202 = v144;
                    do
                    {
                      v145 = v142;
                      v146 = *v142;
                      *(v143 + 8) = *(v142 + 8);
                      *v143 = v146;
                      if (v199 < v141)
                      {
                        break;
                      }

                      v147 = (2 * v141) | 1;
                      v142 = v8 + 12 * v147;
                      v148 = 2 * v141 + 2;
                      if (v148 < v12 && (*a3)((v8 + 12 * v147), (v142 + 12)))
                      {
                        v142 += 12;
                        v147 = v148;
                      }

                      result = (*a3)(v142, &v202);
                      v143 = v145;
                      v141 = v147;
                    }

                    while (!result);
                    v149 = v202;
                    *(v145 + 8) = v203;
                    *v145 = v149;
                    a2 = v197;
                  }
                }

                v139 = v140 - 1;
              }

              while (v140);
              v150 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 2);
              do
              {
                v151 = 0;
                v152 = *v8;
                v201 = *(v8 + 8);
                v200 = v152;
                v153 = v8;
                do
                {
                  v154 = v153 + 12 * v151;
                  v155 = v154 + 12;
                  v156 = (2 * v151) | 1;
                  v157 = 2 * v151 + 2;
                  if (v157 < v150)
                  {
                    v158 = v154 + 24;
                    result = (*a3)((v154 + 12), (v154 + 24));
                    if (result)
                    {
                      v155 = v158;
                      v156 = v157;
                    }
                  }

                  v159 = *v155;
                  *(v153 + 8) = *(v155 + 8);
                  *v153 = v159;
                  v153 = v155;
                  v151 = v156;
                }

                while (v156 <= ((v150 - 2) >> 1));
                v160 = (a2 - 12);
                if (v155 == a2 - 12)
                {
                  v163 = a2 - 12;
                  v171 = v200;
                  *(v155 + 8) = v201;
                  *v155 = v171;
                }

                else
                {
                  v161 = *v160;
                  *(v155 + 8) = *(a2 - 4);
                  *v155 = v161;
                  v162 = v200;
                  *(a2 - 4) = v201;
                  v163 = a2 - 12;
                  *v160 = v162;
                  v164 = v155 - v8 + 12;
                  if (v164 >= 13)
                  {
                    v165 = (-2 - 0x5555555555555555 * (v164 >> 2)) >> 1;
                    v166 = v8 + 12 * v165;
                    result = (*a3)(v166, v155);
                    if (result)
                    {
                      v167 = *v155;
                      v203 = *(v155 + 8);
                      v202 = v167;
                      do
                      {
                        v168 = v166;
                        v169 = *v166;
                        *(v155 + 8) = *(v166 + 8);
                        *v155 = v169;
                        if (!v165)
                        {
                          break;
                        }

                        v165 = (v165 - 1) >> 1;
                        v166 = v8 + 12 * v165;
                        result = (*a3)(v166, &v202);
                        v155 = v168;
                      }

                      while ((result & 1) != 0);
                      v170 = v202;
                      *(v168 + 8) = v203;
                      *v168 = v170;
                    }
                  }
                }

                v172 = v150-- <= 2;
                a2 = v163;
              }

              while (!v172);
            }

            return result;
          }

          v13 = v12 >> 1;
          v14 = v10 + 12 * (v12 >> 1);
          v15 = *a3;
          if (v11 >= 0x601)
          {
            v16 = v15(v14, v10);
            v17 = (*a3)((a2 - 12), v14);
            if (v16)
            {
              if (v17)
              {
                v18 = *v10;
                v203 = *(v10 + 8);
                v202 = v18;
                v19 = *v9;
                *(v10 + 8) = *(a2 - 4);
                *v10 = v19;
                goto LABEL_27;
              }

              v36 = *v10;
              v203 = *(v10 + 8);
              v202 = v36;
              v37 = *v14;
              *(v10 + 8) = *(v14 + 8);
              *v10 = v37;
              v38 = v202;
              *(v14 + 8) = v203;
              *v14 = v38;
              if ((*a3)((a2 - 12), v14))
              {
                v39 = *v14;
                v203 = *(v14 + 8);
                v202 = v39;
                v40 = *v9;
                *(v14 + 8) = *(a2 - 4);
                *v14 = v40;
LABEL_27:
                v41 = v202;
                *(a2 - 4) = v203;
                *v9 = v41;
              }
            }

            else if (v17)
            {
              v24 = *v14;
              v203 = *(v14 + 8);
              v202 = v24;
              v25 = *v9;
              *(v14 + 8) = *(a2 - 4);
              *v14 = v25;
              v26 = v202;
              *(a2 - 4) = v203;
              *v9 = v26;
              if ((*a3)(v14, v10))
              {
                v27 = *v10;
                v203 = *(v10 + 8);
                v202 = v27;
                v28 = *v14;
                *(v10 + 8) = *(v14 + 8);
                *v10 = v28;
                v29 = v202;
                *(v14 + 8) = v203;
                *v14 = v29;
              }
            }

            v42 = v10 + 12 * v13 - 12;
            v43 = (*a3)((v8 + 12 * v13 - 12), (v8 + 12));
            v44 = (*a3)(v196, (v8 + 12 * v13 - 12));
            if (v43)
            {
              if (v44)
              {
                v202 = *(v8 + 12);
                v45 = v202;
                v203 = *(v8 + 20);
                v46 = v203;
                v47 = *(a2 - 16);
                *(v8 + 12) = *v196;
                *(v8 + 20) = v47;
                *(a2 - 16) = v46;
                *v196 = v45;
              }

              else
              {
                v202 = *(v8 + 12);
                v60 = v202;
                v203 = *(v8 + 20);
                v61 = v203;
                v62 = *(v8 + 12 * v13 - 4);
                *(v8 + 12) = *v42;
                *(v8 + 20) = v62;
                *(v8 + 12 * v13 - 4) = v61;
                *v42 = v60;
                if ((*a3)(v196, (v8 + 12 * v13 - 12)))
                {
                  v63 = *v42;
                  v203 = *(v8 + 12 * v13 - 4);
                  v202 = v63;
                  v64 = *v196;
                  *(v8 + 12 * v13 - 4) = *(a2 - 16);
                  *v42 = v64;
                  v65 = v202;
                  *(a2 - 16) = v203;
                  *v196 = v65;
                }
              }
            }

            else if (v44)
            {
              v48 = *v42;
              v203 = *(v8 + 12 * v13 - 4);
              v202 = v48;
              v49 = *v196;
              *(v8 + 12 * v13 - 4) = *(a2 - 16);
              *v42 = v49;
              v50 = v202;
              *(a2 - 16) = v203;
              *v196 = v50;
              if ((*a3)((v8 + 12 * v13 - 12), (v8 + 12)))
              {
                v202 = *(v8 + 12);
                v51 = v202;
                v203 = *(v8 + 20);
                v52 = v203;
                v53 = *(v8 + 12 * v13 - 4);
                *(v8 + 12) = *v42;
                *(v8 + 20) = v53;
                *(v8 + 12 * v13 - 4) = v52;
                *v42 = v51;
              }
            }

            v66 = v8 + 12 * v13;
            v67 = (*a3)((v66 + 12), (v8 + 24));
            v68 = (*a3)(v195, (v66 + 12));
            if (v67)
            {
              if (v68)
              {
                v202 = *(v8 + 24);
                v69 = v202;
                v203 = *(v8 + 32);
                v70 = v203;
                v71 = *(a2 - 28);
                *(v8 + 24) = *v195;
                *(v8 + 32) = v71;
                *(a2 - 28) = v70;
                *v195 = v69;
              }

              else
              {
                v202 = *(v8 + 24);
                v78 = v202;
                v203 = *(v8 + 32);
                v79 = v203;
                v80 = *(v66 + 20);
                *(v8 + 24) = *(v66 + 12);
                *(v8 + 32) = v80;
                *(v66 + 20) = v79;
                *(v66 + 12) = v78;
                if ((*a3)(v195, (v66 + 12)))
                {
                  v81 = *(v66 + 12);
                  v203 = *(v66 + 20);
                  v202 = v81;
                  v82 = *v195;
                  *(v66 + 20) = *(a2 - 28);
                  *(v66 + 12) = v82;
                  v83 = v202;
                  *(a2 - 28) = v203;
                  *v195 = v83;
                }
              }
            }

            else if (v68)
            {
              v72 = *(v66 + 12);
              v203 = *(v66 + 20);
              v202 = v72;
              v73 = *v195;
              *(v66 + 20) = *(a2 - 28);
              *(v66 + 12) = v73;
              v74 = v202;
              *(a2 - 28) = v203;
              *v195 = v74;
              if ((*a3)((v66 + 12), (v8 + 24)))
              {
                v202 = *(v8 + 24);
                v75 = v202;
                v203 = *(v8 + 32);
                v76 = v203;
                v77 = *(v66 + 20);
                *(v8 + 24) = *(v66 + 12);
                *(v8 + 32) = v77;
                *(v66 + 20) = v76;
                *(v66 + 12) = v75;
              }
            }

            v84 = (*a3)(v14, v42);
            v85 = (*a3)((v66 + 12), v14);
            if (v84)
            {
              if (v85)
              {
                v86 = *v42;
                v203 = *(v42 + 8);
                v202 = v86;
                *v42 = *(v66 + 12);
                *(v42 + 8) = *(v66 + 20);
                goto LABEL_55;
              }

              v91 = *v42;
              v203 = *(v42 + 8);
              v202 = v91;
              *v42 = *v14;
              *(v42 + 8) = *(v14 + 8);
              v92 = v202;
              *(v14 + 8) = v203;
              *v14 = v92;
              if ((*a3)((v66 + 12), v14))
              {
                v93 = *v14;
                v203 = *(v14 + 8);
                v202 = v93;
                *v14 = *(v66 + 12);
                *(v14 + 8) = *(v66 + 20);
LABEL_55:
                v94 = v202;
                *(v66 + 20) = v203;
                *(v66 + 12) = v94;
              }
            }

            else if (v85)
            {
              v87 = *v14;
              v203 = *(v14 + 8);
              v202 = v87;
              *v14 = *(v66 + 12);
              *(v14 + 8) = *(v66 + 20);
              v88 = v202;
              *(v66 + 20) = v203;
              *(v66 + 12) = v88;
              if ((*a3)(v14, v42))
              {
                v89 = *v42;
                v203 = *(v42 + 8);
                v202 = v89;
                *v42 = *v14;
                *(v42 + 8) = *(v14 + 8);
                v90 = v202;
                *(v14 + 8) = v203;
                *v14 = v90;
              }
            }

            v95 = *v8;
            v203 = *(v8 + 8);
            v202 = v95;
            v96 = *v14;
            *(v8 + 8) = *(v14 + 8);
            *v8 = v96;
            v97 = v202;
            *(v14 + 8) = v203;
            *v14 = v97;
            goto LABEL_57;
          }

          v20 = v15(v10, v14);
          v21 = (*a3)((a2 - 12), v10);
          if (v20)
          {
            if (v21)
            {
              v22 = *v14;
              v203 = *(v14 + 8);
              v202 = v22;
              v23 = *v9;
              *(v14 + 8) = *(a2 - 4);
              *v14 = v23;
LABEL_36:
              v59 = v202;
              *(a2 - 4) = v203;
              *v9 = v59;
              goto LABEL_57;
            }

            v54 = *v14;
            v203 = *(v14 + 8);
            v202 = v54;
            v55 = *v10;
            *(v14 + 8) = *(v10 + 8);
            *v14 = v55;
            v56 = v202;
            *(v10 + 8) = v203;
            *v10 = v56;
            if ((*a3)((a2 - 12), v10))
            {
              v57 = *v10;
              v203 = *(v10 + 8);
              v202 = v57;
              v58 = *v9;
              *(v10 + 8) = *(a2 - 4);
              *v10 = v58;
              goto LABEL_36;
            }
          }

          else if (v21)
          {
            v30 = *v10;
            v203 = *(v10 + 8);
            v202 = v30;
            v31 = *v9;
            *(v10 + 8) = *(a2 - 4);
            *v10 = v31;
            v32 = v202;
            *(a2 - 4) = v203;
            *v9 = v32;
            if ((*a3)(v10, v14))
            {
              v33 = *v14;
              v203 = *(v14 + 8);
              v202 = v33;
              v34 = *v10;
              *(v14 + 8) = *(v10 + 8);
              *v14 = v34;
              v35 = v202;
              *(v10 + 8) = v203;
              *v10 = v35;
            }
          }

LABEL_57:
          --a4;
          if (a5 & 1) != 0 || ((*a3)((v8 - 12), v8))
          {
            break;
          }

          v110 = *v8;
          v201 = *(v8 + 8);
          v200 = v110;
          result = (*a3)(&v200, (a2 - 12));
          if (result)
          {
            v10 = v8;
            do
            {
              v10 += 12;
              result = (*a3)(&v200, v10);
            }

            while ((result & 1) == 0);
          }

          else
          {
            v111 = (v8 + 12);
            do
            {
              v10 = v111;
              if (v111 >= a2)
              {
                break;
              }

              result = (*a3)(&v200, v111);
              v111 = (v10 + 12);
            }

            while (!result);
          }

          v112 = a2;
          if (v10 < a2)
          {
            v112 = a2;
            do
            {
              v112 -= 12;
              result = (*a3)(&v200, v112);
            }

            while ((result & 1) != 0);
          }

          while (v10 < v112)
          {
            v113 = *v10;
            v203 = *(v10 + 8);
            v202 = v113;
            v114 = *v112;
            *(v10 + 8) = *(v112 + 8);
            *v10 = v114;
            v115 = v202;
            *(v112 + 8) = v203;
            *v112 = v115;
            do
            {
              v10 += 12;
            }

            while (!(*a3)(&v200, v10));
            do
            {
              v112 -= 12;
              result = (*a3)(&v200, v112);
            }

            while ((result & 1) != 0);
          }

          v116 = (v10 - 12);
          if (v10 - 12 != v8)
          {
            v117 = *v116;
            *(v8 + 8) = *(v10 - 4);
            *v8 = v117;
          }

          a5 = 0;
          v118 = v200;
          *(v10 - 4) = v201;
          *v116 = v118;
        }

        v98 = *v8;
        v201 = *(v8 + 8);
        v200 = v98;
        v99 = v8;
        do
        {
          v100 = v99;
          v99 = (v99 + 12);
        }

        while (((*a3)(v99, &v200) & 1) != 0);
        v101 = a2;
        if (v100 == v8)
        {
          v101 = a2;
          do
          {
            if (v99 >= v101)
            {
              break;
            }

            v101 = (v101 - 12);
          }

          while (((*a3)(v101, &v200) & 1) == 0);
        }

        else
        {
          do
          {
            v101 = (v101 - 12);
          }

          while (!(*a3)(v101, &v200));
        }

        if (v99 < v101)
        {
          v102 = v99;
          v103 = v101;
          do
          {
            v202 = *v102;
            v104 = v202;
            v203 = *(v102 + 8);
            v105 = v203;
            v106 = *(v103 + 2);
            *v102 = *v103;
            *(v102 + 8) = v106;
            *(v103 + 2) = v105;
            *v103 = v104;
            do
            {
              v100 = v102;
              v102 += 12;
            }

            while (((*a3)(v102, &v200) & 1) != 0);
            do
            {
              v103 = (v103 - 12);
            }

            while (!(*a3)(v103, &v200));
          }

          while (v102 < v103);
        }

        if (v100 != v8)
        {
          v107 = *v100;
          *(v8 + 8) = *(v100 + 8);
          *v8 = v107;
        }

        v108 = v200;
        *(v100 + 8) = v201;
        *v100 = v108;
        if (v99 >= v101)
        {
          break;
        }

LABEL_78:
        result = sub_2621D1F28(v8, v100, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v100 + 12;
      }

      v109 = sub_2621D4518(v8, v100, a3);
      v10 = v100 + 12;
      result = sub_2621D4518(v100 + 12, a2, a3);
      if (result)
      {
        break;
      }

      if (!v109)
      {
        goto LABEL_78;
      }
    }

    a2 = v100;
    if (!v109)
    {
      continue;
    }

    return result;
  }
}