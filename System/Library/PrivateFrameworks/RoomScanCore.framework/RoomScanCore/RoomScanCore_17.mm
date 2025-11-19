void sub_2623023CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = *(v40 - 192);
  if (v42)
  {
    operator delete(v42);
  }

  v43 = *(v40 - 240);
  if (v43)
  {
    operator delete(v43);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_26230259C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = (a1 + 8);
    v8 = a3;
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v12 = *(a4 + 8);
      v11 = *(a4 + 16);
      if (v12 >= v11)
      {
        v14 = (v12 - *a4) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          sub_2621CBEB0();
        }

        v16 = v11 - *a4;
        if (v16 >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_2621CBF10(v17);
        }

        v18 = (16 * v14);
        *v18 = v10;
        v18[1] = v9;
        v13 = 16 * v14 + 16;
        v19 = *(a4 + 8) - *a4;
        v20 = 16 * v14 - v19;
        memcpy(v18 - v19, *a4, v19);
        v21 = *a4;
        *a4 = v20;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = v10;
        v12[1] = v9;
        v13 = (v12 + 2);
      }

      *(a4 + 8) = v13;
      sub_2621C8F2C(a4 + 24, a2++);
      v7 += 2;
      --v8;
    }

    while (v8);
  }

  *(a4 + 48) = a3;
}

void sub_2623026BC(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_262302714(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + 1);
  a1[2] = a1[1];
  v5 = (a1 + 4);
  a1[5] = a1[4];
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      sub_2621DE070(v4, (v6 + v11));
      v14 = 0;
      sub_2621C8F2C(v5, &v14);
      ++v12;
      v6 = *a2;
      v13 = a2[1] - *a2;
      v11 += 16;
    }

    while (v12 < v13 >> 4);
    a1[7] = v13 >> 4;
    *a1 = a3;

    sub_262300E40(a1, a1 + 20, a3, a4);
  }
}

void sub_262302930(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_262302974((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_262302974(uint64_t a1)
{
  sub_2621C74C4(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_262302CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2623030D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262303130(void **a1, uint64_t *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2622ABDBC(a1, (a3[1] - *a3) >> 3);
  v6 = *a3;
  v7 = a3[1];
  memset(__p, 0, sizeof(__p));
  sub_2621DDA38(__p, *a2, a2[1], (a2[1] - *a2) >> 4);
  if (v6 != v7)
  {
    v8 = a1[1];
    do
    {
      v9 = a1[2];
      if (v8 >= v9)
      {
        v10 = *a1;
        v11 = v8 - *a1;
        v12 = (v11 >> 4) + 1;
        if (v12 >> 60)
        {
          sub_2621CBEB0();
        }

        v13 = v9 - v10;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2621CBF10(v14);
        }

        v15 = (16 * (v11 >> 4));
        *v15 = *(__p[0] + *v6);
        v8 = (v15 + 1);
        memcpy(0, v10, v11);
        *a1 = 0;
        a1[2] = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        *v8 = *(__p[0] + *v6);
        v8 += 16;
      }

      a1[1] = v8;
      ++v6;
    }

    while (v6 != v7);
  }

  v16 = __p[0];
  if (__p[0])
  {

    operator delete(v16);
  }
}

void sub_2623032BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262303408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623043AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  __p = &a53;
  sub_2621DED18(&__p);

  _Unwind_Resume(a1);
}

void *sub_262304510(void *a1, void *a2)
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

void sub_26230498C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_262306FE8(va);
  _Unwind_Resume(a1);
}

void sub_2623049A4(char *a1, char *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v195 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v159 = a2 - 48;
    v161 = a2 - 24;
    v163 = a2;
    v158 = a2 - 72;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = v163 - v9;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v163 - v9) >> 3);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3uLL:
                sub_26230652C(a1, a1 + 3, v161, a3);
                goto LABEL_145;
              case 4uLL:
                v65 = (a1 + 24);
                v66 = (a1 + 48);
                sub_26230652C(a1, a1 + 3, a1 + 6, a3);
                v67 = **a3;
                *&v191 = v161;
                v177 = sub_262305CA8((v67 + 128), v161)[5];
                v68 = **a3;
                *&v191 = a1 + 48;
                if (v177 > sub_262305CA8((v68 + 128), a1 + 6)[5])
                {
                  v191 = *v66;
                  v69 = v191;
                  v192 = *(a1 + 8);
                  v70 = v192;
                  v71 = *(v161 + 2);
                  *v66 = *v161;
                  *(a1 + 8) = v71;
                  *(v161 + 2) = v70;
                  *v161 = v69;
                  v72 = **a3;
                  *&v191 = a1 + 48;
                  v178 = sub_262305CA8((v72 + 128), a1 + 6)[5];
                  v73 = **a3;
                  *&v191 = a1 + 24;
                  if (v178 > sub_262305CA8((v73 + 128), a1 + 3)[5])
                  {
                    v74 = *(a1 + 5);
                    v75 = *v65;
                    *v65 = *v66;
                    *(a1 + 5) = *(a1 + 8);
                    *v66 = v75;
                    *(a1 + 8) = v74;
                    v76 = **a3;
                    *&v191 = a1 + 24;
                    v179 = sub_262305CA8((v76 + 128), a1 + 3)[5];
                    v77 = **a3;
                    *&v191 = a1;
                    if (v179 > sub_262305CA8((v77 + 128), a1)[5])
                    {
                      v78 = *a1;
                      v192 = *(a1 + 2);
                      v191 = v78;
                      *a1 = *v65;
                      *(a1 + 2) = *(a1 + 5);
                      *v65 = v191;
                      *(a1 + 5) = v192;
                    }
                  }
                }

                goto LABEL_145;
              case 5uLL:
                sub_2623067B4(a1, a1 + 3, a1 + 6, a1 + 9, v161, a3);
                goto LABEL_145;
            }
          }

          else
          {
            if (v11 < 2)
            {
              goto LABEL_145;
            }

            if (v11 == 2)
            {
              v79 = **a3;
              *&v191 = v161;
              v80 = sub_262305CA8((v79 + 128), v161)[5];
              v81 = **a3;
              *&v191 = a1;
              if (v80 > sub_262305CA8((v81 + 128), a1)[5])
              {
                v82 = *a1;
                v192 = *(a1 + 2);
                v191 = v82;
                v83 = *v161;
                *(a1 + 2) = *(v161 + 2);
                *a1 = v83;
                v84 = v191;
                *(v161 + 2) = v192;
                *v161 = v84;
              }

              goto LABEL_145;
            }
          }

          if (v10 <= 575)
          {
            if (a5)
            {
              if (a1 != v163)
              {
                v85 = a1 + 24;
                if (a1 + 24 != v163)
                {
                  v86 = 0;
                  v87 = a1;
                  do
                  {
                    v88 = v85;
                    v89 = **a3;
                    *&v191 = v88;
                    v180 = sub_262305CA8((v89 + 128), v88)[5];
                    v90 = **a3;
                    *&v191 = v87;
                    if (v180 > sub_262305CA8((v90 + 128), v87)[5])
                    {
                      v91 = *v88;
                      v192 = v88[2];
                      v191 = v91;
                      v88[1] = 0;
                      v88[2] = 0;
                      *v88 = 0;
                      v92 = v86;
                      do
                      {
                        v93 = &a1[v92];
                        if (a1[v92 + 47] < 0)
                        {
                          operator delete(v93[3]);
                        }

                        *(v93 + 3) = *v93;
                        v93[5] = v93[2];
                        *(v93 + 23) = 0;
                        *v93 = 0;
                        if (!v92)
                        {
                          v96 = a1;
                          goto LABEL_86;
                        }

                        v94 = **a3;
                        *&v193 = &v191;
                        v181 = sub_262305CA8((v94 + 128), &v191)[5];
                        v95 = **a3;
                        *&v193 = &a1[v92 - 24];
                        v92 -= 24;
                      }

                      while (v181 > sub_262305CA8((v95 + 128), v193)[5]);
                      v96 = &a1[v92 + 24];
                      if (a1[v92 + 47] < 0)
                      {
                        operator delete(*v96);
                      }

LABEL_86:
                      v97 = v191;
                      *(v96 + 16) = v192;
                      *v96 = v97;
                    }

                    v85 = v88 + 3;
                    v86 += 24;
                    v87 = v88;
                  }

                  while (v88 + 3 != v163);
                }
              }
            }

            else if (a1 != v163)
            {
              v145 = a1 + 24;
              if (a1 + 24 != v163)
              {
                v146 = a1 - 24;
                do
                {
                  v147 = v145;
                  v148 = **a3;
                  *&v191 = v147;
                  v189 = sub_262305CA8((v148 + 128), v147)[5];
                  v149 = **a3;
                  *&v191 = a1;
                  if (v189 > sub_262305CA8((v149 + 128), a1)[5])
                  {
                    v150 = *v147;
                    v192 = v147[2];
                    v191 = v150;
                    v147[1] = 0;
                    v147[2] = 0;
                    *v147 = 0;
                    v151 = v146;
                    do
                    {
                      v152 = v151;
                      if (*(v151 + 71) < 0)
                      {
                        operator delete(v151[6]);
                      }

                      *(v152 + 3) = *(v152 + 3);
                      v152[8] = v152[5];
                      *(v152 + 47) = 0;
                      *(v152 + 24) = 0;
                      v153 = **a3;
                      *&v193 = &v191;
                      v190 = sub_262305CA8((v153 + 128), &v191)[5];
                      v154 = **a3;
                      *&v193 = v152;
                      v155 = sub_262305CA8((v154 + 128), v152);
                      v151 = v152 - 3;
                    }

                    while (v190 > v155[5]);
                    if (*(v152 + 47) < 0)
                    {
                      operator delete(v152[3]);
                    }

                    v156 = v191;
                    v152[5] = v192;
                    *(v152 + 3) = v156;
                  }

                  v145 = v147 + 3;
                  v146 += 24;
                  a1 = v147;
                }

                while (v147 + 3 != v163);
              }
            }

            goto LABEL_145;
          }

          if (!a4)
          {
            if (a1 != v163)
            {
              v98 = v12 >> 1;
              v99 = v12 >> 1;
              v162 = a1;
              do
              {
                v100 = v99;
                if (v98 >= v99)
                {
                  v101 = (2 * v99) | 1;
                  v102 = &a1[24 * v101];
                  if (2 * v99 + 2 < v11)
                  {
                    v103 = **a3;
                    *&v191 = &a1[24 * v101];
                    v182 = sub_262305CA8((v103 + 128), v191)[5];
                    v104 = **a3;
                    *&v191 = v102 + 24;
                    if (v182 > sub_262305CA8((v104 + 128), v102 + 3)[5])
                    {
                      v102 += 24;
                      v101 = 2 * v100 + 2;
                    }
                  }

                  v105 = **a3;
                  *&v191 = v102;
                  v106 = &a1[24 * v100];
                  v183 = sub_262305CA8((v105 + 128), v102)[5];
                  v107 = **a3;
                  *&v191 = v106;
                  if (v183 <= sub_262305CA8((v107 + 128), v106)[5])
                  {
                    v108 = *v106;
                    v192 = *(v106 + 2);
                    v191 = v108;
                    *(v106 + 1) = 0;
                    *(v106 + 2) = 0;
                    *v106 = 0;
                    while (1)
                    {
                      v109 = v102;
                      if (v106[23] < 0)
                      {
                        operator delete(*v106);
                      }

                      v110 = *v102;
                      *(v106 + 2) = *(v102 + 2);
                      *v106 = v110;
                      v102[23] = 0;
                      *v102 = 0;
                      if (v98 < v101)
                      {
                        break;
                      }

                      v111 = a1;
                      v112 = (2 * v101) | 1;
                      v102 = &v111[24 * v112];
                      v101 = 2 * v101 + 2;
                      if (v101 >= v11)
                      {
                        v101 = v112;
                      }

                      else
                      {
                        v113 = **a3;
                        *&v193 = &v111[24 * v112];
                        v184 = sub_262305CA8((v113 + 128), v193)[5];
                        v114 = **a3;
                        *&v193 = v102 + 24;
                        if (v184 <= sub_262305CA8((v114 + 128), v102 + 3)[5])
                        {
                          v101 = v112;
                        }

                        else
                        {
                          v102 += 24;
                        }
                      }

                      v115 = **a3;
                      *&v193 = v102;
                      v185 = sub_262305CA8((v115 + 128), v102)[5];
                      v116 = **a3;
                      *&v193 = &v191;
                      v106 = v109;
                      a1 = v162;
                      if (v185 > sub_262305CA8((v116 + 128), &v191)[5])
                      {
                        if (v109[23] < 0)
                        {
                          operator delete(*v109);
                        }

                        break;
                      }
                    }

                    v117 = v191;
                    *(v109 + 2) = v192;
                    *v109 = v117;
                  }
                }

                v99 = v100 - 1;
              }

              while (v100);
              v118 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
              v119 = v163;
              do
              {
                v120 = v119;
                v121 = 0;
                v160 = *a1;
                *&v193 = *(a1 + 1);
                *(&v193 + 7) = *(a1 + 15);
                v164 = a1[23];
                *(a1 + 1) = 0;
                *(a1 + 2) = 0;
                *a1 = 0;
                v122 = a1;
                do
                {
                  v123 = v122;
                  v124 = &v122[3 * v121];
                  v122 = v124 + 3;
                  v125 = 2 * v121;
                  v121 = (2 * v121) | 1;
                  v126 = v125 + 2;
                  if (v125 + 2 < v118)
                  {
                    v127 = **a3;
                    *&v191 = v124 + 3;
                    v128 = sub_262305CA8((v127 + 128), v124 + 3);
                    v129 = v124 + 6;
                    v186 = v128[5];
                    v130 = **a3;
                    *&v191 = v129;
                    if (v186 > sub_262305CA8((v130 + 128), v129)[5])
                    {
                      v122 = v129;
                      v121 = v126;
                    }

                    if (*(v123 + 23) < 0)
                    {
                      operator delete(*v123);
                    }
                  }

                  v131 = *v122;
                  v123[2] = v122[2];
                  *v123 = v131;
                  *(v122 + 23) = 0;
                  *v122 = 0;
                }

                while (v121 <= ((v118 - 2) >> 1));
                v119 = v120 - 24;
                if (v122 == (v120 - 24))
                {
                  a1 = v162;
                  *v122 = v160;
                  v143 = *(&v193 + 7);
                  v122[1] = v193;
                  *(v122 + 15) = v143;
                  *(v122 + 23) = v164;
                }

                else
                {
                  v132 = *v119;
                  v122[2] = *(v120 - 1);
                  *v122 = v132;
                  a1 = v162;
                  *(v120 - 3) = v160;
                  v133 = v193;
                  *(v120 - 9) = *(&v193 + 7);
                  *(v120 - 2) = v133;
                  *(v120 - 1) = v164;
                  v134 = v122 - v162 + 24;
                  if (v134 >= 25)
                  {
                    v135 = (-2 - 0x5555555555555555 * (v134 >> 3)) >> 1;
                    v136 = &v162[24 * v135];
                    v137 = **a3;
                    *&v191 = v136;
                    v187 = sub_262305CA8((v137 + 128), v136)[5];
                    v138 = **a3;
                    *&v191 = v122;
                    if (v187 > sub_262305CA8((v138 + 128), v122)[5])
                    {
                      v139 = *v122;
                      v192 = v122[2];
                      v191 = v139;
                      v122[1] = 0;
                      v122[2] = 0;
                      *v122 = 0;
                      while (1)
                      {
                        v140 = v136;
                        if (*(v122 + 23) < 0)
                        {
                          operator delete(*v122);
                        }

                        v141 = *v136;
                        v122[2] = *(v136 + 2);
                        *v122 = v141;
                        v136[23] = 0;
                        *v136 = 0;
                        if (!v135)
                        {
                          break;
                        }

                        v135 = (v135 - 1) >> 1;
                        v136 = &v162[24 * v135];
                        v188 = sub_262305CA8((**a3 + 128), v136)[5];
                        v122 = v140;
                        if (v188 <= sub_262305CA8((**a3 + 128), &v191)[5])
                        {
                          if (v140[23] < 0)
                          {
                            operator delete(*v140);
                          }

                          break;
                        }
                      }

                      v142 = v191;
                      *(v140 + 2) = v192;
                      *v140 = v142;
                    }
                  }
                }
              }

              while (v118-- > 2);
            }

            goto LABEL_145;
          }

          v13 = v11 >> 1;
          v14 = &a1[24 * (v11 >> 1)];
          if (v10 < 0xC01)
          {
            sub_26230652C(&a1[24 * (v11 >> 1)], a1, v161, a3);
          }

          else
          {
            sub_26230652C(a1, &a1[24 * (v11 >> 1)], v161, a3);
            v15 = &a1[24 * v13 - 24];
            sub_26230652C(a1 + 3, v15, v159, a3);
            v16 = &a1[24 * v13];
            sub_26230652C(a1 + 6, v16 + 3, v158, a3);
            sub_26230652C(v15, &a1[24 * (v11 >> 1)], v16 + 3, a3);
            v17 = *a1;
            v192 = *(a1 + 2);
            v191 = v17;
            v18 = *v14;
            *(a1 + 2) = *(v14 + 2);
            *a1 = v18;
            v19 = v191;
            *(v14 + 2) = v192;
            *v14 = v19;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v20 = **a3;
          *&v191 = a1 - 24;
          v165 = sub_262305CA8((v20 + 128), a1 - 3)[5];
          v21 = **a3;
          *&v191 = a1;
          if (v165 > sub_262305CA8((v21 + 128), a1)[5])
          {
            break;
          }

          v43 = *a1;
          v194 = *(a1 + 2);
          v193 = v43;
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          v44 = **a3;
          *&v191 = &v193;
          v171 = sub_262305CA8((v44 + 128), &v193)[5];
          v45 = **a3;
          *&v191 = v161;
          if (v171 <= sub_262305CA8((v45 + 128), v161)[5])
          {
            v48 = a1 + 24;
            do
            {
              v9 = v48;
              if (v48 >= v163)
              {
                break;
              }

              v49 = **a3;
              *&v191 = &v193;
              v173 = sub_262305CA8((v49 + 128), &v193)[5];
              v50 = **a3;
              *&v191 = v9;
              v51 = sub_262305CA8((v50 + 128), v9);
              v48 = v9 + 24;
            }

            while (v173 <= v51[5]);
          }

          else
          {
            v9 = a1;
            do
            {
              v46 = **a3;
              *&v191 = &v193;
              v9 += 24;
              v172 = sub_262305CA8((v46 + 128), &v193)[5];
              v47 = **a3;
              *&v191 = v9;
            }

            while (v172 <= sub_262305CA8((v47 + 128), v9)[5]);
          }

          v52 = v163;
          if (v9 < v163)
          {
            v52 = v163;
            do
            {
              v53 = **a3;
              *&v191 = &v193;
              v52 -= 24;
              v174 = sub_262305CA8((v53 + 128), &v193)[5];
              v54 = **a3;
              *&v191 = v52;
            }

            while (v174 > sub_262305CA8((v54 + 128), v52)[5]);
          }

          while (v9 < v52)
          {
            v55 = *v9;
            v192 = *(v9 + 2);
            v191 = v55;
            v56 = *v52;
            *(v9 + 2) = *(v52 + 2);
            *v9 = v56;
            v57 = v191;
            *(v52 + 2) = v192;
            *v52 = v57;
            do
            {
              v58 = **a3;
              *&v191 = &v193;
              v9 += 24;
              v175 = sub_262305CA8((v58 + 128), &v193)[5];
              v59 = **a3;
              *&v191 = v9;
            }

            while (v175 <= sub_262305CA8((v59 + 128), v9)[5]);
            do
            {
              v60 = **a3;
              *&v191 = &v193;
              v52 -= 24;
              v176 = sub_262305CA8((v60 + 128), &v193)[5];
              v61 = **a3;
              *&v191 = v52;
            }

            while (v176 > sub_262305CA8((v61 + 128), v52)[5]);
          }

          v62 = (v9 - 24);
          if (v9 - 24 == a1)
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*v62);
            }
          }

          else
          {
            if (a1[23] < 0)
            {
              operator delete(*a1);
            }

            v63 = *v62;
            *(a1 + 2) = *(v9 - 1);
            *a1 = v63;
            *(v9 - 1) = 0;
            *(v9 - 24) = 0;
          }

          a5 = 0;
          v64 = v193;
          *(v9 - 1) = v194;
          *v62 = v64;
        }

        v22 = *a1;
        v194 = *(a1 + 2);
        v193 = v22;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = 0;
        v23 = a1;
        do
        {
          v23 += 24;
          v24 = **a3;
          *&v191 = v23;
          v166 = sub_262305CA8((v24 + 128), v23)[5];
          v25 = **a3;
          *&v191 = &v193;
        }

        while (v166 > sub_262305CA8((v25 + 128), &v193)[5]);
        v26 = v163;
        if (v23 - 24 == a1)
        {
          v26 = v163;
          do
          {
            if (v23 >= v26)
            {
              break;
            }

            v26 -= 24;
            v29 = **a3;
            *&v191 = v26;
            v168 = sub_262305CA8((v29 + 128), v26)[5];
            v30 = **a3;
            *&v191 = &v193;
          }

          while (v168 <= sub_262305CA8((v30 + 128), &v193)[5]);
        }

        else
        {
          do
          {
            v26 -= 24;
            v27 = **a3;
            *&v191 = v26;
            v167 = sub_262305CA8((v27 + 128), v26)[5];
            v28 = **a3;
            *&v191 = &v193;
          }

          while (v167 <= sub_262305CA8((v28 + 128), &v193)[5]);
        }

        v9 = v23;
        if (v23 < v26)
        {
          v31 = v26;
          do
          {
            v191 = *v9;
            v32 = v191;
            v192 = *(v9 + 2);
            v33 = v192;
            v34 = *(v31 + 2);
            *v9 = *v31;
            *(v9 + 2) = v34;
            *(v31 + 2) = v33;
            *v31 = v32;
            do
            {
              v9 += 24;
              v35 = **a3;
              *&v191 = v9;
              v169 = sub_262305CA8((v35 + 128), v9)[5];
              v36 = **a3;
              *&v191 = &v193;
            }

            while (v169 > sub_262305CA8((v36 + 128), &v193)[5]);
            do
            {
              v31 -= 24;
              v37 = **a3;
              *&v191 = v31;
              v170 = sub_262305CA8((v37 + 128), v31)[5];
              v38 = **a3;
              *&v191 = &v193;
            }

            while (v170 <= sub_262305CA8((v38 + 128), &v193)[5]);
          }

          while (v9 < v31);
        }

        v39 = (v9 - 24);
        if (v9 - 24 == a1)
        {
          if (*(v9 - 1) < 0)
          {
            operator delete(*v39);
          }
        }

        else
        {
          if (a1[23] < 0)
          {
            operator delete(*a1);
          }

          v40 = *v39;
          *(a1 + 2) = *(v9 - 1);
          *a1 = v40;
          *(v9 - 1) = 0;
          *(v9 - 24) = 0;
        }

        v41 = v193;
        *(v9 - 1) = v194;
        *v39 = v41;
        if (v23 >= v26)
        {
          break;
        }

LABEL_40:
        sub_2623049A4(a1, v9 - 24, a3, a4, a5 & 1);
        a5 = 0;
      }

      v42 = sub_262306B58(a1, v9 - 3, a3);
      if (sub_262306B58(v9, v163, a3))
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_40;
      }
    }

    a2 = v9 - 24;
    if (!v42)
    {
      continue;
    }

    break;
  }

LABEL_145:
  v157 = *MEMORY[0x277D85DE8];
}

void sub_262305C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_262305CA8(void *a1, void *a2)
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

void sub_262306104(void *a1, void *a2)
{
  v3 = sub_2621D101C(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 1);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    sub_2621D1A44(1, v3);
  }
}

double sub_262306274(void *a1, char *__src, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = __src;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - __src;
      v17 = (v10 - __src) >> 4;
      if (v17 >= a5)
      {
        v20 = &__src[16 * a5];
        v21 = &v10[-16 * a5];
        v22 = a1[1];
        while (v21 < v10)
        {
          v23 = *v21;
          v21 += 16;
          *v22++ = v23;
        }

        a1[1] = v22;
        if (v10 != v20)
        {
          memmove(&__src[16 * a5], __src, v10 - v20);
        }

        v24 = &v6[a5];
        do
        {
          v25 = *v6++;
          result = *&v25;
          *v7 = v25;
          v7 += 16;
        }

        while (v6 != v24);
      }

      else
      {
        v18 = (a3 + v16);
        if ((a3 + v16) == a4)
        {
          v19 = a1[1];
        }

        else
        {
          v36 = (a3 + v16);
          v19 = a1[1];
          do
          {
            v37 = *v36++;
            result = *&v37;
            *v19 = v37;
            v19 += 16;
          }

          while (v36 != a4);
        }

        a1[1] = v19;
        if (v17 >= 1)
        {
          v38 = &__src[16 * a5];
          v39 = &v19[-16 * a5];
          v40 = v19;
          while (v39 < v10)
          {
            v41 = *v39;
            v39 += 16;
            result = *&v41;
            *v40 = v41;
            v40 += 16;
          }

          a1[1] = v40;
          if (v19 != v38)
          {
            memmove(&__src[16 * a5], __src, v19 - v38);
          }

          if (v10 != v7)
          {
            do
            {
              v42 = *v6++;
              result = *&v42;
              *v7 = v42;
              v7 += 16;
            }

            while (v6 != v18);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + (&v10[-*a1] >> 4);
      if (v12 >> 60)
      {
        sub_2621CBEB0();
      }

      v13 = v9 - v11;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v15 = (__src - v11) >> 4;
      if (v14)
      {
        sub_2621CBF10(v14);
      }

      v27 = 16 * v15;
      v28 = 16 * a5;
      v29 = (16 * v15);
      do
      {
        v30 = *v6++;
        *v29++ = v30;
        v28 -= 16;
      }

      while (v28);
      memcpy((v27 + 16 * a5), __src, a1[1] - __src);
      v31 = *a1;
      v32 = v27 + 16 * a5 + a1[1] - v7;
      a1[1] = v7;
      v33 = v7 - v31;
      v34 = (v27 - (v7 - v31));
      memcpy(v34, v31, v33);
      v35 = *a1;
      *a1 = v34;
      a1[1] = v32;
      a1[2] = 0;
      if (v35)
      {

        operator delete(v35);
      }
    }
  }

  return result;
}

uint64_t sub_262306494(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_count(v4, v6, v7);
  if (v8 <= objc_msgSend_count(v5, v9, v10))
  {
    v14 = objc_msgSend_count(v4, v11, v12);
    v13 = v14 < objc_msgSend_count(v5, v15, v16);
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

void *sub_26230652C(void *a1, void *a2, void *a3, uint64_t **a4)
{
  v24 = sub_262305CA8((**a4 + 128), a2)[5];
  v8 = sub_262305CA8((**a4 + 128), a1);
  v9 = **a4;
  if (v24 <= v8[5])
  {
    v26 = sub_262305CA8((v9 + 128), a3)[5];
    result = sub_262305CA8((**a4 + 128), a2);
    if (v26 > result[5])
    {
      v14 = a2[2];
      v15 = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[2] = v16;
      *a3 = v15;
      a3[2] = v14;
      v27 = sub_262305CA8((**a4 + 128), a2)[5];
      result = sub_262305CA8((**a4 + 128), a1);
      if (v27 > result[5])
      {
        v17 = a1[2];
        v18 = *a1;
        v19 = a2[2];
        *a1 = *a2;
        a1[2] = v19;
        *a2 = v18;
        a2[2] = v17;
      }
    }
  }

  else
  {
    v25 = sub_262305CA8((v9 + 128), a3)[5];
    result = sub_262305CA8((**a4 + 128), a2);
    if (v25 <= result[5])
    {
      v20 = a1[2];
      v21 = *a1;
      v22 = a2[2];
      *a1 = *a2;
      a1[2] = v22;
      *a2 = v21;
      a2[2] = v20;
      v28 = sub_262305CA8((**a4 + 128), a3)[5];
      result = sub_262305CA8((**a4 + 128), a2);
      if (v28 <= result[5])
      {
        return result;
      }

      v11 = a2[2];
      v12 = *a2;
      v23 = a3[2];
      *a2 = *a3;
      a2[2] = v23;
    }

    else
    {
      v11 = a1[2];
      v12 = *a1;
      v13 = a3[2];
      *a1 = *a3;
      a1[2] = v13;
    }

    *a3 = v12;
    a3[2] = v11;
  }

  return result;
}

__n128 sub_2623067B4(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t **a6)
{
  sub_26230652C(a1, a2, a3, a6);
  v33 = sub_262305CA8((**a6 + 128), a4)[5];
  if (v33 > sub_262305CA8((**a6 + 128), a3)[5])
  {
    v12 = a3[2];
    v13 = *a3;
    v14 = a4[2];
    *a3 = *a4;
    a3[2] = v14;
    *a4 = v13;
    a4[2] = v12;
    v34 = sub_262305CA8((**a6 + 128), a3)[5];
    if (v34 > sub_262305CA8((**a6 + 128), a2)[5])
    {
      v15 = a2[2];
      v16 = *a2;
      v17 = a3[2];
      *a2 = *a3;
      a2[2] = v17;
      *a3 = v16;
      a3[2] = v15;
      v35 = sub_262305CA8((**a6 + 128), a2)[5];
      if (v35 > sub_262305CA8((**a6 + 128), a1)[5])
      {
        v18 = a1[2];
        v19 = *a1;
        v20 = a2[2];
        *a1 = *a2;
        a1[2] = v20;
        *a2 = v19;
        a2[2] = v18;
      }
    }
  }

  v36 = sub_262305CA8((**a6 + 128), a5)[5];
  result.n128_u64[0] = sub_262305CA8((**a6 + 128), a4)[5];
  if (v36 > result.n128_u32[0])
  {
    v22 = a4[2];
    v23 = *a4;
    v24 = a5[2];
    *a4 = *a5;
    a4[2] = v24;
    *a5 = v23;
    a5[2] = v22;
    v37 = sub_262305CA8((**a6 + 128), a4)[5];
    result.n128_u64[0] = sub_262305CA8((**a6 + 128), a3)[5];
    if (v37 > result.n128_u32[0])
    {
      v25 = a3[2];
      v26 = *a3;
      v27 = a4[2];
      *a3 = *a4;
      a3[2] = v27;
      *a4 = v26;
      a4[2] = v25;
      v38 = sub_262305CA8((**a6 + 128), a3)[5];
      result.n128_u64[0] = sub_262305CA8((**a6 + 128), a2)[5];
      if (v38 > result.n128_u32[0])
      {
        v28 = a2[2];
        v29 = *a2;
        v30 = a3[2];
        *a2 = *a3;
        a2[2] = v30;
        *a3 = v29;
        a3[2] = v28;
        v39 = sub_262305CA8((**a6 + 128), a2)[5];
        result.n128_u64[0] = sub_262305CA8((**a6 + 128), a1)[5];
        if (v39 > result.n128_u32[0])
        {
          v31 = a1[2];
          result = *a1;
          v32 = a2[2];
          *a1 = *a2;
          a1[2] = v32;
          *a2 = result;
          a2[2] = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_262306B58(void *a1, void *a2, uint64_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_26230652C(a1, a1 + 3, a2 - 3, a3);
        break;
      case 4:
        v24 = (a1 + 3);
        v25 = (a1 + 6);
        v26 = a2 - 3;
        sub_26230652C(a1, a1 + 3, a1 + 6, a3);
        v27 = **a3;
        *&v47 = v26;
        v44 = sub_262305CA8((v27 + 128), v26)[5];
        v28 = **a3;
        *&v47 = a1 + 6;
        if (v44 > sub_262305CA8((v28 + 128), a1 + 6)[5])
        {
          v29 = a1[8];
          v30 = *v25;
          v31 = v26[2];
          *v25 = *v26;
          a1[8] = v31;
          *v26 = v30;
          v26[2] = v29;
          v32 = **a3;
          *&v47 = a1 + 6;
          v45 = sub_262305CA8((v32 + 128), a1 + 6)[5];
          v33 = **a3;
          *&v47 = a1 + 3;
          if (v45 > sub_262305CA8((v33 + 128), a1 + 3)[5])
          {
            v34 = a1[5];
            v35 = *v24;
            *v24 = *v25;
            a1[5] = a1[8];
            *v25 = v35;
            a1[8] = v34;
            v36 = **a3;
            *&v47 = a1 + 3;
            v46 = sub_262305CA8((v36 + 128), a1 + 3)[5];
            v37 = **a3;
            *&v47 = a1;
            if (v46 > sub_262305CA8((v37 + 128), a1)[5])
            {
              v38 = a1[2];
              v39 = *a1;
              *a1 = *v24;
              a1[2] = a1[5];
              *v24 = v39;
              a1[5] = v38;
            }
          }
        }

        return 1;
      case 5:
        sub_2623067B4(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 3;
    v8 = **a3;
    *&v47 = a2 - 3;
    v41 = sub_262305CA8((v8 + 128), a2 - 3)[5];
    v9 = **a3;
    *&v47 = a1;
    if (v41 > sub_262305CA8((v9 + 128), a1)[5])
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = v7[2];
      *a1 = *v7;
      a1[2] = v12;
      *v7 = v11;
      v7[2] = v10;
    }

    return 1;
  }

LABEL_11:
  v13 = a1 + 6;
  sub_26230652C(a1, a1 + 3, a1 + 6, a3);
  v14 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = **a3;
    *&v47 = v14;
    v42 = sub_262305CA8((v17 + 128), v14)[5];
    v18 = **a3;
    *&v47 = v13;
    if (v42 > sub_262305CA8((v18 + 128), v13)[5])
    {
      v47 = *v14;
      v48 = v14[2];
      v14[1] = 0;
      v14[2] = 0;
      *v14 = 0;
      v19 = v15;
      do
      {
        v20 = (a1 + v19);
        if (*(a1 + v19 + 95) < 0)
        {
          operator delete(v20[9]);
        }

        *(v20 + 9) = *(v20 + 3);
        v20[11] = v20[8];
        *(v20 + 71) = 0;
        *(v20 + 48) = 0;
        if (v19 == -48)
        {
          v23 = a1;
          goto LABEL_22;
        }

        v21 = **a3;
        v49 = &v47;
        v43 = sub_262305CA8((v21 + 128), &v47)[5];
        v22 = **a3;
        v49 = (a1 + v19 + 24);
        v19 -= 24;
      }

      while (v43 > sub_262305CA8((v22 + 128), v49)[5]);
      v23 = a1 + v19 + 72;
      if (*(v23 + 23) < 0)
      {
        operator delete(*v23);
      }

LABEL_22:
      *v23 = v47;
      *(v23 + 16) = v48;
      if (++v16 == 8)
      {
        return v14 + 3 == a2;
      }
    }

    v13 = v14;
    v15 += 24;
    v14 += 3;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_262306FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262306FE8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_262302974(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_262307118(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_2621C7F54(v10);
      }

      sub_2621CBEB0();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

void sub_262307E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void sub_262308244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_262306FE8(va);

  _Unwind_Resume(a1);
}

void sub_2623082B8(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        v6[5] = v2[5];
        v8 = *v6;
        sub_26230856C(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    sub_2621CD6C0(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_262308424(void *a1, void *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = a2[2];
      v6[2] = v7;
      v8 = *v6;
      v6[1] = v7;
      v9 = sub_2622954FC(a1, v7, v6 + 2);
      sub_262237850(a1, v6, v9);
      a2 = *a2;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_262308528(void *a1)
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

void sub_26230856C(uint64_t a1, void *a2)
{
  v4 = sub_2621D1580((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && sub_2621D19D0(v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

id RSPointCloudToDictionary(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3);
  v5 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_count(v1, v6, v7);
  v10 = objc_msgSend_numberWithUnsignedInteger_(v5, v9, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v11, v10, @"count");

  v14 = objc_msgSend_points(v1, v12, v13);
  v17 = objc_msgSend_points(v1, v15, v16);
  v20 = objc_msgSend_count(v1, v18, v19);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  sub_26225172C(&v111, v14, v17 + 16 * v20, (v17 + 16 * v20 - v14) >> 4);
  v21 = v111;
  v22 = v112;
  v23 = v112 - v111;
  sub_26220EDA4(&v109, ((v112 - v111) >> 3) + ((v112 - v111) >> 4));
  if (v22 != v21)
  {
    v25 = 0;
    v26 = v23 >> 4;
    if ((v23 >> 4) <= 1)
    {
      v26 = 1;
    }

    v27 = v21;
    do
    {
      v28 = v109 + v25;
      v29 = *v27;
      *(v28 + 2) = v27[2];
      *v28 = v29;
      v27 += 4;
      v25 += 12;
      --v26;
    }

    while (v26);
  }

  if (v110 == v109)
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v30 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v24, v109, v110 - v109);
  }

  v32 = v30;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v31, v30, @"points");

  v35 = objc_msgSend_semanticLabels(v1, v33, v34);
  v39 = objc_msgSend_count(v1, v36, v37);
  if (v35 && v39)
  {
    v40 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v38, v35, 4 * v39);
  }

  else
  {
    v40 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v42 = v40;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v41, v40, @"semanticLabels");

  v45 = objc_msgSend_semanticVotes(v1, v43, v44);
  v49 = objc_msgSend_count(v1, v46, v47);
  if (v45 && v49)
  {
    v50 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v48, v45, 8 * v49);
  }

  else
  {
    v50 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v52 = v50;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v51, v50, @"semanticVotes");

  v55 = objc_msgSend_colors(v1, v53, v54);
  v58 = objc_msgSend_colors(v1, v56, v57);
  v61 = objc_msgSend_count(v1, v59, v60);
  v106 = 0;
  v107 = 0;
  v108 = 0;
  sub_2621DDA38(&v106, v55, v58 + 16 * v61, (v58 + 16 * v61 - v55) >> 4);
  v62 = v106;
  v63 = v107;
  v64 = v107 - v106;
  sub_26220EDA4(&v104, ((v107 - v106) >> 3) + ((v107 - v106) >> 4));
  if (v63 != v62)
  {
    v66 = 0;
    v67 = v64 >> 4;
    if ((v64 >> 4) <= 1)
    {
      v67 = 1;
    }

    v68 = v62;
    do
    {
      v69 = v104 + v66;
      v70 = *v68;
      *(v69 + 2) = v68[2];
      *v69 = v70;
      v68 += 4;
      v66 += 12;
      --v67;
    }

    while (v67);
  }

  if (v105 == v104)
  {
    v71 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v71 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v65, v104, v105 - v104);
  }

  v73 = v71;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v72, v71, @"colors");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v74 = v1;
    if (objc_msgSend_cameraPositions(v74, v75, v76))
    {
      v79 = objc_msgSend_cameraPositions(v74, v77, v78);
      v82 = objc_msgSend_cameraPositions(v74, v80, v81);
      v85 = objc_msgSend_count(v74, v83, v84);
      v101 = 0;
      v102 = 0;
      v103 = 0;
      sub_26225172C(&v101, v79, v82 + 16 * v85, (v82 + 16 * v85 - v79) >> 4);
      v86 = v101;
      v87 = v102;
      v88 = v102 - v101;
      sub_26220EDA4(&__p, ((v102 - v101) >> 3) + ((v102 - v101) >> 4));
      if (v87 != v86)
      {
        v90 = 0;
        v91 = v88 >> 4;
        if ((v88 >> 4) <= 1)
        {
          v91 = 1;
        }

        v92 = v86;
        do
        {
          v93 = __p + v90;
          v94 = *v92;
          *(v93 + 2) = v92[2];
          *v93 = v94;
          v92 += 4;
          v90 += 12;
          --v91;
        }

        while (v91);
      }

      if (v100 == __p)
      {
        v95 = objc_alloc_init(MEMORY[0x277CBEA90]);
      }

      else
      {
        v95 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v89, __p, v100 - __p);
      }

      v97 = v95;
      objc_msgSend_setObject_forKeyedSubscript_(v4, v96, v95, @"cameraPositions");

      if (__p)
      {
        v100 = __p;
        operator delete(__p);
      }

      if (v86)
      {
        operator delete(v86);
      }
    }
  }

  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }

  if (v62)
  {
    operator delete(v62);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v21)
  {
    operator delete(v21);
  }

  return v4;
}

void sub_262308EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  v29 = v27;

  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (v25)
  {
    operator delete(v25);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

id RSPointCloudFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [RSPointCloud alloc];
  v4 = objc_msgSend_initWithDictionary_(v2, v3, v1);

  return v4;
}

void sub_2623090B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = RSCVPixelRotate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_2623091D4(void *a1, double a2, double a3, uint64_t a4, int a5)
{
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = RSCVPixelRotate;
    v8 = objc_msgSendSuper2(&v16, sel_init);
    v9 = v8;
    if (v8)
    {
      *(v8 + 3) = a2;
      *(v8 + 4) = a3;
      *(v8 + 10) = a5;
      v17 = 0;
      v10 = VTImageRotationSessionCreate();
      v11 = v17;
      if (v10)
      {
        v11 = 0;
      }

      v9[2] = v11;
      if (MEMORY[0x282229FC0])
      {
        v12 = v9[3];
        v13 = v9[4];
        if (!SIPixelBufferPoolCreate())
        {
          v9 = v9;
          v14 = v9;
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

CVPixelBufferRef sub_2623092DC(CVPixelBufferRef pixelBufferOut, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (pixelBufferOut)
  {
    if (a2)
    {
      v3 = pixelBufferOut;
      v4 = (pixelBufferOut + 48);
      if (!*(pixelBufferOut + 6))
      {
        if (CVPixelBufferPoolCreatePixelBuffer(0, *(pixelBufferOut + 1), v4))
        {
          if (qword_27FF0C060 != -1)
          {
            dispatch_once(&qword_27FF0C060, &unk_2874EE100);
          }

          v5 = qword_27FF0C058;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            v8 = objc_opt_class();
            v9 = NSStringFromClass(v8);
            v10 = NSStringFromSelector(sel_rotateImage_);
            v11 = 138412546;
            v12 = v9;
            v13 = 2112;
            v14 = v10;
            _os_log_error_impl(&dword_2621C3000, v5, OS_LOG_TYPE_ERROR, "[%@ %@]: Failure to create pixel buffer for rotation", &v11, 0x16u);
          }

          goto LABEL_12;
        }

        v7 = *v4;
      }

      if (!MEMORY[0x266727090](*(v3 + 2), a2))
      {
        pixelBufferOut = *v4;
        goto LABEL_13;
      }
    }

LABEL_12:
    pixelBufferOut = 0;
  }

LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return pixelBufferOut;
}

void sub_262309468(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = (v4 - *a1) >> 6;
    v9 = v8 + 1;
    if ((v8 + 1) >> 58)
    {
      sub_2621CBEB0();
    }

    v10 = v3 - v7;
    if (v10 >> 5 > v9)
    {
      v9 = v10 >> 5;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 58))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = (v4 - *a1) >> 6;
    v13 = v8 << 6;
    v14 = *(a2 + 32);
    *(v13 + 16) = *(a2 + 16);
    *(v13 + 32) = v14;
    *v13 = &unk_2874EE868;
    *(v13 + 48) = &unk_2874EE848;
    *(v13 + 56) = *(a2 + 56);
    v6 = (v8 << 6) + 64;
    v15 = (v8 << 6) - (v12 << 6);
    if (v7 != v4)
    {
      v16 = 0;
      do
      {
        v17 = v15 + v16 * 8;
        *v17 = &unk_2874EE888;
        v18 = *&v7[v16 + 4];
        *(v17 + 16) = *&v7[v16 + 2];
        *(v17 + 32) = v18;
        *v17 = &unk_2874EE868;
        *(v17 + 48) = &unk_2874EE848;
        *(v17 + 56) = v7[v16 + 7];
        v16 += 8;
      }

      while (&v7[v16] != v4);
      v19 = v7;
      v20 = v7;
      do
      {
        v21 = *v20;
        v20 += 8;
        (*v21)();
        v19 += 8;
      }

      while (v20 != v4);
    }

    v22 = *a1;
    *a1 = v15;
    *(a1 + 1) = v6;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = &unk_2874EE888;
    v5 = *(a2 + 32);
    *(v4 + 16) = *(a2 + 16);
    *(v4 + 32) = v5;
    *v4 = &unk_2874EE868;
    *(v4 + 48) = &unk_2874EE848;
    *(v4 + 56) = *(a2 + 56);
    v6 = v4 + 64;
  }

  a1[1] = v6;
}

_OWORD *sub_26230974C(_OWORD *a1, int *a2, int *a3, int *a4)
{
  v5 = 0;
  v18[3] = *MEMORY[0x277D85DE8];
  a1[2] = 0u;
  v6 = 1;
  v7 = MEMORY[0x277D82670];
  *a1 = 0u;
  a1[1] = 0u;
  v8 = *a3;
  v18[0] = *a2;
  v18[1] = v8;
  v9 = MEMORY[0x277D82680];
  v18[2] = *a4;
  v16 = 0;
  do
  {
    v10 = v18[v5];
    if (v10 >= 0xBEBC200)
    {
      sub_2621D552C(v7, "runtime_err in ", 15);
      sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
      sub_2621D552C(v7, " ", 1);
      v11 = MEMORY[0x266727260](v7, 71);
      sub_2621D552C(v11, " ", 1);
      sub_2621D552C(v11, "Shape", 5);
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&v17, v9);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v17);
      std::ostream::put();
      std::ostream::flush();
      sub_262223C90("err", "shape[", &v16, "]", " is ", &v18[v5], " ,it should <= 6");
      std::ios_base::getloc((v7 + *(*v7 - 24)));
      v13 = std::locale::use_facet(&v17, v9);
      (v13->__vftable[2].~facet_0)(v13, 10);
      std::locale::~locale(&v17);
      std::ostream::put();
      std::ostream::flush();
    }

    v16 = v6;
    *(a1 + v5 * 8) = v10;
    ++v5;
    ++v6;
  }

  while (v5 != 3);
  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2623099DC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v23[62] = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  if (a3 != 1 || a4)
  {
    if (!a3 && a4 == 1)
    {
      LODWORD(v19) = 1065353216;
      __src = xmmword_2623A86D0;
      v18 = unk_2623A86E0;
      sub_26225E46C(v16, &__src, &v19 + 4, 9uLL);
    }
  }

  else
  {
    LODWORD(v19) = 1065353216;
    __src = xmmword_2623A86AC;
    v18 = *algn_2623A86BC;
    sub_26225E46C(v16, &__src, &v19 + 4, 9uLL);
  }

  sub_262224008(v15, (a2 + 8));
  vDSP_f3x3(*(a2 + 144), *(a2 + 8), *(a2 + 16), v16[0], v15[18]);
  sub_262223F30(&v11, v15);
  __src = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_262223F30(v23, &v11);
  v6 = v20;
  v7 = v21;
  __src = v20;
  v18 = v21;
  v8 = v22;
  v19 = v22;
  *a1 = &unk_2874EEB10;
  *(a1 + 8) = v6;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a1 + 56) = v9;
  *(a1 + 64) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 24) = v7;
  *(a1 + 40) = v8;
  *(a1 + 104) = v10 * v9;
  *(a1 + 112) = 0;
  sub_2621D7174();
}

void sub_26230A8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51, uint64_t a52, uint64_t a53, void *__p)
{
  std::locale::~locale(&STACK[0x2E0]);
  sub_2621C57C8(&STACK[0x310]);
  v56 = *(v54 + 128);
  if (v56)
  {
    sub_2621D1B78(v56);
  }

  STACK[0x210] = &unk_2874EF0B8;
  if (STACK[0x290])
  {
    sub_2621D1B78(STACK[0x290]);
  }

  if (a31)
  {
    sub_2621D1B78(a31);
  }

  if (a51)
  {
    sub_2621D1B78(a51);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

RSTextCoachingSignal *sub_26230A9D4(void *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v45 = 0uLL;
  v46 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v44 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v37 = 0u;
  v1 = a1;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v39, v47, 16);
  if (v5)
  {
    v6 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v39 + 1) + 8 * v7);
        if (objc_msgSend_type(v8, v3, v4, v37) == -1)
        {
          v38 = 0;
          sub_2621C8F2C(__p, &v38);
          v38 = 0;
          sub_2621C8F2C(&v45, &v38);
        }

        else if (objc_msgSend_type(v8, v9, v10) == 3 || objc_msgSend_type(v8, v11, v12) == 1 || objc_msgSend_type(v8, v11, v12) == 2 || objc_msgSend_type(v8, v11, v12) == 4 || objc_msgSend_type(v8, v11, v12) == 5)
        {
          objc_msgSend_score(v8, v11, v12);
          v38 = v13;
          sub_2621C8F2C(&v45, &v38);
          v38 = 0;
          sub_2621C8F2C(__p, &v38);
        }

        else if (!objc_msgSend_type(v8, v11, v12))
        {
          v38 = 0;
          sub_2621C8F2C(&v45, &v38);
          objc_msgSend_score(v8, v14, v15);
          v38 = v16;
          sub_2621C8F2C(__p, &v38);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v3, &v39, v47, 16);
      v5 = v17;
    }

    while (v17);
    v37 = v45;
    v5 = v45;
  }

  if (v37 == *(&v37 + 1) || (v19 = __p[0], __p[0] == __p[1]))
  {
    v28 = objc_alloc_init(RSTextCoachingSignal);
    v19 = __p[0];
    if (!__p[0])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v20 = 0.0;
  v21 = v37;
  do
  {
    v22 = *v21++;
    *&v20 = *&v20 + v22;
  }

  while (v21 != *(&v37 + 1));
  if (*&v20 <= 0.0)
  {
    v31 = (__p[0] + 4);
    if (__p[0] + 4 == __p[1])
    {
      v32 = __p[0];
    }

    else
    {
      LODWORD(v20) = *__p[0];
      v32 = __p[0];
      v33 = (__p[0] + 4);
      do
      {
        v34 = *v33++;
        v35 = v34;
        if (v34 < *&v20)
        {
          *&v20 = v35;
          v32 = v31;
        }

        v31 = v33;
      }

      while (v33 != __p[1]);
    }

    v36 = objc_msgSend_objectAtIndexedSubscript_(v1, v18, (v32 - __p[0]) >> 2, v20, v37);
  }

  else
  {
    v23 = (v37 + 4);
    if (v37 + 4 == *(&v37 + 1))
    {
      v24 = v37;
    }

    else
    {
      LODWORD(v20) = *v37;
      v24 = v37;
      v25 = (v37 + 4);
      do
      {
        v26 = *v25++;
        v27 = v26;
        if (*&v20 < v26)
        {
          *&v20 = v27;
          v24 = v23;
        }

        v23 = v25;
      }

      while (v25 != *(&v37 + 1));
    }

    v36 = objc_msgSend_objectAtIndexedSubscript_(v1, v18, (v24 - v37) >> 2, v20, v37);
  }

  v28 = v36;
  if (v19)
  {
LABEL_32:
    operator delete(v19);
  }

LABEL_33:
  if (v5)
  {
    operator delete(v5);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void sub_26230AD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26230AD68(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    free(v5);
    v6 = *(a1 + 40);
    *(a1 + 48) = 0u;
    if (v6)
    {
      free(v6);
      *(a1 + 40) = 0;
    }
  }

  else
  {
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = 0;
  v7 = *(a1 + 24);
  if (v7)
  {
    free(v7);
    *(a1 + 24) = 0;
  }

  *(a1 + 16) = 0;
  v8 = *(a1 + 8);
  if (v8)
  {
    free(v8);
    *(a1 + 8) = 0;
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_26230AE1C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 25;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 51;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_26230AEE8(int *a1, uint64_t a2)
{
  if (!*(a1 + 1) || !*(a2 + 8))
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  v4 = *a1;
  v5 = *(a2 + 4);
  v6 = v5 * *a1;
  if (!v6)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = 8 * v6;
  v8 = malloc_type_malloc(v7, 0x100004000313F17uLL);
  v9 = v8;
  if (v8)
  {
    bzero(v8, v7);
    v10 = a1[1];
    v11 = *(a1 + 1);
    v34 = *(a2 + 4);
    v33 = *(a2 + 8);
    cblas_dgemm_NEWLAPACK();
  }

LABEL_8:
  v12 = (v5 * v4);
  if (!v12)
  {
    v14 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v13 = malloc_type_malloc(8 * v12, 0x100004000313F17uLL);
  v14 = v13;
  if (v13)
  {
    bzero(v13, 8 * v12);
  }

  if (v9)
  {
LABEL_14:
    v15 = *(a1 + 3);
    if (v15 && v14)
    {
      vDSP_vaddD(v9, 1, v15, 1, v14, 1, v12);
    }

    free(v9);
  }

LABEL_18:
  if (v12 >= 1)
  {
    v16 = v14;
    do
    {
      v17 = *v16;
      if (*v16 < 0.0)
      {
        v17 = 0.0;
      }

      *v16++ = v17;
      --v12;
    }

    while (v12);
  }

  if (*(a1 + 5))
  {
    v18 = v14 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
    v5 = 0;
LABEL_32:
    v22 = 0;
    goto LABEL_33;
  }

  v19 = a1[8];
  if (!(v19 * v5))
  {
    goto LABEL_32;
  }

  v20 = 8 * v19 * v5;
  v21 = malloc_type_malloc(v20, 0x100004000313F17uLL);
  v22 = v21;
  if (v21)
  {
    bzero(v21, v20);
    v23 = a1[9];
    v24 = *(a1 + 5);
    cblas_dgemm_NEWLAPACK();
  }

LABEL_33:
  v25 = v5 * v19;
  if (!(v5 * v19))
  {
    v27 = 0;
    if (!v22)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v26 = malloc_type_malloc(8 * v25, 0x100004000313F17uLL);
  v27 = v26;
  if (v26)
  {
    bzero(v26, 8 * v25);
  }

  if (v22)
  {
LABEL_39:
    v28 = *(a1 + 7);
    if (v28 && v27)
    {
      vDSP_vaddD(v22, 1, v28, 1, v27, 1, v25);
    }
  }

LABEL_42:
  __C = 0.0;
  vDSP_sveD(v27, 1, &__C, v25);
  v29 = __C;
  if (v27)
  {
    free(v27);
  }

  if (v22)
  {
    free(v22);
  }

  if (v14)
  {
    free(v14);
  }

  v30 = exp(-v29);
  v31 = -log(v30 + 1.0);

  return exp(v31);
}

float *sub_26230B27C(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v6 = a2;
  if (objc_msgSend_vioTrackingState(v6, v7, v8))
  {
    v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10);
    v12 = *(a1 + 192);
    *(a1 + 192) = v11;
  }

  if (*(a1 + 192))
  {
    v13 = objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10);
    objc_msgSend_timeIntervalSinceDate_(v13, v14, *(a1 + 192));
    v16 = v15;

    if (v16 < 1.0)
    {
      goto LABEL_6;
    }
  }

  v17 = objc_msgSend_rawFeaturePoints(v6, v9, v10);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (v20 <= 0x31)
  {
LABEL_6:
    v21 = [RSTextCoachingSignal alloc];
    if (v21)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

  v22 = v6;
  v86 = *(a1 + 176);
  v87 = *(a1 + 160);
  v25 = objc_msgSend_depthBuffer(v22, v23, v24);
  v27 = v25;
  __asm { FMOV            V0.2S, #-1.0 }

  v89 = _D0;
  if (v25)
  {
    Width = CVPixelBufferGetWidth(v25);
    Height = CVPixelBufferGetHeight(v27);
    if (Height * Width)
    {
      v93.columns[0] = *a3;
      v93.columns[1] = *(a3 + 16);
      v84 = v93.columns[1].i32[1];
      v85 = *a3;
      v93.columns[0].i32[3] = 0;
      v93.columns[1].i32[3] = 0;
      v93.columns[2] = *(a3 + 32);
      v93.columns[2].i32[3] = 0;
      v93.columns[3] = *(MEMORY[0x277D860B8] + 48);
      v94 = __invert_f4(v93);
      v79 = v94.columns[0];
      v80 = v94.columns[1];
      v81 = v94.columns[3];
      v82 = v94.columns[2];
      v36 = *(a1 + 128);
      v35 = *(a1 + 120);
      v37 = ((v36 - v35) << 6) - 1;
      v38 = a1;
      v94.columns[0] = vld1q_dup_f32(v38++);
      v83 = v94.columns[0];
      v39 = vld1_dup_f32(v38);
      if (v36 == v35)
      {
        v37 = 0;
      }

      v40 = *(a1 + 152) + *(a1 + 144);
      if (v37 == v40)
      {
        sub_262231E24((a1 + 112));
        v35 = *(a1 + 120);
        v40 = *(a1 + 152) + *(a1 + 144);
      }

      v41 = vaddq_f32(v81, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v79, vcvts_n_f32_s64(Width, 1uLL) * *&a4), v80, vcvts_n_f32_s64(Height, 1uLL) * *&a4), v82, *&a4));
      _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), vnegq_f32(v86)), v41, vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL));
      v43 = vaddq_f32(v87, vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL));
      *_Q3.i32 = *&a4 * *&a4;
      *v41.f32 = vmla_f32(vmul_laneq_f32(vdiv_f32(vmul_f32(*v41.f32, vneg_f32(__PAIR64__(v84, v85.u32[0]))), vdup_lane_s32(*_Q3.i8, 0)), v43, 2), *v43.f32, vdiv_f32(__PAIR64__(v84, v85.u32[0]), *&vdupq_lane_s32(*&a4, 0)));
      v44 = vdivq_f32(v87, v83);
      v44.i32[3] = 0;
      v45 = vmaxnmq_f32(v44, xmmword_2623A7BF0);
      v45.i32[3] = 0;
      v46 = vminnmq_f32(v45, xmmword_2623A7C00);
      v47 = vmulq_f32(v46, v46);
      v43.f32[0] = vaddv_f32(*v47.i8);
      __asm { FMOV            V3.2S, #1.0 }

      *v41.f32 = vminnm_f32(vmaxnm_f32(vdiv_f32(*v41.f32, v39), v89), *_Q3.i8);
      *v41.f32 = vmul_f32(*v41.f32, *v41.f32);
      v26 = vzip1_s32(*&vextq_s8(v47, v47, 8uLL), *v41.f32);
      v41.i32[0] = v43.i32[0];
      *(*(v35 + ((v40 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v40 & 0x1FF)) = vsqrt_f32(vadd_f32(v26, *v41.f32));
      ++*(a1 + 152);
    }
  }

  v48 = *(a1 + 152);
  if (v48 < 2)
  {
LABEL_18:
    if (!v48)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  --v48;
  v49 = *(a1 + 144) + 1;
  *(a1 + 144) = v49;
  *(a1 + 152) = v48;
  if (v49 >= 0x400)
  {
    operator delete(**(a1 + 120));
    *(a1 + 120) += 8;
    v48 = *(a1 + 152);
    *(a1 + 144) -= 512;
    goto LABEL_18;
  }

LABEL_19:
  v50 = *(a1 + 120);
  v51 = 0;
  if (*(a1 + 128) != v50)
  {
    v52 = *(a1 + 144);
    v53 = (v50 + 8 * (v52 >> 9));
    v54 = *v53;
    v55 = &(*v53)[v52 & 0x1FF];
    v56 = *(v50 + (((v52 + v48) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v52 + v48) & 0x1FF);
    while (v55 != v56)
    {
      v57 = *v55++;
      v26 = v57;
      if (v55 - v54 == 4096)
      {
        v58 = v53[1];
        ++v53;
        v54 = v58;
        v55 = v58;
      }

      v51 = vadd_f32(v51, v26);
    }
  }

  v26.f32[0] = v48;
  v89 = vdiv_f32(v51, vdup_lane_s32(v26, 0));
LABEL_26:

  if (v89.f32[0] >= 0.0 || v89.f32[1] >= 0.0)
  {
    v91[0] = 0x100000002;
    v61 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
    v62 = v61;
    v91[1] = v61;
    if (v61)
    {
      v61->f64[0] = 0.0;
      v61->f64[1] = 0.0;
    }

    *v61 = vcvtq_f64_f32(v89);
    v63 = sub_26230AEE8((a1 + 200), v91);
    v90 = v63;
    sub_26230B7F0(a1 + 64, &v90);
    v64 = *(a1 + 104);
    if (v64 >= 4)
    {
      ++*(a1 + 96);
      *(a1 + 104) = v64 - 1;
      sub_26230B878(a1 + 64);
    }

    v65 = *(a1 + 72);
    if (*(a1 + 80) == v65)
    {
      v66 = *(a1 + 104);
    }

    else
    {
      v67 = *(a1 + 96);
      v66 = *(a1 + 104);
      v68 = (v65 + 8 * (v67 >> 10));
      v69 = *v68;
      v70 = &(*v68)[v67 & 0x3FF];
      v71 = *(v65 + (((v66 + v67) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v66 + v67) & 0x3FF);
      if (v70 != v71)
      {
        v72 = 0.0;
        do
        {
          v73 = *v70++;
          v74 = v73;
          if (v70 - v69 == 4096)
          {
            v75 = v68[1];
            ++v68;
            v69 = v75;
            v70 = v75;
          }

          v72 = v72 + v74;
        }

        while (v70 != v71);
        goto LABEL_46;
      }
    }

    v72 = 0.0;
LABEL_46:
    v76 = v72 / v66;
    if (v76 <= *(a1 + 8))
    {
      v77 = [RSTextCoachingSignal alloc];
      v78 = 0;
      v76 = 1.0 - v76;
    }

    else
    {
      v77 = [RSTextCoachingSignal alloc];
      v78 = 1;
    }

    if (v77)
    {
      v59 = sub_2622E743C(v77, v78, v76);
    }

    else
    {
      v59 = 0;
    }

    free(v62);
    goto LABEL_30;
  }

  v21 = [RSTextCoachingSignal alloc];
  if (v21)
  {
LABEL_29:
    v59 = sub_2622E743C(v21, 0, 1.0);
    goto LABEL_30;
  }

LABEL_52:
  v59 = 0;
LABEL_30:

  return v59;
}

float sub_26230B7F0(uint64_t a1, float *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    sub_26230B8CC(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

void sub_26230B878(uint64_t a1)
{
  if (*(a1 + 32) >= 0x800uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }
}

void *sub_26230B8CC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    sub_2622317F8(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_262231BA4(a1, &v10);
}

void sub_26230BD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

double sub_26230BD80(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *(a1 + 56) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 32);
      v2 = (*(a1 + 24) + 8);
      *(a1 + 24) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 25;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 51;
  }

  *(a1 + 48) = v6;
LABEL_8:
  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  *(a1 + 152) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 128);
      v7 = (*(a1 + 120) + 8);
      *(a1 + 120) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 512;
  }

  *(a1 + 144) = v11;
LABEL_15:
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  *(a1 + 104) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 80);
      v12 = (*(a1 + 72) + 8);
      *(a1 + 72) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 512;
    goto LABEL_21;
  }

  if (v14 == 2)
  {
    v16 = 1024;
LABEL_21:
    *(a1 + 96) = v16;
  }

  v17 = *(a1 + 192);
  *(a1 + 192) = 0;

  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

float *sub_26230BEC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_colorBuffer(v3, v4, v5);
  Width = CVPixelBufferGetWidth(v6);
  v10 = objc_msgSend_colorBuffer(v3, v8, v9);
  Height = CVPixelBufferGetHeight(v10);
  v14 = objc_msgSend_colorBuffer(v3, v12, v13);
  sub_262236864(&pixelBuffer, v14);
  if (Height < 1)
  {
    v18.f64[0] = 0.0;
    v17 = 0uLL;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0uLL;
    v18 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      v19 = v16;
      if (Width >= 1)
      {
        v20 = 0;
        v21 = v19;
        v22 = v17;
        do
        {
          v23 = v20;
          v24 = 0;
          v25 = v20;
          if ((v25 & 0x80000000) == 0 && v85 > v25 && (v21 & 0x80000000) == 0 && SHIDWORD(v85) > v21)
          {
            v17.i32[0] = *(v86 + v87 * v21 + 4 * v25);
            v24 = vmovl_u8(*v17.f32).u64[0];
          }

          v26 = vand_s8(*&vmovl_u16(v24), 0xFF000000FFLL);
          v27.i64[0] = v26.u32[0];
          v27.i64[1] = v26.u32[1];
          v17 = vaddq_f64(vdivq_f64(vcvtq_f64_u64(v27), v18), vcvtq_f64_f32(*v22.f32));
          *v17.f32 = vcvt_f32_f64(v17);
          v28 = v24.u8[4] / 255.0 + v22.f32[2];
          v17.f32[2] = v28;
          ++v15;
          v20 = (v23 + 7.5);
          v22 = v17;
        }

        while (Width > v20);
      }

      v16 = (v19 + 7.5);
    }

    while (Height > v16);
    *v18.f64 = v15;
  }

  v29 = vdivq_f32(v17, vdupq_lane_s32(*&v18.f64[0], 0)).u64[0];
  v30 = v17.f32[2];
  if (*&v29 <= 0.04045)
  {
    v31 = *&v29 / 12.92;
  }

  else
  {
    v77 = LODWORD(v18.f64[0]);
    v76 = HIDWORD(v29);
    v31 = powf((*&v29 + 0.055) / 1.055, 2.4);
    HIDWORD(v29) = v76;
    LODWORD(v18.f64[0]) = v77;
  }

  v80 = v31;
  v32 = v30 / *v18.f64;
  if (*(&v29 + 1) <= 0.04045)
  {
    v33 = *(&v29 + 1) / 12.92;
  }

  else
  {
    v33 = powf((*(&v29 + 1) + 0.055) / 1.055, 2.4);
  }

  if (v32 <= 0.04045)
  {
    v34 = v32 / 12.92;
  }

  else
  {
    v78 = v33;
    v34 = powf((v32 + 0.055) / 1.055, 2.4);
    v33 = v78;
  }

  v35 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_2623A7C10, v80), xmmword_2623A7C20, v33), xmmword_2623A7C30, v34);
  v36 = vmulq_f32(v35, xmmword_2623A7C40);
  v81 = v36;
  if (v36.f32[0] <= 0.008856)
  {
    v38 = (v36.f32[0] * 7.787) + 0.13793;
  }

  else
  {
    v37 = pow(v36.f32[0], 0.333333333);
    v36 = v81;
    v38 = v37;
  }

  if (v36.f32[1] <= 0.008856)
  {
    v40 = (v36.f32[1] * 7.787) + 0.13793;
  }

  else
  {
    v39 = pow(v36.f32[1], 0.333333333);
    v36 = v81;
    v40 = v39;
  }

  if (v36.f32[2] <= 0.008856)
  {
    v41 = (v36.f32[2] * 7.787) + 0.13793;
  }

  else
  {
    v41 = pow(v36.f32[2], 0.333333333);
  }

  v35.f32[0] = (v40 * 116.0) + -16.0;
  v36.i32[0] = 1076048691;
  v42.i32[0] = vmul_f32(*v35.f32, *v36.f32).u32[0];
  v35.f32[1] = (v38 - v40) * 500.0;
  v42.i32[1] = vadd_f32(*&v35, 0x4300000043000000).i32[1];
  *v43.i8 = vcvt_s32_f32(vrnda_f32(v42));
  v43.i64[1] = llroundf(((v40 - v41) * 200.0) + 128.0);
  v44 = vmaxq_s32(v43, 0);
  v44.i32[3] = 0;
  v45 = vminq_s32(v44, xmmword_2623A7C50).u8[0];
  v46 = *(a1 + 96);
  if (v46)
  {
    v47 = *(a1 + 64);
    v48 = *(a1 + 88);
    v49 = (v47 + 8 * (v48 >> 10));
    v50 = *v49;
    v51 = &(*v49)[v48 & 0x3FF];
    v52 = *(v47 + (((v48 + v46) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v48 + v46) & 0x3FF);
    if (v51 != v52)
    {
      v53 = &(*v49)[v48 & 0x3FF];
      while (1)
      {
        if (++v53 - v50 == 4096)
        {
          v54 = v49[1];
          ++v49;
          v50 = v54;
          v53 = v54;
        }

        if (v53 == v52)
        {
          break;
        }

        if (*v51 < *v53)
        {
          v51 = v53;
        }
      }
    }

    v55 = *v51;
  }

  else
  {
    v55 = 0.5;
  }

  v79 = v55;
  v82 = (v45 / 255.0) / 1.5;
  *(a1 + 104) = v82;
  *(a1 + 108) = v55;
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);

  pixelBuffer = 0x100000002;
  v56 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
  v57 = v56;
  v85 = v56;
  if (v56)
  {
    v56->f64[0] = 0.0;
    v56->f64[1] = 0.0;
  }

  *v56 = vcvtq_f64_f32(__PAIR64__(LODWORD(v79), LODWORD(v82)));
  v58 = sub_26230AEE8((a1 + 112), &pixelBuffer);
  v83 = v58;
  sub_26230B7F0(a1 + 8, &v83);
  v59 = *(a1 + 48);
  if (v59 >= 2)
  {
    ++*(a1 + 40);
    *(a1 + 48) = v59 - 1;
    sub_26230B878(a1 + 8);
  }

  v60 = *(a1 + 16);
  if (*(a1 + 24) == v60)
  {
    v61 = *(a1 + 48);
    goto LABEL_55;
  }

  v62 = *(a1 + 40);
  v61 = *(a1 + 48);
  v63 = (v60 + 8 * (v62 >> 10));
  v64 = *v63;
  v65 = &(*v63)[v62 & 0x3FF];
  v66 = *(v60 + (((v61 + v62) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v61 + v62) & 0x3FF);
  if (v65 == v66)
  {
LABEL_55:
    v67 = 0.0;
    goto LABEL_56;
  }

  v67 = 0.0;
  do
  {
    v68 = *v65++;
    v69 = v68;
    if (v65 - v64 == 4096)
    {
      v70 = v63[1];
      ++v63;
      v64 = v70;
      v65 = v70;
    }

    v67 = v67 + v69;
  }

  while (v65 != v66);
LABEL_56:
  v71 = v67 / v61;
  if (v71 > *(a1 + 4) || v82 < 0.12)
  {
    v72 = [RSTextCoachingSignal alloc];
    v73 = 3;
  }

  else
  {
    v72 = [RSTextCoachingSignal alloc];
    v73 = 0;
    v71 = 1.0 - v71;
  }

  if (v72)
  {
    v74 = sub_2622E743C(v72, v73, v71);
  }

  else
  {
    v74 = 0;
  }

  free(v57);

  return v74;
}

double sub_26230C4DC(void *a1)
{
  v2 = a1[8];
  v3 = a1[9];
  a1[12] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[9];
      v2 = (a1[8] + 8);
      a1[8] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 1024;
  }

  a1[11] = v6;
LABEL_8:
  v7 = a1[2];
  v8 = a1[3];
  a1[6] = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = a1[3];
      v7 = (a1[2] + 8);
      a1[2] = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 512;
    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v11 = 1024;
LABEL_14:
    a1[5] = v11;
  }

  result = 0.0000305175853;
  a1[13] = 0x3F0000003F000000;
  return result;
}

float sub_26230C5BC(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(&xmmword_27FF0C2D0 + 1);
  v2 = xmmword_27FF0C2D0;
  v3 = *(&xmmword_27FF0C2D0 + 1) - xmmword_27FF0C2D0;
  if (*(&xmmword_27FF0C2D0 + 1) == xmmword_27FF0C2D0)
  {
    v8 = 0.0;
  }

  else
  {
    sub_26230C854(v16, a1);
    v5 = (v3 >> 2) >> 1;
    v6 = (v2 + 4 * v5);
    if (v6 != v1)
    {
      sub_26230C8EC(v2, v6, v1, v16);
    }

    sub_26230C710(v16);
    v7 = xmmword_27FF0C2D0;
    v8 = *(xmmword_27FF0C2D0 + 4 * v5);
    if ((v3 & 4) != 0)
    {
      v12 = *(xmmword_27FF0C2D0 + 4 * v5);
    }

    else
    {
      v9 = *(&xmmword_27FF0C2D0 + 1);
      sub_26230C854(v15, a1);
      v10 = (4 * v5 + v7 - 4);
      if (v10 != v9)
      {
        sub_26230C8EC(v7, v10, v9, v15);
      }

      sub_26230C710(v15);
      v11 = *(xmmword_27FF0C2D0 + 4 * v5 - 4);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_26230C6E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26230C710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26230C710(uint64_t a1)
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

uint64_t sub_26230C7B8(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2874EE8A8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_26230C854(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_26230C8EC(uint64_t result, float *a2, float *a3, uint64_t a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  while (1)
  {
    v8 = v5 - v7;
    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 2)
    {
      result = sub_26230CD70(*(a4 + 24), *(v5 - 1), *v7);
      if (!result)
      {
        return result;
      }

      v38 = *v7;
      *v7 = *(v5 - 1);
      goto LABEL_84;
    }

    if (v8 <= 7)
    {
      while (v7 != v5 - 1)
      {
        v39 = v7++;
        if (v39 != v5 && v7 != v5)
        {
          v40 = v7;
          v41 = v39;
          v42 = v7;
          do
          {
            v43 = *v42++;
            result = sub_26230CD70(*(a4 + 24), v43, *v41);
            if (result)
            {
              v41 = v40;
            }

            v40 = v42;
          }

          while (v42 != v5);
          if (v41 != v39)
          {
            v44 = *v39;
            *v39 = *v41;
            *v41 = v44;
          }
        }
      }

      return result;
    }

    v9 = &v7[(v5 - v7) >> 3];
    v10 = sub_26230CD70(*(a4 + 24), *v9, *v7);
    v11 = v5 - 1;
    v12 = sub_26230CD70(*(a4 + 24), *(v5 - 1), *v9);
    if (v10)
    {
      v13 = *v7;
      if (v12)
      {
        *v7 = *v11;
        *v11 = v13;
      }

      else
      {
        *v7 = *v9;
        *v9 = v13;
        if (sub_26230CD70(*(a4 + 24), *v11, v13))
        {
          v16 = *v9;
          *v9 = *v11;
          *v11 = v16;
        }
      }

LABEL_15:
      v17 = 1;
      goto LABEL_17;
    }

    if (v12)
    {
      v14 = *v9;
      *v9 = *v11;
      *v11 = v14;
      if (sub_26230CD70(*(a4 + 24), *v9, *v7))
      {
        v15 = *v7;
        *v7 = *v9;
        *v9 = v15;
      }

      goto LABEL_15;
    }

    v17 = 0;
LABEL_17:
    result = sub_26230CD70(*(a4 + 24), *v7, *v9);
    if (result)
    {
LABEL_25:
      v22 = v7 + 1;
      if (v7 + 1 >= v11)
      {
        v24 = v7 + 1;
      }

      else
      {
        v23 = v7 + 1;
        while (1)
        {
          do
          {
            v24 = v23;
            v25 = *v23++;
          }

          while ((sub_26230CD70(*(a4 + 24), v25, *v9) & 1) != 0);
          do
          {
            v26 = *--v11;
            result = sub_26230CD70(*(a4 + 24), v26, *v9);
          }

          while (!result);
          if (v24 >= v11)
          {
            break;
          }

          v27 = *v24;
          *v24 = *v11;
          *v11 = v27;
          ++v17;
          if (v9 == v24)
          {
            v9 = v11;
          }
        }
      }

      if (v24 != v9)
      {
        result = sub_26230CD70(*(a4 + 24), *v9, *v24);
        if (result)
        {
          v28 = *v24;
          *v24 = *v9;
          *v9 = v28;
          ++v17;
        }
      }

      if (v24 == a2)
      {
        return result;
      }

      if (!v17)
      {
        if (v24 <= a2)
        {
          v31 = v24 + 1;
          while (v31 != v5)
          {
            result = sub_26230CD70(*(a4 + 24), *v31, *(v31 - 1));
            ++v31;
            if (result)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          while (v22 != v24)
          {
            result = sub_26230CD70(*(a4 + 24), *v22, *(v22 - 1));
            ++v22;
            if (result)
            {
              goto LABEL_39;
            }
          }
        }

        return result;
      }

LABEL_39:
      if (v24 <= a2)
      {
        v29 = v24 + 1;
      }

      else
      {
        v5 = v24;
        v29 = v7;
      }
    }

    else
    {
      v18 = v5 - 2;
      while (v18 != v7)
      {
        v19 = v18;
        v20 = *v18--;
        result = sub_26230CD70(*(a4 + 24), v20, *v9);
        if (result)
        {
          v21 = *v7;
          *v7 = *v19;
          *v19 = v21;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          v11 = v19;
          goto LABEL_25;
        }
      }

      v30 = v7 + 1;
      result = sub_26230CD70(*(a4 + 24), *v7, *v11);
      if ((result & 1) == 0)
      {
        while (v30 != v11)
        {
          result = sub_26230CD70(*(a4 + 24), *v7, *v30);
          if (result)
          {
            v32 = *v30;
            *v30++ = *v11;
            *v11 = v32;
            goto LABEL_55;
          }

          ++v30;
        }

        return result;
      }

LABEL_55:
      if (v30 == v11)
      {
        return result;
      }

      while (1)
      {
        do
        {
          v29 = v30;
          v33 = *v30++;
        }

        while (!sub_26230CD70(*(a4 + 24), *v7, v33));
        do
        {
          v34 = *--v11;
          result = sub_26230CD70(*(a4 + 24), *v7, v34);
        }

        while ((result & 1) != 0);
        if (v29 >= v11)
        {
          break;
        }

        v35 = *v29;
        *v29 = *v11;
        *v11 = v35;
      }

      if (v29 > a2)
      {
        return result;
      }
    }

    v7 = v29;
    if (v5 == a2)
    {
      return result;
    }
  }

  v36 = sub_26230CD70(*(a4 + 24), v7[1], *v7);
  result = sub_26230CD70(*(a4 + 24), *(v5 - 1), v7[1]);
  if ((v36 & 1) == 0)
  {
    if (result)
    {
      v45 = *(v7 + 1);
      v7[1] = *(v5 - 1);
      *(v5 - 1) = v45;
      result = sub_26230CD70(*(a4 + 24), v7[1], *v7);
      if (result)
      {
        *v7 = vrev64_s32(*v7);
      }
    }

    return result;
  }

  v37 = *v7;
  if (result)
  {
    *v7 = *(v5 - 1);
    *(v5 - 1) = v37;
    return result;
  }

  *v7 = v7[1];
  v7[1] = v37;
  result = sub_26230CD70(*(a4 + 24), *(v5 - 1), v37);
  if (result)
  {
    v38 = v7[1];
    v7[1] = *(v5 - 1);
LABEL_84:
    *(v5 - 1) = v38;
  }

  return result;
}

uint64_t sub_26230CD70(uint64_t a1, float a2, float a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    sub_2621C7250();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t sub_26230CE64(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

float *sub_26230CE98(uint64_t a1, void *a2)
{
  v73[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_depthBuffer(v3, v4, v5))
  {
    v8 = objc_msgSend_depthBuffer(v3, v6, v7);
    Width = CVPixelBufferGetWidth(v8);
    Height = CVPixelBufferGetHeight(v8);
    v11 = Height;
    if (Height * Width)
    {
      CVPixelBufferLockBaseAddress(v8, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(v8);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
      v14 = (Width + 1) >> 1;
      if ((atomic_load_explicit(&qword_27FF0C2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C2E8))
      {
        __cxa_atexit(sub_26230CE64, &xmmword_27FF0C2D0, &dword_2621C3000);
        __cxa_guard_release(&qword_27FF0C2E8);
      }

      v69 = 0;
      sub_26220A5F0(&xmmword_27FF0C2D0, ((v11 + 1) >> 1) * v14);
      v15 = xmmword_27FF0C2D0;
      if (*(&xmmword_27FF0C2D0 + 1) == xmmword_27FF0C2D0)
      {
        v33 = 0.0;
      }

      else
      {
        if (v11)
        {
          for (i = 0; i < v11; i += 2)
          {
            MEMORY[0x266728020](BaseAddress, 2, &v69, v15, 1, v14);
            v15 += 4 * ((Width + 1) >> 1);
            BaseAddress += 4 * ((BytesPerRow >> 1) & 0x3FFFFFFF);
          }
        }

        v73[0] = &unk_2874EEF98;
        v73[3] = v73;
        v17 = sub_26230C5BC(v73);
        v19 = v18;
        sub_26230C710(v73);
        v70 = &unk_2874EE8A8;
        v20 = (v17 + v19) * 0.5;
        v71 = v20;
        v72 = &v70;
        v21 = sub_26230C5BC(&v70);
        v23 = v22;
        sub_26230C710(&v70);
        v24 = xmmword_27FF0C2D0;
        v25 = 0.0;
        v26 = 0.0;
        if (xmmword_27FF0C2D0 != *(&xmmword_27FF0C2D0 + 1))
        {
          v27 = vabds_f32(v21, v20);
          v28 = vabds_f32(v23, v20);
          v29 = ((v27 + v28) * 0.5) + ((v27 + v28) * 0.5);
          v26 = 0.0;
          v25 = 0.0;
          do
          {
            v30 = *v24++;
            v31 = v26 + v30;
            if (vabds_f32(v30, v20) <= v29)
            {
              v25 = v25 + 1.0;
              v26 = v31;
            }
          }

          while (v24 != *(&xmmword_27FF0C2D0 + 1));
        }

        v32 = v26 / v25;
        if (v25 == 0.0)
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v32;
        }
      }

      v68 = v33;
      CVPixelBufferUnlockBaseAddress(v8, 1uLL);
      *(a1 + 104) = v33;
      sub_26230B7F0(a1 + 56, &v68);
    }
  }

  v34 = *(a1 + 96);
  if (v34 >= 2)
  {
    ++*(a1 + 88);
    *(a1 + 96) = v34 - 1;
    sub_26230B878(a1 + 56);
    v34 = *(a1 + 96);
  }

  if (!v34)
  {

LABEL_40:
    v61 = [RSTextCoachingSignal alloc];
    if (v61)
    {
      v62 = sub_2622E743C(v61, 0, 1.0);
    }

    else
    {
      v62 = 0;
    }

    goto LABEL_52;
  }

  v35 = *(a1 + 64);
  v36 = 0.0;
  if (*(a1 + 72) != v35)
  {
    v37 = *(a1 + 88);
    v38 = (v35 + 8 * (v37 >> 10));
    v39 = *v38;
    v40 = &(*v38)[v37 & 0x3FF];
    v41 = *(v35 + (((v37 + v34) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v37 + v34) & 0x3FF);
    while (v40 != v41)
    {
      v42 = *v40++;
      v43 = v42;
      if (v40 - v39 == 4096)
      {
        v44 = v38[1];
        ++v38;
        v39 = v44;
        v40 = v44;
      }

      v36 = v36 + v43;
    }
  }

  v45 = v36 / v34;
  if (v45 < 0.0)
  {
    goto LABEL_40;
  }

  v73[0] = 0x100000001;
  v46 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v47 = v46;
  v73[1] = v46;
  if (v46)
  {
    *v46 = 0.0;
  }

  *v46 = v45;
  v48 = sub_26230AEE8((a1 + 112), v73);
  *&v70 = v48;
  sub_26230B7F0(a1 + 8, &v70);
  v49 = *(a1 + 48);
  if (v49 >= 4)
  {
    ++*(a1 + 40);
    *(a1 + 48) = v49 - 1;
    sub_26230B878(a1 + 8);
  }

  v50 = *(a1 + 16);
  if (*(a1 + 24) == v50)
  {
    v51 = *(a1 + 48);
  }

  else
  {
    v52 = *(a1 + 40);
    v51 = *(a1 + 48);
    v53 = (v50 + 8 * (v52 >> 10));
    v54 = *v53;
    v55 = &(*v53)[v52 & 0x3FF];
    v56 = *(v50 + (((v51 + v52) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v51 + v52) & 0x3FF);
    if (v55 != v56)
    {
      v57 = 0.0;
      do
      {
        v58 = *v55++;
        v59 = v58;
        if (v55 - v54 == 4096)
        {
          v60 = v53[1];
          ++v53;
          v54 = v60;
          v55 = v60;
        }

        v57 = v57 + v59;
      }

      while (v55 != v56);
      goto LABEL_44;
    }
  }

  v57 = 0.0;
LABEL_44:
  if (v45 <= 3.5)
  {
    v64 = v57 / v51;
    if (v64 <= *a1)
    {
      v63 = [RSTextCoachingSignal alloc];
      v65 = 0;
      v64 = 1.0 - v64;
    }

    else
    {
      v63 = [RSTextCoachingSignal alloc];
      v65 = 2;
    }
  }

  else
  {
    v63 = [RSTextCoachingSignal alloc];
    v64 = fminf((((v45 + -3.5) * 0.4) / 2.5) + 0.6, 1.0);
    v65 = 4;
  }

  if (v63)
  {
    v62 = sub_2622E743C(v63, v65, v64);
  }

  else
  {
    v62 = 0;
  }

  free(v47);
LABEL_52:

  v66 = *MEMORY[0x277D85DE8];

  return v62;
}

void sub_26230D3F8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_26230C710(va);

  _Unwind_Resume(a1);
}

float *sub_26230D46C(uint64_t a1, void *a2, char a3, float a4, float a5)
{
  v9 = a2;
  v12 = v9;
  if (a3)
  {
    goto LABEL_18;
  }

  v13 = objc_msgSend_rawFeaturePoints(v9, v10, v11);
  v16 = objc_msgSend_count(v13, v14, v15);

  if (v16 < 0x32)
  {
    goto LABEL_18;
  }

  v35 = 1.0 / (expf(-(*(a1 + 156) + (*(a1 + 152) * a4))) + 1.0);
  v34 = 1.0 / (expf(-(*(a1 + 164) + (*(a1 + 160) * a5))) + 1.0);
  if (v35 >= v34)
  {
    v17 = &v35;
  }

  else
  {
    v17 = &v34;
  }

  sub_26230B7F0(a1 + 88, v17);
  v18 = *(a1 + 128);
  if (v18 >= 6)
  {
    ++*(a1 + 120);
    *(a1 + 128) = v18 - 1;
    sub_26230B878(a1 + 88);
  }

  v19 = *(a1 + 96);
  if (*(a1 + 104) == v19)
  {
    v20 = *(a1 + 128);
    goto LABEL_16;
  }

  v21 = *(a1 + 120);
  v20 = *(a1 + 128);
  v22 = (v19 + 8 * (v21 >> 10));
  v23 = *v22;
  v24 = &(*v22)[v21 & 0x3FF];
  v25 = *(v19 + (((v20 + v21) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v20 + v21) & 0x3FF);
  if (v24 == v25)
  {
LABEL_16:
    v26 = 0.0;
    goto LABEL_17;
  }

  v26 = 0.0;
  do
  {
    v27 = *v24++;
    v28 = v27;
    if (v24 - v23 == 4096)
    {
      v29 = v22[1];
      ++v22;
      v23 = v29;
      v24 = v29;
    }

    v26 = v26 + v28;
  }

  while (v24 != v25);
LABEL_17:
  v30 = v26 / v20;
  if (v30 <= 0.5 || (v33 = [RSTextCoachingSignal alloc]) == 0)
  {
LABEL_18:
    v31 = 0;
    goto LABEL_19;
  }

  v31 = sub_2622E743C(v33, 1, v30);
LABEL_19:

  return v31;
}

_DWORD *sub_26230D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = 0;
  v13 = a2;
  v11 = *a3;
  *sub_26230D730(a1, &v13, &v12 + 1, &v12) = v11;
  v7 = *(a3 + 4);
  v12 = 1;
  *sub_26230D730(a1, &v13, &v12 + 1, &v12) = v7;
  v8 = *a4;
  v12 = 0x100000000;
  *sub_26230D730(a1, &v13, &v12 + 1, &v12) = v8;
  v9 = *(a4 + 1);
  v12 = 0x100000001;
  result = sub_26230D730(a1, &v13, &v12 + 1, &v12);
  *result = v9;
  return result;
}

uint64_t sub_26230D730(uint64_t a1, uint64_t *a2, int *a3, int *a4)
{
  v38[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v7 = a1;
    v8 = MEMORY[0x277D82670];
    v9 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v10 = sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = MEMORY[0x266727260](v11, 1125);
    v13 = sub_2621D552C(v12, " ", 1);
    v14 = sub_2621D552C(v13, "at", 2);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(v35, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(v35);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v16 = std::locale::use_facet(v35, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(v35);
    std::ostream::put();
    std::ostream::flush();
    a1 = v7;
  }

  v17 = 0;
  v18 = MEMORY[0x277D82670];
  v19 = *a2;
  v20 = *a3;
  v32 = a1;
  v33 = 0;
  v21 = a1 + 8;
  v38[0] = v19;
  v38[1] = v20;
  v38[2] = *a4;
  v36 = 0u;
  v37 = 0u;
  v22 = 1;
  *&v35[0].__locale_ = 0u;
  v23 = MEMORY[0x277D82680];
  do
  {
    v24 = v38[v17];
    if (v24 >= *(v21 + v17 * 8))
    {
      sub_2621D552C(v18, "runtime_err in ", 15);
      sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v18, " ", 1);
      v25 = MEMORY[0x266727260](v18, 1133);
      sub_2621D552C(v25, " ", 1);
      sub_2621D552C(v25, "at", 2);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v34, v23);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v33, "=", &v38[v17], "should smaller then", (v21 + v17 * 8));
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v27 = std::locale::use_facet(&v34, v23);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      std::ostream::flush();
    }

    v33 = v22;
    v35[v17++].__locale_ = v24;
    ++v22;
  }

  while (v17 != 3);
  v28 = 0;
  v29 = 0;
  do
  {
    v29 += *(v32 + 56 + v28 * 8) * v35[v28].__locale_;
    ++v28;
  }

  while (v28 != 3);
  v30 = *MEMORY[0x277D85DE8];
  return *(v32 + 144) + 4 * v29;
}

double sub_26230DB94(float32x2_t *a1, uint64_t *a2, uint64_t a3)
{
  v74[0] = 0;
  v5 = *a2;
  if (a2[1] == *a2)
  {
LABEL_12:
    v3 = *a1;
    v47 = a1[1];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v49 = vdupq_n_s64(0x3F1A36E2EB1C432DuLL);
    while (1)
    {
      sub_26222AE80(v72, v5 + v8);
      LODWORD(v62[0]) = 0;
      v71 = 0;
      v59 = *sub_26230DFCC(v72, v62, &v71 + 1, &v71);
      v70 = 0;
      v69 = 1;
      v10 = sub_26230DFCC(v72, &v70 + 1, &v70, &v69);
      v11.i32[0] = v59;
      v11.i32[1] = *v10;
      v60 = v11;
      v67 = 1;
      v68 = 0;
      v66 = 0;
      v57 = *sub_26230DFCC(v72, &v68, &v67, &v66);
      v64 = 1;
      v65 = 0;
      v63 = 1;
      v12 = sub_26230DFCC(v72, &v65, &v64, &v63);
      v13.i32[0] = v57;
      v13.i32[1] = *v12;
      v58 = v13;
      LODWORD(v62[0]) = 1;
      v71 = 0;
      v55 = *sub_26230DFCC(v72, v62, &v71 + 1, &v71);
      v70 = 0x100000000;
      v69 = 1;
      v14 = sub_26230DFCC(v72, &v70 + 1, &v70, &v69);
      v15.i32[0] = v55;
      v15.i32[1] = *v14;
      v56 = v15;
      v67 = 1;
      v68 = 1;
      v66 = 0;
      v53 = *sub_26230DFCC(v72, &v68, &v67, &v66);
      v64 = 1;
      v65 = 1;
      v63 = 1;
      v16 = sub_26230DFCC(v72, &v65, &v64, &v63);
      v17.i32[0] = v53;
      v17.i32[1] = *v16;
      v54 = v17;
      v71 = 0x200000000;
      HIDWORD(v70) = 0;
      v51 = *sub_26230DFCC(v72, &v71 + 1, &v71, &v70 + 1);
      v69 = 0;
      LODWORD(v70) = 2;
      v68 = 1;
      v18 = sub_26230DFCC(v72, &v70, &v69, &v68);
      LODWORD(v19) = v51;
      HIDWORD(v19) = *v18;
      v52 = v19;
      v66 = 1;
      v67 = 2;
      v65 = 0;
      v50 = *sub_26230DFCC(v72, &v67, &v66, &v65);
      v63 = 1;
      v64 = 2;
      v61 = 1;
      v20 = sub_26230DFCC(v72, &v64, &v63, &v61);
      LODWORD(v21) = v50;
      HIDWORD(v21) = *v20;
      v62[0] = v52;
      v62[1] = v21;
      if (*sub_262269944(a3, v74))
      {
        goto LABEL_4;
      }

      v23 = *a1;
      v24 = a1[1];
      v25 = vsub_f32(*a1, v60);
      v26 = vsub_f32(v24, v58);
      v27 = vsub_f32(*a1, v58);
      v28 = vsub_f32(v24, v60);
      v29 = vzip2_s32(v27, v25);
      v30 = vzip1_s32(v27, v25);
      v31 = vmla_f32(vmul_f32(v29, v29), v30, v30);
      v32 = vzip1_s32(v28, v26);
      v33 = vmla_f32(v31, v32, v32);
      v34 = vzip2_s32(v28, v26);
      v35 = vmovn_s64(vcgtq_f64(v49, vcvtq_f64_f32(vsqrt_f32(vmla_f32(v33, v34, v34)))));
      if ((v35.i32[1] | v35.i32[0]))
      {
        goto LABEL_7;
      }

      v36 = vsub_f32(v23, v56);
      v37 = vsub_f32(v24, v54);
      v38 = vsub_f32(v23, v54);
      v39 = vsub_f32(v24, v56);
      v40 = vzip2_s32(v38, v36);
      v41 = vzip1_s32(v38, v36);
      v42 = vmla_f32(vmul_f32(v40, v40), v41, v41);
      v43 = vzip1_s32(v39, v37);
      v44 = vmla_f32(v42, v43, v43);
      v45 = vzip2_s32(v39, v37);
      v46 = vmovn_s64(vcgtq_f64(v49, vcvtq_f64_f32(vsqrt_f32(vmla_f32(v44, v45, v45)))));
      if ((v46.i32[1] | v46.i32[0]))
      {
LABEL_7:
        *sub_262269944(a3, v74) = 1;
        v3 = COERCE_FLOAT32X2_T(sub_26230DB94(v62, a2, a3));
        v22 = 0;
      }

      else
      {
LABEL_4:
        v22 = 1;
      }

      v72[0] = &unk_2874EF0D8;
      if (v73)
      {
        sub_2621D1B78(v73);
      }

      if (!v22)
      {
        break;
      }

      v74[0] = ++v9;
      v5 = *a2;
      v8 += 152;
      if (v9 >= 0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 3))
      {
        goto LABEL_12;
      }
    }
  }

  return *&v3;
}

void sub_26230DF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 + 128);
  if (v34)
  {
    sub_2621D1B78(v34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26230DFCC(uint64_t a1, int *a2, int *a3, int *a4)
{
  v38[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v7 = a1;
    v8 = MEMORY[0x277D82670];
    v9 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v10 = sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = MEMORY[0x266727260](v11, 1159);
    v13 = sub_2621D552C(v12, " ", 1);
    v14 = sub_2621D552C(v13, "at", 2);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(v35, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(v35);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v16 = std::locale::use_facet(v35, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(v35);
    std::ostream::put();
    std::ostream::flush();
    a1 = v7;
  }

  v17 = 0;
  v18 = MEMORY[0x277D82670];
  v19 = *a2;
  v20 = *a3;
  v32 = a1;
  v33 = 0;
  v21 = a1 + 8;
  v38[0] = v19;
  v38[1] = v20;
  v38[2] = *a4;
  v36 = 0u;
  v37 = 0u;
  v22 = 1;
  *&v35[0].__locale_ = 0u;
  v23 = MEMORY[0x277D82680];
  do
  {
    v24 = v38[v17];
    if (v24 >= *(v21 + v17 * 8))
    {
      sub_2621D552C(v18, "runtime_err in ", 15);
      sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v18, " ", 1);
      v25 = MEMORY[0x266727260](v18, 1167);
      sub_2621D552C(v25, " ", 1);
      sub_2621D552C(v25, "at", 2);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v34, v23);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v33, "=", &v38[v17], "should smaller then", (v21 + v17 * 8));
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v27 = std::locale::use_facet(&v34, v23);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      std::ostream::flush();
    }

    v33 = v22;
    v35[v17++].__locale_ = v24;
    ++v22;
  }

  while (v17 != 3);
  v28 = 0;
  v29 = 0;
  do
  {
    v29 += *(v32 + 56 + v28 * 8) * v35[v28].__locale_;
    ++v28;
  }

  while (v28 != 3);
  v30 = *MEMORY[0x277D85DE8];
  return *(v32 + 144) + 4 * v29;
}

void sub_26230E430(void *a1, void *a2, float32x2_t **a3, uint64_t *a4)
{
  v4 = a1[1];
  v5 = 0x2E8BA2E8BA2E8BA3;
  if (0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 4) == (a2[1] - *a2) >> 4 && v4 != *a1)
  {
    v9 = a2;
    v10 = a1;
    v11 = 0;
    v12 = &unk_2874EE910;
    v42 = vdupq_n_s64(0x3F1A36E2EB1C432DuLL);
    do
    {
      v57 = v12;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v65 = 0;
      v66 = 0;
      v67 = 257;
      v13 = a4[1] - *a4;
      if (v13)
      {
        v43 = 0x86BCA1AF286BCA1BLL * (v13 >> 3);
        sub_26222AF58(v44, &v43);
        v69[0] = 0;
        sub_26220571C(&v45, v44);
        sub_2621D1C78(&v45, v69);
        v61 = v49;
        v62 = v50;
        v63 = v51;
        v64 = v52;
        v58 = v46;
        v59 = v47;
        v60 = v48;
        v15 = v53;
        v14 = v54;
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v66;
        v65 = v15;
        v66 = v14;
        if (v16)
        {
          sub_2621D1B78(v16);
        }

        v68 = v56;
        v67 = v55;
        v45 = &unk_2874EE910;
        if (v54)
        {
          sub_2621D1B78(v54);
        }
      }

      v19 = sub_26230DB94((*v9 + 16 * v11), a4, &v57);
      v21 = *a3;
      v22 = a3[1];
      if (*a3 != v22)
      {
        while (1)
        {
          v23 = v21[2];
          v24 = v21[3];
          v25 = vsub_f32(v23, *&v19);
          v26 = vsub_f32(v24, v20);
          v27 = vsub_f32(v23, v20);
          v28 = vsub_f32(v24, *&v19);
          v29 = vzip2_s32(v27, v25);
          v30 = vzip1_s32(v27, v25);
          v31 = vmla_f32(vmul_f32(v29, v29), v30, v30);
          v32 = vzip1_s32(v28, v26);
          v33 = vmla_f32(v31, v32, v32);
          v34 = vzip2_s32(v28, v26);
          v35 = vmovn_s64(vcgtq_f64(v42, vcvtq_f64_f32(vsqrt_f32(vmla_f32(v33, v34, v34)))));
          if ((v35.i32[1] | v35.i32[0]))
          {
            break;
          }

          v21 += 22;
          if (v21 == v22)
          {
            goto LABEL_18;
          }
        }

        v36 = v12;
        v37 = v9;
        v38 = v5;
        v39 = v10;
        v40 = *v10;
        v41 = objc_msgSend_identifier(*&v21[1], v17, v18);
        sub_26225A86C(v40 + 176 * v11, v41);

        v5 = v38;
        v9 = v37;
        v12 = v36;
        v10 = v39;
      }

LABEL_18:
      v57 = v12;
      if (v66)
      {
        sub_2621D1B78(v66);
      }

      ++v11;
    }

    while (v11 < ((v10[1] - *v10) >> 4) * v5);
  }
}

void sub_26230E70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54)
{
  if (a54)
  {
    sub_2621D1B78(a54);
  }

  _Unwind_Resume(a1);
}

void sub_26230E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    for (i = a1; i != a2; i += 176)
    {
      if ((*(i + 175) & 0x8000000000000000) != 0)
      {
        if (*(i + 160))
        {
LABEL_7:
          if (sub_26225A7AC(*(a3 + 8), *(a3 + 16), (i + 152)))
          {
            v8 = sub_262259864(a3, (i + 152));
            *&v9 = sub_2621DCC54(*(i + 16), *(i + 24), v8[2], v8[3]);
            v10 = v9;
            DWORD2(v10) = *(i + 64);
            v12 = v11;
            DWORD2(v12) = *(i + 68);
            *(i + 16) = v9;
            *(i + 24) = v11;
            DWORD2(v9) = DWORD2(v12);
            DWORD2(v11) = DWORD2(v10);
            *(i + 32) = v10;
            *(i + 48) = v12;
            v13 = *(i + 8);
            v14[0] = v9;
            v14[1] = v12;
            v14[2] = v11;
            v14[3] = v10;
            if (v13)
            {
              objc_copyStruct((v13 + 272), v14, 64, 1, 0);
            }
          }
        }
      }

      else if (*(i + 175))
      {
        goto LABEL_7;
      }
    }
  }
}

void sub_26230E858(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 152;
      v7 = v4 - 152;
      v8 = v4 - 152;
      do
      {
        v9 = *v8;
        v8 -= 152;
        (*v9)(v7);
        v6 -= 152;
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

uint64_t *sub_26230E988(void *a1, unint64_t a2, const void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = RS2DPolygon;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    sub_2622DFB20(v5 + 1, a2);
    memcpy(v6[1], a3, 8 * a2);
  }

  return v6;
}

BOOL sub_26230EF8C(void *a1, void *a2)
{
  v3 = a1;
  v7 = objc_msgSend_count(v3, v4, v5);
  if (v7 == 2)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, 0);
    objc_msgSend_floatValue(v8, v9, v10);
    v18 = v11;
    v13 = objc_msgSend_objectAtIndexedSubscript_(v3, v12, 1);
    objc_msgSend_floatValue(v13, v14, v15);
    *a2 = __PAIR64__(v16, v18);
  }

  return v7 == 2;
}

void sub_26230F05C(void *a1, void *a2)
{
  v14 = a1;
  if (objc_msgSend_count(v14, v3, v4) == 4)
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(v14, v5, v6);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v10 = objc_msgSend_objectAtIndexedSubscript_(v14, v9, v6);
      v11 = sub_26230EF8C(v10, a2);

      v12 = v6++ == 3;
      v13 = !v12 && v11;
      ++a2;
    }

    while (v13);
  }
}

void sub_26230F330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_26230F388(double a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13 = HIDWORD(a1);
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v14[0] = v4;
  HIDWORD(v5) = v13;
  LODWORD(v5) = v13;
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v14[1] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v14, 2);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void sub_26230F450(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_26230F478(double *a1, const char *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v4 = sub_26230F388(*a1, a1, a2, a3);
  v18[0] = v4;
  v7 = sub_26230F388(a1[1], v4, v5, v6);
  v18[1] = v7;
  v10 = sub_26230F388(a1[2], v7, v8, v9);
  v18[2] = v10;
  v13 = sub_26230F388(a1[3], v10, v11, v12);
  v18[3] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v18, 4);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void sub_26230F6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26230F818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26230FE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_2623104AC(uint64_t a1)
{
  v3[22] = *MEMORY[0x277D85DE8];
  *a1 = 256;
  *(a1 + 8) = 1031127695;
  *(a1 + 16) = xmmword_2623A7C60;
  *(a1 + 32) = 0;
  sub_2621D0F64(&__p, "input_name");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_2622C70D0(a1 + 40, &__p, v3, 1uLL);
}

void sub_2623117BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  operator delete(v18);
  sub_2621C74C4(v19);
  sub_2621C74C4(a18);
  v21 = *a10;
  if (*a10)
  {
    *(a17 + 168) = v21;
    operator delete(v21);
  }

  v22 = *a11;
  if (*a11)
  {
    *(a17 + 144) = v22;
    operator delete(v22);
  }

  if (*(a17 + 135) < 0)
  {
    operator delete(*(a17 + 112));
  }

  STACK[0x2A0] = a12;
  sub_2621DED18(&STACK[0x2A0]);
  v23 = *a13;
  if (*a13)
  {
    *(a17 + 72) = v23;
    operator delete(v23);
  }

  STACK[0x2A0] = a14;
  sub_2621DED18(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

uint64_t sub_262311C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      sub_2621DED18(&v6);
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

void sub_262311CF0(char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    sub_2621DED18(&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_262311DB0(uint64_t a1)
{
  sub_262311C80(a1 + 264);
  sub_2621C74C4(a1 + 224);
  sub_2621C74C4(a1 + 184);
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v6 = (a1 + 88);
  sub_2621DED18(&v6);
  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 40);
  sub_2621DED18(&v6);
  return a1;
}

void sub_262312240(void ***a1)
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
        v4 -= 48;
        sub_262241314(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2623122C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_26231289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    if (*(v9 - 1) < 0)
    {
      operator delete(*(v9 - 3));
    }

    v9 -= 4;
    if (v9 == &a9)
    {
      MEMORY[0x266727420](v10, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_262312958(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

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

void sub_2623129C0(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_262312A1C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_262241314(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id sub_262312A6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v620 = *MEMORY[0x277D85DE8];
  v540 = a2;
  v539 = a3;
  v538 = a4;
  v555 = a1;
  if (!a1)
  {
    v549 = 0;
    goto LABEL_683;
  }

  v578 = 8775;
  v579 = 0;
  kdebug_trace();
  sub_262316F74(a1, v7, v8);
  if (!objc_msgSend_count(v540, v9, v10))
  {
    v549 = objc_msgSend_array(MEMORY[0x277CBEA60], v11, v12);
    goto LABEL_682;
  }

  kdebug_trace();
  v13 = v540;
  v537 = v539;
  v14 = *(v555 + 24);
  if (!v14)
  {
    v15 = sub_2622C5968([RSSemanticImage alloc], *(v555 + 440), *(v555 + 440), *(v555 + 456), 1, 1278226536);
    v16 = *(v555 + 24);
    *(v555 + 24) = v15;

    v14 = *(v555 + 24);
  }

  sub_2622C5BB4(v14);
  sub_2621CCAAC(*(v555 + 432), v13, v537);
  v19 = objc_msgSend_count(v13, v17, v18, v13);
  *__str = 0;
  sub_2622233BC(v611, v19);
  v20 = v611[0];
  if (v611[0] != v611[1])
  {
    v21 = 0;
    v22 = (v611[1] - v611[0] - 8) >> 3;
    v23 = vdupq_n_s64(v22);
    v24 = xmmword_2623A7620;
    v25 = vdupq_n_s64(2uLL);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v23, v24));
      if (v26.i8[0])
      {
        v20[v21] = v21;
      }

      if (v26.i8[4])
      {
        v20[v21 + 1] = v21 + 1;
      }

      v21 += 2;
      v24 = vaddq_s64(v24, v25);
    }

    while (((v22 + 2) & 0x3FFFFFFFFFFFFFFELL) != v21);
  }

  v27 = *(v555 + 24);
  if (v27 && *(v27 + 64) == 1)
  {
    v28 = *(v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  CVPixelBufferLockBaseAddress(v28, 0);
  v29 = sub_2621CD3A4(*(v555 + 432));
  v30 = *(v555 + 24);
  v31 = v13;
  k = v29;
  v33 = v30;
  if (k)
  {
    *v550 = *(k + 8);
    v553 = *(k + 6);
    v565 = *(k + 7);
    v567 = *(k + 5);
    v34 = *(k + 7);
    v542 = *(k + 8);
    v35 = *(k + 4);
    v36 = *(k + 6);
  }

  else
  {
    v542 = 0;
    v34 = 0;
    v35 = 0.0;
    v565 = 0u;
    v567 = 0u;
    *v550 = 0u;
    v553 = 0u;
    v36 = 0.0;
  }

  __p = 0uLL;
  v591 = 0uLL;
  LODWORD(v592) = 1065353216;
  v37 = vcvtd_n_f64_u64((v611[1] - v611[0]) >> 3, 2uLL);
  sub_2621C67D4(&__p, v37);
  memset(v580, 0, sizeof(v580));
  LODWORD(v581) = 1065353216;
  if (v542 >= 1)
  {
    sub_2621C67D4(v580, v37);
  }

  v40 = v611[0];
  v41 = v611[1];
  v541 = k;
  v556 = v33;
  if (v611[0] != v611[1])
  {
    v543 = v34 * v34;
    v42 = v35 + v36;
    v545 = v34;
    do
    {
      v43 = (objc_msgSend_points(v31, v38, v39) + 16 * *v40);
      v44 = *v43->f32;
      v45 = vmulq_f64(v567, vaddq_f64(v565, vcvtq_f64_f32(*v43)));
      v46 = llround(v45.f64[0]);
      if ((v46 & 0x80000000) == 0 && v34 > v46)
      {
        v47 = llround(v45.f64[1]);
        if ((v47 & 0x80000000) == 0 && v34 > v47)
        {
          v560 = *v43->f32;
          v48 = v47 + v34 * v46;
          LODWORD(src.receiver) = v48;
          *__str = &src;
          v49 = sub_2621C65A4(&__p, v48);
          v50 = v49;
          v51 = *v40;
          v53 = v49[4];
          v52 = v49[5];
          if (v53 >= v52)
          {
            v55 = v41;
            v56 = v49[3];
            v57 = v53 - v56;
            v58 = (v53 - v56) >> 2;
            v59 = v58 + 1;
            if ((v58 + 1) >> 62)
            {
              sub_2621CBEB0();
            }

            v60 = v52 - v56;
            if (v60 >> 1 > v59)
            {
              v59 = v60 >> 1;
            }

            if (v60 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v61 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v61 = v59;
            }

            if (v61)
            {
              sub_2621C7F54(v61);
            }

            v62 = (v53 - v56) >> 2;
            v63 = (4 * v58);
            v64 = (4 * v58 - 4 * v62);
            *v63 = v51;
            v54 = v63 + 1;
            memcpy(v64, v56, v57);
            v65 = v50[3];
            v50[3] = v64;
            v50[4] = v54;
            v50[5] = 0;
            if (v65)
            {
              operator delete(v65);
            }

            k = v541;
            v33 = v556;
            v41 = v55;
            v34 = v545;
          }

          else
          {
            *v53 = v51;
            v54 = v53 + 4;
            k = v541;
            v33 = v556;
          }

          v66.f64[1] = *(&v560 + 1);
          v66.f64[0] = *(&v560 + 2);
          v67 = llround(vmulq_f64(v553, vaddq_f64(*v550, v66)).f64[0]);
          v50[4] = v54;
          if (v542 > v67 && (v67 & 0x80000000) == 0)
          {
            v68 = v43[1].f32[0];
            if (v35 <= v68 && v68 <= v42)
            {
              LODWORD(v603[0]) = v48 + v543 * v67;
              *__str = v603;
              v70 = sub_2622B596C(v580, v603[0]);
              ++*(v70 + 5);
            }
          }
        }
      }

      ++v40;
    }

    while (v40 != v41);
  }

  v71 = v33;
  v546 = sub_2622C57A4(v33, 1uLL);
  v72 = v33;
  v73 = sub_2622C57A4(v33, 0);
  if (v33)
  {
    v76 = v33[5] * v33[3];
  }

  else
  {
    v76 = 0;
  }

  v77 = v591;
  if (v591)
  {
    v78 = 1;
    v561 = vdupq_n_s64(0x21uLL);
    v544 = v73;
    do
    {
      v551 = v78;
      LODWORD(v615) = 0;
      v614 = 0u;
      memset(__str, 0, sizeof(__str));
      v79 = v77[3];
      v80 = v77[4];
      v81 = v79;
      if (v79 != v80)
      {
        do
        {
          v82 = objc_msgSend_semanticLabels(v31, v74, v75);
          v83 = *v79;
          v86 = objc_msgSend_semanticVotes(v31, v84, v85);
          v88 = *v79;
          src = 0;
          v595 = 0u;
          v596 = 0u;
          v597 = 0u;
          v598 = 0u;
          v599 = 0u;
          v600 = 0u;
          v601 = 0u;
          LODWORD(v602) = 0;
          v89 = *(v86 + 8 * v88);
          v90 = vmovl_u16(v89);
          v91 = vaddw_u16(vextq_s8(v90, v90, 8uLL), v89);
          v576 = v91.i16[2];
          v575 = v91.i16[0];
          if (v91.i16[0] + v91.i16[2])
          {
            v92 = 1.0 / (v575 + v576);
            if (v89.i16[3])
            {
              v93 = 0;
              v94 = (v92 * v89.u16[3]) / 30.0;
              p_super_class = &src.super_class;
              do
              {
                v96 = vdupq_n_s64(v93);
                v97 = vorrq_s8(v96, xmmword_2623A7620);
                if (vuzp1_s16(vmovn_s64(vcgtq_u64(v561, v97)), v89).u8[0])
                {
                  *(p_super_class - 2) = v94;
                }

                if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), v97)), v89).i8[2])
                {
                  *(p_super_class - 1) = v94;
                }

                if (vuzp1_s16(v89, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), vorrq_s8(v96, xmmword_2623A7630)))).i32[1])
                {
                  *p_super_class = v94;
                  p_super_class[1] = v94;
                }

                v93 += 4;
                p_super_class += 4;
              }

              while (v93 != 36);
            }

            for (i = 0; i != 3; ++i)
            {
              v574 = v89;
              if (*(&v574 & 0xFFFFFFFFFFFFFFF9 | (2 * (i & 3))))
              {
                v87.i32[0] = *(v82 + 4 * v83);
                v87 = vmovl_u8(v87).u64[0];
                v573 = v87;
                v99 = *(&v573 & 0xFFFFFFFFFFFFFFF9 | (2 * (i & 3)));
                if (v99 <= 0x20u)
                {
                  *(&src.receiver + v99) = 0;
                }
              }
            }

            for (j = 0; j != 3; ++j)
            {
              v572 = v89;
              v101 = *(&v572 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3)));
              if (*(&v572 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3))))
              {
                v87.i32[0] = *(v82 + 4 * v83);
                v87 = vmovl_u8(v87).u64[0];
                v571 = v87;
                v102 = *(&v571 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3)));
                if (v102 <= 0x20u)
                {
                  *(&src.receiver + v102) = *(&src.receiver + v102) + (v101 * v92);
                }
              }
            }
          }

          v103 = 0;
          v33 = v556;
          do
          {
            *&__str[v103] = *&__str[v103] + *(&src.receiver + v103);
            v103 += 4;
          }

          while (v103 != 132);
          ++v79;
        }

        while (v79 != v80);
        v79 = v77[3];
        v81 = v77[4];
      }

      v104 = 0;
      v105 = (v81 - v79) >> 2;
      _S0 = v105;
      __asm { FCVT            H1, S0 }

      v111 = *(v77 + 4);
      v112 = v546;
      *(v544 + v111) = _H1;
      do
      {
        _S1 = *&__str[v104] / _S0;
        __asm { FCVT            H1, S1 }

        *(v112 + v111) = LOWORD(_S1);
        v104 += 4;
        v112 = (v112 + v76);
      }

      while (v104 != 132);
      v78 = v551;
      if (v551 <= v105)
      {
        v78 = v105;
      }

      v77 = *v77;
    }

    while (v77);
    v114 = v591;
    for (k = v541; v114; v114 = *v114)
    {
      v116 = *(v114 + 4);
      _H1 = *(v544 + v116);
      __asm { FCVT            S1, H1 }

      v115 = 1.0 / v78;
      _S1 = v115 * _S1;
      __asm { FCVT            H1, S1 }

      *(v544 + v116) = LOWORD(_S1);
    }
  }

  if (v542 >= 1)
  {
    v120 = v33;
    v121 = sub_2622C57A4(v33, 0x22uLL);
    v122 = v580[2];
    if (v580[2])
    {
      v123 = 1;
      v124 = v580[2];
      do
      {
        v125 = v124[5];
        _S0 = v125;
        __asm { FCVT            H0, S0 }

        *(v121 + v124[4]) = LOWORD(_S0);
        if (v123 <= v125)
        {
          v123 = v125;
        }

        v124 = *v124;
      }

      while (v124);
      v127 = 1.0 / v123;
      do
      {
        v128 = *(v122 + 4);
        _H1 = *(v121 + v128);
        __asm { FCVT            S1, H1 }

        _S1 = v127 * _S1;
        __asm { FCVT            H1, S1 }

        *(v121 + v128) = LOWORD(_S1);
        v122 = *v122;
      }

      while (v122);
    }
  }

  sub_2621C74C4(v580);
  sub_2621C7150(v591);
  v132 = __p;
  *&__p = 0;
  if (v132)
  {
    operator delete(v132);
  }

  v133 = *(v555 + 24);
  if (v133 && *(v133 + 64) == 1)
  {
    v134 = *(v133 + 8);
  }

  else
  {
    v134 = 0;
  }

  CVPixelBufferUnlockBaseAddress(v134, 0);
  if (v611[0])
  {
    v611[1] = v611[0];
    operator delete(v611[0]);
  }

  kdebug_trace();
  kdebug_trace();
  v135 = *(v555 + 24);
  if (v135 && *(v135 + 64) == 1)
  {
    v136 = *(v135 + 8);
  }

  else
  {
    v136 = 0;
  }

  memset(v577, 0, 24);
  CVPixelBufferLockBaseAddress(v136, 1uLL);
  v137 = *(v555 + 168);
  v138 = *(v555 + 176);
  while (v137 != v138)
  {
    v139 = *(v555 + 80);
    v140 = *(v555 + 88);
    if (*(v137 + 23) < 0)
    {
      v141 = *v137;
    }

    if (espresso_network_bind_cvpixelbuffer())
    {
      if (qword_27FF0C0E0 != -1)
      {
        dispatch_once(&qword_27FF0C0E0, &unk_2874EE200);
      }

      v156 = qword_27FF0C0D8;
      if (os_log_type_enabled(qword_27FF0C0D8, OS_LOG_TYPE_ERROR))
      {
        *__str = 0;
        _os_log_error_impl(&dword_2621C3000, v156, OS_LOG_TYPE_ERROR, "Network tensor bind failure", __str, 2u);
      }

      CVPixelBufferUnlockBaseAddress(v136, 1uLL);
      goto LABEL_407;
    }

    v137 += 3;
  }

  CVPixelBufferUnlockBaseAddress(v136, 1uLL);
  sub_2621D0F64(__str, "");
  v142 = v555;
  if (*(v555 + 120))
  {
    goto LABEL_111;
  }

  v145 = (v555 + 96);
  if (__str[23] >= 0)
  {
    v146 = __str[23];
  }

  else
  {
    v146 = *&__str[8];
  }

  v147 = *(v555 + 119);
  v148 = v147;
  if ((v147 & 0x80u) != 0)
  {
    v147 = *(v555 + 104);
  }

  if (v146 == v147)
  {
    v149 = __str[23] >= 0 ? __str : *__str;
    v150 = *v145;
    v151 = (v148 >= 0 ? v555 + 96 : *v145);
    if (!memcmp(v149, v151, v146))
    {
      goto LABEL_111;
    }
  }

  v152 = *(v555 + 72);
  if (!espresso_plan_build_clean())
  {
    v153 = *(v555 + 80);
    v154 = *(v555 + 88);
    if (!espresso_network_select_configuration())
    {
      v155 = *(v555 + 72);
      if (!espresso_plan_build())
      {
        if (sub_2622E8198((v555 + 32)))
        {
          std::string::operator=((v555 + 96), __str);
          v142 = v555;
LABEL_111:
          v143 = *(v142 + 72);
          v144 = espresso_plan_execute_sync() == 0;
          goto LABEL_136;
        }
      }
    }
  }

  v144 = 0;
LABEL_136:
  if ((__str[23] & 0x80000000) == 0)
  {
    if (v144)
    {
      goto LABEL_138;
    }

LABEL_326:
    if (qword_27FF0C0E0 != -1)
    {
      dispatch_once(&qword_27FF0C0E0, &unk_2874EE200);
    }

    v306 = qword_27FF0C0D8;
    if (os_log_type_enabled(qword_27FF0C0D8, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_2621C3000, v306, OS_LOG_TYPE_ERROR, "Network infer failure", __str, 2u);
    }

    goto LABEL_407;
  }

  operator delete(*__str);
  if (!v144)
  {
    goto LABEL_326;
  }

LABEL_138:
  v587 = 0u;
  v588 = 0u;
  v589 = 1065353216;
  v157 = *(v555 + 216);
  if (*(v555 + 224) == v157)
  {
    goto LABEL_304;
  }

  v158 = 0;
  v159 = v555;
  do
  {
    v160 = *sub_26225E318(v159 + 40, __str, (v157 + 24 * v158));
    if (!v160)
    {
      operator new();
    }

    if (**(v160 + 56))
    {
      sub_262223490(&src, *(v555 + 288), (*(v555 + 288) + 8));
      *&__str[8] = src;
      v615 = 0;
      LOBYTE(v616) = 1;
      memset(&__str[72], 0, 32);
      *&__str[24] = v595;
      *&__str[40] = v596;
      *__str = &unk_2874EF0B8;
      *&__str[56] = src.super_class;
      *&__str[64] = 1;
      *&__str[104] = src.receiver * src.super_class;
      v614 = 0uLL;
      if (src.receiver * src.super_class)
      {
        operator new();
      }

      HIBYTE(v616) = 1;
      *&__p = *(v555 + 192) + 4 * v158;
      v161 = sub_26222CDC8(&v587, *__p);
    }

    else
    {
      *__str = &unk_2874EF0B8;
      memset(&__str[8], 0, 96);
      *(&v614 + 1) = 0;
      v615 = 0;
      v616 = 257;
      src.receiver = (*(v555 + 192) + 4 * v158);
      v161 = sub_26222CDC8(&v587, *src.receiver);
    }

    sub_26222D214((v161 + 3), __str);
    *__str = &unk_2874EF0B8;
    if (v615)
    {
      sub_2621D1B78(v615);
    }

    ++v158;
    v159 = v555;
    v157 = *(v555 + 216);
  }

  while (v158 < 0xAAAAAAAAAAAAAAABLL * ((*(v555 + 224) - v157) >> 3));
  m = v588;
  if (!v588)
  {
    goto LABEL_304;
  }

  __asm { FMOV            V0.2S, #1.0 }

  v564 = HIDWORD(_D0);
  do
  {
    if (*(m + 161))
    {
      goto LABEL_303;
    }

    v164 = *(v555 + 360);
    v165 = 0.5;
    if (!*&v164)
    {
      goto LABEL_186;
    }

    v166 = *(m + 4);
    v167 = vcnt_s8(v164);
    v167.i16[0] = vaddlv_u8(v167);
    if (v167.u32[0] > 1uLL)
    {
      v168 = *(m + 4);
      if (*&v164 <= v166)
      {
        v168 = v166 % v164.i32[0];
      }
    }

    else
    {
      v168 = (v164.i32[0] - 1) & v166;
    }

    v169 = *(v555 + 352);
    v170 = *(v169 + 8 * v168);
    if (!v170)
    {
      goto LABEL_186;
    }

    v171 = *v170;
    if (!*v170)
    {
      goto LABEL_186;
    }

    v172 = *&v164 - 1;
    while (1)
    {
      v173 = v171[1];
      if (v173 == v166)
      {
        break;
      }

      if (v167.u32[0] > 1uLL)
      {
        if (v173 >= *&v164)
        {
          v173 %= *&v164;
        }
      }

      else
      {
        v173 &= v172;
      }

      if (v173 != v168)
      {
        goto LABEL_186;
      }

LABEL_169:
      v171 = *v171;
      if (!v171)
      {
        goto LABEL_186;
      }
    }

    if (*(v171 + 4) != v166)
    {
      goto LABEL_169;
    }

    if (v167.u32[0] > 1uLL)
    {
      v174 = *(m + 4);
      if (*&v164 <= v166)
      {
        v174 = v166 % v164.i32[0];
      }
    }

    else
    {
      v174 = (v164.i32[0] - 1) & v166;
    }

    v175 = *(v169 + 8 * v174);
    if (!v175)
    {
LABEL_691:
      sub_2621C84A8("unordered_map::at: key not found");
    }

    do
    {
      while (1)
      {
        v175 = *v175;
        if (!v175)
        {
          goto LABEL_691;
        }

        v176 = v175[1];
        if (v176 == v166)
        {
          break;
        }

        if (v167.u32[0] > 1uLL)
        {
          if (v176 >= *&v164)
          {
            v176 %= *&v164;
          }
        }

        else
        {
          v176 &= v172;
        }

        if (v176 != v174)
        {
          goto LABEL_691;
        }
      }
    }

    while (*(v175 + 4) != v166);
    v165 = *(v175 + 5);
LABEL_186:
    *v580 = v165;
    WORD2(v580[0]) = 0;
    memset(&v580[1], 0, 24);
    v582 = m[4];
    v583 = m[5];
    v585 = 0;
    v586 = 0;
    v584 = 0;
    v552 = m;
    sub_26222F7C4(__str, (m + 3));
    v581 = v617;
    v178 = v582;
    if (v582 != 1)
    {
      v179 = 0;
      v180 = 0;
      v181 = v583;
      v182 = 4;
      do
      {
        if (v181 != 1)
        {
          v183 = 0;
          *&v177 = v180;
          v568 = v177;
          do
          {
            v184 = &v581[4 * v183 + v179 * v181];
            v185 = &v581[4 * v183 + v182 * v181];
            v187 = *v184;
            v186 = v184[1];
            v189 = *v185;
            v188 = v185[1];
            v190 = *v184 > *v580;
            if (*v184 <= *v580)
            {
              v191 = 2;
            }

            else
            {
              v191 = 3;
            }

            if (v186 > *v580)
            {
              v190 = v191;
            }

            if (v189 > *v580)
            {
              v190 |= 4u;
            }

            if (v188 > *v580)
            {
              v190 |= 8u;
            }

            if (v190)
            {
              _ZF = v190 == 15;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              v193 = 0.0;
              v194 = 0.0;
              if (v187 != v186)
              {
                v194 = (*v580 - v187) / (v186 - v187);
              }

              if (v189 != v188)
              {
                v193 = (*v580 - v189) / (v188 - v189);
              }

              v195 = 0.0;
              v196 = 0.0;
              if (v187 != v189)
              {
                v196 = (*v580 - v187) / (v189 - v187);
              }

              if (v186 != v188)
              {
                v195 = (*v580 - v186) / (v188 - v186);
              }

              *&v197 = v180 + 1.0;
              v177 = v568;
              *(&v177 + 1) = v194 + v183;
              *(&v197 + 1) = v193 + v183;
              *&v198 = v196 + *&v568;
              *(&v198 + 1) = v183;
              v199.i32[0] = v568;
              v199.f32[1] = v183;
              v200 = vadd_f32(__PAIR64__(v564, LODWORD(v195)), v199);
              switch(v190)
              {
                case 1:
                  src.receiver = v177;
                  src.super_class = v198;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 2:
                  src.receiver = v200;
                  src.super_class = v177;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 3:
                  src.receiver = v200;
                  src.super_class = v198;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 4:
                  src.receiver = v198;
                  src.super_class = v197;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 5:
                  src.receiver = v177;
                  src.super_class = v197;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 6:
                  v557 = v197;
                  if (BYTE4(v580[0]) == 1)
                  {
                    src.receiver = v198;
                    src.super_class = v177;
                    sub_2621DE070(&v580[1], &src);
                    src.receiver = v200;
                  }

                  else
                  {
                    v548 = v198;
                    src.receiver = v200;
                    src.super_class = v177;
                    sub_2621DE070(&v580[1], &src);
                    src.receiver = v548;
                  }

                  src.super_class = v557;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 7:
                  src.receiver = v200;
                  src.super_class = v197;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 8:
                  src.receiver = v197;
                  src.super_class = v200;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 9:
                  v558 = v197;
                  if (BYTE4(v580[0]) == 1)
                  {
                    v547 = v198;
                    src.receiver = v177;
                    src.super_class = v200;
                    sub_2621DE070(&v580[1], &src);
                    src.receiver = v558;
                    src.super_class = v547;
                  }

                  else
                  {
                    src.receiver = v177;
                    src.super_class = v198;
                    sub_2621DE070(&v580[1], &src);
                    src.receiver = v558;
                    src.super_class = v200;
                  }

                  sub_2621DE070(&v580[1], &src);
                  break;
                case 10:
                  src.receiver = v197;
                  src.super_class = v177;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 11:
                  src.receiver = v197;
                  src.super_class = v198;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 12:
                  src.receiver = v198;
                  src.super_class = v200;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 13:
                  src.receiver = v177;
                  src.super_class = v200;
                  sub_2621DE070(&v580[1], &src);
                  break;
                case 14:
                  src.receiver = v198;
                  src.super_class = v177;
                  sub_2621DE070(&v580[1], &src);
                  break;
                default:
                  break;
              }
            }

            ++v183;
            v181 = v583;
          }

          while (v183 < v583 - 1);
          v178 = v582;
        }

        ++v180;
        v179 += 4;
        v182 += 4;
      }

      while (v180 < v178 - 1);
    }

    v610[0] = 0;
    v610[1] = 0;
    v609 = v610;
    v607 = 0;
    __src = 0;
    v608 = 0;
    v605 = 0;
    memset(v611, 0, sizeof(v611));
    LODWORD(v612) = 1065353216;
    memset(v603, 0, sizeof(v603));
    v604 = 1065353216;
    v569 = v580[2];
    if (v580[1] == v580[2])
    {
      goto LABEL_295;
    }

    v201 = (v580[1] + 8);
    while (2)
    {
      v202 = &v201[-1];
      v203 = v201[-1];
      v204 = *v201;
      v205 = vceq_f32(v203, *v201);
      if ((vpmin_u32(v205, v205).u32[0] & 0x80000000) != 0)
      {
        goto LABEL_275;
      }

      v206 = sub_26222F9E4(v611, *v201);
      v207 = sub_26222F9E4(v603, *&v203);
      v208 = v207;
      if (v206)
      {
        v210 = v206[3];
        v209 = v206[4];
        sub_26222FAD4(v611, v206);
        if (v208)
        {
          v212 = v208[3];
          v211 = v208[4];
          sub_26222FAD4(v603, v208);
          if (*&v210 == *&v212)
          {
            sub_26222FC00(__src + 48 * *&v210, v201);
            goto LABEL_275;
          }

          if (v209 > v211)
          {
            v216 = __src + 48 * *&v212;
            v217 = *(v216 + 4) + *(v216 + 5);
            v218 = *(v216 + 1);
            v219 = (v218 + 8 * (v217 >> 9));
            if (*(v216 + 2) == v218)
            {
              v220 = 0;
            }

            else
            {
              v220 = *v219 + 8 * (v217 & 0x1FF);
            }

            v232 = __src + 48 * *&v210;
            v233 = v232[4];
            v234 = v232[1];
            v235 = (v234 + 8 * (v233 >> 9));
            if (v232[2] == v234)
            {
              v236 = 0;
              v239 = 0;
              v238 = (v234 + 8 * ((v232[5] + v233) >> 9));
            }

            else
            {
              v236 = (*v235 + 8 * (v232[4] & 0x1FFLL));
              v237 = v232[5] + v233;
              v238 = (v234 + 8 * (v237 >> 9));
              v239 = (*v238 + 8 * (v237 & 0x1FF));
            }

            sub_26222FC8C(v216, v219, v220, v235, v236, v238, v239);
            v248 = __src + 48 * *&v210;
            v249 = v248[5] + v248[4] - 1;
            sub_262230870(v603, *(*(v248[1] + ((v249 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v249 & 0x1FF)));
            sub_2622308BC(&v609, v209);
            src.receiver = (*(*(__src + 6 * *&v212 + 1) + ((*(__src + 6 * *&v212 + 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(__src + 6 * *&v212 + 4) & 0x1FFLL));
            v250 = sub_262230990(v611, *src.receiver);
            v250[3] = v212;
            v250[4] = v211;
            v251 = __src + 48 * *&v212;
            v252 = v251[5] + v251[4] - 1;
            src.receiver = (*(v251[1] + ((v252 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v252 & 0x1FF));
            v214 = sub_262230990(v603, *src.receiver);
            v214[3] = v212;
LABEL_269:
            v214[4] = v211;
            goto LABEL_275;
          }

          v223 = __src + 48 * *&v210;
          v224 = *(v223 + 1);
          v225 = (v224 + 8 * (*(v223 + 4) >> 9));
          if (*(v223 + 2) == v224)
          {
            v226 = 0;
          }

          else
          {
            v226 = *v225 + 8 * (*(v223 + 4) & 0x1FFLL);
          }

          v240 = __src + 48 * *&v212;
          v241 = v240[4];
          v242 = v240[1];
          v243 = (v242 + 8 * (v241 >> 9));
          if (v240[2] == v242)
          {
            v244 = 0;
            v247 = 0;
            v246 = (v242 + 8 * ((v240[5] + v241) >> 9));
          }

          else
          {
            v244 = (*v243 + 8 * (v240[4] & 0x1FFLL));
            v245 = v240[5] + v241;
            v246 = (v242 + 8 * (v245 >> 9));
            v247 = (*v246 + 8 * (v245 & 0x1FF));
          }

          sub_26222FC8C(v223, v225, v226, v243, v244, v246, v247);
          sub_262230870(v611, *(*(*(__src + 6 * *&v212 + 1) + ((*(__src + 6 * *&v212 + 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(__src + 6 * *&v212 + 4) & 0x1FFLL)));
          sub_2622308BC(&v609, v211);
          src.receiver = (*(*(__src + 6 * *&v210 + 1) + ((*(__src + 6 * *&v210 + 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(__src + 6 * *&v210 + 4) & 0x1FFLL));
          v253 = sub_262230990(v611, *src.receiver);
          v253[3] = v210;
          v253[4] = v209;
          v254 = __src + 48 * *&v210;
          v255 = v254[5] + v254[4] - 1;
          src.receiver = (*(v254[1] + ((v255 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v255 & 0x1FF));
          v215 = sub_262230990(v603, *src.receiver);
        }

        else
        {
          sub_26223112C(__src + 48 * *&v210, &v201[-1]);
          src.receiver = &v201[-1];
          v215 = sub_262230990(v611, *v202);
        }

        v215[3] = v210;
        v215[4] = v209;
        goto LABEL_275;
      }

      if (v207)
      {
        v213 = v207[3];
        v211 = v207[4];
        sub_26222FAD4(v603, v207);
        sub_26222FC00(__src + 48 * *&v213, v201);
        src.receiver = v201;
        v214 = sub_262230990(v603, *v201);
        v214[3] = v213;
        goto LABEL_269;
      }

      v618 = v203;
      v619 = v204;
      sub_262230DD8(&src, &v618, 2);
      v221 = v607;
      if (v607 >= v608)
      {
        v227 = __src;
        v228 = v607 - __src;
        v229 = 0xAAAAAAAAAAAAAAABLL * ((v607 - __src) >> 4);
        v230 = v229 + 1;
        if (v229 + 1 > 0x555555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * ((v608 - __src) >> 4) > v230)
        {
          v230 = 0x5555555555555556 * ((v608 - __src) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v608 - __src) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v231 = 0x555555555555555;
        }

        else
        {
          v231 = v230;
        }

        *&v592 = &__src;
        if (v231)
        {
          sub_262230EF8(v231);
        }

        v256 = 16 * ((v607 - __src) >> 4);
        *v256 = src;
        *(v256 + 16) = v595;
        src = 0;
        v595 = 0u;
        *(v256 + 32) = v596;
        v596 = 0uLL;
        v222 = 48 * v229 + 48;
        v257 = (48 * v229 - v228);
        memcpy((v256 - v228), v227, v228);
        v258 = __src;
        v259 = v608;
        __src = v257;
        v607 = v222;
        v608 = 0;
        *&v591 = v258;
        *(&v591 + 1) = v259;
        *&__p = v258;
        *(&__p + 1) = v258;
        sub_262230F50(&__p);
      }

      else
      {
        *v607 = src.receiver;
        *(v221 + 1) = src.super_class;
        *(v221 + 1) = v595;
        src = 0;
        v595 = 0u;
        *(v221 + 2) = v596;
        v596 = 0uLL;
        v222 = (v221 + 48);
      }

      v607 = v222;
      sub_262230FA0(&src);
      src.receiver = &v605;
      v260 = 0xAAAAAAAAAAAAAAABLL * ((v607 - __src) >> 4) - 1;
      sub_26223104C(&v609, v605)[5] = v260;
      v261 = v605;
      src.receiver = &v201[-1];
      v262 = sub_262230990(v611, *v202);
      v262[3] = v260;
      v262[4] = v261;
      v263 = v605;
      src.receiver = v201;
      v264 = sub_262230990(v603, *v201);
      v264[3] = v260;
      v264[4] = v263;
      ++v605;
LABEL_275:
      v265 = v201 + 1;
      v201 += 2;
      if (v265 != v569)
      {
        continue;
      }

      break;
    }

    v266 = v609;
    if (v609 != v610)
    {
      do
      {
        if (BYTE5(v580[0]) == 1)
        {
          v267 = __src + 48 * v266[5];
          v268 = v267[4];
          v269 = v268 + v267[5];
          v270 = v267[1];
          v271 = v267[2];
          v272 = (v270 + 8 * (v269 >> 9));
          if (v271 == v270)
          {
            v275 = 0;
            src.receiver = v272;
            src.super_class = 0;
            v595 = v272;
            v274 = (v270 + 8 * (v268 >> 9));
          }

          else
          {
            v273 = (*v272 + 8 * (v269 & 0x1FF));
            src.receiver = v272;
            src.super_class = v273;
            *&v595 = v272;
            *(&v595 + 1) = v273;
            v274 = (v270 + 8 * (v268 >> 9));
            v275 = *v274 + 8 * (v268 & 0x1FF);
          }

          *&__p = v274;
          *(&__p + 1) = v275;
          *&v591 = v274;
          *(&v591 + 1) = v275;
          sub_262231404(&v618, &src, &__p);
          sub_2622314EC(&v584, &v618);
          receiver = v618;
          if (!v618)
          {
            goto LABEL_289;
          }

          v619 = v618;
        }

        else
        {
          v276 = __src + 48 * v266[5];
          v277 = v276[4];
          v278 = v276[1];
          v279 = (v278 + 8 * (v277 >> 9));
          if (v276[2] == v278)
          {
            v280 = 0;
            v283 = 0;
            v282 = (v278 + 8 * ((v276[5] + v277) >> 9));
          }

          else
          {
            v280 = *v279 + 8 * (v276[4] & 0x1FFLL);
            v281 = v276[5] + v277;
            v282 = (v278 + 8 * (v281 >> 9));
            v283 = *v282 + 8 * (v281 & 0x1FF);
          }

          sub_262231628(&src, v279, v280, v282, v283);
          sub_2622314EC(&v584, &src);
          receiver = src.receiver;
          if (!src.receiver)
          {
            goto LABEL_289;
          }

          src.super_class = src.receiver;
        }

        operator delete(receiver);
LABEL_289:
        v285 = v266[1];
        if (v285)
        {
          do
          {
            v286 = v285;
            v285 = *v285;
          }

          while (v285);
        }

        else
        {
          do
          {
            v286 = v266[2];
            _ZF = *v286 == v266;
            v266 = v286;
          }

          while (!_ZF);
        }

        v266 = v286;
      }

      while (v286 != v610);
    }

LABEL_295:
    sub_2621C74C4(v603);
    sub_2621C74C4(v611);
    src.receiver = &__src;
    sub_262231380(&src);
    sub_2621C6C04(v610[0]);
    *__str = &unk_2874EF0B8;
    if (v615)
    {
      sub_2621D1B78(v615);
    }

    v287 = v584;
    for (m = v552; v287 != v585; v287 += 24)
    {
      v288 = *v287;
      v289 = *(v287 + 8);
      if ((v289 - *v287) >= 0x11)
      {
        v611[2] = 0;
        v611[3] = 0;
        LODWORD(v612) = 6;
        sub_26233DA58(__str, v288, v289);
        v290 = *(v555 + 288);
        *v611 = *__str;
        v611[2] = *&__str[16];
        sub_26233DD98(&src, v611, *v290);
        memset(__str, 0, 48);
        sub_26222D2A8(&__str[48], &src);
        *__str = *&__str[56];
        *&__str[16] = *&__str[72];
        *&__str[32] = *&__str[88];
        sub_26222D380(&__p, __str);
      }
    }

    *__str = &v584;
    sub_2621E1CB0(__str);
    if (v580[1])
    {
      v580[2] = v580[1];
      operator delete(v580[1]);
    }

LABEL_303:
    m = *m;
  }

  while (m);
LABEL_304:
  v291 = *(&v577[0] + 1);
  if (*&v577[0] != *(&v577[0] + 1))
  {
    sub_26222B7D4(*&v577[0], *(&v577[0] + 1), 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v577[0] + 1) - *&v577[0]) >> 3)), 1);
    __str[0] = 1;
    sub_26220F1D4(v580, 0xCCCCCCCCCCCCCCCDLL * ((*(&v577[0] + 1) - *&v577[0]) >> 3));
    v293 = *(&v577[0] + 1);
    v292 = *&v577[0];
    if (*(&v577[0] + 1) != *&v577[0])
    {
      v294 = 0;
      do
      {
        if ((*(v580[0] + ((v294 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v294))
        {
          v295 = v294 + 1;
          v296 = 0xCCCCCCCCCCCCCCCDLL * ((v293 - v292) >> 3);
          if (v294 + 1 < v296)
          {
            v297 = &v292[40 * v294];
            v298 = v294 + 1;
            v299 = 40 * v294 + 40;
            do
            {
              sub_26233E0C8(__str, &v292[v299], v297, *(v555 + 128));
              if (*&__str[8] <= 1uLL)
              {
                v300 = 1;
              }

              else
              {
                v300 = *&__str[8];
              }

              if ((*__str / v300) > 0.3)
              {
                *(v580[0] + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v298);
              }

              ++v298;
              v293 = *(&v577[0] + 1);
              v292 = *&v577[0];
              v296 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v577[0] + 1) - *&v577[0]) >> 3);
              v299 += 40;
            }

            while (v298 < v296);
          }
        }

        else
        {
          v295 = v294 + 1;
          v296 = 0xCCCCCCCCCCCCCCCDLL * ((v293 - v292) >> 3);
        }

        v294 = v295;
      }

      while (v295 < v296);
    }

    v301 = 0uLL;
    memset(v611, 0, 24);
    v302 = v580[1];
    if (v580[1])
    {
      v303 = 0;
      v304 = 0;
      do
      {
        if ((*(v580[0] + ((v304 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v304))
        {
          sub_26222C550(v611, *&v577[0] + v303);
          v302 = v580[1];
        }

        ++v304;
        v303 += 40;
      }

      while (v304 < v302);
      v305 = v611[0];
      v293 = *(&v577[0] + 1);
      v292 = *&v577[0];
      v301 = *&v611[1];
    }

    else
    {
      v305 = 0;
    }

    *&v577[0] = v305;
    v611[0] = v292;
    v611[1] = v293;
    v307 = *&v577[1];
    *(v577 + 8) = v301;
    v611[2] = v307;
    v308 = (v301 - v305) >> 3;
    v309 = 0xCCCCCCCCCCCCCCCDLL * v308;
    v310 = 0xCCCCCCCCCCCCCCCDLL * v308 - v302;
    if (0xCCCCCCCCCCCCCCCDLL * v308 <= v302)
    {
      v580[1] = (0xCCCCCCCCCCCCCCCDLL * v308);
    }

    else
    {
      if (v580[2] << 6 < v310 || v302 > (v580[2] << 6) - v310)
      {
        memset(__str, 0, 24);
        if (((v301 - v305) & 0x8000000000000000) != 0)
        {
          sub_2621CBEB0();
        }

        if (v580[2] << 6 > 0x3FFFFFFFFFFFFFFEuLL)
        {
          v312 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v580[2] << 7 <= ((v309 + 63) & 0x7FFFFFFFFFFFFC0uLL))
        {
          v312 = (v309 + 63) & 0x7FFFFFFFFFFFFC0;
        }

        else
        {
          v312 = v580[2] << 7;
        }

        sub_2621DC8A4(__str, v312);
        v315 = v580[0];
        v316 = v580[1];
        *&__str[8] = v580[1] + v310;
        v317 = *__str;
        if (v580[1] < 1)
        {
          LODWORD(v314) = 0;
          v313 = *__str;
        }

        else
        {
          v318 = v580[1] >> 6;
          if (v580[1] >= 0x40)
          {
            memmove(*__str, v580[0], 8 * v318);
          }

          v313 = &v317[8 * v318];
          v314 = v316 & 0x3F;
          if (v314)
          {
            *v313 = *v313 & ~(0xFFFFFFFFFFFFFFFFLL >> -v314) | v315[v318] & (0xFFFFFFFFFFFFFFFFLL >> -v314);
          }

          v315 = v580[0];
        }

        v580[0] = v317;
        *__str = v315;
        *&v580[1] = *&__str[8];
        if (v315)
        {
          operator delete(v315);
        }
      }

      else
      {
        v313 = (v580[0] + 8 * (v302 >> 6));
        LODWORD(v314) = v302 & 0x3F;
        v580[1] = (0xCCCCCCCCCCCCCCCDLL * v308);
      }

      *__str = v313;
      *&__str[8] = v314;
      sub_26220F35C(__str, v310);
      v309 = v580[1];
    }

    if (v309 > 0)
    {
      *__str = v580[0];
      *&__str[8] = 0;
      sub_26220F2A8(__str, v309);
    }

    if (*(&v577[0] + 1) != *&v577[0])
    {
      v319 = 0;
      v320 = *(&v577[0] + 1);
      do
      {
        v321 = *&v577[0] + 40 * v319;
        if (*(v321 + 32) != 6)
        {
          goto LABEL_387;
        }

        if (v320 == *&v577[0])
        {
          v320 = *&v577[0];
          goto LABEL_387;
        }

        v322 = 0;
        do
        {
          if (v322 == v319)
          {
            goto LABEL_384;
          }

          v323 = *(*&v577[0] + 40 * v322 + 32);
          if (v323 == 6)
          {
            goto LABEL_384;
          }

          if (!*(&v587 + 1))
          {
            goto LABEL_686;
          }

          v324 = vcnt_s8(*(&v587 + 8));
          v324.i16[0] = vaddlv_u8(v324);
          if (v324.u32[0] > 1uLL)
          {
            v325 = *(*&v577[0] + 40 * v322 + 32);
            if (*(&v587 + 1) <= v323)
            {
              v325 = v323 % DWORD2(v587);
            }
          }

          else
          {
            v325 = (DWORD2(v587) - 1) & v323;
          }

          v326 = *(v587 + 8 * v325);
          if (!v326 || (v327 = *v326) == 0)
          {
LABEL_686:
            sub_2621C84A8("unordered_map::at: key not found");
          }

          while (1)
          {
            v328 = v327[1];
            if (v328 == v323)
            {
              break;
            }

            if (v324.u32[0] > 1uLL)
            {
              if (v328 >= *(&v587 + 1))
              {
                v328 %= *(&v587 + 1);
              }
            }

            else
            {
              v328 &= *(&v587 + 1) - 1;
            }

            if (v328 != v325)
            {
              goto LABEL_686;
            }

LABEL_378:
            v327 = *v327;
            if (!v327)
            {
              goto LABEL_686;
            }
          }

          if (*(v327 + 4) != v323)
          {
            goto LABEL_378;
          }

          if (*(v327 + 161))
          {
            v320 = *(&v577[0] + 1);
          }

          else
          {
            v320 = *(&v577[0] + 1);
            if (*v321 != *(v321 + 8))
            {
              sub_26233DD98(&__p, v321, v327[4]);
              memset(__str, 0, 48);
              sub_26222D2A8(&__str[48], &__p);
              *__str = *&__str[56];
              *&__str[16] = *&__str[72];
              *&__str[32] = *&__str[88];
              sub_26222D380(&src, __str);
            }
          }

LABEL_384:
          ++v322;
        }

        while (v322 < 0xCCCCCCCCCCCCCCCDLL * ((v320 - *&v577[0]) >> 3));
LABEL_387:
        ++v319;
      }

      while (v319 < 0xCCCCCCCCCCCCCCCDLL * ((v320 - *&v577[0]) >> 3));
    }

    v329 = v611[1];
    v330 = v611[0];
    if (v611[1] != v611[0])
    {
      v331 = v611[1];
      do
      {
        v333 = *(v331 - 5);
        v331 -= 40;
        v332 = v333;
        if (v333)
        {
          *(v329 - 4) = v332;
          operator delete(v332);
        }

        v329 = v331;
      }

      while (v331 != v330);
    }

    v611[1] = v330;
    v334 = v580[1];
    if (v580[1])
    {
      v335 = 0;
      v336 = 0;
      do
      {
        if ((*(v580[0] + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v336))
        {
          sub_26222C550(v611, *&v577[0] + v335);
          v334 = v580[1];
        }

        ++v336;
        v335 += 40;
      }

      while (v336 < v334);
      v330 = v611[1];
    }

    v337 = v577[0];
    *&v577[0] = v611[0];
    *(&v577[0] + 1) = v330;
    *v611 = v337;
    v338 = *&v577[1];
    *&v577[1] = v611[2];
    v611[2] = v338;
    *__str = v611;
    sub_26222C6EC(__str);
    if (v580[0])
    {
      operator delete(v580[0]);
    }

    v291 = *(&v577[0] + 1);
  }

  for (n = *&v577[0]; n != v291; n += 40)
  {
    if (*(n + 32) == 3)
    {
      *(n + 32) = 6;
    }
  }

  sub_26222EB58(&v587);
LABEL_407:
  kdebug_trace();
  kdebug_trace();
  v554 = v538;
  v549 = objc_msgSend_array(MEMORY[0x277CBEB18], v340, v341);
  v342 = sub_2621CD3A4(*(v555 + 432));
  if (v342)
  {
    v343 = v342[7];
  }

  else
  {
    v343 = 0uLL;
  }

  v566 = v343;

  v344 = sub_2621CD3A4(*(v555 + 432));
  if (v344)
  {
    v345 = v344[5];
  }

  else
  {
    v345 = 0uLL;
  }

  v570 = v345;

  v348 = objc_msgSend_objects(v554, v346, v347);
  v351 = objc_msgSend_count(v348, v349, v350) == 0;

  if (v351)
  {
    goto LABEL_589;
  }

  memset(v603, 0, 24);
  __p = 0u;
  v591 = 0u;
  v592 = 0u;
  v593 = 0u;
  v354 = objc_msgSend_objects(v554, v352, v353);
  v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v354, v355, &__p, __str, 16);
  if (!v358)
  {
    goto LABEL_456;
  }

  v562 = *v591;
  while (2)
  {
    v359 = 0;
    while (2)
    {
      if (*v591 != v562)
      {
        objc_enumerationMutation(v354);
      }

      v360 = *(*(&__p + 1) + 8 * v359);
      v361 = objc_msgSend_boxesDict(v360, v356, v357);
      v362 = v354;
      v364 = objc_msgSend_objectForKeyedSubscript_(v361, v363, @"wallaligned");
      v365 = v364 == 0;

      v368 = @"wallaligned";
      if (v365)
      {
        v369 = objc_msgSend_boxesDict(v360, v366, v367);
        v388 = objc_msgSend_objectForKeyedSubscript_(v369, v385, @"raw_offline");
        if (!v388)
        {
          goto LABEL_453;
        }

        v389 = objc_msgSend_type(v360, v386, v387);
        if ((objc_msgSend_isEqualToString_(v389, v390, @"Bed") & 1) == 0)
        {

          goto LABEL_453;
        }

        objc_msgSend_confidence(v360, v391, v392);
        v394 = v393 > 0.5;

        v368 = @"raw_offline";
        if (v394)
        {
          goto LABEL_418;
        }
      }

      else
      {
LABEL_418:
        v369 = v368;
        v600 = 0u;
        v601 = 0u;
        v598 = 0u;
        v599 = 0u;
        v596 = 0u;
        v597 = 0u;
        src = 0;
        v595 = 0u;
        v372 = objc_msgSend_boxesDict(v360, v370, v371);
        v374 = objc_msgSend_objectForKeyedSubscript_(v372, v373, v369);
        sub_262211250(&src, v374);

        sub_2621D0F64(v580, "");
        v580[3] = 0;
        v581 = 0;
        v582 = 0;
        v377 = objc_msgSend_type(v360, v375, v376);
        v378 = v377;
        v381 = objc_msgSend_UTF8String(v377, v379, v380);
        sub_2621D0F64(v611, v381);
        if (SHIBYTE(v580[2]) < 0)
        {
          operator delete(v580[0]);
        }

        *v580 = *v611;
        v580[2] = v611[2];
        HIBYTE(v611[2]) = 0;
        LOBYTE(v611[0]) = 0;

        for (ii = 0; ii != 64; ii += 16)
        {
          v611[0] = vmaxnm_f32(vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v570, vaddq_f64(v566, vcvtq_f64_f32(*(&src.receiver + ii)))))))), 0);
          sub_2621CBA84(&v580[3], v611);
        }

        v383 = v603[1];
        if (v603[1] >= v603[2])
        {
          v395 = 0xAAAAAAAAAAAAAAABLL * ((v603[1] - v603[0]) >> 4) + 1;
          if (v395 > 0x555555555555555)
          {
            sub_2621CBEB0();
          }

          if (0x5555555555555556 * ((v603[2] - v603[0]) >> 4) > v395)
          {
            v395 = 0x5555555555555556 * ((v603[2] - v603[0]) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v603[2] - v603[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v396 = 0x555555555555555;
          }

          else
          {
            v396 = v395;
          }

          v612 = v603;
          if (v396)
          {
            if (v396 <= 0x555555555555555)
            {
              operator new();
            }

            sub_2621C6A34();
          }

          v398 = (16 * ((v603[1] - v603[0]) >> 4));
          v611[0] = 0;
          v611[1] = v398;
          v611[2] = v398;
          v611[3] = 0;
          if (SHIBYTE(v580[2]) < 0)
          {
            sub_2621CC810(v398, v580[0], v580[1]);
          }

          else
          {
            *v398 = *v580;
            *(v398 + 2) = v580[2];
          }

          *(v398 + 3) = 0;
          *(v398 + 4) = 0;
          *(v398 + 5) = 0;
          sub_2621CC8B4(v398 + 24, v580[3], v581, (v581 - v580[3]) >> 3);
          v611[2] = v611[2] + 48;
          v399 = v603[1];
          v400 = v603[0];
          v401 = v611[1] + v603[0] - v603[1];
          if (v603[0] != v603[1])
          {
            v402 = v603[0];
            v403 = v611[1] + v603[0] - v603[1];
            do
            {
              v404 = *v402;
              *(v403 + 2) = *(v402 + 2);
              *v403 = v404;
              *(v402 + 1) = 0;
              *(v402 + 2) = 0;
              *v402 = 0;
              *(v403 + 3) = 0;
              *(v403 + 4) = 0;
              *(v403 + 5) = 0;
              *(v403 + 24) = *(v402 + 24);
              *(v403 + 5) = *(v402 + 5);
              *(v402 + 3) = 0;
              *(v402 + 4) = 0;
              *(v402 + 5) = 0;
              v402 += 3;
              v403 += 48;
            }

            while (v402 != v399);
            do
            {
              sub_262241314(v400);
              v400 += 48;
            }

            while (v400 != v399);
          }

          v405 = v603[0];
          v406 = v603[2];
          v603[0] = v401;
          v559 = v611[2];
          *&v603[1] = *&v611[2];
          v611[2] = v405;
          v611[3] = v406;
          v611[1] = v405;
          v611[0] = v405;
          sub_262312A1C(v611);
          v397 = v559;
        }

        else
        {
          if (SHIBYTE(v580[2]) < 0)
          {
            sub_2621CC810(v603[1], v580[0], v580[1]);
          }

          else
          {
            v384 = *v580;
            *(v603[1] + 16) = v580[2];
            *v383 = v384;
          }

          *(v383 + 24) = 0;
          *(v383 + 32) = 0;
          *(v383 + 40) = 0;
          sub_2621CC8B4(v383 + 24, v580[3], v581, (v581 - v580[3]) >> 3);
          v397 = (v383 + 48);
        }

        v603[1] = v397;
        if (v580[3])
        {
          v581 = v580[3];
          operator delete(v580[3]);
        }

        if (SHIBYTE(v580[2]) < 0)
        {
          operator delete(v580[0]);
        }

LABEL_453:
      }

      ++v359;
      v354 = v362;
      if (v359 != v358)
      {
        continue;
      }

      break;
    }

    v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v362, v356, &__p, __str, 16);
    if (v358)
    {
      continue;
    }

    break;
  }

LABEL_456:

  v407 = 0uLL;
  memset(v580, 0, 24);
  v408 = *(&v577[0] + 1);
  v409 = *&v577[0];
  if (*&v577[0] != *(&v577[0] + 1))
  {
LABEL_457:
    v410 = *(v555 + 400);
    if (!*&v410)
    {
      goto LABEL_474;
    }

    v411 = *(v409 + 8);
    v412 = vcnt_s8(v410);
    v412.i16[0] = vaddlv_u8(v412);
    if (v412.u32[0] > 1uLL)
    {
      v413 = *(v409 + 8);
      if (*&v410 <= v411)
      {
        v413 = v411 % v410.i32[0];
      }
    }

    else
    {
      v413 = (v410.i32[0] - 1) & v411;
    }

    v414 = *(v555 + 392);
    v415 = *(v414 + 8 * v413);
    if (!v415 || (v416 = *v415) == 0)
    {
LABEL_474:
      sub_26222C550(v580, v409);
      goto LABEL_475;
    }

    v417 = *&v410 - 1;
    while (1)
    {
      v418 = v416[1];
      if (v418 == v411)
      {
        if (*(v416 + 4) == v411)
        {
          if (v412.u32[0] > 1uLL)
          {
            v419 = *(v409 + 8);
            if (*&v410 <= v411)
            {
              v419 = v411 % v410.i32[0];
            }
          }

          else
          {
            v419 = (v410.i32[0] - 1) & v411;
          }

          v420 = *(v414 + 8 * v419);
          if (!v420 || (v421 = *v420) == 0)
          {
LABEL_689:
            sub_2621C84A8("unordered_map::at: key not found");
          }

          while (2)
          {
            v422 = v421[1];
            if (v422 != v411)
            {
              if (v412.u32[0] > 1uLL)
              {
                if (v422 >= *&v410)
                {
                  v422 %= *&v410;
                }
              }

              else
              {
                v422 &= v417;
              }

              if (v422 != v419)
              {
                goto LABEL_689;
              }

LABEL_491:
              v421 = *v421;
              if (!v421)
              {
                goto LABEL_689;
              }

              continue;
            }

            break;
          }

          if (*(v421 + 4) != v411)
          {
            goto LABEL_491;
          }

          if (v409[7] > *(v421 + 13))
          {
            goto LABEL_474;
          }

          src = 0;
          v595 = 0u;
          LODWORD(v596) = 1065353216;
          v423 = v421[3];
          v424 = v421[4];
          while (v423 != v424)
          {
            v611[0] = v423;
            sub_2622321D0(&src, v423)[5] = 0;
            v423 += 24;
          }

          v425 = v603[0];
          v426 = v603[1];
          while (v425 != v426)
          {
            v428 = v421[3];
            v427 = v421[4];
            if (v428 != v427)
            {
              v429 = *(v425 + 23);
              if (v429 >= 0)
              {
                v430 = *(v425 + 23);
              }

              else
              {
                v430 = v425[1];
              }

              if (v429 >= 0)
              {
                v431 = v425;
              }

              else
              {
                v431 = *v425;
              }

              while (1)
              {
                v432 = *(v428 + 23);
                v433 = v432;
                if ((v432 & 0x80u) != 0)
                {
                  v432 = *(v428 + 8);
                }

                if (v432 == v430)
                {
                  v434 = v433 >= 0 ? v428 : *v428;
                  if (!memcmp(v434, v431, v430))
                  {
                    break;
                  }
                }

                v428 += 24;
                if (v428 == v427)
                {
                  goto LABEL_532;
                }
              }
            }

            if (v428 != v427)
            {
              v435 = *v409;
              v436 = *(v409 + 1);
              v437 = 0x80000000800000;
              v438 = 0x80000000800000;
              if (*v409 != v436)
              {
                do
                {
                  v439 = *v435++;
                  v438 = vbsl_s8(vcgt_f32(v439, v438), v439, v438);
                }

                while (v435 != v436);
                v438 = vadd_f32(v438, 0x3F0000003F000000);
              }

              v440 = v425[3];
              v441 = v425[4];
              if (v440 != v441)
              {
                v442 = 0x80000000800000;
                do
                {
                  v443 = *v440++;
                  v442 = vbsl_s8(vcgt_f32(v443, v442), v443, v442);
                }

                while (v440 != v441);
                v437 = vadd_f32(v442, 0x3F0000003F000000);
              }

              v444 = vrndp_f32(v438);
              if (v444.f32[0] < v444.f32[1])
              {
                v444.f32[0] = v444.f32[1];
              }

              v445 = vrndp_f32(v437);
              if (v445.f32[0] < v445.f32[1])
              {
                v445.f32[0] = v445.f32[1];
              }

              if (v444.f32[0] <= v445.f32[0])
              {
                v446 = v445.f32[0];
              }

              else
              {
                v446 = v444.f32[0];
              }

              sub_26233E0C8(v611, v409, (v425 + 3), v446);
              if (v611[0] >= 0x1A)
              {
                *&v587 = v425;
                v447 = sub_2622321D0(&src, v425);
                ++v447[5];
              }
            }

LABEL_532:
            v425 += 6;
          }

          v448 = v595;
          if (v595)
          {
            v449 = 0;
            do
            {
              if (v448[5])
              {
                ++v449;
              }

              v448 = *v448;
            }

            while (v448);
          }

          else
          {
            v449 = 0;
          }

          if (*(v409 + 8) != 2)
          {
            v456 = *(v421 + 12);
            if (v456)
            {
              v457 = 1;
            }

            else
            {
              v457 = v449 == 0;
            }

            if (!v457)
            {
              goto LABEL_585;
            }

            if (v456 == 1 && v449 == *(&v595 + 1))
            {
              goto LABEL_585;
            }

            goto LABEL_586;
          }

          sub_2621D0F64(v611, "Chair");
          v450 = sub_2621D1580(v611);
          v451 = v450;
          super_class = src.super_class;
          if (!src.super_class)
          {
            goto LABEL_567;
          }

          v453 = vcnt_s8(src.super_class);
          v453.i16[0] = vaddlv_u8(v453);
          v454 = v453.u32[0];
          if (v453.u32[0] > 1uLL)
          {
            v455 = v450;
            if (v450 >= src.super_class)
            {
              v455 = v450 % src.super_class;
            }
          }

          else
          {
            v455 = (src.super_class - 1) & v450;
          }

          v459 = *(src.receiver + v455);
          if (!v459 || (v460 = *v459) == 0)
          {
LABEL_567:
            operator new();
          }

          while (2)
          {
            v461 = v460[1];
            if (v461 != v451)
            {
              if (v454 > 1)
              {
                if (v461 >= super_class)
                {
                  v461 %= super_class;
                }
              }

              else
              {
                v461 &= super_class - 1;
              }

              if (v461 != v455)
              {
                goto LABEL_567;
              }

LABEL_566:
              v460 = *v460;
              if (!v460)
              {
                goto LABEL_567;
              }

              continue;
            }

            break;
          }

          if (!sub_2621D19D0(v460 + 2, v611))
          {
            goto LABEL_566;
          }

          v462 = v460[5];
          if (SHIBYTE(v611[2]) < 0)
          {
            operator delete(v611[0]);
          }

          v463 = v409[7];
          v465 = v449 == *(&v595 + 1) && v463 > 0.8;
          v466 = v465 || v462 > 3;
          v468 = v449 == *(&v595 + 1) && v462 > 3;
          if (v463 > 0.8)
          {
            v468 = 0;
          }

          if ((v466 | v468))
          {
LABEL_585:
            sub_26222C550(v580, v409);
          }

LABEL_586:
          sub_2621E27D4(&src);
LABEL_475:
          v409 += 10;
          if (v409 == v408)
          {
            v408 = *(&v577[0] + 1);
            v409 = *&v577[0];
            v407 = *v580;
            v469 = v580[2];
            goto LABEL_588;
          }

          goto LABEL_457;
        }
      }

      else
      {
        if (v412.u32[0] > 1uLL)
        {
          if (v418 >= *&v410)
          {
            v418 %= *&v410;
          }
        }

        else
        {
          v418 &= v417;
        }

        if (v418 != v413)
        {
          goto LABEL_474;
        }
      }

      v416 = *v416;
      if (!v416)
      {
        goto LABEL_474;
      }
    }
  }

  v469 = 0;
LABEL_588:
  v577[0] = v407;
  v580[0] = v409;
  v580[1] = v408;
  v470 = *&v577[1];
  *&v577[1] = v469;
  v580[2] = v470;
  src.receiver = v580;
  sub_26222C6EC(&src);
  src.receiver = v603;
  sub_262312240(&src);
LABEL_589:
  v471 = objc_msgSend_floors(v554, v352, v353);
  v474 = objc_msgSend_count(v471, v472, v473) == 0;

  if (!v474)
  {
    v477 = objc_msgSend_floors(v554, v475, v476);
    v479 = objc_msgSend_objectAtIndexedSubscript_(v477, v478, 0);

    if (objc_msgSend_polygonSize(v479, v480, v481) < 4)
    {
      objc_msgSend_quad(v479, v482, v483);
      LODWORD(src.super_class) = v486;
      DWORD2(v595) = v487;
      src.receiver = v488;
      *&v595 = v489;
      DWORD2(v596) = v490;
      DWORD2(v597) = v491;
      *&v596 = v492;
      *&v597 = v493;
      sub_2621CBF10(1uLL);
    }

    if (objc_msgSend_polygonSize(v479, v482, v483))
    {
      objc_msgSend_polygon(v479, v484, v485);
      sub_2621CBF10(1uLL);
    }

    memset(v611, 0, 24);
    memset(v580, 0, 24);
    if (*&v577[0] != *(&v577[0] + 1))
    {
      sub_262341FFC(&src, *&v577[0], v611);
    }

    src = 0;
    v595 = 0u;
    LODWORD(v596) = 6;
    HIDWORD(v595) = 1065353216;
    sub_26223200C(&src, v611[0], v611[1], (v611[1] - v611[0]) >> 3);
    *(&v595 + 2) = sub_26233DFA8(v611);
    v494 = v580[1];
    if (v580[1] >= v580[2])
    {
      v495 = sub_26222E9D8(v580, &src);
      v580[1] = v495;
      if (src.receiver)
      {
        operator delete(src.receiver);
        v495 = v580[1];
      }
    }

    else
    {
      *v580[1] = src;
      v494[2] = v595;
      *&v595 = 0;
      src.super_class = 0;
      src.receiver = 0;
      v494[3] = *(&v595 + 1);
      *(v494 + 8) = v596;
      v495 = v494 + 5;
      v580[1] = v494 + 5;
    }

    v496 = v580[0];
    *v580 = v577[0];
    *&v577[0] = v496;
    *(&v577[0] + 1) = v495;
    v497 = *&v577[1];
    *&v577[1] = v580[2];
    v580[2] = v497;
    src.receiver = v580;
    sub_26222C6EC(&src);
    if (v611[0])
    {
      operator delete(v611[0]);
    }
  }

  v499 = *(&v577[0] + 1);
  v498 = *&v577[0];
  if (*&v577[0] != *(&v577[0] + 1))
  {
    v563 = *(&v577[0] + 1);
    do
    {
      v500 = *v498;
      v501 = *(v498 + 8);
      if (*v498 != v501)
      {
        v502 = vcvt_f32_f64(vsubq_f64(vdivq_f64(vcvtq_f64_f32(*v500), v570), v566));
        sub_2621CBEC8(1uLL);
      }

      *v498 = 0;
      *(v498 + 8) = 0;
      *(v498 + 16) = 0;
      v503 = *(v498 + 24) / v570.f64[0];
      *(v498 + 24) = v503;
      if (v500)
      {
        operator delete(v500);
      }

      v498 += 40;
    }

    while (v498 != v563);
    v499 = *(&v577[0] + 1);
    v498 = *&v577[0];
  }

  if (v498 == v499)
  {
    goto LABEL_681;
  }

  while (2)
  {
    v504 = [RSRoomTypePolygon alloc];
    if (v504)
    {
      v505 = sub_26230E988(v504, (*(v498 + 8) - *v498) >> 3, *v498);
      v506 = v505;
      if (v505)
      {
        *(v505 + 8) = 1;
      }
    }

    else
    {
      v506 = 0;
    }

    sub_262298008(v580, (v555 + 8), v498, (*(v498 + 8) - *v498) >> 3);
    v507 = v580[0];
    if ((v580[1] - v580[0]) != 32)
    {
      goto LABEL_654;
    }

    v508 = *v580[0];
    v509 = *(v580[0] + 1);
    v510 = *(v580[0] + 2);
    v511 = *(v580[0] + 3);
    sub_26233E620(*v498, *(v498 + 8));
    v514 = v513;
    v515 = MEMORY[0x277CCACA8];
    v516 = *(v498 + 32);
    if (atomic_load_explicit(&qword_27FF0C2F8, memory_order_acquire) != -1)
    {
      v611[0] = &v587;
      v603[0] = v611;
      std::__call_once(&qword_27FF0C2F8, v603, sub_262312308);
    }

    if (!qword_27FF0C2F0)
    {
      goto LABEL_636;
    }

    v517 = *(qword_27FF0C2F0 + 8);
    if (!*&v517)
    {
      goto LABEL_636;
    }

    v518 = vcnt_s8(v517);
    v518.i16[0] = vaddlv_u8(v518);
    if (v518.u32[0] > 1uLL)
    {
      v519 = v516;
      if (*&v517 <= v516)
      {
        v519 = v516 % v517.i32[0];
      }
    }

    else
    {
      v519 = (v517.i32[0] - 1) & v516;
    }

    v520 = *(*qword_27FF0C2F0 + 8 * v519);
    if (!v520 || (v521 = *v520) == 0)
    {
LABEL_636:
      sub_2621D0F64(&src, "Others");
      goto LABEL_637;
    }

    v522 = *&v517 - 1;
    while (2)
    {
      v523 = v521[1];
      if (v523 != v516)
      {
        if (v518.u32[0] > 1uLL)
        {
          if (v523 >= *&v517)
          {
            v523 %= *&v517;
          }
        }

        else
        {
          v523 &= v522;
        }

        if (v523 != v519)
        {
          goto LABEL_636;
        }

        goto LABEL_635;
      }

      if (*(v521 + 4) != v516)
      {
LABEL_635:
        v521 = *v521;
        if (!v521)
        {
          goto LABEL_636;
        }

        continue;
      }

      break;
    }

    if (v518.u32[0] > 1uLL)
    {
      v532 = v516;
      if (*&v517 <= v516)
      {
        v532 = v516 % v517.i32[0];
      }
    }

    else
    {
      v532 = (v517.i32[0] - 1) & v516;
    }

    v533 = *(*qword_27FF0C2F0 + 8 * v532);
    if (!v533)
    {
LABEL_690:
      sub_2621C84A8("unordered_map::at: key not found");
    }

    do
    {
      while (1)
      {
        v533 = *v533;
        if (!v533)
        {
          goto LABEL_690;
        }

        v534 = v533[1];
        if (v534 == v516)
        {
          break;
        }

        if (v518.u32[0] > 1uLL)
        {
          if (v534 >= *&v517)
          {
            v534 %= *&v517;
          }
        }

        else
        {
          v534 &= v522;
        }

        if (v534 != v532)
        {
          goto LABEL_690;
        }
      }
    }

    while (*(v533 + 4) != v516);
    if (*(v533 + 47) < 0)
    {
      sub_2621CC810(&src, v533[3], v533[4]);
    }

    else
    {
      src = *(v533 + 3);
      *&v595 = v533[5];
    }

LABEL_637:
    if ((SBYTE7(v595) & 0x80u) == 0)
    {
      objc_msgSend_stringWithUTF8String_(v515, v512, &src);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v515, v512, src.receiver);
    }
    v524 = ;
    if (SBYTE7(v595) < 0)
    {
      operator delete(src.receiver);
    }

    v525 = [RSRoomType alloc];
    v526 = *(v498 + 28);
    v527 = v524;
    v528 = v506;
    if (v525)
    {
      src.receiver = v525;
      src.super_class = RSRoomType;
      v529 = objc_msgSendSuper2(&src, sel_init);
      v525 = v529;
      if (v529)
      {
        v529->_confidenceScore = v526;
        v529->_insideRoom = 1;
        objc_storeStrong(&v529->_label, v524);
        objc_storeStrong(&v525->_polygon, v506);
        *v525->_polygonCenter = v514;
      }
    }

    src.receiver = v508;
    src.super_class = v509;
    *&v595 = v510;
    *(&v595 + 1) = v511;
    if (v525)
    {
      objc_copyStruct(&v525[1], &src, 32, 1, 0);
    }

    if (v554)
    {
      LODWORD(v531) = v554[4];
      if (v525)
      {
        goto LABEL_649;
      }
    }

    else
    {
      v531 = 0.0;
      if (v525)
      {
LABEL_649:
        v525->_floorHeight = *&v531;
      }
    }

    if (v554)
    {
      LODWORD(v531) = v554[3];
      if (v525)
      {
        goto LABEL_652;
      }
    }

    else
    {
      v531 = 0.0;
      if (v525)
      {
LABEL_652:
        v525->_ceilingHeight = *&v531;
      }
    }

    objc_msgSend_addObject_(v549, v530, v525, v531);

    v507 = v580[0];
LABEL_654:
    if (v507)
    {
      operator delete(v507);
    }

    v498 += 40;
    if (v498 != v499)
    {
      continue;
    }

    break;
  }

LABEL_681:

  kdebug_trace();
  *__str = v577;
  sub_26222C6EC(__str);
LABEL_682:
  sub_2621CD534(&v578);
LABEL_683:

  v535 = *MEMORY[0x277D85DE8];

  return v549;
}

void sub_262316830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43, uint64_t a44, void *a45)
{
  sub_2621D1A44(1, v45);
  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  sub_2621E27D4(&STACK[0x240]);
  STACK[0x240] = &a45;
  sub_26222C6EC(&STACK[0x240]);
  STACK[0x240] = &STACK[0x2E0];
  sub_262312240(&STACK[0x240]);

  a45 = &a39;
  sub_26222C6EC(&a45);
  sub_2621CD534(&a43);

  _Unwind_Resume(a1);
}

void sub_262316F74(uint64_t a1, double a2, float64x2_t a3)
{
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }

    sub_2621CD3D4(*(a1 + 432), a2, a3);
    v4 = *(a1 + 24);

    sub_2622C5BB4(v4);
  }
}

void sub_262316FC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  if (*(a3 + 8))
  {
    v8 = *(a4 + 8);
    if (v8)
    {
      if (*(a5 + 8))
      {
        if (!(v8 >> 59))
        {
          sub_262320060(v8);
        }

        sub_2621CBEB0();
      }
    }
  }

  a1[1] = *a1;
  objc_autoreleasePoolPop(v7);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_26231F558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&STACK[0xA40]);
  sub_2621C57C8(&STACK[0x950]);
  STACK[0x220] = v68;
  if (STACK[0x2A0])
  {
    sub_2621D1B78(STACK[0x2A0]);
  }

  if (STACK[0x860])
  {
    sub_2621D1B78(STACK[0x860]);
  }

  STACK[0xAA0] = &unk_2874EE930;
  if (STACK[0xB20])
  {
    sub_2621D1B78(STACK[0xB20]);
  }

  STACK[0x740] = v67;
  if (STACK[0x7C0])
  {
    sub_2621D1B78(STACK[0x7C0]);
  }

  STACK[0x420] = &unk_2874EF0D8;
  if (STACK[0x4A0])
  {
    sub_2621D1B78(STACK[0x4A0]);
  }

  STACK[0x670] = &unk_2874EF0D8;
  if (STACK[0x6F0])
  {
    sub_2621D1B78(STACK[0x6F0]);
  }

  STACK[0x880] = a27;
  if (STACK[0x900])
  {
    sub_2621D1B78(STACK[0x900]);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_2621C57C8(&a67);
  _Unwind_Resume(a1);
}

void sub_262320060(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2623200A8(uint64_t a1, float **a2, unint64_t a3, float *a4)
{
  if (!a3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_2622ABC20(&v23, a3);
  v9 = *a4;
  v8 = a4[1];
  *&__p = v9;
  if (v9 <= v8)
  {
    v10 = (v8 - v9) / a3;
    do
    {
      sub_2621C8F2C(&v23, &__p);
      v9 = v10 + v9;
      *&__p = v9;
    }

    while (v9 <= a4[1]);
  }

  v11 = v23;
  v12 = v24;
  v13 = (v24 - v23) >> 2;
  if (v13 > 1)
  {
    v26 = 0;
    sub_2621DE86C(&__p, v13 - 1);
    v14 = __p;
    v15 = v28;
    v16 = *a2;
    v17 = a2[1];
    v18 = v28 - __p;
    if (*a2 == v17)
    {
LABEL_22:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      sub_2621C8B60(a1, v14, v15, v18 >> 2);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      sub_2621C8E70(a1 + 24, v11, v12, v13);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      goto LABEL_24;
    }

    while (1)
    {
      v19 = *v16;
      if ((v18 >> 2) < 2)
      {
        v22 = 0;
LABEL_16:
        if (v19 < v11[v22] || v19 > v11[v22 + 1])
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = 0;
        v21 = v11 + 1;
        while (v19 < *(v21 - 1) || v19 >= *v21)
        {
          --v20;
          ++v21;
          if (-((v18 >> 2) - 1) == v20)
          {
            v22 = (v18 >> 2) - 1;
            goto LABEL_16;
          }
        }

        v22 = -v20;
      }

      ++v14[v22];
LABEL_21:
      if (++v16 == v17)
      {
        goto LABEL_22;
      }
    }
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2621C8E70(a1 + 24, v11, v12, v13);
LABEL_24:
  if (v11)
  {
    operator delete(v11);
  }
}

void sub_262320290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2623202F4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE930;
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

uint64_t sub_2623203CC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE9A8;
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

void *sub_2623204A4(void *a1)
{
  a1[61] = &unk_2874EE9A8;
  v2 = a1[77];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[36] = &unk_2874EF0D8;
  v3 = a1[52];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_2621C57C8((a1 + 6));
  return a1;
}

uint64_t sub_262320528(float32x2_t *a1, float32x2_t *a2, uint64_t a3, float32x2_t *a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  v11 = (a3 + 32);
  if (v10 == (a3 + 32))
  {
LABEL_10:
    v16 = *(a3 + 48);
    v17 = (a3 + 56);
    if (v16 == v17)
    {
LABEL_19:
      if (!a5)
      {
        return 0;
      }

      v21 = 32 * a5;
      while (1)
      {
        if (sub_2621DC76C(*a2, *a4, a4[1], 0.00001) <= 0.15)
        {
          v22 = sub_2621C92AC(a1, a4, 0);
          if ((180.0 - v22) < v22)
          {
            v22 = 180.0 - v22;
          }

          if (v22 > 75.0)
          {
            break;
          }
        }

        a4 += 4;
        v21 -= 32;
        if (!v21)
        {
          return 0;
        }
      }
    }

    else
    {
      v18 = *a2;
      while (sub_2621DC76C(v18, v16[5], v16[6], 0.00001) > 0.15)
      {
        v19 = v16[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v16[2];
            v15 = *v20 == v16;
            v16 = v20;
          }

          while (!v15);
        }

        v16 = v20;
        if (v20 == v17)
        {
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    v12 = *a2;
    while (sub_2621DC76C(v12, v10[5], v10[6], 0.00001) > 0.15)
    {
      v13 = v10[1];
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
          v14 = v10[2];
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v10 = v14;
      if (v14 == v11)
      {
        goto LABEL_10;
      }
    }
  }

  return 1;
}

uint64_t sub_2623206DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
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