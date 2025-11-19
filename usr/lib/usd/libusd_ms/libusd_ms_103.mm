void sub_29AA638AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA63B20(uint64_t a1, const void **a2, uint64_t *a3, char a4)
{
  if ((a4 & 1) == 0 && a1 + 224 != sub_29A01BCCC(a1 + 216, a2))
  {
    return 0;
  }

  v12 = a2;
  v8 = sub_29AA7B448((a1 + 216), a2, &unk_29B4D6118, &v12);
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v8[8];
  v8[7] = v10;
  v8[8] = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  return 1;
}

uint64_t sub_29AA63BDC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v18 = 0;
  (*(a1 + 440))(a3, a5, &v18);
  v8 = (*(a1 + 400))(a2, v18);
  v9 = (*(a1 + 432))();
  v19 = a4;
  v10 = sub_29AA7E0B4((a1 + 288), a4, &unk_29B4D6118, &v19);
  sub_29A0A171C(v10 + 7, v9);
  v11 = (*(a1 + 328))(v8);
  v12 = (*(a1 + 496))(v8);
  v13 = (*(a1 + 336))(v8);
  if (v9)
  {
    v14 = 0;
    v15 = 4 * (v12 / v13);
    do
    {
      v16 = *v11;
      v19 = a4;
      *(sub_29AA7E0B4((a1 + 288), a4, &unk_29B4D6118, &v19)[7] + 4 * v14++) = v16;
      v11 = (v11 + v15);
    }

    while (v9 != v14);
  }

  return 1;
}

__n128 sub_29AA63D10(__n128 **a1, __n128 *a2)
{
  v4 = operator new(0x28uLL);
  result = *a2;
  v4[1] = *a2;
  v4[2].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v6 = *a1;
  v4->n128_u64[0] = *a1;
  v4->n128_u64[1] = a1;
  *(v6 + 8) = v4;
  *a1 = v4;
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_29AA63D70(uint64_t a1, uint64_t a2)
{
  v183[0] = 0;
  v183[1] = 0;
  v186[0] = 0;
  v186[1] = 0;
  v184 = 0;
  v185 = v186;
  v187[1] = 0;
  v188 = 0;
  v187[0] = 0;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v4 = sub_29AAB9854(a2, v183);
  if (v4)
  {
    goto LABEL_17;
  }

  v5 = *(a2 + 176);
  if (!v5)
  {
    v8 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: empty buffer");
    sub_29AA5B750(v8, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_16;
  }

  v6 = *(a2 + 184) & ~(*(a2 + 184) >> 63);
  v182 = 0;
  if ((*(a1 + 560))(v5, v6, &v182))
  {
    v7 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: unable to get GCLSource from data");
    sub_29AA5B750(v7, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(a1 + 576))(v182);
    goto LABEL_16;
  }

  (*(a1 + 568))(v182, "verify-integrity", 1);
  (*(a1 + 568))(v182, "user-allocates", 0);
  v181 = 0;
  if ((*(a1 + 384))(v182, &v181))
  {
    v9 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: unable to get GCLBufferList from GCLSource");
LABEL_13:
    sub_29AA5B750(v9, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(a1 + 576))(v182);
    (*(a1 + 424))(v181);
    goto LABEL_16;
  }

  if ((*(a1 + 512))(v182, v181))
  {
    v9 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: unable to decode mesh data from GCLSource");
    goto LABEL_13;
  }

  (*(a1 + 576))(v182);
  *(a1 + 104) = sub_29AA65224(v187);
  *(a1 + 108) = v189;
  if ((a1 + 112) != &v190)
  {
    sub_29A36CF34((a1 + 112), v190, *(&v190 + 1), (*(&v190 + 1) - v190) >> 2);
  }

  v180 = 0;
  v11 = (*(a1 + 392))(v181, "vtxs");
  if ((*(a1 + 440))(v11, "bitdepth", &v180))
  {
    v12 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: Unable to read points quantization parameters");
    sub_29AA5B750(v12, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_31:
    (*(a1 + 424))(v181);
LABEL_16:
    v4 = 100;
    goto LABEL_17;
  }

  *(a1 + 136) = v180;
  v13 = (*(a1 + 432))(v11);
  v14 = (*(a1 + 504))(v11);
  v158 = (a1 + 80);
  sub_29A0A171C((a1 + 80), v14 * v13);
  v15 = *(a1 + 80);
  v16 = (*(a1 + 328))(v11);
  v17 = (*(a1 + 432))(v11);
  v18 = (*(a1 + 504))(v11);
  memcpy(v15, v16, 4 * v17 * v18);
  v179 = 0;
  if ((*(a1 + 440))(v11, "idxdby", &v179))
  {
    v19 = sub_29AABB028();
    sub_29A008E78(&__p, "decode: Unable to retrieve face vertex indices");
    sub_29AA5B750(v19, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_31;
  }

  v20 = (*(a1 + 392))(v181, "topo");
  v21 = (*(a1 + 432))();
  v22 = (*(a1 + 504))(v20);
  sub_29A0A171C((a1 + 32), v22 * v21);
  v23 = *(a1 + 32);
  v24 = (*(a1 + 328))(v20);
  v25 = (*(a1 + 432))(v20);
  v26 = (*(a1 + 504))(v20);
  memcpy(v23, v24, 4 * v25 * v26);
  v27 = (*(a1 + 400))(v181, v179);
  v28 = (*(a1 + 432))();
  v29 = (*(a1 + 504))(v27);
  sub_29A0A171C((a1 + 56), v29 * v28);
  v30 = *(a1 + 56);
  v31 = (*(a1 + 328))(v27);
  v32 = (*(a1 + 432))(v27);
  v33 = (*(a1 + 504))(v27);
  memcpy(v30, v31, 4 * v32 * v33);
  if ((a1 + 192) != (&v194 + 8))
  {
    sub_29A095E3C(a1 + 192, *(&v194 + 1), v195, 0xAAAAAAAAAAAAAAABLL * ((v195 - *(&v194 + 1)) >> 3));
  }

  if ((a1 + 168) != &v193)
  {
    sub_29AA7D708((a1 + 168), v193, *(&v193 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v193 + 1) - v193) >> 3));
  }

  v34 = (*(a1 + 392))(v181, "fgrp");
  v4 = v34;
  if (v34)
  {
    v35 = (*(a1 + 432))(v34);
    sub_29A0A171C((a1 + 144), v35);
    v36 = *(a1 + 144);
    v37 = (*(a1 + 328))(v4);
    v38 = (*(a1 + 432))(v4);
    memcpy(v36, v37, 4 * v38);
  }

  v39 = v185;
  v40 = (*(a1 + 368))(v181);
  v41 = (*(a1 + 376))(v181);
  v159 = v41;
  while (v40 != v41)
  {
    v42 = (*(a1 + 344))(v40);
    v43 = (*(a1 + 456))();
    sub_29A008E78(&v176, v43);
    if (SHIBYTE(v178) < 0)
    {
      if (v177 != 4)
      {
        goto LABEL_146;
      }

      v44 = v176;
    }

    else
    {
      if (HIBYTE(v178) != 4)
      {
        goto LABEL_146;
      }

      v44 = &v176;
    }

    if (*v44 != 1920234593)
    {
LABEL_146:
      v130 = 1;
      goto LABEL_147;
    }

    v45 = operator new(0xB8uLL);
    *(v45 + 1) = 0;
    *(v45 + 2) = 0;
    *v45 = &unk_2A2070630;
    *(v45 + 24) = 0u;
    *(v45 + 40) = 0u;
    *(v45 + 56) = 0u;
    *(v45 + 72) = 0u;
    *(v45 + 88) = 0u;
    *(v45 + 104) = 0u;
    *(v45 + 120) = 0u;
    *(v45 + 136) = 0u;
    *(v45 + 152) = 0u;
    *(v45 + 168) = 0u;
    sub_29AA7AC00(&__p, (v39 + 7));
    v160 = (v45 + 24);
    std::string::operator=(v45 + 1, &__p);
    std::string::operator=((v45 + 136), v168);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v166);
    v45[160] = sub_29AA5DDD4(&v166);
    if ((v166 & 7) != 0)
    {
      atomic_fetch_add_explicit((v166 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(v45 + 42) = v169;
    v45[172] = v170;
    v45[96] = sub_29AA65224(v171);
    *(v45 + 25) = v172;
    sub_29A36CF34(v45 + 13, v173, v174, (v174 - v173) >> 2);
    v46 = (*(a1 + 504))(v42);
    *(v45 + 41) = v46;
    if (v46)
    {
      (*(a1 + 440))(v42, "bitdepth", &v180);
      *(v45 + 32) = v180;
      v47 = (*(a1 + 432))(v42);
      v48 = (*(a1 + 504))(v42);
      sub_29A0A171C(v45 + 6, v48 * v47);
      v49 = *(v45 + 6);
      v50 = (*(a1 + 328))(v42);
      v51 = (*(a1 + 432))(v42);
      v52 = (*(a1 + 504))(v42);
      memcpy(v49, v50, 4 * v51 * v52);
      if ((*(a1 + 440))(v42, "idxdby", &v180))
      {
        sub_29A0A171C(v45 + 9, 0);
      }

      else
      {
        v55 = (*(a1 + 400))(v181, v180);
        v56 = (*(a1 + 432))();
        v57 = (*(a1 + 504))(v55);
        sub_29A0A171C(v45 + 9, v57 * v56);
        v58 = *(v45 + 9);
        v59 = (*(a1 + 328))(v55);
        v60 = (*(a1 + 432))(v55);
        v61 = (*(a1 + 504))(v55);
        memcpy(v58, v59, 4 * v60 * v61);
      }

      v62 = v45[160];
      if ((v62 - 3) <= 1)
      {
        if (v175 != 1)
        {
          goto LABEL_138;
        }

        v165 = 0uLL;
        v164 = &v165;
        v63 = *(v45 + 41);
        if (*(v45 + 7) == *(v45 + 6))
        {
          LODWORD(v68) = 0;
        }

        else
        {
          v64 = 0;
          do
          {
            sub_29A011440(&v161, v63);
            if (*(v45 + 41) >= 1)
            {
              v65 = 0;
              v66 = v161;
              v67 = *(v45 + 6) + 4 * v64;
              do
              {
                v66[v65] = *(v67 + 4 * v65);
                ++v65;
              }

              while (v65 < *(v45 + 41));
            }

            sub_29AA7DBE4(&v164, &v161, &v161);
            if (v161)
            {
              v162 = v161;
              operator delete(v161);
            }

            v63 = *(v45 + 41);
            v64 += v63;
            v68 = (*(v45 + 7) - *(v45 + 6)) >> 2;
          }

          while (v68 > v64);
        }

        sub_29A0A171C(v45 + 9, v68 / v63);
        v69 = *(v45 + 6);
        if (*(v45 + 7) != v69)
        {
          v70 = 0;
          v71 = *(v45 + 41);
          do
          {
            sub_29A011440(&v161, v71);
            if (*(v45 + 41) >= 1)
            {
              v72 = 0;
              v73 = v161;
              v74 = *(v45 + 6) + 4 * v70;
              do
              {
                v73[v72] = *(v74 + 4 * v72);
                ++v72;
              }

              while (v72 < *(v45 + 41));
            }

            v75 = sub_29AA7DE78(&v164, &v161);
            v76 = v164;
            if (v75 == v164)
            {
              v77 = 0;
            }

            else
            {
              v77 = 0;
              do
              {
                v78 = v76[1];
                if (v78)
                {
                  do
                  {
                    v79 = v78;
                    v78 = *v78;
                  }

                  while (v78);
                }

                else
                {
                  do
                  {
                    v79 = v76[2];
                    v80 = *v79 == v76;
                    v76 = v79;
                  }

                  while (!v80);
                }

                ++v77;
                v76 = v79;
              }

              while (v79 != v75);
            }

            *(*(v45 + 9) + 4 * (v70 / *(v45 + 41))) = v77;
            if (v161)
            {
              v162 = v161;
              operator delete(v161);
            }

            v71 = *(v45 + 41);
            v70 += v71;
            v69 = *(v45 + 6);
          }

          while (v70 < ((*(v45 + 7) - v69) >> 2));
        }

        *(v45 + 7) = v69;
        v81 = v164;
        if (v164 != &v165)
        {
          do
          {
            v161 = 0;
            v162 = 0;
            v163 = 0;
            sub_29A0BE2C8(&v161, *(v81 + 4), *(v81 + 5), (*(v81 + 5) - *(v81 + 4)) >> 2);
            v83 = v161;
            v82 = v162;
            if (v161 != v162)
            {
              do
              {
                sub_29A00D250(v45 + 6, v83++);
              }

              while (v83 != v82);
              v83 = v161;
            }

            if (v83)
            {
              v162 = v83;
              operator delete(v83);
            }

            v84 = *(v81 + 1);
            if (v84)
            {
              do
              {
                v85 = v84;
                v84 = *v84;
              }

              while (v84);
            }

            else
            {
              do
              {
                v85 = *(v81 + 2);
                v80 = *v85 == v81;
                v81 = v85;
              }

              while (!v80);
            }

            v81 = v85;
          }

          while (v85 != &v165);
        }

        sub_29AA7DB80(&v164, v165);
        v62 = v45[160];
      }

      if (v62 == 5)
      {
        if (v175)
        {
          goto LABEL_138;
        }

        sub_29A011440(&v164, ((*(v45 + 10) - *(v45 + 9)) >> 2) * *(v45 + 41));
        v86 = *(v45 + 9);
        v87 = *(v45 + 10);
        v88 = v164;
        v89 = v87 - v86;
        if (v87 != v86)
        {
          v90 = 0;
          v91 = 0;
          v92 = v89 >> 2;
          if (v92 <= 1)
          {
            v92 = 1;
          }

          LODWORD(v93) = *(v45 + 41);
          do
          {
            if (v93 >= 1)
            {
              v94 = 0;
              v95 = *(v45 + 6);
              do
              {
                v88[v91 + v94] = *(v95 + 4 * *(v86 + 4 * v90) * v93 + 4 * v94);
                ++v94;
                v93 = *(v45 + 41);
              }

              while (v94 < v93);
            }

            ++v90;
            v91 += v93;
          }

          while (v90 != v92);
        }

        *(v45 + 10) = v86;
        v96 = *(v45 + 6);
        *(v45 + 6) = v88;
        v97 = *(v45 + 8);
        v98 = v165;
        v164 = v96;
        *(&v165 + 1) = v97;
        *(v45 + 56) = v98;
        if (v96)
        {
          *&v165 = v96;
          operator delete(v96);
        }

        v62 = v45[160];
      }

      if (v62 != 2)
      {
        goto LABEL_138;
      }

      if (v175 == 1)
      {
        sub_29A011440(&v164, (*(a1 + 40) - *(a1 + 32)) >> 2);
        v99 = *(a1 + 32);
        v100 = *(a1 + 40);
        v101 = v100 - v99;
        v41 = v159;
        if (v100 == v99)
        {
LABEL_125:
          sub_29A36CF34(v45 + 9, v164, v165, (v165 - v164) >> 2);
          goto LABEL_136;
        }

        v102 = 0;
        v103 = 0;
        v104 = v101 >> 2;
        v105 = v164;
        if (v104 <= 1)
        {
          v104 = 1;
        }

        while (1)
        {
          v106 = *(v99 + 4 * v102);
          if (v106 <= 0)
          {
            v133 = sub_29AABB028();
            sub_29A008E78(&v161, "decode: Unable to decode uniform attribute (faceVertexCount value <= 0)");
            sub_29AA5B750(v133, &v161);
            if (SHIBYTE(v163) < 0)
            {
              operator delete(v161);
            }

            goto LABEL_166;
          }

          v107 = *(v45 + 9);
          v108 = *(v107 + 4 * v103);
          v109 = v106 - 1;
          if (v106 != 1)
          {
            break;
          }

LABEL_124:
          v103 += v106;
          v105[v102++] = v108;
          if (v102 == v104)
          {
            goto LABEL_125;
          }
        }

        v110 = (v107 + 4 * v103 + 4);
        while (1)
        {
          v111 = *v110++;
          if (v108 != v111)
          {
            break;
          }

          if (!--v109)
          {
            goto LABEL_124;
          }
        }

        v131 = sub_29AABB028();
        sub_29A008E78(&v161, "decode: Uniform values differ for corners of a face");
        sub_29AA5B750(v131, &v161);
        if (SHIBYTE(v163) < 0)
        {
          operator delete(v161);
        }
      }

      else
      {
        sub_29A011440(&v164, (*(a1 + 40) - *(a1 + 32)) >> 2);
        v112 = *(a1 + 32);
        v113 = *(a1 + 40);
        v114 = v113 - v112;
        v41 = v159;
        if (v113 == v112)
        {
LABEL_135:
          sub_29A36CF34(v45 + 6, v164, v165, (v165 - v164) >> 2);
          *(v45 + 10) = *(v45 + 9);
LABEL_136:
          if (v164)
          {
            *&v165 = v164;
            operator delete(v164);
          }

LABEL_138:
          v164 = v45 + 24;
          v126 = sub_29AA7B448((a1 + 216), v160, &unk_29B4D6118, &v164);
          atomic_fetch_add_explicit(v45 + 1, 1uLL, memory_order_relaxed);
          v127 = v126[8];
          v126[7] = v160;
          v126[8] = v45;
          if (v127)
          {
            sub_29A014BEC(v127);
          }

          v128 = v39[1];
          v41 = v159;
          if (v128)
          {
            do
            {
              v39 = v128;
              v128 = *v128;
            }

            while (v128);
          }

          else
          {
            do
            {
              v129 = v39;
              v39 = v39[2];
            }

            while (*v39 != v129);
          }

          v54 = 1;
          goto LABEL_145;
        }

        v115 = 0;
        v116 = 0;
        v117 = v114 >> 2;
        v118 = v164;
        if (v117 <= 1)
        {
          v117 = 1;
        }

        while (1)
        {
          v119 = *(v112 + 4 * v115);
          if (v119 <= 0)
          {
            v134 = sub_29AABB028();
            sub_29A008E78(&v161, "decode: Unable to decode uniform attribute (faceVertexCount value <= 0)");
            sub_29AA5B750(v134, &v161);
            if (SHIBYTE(v163) < 0)
            {
              operator delete(v161);
            }

LABEL_166:
            (*(a1 + 424))(v181);
            v4 = 210;
            v41 = v159;
            goto LABEL_158;
          }

          v120 = *(v45 + 9);
          v121 = *(v45 + 6);
          v122 = *(v121 + 4 * *(v120 + 4 * v116));
          v123 = v119 - 1;
          if (v119 != 1)
          {
            break;
          }

LABEL_134:
          v116 += v119;
          v118[v115++] = v122;
          if (v115 == v117)
          {
            goto LABEL_135;
          }
        }

        v124 = (v120 + 4 * v116 + 4);
        while (1)
        {
          v125 = *v124++;
          if (v122 != *(v121 + 4 * v125))
          {
            break;
          }

          if (!--v123)
          {
            goto LABEL_134;
          }
        }

        v132 = sub_29AABB028();
        sub_29A008E78(&v161, "decode: Uniform values differ for corners of a face");
        sub_29AA5B750(v132, &v161);
        if (SHIBYTE(v163) < 0)
        {
          operator delete(v161);
        }
      }

      (*(a1 + 424))(v181);
      v4 = 216;
LABEL_158:
      if (v164)
      {
        *&v165 = v164;
        operator delete(v164);
      }

      v54 = 0;
    }

    else
    {
      v53 = sub_29AABB028();
      sub_29A008E78(&v164, "decode: components per vector cannot be 0");
      sub_29AA5B750(v53, &v164);
      if (SHIBYTE(v165) < 0)
      {
        operator delete(v164);
      }

      (*(a1 + 424))(v181);
      v54 = 0;
      v4 = 150;
      v41 = v159;
    }

LABEL_145:
    sub_29AA654EC(&__p);
    sub_29A014BEC(v45);
    if (v54)
    {
      goto LABEL_146;
    }

    v130 = 0;
LABEL_147:
    if (SHIBYTE(v178) < 0)
    {
      operator delete(v176);
    }

    if (!v130)
    {
      goto LABEL_17;
    }

    v40 = (*(a1 + 408))(v40);
  }

  *a1 = 1;
  sub_29A008E78(&__p, "_orderingIndices");
  v135 = sub_29A01BCCC(a1 + 216, &__p.__r_.__value_.__l.__data_);
  v136 = (a1 + 224);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v136 == v135)
  {
    goto LABEL_216;
  }

  memset(&__p, 0, sizeof(__p));
  sub_29A008E78(&v176, "_orderingIndices");
  v137 = sub_29AA65560(a1 + 216, &v176);
  if (&__p != &(*v137)[1])
  {
    v137 = sub_29A36CF34(&__p, (*v137)[1].__r_.__value_.__l.__data_, (*v137)[1].__r_.__value_.__l.__size_, ((*v137)[1].__r_.__value_.__l.__size_ - (*v137)[1].__r_.__value_.__r.__words[0]) >> 2);
  }

  if (SHIBYTE(v178) < 0)
  {
    operator delete(v176);
  }

  v176 = 0;
  v177 = 0;
  v178 = 0;
  if (&v176 != v158)
  {
    v137 = sub_29A36CF34(&v176, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 2);
  }

  v138 = sub_29AA655A0(v137, &v176, v158, 3, &__p);
  if (v138)
  {
    (*(a1 + 424))(v181);
    v139 = 0;
    v4 = v138;
  }

  else
  {
    v140 = *(a1 + 56);
    v141 = *(a1 + 64) - v140;
    if (v141)
    {
      v142 = v141 >> 2;
      v143 = __p.__r_.__value_.__r.__words[0];
      v144 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
      if (v142 <= 1)
      {
        v142 = 1;
      }

      while (1)
      {
        v145 = *v140;
        if ((v145 & 0x80000000) != 0 || v144 <= v145)
        {
          break;
        }

        *v140++ = *(v143 + 4 * v145);
        if (!--v142)
        {
          goto LABEL_184;
        }
      }

      v157 = sub_29AABB028();
      sub_29A008E78(&v164, "decode: Cannot reorder faceVertexIndices, out of range");
      sub_29AA5B750(v157, &v164);
      if (SHIBYTE(v165) < 0)
      {
        operator delete(v164);
      }

      (*(a1 + 424))(v181);
      v139 = 0;
      v4 = 12;
    }

    else
    {
LABEL_184:
      v146 = *(a1 + 216);
      if (v146 == v136)
      {
LABEL_196:
        v164 = 0;
        v165 = 0uLL;
        sub_29A0BE2C8(&v164, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
        v152 = v164;
        if (v165 != v164)
        {
          v153 = (v165 - v164) >> 2;
          v154 = __p.__r_.__value_.__r.__words[0];
          if (v153 <= 1)
          {
            v153 = 1;
          }

          do
          {
            v155 = *v152++;
            *(v154 + 4 * v155) = v155;
            --v153;
          }

          while (v153);
        }

        sub_29A008E78(&v161, "_orderingIndices");
        v196 = &v161;
        v156 = (*(sub_29AA7CEF0((a1 + 216), &v161, &unk_29B4D6118, &v196) + 7) + 24);
        if (v156 != &__p)
        {
          sub_29A36CF34(v156, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
        }

        if (SHIBYTE(v163) < 0)
        {
          operator delete(v161);
        }

        if (v164)
        {
          *&v165 = v164;
          operator delete(v164);
        }

        v139 = 1;
      }

      else
      {
        while (1)
        {
          v147 = sub_29AA5E35C(v146 + 4, "_orderingIndices");
          if (v147)
          {
            v148 = v146[7];
            if (*(v148 + 136) == 4)
            {
              if (&v176 != (v148 + 24))
              {
                v147 = sub_29A36CF34(&v176, *(v148 + 24), *(v148 + 32), (*(v148 + 32) - *(v148 + 24)) >> 2);
                v148 = v146[7];
              }

              v149 = sub_29AA655A0(v147, &v176, (v148 + 24), *(v148 + 140), &__p);
              if (v149)
              {
                break;
              }
            }
          }

          v150 = v146[1];
          if (v150)
          {
            do
            {
              v151 = v150;
              v150 = *v150;
            }

            while (v150);
          }

          else
          {
            do
            {
              v151 = v146[2];
              v80 = *v151 == v146;
              v146 = v151;
            }

            while (!v80);
          }

          v146 = v151;
          if (v151 == v136)
          {
            goto LABEL_196;
          }
        }

        (*(a1 + 424))(v181);
        v139 = 0;
        v4 = v149;
      }
    }
  }

  if (v176)
  {
    v177 = v176;
    operator delete(v176);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v139)
  {
LABEL_216:
    (*(a1 + 424))(v181);
    v4 = 0;
  }

LABEL_17:
  __p.__r_.__value_.__r.__words[0] = &v194 + 8;
  sub_29A012C90(&__p);
  __p.__r_.__value_.__r.__words[0] = &v193;
  sub_29AA7B3C4(&__p);
  if (*(&v191 + 1))
  {
    *&v192 = *(&v191 + 1);
    operator delete(*(&v191 + 1));
  }

  if (v190)
  {
    *(&v190 + 1) = v190;
    operator delete(v190);
  }

  if (SHIBYTE(v188) < 0)
  {
    operator delete(v187[0]);
  }

  sub_29AA7AD68(&v185, v186[0]);
  if (SHIBYTE(v184) < 0)
  {
    operator delete(v183[0]);
  }

  return v4;
}

void sub_29AA65048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  sub_29AA658F4(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA65224(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == 7 && **a1 == 1718185589 && *(*a1 + 3) == 1836216166)
    {
      return 1;
    }

    if (a1[1] == 17)
    {
      v5 = **a1 == 0x2079726174696E75 && *(*a1 + 8) == 0x6F74636576206433;
      if (v5 && *(*a1 + 16) == 114)
      {
        return 2;
      }
    }

    v7 = a1[1];
    if (v7 == 23)
    {
LABEL_44:
      if (**a1 == 0x2079726174696E75 && *(*a1 + 8) == 0x6576697469736F70 && *(*a1 + 15) == 0x7468676965772065)
      {
        return 4;
      }

      goto LABEL_61;
    }

    if (v7 != 9)
    {
LABEL_58:
      if (v7 != 4)
      {
        goto LABEL_61;
      }

      v2 = *a1;
      goto LABEL_60;
    }

    v2 = *a1;
LABEL_38:
    v11 = *v2;
    v12 = *(v2 + 8);
    if (v11 == 0x677220726F6C6F63 && v12 == 98)
    {
      return 3;
    }

    v7 = a1[1];
    if ((v1 & 0x80) != 0 && v7 == 23)
    {
      goto LABEL_44;
    }

    if ((v1 & 0x80) == 0)
    {
      v2 = a1;
      if (v1 != 4)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v2 = a1;
  if (*(a1 + 23) > 8u)
  {
    if (v1 != 9)
    {
      if (v1 != 17 || (*a1 == 0x2079726174696E75 ? (v8 = a1[1] == 0x6F74636576206433) : (v8 = 0), v8 ? (v9 = *(a1 + 16) == 114) : (v9 = 0), !v9))
      {
LABEL_61:
        v16 = sub_29AABB028();
        std::operator+<char>();
        v17 = std::string::append(&v19, ", using default NONE");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v21 = v17->__r_.__value_.__r.__words[2];
        *__p = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5D514(v16, __p);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        return 0;
      }

      return 2;
    }

    goto LABEL_38;
  }

  if (v1 != 4)
  {
    if (v1 != 7)
    {
      goto LABEL_61;
    }

    if (*a1 != 1718185589 || *(a1 + 3) != 1836216166)
    {
      goto LABEL_61;
    }

    return 1;
  }

LABEL_60:
  if (*v2 != 1701736302)
  {
    goto LABEL_61;
  }

  return 0;
}

void sub_29AA654D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA654EC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AA65560(uint64_t a1, const void **a2)
{
  v2 = *sub_29A00B0D0(a1, &v4, a2);
  if (!v2)
  {
    sub_29A0F26E4("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t sub_29AA655A0(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t *a5)
{
  if (a4 < 1 || (v8 = (a2[1] - *a2) >> 2, v8 % a4) || v8 / a4 != (a5[1] - *a5) >> 2)
  {
    v23 = sub_29AABB028();
    std::to_string(&v40, a4);
    v24 = std::string::insert(&v40, 0, "reorderData: Size issue, componentsPerVector: ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v41, ", inputData size: ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v39, (a2[1] - *a2) >> 2);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v39;
    }

    else
    {
      v28 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v42, v28, size);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v43, ", orderInfo size: ");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v38, (a5[1] - *a5) >> 2);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v38;
    }

    else
    {
      v34 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v38.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v44, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v46 = v36->__r_.__value_.__r.__words[2];
    v45 = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v23, &v45);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    return 12;
  }

  else
  {
    sub_29A0A171C(a3, v8);
    v10 = *a2;
    v11 = a2[1];
    v12 = v11 - *a2;
    if (v11 != *a2)
    {
      v13 = 0;
      v14 = v12 >> 2;
      v15 = *a5;
      v16 = *a3;
      do
      {
        v17 = (v16 + 4 * *(v15 + 4 * (v13 / a4)) * a4);
        v18 = (v10 + 4 * v13);
        v19 = v13 << 32;
        v20 = a4;
        do
        {
          v21 = *v18++;
          *v17++ = v21;
          v19 += 0x100000000;
          v13 = (v13 + 1);
          --v20;
        }

        while (v20);
      }

      while (v14 > v19 >> 32);
    }

    return 0;
  }
}

void sub_29AA65848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA658F4(uint64_t a1)
{
  v5 = (a1 + 152);
  sub_29A012C90(&v5);
  v5 = (a1 + 128);
  sub_29AA7B3C4(&v5);
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_29AA7AD68(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AA6598C(uint64_t a1, uint64_t a2)
{
  sub_29AA7AE5C(v31);
  memset(&v21, 0, sizeof(v21));
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v25 = 0;
  __p = 0uLL;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  std::string::operator=(&v21, (a1 + 8));
  sub_29A008E78(__str, off_29F295D08[*(a1 + 104)]);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  __p = *__str;
  v25 = *&__str[16];
  v26 = *(a1 + 108);
  if (&v27 != (a1 + 112))
  {
    sub_29A36CF34(&v27, *(a1 + 112), *(a1 + 120), (*(a1 + 120) - *(a1 + 112)) >> 2);
  }

  if (v30 != (a1 + 168))
  {
    sub_29AA7D708(v30, *(a1 + 168), *(a1 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 3));
  }

  if ((&v30[1] + 8) != (a1 + 192))
  {
    sub_29A095E3C(&v30[1] + 8, *(a1 + 192), *(a1 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 200) - *(a1 + 192)) >> 3));
  }

  for (i = *(a1 + 248); i != a1 + 240; i = *(i + 8))
  {
    if (*(i + 39) < 0)
    {
      sub_29A008D14(__dst, *(i + 16), *(i + 24));
    }

    else
    {
      *__dst = *(i + 16);
      v20 = *(i + 32);
    }

    memset(&v13, 0, sizeof(v13));
    v16 = 0;
    v17 = 0;
    v15 = 0;
    memset(__str, 0, sizeof(__str));
    v9 = 0u;
    memset(&v10, 0, sizeof(v10));
    v32[0] = __dst;
    v5 = sub_29AA7B448((a1 + 216), __dst, &unk_29B4D6118, v32);
    sub_29AAB7170(v5[7], __str);
    v32[0] = __str;
    v6 = sub_29AA7DF08(&v22, __str, &unk_29B4D6118, v32);
    std::string::operator=((v6 + 7), __str);
    std::string::operator=((v6 + 10), &__str[24]);
    std::string::operator=((v6 + 13), &v10);
    *(v6 + 32) = v11;
    *(v6 + 132) = v12;
    std::string::operator=((v6 + 17), &v13);
    *(v6 + 40) = v14;
    if (v6 + 7 != __str)
    {
      sub_29A36CF34(v6 + 21, v15, v16, (v16 - v15) >> 2);
    }

    *(v6 + 192) = v18;
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(*&__str[24]);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  sub_29AAB9950(v31, &v21);
  sub_29AAB8A10(v31, a2);
  *__str = &v30[1] + 8;
  sub_29A012C90(__str);
  *__str = v30;
  sub_29AA7B3C4(__str);
  if (*(&v28 + 1))
  {
    *&v29 = *(&v28 + 1);
    operator delete(*(&v28 + 1));
  }

  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  sub_29AA7AD68(&v22, v23[0]);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  sub_29AA7AF60(v31);
  return 0;
}

void sub_29AA65D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_29AA658F4(&a35);
  sub_29AA7AF60(&a57);
  _Unwind_Resume(a1);
}

void sub_29AA65D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = sub_29A580660(v5, (a4 + 8), (a4 + 16));
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v4);
}

void sub_29AA67518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v51 = *(v49 - 176);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v49 - 176) = &a49;
  sub_29A8440C8((v49 - 176));
  sub_29AA7B2E8((v49 - 248));
  sub_29A57F434(v49 - 208);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA679C4(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  pxrInternal__aapl__pxrReserved__::JsParseString(a2, 0, a3, &v88);
  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v88))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v88);
    sub_29A1519B8(&v86, JsObject);
    sub_29A008E78(__p, "v");
    v7 = sub_29A01BCCC(&v86, __p);
    if (SHIBYTE(v75) < 0)
    {
      operator delete(__p[0]);
    }

    if (v87 == v7)
    {
      v12 = sub_29AABB028();
      sub_29A008E78(__p, "Cannot parse subset JSON");
      sub_29AA5B750(v12, __p);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = 213;
      goto LABEL_110;
    }

    sub_29A008E78(__p, "v");
    __dst.__r_.__value_.__r.__words[0] = __p;
    v8 = sub_29AA7ED84(&v86, __p, &unk_29B4D6118, &__dst);
    v9 = v8[8];
    v84 = v8[7];
    v85 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(__p[0]);
    }

    if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v84))
    {
      v13 = sub_29AABB028();
      sub_29A008E78(__p, "Cannot parse subset JSON");
      sub_29AA5B750(v13, __p);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = 213;
      goto LABEL_108;
    }

    String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v84);
    if (*(String + 23) < 0)
    {
      sub_29A008D14(&__dst, *String, *(String + 8));
    }

    else
    {
      v11 = *String;
      __dst.__r_.__value_.__r.__words[2] = *(String + 16);
      *&__dst.__r_.__value_.__l.__data_ = v11;
    }

    v80 = 0;
    v81 = 0;
    v82 = 0;
    sub_29A9EE25C(__p, &__dst, 24);
    v72[0] = 0;
    v72[1] = 0;
    v73 = 0;
    v14 = sub_29A0DE07C(__p, v72, 0x2Eu);
    if ((*(v14 + *(*v14 - 24) + 32) & 5) == 0)
    {
      sub_29A070BA0(&v80);
    }

    if (v81 - v80 == 72)
    {
      v15 = std::stoi(v80, 0, 10);
      v16 = std::stoi(v80 + 1, 0, 10);
      *(a1 + 736) = (v16 << 8) | (std::stoi(v80 + 2, 0, 10) << 16) | v15;
      sub_29A008E78(&v69, "ss");
      v17 = sub_29A01BCCC(&v86, &v69);
      if (SHIBYTE(v71) < 0)
      {
        operator delete(v69);
      }

      if (v87 != v17)
      {
        sub_29A008E78(&v69, "ss");
        v64 = &v69;
        v18 = sub_29AA7ED84(&v86, &v69, &unk_29B4D6118, &v64);
        v19 = v18[8];
        v67 = v18[7];
        v68 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v71) < 0)
        {
          operator delete(v69);
        }

        if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v67))
        {
          v44 = sub_29AABB028();
          sub_29A008E78(&v69, "Cannot parse subset JSON");
          sub_29AA5B750(v44, &v69);
          if (SHIBYTE(v71) < 0)
          {
            operator delete(v69);
          }

          v5 = 213;
          goto LABEL_100;
        }

        JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v67);
        v69 = 0;
        v70 = 0;
        v71 = 0;
        sub_29A151C2C(&v69, *JsArray, JsArray[1], (JsArray[1] - *JsArray) >> 4);
        v21 = v69;
        v22 = v70;
        if (v69 == v70)
        {
LABEL_44:
          sub_29A008E78(&v64, "fg2ss");
          v26 = sub_29A01BCCC(&v86, &v64);
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }

          if (v87 != v26)
          {
            sub_29A008E78(&v64, "fg2ss");
            v57 = &v64;
            v27 = sub_29AA7ED84(&v86, &v64, &unk_29B4D6118, &v57);
            v28 = v27[8];
            v62 = v27[7];
            v63 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v66) < 0)
            {
              operator delete(v64);
            }

            if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v62))
            {
              v29 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v62);
              v64 = 0;
              v65 = 0;
              v66 = 0;
              sub_29A151C2C(&v64, *v29, v29[1], (v29[1] - *v29) >> 4);
              v30 = v64;
              v31 = v65;
              if (v64 == v65)
              {
LABEL_76:
                v5 = 0;
              }

              else
              {
                while (1)
                {
                  v32 = *(v30 + 1);
                  v60 = *v30;
                  v61 = v32;
                  if (v32)
                  {
                    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v60))
                  {
                    break;
                  }

                  v57 = &v57;
                  v58 = &v57;
                  v59 = 0;
                  v33 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v60);
                  v54 = 0;
                  v55 = 0;
                  v56 = 0;
                  sub_29A151C2C(&v54, *v33, v33[1], (v33[1] - *v33) >> 4);
                  v35 = v54;
                  v34 = v55;
                  while (v35 != v34)
                  {
                    v36 = *(v35 + 8);
                    v52 = *v35;
                    v53 = v36;
                    if (v36)
                    {
                      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    IsInt = pxrInternal__aapl__pxrReserved__::JsValue::IsInt(&v52);
                    if (IsInt)
                    {
                      Int = pxrInternal__aapl__pxrReserved__::JsValue::GetInt(&v52);
                      v39 = operator new(0x18uLL);
                      v39[4] = Int;
                      v40 = v57;
                      *v39 = v57;
                      *(v39 + 1) = &v57;
                      v40[1] = v39;
                      v57 = v39;
                      ++v59;
                    }

                    else
                    {
                      v41 = sub_29AABB028();
                      sub_29A008E78(v50, "Cannot parse subset JSON");
                      sub_29AA5B750(v41, v50);
                      if (v51 < 0)
                      {
                        operator delete(v50[0]);
                      }
                    }

                    if (v53)
                    {
                      sub_29A014BEC(v53);
                    }

                    if (!IsInt)
                    {
                      v42 = 0;
                      goto LABEL_72;
                    }

                    v35 += 16;
                  }

                  if (v59)
                  {
                    sub_29AA5E490(a1 + 168, &v57);
                  }

                  v42 = 1;
LABEL_72:
                  v50[0] = &v54;
                  sub_29A0176E4(v50);
                  sub_29A0EB800(&v57);
                  if (v61)
                  {
                    sub_29A014BEC(v61);
                  }

                  if ((v42 & 1) == 0)
                  {
                    goto LABEL_95;
                  }

                  v30 += 16;
                  if (v30 == v31)
                  {
                    goto LABEL_76;
                  }
                }

                v47 = sub_29AABB028();
                sub_29A008E78(&v57, "Cannot parse subset JSON");
                sub_29AA5B750(v47, &v57);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v57);
                }

                if (v61)
                {
                  sub_29A014BEC(v61);
                }

LABEL_95:
                v5 = 213;
              }

              v57 = &v64;
              sub_29A0176E4(&v57);
            }

            else
            {
              v46 = sub_29AABB028();
              sub_29A008E78(&v64, "Cannot parse subset JSON");
              sub_29AA5B750(v46, &v64);
              if (SHIBYTE(v66) < 0)
              {
                operator delete(v64);
              }

              v5 = 213;
            }

            if (v63)
            {
              sub_29A014BEC(v63);
            }

            goto LABEL_99;
          }

          v45 = sub_29AABB028();
          sub_29A008E78(&v64, "Cannot parse subset JSON");
          sub_29AA5B750(v45, &v64);
          if (SHIBYTE(v66) < 0)
          {
            operator delete(v64);
          }
        }

        else
        {
          while (1)
          {
            v23 = *(v21 + 1);
            v57 = *v21;
            v58 = v23;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            IsString = pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v57);
            if (IsString)
            {
              pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v57);
              sub_29A070BA0(a1 + 192);
            }

            v25 = sub_29AABB028();
            sub_29A008E78(&v64, "Cannot parse subset JSON");
            sub_29AA5B750(v25, &v64);
            if (SHIBYTE(v66) < 0)
            {
              operator delete(v64);
            }

            if (v58)
            {
              sub_29A014BEC(v58);
            }

            if (!IsString)
            {
              break;
            }

            v21 += 16;
            if (v21 == v22)
            {
              goto LABEL_44;
            }
          }
        }

        v5 = 213;
LABEL_99:
        v64 = &v69;
        sub_29A0176E4(&v64);
LABEL_100:
        if (v68)
        {
          sub_29A014BEC(v68);
        }

LABEL_102:
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72[0]);
        }

        __p[0] = *MEMORY[0x29EDC9528];
        v48 = *(MEMORY[0x29EDC9528] + 72);
        *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
        v75 = v48;
        v76 = MEMORY[0x29EDC9570] + 16;
        if (v78 < 0)
        {
          operator delete(v77[7].__locale_);
        }

        v76 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v77);
        std::iostream::~basic_iostream();
        MEMORY[0x29C2C4390](&v79);
        __p[0] = &v80;
        sub_29A012C90(__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

LABEL_108:
        if (v85)
        {
          sub_29A014BEC(v85);
        }

LABEL_110:
        sub_29A09932C(&v86, v87[0]);
        goto LABEL_111;
      }

      v43 = sub_29AABB028();
      sub_29A008E78(&v69, "Cannot parse subset JSON");
    }

    else
    {
      v43 = sub_29AABB028();
      sub_29A008E78(&v69, "Cannot parse subset JSON");
    }

    sub_29AA5B750(v43, &v69);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v69);
    }

    v5 = 213;
    goto LABEL_102;
  }

  v4 = sub_29AABB028();
  sub_29A008E78(__p, "Cannot parse subset JSON");
  sub_29AA5B750(v4, __p);
  if (SHIBYTE(v75) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 213;
LABEL_111:
  if (v89)
  {
    sub_29A014BEC(v89);
  }

  return v5;
}

void sub_29AA68334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23, void **a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  a17 = &a24;
  sub_29A0176E4(&a17);
  if (a23)
  {
    sub_29A014BEC(a23);
  }

  a24 = &a32;
  sub_29A0176E4(&a24);
  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (a43 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a44);
  a44 = (v49 - 200);
  sub_29A012C90(&a44);
  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  v51 = *(v49 - 136);
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  sub_29A09932C(v49 - 128, *(v49 - 120));
  v52 = *(v49 - 96);
  if (v52)
  {
    sub_29A014BEC(v52);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA68524(uint64_t a1)
{
  *a1 = 514;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken((a1 + 8), "");
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((a1 + 96));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken((a1 + 104), "");
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 1;
  *(a1 + 140) = 0;
  return a1;
}

uint64_t sub_29AA685E0(unsigned __int16 *a1)
{
  v96[4] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F20))
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v13)
    {
      v13 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(__p, "BOOL");
    v57 = *(v13 + 56);
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v14)
    {
      v14 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v58, "uchar");
    v58[3] = *(v14 + 57);
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v15)
    {
      v15 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v59, "int");
    v59[3] = *(v15 + 58);
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v16)
    {
      v16 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v60, "uint");
    v60[3] = *(v16 + 60);
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v17)
    {
      v17 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v61, "half");
    v61[3] = *(v17 + 63);
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v18)
    {
      v18 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v62, "float");
    v62[3] = *(v18 + 64);
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v19)
    {
      v19 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v63, "double");
    v63[3] = *(v19 + 65);
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v20)
    {
      v20 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v64, "int2");
    v64[3] = *(v20 + 70);
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v21)
    {
      v21 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v65, "int3");
    v65[3] = *(v21 + 71);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v22)
    {
      v22 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v66, "int4");
    v66[3] = *(v22 + 72);
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v23)
    {
      v23 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v67, "half2");
    v67[3] = *(v23 + 73);
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v24)
    {
      v24 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v68, "half3");
    v68[3] = *(v24 + 74);
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v25)
    {
      v25 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v69, "half4");
    v69[3] = *(v25 + 75);
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v26)
    {
      v26 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v70, "float2");
    v70[3] = *(v26 + 76);
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v27)
    {
      v27 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v71, "float3");
    v71[3] = *(v27 + 77);
    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v28)
    {
      v28 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v72, "float4");
    v72[3] = *(v28 + 78);
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v29)
    {
      v29 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v73, "double2");
    v73[3] = *(v29 + 79);
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v30)
    {
      v30 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v74, "double3");
    v74[3] = *(v30 + 80);
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v31)
    {
      v31 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v75, "double4");
    v75[3] = *(v31 + 81);
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v32)
    {
      v32 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v76, "point3f");
    v76[3] = *(v32 + 83);
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v33)
    {
      v33 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v77, "point3d");
    v77[3] = *(v33 + 84);
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v34)
    {
      v34 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v78, "point3h");
    v78[3] = *(v34 + 82);
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v35)
    {
      v35 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v79, "normal3f");
    v79[3] = *(v35 + 89);
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v36)
    {
      v36 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v80, "normal3d");
    v80[3] = *(v36 + 90);
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v37)
    {
      v37 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v81, "normal3h");
    v81[3] = *(v37 + 88);
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v38)
    {
      v38 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v82, "vector3f");
    v82[3] = *(v38 + 86);
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v39)
    {
      v39 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v83, "vector3d");
    v83[3] = *(v39 + 87);
    v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v40)
    {
      v40 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v84, "vector3h");
    v84[3] = *(v40 + 85);
    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v41)
    {
      v41 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v85, "color3f");
    v85[3] = *(v41 + 92);
    v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v42)
    {
      v42 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v86, "color3d");
    v86[3] = *(v42 + 93);
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v43)
    {
      v43 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v87, "color3h");
    v87[3] = *(v43 + 91);
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v44)
    {
      v44 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v88, "color4f");
    v88[3] = *(v44 + 95);
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v45)
    {
      v45 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v89, "color4d");
    v89[3] = *(v45 + 96);
    v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v46)
    {
      v46 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v90, "color4h");
    v90[3] = *(v46 + 94);
    v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v47)
    {
      v47 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v91, "texCoord2f");
    v91[3] = *(v47 + 105);
    v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v48)
    {
      v48 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v92, "texCoord2d");
    v92[3] = *(v48 + 106);
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v49)
    {
      v49 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v93, "texCoord2h");
    v93[3] = *(v49 + 104);
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v50)
    {
      v50 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v94, "texCoord3f");
    v94[3] = *(v50 + 108);
    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v51)
    {
      v51 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v95, "texCoord3d");
    v95[3] = *(v51 + 109);
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v52)
    {
      v52 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    sub_29A008E78(v96, "texCoord3h");
    v96[3] = *(v52 + 107);
    sub_29AA7B110(&unk_2A14F8F08, __p, 40);
    v53 = 160;
    do
    {
      if (*(&__p[v53 - 1] - 1) < 0)
      {
        operator delete(__p[v53 - 4]);
      }

      v53 -= 4;
    }

    while (v53 * 8);
    __cxa_atexit(sub_29AA7B0E4, &unk_2A14F8F08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8F20);
  }

  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) != 7)
    {
      v2 = a1;
      if (*(a1 + 23) != 10)
      {
LABEL_25:
        v10 = sub_29A01BCCC(&unk_2A14F8F08, a1);
        if (v10 != &unk_2A14F8F10)
        {
          return *(v10 + 56);
        }

        v11 = sub_29AABB028();
        std::operator+<char>();
        sub_29AA5B750(v11, __p);
        if (v56 < 0)
        {
          operator delete(__p[0]);
        }

        pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v54);
        return v54;
      }

      goto LABEL_13;
    }

    if (*a1 != 1702258279 || *(a1 + 3) != 1714643813)
    {
      goto LABEL_25;
    }

LABEL_30:
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v12)
    {
      v12 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    return *(v12 + 77);
  }

  if (*(a1 + 1) == 7 && **a1 == 1702258279 && *(*a1 + 3) == 1714643813)
  {
    goto LABEL_30;
  }

  if (*(a1 + 1) != 10)
  {
    goto LABEL_25;
  }

  v2 = *a1;
LABEL_13:
  v4 = *v2;
  v5 = v2[4];
  if (v4 != 0x64726F6F63786574 || v5 != 26162)
  {
    goto LABEL_25;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v7)
  {
    v7 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v7 + 105);
}

void sub_29AA691A8(_Unwind_Exception *a1)
{
  v3 = (v1 + 1271);
  v4 = -1280;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A14F8F20);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AA69220(uint64_t *a1, uint64_t a2)
{
  result = sub_29AA7E240(a1, 0, 0, a2);
  v4 = *a1;
  *result = *a1;
  result[1] = a1;
  *(v4 + 8) = result;
  *a1 = result;
  ++a1[2];
  return result;
}

void sub_29AA6926C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  while (1)
  {
    v3 = *(a2 + 23);
    if ((v3 & 0x8000000000000000) != 0)
    {
      v3 = *(a2 + 8);
      if (v3 <= 1)
      {
        return;
      }
    }

    else if (v3 <= 1)
    {
      return;
    }

    std::string::basic_string(&v14, a2, v3 - 2, 2uLL, __p);
    sub_29A008E78(__p, "[]");
    v4 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v6 = v13;
    v7 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v6 = __p[1];
    }

    if (size != v6)
    {
      v10 = 0;
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(__p[0]);
      v4 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      goto LABEL_24;
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = memcmp(v8, v9, size) == 0;
    if (v7 < 0)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (v4 < 0)
    {
      break;
    }

    if (!v10)
    {
      return;
    }

LABEL_28:
    v11 = *(a2 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    std::string::basic_string(&v14, a2, 0, v11 - 2, __p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v14;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (v10)
  {
    goto LABEL_28;
  }
}

void sub_29AA69400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AA69438(uint64_t a1)
{
  v16[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F40))
  {
    sub_29A008E78(__p, "half");
    sub_29A008E78(v7, "half2");
    sub_29A008E78(v8, "half3");
    sub_29A008E78(v9, "half4");
    sub_29A008E78(v10, "point3h");
    sub_29A008E78(v11, "normal3h");
    sub_29A008E78(v12, "vector3h");
    sub_29A008E78(v13, "color3h");
    sub_29A008E78(v14, "color4h");
    sub_29A008E78(v15, "texCoord2h");
    sub_29A008E78(v16, "texCoord3h");
    sub_29A9FDE68(&unk_2A14F8F28, __p, 11);
    v4 = 33;
    do
    {
      if (SHIBYTE(__p[v4 - 1]) < 0)
      {
        operator delete(__p[v4 - 3]);
      }

      v4 -= 3;
    }

    while (v4 * 8);
    __cxa_atexit(sub_29AA7B2BC, &unk_2A14F8F28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8F40);
  }

  sub_29AA6926C(a1, __p);
  v2 = sub_29A01BCCC(&unk_2A14F8F28, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != &unk_2A14F8F30;
}

void sub_29AA69654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = (v16 + 263);
  v19 = -264;
  v20 = v18;
  while (1)
  {
    v21 = *v20;
    v20 -= 24;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 24;
    if (!v19)
    {
      __cxa_guard_abort(&qword_2A14F8F40);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_29AA696E4(uint64_t a1)
{
  v16[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F60))
  {
    sub_29A008E78(__p, "float");
    sub_29A008E78(v7, "float2");
    sub_29A008E78(v8, "float3");
    sub_29A008E78(v9, "float4");
    sub_29A008E78(v10, "point3f");
    sub_29A008E78(v11, "normal3f");
    sub_29A008E78(v12, "vector3f");
    sub_29A008E78(v13, "color3f");
    sub_29A008E78(v14, "color4f");
    sub_29A008E78(v15, "texCoord2f");
    sub_29A008E78(v16, "texCoord3f");
    sub_29A9FDE68(&unk_2A14F8F48, __p, 11);
    v4 = 33;
    do
    {
      if (SHIBYTE(__p[v4 - 1]) < 0)
      {
        operator delete(__p[v4 - 3]);
      }

      v4 -= 3;
    }

    while (v4 * 8);
    __cxa_atexit(sub_29AA7B2BC, &unk_2A14F8F48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8F60);
  }

  sub_29AA6926C(a1, __p);
  v2 = sub_29A01BCCC(&unk_2A14F8F48, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != &unk_2A14F8F50;
}

void sub_29AA69900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = (v16 + 263);
  v19 = -264;
  v20 = v18;
  while (1)
  {
    v21 = *v20;
    v20 -= 24;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 24;
    if (!v19)
    {
      __cxa_guard_abort(&qword_2A14F8F60);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_29AA69990(uint64_t a1)
{
  v16[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F80))
  {
    sub_29A008E78(__p, "double");
    sub_29A008E78(v7, "double2");
    sub_29A008E78(v8, "double3");
    sub_29A008E78(v9, "double4");
    sub_29A008E78(v10, "point3d");
    sub_29A008E78(v11, "normal3d");
    sub_29A008E78(v12, "vector3d");
    sub_29A008E78(v13, "color3d");
    sub_29A008E78(v14, "color4d");
    sub_29A008E78(v15, "texCoord2d");
    sub_29A008E78(v16, "texCoord3d");
    sub_29A9FDE68(&unk_2A14F8F68, __p, 11);
    v4 = 33;
    do
    {
      if (SHIBYTE(__p[v4 - 1]) < 0)
      {
        operator delete(__p[v4 - 3]);
      }

      v4 -= 3;
    }

    while (v4 * 8);
    __cxa_atexit(sub_29AA7B2BC, &unk_2A14F8F68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8F80);
  }

  sub_29AA6926C(a1, __p);
  v2 = sub_29A01BCCC(&unk_2A14F8F68, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != &unk_2A14F8F70;
}

void sub_29AA69BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = (v16 + 263);
  v19 = -264;
  v20 = v18;
  while (1)
  {
    v21 = *v20;
    v20 -= 24;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 24;
    if (!v19)
    {
      __cxa_guard_abort(&qword_2A14F8F80);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AA69C3C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

__n128 sub_29AA69CA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 8) = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  if (v4)
  {
    v5 = (v4 - 16);
    if (*(a1 + 40))
    {
      v5 = *(a1 + 40);
    }

    atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(a1 + 80))
    {
      v8 = *(a1 + 80);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = *(a2 + 96);
  v9 = *(a2 + 104);
  *(a1 + 104) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 104) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 112) = result;
  return result;
}

void sub_29AA69D84(os_log_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_299FE7000, v2, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }
}

uint64_t sub_29AA69E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 400))(a4, *(a2 + 128));
  v8 = (*(a1 + 432))();
  v9 = 4 * v8 * (*(a1 + 504))(v7);
  LOBYTE(ScalarType) = 0;
  *&__dst = &ScalarType;
  sub_29A19E2EC((a2 + 16), v9, &__dst);
  sub_29A19E500(a2 + 16);
  v10 = *(a2 + 48);
  v11 = (*(a1 + 328))(v7);
  memcpy(v10, v11, v9);
  v497[0] = 0;
  v12 = (*(a1 + 440))(v7, "idxdby", v497);
  if (!v12)
  {
    v13 = (*(a1 + 400))(a4, v497[0]);
    v14 = (*(a1 + 432))();
    LODWORD(ScalarType) = 0;
    *&__dst = &ScalarType;
    sub_29A19D7EC((a2 + 56), v14, &__dst);
    v15 = (*(a1 + 328))(v13);
    v12 = (*(a1 + 432))(v13);
    if (v12)
    {
      for (i = 0; i < v12; ++i)
      {
        v17 = *(v15 + 4 * i);
        sub_29A19DBEC(a2 + 56);
        *(*(a2 + 88) + 4 * i) = v17;
        v12 = (*(a1 + 432))(v13);
      }
    }
  }

  v19 = (a2 + 112);
  v18 = *(a2 + 112);
  v20 = (a2 + 56);
  if (v18 != (*(a2 + 56) != 0))
  {
    if (v18)
    {
      sub_29AA6C238(v12, a2);
    }

    else
    {
      v21 = sub_29AA6C05C(a2);
      if (v21)
      {
        return v21;
      }
    }
  }

  ScalarType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType((a2 + 96));
  CPPTypeName = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetCPPTypeName(&ScalarType);
  if (*(CPPTypeName + 23) < 0)
  {
    sub_29A008D14(&__dst, *CPPTypeName, *(CPPTypeName + 8));
  }

  else
  {
    v23 = *CPPTypeName;
    v496 = *(CPPTypeName + 16);
    __dst = v23;
  }

  v24 = HIBYTE(v496);
  if (v496 < 0)
  {
    if (*(&__dst + 1) != 6)
    {
      goto LABEL_21;
    }

    v25 = __dst;
  }

  else
  {
    if (HIBYTE(v496) != 6)
    {
LABEL_23:
      if (v24 != 5)
      {
        goto LABEL_47;
      }

      p_dst = &__dst;
      goto LABEL_27;
    }

    v25 = &__dst;
  }

  v26 = *v25;
  v27 = *(v25 + 2);
  if (v26 == 1632134727 && v27 == 26220)
  {
    v483 = *a2;
    v255 = *(a2 + 8);
    v484 = v255;
    if ((v255 & 7) != 0 && (atomic_fetch_add_explicit((v255 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v484 &= 0xFFFFFFFFFFFFFFF8;
    }

    v256 = *(a2 + 32);
    v485 = *(a2 + 16);
    v486 = v256;
    v257 = *(a2 + 48);
    v487 = v257;
    if (v257)
    {
      v258 = (v257 - 16);
      if (*(&v486 + 1))
      {
        v258 = *(&v486 + 1);
      }

      atomic_fetch_add_explicit(v258, 1uLL, memory_order_relaxed);
    }

    v259 = *(a2 + 72);
    v488 = *v20;
    v489 = v259;
    v260 = *(a2 + 88);
    v490 = v260;
    if (v260)
    {
      v261 = (v260 - 16);
      if (*(&v489 + 1))
      {
        v261 = *(&v489 + 1);
      }

      atomic_fetch_add_explicit(v261, 1uLL, memory_order_relaxed);
    }

    v262 = *(a2 + 104);
    v491 = *(a2 + 96);
    v492 = v262;
    if ((v262 & 7) != 0 && (atomic_fetch_add_explicit((v262 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v492 &= 0xFFFFFFFFFFFFFFF8;
    }

    v493[0] = *v19;
    *(v493 + 13) = *(a2 + 125);
    sub_29AA6C57C(&v483);
  }

LABEL_21:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v24 = HIBYTE(v496);
    goto LABEL_23;
  }

  if (*(&__dst + 1) != 5)
  {
    goto LABEL_47;
  }

  p_dst = __dst;
LABEL_27:
  v30 = *p_dst;
  v31 = *(p_dst + 4);
  if (v30 == 1634692198 && v31 == 116)
  {
    v472 = *a2;
    v33 = *(a2 + 8);
    v473 = v33;
    if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v473 &= 0xFFFFFFFFFFFFFFF8;
    }

    v34 = *(a2 + 32);
    v474 = *(a2 + 16);
    v475 = v34;
    v35 = *(a2 + 48);
    v476 = v35;
    if (v35)
    {
      v36 = (v35 - 16);
      if (*(&v475 + 1))
      {
        v36 = *(&v475 + 1);
      }

      atomic_fetch_add_explicit(v36, 1uLL, memory_order_relaxed);
    }

    v37 = *(a2 + 72);
    v477 = *v20;
    v478 = v37;
    v38 = *(a2 + 88);
    v479 = v38;
    if (v38)
    {
      v39 = (v38 - 16);
      if (*(&v478 + 1))
      {
        v39 = *(&v478 + 1);
      }

      atomic_fetch_add_explicit(v39, 1uLL, memory_order_relaxed);
    }

    v40 = *(a2 + 104);
    v480 = *(a2 + 96);
    v481 = v40;
    if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v481 &= 0xFFFFFFFFFFFFFFF8;
    }

    v482[0] = *v19;
    *(v482 + 13) = *(a2 + 125);
    sub_29AA6C9DC(&v472);
  }

LABEL_47:
  if (SHIBYTE(v496) < 0)
  {
    if (*(&__dst + 1) != 6)
    {
      goto LABEL_72;
    }

    v42 = __dst;
  }

  else
  {
    v41 = HIBYTE(v496);
    if (HIBYTE(v496) != 6)
    {
LABEL_74:
      if (v41 != 7)
      {
        goto LABEL_98;
      }

      v54 = &__dst;
      goto LABEL_78;
    }

    v42 = &__dst;
  }

  v43 = *v42;
  v44 = *(v42 + 2);
  if (v43 == 1651863396 && v44 == 25964)
  {
    v461 = *a2;
    v46 = *(a2 + 8);
    v462 = v46;
    if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v462 &= 0xFFFFFFFFFFFFFFF8;
    }

    v47 = *(a2 + 32);
    v463 = *(a2 + 16);
    v464 = v47;
    v48 = *(a2 + 48);
    v465 = v48;
    if (v48)
    {
      v49 = (v48 - 16);
      if (*(&v464 + 1))
      {
        v49 = *(&v464 + 1);
      }

      atomic_fetch_add_explicit(v49, 1uLL, memory_order_relaxed);
    }

    v50 = *(a2 + 72);
    v466 = *v20;
    v467 = v50;
    v51 = *(a2 + 88);
    v468 = v51;
    if (v51)
    {
      v52 = (v51 - 16);
      if (*(&v467 + 1))
      {
        v52 = *(&v467 + 1);
      }

      atomic_fetch_add_explicit(v52, 1uLL, memory_order_relaxed);
    }

    v53 = *(a2 + 104);
    v469 = *(a2 + 96);
    v470 = v53;
    if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v470 &= 0xFFFFFFFFFFFFFFF8;
    }

    v471[0] = *v19;
    *(v471 + 13) = *(a2 + 125);
    sub_29AA6CDB0(&v461);
  }

LABEL_72:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v41 = HIBYTE(v496);
    goto LABEL_74;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_98;
  }

  v54 = __dst;
LABEL_78:
  v55 = *v54;
  v56 = *(v54 + 3);
  if (v55 == 1700161095 && v56 == 1748132709)
  {
    v450 = *a2;
    v58 = *(a2 + 8);
    v451 = v58;
    if ((v58 & 7) != 0 && (atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v451 &= 0xFFFFFFFFFFFFFFF8;
    }

    v59 = *(a2 + 32);
    v452 = *(a2 + 16);
    v453 = v59;
    v60 = *(a2 + 48);
    v454 = v60;
    if (v60)
    {
      v61 = (v60 - 16);
      if (*(&v453 + 1))
      {
        v61 = *(&v453 + 1);
      }

      atomic_fetch_add_explicit(v61, 1uLL, memory_order_relaxed);
    }

    v62 = *(a2 + 72);
    v455 = *v20;
    v456 = v62;
    v63 = *(a2 + 88);
    v457 = v63;
    if (v63)
    {
      v64 = (v63 - 16);
      if (*(&v456 + 1))
      {
        v64 = *(&v456 + 1);
      }

      atomic_fetch_add_explicit(v64, 1uLL, memory_order_relaxed);
    }

    v65 = *(a2 + 104);
    v458 = *(a2 + 96);
    v459 = v65;
    if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v459 &= 0xFFFFFFFFFFFFFFF8;
    }

    v460[0] = *v19;
    *(v460 + 13) = *(a2 + 125);
    sub_29AA6D188(&v450);
  }

LABEL_98:
  if (SHIBYTE(v496) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_123;
    }

    v67 = __dst;
  }

  else
  {
    v66 = HIBYTE(v496);
    if (HIBYTE(v496) != 7)
    {
LABEL_125:
      if (v66 != 7)
      {
        goto LABEL_149;
      }

      v79 = &__dst;
      goto LABEL_129;
    }

    v67 = &__dst;
  }

  v68 = *v67;
  v69 = *(v67 + 3);
  if (v68 == 1700161095 && v69 == 1748198245)
  {
    v439 = *a2;
    v71 = *(a2 + 8);
    v440 = v71;
    if ((v71 & 7) != 0 && (atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v440 &= 0xFFFFFFFFFFFFFFF8;
    }

    v72 = *(a2 + 32);
    v441 = *(a2 + 16);
    v442 = v72;
    v73 = *(a2 + 48);
    v443 = v73;
    if (v73)
    {
      v74 = (v73 - 16);
      if (*(&v442 + 1))
      {
        v74 = *(&v442 + 1);
      }

      atomic_fetch_add_explicit(v74, 1uLL, memory_order_relaxed);
    }

    v75 = *(a2 + 72);
    v444 = *v20;
    v445 = v75;
    v76 = *(a2 + 88);
    v446 = v76;
    if (v76)
    {
      v77 = (v76 - 16);
      if (*(&v445 + 1))
      {
        v77 = *(&v445 + 1);
      }

      atomic_fetch_add_explicit(v77, 1uLL, memory_order_relaxed);
    }

    v78 = *(a2 + 104);
    v447 = *(a2 + 96);
    v448 = v78;
    if ((v78 & 7) != 0 && (atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v448 &= 0xFFFFFFFFFFFFFFF8;
    }

    v449[0] = *v19;
    *(v449 + 13) = *(a2 + 125);
    sub_29AA6D63C(&v439);
  }

LABEL_123:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v66 = HIBYTE(v496);
    goto LABEL_125;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_149;
  }

  v79 = __dst;
LABEL_129:
  v80 = *v79;
  v81 = *(v79 + 3);
  if (v80 == 1700161095 && v81 == 1748263781)
  {
    v428 = *a2;
    v83 = *(a2 + 8);
    v429 = v83;
    if ((v83 & 7) != 0 && (atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v429 &= 0xFFFFFFFFFFFFFFF8;
    }

    v84 = *(a2 + 32);
    v430 = *(a2 + 16);
    v431 = v84;
    v85 = *(a2 + 48);
    v432 = v85;
    if (v85)
    {
      v86 = (v85 - 16);
      if (*(&v431 + 1))
      {
        v86 = *(&v431 + 1);
      }

      atomic_fetch_add_explicit(v86, 1uLL, memory_order_relaxed);
    }

    v87 = *(a2 + 72);
    v433 = *v20;
    v434 = v87;
    v88 = *(a2 + 88);
    v435 = v88;
    if (v88)
    {
      v89 = (v88 - 16);
      if (*(&v434 + 1))
      {
        v89 = *(&v434 + 1);
      }

      atomic_fetch_add_explicit(v89, 1uLL, memory_order_relaxed);
    }

    v90 = *(a2 + 104);
    v436 = *(a2 + 96);
    v437 = v90;
    if ((v90 & 7) != 0 && (atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v437 &= 0xFFFFFFFFFFFFFFF8;
    }

    v438[0] = *v19;
    *(v438 + 13) = *(a2 + 125);
    sub_29AA6DAF0(&v428);
  }

LABEL_149:
  if (SHIBYTE(v496) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_174;
    }

    v92 = __dst;
  }

  else
  {
    v91 = HIBYTE(v496);
    if (HIBYTE(v496) != 7)
    {
LABEL_176:
      if (v91 != 7)
      {
        goto LABEL_200;
      }

      v104 = &__dst;
      goto LABEL_180;
    }

    v92 = &__dst;
  }

  v93 = *v92;
  v94 = *(v92 + 3);
  if (v93 == 1700161095 && v94 == 1714578277)
  {
    v417 = *a2;
    v96 = *(a2 + 8);
    v418 = v96;
    if ((v96 & 7) != 0 && (atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v418 &= 0xFFFFFFFFFFFFFFF8;
    }

    v97 = *(a2 + 32);
    v419 = *(a2 + 16);
    v420 = v97;
    v98 = *(a2 + 48);
    v421 = v98;
    if (v98)
    {
      v99 = (v98 - 16);
      if (*(&v420 + 1))
      {
        v99 = *(&v420 + 1);
      }

      atomic_fetch_add_explicit(v99, 1uLL, memory_order_relaxed);
    }

    v100 = *(a2 + 72);
    v422 = *v20;
    v423 = v100;
    v101 = *(a2 + 88);
    v424 = v101;
    if (v101)
    {
      v102 = (v101 - 16);
      if (*(&v423 + 1))
      {
        v102 = *(&v423 + 1);
      }

      atomic_fetch_add_explicit(v102, 1uLL, memory_order_relaxed);
    }

    v103 = *(a2 + 104);
    v425 = *(a2 + 96);
    v426 = v103;
    if ((v103 & 7) != 0 && (atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v426 &= 0xFFFFFFFFFFFFFFF8;
    }

    v427[0] = *v19;
    *(v427 + 13) = *(a2 + 125);
    sub_29AA6DFA4(&v417);
  }

LABEL_174:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v91 = HIBYTE(v496);
    goto LABEL_176;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_200;
  }

  v104 = __dst;
LABEL_180:
  v105 = *v104;
  v106 = *(v104 + 3);
  if (v105 == 1700161095 && v106 == 1714643813)
  {
    v406 = *a2;
    v108 = *(a2 + 8);
    v407 = v108;
    if ((v108 & 7) != 0 && (atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v407 &= 0xFFFFFFFFFFFFFFF8;
    }

    v109 = *(a2 + 32);
    v408 = *(a2 + 16);
    v409 = v109;
    v110 = *(a2 + 48);
    v410 = v110;
    if (v110)
    {
      v111 = (v110 - 16);
      if (*(&v409 + 1))
      {
        v111 = *(&v409 + 1);
      }

      atomic_fetch_add_explicit(v111, 1uLL, memory_order_relaxed);
    }

    v112 = *(a2 + 72);
    v411 = *v20;
    v412 = v112;
    v113 = *(a2 + 88);
    v413 = v113;
    if (v113)
    {
      v114 = (v113 - 16);
      if (*(&v412 + 1))
      {
        v114 = *(&v412 + 1);
      }

      atomic_fetch_add_explicit(v114, 1uLL, memory_order_relaxed);
    }

    v115 = *(a2 + 104);
    v414 = *(a2 + 96);
    v415 = v115;
    if ((v115 & 7) != 0 && (atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v415 &= 0xFFFFFFFFFFFFFFF8;
    }

    v416[0] = *v19;
    *(v416 + 13) = *(a2 + 125);
    sub_29AA6E3C4(&v406);
  }

LABEL_200:
  if (SHIBYTE(v496) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_225;
    }

    v117 = __dst;
  }

  else
  {
    v116 = HIBYTE(v496);
    if (HIBYTE(v496) != 7)
    {
LABEL_227:
      if (v116 != 7)
      {
        goto LABEL_251;
      }

      v129 = &__dst;
      goto LABEL_231;
    }

    v117 = &__dst;
  }

  v118 = *v117;
  v119 = *(v117 + 3);
  if (v118 == 1700161095 && v119 == 1714709349)
  {
    v395 = *a2;
    v121 = *(a2 + 8);
    v396 = v121;
    if ((v121 & 7) != 0 && (atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v396 &= 0xFFFFFFFFFFFFFFF8;
    }

    v122 = *(a2 + 32);
    v397 = *(a2 + 16);
    v398 = v122;
    v123 = *(a2 + 48);
    v399 = v123;
    if (v123)
    {
      v124 = (v123 - 16);
      if (*(&v398 + 1))
      {
        v124 = *(&v398 + 1);
      }

      atomic_fetch_add_explicit(v124, 1uLL, memory_order_relaxed);
    }

    v125 = *(a2 + 72);
    v400 = *v20;
    v401 = v125;
    v126 = *(a2 + 88);
    v402 = v126;
    if (v126)
    {
      v127 = (v126 - 16);
      if (*(&v401 + 1))
      {
        v127 = *(&v401 + 1);
      }

      atomic_fetch_add_explicit(v127, 1uLL, memory_order_relaxed);
    }

    v128 = *(a2 + 104);
    v403 = *(a2 + 96);
    v404 = v128;
    if ((v128 & 7) != 0 && (atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v404 &= 0xFFFFFFFFFFFFFFF8;
    }

    v405[0] = *v19;
    *(v405 + 13) = *(a2 + 125);
    sub_29AA6E7E4(&v395);
  }

LABEL_225:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v116 = HIBYTE(v496);
    goto LABEL_227;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_251;
  }

  v129 = __dst;
LABEL_231:
  v130 = *v129;
  v131 = *(v129 + 3);
  if (v130 == 1700161095 && v131 == 1681023845)
  {
    v384 = *a2;
    v133 = *(a2 + 8);
    v385 = v133;
    if ((v133 & 7) != 0 && (atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v385 &= 0xFFFFFFFFFFFFFFF8;
    }

    v134 = *(a2 + 32);
    v386 = *(a2 + 16);
    v387 = v134;
    v135 = *(a2 + 48);
    v388 = v135;
    if (v135)
    {
      v136 = (v135 - 16);
      if (*(&v387 + 1))
      {
        v136 = *(&v387 + 1);
      }

      atomic_fetch_add_explicit(v136, 1uLL, memory_order_relaxed);
    }

    v137 = *(a2 + 72);
    v389 = *v20;
    v390 = v137;
    v138 = *(a2 + 88);
    v391 = v138;
    if (v138)
    {
      v139 = (v138 - 16);
      if (*(&v390 + 1))
      {
        v139 = *(&v390 + 1);
      }

      atomic_fetch_add_explicit(v139, 1uLL, memory_order_relaxed);
    }

    v140 = *(a2 + 104);
    v392 = *(a2 + 96);
    v393 = v140;
    if ((v140 & 7) != 0 && (atomic_fetch_add_explicit((v140 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v393 &= 0xFFFFFFFFFFFFFFF8;
    }

    v394[0] = *v19;
    *(v394 + 13) = *(a2 + 125);
    sub_29AA6EC04(&v384);
  }

LABEL_251:
  if (SHIBYTE(v496) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_276;
    }

    v142 = __dst;
  }

  else
  {
    v141 = HIBYTE(v496);
    if (HIBYTE(v496) != 7)
    {
LABEL_278:
      if (v141 != 7)
      {
        goto LABEL_302;
      }

      v154 = &__dst;
      goto LABEL_282;
    }

    v142 = &__dst;
  }

  v143 = *v142;
  v144 = *(v142 + 3);
  if (v143 == 1700161095 && v144 == 1681089381)
  {
    v373 = *a2;
    v146 = *(a2 + 8);
    v374 = v146;
    if ((v146 & 7) != 0 && (atomic_fetch_add_explicit((v146 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v374 &= 0xFFFFFFFFFFFFFFF8;
    }

    v147 = *(a2 + 32);
    v375 = *(a2 + 16);
    v376 = v147;
    v148 = *(a2 + 48);
    v377 = v148;
    if (v148)
    {
      v149 = (v148 - 16);
      if (*(&v376 + 1))
      {
        v149 = *(&v376 + 1);
      }

      atomic_fetch_add_explicit(v149, 1uLL, memory_order_relaxed);
    }

    v150 = *(a2 + 72);
    v378 = *v20;
    v379 = v150;
    v151 = *(a2 + 88);
    v380 = v151;
    if (v151)
    {
      v152 = (v151 - 16);
      if (*(&v379 + 1))
      {
        v152 = *(&v379 + 1);
      }

      atomic_fetch_add_explicit(v152, 1uLL, memory_order_relaxed);
    }

    v153 = *(a2 + 104);
    v381 = *(a2 + 96);
    v382 = v153;
    if ((v153 & 7) != 0 && (atomic_fetch_add_explicit((v153 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v382 &= 0xFFFFFFFFFFFFFFF8;
    }

    v383[0] = *v19;
    *(v383 + 13) = *(a2 + 125);
    sub_29AA6F028(&v373);
  }

LABEL_276:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v141 = HIBYTE(v496);
    goto LABEL_278;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_302;
  }

  v154 = __dst;
LABEL_282:
  v155 = *v154;
  v156 = *(v154 + 3);
  if (v155 == 1700161095 && v156 == 1681154917)
  {
    v362 = *a2;
    v158 = *(a2 + 8);
    v363 = v158;
    if ((v158 & 7) != 0 && (atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v363 &= 0xFFFFFFFFFFFFFFF8;
    }

    v159 = *(a2 + 32);
    v364 = *(a2 + 16);
    v365 = v159;
    v160 = *(a2 + 48);
    v366 = v160;
    if (v160)
    {
      v161 = (v160 - 16);
      if (*(&v365 + 1))
      {
        v161 = *(&v365 + 1);
      }

      atomic_fetch_add_explicit(v161, 1uLL, memory_order_relaxed);
    }

    v162 = *(a2 + 72);
    v367 = *v20;
    v368 = v162;
    v163 = *(a2 + 88);
    v369 = v163;
    if (v163)
    {
      v164 = (v163 - 16);
      if (*(&v368 + 1))
      {
        v164 = *(&v368 + 1);
      }

      atomic_fetch_add_explicit(v164, 1uLL, memory_order_relaxed);
    }

    v165 = *(a2 + 104);
    v370 = *(a2 + 96);
    v371 = v165;
    if ((v165 & 7) != 0 && (atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v371 &= 0xFFFFFFFFFFFFFFF8;
    }

    v372[0] = *v19;
    *(v372 + 13) = *(a2 + 125);
    sub_29AA6F44C(&v362);
  }

LABEL_302:
  if (SHIBYTE(v496) < 0)
  {
    if (*(&__dst + 1) != 4)
    {
      goto LABEL_323;
    }

    v167 = __dst;
  }

  else
  {
    v166 = HIBYTE(v496);
    if (HIBYTE(v496) != 4)
    {
LABEL_325:
      if (v166 != 3)
      {
        goto LABEL_349;
      }

      v176 = &__dst;
      goto LABEL_329;
    }

    v167 = &__dst;
  }

  if (*v167 == 1819242338)
  {
    v351 = *a2;
    v168 = *(a2 + 8);
    v352 = v168;
    if ((v168 & 7) != 0 && (atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v352 &= 0xFFFFFFFFFFFFFFF8;
    }

    v169 = *(a2 + 32);
    v353 = *(a2 + 16);
    v354 = v169;
    v170 = *(a2 + 48);
    v355 = v170;
    if (v170)
    {
      v171 = (v170 - 16);
      if (*(&v354 + 1))
      {
        v171 = *(&v354 + 1);
      }

      atomic_fetch_add_explicit(v171, 1uLL, memory_order_relaxed);
    }

    v172 = *(a2 + 72);
    v356 = *v20;
    v357 = v172;
    v173 = *(a2 + 88);
    v358 = v173;
    if (v173)
    {
      v174 = (v173 - 16);
      if (*(&v357 + 1))
      {
        v174 = *(&v357 + 1);
      }

      atomic_fetch_add_explicit(v174, 1uLL, memory_order_relaxed);
    }

    v175 = *(a2 + 104);
    v359 = *(a2 + 96);
    v360 = v175;
    if ((v175 & 7) != 0 && (atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v360 &= 0xFFFFFFFFFFFFFFF8;
    }

    v361[0] = *v19;
    *(v361 + 13) = *(a2 + 125);
    sub_29AA6F870(&v351);
  }

LABEL_323:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v166 = HIBYTE(v496);
    goto LABEL_325;
  }

  if (*(&__dst + 1) != 3)
  {
    goto LABEL_349;
  }

  v176 = __dst;
LABEL_329:
  v177 = *v176;
  v178 = *(v176 + 2);
  if (v177 == 28265 && v178 == 116)
  {
    v340 = *a2;
    v180 = *(a2 + 8);
    v341 = v180;
    if ((v180 & 7) != 0 && (atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v341 &= 0xFFFFFFFFFFFFFFF8;
    }

    v181 = *(a2 + 32);
    v342 = *(a2 + 16);
    v343 = v181;
    v182 = *(a2 + 48);
    v344 = v182;
    if (v182)
    {
      v183 = (v182 - 16);
      if (*(&v343 + 1))
      {
        v183 = *(&v343 + 1);
      }

      atomic_fetch_add_explicit(v183, 1uLL, memory_order_relaxed);
    }

    v184 = *(a2 + 72);
    v345 = *v20;
    v346 = v184;
    v185 = *(a2 + 88);
    v347 = v185;
    if (v185)
    {
      v186 = (v185 - 16);
      if (*(&v346 + 1))
      {
        v186 = *(&v346 + 1);
      }

      atomic_fetch_add_explicit(v186, 1uLL, memory_order_relaxed);
    }

    v187 = *(a2 + 104);
    v348 = *(a2 + 96);
    v349 = v187;
    if ((v187 & 7) != 0 && (atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v349 &= 0xFFFFFFFFFFFFFFF8;
    }

    v350[0] = *v19;
    *(v350 + 13) = *(a2 + 125);
    sub_29AA6FC50(&v340);
  }

LABEL_349:
  if (SHIBYTE(v496) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_374;
    }

    v189 = __dst;
  }

  else
  {
    v188 = HIBYTE(v496);
    if (HIBYTE(v496) != 7)
    {
LABEL_376:
      if (v188 != 12)
      {
        goto LABEL_400;
      }

      v201 = &__dst;
      goto LABEL_380;
    }

    v189 = &__dst;
  }

  v190 = *v189;
  v191 = *(v189 + 3);
  if (v190 == 1953393013 && v191 == 1952397428)
  {
    v329 = *a2;
    v193 = *(a2 + 8);
    v330 = v193;
    if ((v193 & 7) != 0 && (atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v330 &= 0xFFFFFFFFFFFFFFF8;
    }

    v194 = *(a2 + 32);
    v331 = *(a2 + 16);
    v332 = v194;
    v195 = *(a2 + 48);
    v333 = v195;
    if (v195)
    {
      v196 = (v195 - 16);
      if (*(&v332 + 1))
      {
        v196 = *(&v332 + 1);
      }

      atomic_fetch_add_explicit(v196, 1uLL, memory_order_relaxed);
    }

    v197 = *(a2 + 72);
    v334 = *v20;
    v335 = v197;
    v198 = *(a2 + 88);
    v336 = v198;
    if (v198)
    {
      v199 = (v198 - 16);
      if (*(&v335 + 1))
      {
        v199 = *(&v335 + 1);
      }

      atomic_fetch_add_explicit(v199, 1uLL, memory_order_relaxed);
    }

    v200 = *(a2 + 104);
    v337 = *(a2 + 96);
    v338 = v200;
    if ((v200 & 7) != 0 && (atomic_fetch_add_explicit((v200 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v338 &= 0xFFFFFFFFFFFFFFF8;
    }

    v339[0] = *v19;
    *(v339 + 13) = *(a2 + 125);
    sub_29AA70024(&v329);
  }

LABEL_374:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v188 = HIBYTE(v496);
    goto LABEL_376;
  }

  if (*(&__dst + 1) != 12)
  {
    goto LABEL_400;
  }

  v201 = __dst;
LABEL_380:
  v202 = *v201;
  v203 = *(v201 + 2);
  if (v202 == 0x64656E6769736E75 && v203 == 1953392928)
  {
    v318 = *a2;
    v205 = *(a2 + 8);
    v319 = v205;
    if ((v205 & 7) != 0 && (atomic_fetch_add_explicit((v205 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v319 &= 0xFFFFFFFFFFFFFFF8;
    }

    v206 = *(a2 + 32);
    v320 = *(a2 + 16);
    v321 = v206;
    v207 = *(a2 + 48);
    v322 = v207;
    if (v207)
    {
      v208 = (v207 - 16);
      if (*(&v321 + 1))
      {
        v208 = *(&v321 + 1);
      }

      atomic_fetch_add_explicit(v208, 1uLL, memory_order_relaxed);
    }

    v209 = *(a2 + 72);
    v323 = *v20;
    v324 = v209;
    v210 = *(a2 + 88);
    v325 = v210;
    if (v210)
    {
      v211 = (v210 - 16);
      if (*(&v324 + 1))
      {
        v211 = *(&v324 + 1);
      }

      atomic_fetch_add_explicit(v211, 1uLL, memory_order_relaxed);
    }

    v212 = *(a2 + 104);
    v326 = *(a2 + 96);
    v327 = v212;
    if ((v212 & 7) != 0 && (atomic_fetch_add_explicit((v212 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v327 &= 0xFFFFFFFFFFFFFFF8;
    }

    v328[0] = *v19;
    *(v328 + 13) = *(a2 + 125);
    sub_29AA703F8(&v318);
  }

LABEL_400:
  if (SHIBYTE(v496) < 0)
  {
    if (*(&__dst + 1) != 13)
    {
      goto LABEL_425;
    }

    v214 = __dst;
  }

  else
  {
    v213 = HIBYTE(v496);
    if (HIBYTE(v496) != 13)
    {
LABEL_427:
      if (v213 != 7)
      {
        goto LABEL_451;
      }

      v226 = &__dst;
      goto LABEL_431;
    }

    v214 = &__dst;
  }

  v215 = *v214;
  v216 = *(v214 + 5);
  if (v215 == 0x64656E6769736E75 && v216 == 0x726168632064656ELL)
  {
    v307 = *a2;
    v218 = *(a2 + 8);
    v308 = v218;
    if ((v218 & 7) != 0 && (atomic_fetch_add_explicit((v218 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v308 &= 0xFFFFFFFFFFFFFFF8;
    }

    v219 = *(a2 + 32);
    v309 = *(a2 + 16);
    v310 = v219;
    v220 = *(a2 + 48);
    v311 = v220;
    if (v220)
    {
      v221 = (v220 - 16);
      if (*(&v310 + 1))
      {
        v221 = *(&v310 + 1);
      }

      atomic_fetch_add_explicit(v221, 1uLL, memory_order_relaxed);
    }

    v222 = *(a2 + 72);
    v312 = *v20;
    v313 = v222;
    v223 = *(a2 + 88);
    v314 = v223;
    if (v223)
    {
      v224 = (v223 - 16);
      if (*(&v313 + 1))
      {
        v224 = *(&v313 + 1);
      }

      atomic_fetch_add_explicit(v224, 1uLL, memory_order_relaxed);
    }

    v225 = *(a2 + 104);
    v315 = *(a2 + 96);
    v316 = v225;
    if ((v225 & 7) != 0 && (atomic_fetch_add_explicit((v225 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v316 &= 0xFFFFFFFFFFFFFFF8;
    }

    v317[0] = *v19;
    *(v317 + 13) = *(a2 + 125);
    sub_29AA70024(&v307);
  }

LABEL_425:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v213 = HIBYTE(v496);
    goto LABEL_427;
  }

  if (*(&__dst + 1) != 7)
  {
    goto LABEL_451;
  }

  v226 = __dst;
LABEL_431:
  v227 = *v226;
  v228 = *(v226 + 3);
  if (v227 == 1700161095 && v228 == 1764909925)
  {
    v296 = *a2;
    v230 = *(a2 + 8);
    v297 = v230;
    if ((v230 & 7) != 0 && (atomic_fetch_add_explicit((v230 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v297 &= 0xFFFFFFFFFFFFFFF8;
    }

    v231 = *(a2 + 32);
    v298 = *(a2 + 16);
    v299 = v231;
    v232 = *(a2 + 48);
    v300 = v232;
    if (v232)
    {
      v233 = (v232 - 16);
      if (*(&v299 + 1))
      {
        v233 = *(&v299 + 1);
      }

      atomic_fetch_add_explicit(v233, 1uLL, memory_order_relaxed);
    }

    v234 = *(a2 + 72);
    v301 = *v20;
    v302 = v234;
    v235 = *(a2 + 88);
    v303 = v235;
    if (v235)
    {
      v236 = (v235 - 16);
      if (*(&v302 + 1))
      {
        v236 = *(&v302 + 1);
      }

      atomic_fetch_add_explicit(v236, 1uLL, memory_order_relaxed);
    }

    v237 = *(a2 + 104);
    v304 = *(a2 + 96);
    v305 = v237;
    if ((v237 & 7) != 0 && (atomic_fetch_add_explicit((v237 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v305 &= 0xFFFFFFFFFFFFFFF8;
    }

    v306[0] = *v19;
    *(v306 + 13) = *(a2 + 125);
    sub_29AA707CC(&v296);
  }

LABEL_451:
  if (SHIBYTE(v496) < 0)
  {
    if (*(&__dst + 1) != 7)
    {
      goto LABEL_476;
    }

    v239 = __dst;
  }

  else
  {
    v238 = HIBYTE(v496);
    if (HIBYTE(v496) != 7)
    {
      goto LABEL_478;
    }

    v239 = &__dst;
  }

  v240 = *v239;
  v241 = *(v239 + 3);
  if (v240 == 1700161095 && v241 == 1764975461)
  {
    v285 = *a2;
    v243 = *(a2 + 8);
    v286 = v243;
    if ((v243 & 7) != 0 && (atomic_fetch_add_explicit((v243 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v286 &= 0xFFFFFFFFFFFFFFF8;
    }

    v244 = *(a2 + 32);
    v287 = *(a2 + 16);
    v288 = v244;
    v245 = *(a2 + 48);
    v289 = v245;
    if (v245)
    {
      v246 = (v245 - 16);
      if (*(&v288 + 1))
      {
        v246 = *(&v288 + 1);
      }

      atomic_fetch_add_explicit(v246, 1uLL, memory_order_relaxed);
    }

    v247 = *(a2 + 72);
    v290 = *v20;
    v291 = v247;
    v248 = *(a2 + 88);
    v292 = v248;
    if (v248)
    {
      v249 = (v248 - 16);
      if (*(&v291 + 1))
      {
        v249 = *(&v291 + 1);
      }

      atomic_fetch_add_explicit(v249, 1uLL, memory_order_relaxed);
    }

    v250 = *(a2 + 104);
    v293 = *(a2 + 96);
    v294 = v250;
    if ((v250 & 7) != 0 && (atomic_fetch_add_explicit((v250 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v294 &= 0xFFFFFFFFFFFFFFF8;
    }

    v295[0] = *v19;
    *(v295 + 13) = *(a2 + 125);
    sub_29AA70BEC(&v285);
  }

LABEL_476:
  if ((SHIBYTE(v496) & 0x80000000) == 0)
  {
    v238 = HIBYTE(v496);
LABEL_478:
    if (v238 == 7)
    {
      v251 = &__dst;
      goto LABEL_482;
    }

    goto LABEL_486;
  }

  if (*(&__dst + 1) == 7)
  {
    v251 = __dst;
LABEL_482:
    v252 = *v251;
    v253 = *(v251 + 3);
    if (v252 == 1700161095 && v253 == 1765040997)
    {
      v274 = *a2;
      v263 = *(a2 + 8);
      v275 = v263;
      if ((v263 & 7) != 0)
      {
        v264 = (v263 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v264, 2u, memory_order_relaxed) & 1) == 0)
        {
          v275 = v264;
        }
      }

      v265 = *(a2 + 32);
      v276 = *(a2 + 16);
      v277 = v265;
      v266 = *(a2 + 48);
      v278 = v266;
      if (v266)
      {
        v267 = (v266 - 16);
        if (*(&v277 + 1))
        {
          v267 = *(&v277 + 1);
        }

        atomic_fetch_add_explicit(v267, 1uLL, memory_order_relaxed);
      }

      v268 = *(a2 + 72);
      v279 = *v20;
      v280 = v268;
      v269 = *(a2 + 88);
      v281 = v269;
      if (v269)
      {
        v270 = (v269 - 16);
        if (*(&v280 + 1))
        {
          v270 = *(&v280 + 1);
        }

        atomic_fetch_add_explicit(v270, 1uLL, memory_order_relaxed);
      }

      v271 = *(a2 + 104);
      v282 = *(a2 + 96);
      v283 = v271;
      if ((v271 & 7) != 0)
      {
        v272 = (v271 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v272, 2u, memory_order_relaxed) & 1) == 0)
        {
          v283 = v272;
        }
      }

      v284[0] = *v19;
      *(v284 + 13) = *(a2 + 125);
      sub_29AA7100C(&v274);
    }
  }

LABEL_486:
  v21 = 150;
  if (SHIBYTE(v496) < 0)
  {
    operator delete(__dst);
  }

  return v21;
}

uint64_t sub_29AA6C05C(uint64_t a1)
{
  v2 = *(a1 + 116);
  if (v2 >= 2)
  {
    v3 = 4 * v2;
    goto LABEL_10;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v13 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &v15), !v15.n128_u64[0]))
  {
    v3 = 4;
LABEL_10:
    v5 = *(a1 + 56);
    v14 = 0;
    *__p = 0u;
    v13 = 0u;
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        sub_29A19DBEC(a1 + 56);
        v7 = v3 * *(*(a1 + 88) + 4 * v6);
        if ((v7 + v3) > *(a1 + 16))
        {
          break;
        }

        sub_29A19E500(a1 + 16);
        v8 = (*(a1 + 48) + v7);
        v9 = v3;
        do
        {
          sub_29AA7E390(__p, v8++);
          --v9;
        }

        while (v9);
        if (++v6 == v5)
        {
          goto LABEL_16;
        }
      }

      v10 = sub_29AABB028();
      sub_29A008E78(&v15, "decode: attribute value index out of range");
      sub_29AA5B750(v10, &v15);
      if (v16 < 0)
      {
        operator delete(v15.n128_u64[0]);
      }
    }

    else
    {
LABEL_16:
      sub_29A4AB3CC((a1 + 16), __p);
      sub_29A19D79C((a1 + 56));
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  v3 = 4 * __p[0];
  if (4 * __p[0])
  {
    goto LABEL_10;
  }

  v4 = sub_29AABB028();
  sub_29A008E78(__p, "decode: Component size must be positive");
  sub_29AA5B750(v4, __p);
  if (SBYTE7(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return 213;
}

uint64_t sub_29AA6C238(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 116);
  if (v3 >= 2)
  {
    v4 = 4 * v3;
    goto LABEL_10;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a2 + 96), __p);
  if (!v29 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((v2 + 96), v26), !v26[0].n128_u64[0]))
  {
    v4 = 4;
LABEL_10:
    v7 = (v2 + 16);
    v8 = *(v2 + 16) / v4;
    v26[0].n128_u32[0] = 0;
    __p[0] = v26;
    sub_29A19D7EC((v2 + 56), v8, __p);
    *__p = 0u;
    v29 = 0u;
    v30 = 1065353216;
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_29A011440(v25, v4 >> 2);
    sub_29AA6C4E4(v26[0].n128_u64, *(v2 + 16));
    sub_29A19E500(v2 + 16);
    if (v8 >= 1)
    {
      v9 = 0;
      LODWORD(v10) = 0;
      v11 = 0;
      v12 = *(v2 + 48);
      if (v4 >> 2 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v4 >> 2;
      }

      v14 = v8 & 0x7FFFFFFF;
      v24 = (v2 + 16);
      do
      {
        v15 = v25[0];
        v10 = v10;
        v16 = v13;
        do
        {
          v17 = *(v12 + 4 * v10++);
          *v15++ = v17;
          --v16;
        }

        while (v16);
        v18 = sub_29AA61390(__p, v25);
        if (v18)
        {
          v19 = *(v18 + 10);
          sub_29A19DBEC(v7 + 40);
          *(*(v2 + 88) + 4 * v9) = v19;
        }

        else
        {
          v31 = v25;
          *(sub_29AA7E438(__p, v25, &unk_29B4D6118, &v31) + 10) = v11;
          sub_29A19DBEC(v7 + 40);
          v20 = v11 + 1;
          v21 = v2;
          *(*(v2 + 88) + 4 * v9) = v11;
          v22 = v25[0];
          v23 = v4;
          do
          {
            sub_29AA7E390(v26, v22++);
            --v4;
          }

          while (v4);
          v11 = v20;
          v4 = v23;
          v2 = v21;
          v7 = v24;
        }

        ++v9;
      }

      while (v9 < v14);
    }

    sub_29A4AB3CC(v7, v26);
    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((v2 + 96), __p);
  v4 = 4 * __p[0];
  if (4 * __p[0])
  {
    goto LABEL_10;
  }

  v5 = sub_29AABB028();
  sub_29A008E78(__p, "decode: Component size must be positive");
  sub_29AA5B750(v5, __p);
  if (SBYTE7(v29) < 0)
  {
    operator delete(__p[0]);
  }

  return 213;
}

void sub_29AA6C498(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

unint64_t *sub_29AA6C4E4(unint64_t *result, unint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    if (result[3])
    {
      v3 = result;
    }

    else
    {
      v3 = (v2 - 8);
    }

    if (*v3 < a2)
    {
      v4 = *result;
      v5 = sub_29A19E470(result, a2);
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          *(v5 + i) = *(v2 + i);
        }
      }

LABEL_12:
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }
  }

  else if (a2)
  {
    sub_29A19E470(result, a2);
    goto LABEL_12;
  }

  return result;
}

void sub_29AA6C57C(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, v29);
  if ((v29[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v29[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((v29[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v29[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v29);
  if (v30)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &v28);
    if (v28.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v29);
      if (v29[0] != 1)
      {
        v5 = sub_29AABB028();
        v6 = v5;
        if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
        }

        if (*(v7 + 23) < 0)
        {
          sub_29A008D14(&v28, *v7, v7[1]);
        }

        else
        {
          v19 = *v7;
          v28.__r_.__value_.__r.__words[2] = v7[2];
          *&v28.__r_.__value_.__l.__data_ = v19;
        }

        v20 = std::string::insert(&v28, 0, "decode: unable to write data for ");
        v21 = *&v20->__r_.__value_.__l.__data_;
        v30 = v20->__r_.__value_.__r.__words[2];
        *v29 = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v6, v29);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(__dst, v31, *(&v31 + 1));
  }

  else
  {
    *__dst = v31;
    v27 = v32;
  }

  if (sub_29AA696E4(__dst))
  {
    v4 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v24, v31, *(&v31 + 1));
    }

    else
    {
      *v24 = v31;
      v25 = v32;
    }

    if (sub_29AA69438(v24))
    {
      v4 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(__p, v31, *(&v31 + 1));
      }

      else
      {
        *__p = v31;
        v23 = v32;
      }

      v4 = sub_29AA69990(__p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0]);
    if (v4)
    {
LABEL_30:
      sub_29A19E500(a1 + 16);
      v8 = *(a1 + 16);
      if (v8 >= 4)
      {
        v9 = *(a1 + 48);
        v10 = v8 >> 2;
        do
        {
          v11 = *v9;
          if (*v9 == 0.0)
          {
            v12 = v11 >> 16;
          }

          else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v11 >> 23])
          {
            v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v11 >> 23] + (((v11 & 0x7FFFFF) + ((v11 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v12) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v11);
          }

          LOWORD(v29[0]) = v12;
          sub_29AA7E788(v33, v29);
          ++v9;
          --v10;
        }

        while (v10);
      }

      goto LABEL_48;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  sub_29A19E500(a1 + 16);
  v13 = *(a1 + 16);
  if (v13 >= 4)
  {
    v14 = *(a1 + 48);
    v15 = v13 >> 2;
    do
    {
      v16 = *v14++;
      v17 = COERCE_UNSIGNED_INT(v16);
      if (v16)
      {
        if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v17 >> 23])
        {
          v18 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v17 >> 23] + (((v17 & 0x7FFFFF) + ((v17 >> 13) & 1) + 4095) >> 13);
        }

        else
        {
          LOWORD(v18) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v17);
        }
      }

      else
      {
        v18 = v17 >> 16;
      }

      LOWORD(v29[0]) = v18;
      sub_29AA7E788(v33, v29);
      --v15;
    }

    while (v15);
  }

LABEL_48:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>();
}

void sub_29AA6C90C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 97) < 0)
  {
    operator delete(*(v37 - 120));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29AA6C9DC(uint64_t a1)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, v25);
  if ((v25[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v25[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v27);
  if ((v25[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &v24);
    if (v24.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
      if (v25[0] != 1)
      {
        v5 = sub_29AABB028();
        v6 = v5;
        if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
        }

        if (*(v7 + 23) < 0)
        {
          sub_29A008D14(&v24, *v7, v7[1]);
        }

        else
        {
          v15 = *v7;
          v24.__r_.__value_.__r.__words[2] = v7[2];
          *&v24.__r_.__value_.__l.__data_ = v15;
        }

        v16 = std::string::insert(&v24, 0, "decode: unable to write data for ");
        v17 = *&v16->__r_.__value_.__l.__data_;
        v26 = v16->__r_.__value_.__r.__words[2];
        *v25 = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v6, v25);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__dst, v27, *(&v27 + 1));
  }

  else
  {
    *__dst = v27;
    v23 = v28;
  }

  if (sub_29AA696E4(__dst))
  {
    v4 = 1;
  }

  else
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_29A008D14(v20, v27, *(&v27 + 1));
    }

    else
    {
      *v20 = v27;
      v21 = v28;
    }

    if (sub_29AA69438(v20))
    {
      v4 = 1;
    }

    else
    {
      if (SHIBYTE(v28) < 0)
      {
        sub_29A008D14(__p, v27, *(&v27 + 1));
      }

      else
      {
        *__p = v27;
        v19 = v28;
      }

      v4 = sub_29AA69990(__p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
    if (v4)
    {
LABEL_30:
      sub_29A19E500(a1 + 16);
      v8 = *(a1 + 16);
      if (v8 >= 4)
      {
        v9 = *(a1 + 48);
        v10 = v8 >> 2;
        do
        {
          LODWORD(v25[0]) = *v9;
          sub_29A85289C(v29, v25);
          ++v9;
          --v10;
        }

        while (v10);
      }

      goto LABEL_38;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  sub_29A19E500(a1 + 16);
  v11 = *(a1 + 16);
  if (v11 >= 4)
  {
    v12 = *(a1 + 48);
    v13 = v11 >> 2;
    do
    {
      v14 = *v12++;
      *v25 = v14;
      sub_29A85289C(v29, v25);
      --v13;
    }

    while (v13);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void sub_29AA6CCE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AA6CDB0(uint64_t a1)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, v25);
  if ((v25[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v25[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v27);
  if ((v25[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &v24);
    if (v24.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
      if (v25[0] != 1)
      {
        v5 = sub_29AABB028();
        v6 = v5;
        if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
        }

        if (*(v7 + 23) < 0)
        {
          sub_29A008D14(&v24, *v7, v7[1]);
        }

        else
        {
          v15 = *v7;
          v24.__r_.__value_.__r.__words[2] = v7[2];
          *&v24.__r_.__value_.__l.__data_ = v15;
        }

        v16 = std::string::insert(&v24, 0, "decode: unable to write data for ");
        v17 = *&v16->__r_.__value_.__l.__data_;
        v26 = v16->__r_.__value_.__r.__words[2];
        *v25 = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v6, v25);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__dst, v27, *(&v27 + 1));
  }

  else
  {
    *__dst = v27;
    v23 = v28;
  }

  if (sub_29AA696E4(__dst))
  {
    v4 = 1;
  }

  else
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_29A008D14(v20, v27, *(&v27 + 1));
    }

    else
    {
      *v20 = v27;
      v21 = v28;
    }

    if (sub_29AA69438(v20))
    {
      v4 = 1;
    }

    else
    {
      if (SHIBYTE(v28) < 0)
      {
        sub_29A008D14(__p, v27, *(&v27 + 1));
      }

      else
      {
        *__p = v27;
        v19 = v28;
      }

      v4 = sub_29AA69990(__p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
    if (v4)
    {
LABEL_30:
      sub_29A19E500(a1 + 16);
      v8 = *(a1 + 16);
      if (v8 >= 4)
      {
        v9 = *(a1 + 48);
        v10 = v8 >> 2;
        do
        {
          *v25 = *v9;
          sub_29AA7E830(v29, v25);
          ++v9;
          --v10;
        }

        while (v10);
      }

      goto LABEL_38;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  sub_29A19E500(a1 + 16);
  v11 = *(a1 + 16);
  if (v11 >= 4)
  {
    v12 = *(a1 + 48);
    v13 = v11 >> 2;
    do
    {
      v14 = *v12++;
      *v25 = v14;
      sub_29AA7E830(v29, v25);
      --v13;
    }

    while (v13);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<double>>();
}

void sub_29AA6D0B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AA6D188(uint64_t a1)
{
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v36);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v35 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v35 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  if (SHIBYTE(v37) < 0)
  {
    sub_29A008D14(v31, v36, *(&v36 + 1));
  }

  else
  {
    *v31 = v36;
    v32 = v37;
  }

  if (sub_29AA696E4(v31))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v37) < 0)
    {
      sub_29A008D14(v29, v36, *(&v36 + 1));
    }

    else
    {
      *v29 = v36;
      v30 = v37;
    }

    if (sub_29AA69438(v29))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v37) < 0)
      {
        sub_29A008D14(v27, v36, *(&v36 + 1));
      }

      else
      {
        *v27 = v36;
        v28 = v37;
      }

      v11 = sub_29AA69990(v27);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            v17 = *(v14 + 4 * v13 + 4 * v16);
            if (v17 == 0.0)
            {
              v18 = HIWORD(LODWORD(v17));
            }

            else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23])
            {
              v18 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23] + (((LODWORD(v17) & 0x7FFFFF) + ((LODWORD(v17) >> 13) & 1) + 4095) >> 13);
            }

            else
            {
              LOWORD(v18) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v17));
            }

            *(__p + v16) = v18;
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29AA7E8D8(v38, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_63;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v19 = *(a1 + 16);
  if (v19 >= 4)
  {
    v20 = 0;
    v21 = *(a1 + 48);
    v22 = v19 >> 2;
    do
    {
      v23 = 0;
      do
      {
        v24 = *(v21 + 4 * v20 + 4 * v23);
        v25 = COERCE_UNSIGNED_INT(v24);
        if (v24)
        {
          if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v25 >> 23])
          {
            v26 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v25 >> 23] + (((v25 & 0x7FFFFF) + ((v25 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v26) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v25);
          }
        }

        else
        {
          v26 = v25 >> 16;
        }

        *(__p + v23) = v26;
        v23 = v23 + 1;
      }

      while (v4 != v23);
      sub_29AA7E8D8(v38, __p);
      v20 += v4;
    }

    while (v22 > v20);
  }

LABEL_63:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>();
}

void sub_29AA6D564(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29AA6D63C(uint64_t a1)
{
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v36);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v35 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v35 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  if (SHIBYTE(v37) < 0)
  {
    sub_29A008D14(v31, v36, *(&v36 + 1));
  }

  else
  {
    *v31 = v36;
    v32 = v37;
  }

  if (sub_29AA696E4(v31))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v37) < 0)
    {
      sub_29A008D14(v29, v36, *(&v36 + 1));
    }

    else
    {
      *v29 = v36;
      v30 = v37;
    }

    if (sub_29AA69438(v29))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v37) < 0)
      {
        sub_29A008D14(v27, v36, *(&v36 + 1));
      }

      else
      {
        *v27 = v36;
        v28 = v37;
      }

      v11 = sub_29AA69990(v27);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            v17 = *(v14 + 4 * v13 + 4 * v16);
            if (v17 == 0.0)
            {
              v18 = HIWORD(LODWORD(v17));
            }

            else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23])
            {
              v18 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23] + (((LODWORD(v17) & 0x7FFFFF) + ((LODWORD(v17) >> 13) & 1) + 4095) >> 13);
            }

            else
            {
              LOWORD(v18) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v17));
            }

            *(__p + v16) = v18;
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29A8F3EC0(v38, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_63;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v19 = *(a1 + 16);
  if (v19 >= 4)
  {
    v20 = 0;
    v21 = *(a1 + 48);
    v22 = v19 >> 2;
    do
    {
      v23 = 0;
      do
      {
        v24 = *(v21 + 4 * v20 + 4 * v23);
        v25 = COERCE_UNSIGNED_INT(v24);
        if (v24)
        {
          if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v25 >> 23])
          {
            v26 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v25 >> 23] + (((v25 & 0x7FFFFF) + ((v25 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v26) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v25);
          }
        }

        else
        {
          v26 = v25 >> 16;
        }

        *(__p + v23) = v26;
        v23 = v23 + 1;
      }

      while (v4 != v23);
      sub_29A8F3EC0(v38, __p);
      v20 += v4;
    }

    while (v22 > v20);
  }

LABEL_63:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
}

void sub_29AA6DA18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29AA6DAF0(uint64_t a1)
{
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v36);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v35 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v35 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  if (SHIBYTE(v37) < 0)
  {
    sub_29A008D14(v31, v36, *(&v36 + 1));
  }

  else
  {
    *v31 = v36;
    v32 = v37;
  }

  if (sub_29AA696E4(v31))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v37) < 0)
    {
      sub_29A008D14(v29, v36, *(&v36 + 1));
    }

    else
    {
      *v29 = v36;
      v30 = v37;
    }

    if (sub_29AA69438(v29))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v37) < 0)
      {
        sub_29A008D14(v27, v36, *(&v36 + 1));
      }

      else
      {
        *v27 = v36;
        v28 = v37;
      }

      v11 = sub_29AA69990(v27);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            v17 = *(v14 + 4 * v13 + 4 * v16);
            if (v17 == 0.0)
            {
              v18 = HIWORD(LODWORD(v17));
            }

            else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23])
            {
              v18 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23] + (((LODWORD(v17) & 0x7FFFFF) + ((LODWORD(v17) >> 13) & 1) + 4095) >> 13);
            }

            else
            {
              LOWORD(v18) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v17));
            }

            *(__p + v16) = v18;
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29AA7E980(v38, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_63;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v19 = *(a1 + 16);
  if (v19 >= 4)
  {
    v20 = 0;
    v21 = *(a1 + 48);
    v22 = v19 >> 2;
    do
    {
      v23 = 0;
      do
      {
        v24 = *(v21 + 4 * v20 + 4 * v23);
        v25 = COERCE_UNSIGNED_INT(v24);
        if (v24)
        {
          if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v25 >> 23])
          {
            v26 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v25 >> 23] + (((v25 & 0x7FFFFF) + ((v25 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v26) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v25);
          }
        }

        else
        {
          v26 = v25 >> 16;
        }

        *(__p + v23) = v26;
        v23 = v23 + 1;
      }

      while (v4 != v23);
      sub_29AA7E980(v38, __p);
      v20 += v4;
    }

    while (v22 > v20);
  }

LABEL_63:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>();
}

void sub_29AA6DECC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29AA6DFA4(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v30 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(v26, v31, *(&v31 + 1));
  }

  else
  {
    *v26 = v31;
    v27 = v32;
  }

  if (sub_29AA696E4(v26))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v24, v31, *(&v31 + 1));
    }

    else
    {
      *v24 = v31;
      v25 = v32;
    }

    if (sub_29AA69438(v24))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(v22, v31, *(&v31 + 1));
      }

      else
      {
        *v22 = v31;
        v23 = v32;
      }

      v11 = sub_29AA69990(v22);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            *(__p + v16) = *(v14 + 4 * v13 + 4 * v16);
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29AA27424(v33, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_53;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = *(a1 + 48);
    v20 = v17 >> 2;
    do
    {
      v21 = 0;
      do
      {
        *(__p + v21) = *(v19 + 4 * v18 + 4 * v21);
        v21 = v21 + 1;
      }

      while (v4 != v21);
      sub_29AA27424(v33, __p);
      v18 += v4;
    }

    while (v20 > v18);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>();
}

void sub_29AA6E2F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29AA6E3C4(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v30 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(v26, v31, *(&v31 + 1));
  }

  else
  {
    *v26 = v31;
    v27 = v32;
  }

  if (sub_29AA696E4(v26))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v24, v31, *(&v31 + 1));
    }

    else
    {
      *v24 = v31;
      v25 = v32;
    }

    if (sub_29AA69438(v24))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(v22, v31, *(&v31 + 1));
      }

      else
      {
        *v22 = v31;
        v23 = v32;
      }

      v11 = sub_29AA69990(v22);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            *(__p + v16) = *(v14 + 4 * v13 + 4 * v16);
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29A8F3D60(v33, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_53;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = *(a1 + 48);
    v20 = v17 >> 2;
    do
    {
      v21 = 0;
      do
      {
        *(__p + v21) = *(v19 + 4 * v18 + 4 * v21);
        v21 = v21 + 1;
      }

      while (v4 != v21);
      sub_29A8F3D60(v33, __p);
      v18 += v4;
    }

    while (v20 > v18);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void sub_29AA6E714(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AA6E7E4(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v30 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(v26, v31, *(&v31 + 1));
  }

  else
  {
    *v26 = v31;
    v27 = v32;
  }

  if (sub_29AA696E4(v26))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v24, v31, *(&v31 + 1));
    }

    else
    {
      *v24 = v31;
      v25 = v32;
    }

    if (sub_29AA69438(v24))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(v22, v31, *(&v31 + 1));
      }

      else
      {
        *v22 = v31;
        v23 = v32;
      }

      v11 = sub_29AA69990(v22);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            *(__p + v16) = *(v14 + 4 * v13 + 4 * v16);
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29AA7EA28(v33, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_53;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = *(a1 + 48);
    v20 = v17 >> 2;
    do
    {
      v21 = 0;
      do
      {
        *(__p + v21) = *(v19 + 4 * v18 + 4 * v21);
        v21 = v21 + 1;
      }

      while (v4 != v21);
      sub_29AA7EA28(v33, __p);
      v18 += v4;
    }

    while (v20 > v18);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>();
}

void sub_29AA6EB34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29AA6EC04(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v30 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(v26, v31, *(&v31 + 1));
  }

  else
  {
    *v26 = v31;
    v27 = v32;
  }

  if (sub_29AA696E4(v26))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v24, v31, *(&v31 + 1));
    }

    else
    {
      *v24 = v31;
      v25 = v32;
    }

    if (sub_29AA69438(v24))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(v22, v31, *(&v31 + 1));
      }

      else
      {
        *v22 = v31;
        v23 = v32;
      }

      v11 = sub_29AA69990(v22);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            *&__p[v16] = *(v14 + 4 * v13 + 4 * v16);
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29A8B06A0(v33, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_53;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = *(a1 + 48);
    v20 = v17 >> 2;
    do
    {
      v21 = 0;
      do
      {
        *&__p[v21] = *(v19 + 4 * v18 + 4 * v21);
        v21 = v21 + 1;
      }

      while (v4 != v21);
      sub_29A8B06A0(v33, __p);
      v18 += v4;
    }

    while (v20 > v18);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>();
}

void sub_29AA6EF58(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29AA6F028(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v30 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(v26, v31, *(&v31 + 1));
  }

  else
  {
    *v26 = v31;
    v27 = v32;
  }

  if (sub_29AA696E4(v26))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v24, v31, *(&v31 + 1));
    }

    else
    {
      *v24 = v31;
      v25 = v32;
    }

    if (sub_29AA69438(v24))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(v22, v31, *(&v31 + 1));
      }

      else
      {
        *v22 = v31;
        v23 = v32;
      }

      v11 = sub_29AA69990(v22);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            *&__p[v16] = *(v14 + 4 * v13 + 4 * v16);
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29AA7EAD0(v33, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_53;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = *(a1 + 48);
    v20 = v17 >> 2;
    do
    {
      v21 = 0;
      do
      {
        *&__p[v21] = *(v19 + 4 * v18 + 4 * v21);
        v21 = v21 + 1;
      }

      while (v4 != v21);
      sub_29AA7EAD0(v33, __p);
      v18 += v4;
    }

    while (v20 > v18);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>();
}

void sub_29AA6F37C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29AA6F44C(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v23 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v23 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(v28, v31, *(&v31 + 1));
  }

  else
  {
    *v28 = v31;
    v29 = v32;
  }

  if (sub_29AA696E4(v28))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v26, v31, *(&v31 + 1));
    }

    else
    {
      *v26 = v31;
      v27 = v32;
    }

    if (sub_29AA69438(v26))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(v24, v31, *(&v31 + 1));
      }

      else
      {
        *v24 = v31;
        v25 = v32;
      }

      v11 = sub_29AA69990(v24);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[0]);
      }
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            *&__p[v16] = *(v14 + 4 * v13 + 4 * v16);
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29AA7EB88(v33, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_53;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = *(a1 + 48);
    v20 = v17 >> 2;
    do
    {
      v21 = 0;
      do
      {
        *&__p[v21] = *(v19 + 4 * v18 + 4 * v21);
        v21 = v21 + 1;
      }

      while (v4 != v21);
      sub_29AA7EB88(v33, __p);
      v18 += v4;
    }

    while (v20 > v18);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>();
}

void sub_29AA6F7A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v39 - 113) < 0)
  {
    operator delete(*(v39 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29AA6F870(uint64_t a1)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, v25);
  if ((v25[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v25[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v27);
  if ((v25[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &v24);
    if (v24.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
      if (v25[0] != 1)
      {
        v5 = sub_29AABB028();
        v6 = v5;
        if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
        }

        if (*(v7 + 23) < 0)
        {
          sub_29A008D14(&v24, *v7, v7[1]);
        }

        else
        {
          v15 = *v7;
          v24.__r_.__value_.__r.__words[2] = v7[2];
          *&v24.__r_.__value_.__l.__data_ = v15;
        }

        v16 = std::string::insert(&v24, 0, "decode: unable to write data for ");
        v17 = *&v16->__r_.__value_.__l.__data_;
        v26 = v16->__r_.__value_.__r.__words[2];
        *v25 = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v6, v25);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__dst, v27, *(&v27 + 1));
  }

  else
  {
    *__dst = v27;
    v23 = v28;
  }

  if (sub_29AA696E4(__dst))
  {
    v4 = 1;
  }

  else
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_29A008D14(v20, v27, *(&v27 + 1));
    }

    else
    {
      *v20 = v27;
      v21 = v28;
    }

    if (sub_29AA69438(v20))
    {
      v4 = 1;
    }

    else
    {
      if (SHIBYTE(v28) < 0)
      {
        sub_29A008D14(__p, v27, *(&v27 + 1));
      }

      else
      {
        *__p = v27;
        v19 = v28;
      }

      v4 = sub_29AA69990(__p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
    if (v4)
    {
LABEL_30:
      sub_29A19E500(a1 + 16);
      v8 = *(a1 + 16);
      if (v8 >= 4)
      {
        v9 = *(a1 + 48);
        v10 = v8 >> 2;
        do
        {
          LOBYTE(v25[0]) = *v9 != 0.0;
          sub_29A2CB240(v29, v25);
          ++v9;
          --v10;
        }

        while (v10);
      }

      goto LABEL_38;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  sub_29A19E500(a1 + 16);
  v11 = *(a1 + 16);
  if (v11 >= 4)
  {
    v12 = *(a1 + 48);
    v13 = v11 >> 2;
    do
    {
      v14 = *v12++;
      LOBYTE(v25[0]) = v14 != 0;
      sub_29A2CB240(v29, v25);
      --v13;
    }

    while (v13);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>();
}

void sub_29AA6FB80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29AA6FC50(uint64_t a1)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, v25);
  if ((v25[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v25[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v27);
  if ((v25[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &v24);
    if (v24.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
      if (v25[0] != 1)
      {
        v5 = sub_29AABB028();
        v6 = v5;
        if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
        }

        if (*(v7 + 23) < 0)
        {
          sub_29A008D14(&v24, *v7, v7[1]);
        }

        else
        {
          v15 = *v7;
          v24.__r_.__value_.__r.__words[2] = v7[2];
          *&v24.__r_.__value_.__l.__data_ = v15;
        }

        v16 = std::string::insert(&v24, 0, "decode: unable to write data for ");
        v17 = *&v16->__r_.__value_.__l.__data_;
        v26 = v16->__r_.__value_.__r.__words[2];
        *v25 = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v6, v25);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__dst, v27, *(&v27 + 1));
  }

  else
  {
    *__dst = v27;
    v23 = v28;
  }

  if (sub_29AA696E4(__dst))
  {
    v4 = 1;
  }

  else
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_29A008D14(v20, v27, *(&v27 + 1));
    }

    else
    {
      *v20 = v27;
      v21 = v28;
    }

    if (sub_29AA69438(v20))
    {
      v4 = 1;
    }

    else
    {
      if (SHIBYTE(v28) < 0)
      {
        sub_29A008D14(__p, v27, *(&v27 + 1));
      }

      else
      {
        *__p = v27;
        v19 = v28;
      }

      v4 = sub_29AA69990(__p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
    if (v4)
    {
LABEL_30:
      sub_29A19E500(a1 + 16);
      v8 = *(a1 + 16);
      if (v8 >= 4)
      {
        v9 = *(a1 + 48);
        v10 = v8 >> 2;
        do
        {
          LODWORD(v25[0]) = *v9;
          sub_29A7ACA64(v29, v25);
          ++v9;
          --v10;
        }

        while (v10);
      }

      goto LABEL_38;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  sub_29A19E500(a1 + 16);
  v11 = *(a1 + 16);
  if (v11 >= 4)
  {
    v12 = *(a1 + 48);
    v13 = v11 >> 2;
    do
    {
      v14 = *v12++;
      LODWORD(v25[0]) = v14;
      sub_29A7ACA64(v29, v25);
      --v13;
    }

    while (v13);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29AA6FF54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AA70024(uint64_t a1)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, v25);
  if ((v25[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v25[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v27);
  if ((v25[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &v24);
    if (v24.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
      if (v25[0] != 1)
      {
        v5 = sub_29AABB028();
        v6 = v5;
        if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
        }

        if (*(v7 + 23) < 0)
        {
          sub_29A008D14(&v24, *v7, v7[1]);
        }

        else
        {
          v15 = *v7;
          v24.__r_.__value_.__r.__words[2] = v7[2];
          *&v24.__r_.__value_.__l.__data_ = v15;
        }

        v16 = std::string::insert(&v24, 0, "decode: unable to write data for ");
        v17 = *&v16->__r_.__value_.__l.__data_;
        v26 = v16->__r_.__value_.__r.__words[2];
        *v25 = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v6, v25);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__dst, v27, *(&v27 + 1));
  }

  else
  {
    *__dst = v27;
    v23 = v28;
  }

  if (sub_29AA696E4(__dst))
  {
    v4 = 1;
  }

  else
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_29A008D14(v20, v27, *(&v27 + 1));
    }

    else
    {
      *v20 = v27;
      v21 = v28;
    }

    if (sub_29AA69438(v20))
    {
      v4 = 1;
    }

    else
    {
      if (SHIBYTE(v28) < 0)
      {
        sub_29A008D14(__p, v27, *(&v27 + 1));
      }

      else
      {
        *__p = v27;
        v19 = v28;
      }

      v4 = sub_29AA69990(__p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
    if (v4)
    {
LABEL_30:
      sub_29A19E500(a1 + 16);
      v8 = *(a1 + 16);
      if (v8 >= 4)
      {
        v9 = *(a1 + 48);
        v10 = v8 >> 2;
        do
        {
          LOBYTE(v25[0]) = *v9;
          sub_29AA7EC34(v29, v25);
          ++v9;
          --v10;
        }

        while (v10);
      }

      goto LABEL_38;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  sub_29A19E500(a1 + 16);
  v11 = *(a1 + 16);
  if (v11 >= 4)
  {
    v12 = *(a1 + 48);
    v13 = v11 >> 2;
    do
    {
      v14 = *v12++;
      LOBYTE(v25[0]) = v14;
      sub_29AA7EC34(v29, v25);
      --v13;
    }

    while (v13);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void sub_29AA70328(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29AA703F8(uint64_t a1)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, v25);
  if ((v25[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v25[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v27);
  if ((v25[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &v24);
    if (v24.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), v25);
      if (v25[0] != 1)
      {
        v5 = sub_29AABB028();
        v6 = v5;
        if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
        }

        if (*(v7 + 23) < 0)
        {
          sub_29A008D14(&v24, *v7, v7[1]);
        }

        else
        {
          v15 = *v7;
          v24.__r_.__value_.__r.__words[2] = v7[2];
          *&v24.__r_.__value_.__l.__data_ = v15;
        }

        v16 = std::string::insert(&v24, 0, "decode: unable to write data for ");
        v17 = *&v16->__r_.__value_.__l.__data_;
        v26 = v16->__r_.__value_.__r.__words[2];
        *v25 = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v6, v25);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__dst, v27, *(&v27 + 1));
  }

  else
  {
    *__dst = v27;
    v23 = v28;
  }

  if (sub_29AA696E4(__dst))
  {
    v4 = 1;
  }

  else
  {
    if (SHIBYTE(v28) < 0)
    {
      sub_29A008D14(v20, v27, *(&v27 + 1));
    }

    else
    {
      *v20 = v27;
      v21 = v28;
    }

    if (sub_29AA69438(v20))
    {
      v4 = 1;
    }

    else
    {
      if (SHIBYTE(v28) < 0)
      {
        sub_29A008D14(__p, v27, *(&v27 + 1));
      }

      else
      {
        *__p = v27;
        v19 = v28;
      }

      v4 = sub_29AA69990(__p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
    if (v4)
    {
LABEL_30:
      sub_29A19E500(a1 + 16);
      v8 = *(a1 + 16);
      if (v8 >= 4)
      {
        v9 = *(a1 + 48);
        v10 = v8 >> 2;
        do
        {
          LODWORD(v25[0]) = *v9;
          sub_29A8527F4(v29, v25);
          ++v9;
          --v10;
        }

        while (v10);
      }

      goto LABEL_38;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  sub_29A19E500(a1 + 16);
  v11 = *(a1 + 16);
  if (v11 >= 4)
  {
    v12 = *(a1 + 48);
    v13 = v11 >> 2;
    do
    {
      v14 = *v12++;
      LODWORD(v25[0]) = v14;
      sub_29A8527F4(v29, v25);
      --v13;
    }

    while (v13);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
}

void sub_29AA706FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29AA707CC(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v30 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(v26, v31, *(&v31 + 1));
  }

  else
  {
    *v26 = v31;
    v27 = v32;
  }

  if (sub_29AA696E4(v26))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v24, v31, *(&v31 + 1));
    }

    else
    {
      *v24 = v31;
      v25 = v32;
    }

    if (sub_29AA69438(v24))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(v22, v31, *(&v31 + 1));
      }

      else
      {
        *v22 = v31;
        v23 = v32;
      }

      v11 = sub_29AA69990(v22);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            *(__p + v16) = *(v14 + 4 * v13 + 4 * v16);
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29AA26404(v33, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_53;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = *(a1 + 48);
    v20 = v17 >> 2;
    do
    {
      v21 = 0;
      do
      {
        *(__p + v21) = *(v19 + 4 * v18 + 4 * v21);
        v21 = v21 + 1;
      }

      while (v4 != v21);
      sub_29AA26404(v33, __p);
      v18 += v4;
    }

    while (v20 > v18);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>();
}

void sub_29AA70B1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29AA70BEC(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v30 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(v26, v31, *(&v31 + 1));
  }

  else
  {
    *v26 = v31;
    v27 = v32;
  }

  if (sub_29AA696E4(v26))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v24, v31, *(&v31 + 1));
    }

    else
    {
      *v24 = v31;
      v25 = v32;
    }

    if (sub_29AA69438(v24))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(v22, v31, *(&v31 + 1));
      }

      else
      {
        *v22 = v31;
        v23 = v32;
      }

      v11 = sub_29AA69990(v22);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            *(__p + v16) = *(v14 + 4 * v13 + 4 * v16);
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29A7AE8D8(v33, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_53;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = *(a1 + 48);
    v20 = v17 >> 2;
    do
    {
      v21 = 0;
      do
      {
        *(__p + v21) = *(v19 + 4 * v18 + 4 * v21);
        v21 = v21 + 1;
      }

      while (v4 != v21);
      sub_29A7AE8D8(v33, __p);
      v18 += v4;
    }

    while (v20 > v18);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
}

void sub_29AA70F3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29AA7100C(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v31);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p);
  if (!v30 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), &__dst), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions((a1 + 96), __p), v4 = __p[0], __p[0] < 2))
  {
    v5 = sub_29AABB028();
    v6 = v5;
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v7 = ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      __dst.__r_.__value_.__r.__words[2] = v7[2];
      *&__dst.__r_.__value_.__l.__data_ = v8;
    }

    v9 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v30 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v6, __p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_29A008D14(v26, v31, *(&v31 + 1));
  }

  else
  {
    *v26 = v31;
    v27 = v32;
  }

  if (sub_29AA696E4(v26))
  {
    v11 = 1;
  }

  else
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_29A008D14(v24, v31, *(&v31 + 1));
    }

    else
    {
      *v24 = v31;
      v25 = v32;
    }

    if (sub_29AA69438(v24))
    {
      v11 = 1;
    }

    else
    {
      if (SHIBYTE(v32) < 0)
      {
        sub_29A008D14(v22, v31, *(&v31 + 1));
      }

      else
      {
        *v22 = v31;
        v23 = v32;
      }

      v11 = sub_29AA69990(v22);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
    if (v11)
    {
LABEL_41:
      sub_29A19E500(a1 + 16);
      v12 = *(a1 + 16);
      if (v12 >= 4)
      {
        v13 = 0;
        v14 = *(a1 + 48);
        v15 = v12 >> 2;
        do
        {
          v16 = 0;
          do
          {
            *(__p + v16) = *(v14 + 4 * v13 + 4 * v16);
            v16 = v16 + 1;
          }

          while (v4 != v16);
          sub_29AA7ECDC(v33, __p);
          v13 += v4;
        }

        while (v15 > v13);
      }

      goto LABEL_53;
    }
  }

  else if (v11)
  {
    goto LABEL_41;
  }

  sub_29A19E500(a1 + 16);
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v18 = 0;
    v19 = *(a1 + 48);
    v20 = v17 >> 2;
    do
    {
      v21 = 0;
      do
      {
        *(__p + v21) = *(v19 + 4 * v18 + 4 * v21);
        v21 = v21 + 1;
      }

      while (v4 != v21);
      sub_29AA7ECDC(v33, __p);
      v18 += v4;
    }

    while (v20 > v18);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>();
}

void sub_29AA7135C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

unint64_t sub_29AA7142C(pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t a2)
{
  v4 = sub_29A5A6058(a1);
  if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    v14 = EmptyString[2];
    *__dst = v6;
  }

  v7 = sub_29A01BCCC(a2, __dst);
  sub_29A008E78(__p, "*");
  v8 = sub_29A01BCCC(a2, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 == v7)
  {
    if (v7 == v8)
    {
      v9 = sub_29AAACBA8(a1);
    }

    else
    {
      v9 = *(v8 + 56);
    }
  }

  else
  {
    v9 = *(v7 + 56);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  return v9;
}

void sub_29AA71528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA71564(uint64_t a1)
{
  v33[0] = 0;
  v33[1] = 0;
  v32 = v33;
  sub_29AA71B98(a1, &__p);
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v31, &__p);
  sub_29A008E78(&v29, "v");
  v34 = &v29;
  v2 = sub_29AA7ED84(&v32, &v29, &unk_29B4D6118, &v34);
  v3 = v31;
  v31 = 0uLL;
  v4 = v2[8];
  *(v2 + 7) = v3;
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (*(&v31 + 1))
  {
    sub_29A014BEC(*(&v31 + 1));
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 132) == 1)
  {
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v29, 1);
    sub_29A008E78(&__p, "hole");
    *&v31 = &__p;
    v5 = sub_29AA7ED84(&v32, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v31);
LABEL_39:
    v20 = v29;
    v29 = 0uLL;
    v21 = v5[8];
    *(v5 + 7) = v20;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(&v29 + 1))
    {
      sub_29A014BEC(*(&v29 + 1));
    }

    goto LABEL_45;
  }

  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a1 + 96, &v34);
  if ((v34 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v34 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v29, EmptyString);
  sub_29A008E78(&__p, "tp");
  *&v31 = &__p;
  v8 = sub_29AA7ED84(&v32, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v31);
  v9 = v29;
  v29 = 0uLL;
  v10 = v8[8];
  *(v8 + 7) = v9;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*(a1 + 104) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v12 = ((*(a1 + 104) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v29, v12);
  sub_29A008E78(&__p, "int");
  *&v31 = &__p;
  v13 = sub_29AA7ED84(&v32, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v31);
  v14 = v29;
  v29 = 0uLL;
  v15 = v13[8];
  *(v13 + 7) = v14;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v29, *(a1 + 112));
  sub_29A008E78(&__p, "hi");
  *&v31 = &__p;
  v16 = sub_29AA7ED84(&v32, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v31);
  v17 = v29;
  v29 = 0uLL;
  v18 = v16[8];
  *(v16 + 7) = v17;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  v19 = *(a1 + 116);
  if (v19 >= 2)
  {
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v29, v19);
    sub_29A008E78(&__p, "es");
    *&v31 = &__p;
    v5 = sub_29AA7ED84(&v32, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v31);
    goto LABEL_39;
  }

LABEL_45:
  sub_29A008864(&__p);
  pxrInternal__aapl__pxrReserved__::JsWriter::JsWriter(&v31, &__p.__r_.__value_.__r.__words[2], 0);
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v29, &v32);
  pxrInternal__aapl__pxrReserved__::JsWriteValue(&v31, &v29, v22);
  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  std::stringbuf::str();
  pxrInternal__aapl__pxrReserved__::JsWriter::~JsWriter(&v31);
  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9528];
  v23 = *(MEMORY[0x29EDC9528] + 72);
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  __p.__r_.__value_.__r.__words[2] = v23;
  v25 = MEMORY[0x29EDC9570] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v28);
  sub_29A09932C(&v32, v33[0]);
}

void sub_29AA71A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 136);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  sub_29A09932C(v15 - 88, *(v15 - 80));
  _Unwind_Resume(a1);
}

void sub_29AA71B98(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v25, *a1);
  sub_29A008E78(v23, ".");
  if ((v24 & 0x80u) == 0)
  {
    v4 = v23;
  }

  else
  {
    v4 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v5 = v24;
  }

  else
  {
    v5 = v23[1];
  }

  v6 = std::string::append(&v25, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v22, a1[1]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v22;
  }

  else
  {
    v8 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v26, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  sub_29A008E78(__p, ".");
  if ((v21 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v13 = v21;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = std::string::append(&v27, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, *(a1 + 1));
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v19.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v28, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_29AA71D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 57) < 0)
  {
    operator delete(*(v45 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA71E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_29A580660(v18, (a2 + 8), (a2 + 16));
  v9 = sub_29A5A6058(v8);
  if ((*v9 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v9 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  std::string::operator=((a1 + 8), EmptyString);
  sub_29A116F64(a5);
  v17 = 0;
  if (!(*(a1 + 416))(&v17))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(a2, v16);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v16);
  }

  v11 = sub_29AABB028();
  sub_29A008E78(__p, "encode: GCLBufferListNew");
  sub_29AA5B750(v11, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  (*(a1 + 424))(v17);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  sub_29A1DE3A4(&v20);
  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19, v12);
  }

  return 110;
}

uint64_t sub_29AA750C8(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A19E29C(a1);
  v7 = a3;
  sub_29A19E2EC(a1, a2, &v7);
  return a1;
}